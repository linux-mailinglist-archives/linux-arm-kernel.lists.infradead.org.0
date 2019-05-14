Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E511C31B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbIly+1W/b2gvEmIdGZDLLe6zcvU02RfzbUpD033kLY=; b=BpRcxJgE2XWI+V
	4F5y5Y4X+GAoD3lzTaa8CVOv0wEQnMA8IOAa6xYLChW7sixGWJDo3Q4fITDG7VcFGS9FJc0jqraRK
	IAMXxQPWHN4grFvIC7R2tnPorHTSe5+9x+W/x05APGg9bVxAZ8hzbXC9iva9JT1pmXN4x4lOLog3N
	0qAOlVI69b0rOlpFaBc5P01Mk/AQ1Jvtn3bZhAPVV8QGsQrlBg3Jt9F/BwHHPFWF/GWZnJgfdlJUV
	lG7A3Je0/mYuJA+do2PXgUs3CsIQZYcFcaCy9ytf/gnUBNC9tL6T9Ve5kV0Qb34XfXFD8OdUyUE8D
	MgoQzG9JC0HLrIUq+PZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQjk-00030Y-QU; Tue, 14 May 2019 06:16:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQhg-0007aY-A8; Tue, 14 May 2019 06:14:30 +0000
X-UUID: da697a08f2dd48a1bd44f97581f2efdd-20190513
X-UUID: da697a08f2dd48a1bd44f97581f2efdd-20190513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 663067508; Mon, 13 May 2019 22:14:04 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 23:14:02 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 14:13:56 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 14 May 2019 14:13:55 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v3 13/13] [media] mtk-mipicsi: add debugfs for mipicsi driver
Date: Tue, 14 May 2019 14:13:50 +0800
Message-ID: <1557814430-9675-14-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
References: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: CDF3EB988DABE039B2641AA95D6392CF9BF315A6D47140D27D15623F11EF166C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_231421_116950_71BE4B10 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add debugfs for mipicsi driver.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index c1cbeb3c60e1..b6abd5a35752 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -49,6 +49,7 @@
 #include <soc/mediatek/smi.h>
 #include <linux/regmap.h>
 #include <linux/mfd/syscon.h>
+#include <linux/debugfs.h>
 
 #define MTK_MIPICSI_DRV_NAME "mtk-mipicsi"
 #define MTK_PLATFORM_STR "platform:mt2712"
@@ -83,6 +84,7 @@
 #define SENINF_NCSI2_INT_EN				0xB0
 #define SENINF_NCSI2_INT_STATUS				0xB4
 #define SENINF_NCSI2_DBG_SEL				0xB8
+#define SENINF_NCSI2_DBG_PORT				0xBC
 #define SENINF_NCSI2_HSRX_DBG				0xD8
 #define SENINF_NCSI2_DI					0xDC
 #define SENINF_NCSI2_DI_CTRL				0xE4
@@ -92,6 +94,7 @@
 #define SENINF_TOP_MUX					0x08
 
 #define SENINF_MUX_CTRL					0x00
+#define SENINF_MUX_DEBUG_2				0x14
 
 #define CAMSV_MODULE_EN					0x10
 #define CAMSV_FMT_SEL					0x14
@@ -114,6 +117,7 @@
 #define DMA_FRAME_HEADER_EN				0xE00
 
 #define SerDes_support 1
+#define CONFIG_DEBUG_FS 1
 
 static int mtk_mipicsi_dbg_level;
 #define mtk_mipicsi_dbg(level, fmt, args...)				 \
@@ -165,6 +169,9 @@ struct mtk_mipicsi_dev {
 	u32 width;
 	u32 height;
 	u32 bytesperline;
+#ifdef CONFIG_DEBUG_FS
+	struct dentry *mtk_mipicsi_debugfs;
+#endif
 };
 
 static const struct soc_mbus_lookup mtk_mipicsi_formats[] = {
@@ -220,6 +227,49 @@ static const struct soc_mbus_lookup mtk_mipicsi_formats[] = {
 		V4L2_MBUS_PCLK_SAMPLE_FALLING |	\
 		V4L2_MBUS_DATA_ACTIVE_HIGH)
 
+#ifdef CONFIG_DEBUG_FS
+static ssize_t mtk_mipicsi_debug_read(struct file *file, char __user *user_buf,
+			      size_t count, loff_t *ppos)
+{
+	struct device *dev = file->private_data;
+	struct soc_camera_host *soc_host = to_soc_camera_host(dev);
+	struct mtk_mipicsi_dev *mipicsi = soc_host->priv;
+	u32 int_val;
+	u32 dbg_port;
+	u32 cnt_val;
+	u32 hcnt;
+	u32 vcnt;
+	char buf[256];
+	char cnt_info[150];
+	int i;
+
+	int_val = readl(mipicsi->seninf + SENINF_NCSI2_INT_STATUS);
+	dbg_port = readl(mipicsi->seninf + SENINF_NCSI2_DBG_PORT);
+	memset(buf, 0, sizeof(buf));
+	snprintf(buf, sizeof(buf), "%s\nSENINF_NCSI2_INT_STATUS: 0x%X\n"
+		"SENINF_NCSI2_DBG_PORT: 0x%X\n",
+		dev_name(dev), int_val, dbg_port);
+
+	for (i = 0; i < mipicsi->camsv_num; ++i) {
+		cnt_val = readl(mipicsi->seninf_mux[i] + SENINF_MUX_DEBUG_2);
+		hcnt = (cnt_val >> 16) & 0xFFFF;
+		vcnt = cnt_val & 0xFFFF;
+		memset(cnt_info, 0, sizeof(cnt_info));
+		snprintf(cnt_info, sizeof(cnt_info),
+			"HCNT[%d]: 0x%X\n"
+			"VCNT[%d]: 0x%X\n",
+			i, hcnt, i, vcnt);
+		strcat(buf, cnt_info);
+	}
+
+	return simple_read_from_buffer(user_buf, count, ppos, buf, strlen(buf));
+}
+static const struct file_operations mtk_mipicsi_debug_fops = {
+	.open = simple_open,
+	.read = mtk_mipicsi_debug_read,
+};
+#endif /* CONFIG_DEBUG_FS */
+
 static void mtk_mipicsi_ana_clk_enable(void __iomem *base, bool enable)
 {
 	if (enable) {
@@ -1521,6 +1571,16 @@ static int mtk_mipicsi_probe(struct platform_device *pdev)
 		goto clean;
 	}
 
+#ifdef CONFIG_DEBUG_FS
+	mipicsi->mtk_mipicsi_debugfs =
+		debugfs_create_file(mipicsi->drv_name, 0444, NULL,
+			(void *)(&pdev->dev), &mtk_mipicsi_debug_fops);
+	if (mipicsi->mtk_mipicsi_debugfs == NULL) {
+		dev_err(&pdev->dev, "debugfs_create_file fail\n");
+		goto clean;
+	}
+#endif
+
 	dev_set_drvdata(&pdev->dev, mipicsi);
 
 	dev_info(&pdev->dev, "probe done\n");
@@ -1535,6 +1595,11 @@ static int mtk_mipicsi_remove(struct platform_device *pdev)
 {
 	struct soc_camera_host *soc_host = to_soc_camera_host(&pdev->dev);
 
+#ifdef CONFIG_DEBUG_FS
+	struct mtk_mipicsi_dev *mipicsi = soc_host->priv;
+
+	debugfs_remove(mipicsi->mtk_mipicsi_debugfs);
+#endif
 	soc_camera_host_unregister(soc_host);
 	pm_runtime_disable(&pdev->dev);
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
