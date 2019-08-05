Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F93181755
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voN3hNdkL0wQ7ZAHxHSv1K2RiZCfP0Iemx91zGLFVV4=; b=q1Dsc7M67OWrYG
	mjIQbp8CRIFKRxBWhbA3VJw26OxAPLmL93TpVEhgvPgG4c0kRlcxVMw62RKgkwL9x+LYyZ3Z4nJpl
	APgfGN5rZHJdaW4wYHxXjKYAn29IW0P6XByHNzHI/i4dbUEFaaDYDdjblO3afFCeErjQC2jcShPpP
	W5yZVSExUnS+RTgep+1a78lDj9ZKXya0GTyqA2nt5ZY/Dj1Ux+QJQpb+UC06Gb5PXFnDbmt0f0W5+
	09ZIWiyy42IONKM+W9dxQkGxH0YFCwVD2Ftiu087Va5shgOAl7f/ue1hq3qjDVyO8DDJwH7IBz7wX
	lH8ySyeTFTm2XNqGyK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaVe-0000vX-BT; Mon, 05 Aug 2019 10:46:34 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaUd-0000mS-WB
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1565001930; bh=W7YU1/q/aKB7zPV20b+aOpwNuBfRX4fYBwxtrKTypcs=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=rtsidnR5e6wz7P8Kq/lk2ZT/uWN8M1hVUELvi6u5HAxdgkTYzZJz32UfKicJ5MkFY
 iPpXJxY4MVkE9Yl9G9ZH7h1IN7fMV2/EBR+ZGxV7MOmwFDkc5DiQKlxCFp+Hqu/KkU
 KxZjjI6dvTxMrZlvQg5W9oI6NuwzEhxSzSGfQXgc=
Date: Mon, 5 Aug 2019 12:45:29 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH 2/3] rtc: sun6i: Add support for H6 RTC
Message-ID: <20190805104529.z3mex3m2tss7lzlr@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-rtc@vger.kernel.org, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20190412120730.473-1-megous@megous.com>
 <20190412120730.473-3-megous@megous.com>
 <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_034532_407938_880406E4 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 06:16:14PM +0800, Chen-Yu Tsai wrote:
> On Fri, Apr 12, 2019 at 8:07 PM megous via linux-sunxi
> <linux-sunxi@googlegroups.com> wrote:
> >
> > From: Ondrej Jirman <megous@megous.com>
> >
> > RTC on H6 is mostly the same as on H5 and H3. It has slight differences
> > mostly in features that are not yet supported by this driver.
> >
> > Some differences are already stated in the comments in existing code.
> > One other difference is that H6 has extra bit in LOSC_CTRL_REG, called
> > EXT_LOSC_EN to enable/disable external low speed crystal oscillator.
> >
> > It also has bit EXT_LOSC_STA in LOSC_AUTO_SWT_STA_REG, to check whether
> > external low speed oscillator is working correctly.
> >
> > This patch adds support for enabling LOSC when necessary:
> >
> > - during reparenting
> > - when probing the clock
> >
> > H6 also has capacbility to automatically reparent RTC clock from
> > external crystal oscillator, to internal RC oscillator, if external
> > oscillator fails. This is enabled by default. Disable it during
> > probe.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  drivers/rtc/rtc-sun6i.c | 40 ++++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 38 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> > index 11f56de52179..7375a530c565 100644
> > --- a/drivers/rtc/rtc-sun6i.c
> > +++ b/drivers/rtc/rtc-sun6i.c
> > @@ -41,9 +41,11 @@
> >  /* Control register */
> >  #define SUN6I_LOSC_CTRL                                0x0000
> >  #define SUN6I_LOSC_CTRL_KEY                    (0x16aa << 16)
> > +#define SUN6I_LOSC_CTRL_AUTO_SWT_BYPASS                BIT(15)
> 
> Manual says bit 14? Or is this different from LOSC_AUTO_SWT_EN?
> 
> The rest looks ok.

To give you more information. This is a new thing in H6 BSP, compared
to BSPs for previous SoCs (H5/H3).

 20 #define REG_CLK32K_AUTO_SWT_EN                  BIT(14)
 21 #define REG_CLK32K_AUTO_SWT_BYPASS              BIT(15)

Init sequence changed in H6 BSP to:

646         /*
647          * Step1: select RTC clock source
648          */
649         tmp_data = readl(chip->base + SUNXI_LOSC_CTRL);
650         tmp_data &= (~REG_CLK32K_AUTO_SWT_EN);
651
652         /* Disable auto switch function */
653         tmp_data |= REG_CLK32K_AUTO_SWT_BYPASS;
654         writel(tmp_data, chip->base + SUNXI_LOSC_CTRL);
655
656         tmp_data = readl(chip->base + SUNXI_LOSC_CTRL);
657         tmp_data |= (RTC_SOURCE_EXTERNAL | REG_LOSCCTRL_MAGIC);
658         writel(tmp_data, chip->base + SUNXI_LOSC_CTRL);
659
660         /* We need to set GSM after change clock source */
661         udelay(10);
662         tmp_data = readl(chip->base + SUNXI_LOSC_CTRL);
663         tmp_data |= (EXT_LOSC_GSM | REG_LOSCCTRL_MAGIC);
664         writel(tmp_data, chip->base + SUNXI_LOSC_CTRL);
665

For older BSPs, the init sequence looked like this:

482         /*
483          * Step1: select RTC clock source
484          */
485         tmp_data = sunxi_rtc_read(SUNXI_LOSC_CTRL_REG);
486         tmp_data &= (~REG_CLK32K_AUTO_SWT_EN);
487         tmp_data |= (RTC_SOURCE_EXTERNAL | REG_LOSCCTRL_MAGIC);
488         tmp_data |= (EXT_LOSC_GSM);
489         sunxi_rtc_write(tmp_data, SUNXI_LOSC_CTRL_REG);
490

EXT_LOSC_GSM has values 4 values from low to high, and I guess it configures
gain for the oscillator's amplifier in the feedback loop of the circuit.

So the new code, for some reason changed from single write to sequence
of individual writes/config steps:

1) disable auto-switch and enable auto-switch bypass
2) select RTC clock source (to LOSC)
  (wait)
3) configure gain on the LOSC

regards,
	o.

> ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
