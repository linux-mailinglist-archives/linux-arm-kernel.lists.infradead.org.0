Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E2C160230
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 07:16:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvLt+Ib2XkbLl0GhQgWbhh6syLhbF/rJhh8iKIk+t6E=; b=QvXRui1S78CSoo
	3jW/0kVJt4iPaonou9UHI4PgfMEVNrIIeo1R/BsHsv6CYakw1+ybMOjqeJnz0RIUXI5zXqIHNC2Ni
	8t5swnZBjl5JVvlLWZTKC0sX87Ic3LL3J3oQPFj5cqwTV1LG484YIaMpdHdpBKm05dvhx2hjZVixP
	h+pVsy/N0Z5RwfMRJpqCBXuLXzpv/S2dDBZPCiQLq0xx8wg7gaGWGUWcMeNZwDqOVcjiNq9F6iUYM
	Vba0ICaM2sedlcjI03+BfNHRnqwaJ0Oie0+FSqZDgmk6Aacm0w80Mog3rN7cgCDA+GcbxmmAvBMmS
	UpglRX5kwz4NQQihLDrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3DDl-0006ZM-2L; Sun, 16 Feb 2020 06:16:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3DCk-0004aL-Lu; Sun, 16 Feb 2020 06:15:01 +0000
X-UUID: 68855cef0459461e8c6df4e485b1d8a4-20200215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=JPuHBETG3svatvxI3nD/Ybp2rxLQs4/ldc9/9myf3bI=; 
 b=vEy2KvCUGSlrCW0BQr28YlCmMiTbpBeCIi/FMcVOmzNNWkQj2DZKkJg/IjRoRCyKWK7vo9oA+eIc2x56/Sc/9GFjCzYGPR0TnRc4aEKxU3HI+wiQKd6Fjjzad4nZHimh5+bEEvxXtF3Zpn3i+Z6e058aHq3gxz41Iyir2GqcvgA=;
X-UUID: 68855cef0459461e8c6df4e485b1d8a4-20200215
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <argus.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 888914135; Sat, 15 Feb 2020 22:14:49 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 15 Feb 2020 22:15:34 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 14:14:01 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 16 Feb 2020 14:14:37 +0800
From: Argus Lin <argus.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 3/3] soc: mediatek: pwrap: add support for MT6359 PMIC
Date: Sun, 16 Feb 2020 14:14:39 +0800
Message-ID: <1581833679-4319-4-git-send-email-argus.lin@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1581833679-4319-1-git-send-email-argus.lin@mediatek.com>
References: <1581833679-4319-1-git-send-email-argus.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_221458_724819_92D3FA63 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, argus.lin@mediatek.com,
 wsd_upstream@mediatek.com, Chenglin Xu <chenglin.xu@mediatek.com>, Sean
 Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 henryc.chen@mediatek.com, flora.fu@mediatek.com,
 Christophe Jaillet <christophe.jaillet@wanadoo.fr>,
 linux-mediatek@lists.infradead.org, Chen Zhong <chen.zhong@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MT6359 is a new power management IC and it is used for
MT6779 SoCs. To define mt6359_regs for pmic register mapping
and pmic_mt6359 for accessing register.

Signed-off-by: Argus Lin <argus.lin@mediatek.com>
---
 drivers/soc/mediatek/mtk-pmic-wrap.c | 71 ++++++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
index 1f8189a..5d34e8b 100644
--- a/drivers/soc/mediatek/mtk-pmic-wrap.c
+++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
@@ -111,6 +111,28 @@ enum dew_regs {
 	PWRAP_RG_SPI_CON13,
 	PWRAP_SPISLV_KEY,

+	/* MT6359 only regs */
+	PWRAP_DEW_CRC_SWRST,
+	PWRAP_DEW_RG_EN_RECORD,
+	PWRAP_DEW_RECORD_CMD0,
+	PWRAP_DEW_RECORD_CMD1,
+	PWRAP_DEW_RECORD_CMD2,
+	PWRAP_DEW_RECORD_CMD3,
+	PWRAP_DEW_RECORD_CMD4,
+	PWRAP_DEW_RECORD_CMD5,
+	PWRAP_DEW_RECORD_WDATA0,
+	PWRAP_DEW_RECORD_WDATA1,
+	PWRAP_DEW_RECORD_WDATA2,
+	PWRAP_DEW_RECORD_WDATA3,
+	PWRAP_DEW_RECORD_WDATA4,
+	PWRAP_DEW_RECORD_WDATA5,
+	PWRAP_DEW_RG_ADDR_TARGET,
+	PWRAP_DEW_RG_ADDR_MASK,
+	PWRAP_DEW_RG_WDATA_TARGET,
+	PWRAP_DEW_RG_WDATA_MASK,
+	PWRAP_DEW_RG_SPI_RECORD_CLR,
+	PWRAP_DEW_RG_CMD_ALERT_CLR,
+
 	/* MT6397 only regs */
 	PWRAP_DEW_EVENT_OUT_EN,
 	PWRAP_DEW_EVENT_SRC_EN,
@@ -197,6 +219,42 @@ enum dew_regs {
 	[PWRAP_SPISLV_KEY] =		0x044a,
 };

+static const u32 mt6359_regs[] = {
+	[PWRAP_DEW_RG_EN_RECORD] =	0x040a,
+	[PWRAP_DEW_DIO_EN] =		0x040c,
+	[PWRAP_DEW_READ_TEST] =		0x040e,
+	[PWRAP_DEW_WRITE_TEST] =	0x0410,
+	[PWRAP_DEW_CRC_SWRST] =		0x0412,
+	[PWRAP_DEW_CRC_EN] =		0x0414,
+	[PWRAP_DEW_CRC_VAL] =		0x0416,
+	[PWRAP_DEW_CIPHER_KEY_SEL] =	0x0418,
+	[PWRAP_DEW_CIPHER_IV_SEL] =	0x041a,
+	[PWRAP_DEW_CIPHER_EN] =		0x041c,
+	[PWRAP_DEW_CIPHER_RDY] =	0x041e,
+	[PWRAP_DEW_CIPHER_MODE] =	0x0420,
+	[PWRAP_DEW_CIPHER_SWRST] =	0x0422,
+	[PWRAP_DEW_RDDMY_NO] =		0x0424,
+	[PWRAP_DEW_RECORD_CMD0] =	0x0428,
+	[PWRAP_DEW_RECORD_CMD1] =	0x042a,
+	[PWRAP_DEW_RECORD_CMD2] =	0x042c,
+	[PWRAP_DEW_RECORD_CMD3] =	0x042e,
+	[PWRAP_DEW_RECORD_CMD4] =	0x0430,
+	[PWRAP_DEW_RECORD_CMD5] =	0x0432,
+	[PWRAP_DEW_RECORD_WDATA0] =	0x0434,
+	[PWRAP_DEW_RECORD_WDATA1] =	0x0436,
+	[PWRAP_DEW_RECORD_WDATA2] =	0x0438,
+	[PWRAP_DEW_RECORD_WDATA3] =	0x043a,
+	[PWRAP_DEW_RECORD_WDATA4] =	0x043c,
+	[PWRAP_DEW_RECORD_WDATA5] =	0x043e,
+	[PWRAP_DEW_RG_ADDR_TARGET] =	0x0440,
+	[PWRAP_DEW_RG_ADDR_MASK] =	0x0442,
+	[PWRAP_DEW_RG_WDATA_TARGET] =	0x0444,
+	[PWRAP_DEW_RG_WDATA_MASK] =	0x0446,
+	[PWRAP_DEW_RG_SPI_RECORD_CLR] =	0x0448,
+	[PWRAP_DEW_RG_CMD_ALERT_CLR] =	0x0448,
+	[PWRAP_SPISLV_KEY] =		0x044a,
+};
+
 static const u32 mt6397_regs[] = {
 	[PWRAP_DEW_BASE] =		0xbc00,
 	[PWRAP_DEW_EVENT_OUT_EN] =	0xbc00,
@@ -977,6 +1035,7 @@ enum pmic_type {
 	PMIC_MT6351,
 	PMIC_MT6357,
 	PMIC_MT6358,
+	PMIC_MT6359,
 	PMIC_MT6380,
 	PMIC_MT6397,
 };
@@ -1752,6 +1811,15 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
 	.pwrap_write = pwrap_write16,
 };

+static const struct pwrap_slv_type pmic_mt6359 = {
+	.dew_regs = mt6359_regs,
+	.type = PMIC_MT6359,
+	.regmap = &pwrap_regmap_config16,
+	.caps = PWRAP_SLV_CAP_DUALIO,
+	.pwrap_read = pwrap_read16,
+	.pwrap_write = pwrap_write16,
+};
+
 static const struct pwrap_slv_type pmic_mt6380 = {
 	.dew_regs = NULL,
 	.type = PMIC_MT6380,
@@ -1785,6 +1853,9 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
 		.compatible = "mediatek,mt6358",
 		.data = &pmic_mt6358,
 	}, {
+		.compatible = "mediatek,mt6359",
+		.data = &pmic_mt6359,
+	}, {
 		/* The MT6380 PMIC only implements a regulator, so we bind it
 		 * directly instead of using a MFD.
 		 */
--
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
