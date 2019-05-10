Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373AB19688
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 04:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zIO5C1aVRPuj1zQ+NtAD/qOgsswDzGMEYvLaKeaA74=; b=ltztlQB50W7/2G
	QFkryBKhgkMSDdZseaf675kRxALBY+KTys/gzdB7Qfg/YV/rxz6N5e637CJREzdt63sqPqtDBlD6G
	7bUS+o+vkxHMWr93ymeBKSxo5t14CazAq6UxAkVcab8sEsteKxSXEZAdUFWwuDmiHNEFmxAtv6B29
	UQ75KTHl1Mimp+afZIxTNybQ07OECf7p+OH/ig+7RHw5/e/bn1YsHaD8damkSVw5qjM0FYcJ8PAK/
	7w+kLTkGJsdPVPf74pv2TtavKMU3qfgQIEN9b3o9LyQiCXRSlkHbm8jpcFAVQcmUPS9i+WLSOKR+2
	UP1PIaMo8kSOIj2KYVog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOusy-0005JF-Ti; Fri, 10 May 2019 02:03:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOusR-0004mQ-K8; Fri, 10 May 2019 02:03:13 +0000
X-UUID: bbbf655888cc414ba8284bf50a06bf4a-20190509
X-UUID: bbbf655888cc414ba8284bf50a06bf4a-20190509
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 155204153; Thu, 09 May 2019 18:02:56 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 19:02:54 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 10:02:51 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 10:02:51 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hans.verkuil@cisco.com>,
 <laurent.pinchart+renesas@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC, V2,
 06/11] media: platform: Add Mediatek ISP P1 image & meta formats
Date: Fri, 10 May 2019 09:57:58 +0800
Message-ID: <20190510015755.51495-7-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <Jungo Lin <jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: DDCFB911C7EBFC73C66624BEE013F2DD79A012226F02260B9316A02168DCF4972000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_190311_754967_DCCD2DB0 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
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
Reply-To: Jungo Lin <jungo.lin@mediatek.com>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com, frankie.chiu@mediatek.com,
 Jungo Lin <jungo.lin@mediatek.com>, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, seraph.huang@mediatek.com,
 zwisler@chromium.org, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add packed/unpacked/full-g bayer format with 8/10/12/14 bit
for image output. Add Pass 1 (P1) specific meta formats for
parameter processing and 3A/other statistics.

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 include/uapi/linux/videodev2.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 1db220da3bcc..b79046d2d812 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -711,6 +711,20 @@ struct v4l2_pix_format {
 #define V4L2_PIX_FMT_IPU3_SGRBG10	v4l2_fourcc('i', 'p', '3', 'G') /* IPU3 packed 10-bit GRBG bayer */
 #define V4L2_PIX_FMT_IPU3_SRGGB10	v4l2_fourcc('i', 'p', '3', 'r') /* IPU3 packed 10-bit RGGB bayer */
 
+/* Vendor specific - Mediatek ISP compressed formats */
+#define V4L2_PIX_FMT_MTISP_U8	v4l2_fourcc('M', 'T', 'U', '8') /* Unpacked bayer format, 16-bit */
+#define V4L2_PIX_FMT_MTISP_U10  v4l2_fourcc('M', 'T', 'U', 'A') /* Unpacked bayer format, 16-bit */
+#define V4L2_PIX_FMT_MTISP_U12  v4l2_fourcc('M', 'T', 'U', 'C') /* Unpacked bayer format, 16-bit */
+#define V4L2_PIX_FMT_MTISP_U14  v4l2_fourcc('M', 'T', 'U', 'E') /* Unpacked bayer format, 16-bit */
+#define V4L2_PIX_FMT_MTISP_B8	v4l2_fourcc('M', 'T', 'B', '8') /* Packed   bayer format,  8-bit */
+#define V4L2_PIX_FMT_MTISP_B10  v4l2_fourcc('M', 'T', 'B', 'A') /* Packed   bayer format, 10-bit */
+#define V4L2_PIX_FMT_MTISP_B12  v4l2_fourcc('M', 'T', 'B', 'C') /* Packed   bayer format, 12-bit */
+#define V4L2_PIX_FMT_MTISP_B14  v4l2_fourcc('M', 'T', 'B', 'E') /* Packed   bayer format, 14-bit */
+#define V4L2_PIX_FMT_MTISP_F8	v4l2_fourcc('M', 'T', 'F', '8') /* Full-G   bayer format,  8-bit */
+#define V4L2_PIX_FMT_MTISP_F10  v4l2_fourcc('M', 'T', 'F', 'A') /* Full-G   bayer format, 10-bit */
+#define V4L2_PIX_FMT_MTISP_F12  v4l2_fourcc('M', 'T', 'F', 'C') /* Full-G   bayer format, 12-bit */
+#define V4L2_PIX_FMT_MTISP_F14  v4l2_fourcc('M', 'T', 'F', 'E') /* Full-G   bayer format, 14-bit */
+
 /* SDR formats - used only for Software Defined Radio devices */
 #define V4L2_SDR_FMT_CU8          v4l2_fourcc('C', 'U', '0', '8') /* IQ u8 */
 #define V4L2_SDR_FMT_CU16LE       v4l2_fourcc('C', 'U', '1', '6') /* IQ u16le */
@@ -732,6 +746,12 @@ struct v4l2_pix_format {
 #define V4L2_META_FMT_VSP1_HGT    v4l2_fourcc('V', 'S', 'P', 'T') /* R-Car VSP1 2-D Histogram */
 #define V4L2_META_FMT_UVC         v4l2_fourcc('U', 'V', 'C', 'H') /* UVC Payload Header metadata */
 #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
+/* Vendor specific - Mediatek ISP parameters for firmware */
+#define V4L2_META_FMT_MTISP_PARAMS v4l2_fourcc('M', 'T', 'f', 'p') /* ISP tuning parameters */
+#define V4L2_META_FMT_MTISP_3A	   v4l2_fourcc('M', 'T', 'f', 'a') /* AE/AWB histogram */
+#define V4L2_META_FMT_MTISP_AF	   v4l2_fourcc('M', 'T', 'f', 'f') /* AF histogram */
+#define V4L2_META_FMT_MTISP_LCS	   v4l2_fourcc('M', 'T', 'f', 'c') /* Local contrast enhanced statistics */
+#define V4L2_META_FMT_MTISP_LMV	   v4l2_fourcc('M', 'T', 'f', 'm') /* Local motion vector histogram */
 
 /* priv field value to indicates that subsequent fields are valid. */
 #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
