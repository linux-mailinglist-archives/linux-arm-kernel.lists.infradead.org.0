Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A2734409
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HytmRWpFQPg1/wvftKh5evbcBPHWajmbM7VCtmy9mbU=; b=dKDDiIPL4i/CRC
	7hlFZv/TKQAgr9PlC0+O6fVXFq/aZFmvp3z2bjOv10sq9kG6qv8KMhtc8lo2+ehXOsIqxp161fB/3
	OPaeuZq1WJRG53w76sejntSCj8h0LoHwZvWEq/qD5CzlOpUubNoDndN6wKpF+WJk4Y/21p+W6miuc
	zxtWoU+0xTOnriEaMd43irNNfW/Kkr8Gnp9+TeIiqqrBKgtATK9P4jNS0GSuyZn3yZhB6kiDAAAqh
	62FkUGCmOvWj06qmeISYIHnvV1gFWFrS+e7/ymzVGL6sa26w5FfzrV/80IAwckSgdfWWGPoJHltwk
	vYAvvrV8WumNh3ODihPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6SK-0000Kg-AW; Tue, 04 Jun 2019 10:14:12 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RU-0007ih-OL; Tue, 04 Jun 2019 10:13:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EM7xAHtN10RxZWgSfDukMDp2CkyeLsWTnVDDEww6sj4=; b=v44yzUbFZGvyI+S0XE0MIxJIg
 gklW0saFsLcjwu4tTojsBqoBuDNa6eNnybsLSl1TlTNyDounc+XwY5kEaAorKJWg2c3sLeuaKxhrO
 6HDVNd2a0h3OICyTXnAaFWqvmvVAhE0JLXE+hF8gh+InB/NNEZRiZ1TVIfbD8UEW6SRwfC5+ZvlQh
 FNE0FnIUlK7cVuHb6wDMmpqvg8cnnwn8wrgN58u5rR7uQG0uEU9EjisqfL4qXw60SGOH6QGP4f35/
 2O62cu+q0LzldWvRTBLMCXud4UxMZSum1c+tDextIuGbAcdyuM3KSXGpEgDqKGObmLm9inuxIe5fA
 hbxOBm7lw==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RR-0003Us-SG; Tue, 04 Jun 2019 10:13:18 +0000
X-UUID: 5423e3d13a8d42e783538befa2cc45cb-20190604
X-UUID: 5423e3d13a8d42e783538befa2cc45cb-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 326480457; Tue, 04 Jun 2019 02:12:05 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:03 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:02 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:02 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 14/14] [media] mtk-mipicsi: add function to support SerDes
 for link number
Date: Tue, 4 Jun 2019 18:11:55 +0800
Message-ID: <1559643115-15124-15-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061318_070534_B3603046 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Mt2712 can serve at most four camera link for each mipicsi port.
Therefore, driver need to know how many camera link in SerDes and
set the mipicsi HW to serve.

The value "link_reg" defined in dts, and use it to get the link status
for SerDes.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 53 ++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index 9b5983b39f2b..ab703e3469ca 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -143,6 +143,7 @@ struct mtk_mipicsi_subdev {
 	struct v4l2_async_subdev asd;
 	struct v4l2_subdev *subdev;
 	unsigned int max_vc;
+	u32 link_reg;
 };
 
 struct mtk_mipicsi_channel {
@@ -257,12 +258,37 @@ static const struct file_operations mtk_mipicsi_debug_fops = {
 };
 #endif /* CONFIG_DEBUG_FS */
 
+static int get_subdev_register(struct mtk_mipicsi_dev *mipicsi,
+			       struct v4l2_dbg_register *reg)
+{
+	struct v4l2_subdev *sd = mipicsi->mipicsi_sd.subdev;
+	struct device *dev = &mipicsi->pdev->dev;
+	int ret = 0;
+
+	reg->match.type = V4L2_CHIP_MATCH_SUBDEV;
+	reg->match.addr = 0;
+	ret = v4l2_subdev_call(sd, core, g_register, reg);
+	if (ret != 2) {
+		dev_err(dev, "mipicsi get des register 0x%llx fail, ret=%d\n",
+		reg->reg, ret);
+		return -EIO;
+	}
+
+	dev_info(dev, "read DES [reg/val/ret] is [0x%llx/0x%llx/%d]\n",
+		 reg->reg, reg->val, ret);
+
+	return ret;
+}
+
+
 static int get_subdev_link(struct mtk_mipicsi_dev *mipicsi,
 	unsigned int *link, u8 *link_reg_val)
 {
 	struct device *dev = &mipicsi->pdev->dev;
 	struct mtk_mipicsi_subdev *sd = &mipicsi->mipicsi_sd;
-
+	struct v4l2_dbg_register reg;
+	int ret = 0;
+	unsigned int index = 0;
 
 	if (sd->max_vc == 1) {
 		*link = 1;
@@ -274,6 +300,24 @@ static int get_subdev_link(struct mtk_mipicsi_dev *mipicsi,
 
 	dev_info(dev, "mtk mipicsi support %d channel\n", sd->max_vc);
 
+	memset(&reg, 0, sizeof(reg));
+	/*get camera link number*/
+	reg.reg = sd->link_reg;
+	ret = get_subdev_register(mipicsi, &reg);
+	if (ret < 0)
+		return ret;
+
+	*link = 0;
+	for (index = 0; index < sd->max_vc; index++) {
+		if ((reg.val & 0x01) == 0x01) {
+			*link += 1;
+			*link_reg_val |= (0x01 << index);
+		}
+		reg.val >>= 1;
+	}
+
+	dev_info(dev, "%u camera linked to sub device\n", *link);
+
 	return 0;
 }
 
@@ -1199,6 +1243,13 @@ static int mtk_mipicsi_node_parse(struct mtk_mipicsi_dev *mipicsi)
 		sd->max_vc = 1;
 	}
 
+	ret = of_property_read_u32(dev->of_node, "mediatek,serdes_link_reg",
+				   &sd->link_reg);
+	if (ret != 0) {
+		dev_info(dev, "not set mediatek,serdes_link_reg, can't read subdev link number\n");
+		sd->link_reg = 0x0;
+	}
+
 	/* get and parse seninf_mux_camsv */
 	camsv_num = of_count_phandle_with_args(dev->of_node,
 		"mediatek,seninf_mux_camsv", NULL);
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
