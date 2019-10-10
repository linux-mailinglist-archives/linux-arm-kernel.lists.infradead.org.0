Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F86D2D83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 17:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h4Z1l0T8ISY1arjej+pTZY3HDeR7k2Z2Zl6ByXJg7OI=; b=u8P
	k71ef4hx5/opCODQZ7htnEGZEzkJk+hXAhj0gly0KDELBkIGhUKY6lEkk7E+m7Hl5NLTXuC1ubPXe
	ceuYmJYXCk5WaM+/7qCYBkf3c3lbP7S9457ouAzzmC1l67vsuAmvhVX8I9QGp/1YBZgeNKJ+KLt5A
	E/yTbsTu86RiKJb0myBS0YZvGRAFxlYrtQdbAjcWGH3S/8Jvm+Glx9k6yfrE8Vayf0FYgOO6ORbE7
	WqmltoJm8rp5EsmDObpXn/+S4kUJPKIcmjVeuExb9Pl7TluTUBrfflZ8gKOp3KlOxtS7wbHorfqmZ
	yjFvfjFE7i4IWsOVGSxmnu9yd1PjMVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIaDm-0001Kp-BG; Thu, 10 Oct 2019 15:19:18 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIaDf-0001KF-O6
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 15:19:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 89A941A0840;
 Thu, 10 Oct 2019 17:19:08 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7D1FD1A04BD;
 Thu, 10 Oct 2019 17:19:08 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 04A2A2060B;
 Thu, 10 Oct 2019 17:19:07 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] soc: imx8mq: Read SOC revision from TF-A
Date: Thu, 10 Oct 2019 18:19:03 +0300
Message-Id: <c4f9d238a08b5c8de6c14e86cfbe3fe8b8a55f4f.1570720648.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_081911_921832_B99AB877 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SOC revision on older imx8mq is not available in fuses so on anything
other than B1 current code just reports "unknown".

TF-A already handles this by parsing the ROM and exposes the value
through a SMC call. Call this instead of reimplementing the workaround
in the kernel itself.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
This was discussed previously and but nothing was merged. I'm having
trouble finding email archive links but here's one:

https://patchwork.kernel.org/patch/10935599/

NXP vendor tree always used TF-A for this and from previous discussion
it is reasonable to rely on firmware for workarounds.

The SMC call has been in TF-A upstream for a while.

 drivers/soc/imx/soc-imx8.c | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index b9831576dd25..20af442a247a 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -7,17 +7,20 @@
 #include <linux/io.h>
 #include <linux/of_address.h>
 #include <linux/slab.h>
 #include <linux/sys_soc.h>
 #include <linux/platform_device.h>
+#include <linux/arm-smccc.h>
 #include <linux/of.h>
 
 #define REV_B1				0x21
 
 #define IMX8MQ_SW_INFO_B1		0x40
 #define IMX8MQ_SW_MAGIC_B1		0xff0055aa
 
+#define IMX_SIP_GET_SOC_INFO		0xc2000006
+
 #define OCOTP_UID_LOW			0x410
 #define OCOTP_UID_HIGH			0x420
 
 /* Same as ANADIG_DIGPROG_IMX7D */
 #define ANADIG_DIGPROG_IMX8MM	0x800
@@ -35,10 +38,22 @@ static ssize_t soc_uid_show(struct device *dev,
 	return sprintf(buf, "%016llX\n", soc_uid);
 }
 
 static DEVICE_ATTR_RO(soc_uid);
 
+static u32 imx8mq_soc_revision_from_atf(void)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(IMX_SIP_GET_SOC_INFO, 0, 0, 0, 0, 0, 0, 0, &res);
+
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
+		return 0;
+	else
+		return res.a0 & 0xff;
+}
+
 static u32 __init imx8mq_soc_revision(void)
 {
 	struct device_node *np;
 	void __iomem *ocotp_base;
 	u32 magic;
@@ -49,13 +64,20 @@ static u32 __init imx8mq_soc_revision(void)
 		goto out;
 
 	ocotp_base = of_iomap(np, 0);
 	WARN_ON(!ocotp_base);
 
-	magic = readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
-	if (magic == IMX8MQ_SW_MAGIC_B1)
-		rev = REV_B1;
+	/*
+	 * SOC revision on older imx8mq is not available in fuses so query
+	 * the value from ATF instead.
+	 */
+	rev = imx8mq_soc_revision_from_atf();
+	if (!rev) {
+		magic = readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
+		if (magic == IMX8MQ_SW_MAGIC_B1)
+			rev = REV_B1;
+	}
 
 	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
 	soc_uid <<= 32;
 	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
