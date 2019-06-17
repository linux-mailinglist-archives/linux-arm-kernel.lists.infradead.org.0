Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBB5481E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tS9KD3os1b5o9xNd7ZWP9fQoBCrOHCFjr5fnoiPKd4=; b=CKNpUj/kAuhv/K
	clytXnzFnSjtZ7anh61zC1AyUP/nTUwCF+j8o0kiP5ZNdLHZzqtxOYkUES58L41dEEtaFEvGiuh6q
	3NsOZvWVfgHSy1n3bVgpp5PZmUAPuAT3JK4JSeJyskBxzpLHffLQ0YOgUHIWKh0/7sSHs1QPUaKCG
	Dr10BoRDLH3sUx7xaS6md6+f8hH34BUBfeoUOtwtpJy0va5/3ab7yORpJ8gPfXdiI5COPIjhreme8
	y0+7vrPgFWE8Y7VRqZDaMuzRDx+TN5IH9szkjYOrLQ70GG442dWCn0AxPGESUEZ7+hDFKGB7FRyDO
	IxO1DbE1/3osqFqaSg+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqec-000570-Nb; Mon, 17 Jun 2019 12:22:30 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqeF-0004xT-9g
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:22:08 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 190so5950963vsf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=inGSDUfgy12MnV2jo2D4Nubdqwd8cc039JMXj9GTRrA=;
 b=BaY/Mw4ucNOLlZG6021hvYu+v8OFPCGaf5W2OANB6XPbg0UqT/cgAB3AravOtr3BEF
 yUGEhb38oekQt0UrrCBEpZgcUST8GsaDeV4pe+g7KoeJlRnXUAyDklVTAS8hGgTZTVnY
 A7ZsBtlltgi8+h1kaTi80I2Kbpf6jzD/DnljX9n76hZJmsVDNxJRQTcOl2TKSU6F5crE
 SyA8FgL2RvuBCgYHXHZgDLkut1yb6DaP09n2as2TT836YKODLrQ0ewzsz86A5EIXw8YI
 NjiHJywpoahWsy5SzgYUhCKomVxgX2YyRex2O/fOhOQlTT+Ub10tpaDPZmfd+2GCDERS
 +T5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=inGSDUfgy12MnV2jo2D4Nubdqwd8cc039JMXj9GTRrA=;
 b=X/XUjjRNXPdvIWI3D/Le487i9s1cewqLb+OMGvuNLgWGBSUSWUbIK7eBrcx8LG5/DR
 roAWVkj71w7WYYh7spEw+S54ZM3c+kRYXqNVPW2zYk0O49WzzjBNMSSfxtwYZlRKgaHt
 tjsnfdC7/NQhWwBKmIZ9t9MGFxyAJg2iFHM2xVCXItCRJWY3fyhCqcXFk5WNK41LxeEF
 3VV6EC1VMbOb9fomNOFfV6kZUWtLEUlzKSD+DVsUsUdJCHd12IRqCxQ8LNWNcKX0hxKr
 tmQEG6kDs/0DmgvsenvEnilMYtMnx8evuV8Sz9fcUPtvG3T7YzCZtsldZwmNs0oKJxgF
 lSGA==
X-Gm-Message-State: APjAAAVeECaUMndJTJO9Coefcaipv78xfpA9fm3L2S3LeDXb2+eqhL3W
 pW+Dm4qhMFSJWblbUaiOe03ox3Kn93a5mU9xR84wfq+qQJc=
X-Google-Smtp-Source: APXvYqwvsX2qorPP589qYvilkHLdtcwg2ZCmDdhmhV70oupOdc+lud+k/srIUL3u3WxMmegbWHGCs6qQXzT1ePDp16s=
X-Received: by 2002:a67:3254:: with SMTP id y81mr20750067vsy.34.1560774125745; 
 Mon, 17 Jun 2019 05:22:05 -0700 (PDT)
MIME-Version: 1.0
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
In-Reply-To: <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 14:21:28 +0200
Message-ID: <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_052207_339932_79A4BE13 
X-CRM114-Status: GOOD (  36.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Rob Herring <robh+dt@kernel.org>,
 Manish Narani <manish.narani@xilinx.com>, jolly.shah@xilinx.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 at 13:28, Michal Simek <michal.simek@xilinx.com> wrote:
>
> Hi,
>
> On 17. 06. 19 13:15, Ulf Hansson wrote:
> > On Tue, 11 Jun 2019 at 11:57, Manish Narani <manish.narani@xilinx.com> wrote:
> >>
> >> Apart from taps set by auto tuning, ZynqMP platform has feature to set
> >> the tap values manually. Add support to read tap delay values from
> >> DT and set the same in HW via ZynqMP SoC framework. Reading Tap
> >> Delays from DT is optional, if the property is not available in DT the
> >> driver will use the pre-defined Tap Delay Values.
> >>
> >> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> >> ---
> >>  drivers/mmc/host/sdhci-of-arasan.c | 173 ++++++++++++++++++++++++++++++++++++-
> >>  1 file changed, 172 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> >> index b12abf9..7af6cec 100644
> >> --- a/drivers/mmc/host/sdhci-of-arasan.c
> >> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> >> @@ -22,6 +22,7 @@
> >>  #include <linux/phy/phy.h>
> >>  #include <linux/regmap.h>
> >>  #include <linux/of.h>
> >> +#include <linux/firmware/xlnx-zynqmp.h>
> >>
> >>  #include "cqhci.h"
> >>  #include "sdhci-pltfm.h"
> >> @@ -32,6 +33,10 @@
> >>
> >>  #define PHY_CLK_TOO_SLOW_HZ            400000
> >>
> >> +/* Default settings for ZynqMP Tap Delays */
> >> +#define ZYNQMP_ITAP_DELAYS {0, 0x15, 0x15, 0, 0x15, 0, 0, 0x3D, 0x12, 0, 0}
> >> +#define ZYNQMP_OTAP_DELAYS {0, 0x5, 0x6, 0, 0x5, 0x3, 0x3, 0x4, 0x6, 0x3, 0}
> >> +
> >>  /*
> >>   * On some SoCs the syscon area has a feature where the upper 16-bits of
> >>   * each 32-bit register act as a write mask for the lower 16-bits.  This allows
> >> @@ -81,6 +86,7 @@ struct sdhci_arasan_soc_ctl_map {
> >>   * @sdcardclk:         Pointer to normal 'struct clock' for sdcardclk_hw.
> >>   * @soc_ctl_base:      Pointer to regmap for syscon for soc_ctl registers.
> >>   * @soc_ctl_map:       Map to get offsets into soc_ctl registers.
> >> + * @of_data:           Platform specific runtime data storage pointer
> >>   */
> >>  struct sdhci_arasan_data {
> >>         struct sdhci_host *host;
> >> @@ -101,6 +107,15 @@ struct sdhci_arasan_data {
> >>  /* Controller immediately reports SDHCI_CLOCK_INT_STABLE after enabling the
> >>   * internal clock even when the clock isn't stable */
> >>  #define SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE BIT(1)
> >> +
> >> +       void *of_data;
> >> +};
> >> +
> >> +struct sdhci_arasan_zynqmp_data {
> >> +       void (*set_tap_delay)(struct sdhci_host *host);
> >> +       const struct zynqmp_eemi_ops *eemi_ops;
> >> +       u8 tapdly[MMC_TIMING_MMC_HS400 + 1][2]; /* [0] for input delay, */
> >> +                                               /* [1] for output delay */
> >>  };
> >
> > Please use two different structs, one for the clock provider data and
> > one for the mmc variant/platform data. This makes the code more
> > readable.
>
> Origin version before sending that out was using two fields.
> +       u32 itapdly[MMC_TIMING_MMC_HS400 + 1];
> +       u32 otapdly[MMC_TIMING_MMC_HS400 + 1];
>
> I did asked for putting it together to two dimensional array for
> improving readability of this code. The reason was that you need to take
> care about input/output together.
> One thing I was also suggesting was to use instead of 2 just enum values
> to specify IN=0/OUT/MAX to improve readability of this.
> Do you think that using enum should be enough?

Not sure I understand what you suggest here, sorry. I have no problem
with the enums.

The important point I am trying to make here, is that we should split
the clock provider data and the mmc variant data, simply because those
doesn't really belong to each each other.

Something like this:

struct sdhci_arasan_zynqmp_data {
         bool tap_delays;
         u8 tapdly[MMC_TIMING_MMC_HS400 + 1][2]; /* [0] for input
delay, [1] for output delay */
         + other variant specific data one may want to put here
}

These are just regular mmc OF data that are parsed as any other
property of the mmc device.

The "const struct zynqmp_eemi_ops *eemi_ops; should then be moved into
a clock provider specific struct, which is assigned when calling
sdhci_arasan_register_sdclk. I understand that all the clock data is
folded into struct sdhci_arasan_data today, but I think that should be
moved into a "sub-struct" for the clock specifics.

Moreover, when registering the clock, we should convert from using
devm_clk_register() into devm_clk_hw_register() as the first one is
now deprecated.

>
>
> > In regards to the mmc data part, I suggest to drop the
> > ->set_tap_delay() callback, but rather use a boolean flag to indicate
> > whether clock phases needs to be changed for the variant. Potentially
> > that could even be skipped and instead call clk_set_phase()
> > unconditionally, as the clock core deals fine with clock providers
> > that doesn't support the ->set_phase() callback.
>
> In connection to another version of this driver for latest Xilinx chip
> it would be better to keep set_tap_delay callback in the driver. The
> reason is that new chip/ip is capable to setup tap delays directly
> without asking firmware to do it. That's why for versal IP there is a
> need to call different setup_tap_delay function.

The ->set_tap_delay() callback is for ZyncMp pointing to
sdhci_arasan_zynqmp_set_tap_delay(). This function calls the
clk_set_phase() API.

What does ->set_tap_delay() do for the latest version?

>
> >
> > [...]
> >
> > Otherwise this looks good to me!
> >
> > When it comes to patch1, I need an ack from Michal to pick it up.
>
> I am waiting till Rob ack dt binding and then I wanted to talk to you if
> you want to take it with 1/3 or if you want me to take all of them via
> my tree.
> In previous releases I was taking them via my tree because there were
> several subsystem changing firmware interface. In this cycle there are
> just small changes to firmware interface that's why taking it via your
> tree shouldn't be a problem too.

Okay, then let's target this via my mmc tree this time.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
