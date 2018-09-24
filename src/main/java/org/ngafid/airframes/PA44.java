package org.ngafid.airframes;

import java.util.ArrayList;

import org.ngafid.EventTracker;

import org.ngafid.events.Event;

public class PA44 extends Airframe {
    public PA44(String flightFilename) {
        super(flightFilename);
    }

    public ArrayList<Event> getEvents() {
        EventTracker pa44EventTracker = new EventTracker(new String[]{
            "org.ngafid.events.PitchEvent",
                "org.ngafid.events.RollEvent",
                "org.ngafid.events.VerticalAccelerationEvent",
                "org.ngafid.events.LateralAccelerationEvent",
                "org.ngafid.events.LongitudinalAccelerationEvent",
                "org.ngafid.events.IndicatedAirspeedEvent",
                "org.ngafid.events.PA44IndicatedAirspeedEvent",
                "org.ngafid.events.PA44HighCHTEvent",
                "org.ngafid.events.PA44HighAltitudeEvent",
                "org.ngafid.events.PA44LowFuelEvent",
                "org.ngafid.events.PA44LowOilPressureEvent",
                "org.ngafid.events.PA44LowAirspeedOnApproachEvent",
                "org.ngafid.events.PA44LowAirspeedOnClimboutEvent"

        });

        ArrayList<Event> events = pa44EventTracker.getEvents(csvValues);

        return events;
    }
}