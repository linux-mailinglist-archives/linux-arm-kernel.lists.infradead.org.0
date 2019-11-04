Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF622EDA80
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:23:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwPeySm5l3PvHCxaLwgmllxWH4cOOWf4weaYSWX2DWg=; b=hKBtm5AjwqCVZY
	ZkvIK5UP6q5iT/gM69dfyhXVinKEev7YK2Rc/KH3fVqqP3Sm3QrkA4u3A1NGOA/8c6M/rY5OVZECj
	ah3sjre6wPR/6PthmuyYYpYh1/xnbLjPnjWeRWXIz57Tc7xIRISuJsV3RGJ/Y07Hl9WUnPVOS9ryG
	Eh5v6wbx0Vf3tkI/JxI3JVNBpBBnYRiCAzjcLl8Wccd+898COydm/7i17fltnd31iWKleINyV6Ejm
	npPnrrELC9TKNPTCxWtzuY0byqSj5YDJKTtHzNpVeM1PdIvS9fhItqbjdiW+CmrCR9mo3mlNCr4ru
	O00dqWJMiVKdakRCl14g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXdx-000056-4S; Mon, 04 Nov 2019 08:23:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXdm-0008V3-Do; Mon, 04 Nov 2019 08:23:12 +0000
X-UUID: 35f1e0ff8da24cc48e7b380506308a56-20191104
X-UUID: 35f1e0ff8da24cc48e7b380506308a56-20191104
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <argus.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1992047975; Mon, 04 Nov 2019 00:23:07 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 00:23:04 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 16:23:02 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 16:23:02 +0800
Message-ID: <1572855784.4243.4.camel@mtkswgap22>
Subject: Re: [PATCH 3/3] soc: mediatek: pwrap: add support for MT6359 PMIC
From: Argus Lin <argus.lin@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 4 Nov 2019 16:23:04 +0800
In-Reply-To: <1571030264.19600.2.camel@mtkswgap22>
References: <1570088901-23211-1-git-send-email-argus.lin@mediatek.com>
 <1570088901-23211-4-git-send-email-argus.lin@mediatek.com>
 <5ec86287-2a90-ca07-c9a6-262420a68fd3@gmail.com>
 <1571030264.19600.2.camel@mtkswgap22>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_002310_470643_26397280 
X-CRM114-Status: GOOD (  21.07  )
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

On Mon, 2019-10-14 at 13:17 +0800, Argus Lin wrote:
> On Fri, 2019-10-04 at 01:27 +0200, Matthias Brugger wrote:
> > 
> > On 03/10/2019 09:48, Argus Lin wrote:
> > > MT6359 is a new power management IC and it is used for
> > > MT6779 SoCs. To define mt6359_regs for pmic register mapping
> > > and pmic_mt6359 for accessing register.
> > > 
> > > Signed-off-by: Argus Lin <argus.lin@mediatek.com>
> > > ---
> > >  drivers/soc/mediatek/mtk-pmic-wrap.c | 72 ++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 72 insertions(+)
> > > 
> > > diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
> > > index fa8daf2..dd04318 100644
> > > --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> > > +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
> > > @@ -111,6 +111,29 @@ enum dew_regs {
> > >  	PWRAP_RG_SPI_CON13,
> > >  	PWRAP_SPISLV_KEY,
> > > 
> > > +	/* MT6359 only regs */
> > > +	PWRAP_DEW_CRC_SWRST,
> > > +	PWRAP_DEW_RG_EN_RECORD,
> > > +	PWRAP_DEW_RECORD_CMD0,
> > > +	PWRAP_DEW_RECORD_CMD1,
> > > +	PWRAP_DEW_RECORD_CMD2,
> > > +	PWRAP_DEW_RECORD_CMD3,
> > > +	PWRAP_DEW_RECORD_CMD4,
> > > +	PWRAP_DEW_RECORD_CMD5,
> > > +	PWRAP_DEW_RECORD_WDATA0,
> > > +	PWRAP_DEW_RECORD_WDATA1,
> > > +	PWRAP_DEW_RECORD_WDATA2,
> > > +	PWRAP_DEW_RECORD_WDATA3,
> > > +	PWRAP_DEW_RECORD_WDATA4,
> > > +	PWRAP_DEW_RECORD_WDATA5,
> > > +	PWRAP_DEW_RG_ADDR_TARGET,
> > > +	PWRAP_DEW_RG_ADDR_MASK,
> > > +	PWRAP_DEW_RG_WDATA_TARGET,
> > > +	PWRAP_DEW_RG_WDATA_MASK,
> > > +	PWRAP_DEW_RG_SPI_RECORD_CLR,
> > > +	PWRAP_DEW_RG_CMD_ALERT_CLR,
> > > +	PWRAP_DEW_SPISLV_KEY,
> > 
> > That looks like PWRAP_SPISLV_KEY from MT6358.
> > 
> > Regards,
> > Matthias
> > 
> Yes, I think I can reuse the PWRAP_SPISLV_KEY of MT6358.
> 
> B.R.
> Argus
> > > +
> > >  	/* MT6397 only regs */
> > >  	PWRAP_DEW_EVENT_OUT_EN,
> > >  	PWRAP_DEW_EVENT_SRC_EN,
> > > @@ -197,6 +220,42 @@ enum dew_regs {
> > >  	[PWRAP_SPISLV_KEY] =		0x044a,
> > >  };
> > > 
> > > +static const u32 mt6359_regs[] = {
> > > +	[PWRAP_DEW_RG_EN_RECORD] =	0x040a,
> > > +	[PWRAP_DEW_DIO_EN] =		0x040c,
> > > +	[PWRAP_DEW_READ_TEST] =		0x040e,
> > > +	[PWRAP_DEW_WRITE_TEST] =	0x0410,
> > > +	[PWRAP_DEW_CRC_SWRST] =		0x0412,
> > > +	[PWRAP_DEW_CRC_EN] =		0x0414,
> > > +	[PWRAP_DEW_CRC_VAL] =		0x0416,
> > > +	[PWRAP_DEW_CIPHER_KEY_SEL] =	0x0418,
> > > +	[PWRAP_DEW_CIPHER_IV_SEL] =	0x041a,
> > > +	[PWRAP_DEW_CIPHER_EN] =		0x041c,
> > > +	[PWRAP_DEW_CIPHER_RDY] =	0x041e,
> > > +	[PWRAP_DEW_CIPHER_MODE] =	0x0420,
> > > +	[PWRAP_DEW_CIPHER_SWRST] =	0x0422,
> > > +	[PWRAP_DEW_RDDMY_NO] =		0x0424,
> > > +	[PWRAP_DEW_RECORD_CMD0] =	0x0428,
> > > +	[PWRAP_DEW_RECORD_CMD1] =	0x042a,
> > > +	[PWRAP_DEW_RECORD_CMD2] =	0x042c,
> > > +	[PWRAP_DEW_RECORD_CMD3] =	0x042e,
> > > +	[PWRAP_DEW_RECORD_CMD4] =	0x0430,
> > > +	[PWRAP_DEW_RECORD_CMD5] =	0x0432,
> > > +	[PWRAP_DEW_RECORD_WDATA0] =	0x0434,
> > > +	[PWRAP_DEW_RECORD_WDATA1] =	0x0436,
> > > +	[PWRAP_DEW_RECORD_WDATA2] =	0x0438,
> > > +	[PWRAP_DEW_RECORD_WDATA3] =	0x043a,
> > > +	[PWRAP_DEW_RECORD_WDATA4] =	0x043c,
> > > +	[PWRAP_DEW_RECORD_WDATA5] =	0x043e,
> > > +	[PWRAP_DEW_RG_ADDR_TARGET] =	0x0440,
> > > +	[PWRAP_DEW_RG_ADDR_MASK] =	0x0442,
> > > +	[PWRAP_DEW_RG_WDATA_TARGET] =	0x0444,
> > > +	[PWRAP_DEW_RG_WDATA_MASK] =	0x0446,
> > > +	[PWRAP_DEW_RG_SPI_RECORD_CLR] =	0x0448,
> > > +	[PWRAP_DEW_RG_CMD_ALERT_CLR] =	0x0448,
> > > +	[PWRAP_DEW_SPISLV_KEY] =	0x044a,
> > > +};
> > > +
> > >  static const u32 mt6397_regs[] = {
> > >  	[PWRAP_DEW_BASE] =		0xbc00,
> > >  	[PWRAP_DEW_EVENT_OUT_EN] =	0xbc00,
> > > @@ -977,6 +1036,7 @@ enum pmic_type {
> > >  	PMIC_MT6351,
> > >  	PMIC_MT6357,
> > >  	PMIC_MT6358,
> > > +	PMIC_MT6359,
> > >  	PMIC_MT6380,
> > >  	PMIC_MT6397,
> > >  };
> > > @@ -1757,6 +1817,15 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
> > >  	.pwrap_write = pwrap_write16,
> > >  };
> > > 
> > > +static const struct pwrap_slv_type pmic_mt6359 = {
> > > +	.dew_regs = mt6359_regs,
> > > +	.type = PMIC_MT6359,
> > > +	.regmap = &pwrap_regmap_config16,
> > > +	.caps = PWRAP_SLV_CAP_DUALIO,
> > > +	.pwrap_read = pwrap_read16,
> > > +	.pwrap_write = pwrap_write16,
> > > +};
> > > +
> > >  static const struct pwrap_slv_type pmic_mt6380 = {
> > >  	.dew_regs = NULL,
> > >  	.type = PMIC_MT6380,
> > > @@ -1790,6 +1859,9 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
> > >  		.compatible = "mediatek,mt6358",
> > >  		.data = &pmic_mt6358,
> > >  	}, {
> > > +		.compatible = "mediatek,mt6359",
> > > +		.data = &pmic_mt6359,
> > > +	}, {
> > >  		/* The MT6380 PMIC only implements a regulator, so we bind it
> > >  		 * directly instead of using a MFD.
> > >  		 */
> > > --
> > > 1.8.1.1.dirty
> > > 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
