Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7C16023B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 07:17:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14HUfl6gcWzuULj0bSEVBCLLWQ0KCpfwC5EpkDADu+Y=; b=FUADfcqvMWTy3L
	gVUYcKZjMCylHZV/L1TLjgWaTQ64lUnnte/ZGmzo6lz++eEmwo8ixGSK0Qgla/YBvhRxvZ+SL9TXr
	/yvSA/IyDFYHXUmhUFafom1qRu6Y+DyxldLVuGbyVjjskjA6VAt2CCa/5ls5yBqJWhEaDv9lLXeuu
	npFmvgL1KosHTTjBYXx0NKq+OenF3kMGAfrR+brQGbsAIUVNzFdvV66dvexH0BN7bG5nRAKOXiMGe
	4lBPEu7YQ5Wh5rJUpusGKPjMcEE1gVLZ5dnSt/Gqfk7UoFDjpYD7t1N2PgcW/fW5DHqm7W6Zyklsy
	FSY4wAtmPheGYi0DpPIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3DFU-00076Z-U9; Sun, 16 Feb 2020 06:17:48 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3DFD-000751-Nk; Sun, 16 Feb 2020 06:17:34 +0000
X-UUID: b4aab8faa8bb467084989c59b8796a0e-20200215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=vySsqR8YwL/rCEwOS5ApjszqOvFYlWv2IHCLH9JUPFY=; 
 b=b6sdd6oKLNI34afifmtoJ7i7tPsugYguSlXch1gh/jii7osSzXnycZeEDIst0HPnA3qofkfQKg/ccMd7aZ5oYhFWYzu7c9wLE+iukLgIGJ+Au8QDMLlnJleAF5ODEaML3ZSpHjgh8OvKucn9iezBIZVv9IFQ4UxuFpfB70B71aI=;
X-UUID: b4aab8faa8bb467084989c59b8796a0e-20200215
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <argus.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 748057301; Sat, 15 Feb 2020 22:17:30 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 15 Feb 2020 22:17:46 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 14:16:42 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 16 Feb 2020 14:17:17 +0800
From: Argus Lin <argus.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 2/3] soc: mediatek: pwrap: add pwrap driver for MT6779 SoCs
Date: Sun, 16 Feb 2020 14:17:22 +0800
Message-ID: <1581833843-4485-3-git-send-email-argus.lin@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1581833843-4485-1-git-send-email-argus.lin@mediatek.com>
References: <1581833843-4485-1-git-send-email-argus.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_221732_779695_45A6FFC0 
X-CRM114-Status: GOOD (  10.14  )
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

MT6779 is a highly integrated SoCs, it uses PMIC_MT6359 for
power management. This patch adds pwrap master driver to
access PMIC_MT6359.

Signed-off-by: Argus Lin <argus.lin@mediatek.com>
---
 drivers/soc/mediatek/mtk-pmic-wrap.c | 57 ++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
index c725315..1f8189a 100644
--- a/drivers/soc/mediatek/mtk-pmic-wrap.c
+++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
@@ -497,6 +497,45 @@ enum pwrap_regs {
 	[PWRAP_DCM_DBC_PRD] =		0x1E0,
 };

+static int mt6779_regs[] = {
+	[PWRAP_MUX_SEL] =		0x0,
+	[PWRAP_WRAP_EN] =		0x4,
+	[PWRAP_DIO_EN] =		0x8,
+	[PWRAP_RDDMY] =			0x20,
+	[PWRAP_CSHEXT_WRITE] =		0x24,
+	[PWRAP_CSHEXT_READ] =		0x28,
+	[PWRAP_CSLEXT_WRITE] =		0x2C,
+	[PWRAP_CSLEXT_READ] =		0x30,
+	[PWRAP_EXT_CK_WRITE] =		0x34,
+	[PWRAP_STAUPD_CTRL] =		0x3C,
+	[PWRAP_STAUPD_GRPEN] =		0x40,
+	[PWRAP_EINT_STA0_ADR] =		0x44,
+	[PWRAP_HARB_HPRIO] =		0x68,
+	[PWRAP_HIPRIO_ARB_EN] =		0x6C,
+	[PWRAP_MAN_EN] =		0x7C,
+	[PWRAP_MAN_CMD] =		0x80,
+	[PWRAP_WACS0_EN] =		0x8C,
+	[PWRAP_INIT_DONE0] =		0x90,
+	[PWRAP_WACS1_EN] =		0x94,
+	[PWRAP_WACS2_EN] =		0x9C,
+	[PWRAP_INIT_DONE1] =		0x98,
+	[PWRAP_INIT_DONE2] =		0xA0,
+	[PWRAP_INT_EN] =		0xBC,
+	[PWRAP_INT_FLG_RAW] =		0xC0,
+	[PWRAP_INT_FLG] =		0xC4,
+	[PWRAP_INT_CLR] =		0xC8,
+	[PWRAP_INT1_EN] =		0xCC,
+	[PWRAP_INT1_FLG] =		0xD4,
+	[PWRAP_INT1_CLR] =		0xD8,
+	[PWRAP_TIMER_EN] =		0xF0,
+	[PWRAP_WDT_UNIT] =		0xF8,
+	[PWRAP_WDT_SRC_EN] =		0xFC,
+	[PWRAP_WDT_SRC_EN_1] =		0x100,
+	[PWRAP_WACS2_CMD] =		0xC20,
+	[PWRAP_WACS2_RDATA] =		0xC24,
+	[PWRAP_WACS2_VLDCLR] =		0xC28,
+};
+
 static int mt6797_regs[] = {
 	[PWRAP_MUX_SEL] =		0x0,
 	[PWRAP_WRAP_EN] =		0x4,
@@ -945,6 +984,7 @@ enum pmic_type {
 enum pwrap_type {
 	PWRAP_MT2701,
 	PWRAP_MT6765,
+	PWRAP_MT6779,
 	PWRAP_MT6797,
 	PWRAP_MT7622,
 	PWRAP_MT8135,
@@ -1377,6 +1417,7 @@ static int pwrap_init_cipher(struct pmic_wrapper *wrp)
 		break;
 	case PWRAP_MT2701:
 	case PWRAP_MT6765:
+	case PWRAP_MT6779:
 	case PWRAP_MT6797:
 	case PWRAP_MT8173:
 	case PWRAP_MT8516:
@@ -1783,6 +1824,19 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
 	.init_soc_specific = NULL,
 };

+static const struct pmic_wrapper_type pwrap_mt6779 = {
+	.regs = mt6779_regs,
+	.type = PWRAP_MT6779,
+	.arb_en_all = 0xfbb7f,
+	.int_en_all = 0xfffffffe,
+	.int1_en_all = 0,
+	.spi_w = PWRAP_MAN_CMD_SPI_WRITE,
+	.wdt_src = PWRAP_WDT_SRC_MASK_ALL,
+	.caps = 0,
+	.init_reg_clock = pwrap_common_init_reg_clock,
+	.init_soc_specific = NULL,
+};
+
 static const struct pmic_wrapper_type pwrap_mt6797 = {
 	.regs = mt6797_regs,
 	.type = PWRAP_MT6797,
@@ -1868,6 +1922,9 @@ static irqreturn_t pwrap_interrupt(int irqno, void *dev_id)
 		.compatible = "mediatek,mt6765-pwrap",
 		.data = &pwrap_mt6765,
 	}, {
+		.compatible = "mediatek,mt6779-pwrap",
+		.data = &pwrap_mt6779,
+	}, {
 		.compatible = "mediatek,mt6797-pwrap",
 		.data = &pwrap_mt6797,
 	}, {
--
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
