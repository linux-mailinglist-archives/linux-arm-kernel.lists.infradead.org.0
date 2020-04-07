Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E491A150E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 20:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DG4g8KOeNvlLcBX4qGL+YoKpz4UGXI86zPc+BCUJHnU=; b=Ms9Q8sBP7qfcIi
	fUAv9oWOcn73uBCI/vRJZBw4vpqFwjg3zMuCm5Z5beWnhFzNgOPike6Ua2t2R8i709/fVtRBxJ14B
	kkUTzsAktTxYOHkKpXcMWfNVYNIJYIukX/AdbWOTROfUvgAZJAV1D6aBcUu2D/GzPucY2WvlWAQsT
	85jP0XmFscORXwQjqfoVILeV66g64yhL9Wr37glQUnePi3LHn7Rtz3E+1Nq8euvr+QVaCIp96OM9q
	WF3pWdbxhVVqK5Ldkj3LevdUaW7y/fvO6Ec84rMtznTScqbZbdR+iG/SIXbpWvuwEJy8K2+pW/hl8
	+4UvKUZ9gUuxRgGjQa5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLt9z-0004XX-6Z; Tue, 07 Apr 2020 18:41:19 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLt8E-0008Uz-JU
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 18:39:33 +0000
Received: by mail-io1-xd42.google.com with SMTP id u2so4448312iop.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 11:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=m/dkOYJLIlXBlQ2q0cF+y0fSOD9w7drnxFN+ZiKGczc=;
 b=HhVc+VPQjdnTtHJrbSqVAIpA37XENUVVPMKJoCvMOLILhmYAt9Cg6MCTkuxbLg/S5L
 zge2X3hZMuuonoY+RSpjILUJHxY839RCYOmgj++OV+mHW57ei7rmxVvFuOng8/o1ZxiH
 dT/FJsUEcpn6bQnq8+U8F3fWSibqWlkbyWAlF3/7iZQrElRKnpCueDJY40YuPf3y96Oz
 ju3q8H2IpouARmIulQM/2D5wNoa6/8gttCaUfPdlf44J/YUPJXtnGDaaH2zGHegjV6C0
 pLKYEO/NkHyYW4zXjAEWieU56zPYQVNjR+CwfHdoZLREjYT0qki0wGDHGsQTSlNxQ+RU
 f6Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=m/dkOYJLIlXBlQ2q0cF+y0fSOD9w7drnxFN+ZiKGczc=;
 b=aO97SpxMB4Z/7EcezUu5xl0QnnX79Bm1ds92gI9q3FDmvJ8oq1MXGuaESVTy1Ce1XV
 m82Iqza5aWmQFCMplAesyKF4BxwnLQrGF8TBRQyt4OCpdvDet7n9FV39ZxAWk58fTwpd
 ICeFfaACClMANT9NthUCGmy0KSLuSUU3nftYvrPotPxVS7TA2TrnM+d/go2os6dbkMg9
 95vCnnfeQDuK26FFBXg9GKwmvdCCB7E4XJ0J/pcm0XQxU7qBr/+MWYAh56qeMrwboiF0
 vS1rTV33cDB1oxiT7hQ4PjixiBwniuyB9F/V8RFIYZhV/PgHDvxtPG7ZG4e2Ro890jtJ
 OSAQ==
X-Gm-Message-State: AGi0PuatTaKZQmSIJoDwvTikuQ2G99XyyUXUROaQ7Zgsq32ZTmqgEZHe
 v0MEeslnLvS8soMEj/e7S0TR3X0JtJjDd/6q124=
X-Google-Smtp-Source: APiQypK8CelIKlG8WGkSg9wDsshxnRW9s7TBg+Pmy9wtl3BctesOgPVGqiV912kKL0NWCXULiA4yy8kOE5DKMqeSIhA=
X-Received: by 2002:a02:9988:: with SMTP id a8mr3254752jal.3.1586284767120;
 Tue, 07 Apr 2020 11:39:27 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1585751281.git.leonard.crestez@nxp.com>
 <c167baa48d6830cf32b9ac51968eeadd684ebf2d.1585751281.git.leonard.crestez@nxp.com>
 <CAHCN7xKpwex8MQbTFAYKjGPQbQ1uOe7EywASmcakg8F_2w-iuA@mail.gmail.com>
 <VI1PR04MB69417FFDFF452FC46889B686EEC30@VI1PR04MB6941.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB69417FFDFF452FC46889B686EEC30@VI1PR04MB6941.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 7 Apr 2020 13:39:09 -0500
Message-ID: <CAHCN7xJSpTCJM5gAP=BuUdKXE3+ig0skoTLnsgqTs1LGcTmD1w@mail.gmail.com>
Subject: Re: [PATCH v2 8/8] arm64: dts: imx8m: Add NOC nodes
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_113930_684403_B2314A4F 
X-CRM114-Status: GOOD (  25.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 4:10 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 2020-04-04 4:25 PM, Adam Ford wrote:
> > On Wed, Apr 1, 2020 at 9:35 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
> >>
> >> Add nodes for the main interconnect of the imx8m series chips.
> >>
> >> These nodes are bound to by devfreq and interconnect drivers.
> >>
> >> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >> ---
> >>   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 24 +++++++++++++++++++++++
> >>   arch/arm64/boot/dts/freescale/imx8mn.dtsi | 24 +++++++++++++++++++++++
> >>   arch/arm64/boot/dts/freescale/imx8mq.dtsi | 24 +++++++++++++++++++++++
> >>   3 files changed, 72 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> >> index 175c28ae10cf..41047b6709b6 100644
> >> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> >> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> >> @@ -6,10 +6,11 @@
> >>   #include <dt-bindings/clock/imx8mm-clock.h>
> >>   #include <dt-bindings/gpio/gpio.h>
> >>   #include <dt-bindings/input/input.h>
> >>   #include <dt-bindings/interrupt-controller/arm-gic.h>
> >>   #include <dt-bindings/thermal/thermal.h>
> >> +#include <dt-bindings/interconnect/imx8mm.h>
> >>
> >>   #include "imx8mm-pinfunc.h"
> >>
> >>   / {
> >>          interrupt-parent = <&gic>;
> >> @@ -860,10 +861,33 @@
> >>                                  status = "disabled";
> >>                          };
> >>
> >>                  };
> >>
> >> +               noc: interconnect@32700000 {
> >> +                       compatible = "fsl,imx8mm-noc", "fsl,imx8m-noc";
> >> +                       reg = <0x32700000 0x100000>;
> >> +                       clocks = <&clk IMX8MM_CLK_NOC>;
> >> +                       fsl,ddrc = <&ddrc>;
> >> +                       #interconnect-cells = <1>;
> >> +                       operating-points-v2 = <&noc_opp_table>;
> >> +
> >> +                       noc_opp_table: opp-table {
> >> +                               compatible = "operating-points-v2";
> >> +
> >> +                               opp-150M {
> >> +                                       opp-hz = /bits/ 64 <150000000>;
> >> +                               };
> >> +                               opp-375M {
> >> +                                       opp-hz = /bits/ 64 <375000000>;
> >> +                               };
> >> +                               opp-750M {
> >> +                                       opp-hz = /bits/ 64 <750000000>;
> >
> > Out of curiosity, the 8M Mini runs up to 750M, and  the 8M Nano and
> > 8MQ run up to 800.  The 8MQ had a patch to increase the assigned clock
> > speed for the NOC to 800MHz
> >
> > See: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fnext%2Flinux-next.git%2Fpatch%2Farch%2Farm64%2Fboot%2Fdts%2Ffreescale%3Fid%3D912b9dacf3f0ffad55e1a1b3c5af0e433ebdb5dd&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C32c3655718e4459028e008d7d89baa31%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637216035403876452&amp;sdata=z%2B5afsPGbCk4HkRp4nR6QepOrm70Fi5B5dohyvaquxo%3D&amp;reserved=0)
> >
> > The 8M Mini and 8M Nano appear to be setting the default speed to 0.
>
> I'm not sure what you mean about this, the noc clock is required for
> mostly everything.

As an example, the i.MX8MM looks like this:

assigned-clocks = <&clk IMX8MM_CLK_NOC>,
                              <&clk IMX8MM_CLK_AUDIO_AHB>,
                              <&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
                              <&clk IMX8MM_SYS_PLL3>,
                              <&clk IMX8MM_VIDEO_PLL1>,
                              <&clk IMX8MM_AUDIO_PLL1>,
                              <&clk IMX8MM_AUDIO_PLL2>;
assigned-clock-parents = <&clk IMX8MM_SYS_PLL3_OUT>,
                                         <&clk IMX8MM_SYS_PLL1_800M>;
assigned-clock-rates = <0>,
                                    <400000000>,
                                    <400000000>,
                                    <750000000>,
                                    <594000000>,
                                    <393216000>,
                                    <361267200>;

If I am reading this correctly, it appears to me that IMX8MM_CLK_NOC
is set to 0.

The i.MX8MN is similar, but the patch above shows IMX8MQ_CLK_NOC used
to be 0, but was updated for better performance.

>
> > Should the 8M Mini or 8M Nano do something similar to what the 8MQ
> > did, or does this series negate the need for such a patch?
>
> Instead of doing assigned-clocks noc frequency needs to be tweaked by
> adjusting OPPs in this list. The devfreq device for noc will overwrite
> other frequencies set for the noc.

My question was whether or not we should consider a patch to made the
default assigned-clock-rate for IMX8MM_CLK_NOC to be 750000000.  Based
on your response, it sounds like the answer might be that it's not
necessary.

thanks

adam
>
> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
