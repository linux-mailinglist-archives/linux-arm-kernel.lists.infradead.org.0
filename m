Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4253F1C322
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAlitG3rSrlV10rHWDwDiWINQPi/UI/6VLRCsNs1a9E=; b=CmHlBStOq/C5J2
	LXkrMWoMNNrrnMvDz9A8nyc8mBi6GmZcB5H8XIA8AhAfF3pviEbFZM3HtFsH7hPklB5+vVnrMPz8L
	jjI5kD/TwEmaTB5ZGqcyswHmIZHZEVXCtdJTLgjUdhDSOZ/UT3La6xxPepRo63AG8XWEvDi4KT1ma
	sMVYUn1h+T+njqI9j6x9Yh587YfhYDtfNmro+DhR5xSBxb+S5iTtAgwqsWEDHtK70Vz+/rRWZPzOx
	U9yAanhmZA4AzHruLXmT8AytYv8oeA8K2gbAm+8TQ5X1FyyTXVEwh1VdQ1vD7da3x4vATiv0RMAyP
	nAzrrtcOTDBgqgkGk2Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQkJ-0003lh-Je; Tue, 14 May 2019 06:17:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQhf-0007QT-V4; Tue, 14 May 2019 06:14:26 +0000
X-UUID: 39c7a978693a43eca904fa0efebdd368-20190513
X-UUID: 39c7a978693a43eca904fa0efebdd368-20190513
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 27969667; Mon, 13 May 2019 22:14:05 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 23:14:04 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 14:13:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 14 May 2019 14:13:54 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v3 06/13] [media] mtk-mipicsi: add function to support SerDes
 for link number
Date: Tue, 14 May 2019 14:13:43 +0800
Message-ID: <1557814430-9675-7-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
References: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_231420_392038_4A0EE1BC 
X-CRM114-Status: GOOD (  15.05  )
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

This patch add function to support SerDes for link number.

Mt2712 can server at most four camera link for each mipicsi port.
Therefore, driver need to know how many camera link in SerDes and
set the mipicsi HW to serve.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index 920848e965e3..117eb1939014 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -53,6 +53,8 @@
 #define MIPICSI_COMMON_CLK 2
 #define MTK_CAMDMA_MAX_NUM 4U
 #define MIPICSI_CLK (MIPICSI_COMMON_CLK + MTK_CAMDMA_MAX_NUM)
+#define MAX_DES_LINK 4U
+#define SUBDEV_LINK_REG 0x49
 #define MAX_SUPPORT_WIDTH             4096U
 #define MAX_SUPPORT_HEIGHT            4096U
 #define MAX_BUFFER_NUM                  32U
@@ -103,6 +105,8 @@
 #define IMGO_STRIDE					0x238
 #define DMA_FRAME_HEADER_EN				0xE00
 
+#define SerDes_support 1
+
 /* buffer for one video frame */
 struct mtk_mipicsi_buf {
 	struct list_head queue;
@@ -127,6 +131,8 @@ struct mtk_mipicsi_dev {
 	spinlock_t		queue_lock;
 	struct mtk_mipicsi_buf	cam_buf[MAX_BUFFER_NUM];
 	bool streamon;
+	unsigned int link;
+	u8 link_reg_val;
 	unsigned long enqueue_cnt;
 	char drv_name[16];
 	u32 id;
@@ -146,6 +152,64 @@ struct mtk_mipicsi_dev {
 		V4L2_MBUS_PCLK_SAMPLE_FALLING |	\
 		V4L2_MBUS_DATA_ACTIVE_HIGH)
 
+static int get_subdev_register(const struct soc_camera_device *icd,
+	struct v4l2_dbg_register *reg)
+{
+	struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
+	int ret = 0;
+
+	reg->match.type = V4L2_CHIP_MATCH_SUBDEV;
+	reg->match.addr = 0;
+	ret = v4l2_subdev_call(sd, core, g_register, reg);
+	if (ret != 2) {
+		dev_err(icd->parent, "mipicsi get des register 0x%llx fail, ret=%d\n",
+			reg->reg, ret);
+		return -EIO;
+	}
+
+	dev_info(icd->parent, "read DES [reg/val/ret] is [0x%llx/0x%llx/%d]\n",
+		reg->reg, reg->val, ret);
+	return ret;
+}
+
+static int get_subdev_link(const struct soc_camera_device *icd,
+	unsigned int *link, u8 *link_reg_val)
+{
+	struct v4l2_dbg_register reg;
+	int ret = 0;
+	unsigned int index = 0U;
+	*link_reg_val = 0x0U;
+
+	if (SerDes_support == 0) {
+		*link = 1;
+		*link_reg_val = 0x1;
+		dev_info(icd->parent, "subdev not support SerDes\n");
+		return 0;
+	}
+
+	if (link == NULL)
+		return -EINVAL;
+
+	memset(&reg, 0, sizeof(reg));
+	/*get camera link number*/
+	reg.reg = SUBDEV_LINK_REG;
+	ret = get_subdev_register(icd, &reg);
+	if (ret < 0)
+		return ret;
+
+	*link = 0U;
+	for (index = 0U; index < MAX_DES_LINK; ++index) {
+		if ((reg.val & 0x01U) == 0x01U) {
+			*link += 1U;
+			*link_reg_val |= (0x01U << index);
+		}
+		reg.val >>= 1U;
+	}
+
+	dev_info(icd->parent, "%u camera linked to sub device\n", *link);
+	return 0;
+}
+
 static u32 get_bytesperline(const u32 fmt, const u32 width)
 {
 	u32 bytesperline = 0;
@@ -177,6 +241,7 @@ static int mtk_mipicsi_add_device(struct soc_camera_device *icd)
 	u32 height;
 	u32 fmt;
 
+	(void)get_subdev_link(icd, &mipicsi->link, &mipicsi->link_reg_val);
 	/* Get width/height info from subdev. Then use them to set register */
 	ret = v4l2_subdev_call(sd, pad, get_fmt, NULL, &format);
 	if (ret < 0) {
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
