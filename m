Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E90634405
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWL0Fvguq6cC08JsO5yQOK0A8brZpPw4s3CQFAxp0y0=; b=sDR09ClRp2l+ta
	QtzNUW+7k3uUWxm3PvfW/SV1m2yaeMZXRF9jOlq6Kos/XeZo1OWwpLL5ESA5fOxZZJUJO1Drk7IPe
	fZXQJ4KRM5fCiVXerQYVFTxdf5/VvI9/wfS2fkD26UfgZnkf6/HR5GAgxOJpcNrXZUC25OqsqJsz8
	jlm3FsmJu5PG08u+cID+KnH9Oo6Vsl69jkG9Iq22IHONqxUwJWI4YZTxxmr7xAgc5wzZXgWpy+I9F
	Nq4Zy//flaJUM/4SBPwjoMzCuR/C415a0KEWeVQSugDiHSodyFHS1tXSaZz9k3PG92DuON8H0QdZt
	kbcjKhJtKf+HkjMLBq0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Rw-00089J-8g; Tue, 04 Jun 2019 10:13:48 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RT-0007iA-Ct; Tue, 04 Jun 2019 10:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Krqx+SUy1HOAV9Tac071mFO380k1FRg7FGk/m9ck/7U=; b=sUijH9xYiRn4aIFjafrg4aB2q
 hJGp+U3qPqU0xcb5lLC0aCt7PYFHcYz+I/Z136I0mnL1QcjepzgAQqK9zFVxv4UdCuvPrVnTNSqol
 1kSGOPr4zUXRVXdCJAQWULtJfuRpO/XhuPLFXqDQqnbdu/fP/SfFN3KBxeBQAg1SIuCKJmLomeasn
 Kggv9j7WxNhLNzP1jVmpSCglB8oxtPjSU2zXmm6l9vOTPQ7BGMB9Q61VY7mgOaqao3WaAvCm7Vn3C
 VC439tgCMZlYQasj/ASK0r4esYvKg5lXRAr32LgdKoWSFJE+l3yU8TFlUQmx49pfGwOJrozY8vjs0
 6t5XT+TMw==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RQ-0003Ur-LE; Tue, 04 Jun 2019 10:13:17 +0000
X-UUID: 030dff623f644e889f61ccfd585e8e3d-20190604
X-UUID: 030dff623f644e889f61ccfd585e8e3d-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 825331; Tue, 04 Jun 2019 02:12:08 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:07 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:01 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 07/14] [media] mtk-mipicsi: add function to get the number
 of subdev link
Date: Tue, 4 Jun 2019 18:11:48 +0800
Message-ID: <1559643115-15124-8-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F8EDD96C39312300CC9BE38EF59A9647DED5B847D22FF143A7A139D6D6217F8D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061316_869330_3B012054 
X-CRM114-Status: GOOD (  17.59  )
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

This patch add function to get subdev link.

Mt2712 can serve at most four camera link for each mipicsi port.
The number of link according to the value which is
defined in dts, the string is "mediatek,mipicsi_max_vc".
This value "max_vc" is the number of subdev link.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index f5cb29077022..ea1edbc6401b 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -120,6 +120,7 @@ struct mtk_mipicsi_subdev {
 	struct device_node *node;
 	struct v4l2_async_subdev asd;
 	struct v4l2_subdev *subdev;
+	unsigned int max_vc;
 };
 
 struct mtk_mipicsi_channel {
@@ -153,6 +154,8 @@ struct mtk_mipicsi_dev {
 	struct mtk_mipicsi_buf	cam_buf[MAX_BUFFER_NUM];
 	struct list_head	fb_list;
 	bool streamon;
+	unsigned int link;
+	u8 link_reg_val;
 	char drv_name[16];
 	u32 id;
 
@@ -182,6 +185,25 @@ static const struct mtk_format mtk_mipicsi_formats[] = {
 },
 };
 
+static int get_subdev_link(struct mtk_mipicsi_dev *mipicsi,
+	unsigned int *link, u8 *link_reg_val)
+{
+	struct device *dev = &mipicsi->pdev->dev;
+	struct mtk_mipicsi_subdev *sd = &mipicsi->mipicsi_sd;
+
+	if (sd->max_vc == 1) {
+		*link = 1;
+		*link_reg_val = 0x1;
+		dev_info(dev, "mtk mipicsi support 1 channel\n");
+
+		return 0;
+	}
+
+	dev_info(dev, "mtk mipicsi support %d channel\n", sd->max_vc);
+
+	return 0;
+}
+
 static void mtk_mipicsi_ana_clk_enable(void __iomem *base, bool enable)
 {
 	if (enable) {
@@ -877,6 +899,7 @@ static int mtk_mipicsi_node_parse(struct mtk_mipicsi_dev *mipicsi)
 	struct resource *res = NULL;
 	struct device_node *common_node = NULL;
 	struct platform_device *pdev = NULL;
+	struct mtk_mipicsi_subdev *sd = &mipicsi->mipicsi_sd;
 
 	dev = &mipicsi->pdev->dev;
 	pdev = mipicsi->pdev;
@@ -891,6 +914,14 @@ static int mtk_mipicsi_node_parse(struct mtk_mipicsi_dev *mipicsi)
 	(void)sprintf(mipicsi->drv_name, MTK_MIPICSI_DRV_NAME"%d",
 		mipicsi->id);
 
+	/*get the number of virtual channel*/
+	ret = of_property_read_u32(dev->of_node, "mediatek,mipicsi_max_vc",
+				   &sd->max_vc);
+	if (ret != 0) {
+		dev_info(dev, "not set mediatek,mipicsi_max_vc, use default value 1\n");
+		sd->max_vc = 1;
+	}
+
 	/* get and parse seninf_mux_camsv */
 	camsv_num = of_count_phandle_with_args(dev->of_node,
 		"mediatek,seninf_mux_camsv", NULL);
@@ -1165,6 +1196,8 @@ static int mtk_mipicsi_open(struct file *file)
 	if (ret)
 		v4l2_subdev_call(sd, core, s_power, 0);
 
+	get_subdev_link(mipicsi, &mipicsi->link, &mipicsi->link_reg_val);
+
 	pm_runtime_get_sync(&mipicsi->pdev->dev);
 
 fh_rel:
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
