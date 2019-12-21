Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6F0128BC1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 22:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e9tpwlRLAeHm3S4k4xmrH7YqpriXT+K3leZlO4Ak2Aw=; b=G65698Owzc9C4+pgkQD/Uj8UE
	ilgEFzWKlQaRDg4q6oWcXqR6nqfQQbT93eS1ht3p5Fe+ayaJrgzc5i/iqya0eZiTmCMLPE2KYEXv/
	uWK/jIJ0Km5FCesD4D/Q8g44gAepuvBCPYTUxTO9TEY1CYWN6q9VZjJVCcF+iIixBqg8kWieyhO+j
	y2+lOdZawElijE6Xpwmcfn5TdSRrM0cZ8Yh0ilG9glUBvSP71wZbKvSv8r57YZ6IUN2YkZAp8i6aA
	/LJ8K27vgrqEL9I4gRDWGbSNJoNFyoCNSAydkTOjBEfqJeWL2P9WiKJyEoyamEibdkePyP/MxeR4f
	E31XhGa8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iimcm-0002cq-At; Sat, 21 Dec 2019 21:49:24 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iimca-0002cE-AC; Sat, 21 Dec 2019 21:49:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4707CAC6E;
 Sat, 21 Dec 2019 21:49:10 +0000 (UTC)
Subject: Re: [RFC 22/25] leds: tm1826: Add combined glyph support
To: Pavel Machek <pavel@ucw.cz>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-23-afaerber@suse.de> <20191221202755.GN32732@amd>
 <506d0697-1820-7811-1b38-910355812948@suse.de> <20191221210406.GA13125@amd>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <1b3fc7f2-3c10-9b11-37ac-1bc7b0aa47d8@suse.de>
Date: Sat, 21 Dec 2019 22:49:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191221210406.GA13125@amd>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_134912_645667_3A0F7CB9 
X-CRM114-Status: GOOD (  23.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dan Murphy <dmurphy@ti.com>,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 21.12.19 um 22:04 schrieb Pavel Machek:
>>>> Allow to squeeze the text "HEllO" into a 4-digit display,
>>>> as seen on MeLE V9 TV box.
>>>>
>>>> Enable this combining mode only if the text would overflow.
>>>
>>> "HEll,nO"!
>>>
>>> :-)
>>>
>>> Ok, it is kind of cool, but... Can you take a look at
>>> drivers/auxdisplay/charlcd.c ? It seems to support some kind of text
>>> displays...
>>
>> Why don't you look at it before making such a suggestion? ;) It is in no=
 way
>> useful, as I pointed out in my cover letter. The only thing related toda=
y,
>> as Geert pointed out, is in the input subsystem.
> =

> Okay, so maybe we should get
> =

> AUXILIARY DISPLAY DRIVERS
> M:      Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>
> =

> on the Cc: list?

Let's see if that email still exists - the code looked ancient, full of =

platform_data and driver-specific exported functions...

(the Yealink input driver was from 2005, too)

> What you really have is a display, not a bunch of LEDs.

We have an LED Controller connected to zero, one or more displays.
They are most certainly _not_ the same thing.

>> If you don't want this in leds, you'll have to help make leds subsystem =
more
>> useful to external users - the latest function refactoring has been anyt=
hing
>> but helpful here, as you've seen with the indicators, and we're complete=
ly
>> lacking any indexing or bulk operations on the LED controller level, sin=
ce
>> you treat each LED as a standalone device. That's precisely why this cod=
e is
>> here in leds although - as I pointed out - it shouldn't belong here.
> =

> Well, your introduction mail was kind of long :-).
> =

> If someone wants to do heartbeat on
> =

>   --
> |  | <- this segment
>   --
> |  |
>   --
> =

> they are probably crazy. We may not want to support that. What about
> doing it as auxdisplay driver, and then exporting the indicators
> around that as LEDs?

You're really just discussing which directory to put this file into - =

moving it around is the easiest thing...

> =

> Having USB activity trigger on 'USB' icon makes sense, on the other
> hand. That would still be supported.

Actually I disagree about those indicators - that was the reason they're =

indicators and not, e.g., "usb". IMO people would go crazy if large text =

like that blinked during USB transfers. I assumed the meaning of those =

LEDs were to indicate whether a USB/SD medium is connected, which I did =

not see any better function for, and I'm not aware of us having such =

triggers today.

Maybe you also overread that with trigger I was referring to using RTC =

as trigger for a) the colon blinking every half-second and b) the text =

getting updated based on avsilable RTC interrupts?

You could also think of GPIO-connected LEDs that you may want to animate =

without two different heartbeats/timers getting out of sync. Or think of =

an RGB LED that today we sadly need to model as multiple GPIO LEDs =

instead of as one with a color property we can change (and hardcoding a =

color in DT/name is not helping that use case either).

auxdisplay offers no API that I could register with to drive output, nor =

any triggers to automate such output - that's unique to LEDs. Like I =

said, we can place this spi_driver file into auxdisplay/, but that =

doesn't solve the driver design. So I really think we need to decouple =

the two and keep the LED Controller driver in leds and the display logic =

elsewhere, with suitable new APIs to connect them. We're lacking =

suggestions for the how, on DT and API levels - see my response on the =

cover letter.

Regards,
Andreas

-- =

SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=FCrnberg, Germany
GF: Felix Imend=F6rffer
HRB 36809 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
