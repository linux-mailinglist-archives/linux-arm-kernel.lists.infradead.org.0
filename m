Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2D6EDA7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:23:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cuTpEqS//t6O2VYpb9+99cRNijX4ABtXPkgS178ELo=; b=FTBF+RDhlzCBjg
	m7hQ3PixpKDM9xaaAsPaURAzPqIO6EzBX/qFXO+vvACLsKXk4Z3EuKYVb+/rnOXUON64KunySf+Y6
	uoOvLe8BXjyYpa/ox3uYqIHQ8hsK3YMrhnobFTWLbjS5v2vGO5drOZhgdrT63oxkhzouCtt5vaGLz
	NohbDwTXXR+cYvKAcoRgMgYsYlchN7bufp5Bg388oXmccPgHowqkjHSB1yMxFFXhPtaFr3PTDZJG5
	bnsXYAHbh+sGMPCZm65GXXsRGNCgDaRIaF2n+ySASHSdsLuvaLSp/46LZSEZQ+E8o1fqlPgiA1i3l
	Ot7Mtuxl8mYrFsJIy7vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXda-0008Fy-7t; Mon, 04 Nov 2019 08:22:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXdR-0008EB-4k; Mon, 04 Nov 2019 08:22:50 +0000
X-UUID: 9ddb8d28067b42ca9c820577805605b5-20191104
X-UUID: 9ddb8d28067b42ca9c820577805605b5-20191104
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <argus.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 422884133; Mon, 04 Nov 2019 00:22:40 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 00:22:37 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 16:22:35 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 16:22:35 +0800
Message-ID: <1572855757.4243.3.camel@mtkswgap22>
Subject: Re: [PATCH 2/3] soc: mediatek: pwrap: add pwrap driver for MT6779 SoCs
From: Argus Lin <argus.lin@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 4 Nov 2019 16:22:37 +0800
In-Reply-To: <1571033065.19600.23.camel@mtkswgap22>
References: <1570088901-23211-1-git-send-email-argus.lin@mediatek.com>
 <1570088901-23211-3-git-send-email-argus.lin@mediatek.com>
 <b2f881e2-959e-eccf-e62e-54c510608aaa@gmail.com>
 <1571033065.19600.23.camel@mtkswgap22>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_002249_194064_4D784024 
X-CRM114-Status: GOOD (  34.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, Chenglin Xu <chenglin.xu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sean Wang <sean.wang@mediatek.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 henryc.chen@mediatek.com, flora.fu@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, Christophe
 Jaillet <christophe.jaillet@wanadoo.fr>, linux-mediatek@lists.infradead.org,
 Chen Zhong <chen.zhong@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dear matthias:
sorry to disturb you.

Based on your opinion, I had updated my comment.

If you have any concern, please let me know.
thanks.

B.R.
Argus

On Mon, 2019-10-14 at 14:04 +0800, Argus Lin wrote:
> On Fri, 2019-10-04 at 01:26 +0200, Matthias Brugger wrote:
> > 
> > On 03/10/2019 09:48, Argus Lin wrote:
> > > MT6779 is a highly integrated SoCs, it uses MT6359 for power
> > > management. This patch adds pwrap driver to access MT6359.
> > > Pwrap of MT6779 support dynamic priority meichanism, sequence
> > 
> > mechanism
> I will fix it.
> > 
> > > monitor and starvation mechanism to make transaction more
> > > reliable. WDT setting only need to init when it is zero,
> > > otherwise keep current value. When setting interrupt enable
> > 
> > that's mt6779 specific?
> It is common code. The PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN default value
> is zero. Different project can have different value, I think we can
> check if it has been initialized.
> 
> Two methods execute pwrap_init at different product line.
> 1. at bootloader(Smart phone/Tablet/Auto)
> PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN has been initialized at bootloader,
> we don't need to initialize it at kernel again.
> 2. at kernel(Some specific Tablet)
> PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN is zero, just initialize them at
> kernel.
> 
> > 
> > > flag at pwrap_probe, read current setting then do logical OR
> > > operation with wrp->master->int_en_all.
> > 
> > same here, only specific to mt6779?
> same reason like why check WDT_UNIT == 0. What we do in the past is to
> overwrite pwrap_int_en use the same value at bootloader.
> If pwrap_int_en has been initialized, it is better to read current
> value, OR new value at kernel then write new one.
> > 
> > > 
> > > Signed-off-by: Argus Lin <argus.lin@mediatek.com>
> > > ---
> > >  drivers/soc/mediatek/mtk-pmic-wrap.c | 85 ++++++++++++++++++++++++++++++++----
> > >  1 file changed, 77 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
> > > index c725315..fa8daf2 100644
> > > --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> > > +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
> > > @@ -497,6 +497,45 @@ enum pwrap_regs {
> > >  	[PWRAP_DCM_DBC_PRD] =		0x1E0,
> > >  };
> > > 
> > > +static int mt6779_regs[] = {
> > > +	[PWRAP_MUX_SEL] =		0x0,
> > > +	[PWRAP_WRAP_EN] =		0x4,
> > > +	[PWRAP_DIO_EN] =		0x8,
> > > +	[PWRAP_RDDMY] =			0x20,
> > > +	[PWRAP_CSHEXT_WRITE] =		0x24,
> > > +	[PWRAP_CSHEXT_READ] =		0x28,
> > > +	[PWRAP_CSLEXT_WRITE] =		0x2C,
> > > +	[PWRAP_CSLEXT_READ] =		0x30,
> > > +	[PWRAP_EXT_CK_WRITE] =		0x34,
> > > +	[PWRAP_STAUPD_CTRL] =		0x3C,
> > > +	[PWRAP_STAUPD_GRPEN] =		0x40,
> > > +	[PWRAP_EINT_STA0_ADR] =		0x44,
> > > +	[PWRAP_HARB_HPRIO] =		0x68,
> > > +	[PWRAP_HIPRIO_ARB_EN] =		0x6C,
> > > +	[PWRAP_MAN_EN] =		0x7C,
> > > +	[PWRAP_MAN_CMD] =		0x80,
> > > +	[PWRAP_WACS0_EN] =		0x8C,
> > > +	[PWRAP_WACS1_EN] =		0x94,
> > > +	[PWRAP_WACS2_EN] =		0x9C,
> > > +	[PWRAP_INIT_DONE0] =		0x90,
> > > +	[PWRAP_INIT_DONE1] =		0x98,
> > > +	[PWRAP_INIT_DONE2] =		0xA0,
> > > +	[PWRAP_INT_EN] =		0xBC,
> > > +	[PWRAP_INT_FLG_RAW] =		0xC0,
> > > +	[PWRAP_INT_FLG] =		0xC4,
> > > +	[PWRAP_INT_CLR] =		0xC8,
> > > +	[PWRAP_INT1_EN] =		0xCC,
> > > +	[PWRAP_INT1_FLG] =		0xD4,
> > > +	[PWRAP_INT1_CLR] =		0xD8,
> > > +	[PWRAP_TIMER_EN] =		0xF0,
> > > +	[PWRAP_WDT_UNIT] =		0xF8,
> > > +	[PWRAP_WDT_SRC_EN] =		0xFC,
> > > +	[PWRAP_WDT_SRC_EN_1] =		0x100,
> > > +	[PWRAP_WACS2_CMD] =		0xC20,
> > > +	[PWRAP_WACS2_RDATA] =		0xC24,
> > > +	[PWRAP_WACS2_VLDCLR] =		0xC28,
> > > +};
> > > +
> > >  static int mt6797_regs[] = {
> > >  	[PWRAP_MUX_SEL] =		0x0,
> > >  	[PWRAP_WRAP_EN] =		0x4,
> > > @@ -945,6 +984,7 @@ enum pmic_type {
> > >  enum pwrap_type {
> > >  	PWRAP_MT2701,
> > >  	PWRAP_MT6765,
> > > +	PWRAP_MT6779,
> > >  	PWRAP_MT6797,
> > >  	PWRAP_MT7622,
> > >  	PWRAP_MT8135,
> > > @@ -1377,6 +1417,7 @@ static int pwrap_init_cipher(struct pmic_wrapper *wrp)
> > >  		break;
> > >  	case PWRAP_MT2701:
> > >  	case PWRAP_MT6765:
> > > +	case PWRAP_MT6779:
> > >  	case PWRAP_MT6797:
> > >  	case PWRAP_MT8173:
> > >  	case PWRAP_MT8516:
> > > @@ -1468,8 +1509,10 @@ static int pwrap_init_security(struct pmic_wrapper *wrp)
> > >  	pwrap_writel(wrp, 0x0, PWRAP_SIG_MODE);
> > >  	pwrap_writel(wrp, wrp->slave->dew_regs[PWRAP_DEW_CRC_VAL],
> > >  		     PWRAP_SIG_ADR);
> > > -	pwrap_writel(wrp,
> > > -		     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
> > > +	if (pwrap_readl(wrp, PWRAP_HIPRIO_ARB_EN) == 0) {
> > 
> > Did you make sure that this holds for all SoCs that are supported by the driver?
> > If so, why do we need this in mt6779 and didn't need that in the others?
> > Even more, mt6779 does not have the security capbaility, so why do you change
> > this code?
> revert it.
> > > +		pwrap_writel(wrp,
> > > +			     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
> > > +	}
> > 
> > I just realize that we write PWRAP_HIPRIO_ARB_EN twice if the slave supports
> > security. Do we really need that?
> > 
> revert it.
> pwrap_init_security and pwrap_init do not called at MT6779. I will
> revert this change.
> > > 
> > >  	return 0;
> > >  }
> > > @@ -1581,7 +1624,10 @@ static int pwrap_init(struct pmic_wrapper *wrp)
> > > 
> > >  	pwrap_writel(wrp, 1, PWRAP_WRAP_EN);
> > > 
> > > -	pwrap_writel(wrp, wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
> > > +	if (pwrap_readl(wrp, PWRAP_HIPRIO_ARB_EN) == 0) {
> > > +		pwrap_writel(wrp,
> > > +			     wrp->master->arb_en_all, PWRAP_HIPRIO_ARB_EN);
> > > +	}
> > > 
> > >  	pwrap_writel(wrp, 1, PWRAP_WACS2_EN);
> > > 
> > > @@ -1783,6 +1829,19 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
> > >  	.init_soc_specific = NULL,
> > >  };
> > > 
> > > +static const struct pmic_wrapper_type pwrap_mt6779 = {
> > > +	.regs = mt6779_regs,
> > > +	.type = PWRAP_MT6779,
> > > +	.arb_en_all = 0,
> > > +	.int_en_all = 0,
> > > +	.int1_en_all = 0,
> > > +	.spi_w = PWRAP_MAN_CMD_SPI_WRITE,
> > > +	.wdt_src = 0,
> > > +	.caps = 0,
> > > +	.init_reg_clock = pwrap_common_init_reg_clock,
> > > +	.init_soc_specific = NULL,
> > > +};
> > > +
> > >  static const struct pmic_wrapper_type pwrap_mt6797 = {
> > >  	.regs = mt6797_regs,
> > >  	.type = PWRAP_MT6797,
> > > @@ -1868,6 +1927,9 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
> > >  		.compatible = "mediatek,mt6765-pwrap",
> > >  		.data = &pwrap_mt6765,
> > >  	}, {
> > > +		.compatible = "mediatek,mt6779-pwrap",
> > > +		.data = &pwrap_mt6779,
> > > +	}, {
> > >  		.compatible = "mediatek,mt6797-pwrap",
> > >  		.data = &pwrap_mt6797,
> > >  	}, {
> > > @@ -1898,6 +1960,7 @@ static int pwrap_probe(struct platform_device *pdev)
> > >  	struct device_node *np = pdev->dev.of_node;
> > >  	const struct of_device_id *of_slave_id = NULL;
> > >  	struct resource *res;
> > > +	u32 int_en;
> > > 
> > >  	if (np->child)
> > >  		of_slave_id = of_match_node(of_slave_match_tbl, np->child);
> > > @@ -1995,23 +2058,29 @@ static int pwrap_probe(struct platform_device *pdev)
> > >  	}
> > > 
> > >  	/* Initialize watchdog, may not be done by the bootloader */
> > > -	pwrap_writel(wrp, 0xf, PWRAP_WDT_UNIT);
> > > +	if (pwrap_readl(wrp, PWRAP_WDT_UNIT) == 0)
> > 
> > Same here, why do we need it in mt6779 and did you test if it does not break any
> > older SoC?
> It is common code. The PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN default value
> is zero. Different project can have different value, I think we can
> check if it has been initialized.
> 
> Two methods execute pwrap_init at different product line.
> 1. at bootloader(Smart phone/Tablet/Auto)
> PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN has been initialized at bootloader,
> we don't need to initialize it at kernel again.
> 2. at kernel(Some specific Tablet)
> PWRAP_WDT_UNIT and PWRAP_WDT_SRC_EN is zero, just initialize them at
> kernel.
> > 
> > > +		pwrap_writel(wrp, 0xf, PWRAP_WDT_UNIT);
> > >  	/*
> > >  	 * Since STAUPD was not used on mt8173 platform,
> > >  	 * so STAUPD of WDT_SRC which should be turned off
> > >  	 */
> > > -	pwrap_writel(wrp, wrp->master->wdt_src, PWRAP_WDT_SRC_EN);
> > > +	if (pwrap_readl(wrp, PWRAP_WDT_SRC_EN) == 0)
> > > +		pwrap_writel(wrp, wrp->master->wdt_src, PWRAP_WDT_SRC_EN);
> > >  	if (HAS_CAP(wrp->master->caps, PWRAP_CAP_WDT_SRC1))
> > >  		pwrap_writel(wrp, wrp->master->wdt_src, PWRAP_WDT_SRC_EN_1);
> > > 
> > >  	pwrap_writel(wrp, 0x1, PWRAP_TIMER_EN);
> > > -	pwrap_writel(wrp, wrp->master->int_en_all, PWRAP_INT_EN);
> > > +	int_en = pwrap_readl(wrp, PWRAP_INT_EN);
> > > +	pwrap_writel(wrp, (int_en) | (wrp->master->int_en_all), PWRAP_INT_EN);
> > 
> > Looks ok to me, is it a bug fix, or only needed for mt6779?
> It is common code.
> > 
> > >  	/*
> > >  	 * We add INT1 interrupt to handle starvation and request exception
> > >  	 * If we support it, we should enable it here.
> > >  	 */
> > > -	if (HAS_CAP(wrp->master->caps, PWRAP_CAP_INT1_EN))
> > > -		pwrap_writel(wrp, wrp->master->int1_en_all, PWRAP_INT1_EN);
> > > +	if (HAS_CAP(wrp->master->caps, PWRAP_CAP_INT1_EN)) {
> > > +		int_en = pwrap_readl(wrp, PWRAP_INT1_EN);
> > > +		pwrap_writel(wrp, (int_en) | wrp->master->int1_en_all,
> > > +			     PWRAP_INT1_EN);
> > > +	}
> > > 
> > >  	irq = platform_get_irq(pdev, 0);
> > >  	ret = devm_request_irq(wrp->dev, irq, pwrap_interrupt,
> > > --
> > > 1.8.1.1.dirty
> > > 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
