Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D0756383
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 09:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=46uLJOdCVuNmtXXjaoBcGIgZRWwmnk/HmibmEEEnbSU=; b=G0s
	LMzZgva9mbBKN4m3eIiE5QWR2EFeZIp/aqH1137zcUtncHWKzN3DxCn1xMFztH6vUr04iV1KSvGu3
	I3PZIvUEu3V7QSmHvDAnpfOEYV6Umuv5/dC4ySfI0eX9gnYld5bY8pEMiXWYLcM7V+Q51jW4fzff8
	gZT4GmgKioGGjNWNGejea6HTDRj9UaORpcq3vOt0RipKzez0O1L/8VB4xh1ikoPo3aCqv9VYj4/fT
	rO1Blsu/P9KJsQ5pFP9gbuuWIntIH0kmmy/eMhbt2giSeoZL4w4cFhx8RoytDBRx0mxqrps13JbJo
	PRO+E/O7uEjf21CnN7j2vJjuMXg+NxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2Zj-0000sM-F0; Wed, 26 Jun 2019 07:42:39 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2ZT-0000qW-Cf
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 07:42:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 98662200912;
 Wed, 26 Jun 2019 09:42:21 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 514E6200905;
 Wed, 26 Jun 2019 09:42:16 +0200 (CEST)
Received: from mega.ap.freescale.net (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 16DEA4030F;
 Wed, 26 Jun 2019 15:42:10 +0800 (SGT)
From: Anson.Huang@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, abel.vesa@nxp.com,
 viresh.kumar@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] soc: imx8: Add i.MX8MQ UID(unique identifier) support
Date: Wed, 26 Jun 2019 15:44:14 +0800
Message-Id: <20190626074415.18224-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_004223_566193_E8F7DB46 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Add i.MX8MQ SoC UID(unique identifier) support, user
can read it from sysfs:

root@imx8mqevk:~# cat /sys/devices/soc0/soc_uid
D56911D6F060954B

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/soc-imx8.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index f924ae8..c19ef4b 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -16,6 +16,9 @@
 #define IMX8MQ_SW_INFO_B1		0x40
 #define IMX8MQ_SW_MAGIC_B1		0xff0055aa
 
+#define OCOTP_UID_LOW			0x410
+#define OCOTP_UID_HIGH			0x420
+
 /* Same as ANADIG_DIGPROG_IMX7D */
 #define ANADIG_DIGPROG_IMX8MM	0x800
 
@@ -24,6 +27,16 @@ struct imx8_soc_data {
 	u32 (*soc_revision)(void);
 };
 
+static u64 soc_uid;
+
+static ssize_t soc_uid_show(struct device *dev,
+			    struct device_attribute *attr, char *buf)
+{
+	return sprintf(buf, "%016llX\n", soc_uid);
+}
+
+static DEVICE_ATTR_RO(soc_uid);
+
 static u32 __init imx8mq_soc_revision(void)
 {
 	struct device_node *np;
@@ -42,6 +55,10 @@ static u32 __init imx8mq_soc_revision(void)
 	if (magic == IMX8MQ_SW_MAGIC_B1)
 		rev = REV_B1;
 
+	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
+	soc_uid <<= 32;
+	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
+
 	iounmap(ocotp_base);
 
 out:
@@ -140,6 +157,11 @@ static int __init imx8_soc_init(void)
 		goto free_rev;
 	}
 
+	ret = device_create_file(soc_device_to_device(soc_dev),
+				 &dev_attr_soc_uid);
+	if (ret)
+		goto free_rev;
+
 	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
 		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
