Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4A9D5AB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWB5drND1CHWBZ5loR5S/yv+pdRWhXKPP7zm+zQ7RYA=; b=Xl6WSzTO4gVrva
	ftfZASS2ofqDKlRuBNzglhmPIaP1Y4qGWXQ4a98jQ4p70h8IzOVMgS78unfEhW16IPD8VvnycIyd6
	jgxtGniPWk4JnFa8sf3fFMMrRWMpTBPpbEL6d4axckwwhFqUPu9bXJXOO8RfKtDTvy2No/m5cWZSn
	96AA7Kah9jRq+yowNP/NfrkQ30bAaUDGxSQMfcqBRUIOugCnRaAa+zncQTjboe0dKcl6KpV5mSlkF
	H4/GJX/gDDkERQTHM2PxvY+smgT1mU8/JCx3hisYxPIjjL1Gy4yOQnpuKtyBHSfUCXnADBKLl1z/B
	AaX8CJI2GuI/6xKLFTKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJsto-0003HK-CL; Mon, 14 Oct 2019 05:28:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJstd-0003G9-Of; Mon, 14 Oct 2019 05:27:55 +0000
X-UUID: 5dd06e796b6744d8bf6984fe464d91e1-20191013
X-UUID: 5dd06e796b6744d8bf6984fe464d91e1-20191013
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <argus.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2033257490; Sun, 13 Oct 2019 21:27:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 13 Oct 2019 22:17:43 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 13:17:42 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 14 Oct 2019 13:17:42 +0800
Message-ID: <1571030264.19600.2.camel@mtkswgap22>
Subject: Re: [PATCH 3/3] soc: mediatek: pwrap: add support for MT6359 PMIC
From: Argus Lin <argus.lin@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 14 Oct 2019 13:17:44 +0800
In-Reply-To: <5ec86287-2a90-ca07-c9a6-262420a68fd3@gmail.com>
References: <1570088901-23211-1-git-send-email-argus.lin@mediatek.com>
 <1570088901-23211-4-git-send-email-argus.lin@mediatek.com>
 <5ec86287-2a90-ca07-c9a6-262420a68fd3@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_222753_805397_9D6FE99B 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Fri, 2019-10-04 at 01:27 +0200, Matthias Brugger wrote:
> 
> On 03/10/2019 09:48, Argus Lin wrote:
> > MT6359 is a new power management IC and it is used for
> > MT6779 SoCs. To define mt6359_regs for pmic register mapping
> > and pmic_mt6359 for accessing register.
> > 
> > Signed-off-by: Argus Lin <argus.lin@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-pmic-wrap.c | 72 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 72 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
> > index fa8daf2..dd04318 100644
> > --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> > +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
> > @@ -111,6 +111,29 @@ enum dew_regs {
> >  	PWRAP_RG_SPI_CON13,
> >  	PWRAP_SPISLV_KEY,
> > 
> > +	/* MT6359 only regs */
> > +	PWRAP_DEW_CRC_SWRST,
> > +	PWRAP_DEW_RG_EN_RECORD,
> > +	PWRAP_DEW_RECORD_CMD0,
> > +	PWRAP_DEW_RECORD_CMD1,
> > +	PWRAP_DEW_RECORD_CMD2,
> > +	PWRAP_DEW_RECORD_CMD3,
> > +	PWRAP_DEW_RECORD_CMD4,
> > +	PWRAP_DEW_RECORD_CMD5,
> > +	PWRAP_DEW_RECORD_WDATA0,
> > +	PWRAP_DEW_RECORD_WDATA1,
> > +	PWRAP_DEW_RECORD_WDATA2,
> > +	PWRAP_DEW_RECORD_WDATA3,
> > +	PWRAP_DEW_RECORD_WDATA4,
> > +	PWRAP_DEW_RECORD_WDATA5,
> > +	PWRAP_DEW_RG_ADDR_TARGET,
> > +	PWRAP_DEW_RG_ADDR_MASK,
> > +	PWRAP_DEW_RG_WDATA_TARGET,
> > +	PWRAP_DEW_RG_WDATA_MASK,
> > +	PWRAP_DEW_RG_SPI_RECORD_CLR,
> > +	PWRAP_DEW_RG_CMD_ALERT_CLR,
> > +	PWRAP_DEW_SPISLV_KEY,
> 
> That looks like PWRAP_SPISLV_KEY from MT6358.
> 
> Regards,
> Matthias
> 
Yes, I think I can reuse the PWRAP_SPISLV_KEY of MT6358.

B.R.
Argus
> > +
> >  	/* MT6397 only regs */
> >  	PWRAP_DEW_EVENT_OUT_EN,
> >  	PWRAP_DEW_EVENT_SRC_EN,
> > @@ -197,6 +220,42 @@ enum dew_regs {
> >  	[PWRAP_SPISLV_KEY] =		0x044a,
> >  };
> > 
> > +static const u32 mt6359_regs[] = {
> > +	[PWRAP_DEW_RG_EN_RECORD] =	0x040a,
> > +	[PWRAP_DEW_DIO_EN] =		0x040c,
> > +	[PWRAP_DEW_READ_TEST] =		0x040e,
> > +	[PWRAP_DEW_WRITE_TEST] =	0x0410,
> > +	[PWRAP_DEW_CRC_SWRST] =		0x0412,
> > +	[PWRAP_DEW_CRC_EN] =		0x0414,
> > +	[PWRAP_DEW_CRC_VAL] =		0x0416,
> > +	[PWRAP_DEW_CIPHER_KEY_SEL] =	0x0418,
> > +	[PWRAP_DEW_CIPHER_IV_SEL] =	0x041a,
> > +	[PWRAP_DEW_CIPHER_EN] =		0x041c,
> > +	[PWRAP_DEW_CIPHER_RDY] =	0x041e,
> > +	[PWRAP_DEW_CIPHER_MODE] =	0x0420,
> > +	[PWRAP_DEW_CIPHER_SWRST] =	0x0422,
> > +	[PWRAP_DEW_RDDMY_NO] =		0x0424,
> > +	[PWRAP_DEW_RECORD_CMD0] =	0x0428,
> > +	[PWRAP_DEW_RECORD_CMD1] =	0x042a,
> > +	[PWRAP_DEW_RECORD_CMD2] =	0x042c,
> > +	[PWRAP_DEW_RECORD_CMD3] =	0x042e,
> > +	[PWRAP_DEW_RECORD_CMD4] =	0x0430,
> > +	[PWRAP_DEW_RECORD_CMD5] =	0x0432,
> > +	[PWRAP_DEW_RECORD_WDATA0] =	0x0434,
> > +	[PWRAP_DEW_RECORD_WDATA1] =	0x0436,
> > +	[PWRAP_DEW_RECORD_WDATA2] =	0x0438,
> > +	[PWRAP_DEW_RECORD_WDATA3] =	0x043a,
> > +	[PWRAP_DEW_RECORD_WDATA4] =	0x043c,
> > +	[PWRAP_DEW_RECORD_WDATA5] =	0x043e,
> > +	[PWRAP_DEW_RG_ADDR_TARGET] =	0x0440,
> > +	[PWRAP_DEW_RG_ADDR_MASK] =	0x0442,
> > +	[PWRAP_DEW_RG_WDATA_TARGET] =	0x0444,
> > +	[PWRAP_DEW_RG_WDATA_MASK] =	0x0446,
> > +	[PWRAP_DEW_RG_SPI_RECORD_CLR] =	0x0448,
> > +	[PWRAP_DEW_RG_CMD_ALERT_CLR] =	0x0448,
> > +	[PWRAP_DEW_SPISLV_KEY] =	0x044a,
> > +};
> > +
> >  static const u32 mt6397_regs[] = {
> >  	[PWRAP_DEW_BASE] =		0xbc00,
> >  	[PWRAP_DEW_EVENT_OUT_EN] =	0xbc00,
> > @@ -977,6 +1036,7 @@ enum pmic_type {
> >  	PMIC_MT6351,
> >  	PMIC_MT6357,
> >  	PMIC_MT6358,
> > +	PMIC_MT6359,
> >  	PMIC_MT6380,
> >  	PMIC_MT6397,
> >  };
> > @@ -1757,6 +1817,15 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
> >  	.pwrap_write = pwrap_write16,
> >  };
> > 
> > +static const struct pwrap_slv_type pmic_mt6359 = {
> > +	.dew_regs = mt6359_regs,
> > +	.type = PMIC_MT6359,
> > +	.regmap = &pwrap_regmap_config16,
> > +	.caps = PWRAP_SLV_CAP_DUALIO,
> > +	.pwrap_read = pwrap_read16,
> > +	.pwrap_write = pwrap_write16,
> > +};
> > +
> >  static const struct pwrap_slv_type pmic_mt6380 = {
> >  	.dew_regs = NULL,
> >  	.type = PMIC_MT6380,
> > @@ -1790,6 +1859,9 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
> >  		.compatible = "mediatek,mt6358",
> >  		.data = &pmic_mt6358,
> >  	}, {
> > +		.compatible = "mediatek,mt6359",
> > +		.data = &pmic_mt6359,
> > +	}, {
> >  		/* The MT6380 PMIC only implements a regulator, so we bind it
> >  		 * directly instead of using a MFD.
> >  		 */
> > --
> > 1.8.1.1.dirty
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
