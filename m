Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD19B7B256
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 20:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDeQvmWA0X4C0mzgXctsSUjifqumwL34Xa2Gqr6h3tg=; b=N1OGGB8o6AJIR/
	cZDr88katU+VPb+zBb/APfkMUKi4HftC6cUJLz2YIw1Y6u0yzjQvhohe29IYXJf/x1V2vEu7Yy13e
	z80l8CtMuWVTkZwawArEaedXkJXkipaZeS14hq8HytiKZjsxyq3Ljo9DTfs9Q7JcUrvkYG8YEyba/
	72/XupkZKKD/58PhmrvgkeThrNX0WMRcDfhnHlFGj9PIdSUzhI06j9vGYGxjeLrumFVnYLlo57C0D
	+g7/mmWCRo3MTkPXSwuHlo6+Iv/y4bZeyMIQPrnCICBSdG9ApQONa5uHu1sK+Jn+s6/bTzVYOl8az
	SZUaWHkbaQYWqG67d7RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsX7o-0003By-M0; Tue, 30 Jul 2019 18:45:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsX77-0002xa-IL; Tue, 30 Jul 2019 18:44:46 +0000
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:c7f1:ce2f:ec1:e6e6:2e9f:e76e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 58AC528B914;
 Tue, 30 Jul 2019 19:44:38 +0100 (BST)
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v8 01/14] media: videodev2.h,
 v4l2-ioctl: add rkisp1 meta buffer format
Date: Tue, 30 Jul 2019 15:42:43 -0300
Message-Id: <20190730184256.30338-2-helen.koike@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730184256.30338-1-helen.koike@collabora.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_114445_741554_2CB65E25 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shunqian Zheng <zhengsq@rock-chips.com>

Add the Rockchip ISP1 specific processing parameter format
V4L2_META_FMT_RK_ISP1_PARAMS and metadata format
V4L2_META_FMT_RK_ISP1_STAT_3A for 3A.

Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
Acked-by: Hans Verkuil <hans.verkuil@cisco.com>
[update for upstream]
Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v8: None
Changes in v7:
- s/IPU3/RK_ISP1

 drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
 include/uapi/linux/videodev2.h       | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index bb5b4926538a..2df20801a299 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1330,6 +1330,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 	case V4L2_META_FMT_VSP1_HGT:	descr = "R-Car VSP1 2-D Histogram"; break;
 	case V4L2_META_FMT_UVC:		descr = "UVC Payload Header Metadata"; break;
 	case V4L2_META_FMT_D4XX:	descr = "Intel D4xx UVC Metadata"; break;
+	case V4L2_META_FMT_RK_ISP1_PARAMS:	descr = "Rockchip ISP1 3A params"; break;
+	case V4L2_META_FMT_RK_ISP1_STAT_3A:	descr = "Rockchip ISP1 3A statistics"; break;
 
 	default:
 		/* Compressed formats */
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 2427bc4d8eba..ae1e375a10d7 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -756,6 +756,10 @@ struct v4l2_pix_format {
 #define V4L2_META_FMT_UVC         v4l2_fourcc('U', 'V', 'C', 'H') /* UVC Payload Header metadata */
 #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
 
+/* Vendor specific - used for RK_ISP1 camera sub-system */
+#define V4L2_META_FMT_RK_ISP1_PARAMS	v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
+#define V4L2_META_FMT_RK_ISP1_STAT_3A	v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
+
 /* priv field value to indicates that subsequent fields are valid. */
 #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
