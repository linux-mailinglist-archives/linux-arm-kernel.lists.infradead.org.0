Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD00EE939
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1z4hvyLIWLHsQbFzexhm+NKoD3xxv5J9wYyv76XunlY=; b=C0sP5QsXu/Ya9+
	Rx1/9dkGvvC8CV99rZ2rGs50b1bpgmease7m75HNaSKEjD/tFqJVseJDWKtwgY06bXq/MPUI1MPeD
	/4GjdP2Axo9UctMUXMEv4AWlAmY8VnbiHO6xx9XX7bKBP1DqbFRbQIa1C72fwSMp9WchWGY6ZWEa3
	hgK5CdNMMVMu9F+zsD59b3fyqTZFl3o+p9Ugrq75Rr4M7QJRR7ZfGgRb3XtvCcCLmBXKqKHlMrtaM
	wH6UnnuF3uByNboUjqHO9Q+1eWh2NhzSgXF9v0skH3Ie1UHS8XM/H5IvgYRk9D32hQoYniI4s6C29
	ZXE5UENv9HhOEYj2UW9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRifY-0000M5-As; Mon, 04 Nov 2019 20:09:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRifP-0000J0-N0
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:09:38 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C83EA20B7C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 Nov 2019 20:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572898174;
 bh=EU1/SX/keEEgUTayzX1NFwMcrOXiP/VIUH4HHOybqts=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OjZquek1oGIZOJG4Bo1+y18MJNC2srJlMFvycxCwu4hodnhPqFujdqsc57X83mhI/
 0pn0SQIIsVB07pxoOJbLjV4HMGJAdP8LRb6oBJDj9NT0Z5sLdXOhxFHb1BwFEjmHnD
 yJHoXHY9BBxbxUrjFJZ2w8I1pBawfpWS+oNrKTQU=
Received: by mail-qt1-f173.google.com with SMTP id o11so20787170qtr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 12:09:34 -0800 (PST)
X-Gm-Message-State: APjAAAVpMkIfjGy6lqbKtGDmUanRaBdRUSkku3XN/c5vmZ2G1AeHUnuD
 e6UB5F9GaPG9C/hNpFut/0vgi4QYCNM51u+vOQ==
X-Google-Smtp-Source: APXvYqx8BFxJhPpB7ipxT9HsMek753Eb9mzZ3MiHBcLAxgxg+1ySvjemvoO1+BxwDu/0+pIotu8Up2TnBSmc7148Ndg=
X-Received: by 2002:ad4:5446:: with SMTP id h6mr23633630qvt.20.1572898173835; 
 Mon, 04 Nov 2019 12:09:33 -0800 (PST)
MIME-Version: 1.0
References: <20191016010544.14561-1-slongerbeam@gmail.com>
 <20191016010544.14561-3-slongerbeam@gmail.com>
 <20191027212121.GA3049@bogus> <2daa37a6-83a7-ec08-b89c-a07268b3ea4a@gmail.com>
 <CAL_JsqJK5CzQDpCWGZWKgp_8dPG7x0W1HLe+B3zHRP-Te9SToA@mail.gmail.com>
 <ef514e28-e92f-d8fc-0a5f-330a6207b638@gmail.com>
In-Reply-To: <ef514e28-e92f-d8fc-0a5f-330a6207b638@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 4 Nov 2019 14:09:22 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+1X_62+Xc76GH-n+sBeBqZo6Nw7Viq+1R9SAWHAFmDDQ@mail.gmail.com>
Message-ID: <CAL_Jsq+1X_62+Xc76GH-n+sBeBqZo6Nw7Viq+1R9SAWHAFmDDQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: timer: imx: gpt: Add pin group bindings
 for input capture
To: Steve Longerbeam <slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_120935_794233_9DC8AA12 
X-CRM114-Status: GOOD (  41.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, "open list:CLOCKSOURCE,
 CLOCKEVENT DRIVERS" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 3, 2019 at 2:20 PM Steve Longerbeam <slongerbeam@gmail.com> wrote:
>
>
>
> On 10/29/19 12:58 PM, Rob Herring wrote:
> > On Mon, Oct 28, 2019 at 6:59 PM Steve Longerbeam <slongerbeam@gmail.com> wrote:
> >> Hi Rob,
> >>
> >> Thanks for reviewing.
> >>
> >> On 10/27/19 2:21 PM, Rob Herring wrote:
> >>> On Tue, Oct 15, 2019 at 06:05:44PM -0700, Steve Longerbeam wrote:
> >>>> Add pin group bindings to support input capture function of the i.MX
> >>>> GPT.
> >>>>
> >>>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> >>>> ---
> >>>>    .../devicetree/bindings/timer/fsl,imxgpt.txt  | 28 +++++++++++++++++++
> >>>>    1 file changed, 28 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> >>>> index 5d8fd5b52598..32797b7b0d02 100644
> >>>> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> >>>> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> >>>> @@ -33,6 +33,13 @@ Required properties:
> >>>>               an entry for each entry in clock-names.
> >>>>    - clock-names : must include "ipg" entry first, then "per" entry.
> >>>>
> >>>> +Optional properties:
> >>>> +
> >>>> +- pinctrl-0: For the i.MX GPT to support the Input Capture function,
> >>>> +         the input capture channel pin groups must be listed here.
> >>>> +- pinctrl-names: must be "default".
> >>>> +
> >>>> +
> >>>>    Example:
> >>>>
> >>>>    gpt1: timer@10003000 {
> >>>> @@ -43,3 +50,24 @@ gpt1: timer@10003000 {
> >>>>                <&clks IMX27_CLK_PER1_GATE>;
> >>>>       clock-names = "ipg", "per";
> >>>>    };
> >>>> +
> >>>> +
> >>>> +Example with input capture channel 0 support:
> >>>> +
> >>>> +pinctrl_gpt_input_capture0: gptinputcapture0grp {
> >>>> +    fsl,pins = <
> >>>> +            MX6QDL_PAD_SD1_DAT0__GPT_CAPTURE1 0x1b0b0
> >>>> +    >;
> >>>> +};
> >>>> +
> >>>> +gpt: gpt@2098000 {
> >>> timer@...
> >> Ok.
> >>
> >>> I don't really think this merits another example though.
> >> Ok.
> >>
> >> But for version 2 of this patch-set I'd like to run some ideas by you.
> >>
> >> Because in this version I did not make any attempt to create a generic
> >> timer capture framework. I just exported a couple imx-specific functions
> >> to request and free a timer input capture channel in the imx-gpt driver.
> >>
> >> So for version 2 I am thinking about a simple framework that other SoC
> >> timers with timer input capture support can make use of.
> >>
> >> To begin with I don't see that timer input capture warrants the
> >> definition of a new device. At least for imx, timer input capture is
> >> just one function of the imx GPT, where the other is Output Compare
> >> which is used for the system timer. I think that is likely the case for
> >> most all SoC timers, that is, input capture and output compare are
> >> tightly interwoven functions of general purpose timers.
> >>
> >> So I'm thinking there needs to be an additional #input-capture-cells
> >> property that defines how many input capture channels the timer
> >> contains, where a channel refers to a single input signal edge that can
> >> capture the timer counter. The imx GPT has two input capture channels (2
> >> separate input signals).
> > #foo-cells is not how many of something, but how many u32 parameters a
> > 'foos' consumer property has. But seems like that's what you meant
> > based on the example.
>
> Sorry yes that's what I meant, my wording was imprecise. If a timer has
> only one input capture channel, no arguments are needed to specify the
> channel in the timer-input-capture property and #input-capture-cells
> would be <0>.
>
>
> >
> >> For example, on imx:
> >>
> >> gpt: timer@2098000 {
> >>          compatible = "fsl,imx6q-gpt", "fsl,imx31-gpt";
> >>          /* ... */
> >>          #input-capture-cells = <1>;
> >>          pinctrl-names = "default", "icap1";
> >>          pinctrl-0 = <&pinctrl_gpt_input_capture0>;
> >>          pinctrl-1 = <&pinctrl_gpt_input_capture1>;
> >> };
> >>
> >>
> >> A device that is a listener/consumer of an timer capture event would then refer to a timer capture channel:
> >>
> >> some-device {
> >>          /* ... */
> >>          timer-input-capture = <&gpt 0>;
> >> };
> > We'd want to be more consistent in the naming, but seems reasonable.
>
> Yeah, maybe rename the properties to #timer-capture-cells and timer-capture.
>
>
> > One of the challenges with timers is selecting which timer is used for
> > what function. This helps as you can know if a timer is used for input
> > capture or not. One issue will be is having '#input-capture-cells'
> > enough to decide that,
>
>
> Yes, it does bother me somewhat that
>
> timer-capture = <&gpt 0>;
>
> is referring to the timer itself and not its input-capture functionality.
>
> Maybe it would be better, since the timer has multiple functions, to
> make the timer compatible with simple-mfd, so that a timer-capture
> sub-device can be defined, for example on i.MX6:
>
> gpt: timer@2098000 {
>          compatible = "fsl,imx6q-gpt", "fsl,imx31-gpt", "simple-mfd";
>          /* ... */
>
>         tcap: timer-capture {
>                 compatible = "fsl,imx6q-gpt-capture";
>                 #timer-capture-cells = <1>;
>                 pinctrl-names = "default", "icap1";
>                 pinctrl-0 = <&pinctrl_gpt_input_capture0>;
>                 pinctrl-1 = <&pinctrl_gpt_input_capture1>;
>         };
> };
>
> some-device {
>          /* ... */
>          timer-capture = <&tcap 0>;
> };

No, worse IMO. It's not really a separate h/w block to make it a child
node. A single node can be multiple providers.

> >   or does one have to walk the DT and find all
> > the 'timer-input-capture' properties (shouldn't be a lot)?
> >   You could
> > also want to use input capture, but not describe the connection in DT.
>
> That's a thought, but I'm not sure how the kernel API would look in that
> case, i.e. it would not be as straightforward to locate the timer
> clocksource driver that contains the timer capture support. The
> advantage of using a 'timer-capture' property that contains a timer
> phandle, is that it is simple to locate the clocksource driver that has
> the timer capture function.

Ignoring issues with clocksources not being drivers, anything could be
an input capture provider whether DT provides that info or you just
have some API to register an input capture device. IOW, it could be
implicit in DT if you know you always want to expose the
functionality.

> > Another thought is should it be just 'timers' to cover both input
> > capture and output compare with those being selected with flags (like
> > GPIO).
> >
> > My other question is just what are some real examples of devices
> > needing to describe this connection. Timers have had input capture
> > forever, but I've rarely seen it used. Output compare even less so.
>
> In this specific use-case, the i.MX6 CSI often cannot recover from
> corrupted frame synchronization info in the incoming video frames,
> especially for BT.656 sources (too many or too few lines between two
> SAV/EAV codes, or missing codes altogether). The result is loss of
> vertical sync in the captured frames. The only indication of this error
> condition on i.MX6 is a drop in the captured frame intervals. So a
> workaround is to implement a frame interval monitor that measures the
> FI's and reports a V4L2 event to userspace when a FI falls outside some
> tolerance value. Userspace can then take corrective action such as
> restarting video streaming. Finally getting to the use-case here, the
> most accurate way to measure FI's is to capture a timer counter between
> two falling edges of a VSYNC signal from the video source.

I would think VSYNC is slow enough you could just use a GPIO interrupt
unless it's 1 bad frame only and a small change in the timing.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
