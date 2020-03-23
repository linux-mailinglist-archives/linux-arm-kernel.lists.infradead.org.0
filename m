Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE1318FD06
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 19:48:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xv27UHCWFBOVFpMZBYnkcUk3ChN4fUsUnuWNYq2Xf8k=; b=OZgiwuwnXyA4nC
	RoXIfSzETuOYtWQZyIs1GTynyKD/5PfR/kB1G4hXYr4khWY92iZTf1BlnAvfxTq6dudglgsrKZC8E
	E9F59PrWnGEAy8VHZ8yu8Z7wwmHb/Xqr+zeG5+Er9ZVcr9A7OKf+Ofg5X5izvc43ErOFq1Y9PjYA7
	7FCykietWoi1/Yd/RbSi6NHo3+yl6yr6odFFeaAn6XRAa2Cp0zH+QocrnkIkKiWU1ZEfqwCJNRj/v
	2jLCcn8FIJVRjw/MLUStBpU5LKlQ92MX6zN7hZ35tv6UQiikGOVsrdlxaVNMbuE9NHU7b8zzzbLu/
	MsZrzJYbYHhsme9Ys37g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGS7j-0007ST-12; Mon, 23 Mar 2020 18:48:31 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGS7Y-0007RE-OA; Mon, 23 Mar 2020 18:48:22 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MD9Kp-1j7Ph40uPp-009AR6; Mon, 23 Mar 2020 19:48:11 +0100
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
To: Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Maxime Ripard <maxime@cerno.tech>
References: <03fcb1e2bc7f3ff389b6dfbf3964e159a93ae835.camel@suse.de>
 <d3d40174-9c08-f42f-e088-08e23c2dc029@i2se.com>
 <f2ec22160ac86aec8d252ade7d6eb8789777cc42.camel@suse.de>
 <01ceb60e-a791-b6ca-352e-ad2e79f264e3@i2se.com>
 <ddcb8fd5-9e35-454c-b38d-d36e7b41ef07@i2se.com>
 <9e685fce547d808f269e59e2290331e75c66f3e4.camel@suse.de>
 <bb2c7d99-06b1-d222-7f69-8ce91157bde5@i2se.com>
 <90e92438-00df-520f-c8b1-2e2077934592@i2se.com>
 <a25b759292901eee3eab4dbf8002d2050edda6d3.camel@suse.de>
 <CAPY8ntBB3wwkVj=+fzNRXzAqQs5q5MYmb7t7Be74zADeMCXHVA@mail.gmail.com>
 <20200323145658.gu72lt5wceqw4iwz@gilmour.lan>
 <CAPY8ntD=VFrb91V7uM5zROxD-r6+bU+Nmj+ZDFCdwvTuq8eF6g@mail.gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <ab7b5386-2471-006f-0d6f-5230fd92445c@i2se.com>
Date: Mon, 23 Mar 2020 19:48:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAPY8ntD=VFrb91V7uM5zROxD-r6+bU+Nmj+ZDFCdwvTuq8eF6g@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:fXKdt6b2FX9wxChFWsf7MYj+/wDUjpavNmLe3dbLFpfXlvi4daa
 gj6TvoL2yLlp3nlbM6h7Toy5mjq+oGOAKptNMNKf/ybhsVGBuhNym1gXrmKBgE+EGeo/G8s
 74FaodDr4WqaZe1v7Xalvw5jtL7vsAfTCuYoW01cKLKYIO3JADckcHUJAr72TDZOqsE2eZq
 0ySZgDu0ATvyRBErtpQZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xhm+vREtMCY=:T83CPFJ68BCA6RNQZqZ3v8
 G5XENtSsyl51tm2K4yes497iE5iISoOUwOCR3fyrLkZ4e8j7pnAFK9T4zgMffPizzYSRCwaEI
 qCBJQBcvkbVoMIlbMcZ6b9NMneQwGkd8uCQunCORWJmMeCIjEA1YYzmJRqjrET2wHyesdCDrS
 p1H9Vj2q3JTDOO1TGLe07VczqH6mRODntrD9wzw48rkdTiE5dJIZx8/XL5oZTGJ0r05yBZqxC
 K6207LMQDsEQ7lOu+k28fp8N/P/ENucoF0FubmXzDVxWiv/zvqyCeg8Opc02k2TylOlAejRlr
 0MbStFut2YS7DjdKCZyb7cbF8TqsIWjfKGvEgw4pc6G/xQDu2tY5kL95jn2pS3R3sYudJjbHG
 5bSSftzzB4TAMjxV8Jh3MeL6e1HIkd/+fcub7tg7Wu0URgJxG7Y8zWy/+/5o4qazWEUAtdExW
 H6Wg2JHYSe3pRaJPrxoMDG7IVkN1yr30TIHwMIfTF1b8WkyBP+qxN+cVfsQOQ4d7f05+VZTZw
 fP8ESDiSqh2+DdQIgcG7r5q1OXQqVBQd3xShRvAQ/SCviGLQk2uqTQ+CgpRnexqSGf1GwKy2G
 K39NyQMIv7eNfg+igSfLAtDghR18JNLaq0I3iuslzksAyQP/csuOCGQT60Skj2gmnBw8qAAF2
 bqCZztZU00r1U5leHeYfiM35NJlVvtOnhyv7N4YPyMcaHtDwNN8SKDilVheLwhffe+kZOxKx7
 tVXEpLcQbUP3nUeVhZIdDFezVCLXrme9MUKOkO5OmeqtUXCRaakOnATq2Acso8knB+3TJRVqH
 RZsRQ8jZyQUP+9Sc9C3b2A5q61ATuYeBa1QvTMxDraeYMaaBxTWZzpz0HzrEn+dD38rrr4r
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_114821_079817_60871119 
X-CRM114-Status: GOOD (  35.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 23.03.20 um 16:55 schrieb Dave Stevenson:
> Hi Maxime
>
> On Mon, 23 Mar 2020 at 14:57, Maxime Ripard <maxime@cerno.tech> wrote:
>> Hi Dave,
>>
>> On Mon, Mar 16, 2020 at 01:57:13PM +0000, Dave Stevenson wrote:
>>>  Hi Stefan and Nicolas
>>>
>>> On Mon, 16 Mar 2020 at 12:40, Nicolas Saenz Julienne
>>> <nsaenzjulienne@suse.de> wrote:
>>>> Hi Stefan,
>>>> thanks for taking the time with this. That was a hard to find one, specially
>>>> given the race in X11.
>>>>
>>>> On Sun, 2020-03-15 at 20:16 +0100, Stefan Wahren wrote:
>>>>> Hi Nicolas,
>>>>>
>>>>> [adjust audience]
>>>>>
>>>>> i've narrowed down the issue. From kernel 4.19 until 5.1 the DRM
>>>>> emulated driver was responsible for a working X on my Raspberry Pi 3
>>>>> with HP ZR2440w. Starting with 5.2 the vc4drmfb took over and with 5.3 X
>>>>> didn't start anymore (display freeze).
>>>>>
>>>>> So i start bisecting and this was the commit where the freezing started:
>>>>>
>>>>> e08ab74bd4 drm/modes: Rewrite the command line parser
>>>>>
>>>>> After this i enabled drm debug and saw that suggest mode 1920x1200 by
>>>>> the firmware is rejected by the driver because the pixel clock would be
>>>>> too high (154 MHz, max = 148.5). This wasn't a problem before since the
>>>>> firmware provided video cmdline parameter wasn't parseable:
>>>>>
>>>>> [drm] parse error at position 69 in video mode
>>>>> '1920x1200M@60,margin_left=0,margin_right=0,margin_top=0,margin_bottom=0'
>>>>>
>>>>> After mentioned commit the display just freezes (no try to use
>>>>> 1920x1080, no error message).
>>>>>
>>>>> For comparison i switched to the vendor tree with firmware kms driver
>>>>> and noticed that the driver switches to 1920x1200 with a pixel at 154 MHz.
>>>>>
>>>>> So this patch works for me:
>>>>>
>>>>> ---
>>>>>  drivers/gpu/drm/vc4/vc4_hdmi.c | 9 +++++----
>>>>>  1 file changed, 5 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
>>>>> index cea18dc..647803e 100644
>>>>> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
>>>>> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
>>>>> @@ -681,11 +681,12 @@ static enum drm_mode_status
>>>>>  vc4_hdmi_encoder_mode_valid(struct drm_encoder *crtc,
>>>>>                  const struct drm_display_mode *mode)
>>>>>  {
>>>>> -    /* HSM clock must be 108% of the pixel clock.
>>>> I think it'd be nice to understand how Eric came by this number. Maybe just
>>>> empirically with 1080p60? That said, I think your change is pretty much
>>>> harmless.
>>>>
>>>> I'll add a reminder to Maxime's series for him to update RPi[0-3]'s max
>>>> frequency to 1920x1200@60's.
>>>>
>>>>> -     * the AXI clock needs to be at least 25% of pixel clock, but
>>>>> -     * HSM ends up being the limiting factor.
>>>>> +    /* According to spec the HSM clock must be 108% of the pixel clock.
>>>>> +     * Additionally, the AXI clock needs to be at least 25% of pixel clock,
>>>>> +     * but HSM ends up being the limiting factor.
>>>>> +     * It seems that operating the pixel clock at 154 MHz still works.
>>>>>       */
>>>>> -    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 108 / 100))
>>>>> +    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 106 / 100))
>>>> Isn't hard-coding the HSM clock kind of limited, one could overclock it, isn't
>>>> it? I remember reading someone did it to support wider resolutions.
>>> Checking the docs it does state the restriction that Eric quotes.
>>>
>>> HDMI Core Clock (state machine clock)
>>> Most of the HDMI logic operates on that clock. It
>>> is asynchronous to system core clock and pixel
>>> clock. Source for this clock can be chosen from
>>> various PLLs in the chip. See CPR Manager for
>>> details.
>>>
>>> This clock is also used for clocking pixel valve
>>> when HDMI peripheral is used. See Pixel Valve
>>> for details.axi_clock >= hdmi_core_clock > 108% of
>>> pixel_clock.
>>>
>>>
>>> The default max pixel clock from the firmware side is 162MHz.
>>>
>>> In the firmware source we have a comment
>>>          // HDMI state machine clock must be faster than pixel clock -
>>> infinitessimally faster tested in simulation.
>>>          // Otherwise, exact value is unimportant - for HDMI operation.
>>>          // hdmi state machine clock now derived from PLLC_PER (typ
>>> 500MHz, see relevant platform.c).
>>>          //
>>>          // However, CEC bit clock is derived from the HSM clock, and
>>> the (programmable) CEC timing table
>>>          // is configured for a 40.00kHz CEC clock.
>>>          const unsigned margin = 1*1000*1000;
>>>          unsigned min_hsm_clock = margin + timings->pixel_freq;
>>>          const unsigned max_hsm_clock_for_cec = max(163682864,
>>> hdmi_pixel_freq_limit);
>>>
>>>          unsigned hdmi_state_machine_clock = max_hsm_clock_for_cec;
>>>
>>> So it adds 1MHz to the pixel clock for min_hsm_clock, but then doesn't
>>> use the value.
>>> Unless you do request a higher hdmi_pixel_freq_limit then the HSM is
>>> running at the same 163.68MHz that Eric's driver hard codes, and our
>>> max pixel clock is 162MHz.
>>> Keeping it a fixed value makes sorting the divider for CEC easier.
>>>
>>> Just adopting a 162MHz limit with a suitable comment is probably the
>>> most sensible move here, and Maxime's patches can pick up the same
>>> value.
>> It's kind of related, but one of the changes we did to support the
>> RPi4 is to change that rate calculation to increase the HSM clock for
>> pixel clocks higher than 148.5MHz (so typically 4k), while keeping it
>> as low as possible to reduce the power consumption.
>>
>> How would that interact with this change?
> I'd forgotten that your patches mean we change the HSM clock on Pi3.
> As you're aware, whilst I have some extra docs, many of them aren't as
> comprehensive as one would hope. We can go back to the Broadcom and
> RTL if absolutely necessary, but it's a pain. Broadcom don't
> necessarily have the personnel who designed the blocks still working
> there.
>
> Your patches appear to recompute the HSM clock based on pixel_clock *
> 108%, with a min of 108MHz, so effectively the same limit as the old
> version did by fixing the HSM rate.
>
> Checking the firmware for Pi4, it sets the HSM (M2MC) clock to
> pixel_rate * 1.01, clipped to 120MHz and 600Mhz. (Audio drops out if
> less than 108MHz. "Pick 120 to have an integer divider with some
> margin." I'd need to check which divider that is referring to).
> As noted above, the Pi3 firmware sets the HSM clock to 163.6MHz.
>
> I'd suggest that we:
> a) Increase max_pixel_clock for vc4 (Pi0-3) to 162MHz.
> b) Set HSM clock to 101% of the pixel clock, with a min of 120MHz
> (4k60 with pixel clock 594MHz would go to a 599.94MHz HSM clock which
> is still within range)
> c) Test it! I know we have some 1920x1200 monitors in the office (when
> I'm back in there).

i don't think that i'm able to prepare those patches, but i'm happy to
test them.

Thanks
Stefan

>
> Whilst the firmware would appear to use a fixed HSM clock on Pi0-3, I
> don't anticipate there being any issue with varying it. It looks like
> there was the expectation of it being variable in the past, but
> someone has refactored it and either accidentally or deliberately
> given up on the idea.
>
>   Dave
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
