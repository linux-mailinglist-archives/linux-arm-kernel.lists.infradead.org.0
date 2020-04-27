Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AE31B990E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3cMZgDuAqS4XOWTJewvYu3ROjYhTfMxUcsTZ4dUyrRw=; b=aaF0EBI/Ltimwf
	kNaS1xtR2vaoXLF/1LAjFtIlchcbqBypTmqHAe1qMpcbSayEhkxzEOhzJ5YZ1HG6XTvRffMBuK1uq
	iDEMXTxlmKQdr4uF/bty5zosGfqWNAuWmpxlaP8FVEHq0QYCcwbM7bkaLpDUecime6e3zcO5foMjL
	0MO5vkLmP/emipKOmnjxS98JiJFv+QoFRAVW4ScBWsMee+hLBF0xfqEiXHVzj28Ec/vh5vglvpYF9
	+Kil63l5EPRSD0a7IQZTO5JqeTQ+0M8k/0uaC/Ywxbp9G1gANf1lingEoUJQ8JFm+fQcmOaMwIZ6S
	pavDoRkC6tNOLjkm+h2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyZf-0007aO-B3; Mon, 27 Apr 2020 07:53:07 +0000
Received: from mail-m17613.qiye.163.com ([59.111.176.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyZV-0007Ys-Jn
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 07:52:59 +0000
Received: from ubuntu.localdomain (unknown [157.0.31.122])
 by mail-m17613.qiye.163.com (Hmail) with ESMTPA id 58894482675;
 Mon, 27 Apr 2020 15:52:45 +0800 (CST)
From: Bernard Zhao <bernard@vivo.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/mediatek: cleanup coding style in mediatek a bit
Date: Mon, 27 Apr 2020 00:52:38 -0700
Message-Id: <20200427075238.2828-1-bernard@vivo.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VPTkhCQkJCQk1KQ05IWVdZKFlBSE
 83V1ktWUFJV1kJDhceCFlBWTU0KTY6NyQpLjc#WQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MzI6Lyo4LzgzPEg8MwIrUUw5
 MBRPCg5VSlVKTkNMQkxIQk1OTU9NVTMWGhIXVRkeCRUaCR87DRINFFUYFBZFWVdZEgtZQVlKTkxV
 S1VISlVKSUlZV1kIAVlBSE9NSDcG
X-HM-Tid: 0a71ba9fc6f493bakuws58894482675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_005257_803279_7AE4CDA7 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.13 listed in list.dnswl.org]
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
Cc: opensource.kernel@vivo.com, Bernard Zhao <bernard@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This code change is to make code bit more readable.
Optimise array size align to HDMI macro define.
Add check if len is overange.

Signed-off-by: Bernard Zhao <bernard@vivo.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index ff43a3d80410..40fb5154ed5d 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -311,15 +311,15 @@ static void mtk_hdmi_hw_send_info_frame(struct mtk_hdmi *hdmi, u8 *buffer,
 	u8 checksum;
 	int ctrl_frame_en = 0;
 
-	frame_type = *buffer;
-	buffer += 1;
-	frame_ver = *buffer;
-	buffer += 1;
-	frame_len = *buffer;
-	buffer += 1;
-	checksum = *buffer;
-	buffer += 1;
+	frame_type = *buffer++;
+	frame_ver = *buffer++;
+	frame_len = *buffer++;
+	checksum = *buffer++;
 	frame_data = buffer;
+	if ((frame_len + HDMI_INFOFRAME_HEADER_SIZE) > len) {
+		dev_err(hdmi->dev, "Wrong frame len: %d\n", frame_len;
+		return;
+	}
 
 	dev_dbg(hdmi->dev,
 		"frame_type:0x%x,frame_ver:0x%x,frame_len:0x%x,checksum:0x%x\n",
@@ -982,7 +982,7 @@ static int mtk_hdmi_setup_avi_infoframe(struct mtk_hdmi *hdmi,
 					struct drm_display_mode *mode)
 {
 	struct hdmi_avi_infoframe frame;
-	u8 buffer[17];
+	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
 	ssize_t err;
 
 	err = drm_hdmi_avi_infoframe_from_display_mode(&frame,
@@ -1008,7 +1008,7 @@ static int mtk_hdmi_setup_spd_infoframe(struct mtk_hdmi *hdmi,
 					const char *product)
 {
 	struct hdmi_spd_infoframe frame;
-	u8 buffer[29];
+	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_SPD_INFOFRAME_SIZE];
 	ssize_t err;
 
 	err = hdmi_spd_infoframe_init(&frame, vendor, product);
@@ -1031,7 +1031,7 @@ static int mtk_hdmi_setup_spd_infoframe(struct mtk_hdmi *hdmi,
 static int mtk_hdmi_setup_audio_infoframe(struct mtk_hdmi *hdmi)
 {
 	struct hdmi_audio_infoframe frame;
-	u8 buffer[14];
+	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AUDIO_INFOFRAME_SIZE];
 	ssize_t err;
 
 	err = hdmi_audio_infoframe_init(&frame);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
