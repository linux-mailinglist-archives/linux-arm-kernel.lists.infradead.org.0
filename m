Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D77AE9063
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:59:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5gm7WK0UksBWMwNYWEq2aLLnCzUJOX7Tj6aITDM/AI=; b=I3fcYjxpSqrrSp
	v4UqlpbSzfsES3MdhMRsU+Yi78k29Kv50c6evlGCEgcO9WAtKA+FOS2j0d1MFkqx+19Ahf5bBhiZ6
	Nv+bP6jZIC+GN2ZZrWumFEG4m/OI4XPGDKM3I27f8v/sU4UdVg2bvwAvsL5iivlTu5YOU47OVcVu1
	cuw+HMFalzPrs/QNHITkgfxRk8Df71ilqXpHCKtSyn2AQVCGnvpfB3ttGhRyMaa5NlVf2EcI+PcTn
	ErDtstHffRDapShVQl8OXpKs6wP5nIYzM4yEOawbLWYY71Wb1lT+2i147ZjPvwcMjlgHBWB/Tnv33
	Ay/waf5I4oGSgF+CVfqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPXe1-0000xe-Fl; Tue, 29 Oct 2019 19:59:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPXdh-0000x3-Jt
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 19:58:51 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 849E5217D9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 19:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572379128;
 bh=WAdeg+B9VRaoa2GUGbY801lVq9HtWmhjZYVHysrysc4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NWcGI6t4d1C6w5YAcjerwQGwR40yf9qK1MLh8rjyF/petI083MZCWoDGvmAGjUNT+
 osJVzDa0YEBwPO7Aa83PkbOI33Q1gE7pAw7jcVi8uWmcZglhBgxr0bcxGIyj55LVjE
 ZoNK5yzBU/vrK/+f+MwxjVdJElZhbsS1weXQZGvA=
Received: by mail-qt1-f177.google.com with SMTP id u22so22052149qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 12:58:48 -0700 (PDT)
X-Gm-Message-State: APjAAAUVHo7U7LcQtVCIfUAaJV36QUP+NEkenW4ImwcwfpUCOsUi6c8M
 LfXat/KSndpUuSYh3aawZJCVnCaRA/euMDFjOQ==
X-Google-Smtp-Source: APXvYqzRmnIY3wGUVkxDxaAMji2JuEUN2V6Oi2AOYbmEqJQcYn6zDifp/TQUReouyPTdjsRGjIdcrF3l7Z6nybIbzJE=
X-Received: by 2002:ac8:48c5:: with SMTP id l5mr469360qtr.110.1572379127527;
 Tue, 29 Oct 2019 12:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191016010544.14561-1-slongerbeam@gmail.com>
 <20191016010544.14561-3-slongerbeam@gmail.com>
 <20191027212121.GA3049@bogus> <2daa37a6-83a7-ec08-b89c-a07268b3ea4a@gmail.com>
In-Reply-To: <2daa37a6-83a7-ec08-b89c-a07268b3ea4a@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 29 Oct 2019 14:58:36 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJK5CzQDpCWGZWKgp_8dPG7x0W1HLe+B3zHRP-Te9SToA@mail.gmail.com>
Message-ID: <CAL_JsqJK5CzQDpCWGZWKgp_8dPG7x0W1HLe+B3zHRP-Te9SToA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: timer: imx: gpt: Add pin group bindings
 for input capture
To: Steve Longerbeam <slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_125849_706459_2B531ECC 
X-CRM114-Status: GOOD (  31.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Oct 28, 2019 at 6:59 PM Steve Longerbeam <slongerbeam@gmail.com> wrote:
>
> Hi Rob,
>
> Thanks for reviewing.
>
> On 10/27/19 2:21 PM, Rob Herring wrote:
> > On Tue, Oct 15, 2019 at 06:05:44PM -0700, Steve Longerbeam wrote:
> >> Add pin group bindings to support input capture function of the i.MX
> >> GPT.
> >>
> >> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> >> ---
> >>   .../devicetree/bindings/timer/fsl,imxgpt.txt  | 28 +++++++++++++++++++
> >>   1 file changed, 28 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> >> index 5d8fd5b52598..32797b7b0d02 100644
> >> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> >> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> >> @@ -33,6 +33,13 @@ Required properties:
> >>              an entry for each entry in clock-names.
> >>   - clock-names : must include "ipg" entry first, then "per" entry.
> >>
> >> +Optional properties:
> >> +
> >> +- pinctrl-0: For the i.MX GPT to support the Input Capture function,
> >> +         the input capture channel pin groups must be listed here.
> >> +- pinctrl-names: must be "default".
> >> +
> >> +
> >>   Example:
> >>
> >>   gpt1: timer@10003000 {
> >> @@ -43,3 +50,24 @@ gpt1: timer@10003000 {
> >>               <&clks IMX27_CLK_PER1_GATE>;
> >>      clock-names = "ipg", "per";
> >>   };
> >> +
> >> +
> >> +Example with input capture channel 0 support:
> >> +
> >> +pinctrl_gpt_input_capture0: gptinputcapture0grp {
> >> +    fsl,pins = <
> >> +            MX6QDL_PAD_SD1_DAT0__GPT_CAPTURE1 0x1b0b0
> >> +    >;
> >> +};
> >> +
> >> +gpt: gpt@2098000 {
> > timer@...
>
> Ok.
>
> >
> > I don't really think this merits another example though.
>
> Ok.
>
> But for version 2 of this patch-set I'd like to run some ideas by you.
>
> Because in this version I did not make any attempt to create a generic
> timer capture framework. I just exported a couple imx-specific functions
> to request and free a timer input capture channel in the imx-gpt driver.
>
> So for version 2 I am thinking about a simple framework that other SoC
> timers with timer input capture support can make use of.
>
> To begin with I don't see that timer input capture warrants the
> definition of a new device. At least for imx, timer input capture is
> just one function of the imx GPT, where the other is Output Compare
> which is used for the system timer. I think that is likely the case for
> most all SoC timers, that is, input capture and output compare are
> tightly interwoven functions of general purpose timers.
>
> So I'm thinking there needs to be an additional #input-capture-cells
> property that defines how many input capture channels the timer
> contains, where a channel refers to a single input signal edge that can
> capture the timer counter. The imx GPT has two input capture channels (2
> separate input signals).

#foo-cells is not how many of something, but how many u32 parameters a
'foos' consumer property has. But seems like that's what you meant
based on the example.

>
> For example, on imx:
>
> gpt: timer@2098000 {
>         compatible = "fsl,imx6q-gpt", "fsl,imx31-gpt";
>         /* ... */
>         #input-capture-cells = <1>;
>         pinctrl-names = "default", "icap1";
>         pinctrl-0 = <&pinctrl_gpt_input_capture0>;
>         pinctrl-1 = <&pinctrl_gpt_input_capture1>;
> };
>
>
> A device that is a listener/consumer of an timer capture event would then refer to a timer capture channel:
>
> some-device {
>         /* ... */
>         timer-input-capture = <&gpt 0>;
> };

We'd want to be more consistent in the naming, but seems reasonable.
One of the challenges with timers is selecting which timer is used for
what function. This helps as you can know if a timer is used for input
capture or not. One issue will be is having '#input-capture-cells'
enough to decide that, or does one have to walk the DT and find all
the 'timer-input-capture' properties (shouldn't be a lot)? You could
also want to use input capture, but not describe the connection in DT.

Another thought is should it be just 'timers' to cover both input
capture and output compare with those being selected with flags (like
GPIO).

My other question is just what are some real examples of devices
needing to describe this connection. Timers have had input capture
forever, but I've rarely seen it used. Output compare even less so.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
