Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E266DE43EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 09:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UEFP6z6+cw3wv/XttcQaJdAmr5Rfn2bMMsqHVTrWqIQ=; b=FvcVWyKpT8raAgi5lwuGycv3Q7
	KuhPGvbEs9sqaBsq24WqHw8ZgbeuRFZYElTKJUUFjsTah1ou6pDBDUZsA7/xKEsxZ6WcYYVuxy2bR
	1mrRrZYajojmYVpnhxomux8idT0yGJLVB8xF7+Q+/aBf42BatQexBbWjn45oU/DwtS7cFBHcs4itv
	EZ9Wy9y2E9a/GCJmeY3CmGyYKO1VYCB6xRcYbT28AzZWPrvwNtpcW1psL2adGOlzmKDQiJbojx39k
	ai9GNK7xlKmqhug7F7AT6NBfZZ05pKPlZmFoxapdkyzR/kUgCQ+a412TpjgMen6XudqJ6fKUMi89c
	jBq904AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNtZm-0001dk-70; Fri, 25 Oct 2019 06:59:58 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNtZQ-0001U4-E2
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 06:59:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 82D751A0409;
 Fri, 25 Oct 2019 08:59:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3797E1A0221;
 Fri, 25 Oct 2019 08:59:29 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 720F5402DA;
 Fri, 25 Oct 2019 14:59:22 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, daniel.baluta@nxp.com, aisheng.dong@nxp.com,
 abel.vesa@nxp.com, leonard.crestez@nxp.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] soc: imx-scu: Using existing serial_number instead of UID
Date: Fri, 25 Oct 2019 14:56:23 +0800
Message-Id: <1571986583-21138-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571986583-21138-1-git-send-email-Anson.Huang@nxp.com>
References: <1571986583-21138-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_235936_610287_D40AEB73 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

The soc_device_attribute structure already contains a serial_number
attribute to show SoC's unique ID, just use it to show SoC's unique
ID instead of creating a new file called soc_uid.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/soc-imx-scu.c | 34 +++++++++++++++++++---------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
index c68882e..fb70b8a 100644
--- a/drivers/soc/imx/soc-imx-scu.c
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -33,12 +33,10 @@ struct imx_sc_msg_misc_get_soc_uid {
 	u32 uid_high;
 } __packed;
 
-static ssize_t soc_uid_show(struct device *dev,
-			    struct device_attribute *attr, char *buf)
+static int imx_scu_soc_uid(u64 *soc_uid)
 {
 	struct imx_sc_msg_misc_get_soc_uid msg;
 	struct imx_sc_rpc_msg *hdr = &msg.hdr;
-	u64 soc_uid;
 	int ret;
 
 	hdr->ver = IMX_SC_RPC_VERSION;
@@ -52,15 +50,13 @@ static ssize_t soc_uid_show(struct device *dev,
 		return ret;
 	}
 
-	soc_uid = msg.uid_high;
-	soc_uid <<= 32;
-	soc_uid |= msg.uid_low;
+	*soc_uid = msg.uid_high;
+	*soc_uid <<= 32;
+	*soc_uid |= msg.uid_low;
 
-	return sprintf(buf, "%016llX\n", soc_uid);
+	return 0;
 }
 
-static DEVICE_ATTR_RO(soc_uid);
-
 static int imx_scu_soc_id(void)
 {
 	struct imx_sc_msg_misc_get_soc_id msg;
@@ -89,6 +85,7 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
 	struct soc_device_attribute *soc_dev_attr;
 	struct soc_device *soc_dev;
 	int id, ret;
+	u64 uid = 0;
 	u32 val;
 
 	ret = imx_scu_get_handle(&soc_ipc_handle);
@@ -112,6 +109,10 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
 	if (id < 0)
 		return -EINVAL;
 
+	ret = imx_scu_soc_uid(&uid);
+	if (ret < 0)
+		return -EINVAL;
+
 	/* format soc_id value passed from SCU firmware */
 	val = id & 0x1f;
 	soc_dev_attr->soc_id = kasprintf(GFP_KERNEL, "0x%x", val);
@@ -130,19 +131,22 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
 		goto free_soc_id;
 	}
 
+	soc_dev_attr->serial_number = kasprintf(GFP_KERNEL, "%016llX", uid);
+	if (!soc_dev_attr->serial_number) {
+		ret = -ENOMEM;
+		goto free_revision;
+	}
+
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
 		ret = PTR_ERR(soc_dev);
-		goto free_revision;
+		goto free_serial_number;
 	}
 
-	ret = device_create_file(soc_device_to_device(soc_dev),
-				 &dev_attr_soc_uid);
-	if (ret)
-		goto free_revision;
-
 	return 0;
 
+free_serial_number:
+	kfree(soc_dev_attr->serial_number);
 free_revision:
 	kfree(soc_dev_attr->revision);
 free_soc_id:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
