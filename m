Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB821EEAB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 20:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Jsi79chmsfpvWbbf3zHk6zBCR1wzciviVRg7GF3zPI=; b=owvR4Twvw2rljt
	/qeSI8cGfjpR/2B9mGTN1SgG4yyGEhwodDeVDkUgu4LKYFsgzursz//iY/ylKw+w0XaM1IjhkUUAB
	u9gzuZEc3/Cmn7lGO5hqCQmSX1HeQzpF+qLxypT01xiPV0JGtDxhWE1frcdWXUohbNQ7THwY9yna2
	A27cNa7TsiZ3FTcBC1+FGsQQ9NDKH0D7BcorCggopUgLZ3K/k4non63NQFMH7igYDg/FS8jBsIBu9
	EXI5oq/RmApOp4JVRqERAM5IxhIzrcTGNzX9KnyMQn9n+T7nh7eH2HPfwM1BjwCj9MYkYfluiiZGl
	6LQNNOerDKvHhRx9ez6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgv1k-0007X7-NZ; Thu, 04 Jun 2020 18:55:44 +0000
Received: from mailoutvs39.siol.net ([185.57.226.230] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgv1P-0007NX-E1
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 18:55:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id ED5AE5210C2;
 Thu,  4 Jun 2020 20:55:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id i_V4WpUo9TTS; Thu,  4 Jun 2020 20:55:15 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 7D9AE521138;
 Thu,  4 Jun 2020 20:55:15 +0200 (CEST)
Received: from kista.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 0FD1E52118B;
 Thu,  4 Jun 2020 20:55:13 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	mripard@kernel.org
Subject: [PATCH 1/3] media: uapi: h264: update reference lists
Date: Thu,  4 Jun 2020 20:57:43 +0200
Message-Id: <20200604185745.23568-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200604185745.23568-1-jernej.skrabec@siol.net>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_115523_627802_6AD12375 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.230 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When dealing with with interlaced frames, reference lists must tell if
each particular reference is meant for top or bottom field. This info
is currently not provided at all in the H264 related controls.

Make reference lists hold a structure which will also hold flags along
index into DPB array. Flags will tell if reference is meant for top or
bottom field.

Currently the only user of these lists is Cedrus which is just compile
fixed here. Actual usage of newly introduced flags will come in
following commit.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../media/v4l/ext-ctrls-codec.rst             | 40 ++++++++++++++++++-
 .../staging/media/sunxi/cedrus/cedrus_h264.c  |  6 +--
 include/media/h264-ctrls.h                    | 12 +++++-
 3 files changed, 51 insertions(+), 7 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index d0d506a444b1..6c36d298db20 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -1843,10 +1843,10 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
     * - __u32
       - ``slice_group_change_cycle``
       -
-    * - __u8
+    * - struct :c:type:`v4l2_h264_reference`
       - ``ref_pic_list0[32]``
       - Reference picture list after applying the per-slice modifications
-    * - __u8
+    * - struct :c:type:`v4l2_h264_reference`
       - ``ref_pic_list1[32]``
       - Reference picture list after applying the per-slice modifications
     * - __u32
@@ -1926,6 +1926,42 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
       - ``chroma_offset[32][2]``
       -
 
+``Picture Reference``
+
+.. c:type:: v4l2_h264_reference
+
+.. cssclass:: longtable
+
+.. flat-table:: struct v4l2_h264_reference
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u16
+      - ``flags``
+      - See :ref:`Picture Reference Flags <h264_reference_flags>`
+    * - __u8
+      - ``index``
+      -
+
+.. _h264_reference_flags:
+
+``Picture Reference Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_H264_REFERENCE_FLAG_TOP_FIELD``
+      - 0x00000001
+      -
+    * - ``V4L2_H264_REFERENCE_FLAG_BOTTOM_FIELD``
+      - 0x00000002
+      -
+
 ``V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS (struct)``
     Specifies the decode parameters (as extracted from the bitstream)
     for the associated H264 slice data. This includes the necessary
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index 54ee2aa423e2..cce527bbdf86 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -166,8 +166,8 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 
 static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
 				   struct cedrus_run *run,
-				   const u8 *ref_list, u8 num_ref,
-				   enum cedrus_h264_sram_off sram)
+				   const struct v4l2_h264_reference *ref_list,
+				   u8 num_ref, enum cedrus_h264_sram_off sram)
 {
 	const struct v4l2_ctrl_h264_decode_params *decode = run->h264.decode_params;
 	struct vb2_queue *cap_q;
@@ -188,7 +188,7 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
 		int buf_idx;
 		u8 dpb_idx;
 
-		dpb_idx = ref_list[i];
+		dpb_idx = ref_list[i].index;
 		dpb = &decode->dpb[dpb_idx];
 
 		if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
index 080fd1293c42..9b1cbc9bc38e 100644
--- a/include/media/h264-ctrls.h
+++ b/include/media/h264-ctrls.h
@@ -140,6 +140,14 @@ struct v4l2_h264_pred_weight_table {
 #define V4L2_H264_SLICE_FLAG_DIRECT_SPATIAL_MV_PRED	0x04
 #define V4L2_H264_SLICE_FLAG_SP_FOR_SWITCH		0x08
 
+#define V4L2_H264_REFERENCE_FLAG_TOP_FIELD		0x01
+#define V4L2_H264_REFERENCE_FLAG_BOTTOM_FIELD		0x02
+
+struct v4l2_h264_reference {
+	__u8 flags;
+	__u8 index;
+};
+
 struct v4l2_ctrl_h264_slice_params {
 	/* Size in bytes, including header */
 	__u32 size;
@@ -182,8 +190,8 @@ struct v4l2_ctrl_h264_slice_params {
 	 * Entries on each list are indices into
 	 * v4l2_ctrl_h264_decode_params.dpb[].
 	 */
-	__u8 ref_pic_list0[32];
-	__u8 ref_pic_list1[32];
+	struct v4l2_h264_reference ref_pic_list0[32];
+	struct v4l2_h264_reference ref_pic_list1[32];
 
 	__u32 flags;
 };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
