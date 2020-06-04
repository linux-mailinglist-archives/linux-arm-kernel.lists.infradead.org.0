Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D581EE608
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4VMmE4OfLlSc7ky5vTw2ajrJU6XtU/IDvMQR3r+I+I=; b=a1Ax8qQo0lIrIR
	d1VaJe/SUUpGnHd2JQCcnagMcWcfFaX+P0ZcjordB9ljsUYZCqfFmfRzkPJFETHvZIQ2AjlMmQA65
	abVaLNzZfbB5amEXpiOsNq/IRYNgi/Dr5oIjUC9/J4U8PvYVrgbhMnd9R79UjdnmetvsAIPslS8Tk
	8LE8C6S+TC7IfNRMmdCNr+7gbhuW89FOpYvwCloKRHEkZLiIfWwynj3V7nVLC4OQ1trH86a3Otoz2
	eErJ0OSmJYt0AfUby9VN83P5bR/NHb4dmvG/Y+IriGok0T6joXHPLm7eMPWfwHffb8jTdcCc/OIVb
	BUu/saveBNHb2rgzoMbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqKS-0002C1-A7; Thu, 04 Jun 2020 13:54:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqJK-00014E-6E
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:53:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id f5so5730985wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+BSw9RksbOmCX0ZiZaPq1aouN2XnZSd2sB8Ac6JkINs=;
 b=FjgCGe7hkzS3/mzxrmhspP75KvYPTn74cr+q/XOubxsiXcIa51+V1mFZhPk60V5h4b
 SELKDRXZ6u5XyDDYJ9dWRMhYXJEXj7xsdpKT747vV9Aw7xNNQUjH5qUaNBBe4UGn3Ypa
 58XafZtYVrEogQZm0CmV//h+MEKYVJJKLGO86pT48Js9WX10i4i/ekraB55kyJ2lnL4L
 RrzoTFjQO3zK1PyyKWJhM4gV7ajnUyTs6KI34PmKFX+O1BAZiTIek3BZt93f9SGU+vkK
 2DBuun9mkK+kHiCdg+5MI/vhdQmH9vyNHA6+Lv6t4uJREwuwQSwZc238lw6sLXpYLEuB
 Lpzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+BSw9RksbOmCX0ZiZaPq1aouN2XnZSd2sB8Ac6JkINs=;
 b=KUnk1+qUt6PkXh4ZrzxzMEswpVMN5/2LIBdlcbj4jvN68ZK19VYkREy0wiEA7A5T8c
 gSjOLZiLuF+rpcoIkep3vItjhsaFnZ41tzWuFe8/kJ2UkJbaNLFrJhxhFzPKdfXVP7O5
 OTU3DhAUx4USyAGmbcEuwJy8KG8YBKTQp+tz0JqCz3tIjTpBtZWp17XFOict8+5CsVl8
 qKy5VLS4CZuEOkibrus6TjiGeQVt4XOdXUWAfab/4Srlqaq0LCn8HFx7ukN01nwMsEpO
 kuNZvZx9l8C6TW/utNnCZNS69pVNsrTF22mOFGwgwNMRBN+OIqLY5FT2EjhvgNq7Jfw5
 ysCQ==
X-Gm-Message-State: AOAM533BaZIXfzBejQoeNE2Q9Ud9pid0XUBcJjn/4wE+SMK3cZ1hH+oL
 HoZahS9Kd6iuLTMuYgcQw3C4ag==
X-Google-Smtp-Source: ABdhPJxL1i8fyC6k2QOVONJR/UbQHuoBJHrZumYxlKfi1W617c7BWZnFVAOQBYJZ+p6dKi+wb5hZ4Q==
X-Received: by 2002:a7b:c358:: with SMTP id l24mr4402485wmj.13.1591278812670; 
 Thu, 04 Jun 2020 06:53:32 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 i74sm8185599wri.49.2020.06.04.06.53.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:53:31 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: hverkuil-cisco@xs4all.nl
Subject: [PATCH 3/5] media: meson: vdec: update compressed buffer helpers
Date: Thu,  4 Jun 2020 15:53:15 +0200
Message-Id: <20200604135317.9235-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200604135317.9235-1-narmstrong@baylibre.com>
References: <20200604135317.9235-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065334_251182_2CD2D558 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Jourdan <mjourdan@baylibre.com>

The actual compressed buffer helpers were very basic and only used
to enabled downsampling when decoding a 10bit stream.

Update and rename these helpers to handle the complete compressed buffer
output buffer size and alignment for 8bit and 10bit streams.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../media/meson/vdec/codec_hevc_common.c      | 28 ++++++++++++---
 drivers/staging/media/meson/vdec/codec_vp9.c  |  7 ++--
 .../staging/media/meson/vdec/vdec_helpers.c   | 35 +++++++++++++------
 .../staging/media/meson/vdec/vdec_helpers.h   |  8 +++--
 4 files changed, 58 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/codec_hevc_common.c b/drivers/staging/media/meson/vdec/codec_hevc_common.c
index 0315cc0911cd..c9bf67aa2668 100644
--- a/drivers/staging/media/meson/vdec/codec_hevc_common.c
+++ b/drivers/staging/media/meson/vdec/codec_hevc_common.c
@@ -30,8 +30,11 @@ const u16 vdec_hevc_parser_cmd[] = {
 void codec_hevc_setup_decode_head(struct amvdec_session *sess, int is_10bit)
 {
 	struct amvdec_core *core = sess->core;
-	u32 body_size = amvdec_am21c_body_size(sess->width, sess->height);
-	u32 head_size = amvdec_am21c_head_size(sess->width, sess->height);
+	u32 use_mmu = codec_hevc_use_mmu(core->platform->revision,
+					 sess->pixfmt_cap, is_10bit);
+	u32 body_size = amvdec_amfbc_body_size(sess->width, sess->height,
+					       is_10bit, use_mmu);
+	u32 head_size = amvdec_amfbc_head_size(sess->width, sess->height);
 
 	if (!codec_hevc_use_fbc(sess->pixfmt_cap, is_10bit)) {
 		/* Enable 2-plane reference read mode */
@@ -154,7 +157,12 @@ void codec_hevc_free_fbc_buffers(struct amvdec_session *sess,
 				 struct codec_hevc_common *comm)
 {
 	struct device *dev = sess->core->dev;
-	u32 am21_size = amvdec_am21c_size(sess->width, sess->height);
+	u32 use_mmu = codec_hevc_use_mmu(sess->core->platform->revision,
+					 sess->pixfmt_cap,
+					 sess->bitdepth == 10 ? 1 : 0);
+	u32 am21_size = amvdec_amfbc_size(sess->width, sess->height,
+					  sess->bitdepth == 10 ? 1 : 0,
+					  use_mmu);
 	int i;
 
 	for (i = 0; i < MAX_REF_PIC_NUM; ++i) {
@@ -173,7 +181,12 @@ static int codec_hevc_alloc_fbc_buffers(struct amvdec_session *sess,
 {
 	struct device *dev = sess->core->dev;
 	struct v4l2_m2m_buffer *buf;
-	u32 am21_size = amvdec_am21c_size(sess->width, sess->height);
+	u32 use_mmu = codec_hevc_use_mmu(sess->core->platform->revision,
+					 sess->pixfmt_cap,
+					 sess->bitdepth == 10 ? 1 : 0);
+	u32 am21_size = amvdec_amfbc_size(sess->width, sess->height,
+					  sess->bitdepth == 10 ? 1 : 0,
+					  use_mmu);
 
 	v4l2_m2m_for_each_dst_buf(sess->m2m_ctx, buf) {
 		u32 idx = buf->vb.vb2_buf.index;
@@ -280,7 +293,12 @@ void codec_hevc_fill_mmu_map(struct amvdec_session *sess,
 			     struct codec_hevc_common *comm,
 			     struct vb2_buffer *vb)
 {
-	u32 size = amvdec_am21c_size(sess->width, sess->height);
+	u32 use_mmu = codec_hevc_use_mmu(sess->core->platform->revision,
+					 sess->pixfmt_cap,
+					 sess->bitdepth == 10 ? 1 : 0);
+	u32 size = amvdec_amfbc_size(sess->width, sess->height,
+				     sess->bitdepth == 10 ? 1 : 0,
+				     use_mmu);
 	u32 nb_pages = size / PAGE_SIZE;
 	u32 *mmu_map = comm->mmu_map_vaddr;
 	u32 first_page;
diff --git a/drivers/staging/media/meson/vdec/codec_vp9.c b/drivers/staging/media/meson/vdec/codec_vp9.c
index 4c6a644ab1a7..a810c50f3a39 100644
--- a/drivers/staging/media/meson/vdec/codec_vp9.c
+++ b/drivers/staging/media/meson/vdec/codec_vp9.c
@@ -1147,6 +1147,8 @@ static void codec_vp9_set_mc(struct amvdec_session *sess,
 			     struct codec_vp9 *vp9)
 {
 	struct amvdec_core *core = sess->core;
+	u32 use_mmu = codec_hevc_use_mmu(core->platform->revision,
+					 sess->pixfmt_cap, vp9->is_10bit);
 	u32 scale = 0;
 	u32 sz;
 	int i;
@@ -1166,8 +1168,9 @@ static void codec_vp9_set_mc(struct amvdec_session *sess,
 		    vp9->frame_refs[i]->height != vp9->height)
 			scale = 1;
 
-		sz = amvdec_am21c_body_size(vp9->frame_refs[i]->width,
-					    vp9->frame_refs[i]->height);
+		sz = amvdec_amfbc_body_size(vp9->frame_refs[i]->width,
+					    vp9->frame_refs[i]->height,
+					    vp9->is_10bit, use_mmu);
 
 		amvdec_write_dos(core, VP9D_MPP_REFINFO_DATA,
 				 vp9->frame_refs[i]->width);
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index eed7a929c5d0..320cac1ed03e 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -50,32 +50,47 @@ void amvdec_write_parser(struct amvdec_core *core, u32 reg, u32 val)
 }
 EXPORT_SYMBOL_GPL(amvdec_write_parser);
 
-/* 4 KiB per 64x32 block */
-u32 amvdec_am21c_body_size(u32 width, u32 height)
+/* AMFBC body is made out of 64x32 blocks with varying block size */
+u32 amvdec_amfbc_body_size(u32 width, u32 height, u32 is_10bit, u32 use_mmu)
 {
 	u32 width_64 = ALIGN(width, 64) / 64;
 	u32 height_32 = ALIGN(height, 32) / 32;
+	u32 blk_size = 4096;
 
-	return SZ_4K * width_64 * height_32;
+	if (!is_10bit) {
+		if (use_mmu)
+			blk_size = 3200;
+		else
+			blk_size = 3072;
+	}
+
+	return blk_size * width_64 * height_32;
 }
-EXPORT_SYMBOL_GPL(amvdec_am21c_body_size);
+EXPORT_SYMBOL_GPL(amvdec_amfbc_body_size);
 
 /* 32 bytes per 128x64 block */
-u32 amvdec_am21c_head_size(u32 width, u32 height)
+u32 amvdec_amfbc_head_size(u32 width, u32 height)
 {
 	u32 width_128 = ALIGN(width, 128) / 128;
 	u32 height_64 = ALIGN(height, 64) / 64;
 
 	return 32 * width_128 * height_64;
 }
-EXPORT_SYMBOL_GPL(amvdec_am21c_head_size);
+EXPORT_SYMBOL_GPL(amvdec_amfbc_head_size);
+
+u32 amvdec_amfbc_size(u32 width, u32 height, u32 is_10bit, u32 use_mmu)
+{
+	return ALIGN(amvdec_amfbc_body_size(width, height, is_10bit, use_mmu) +
+		     amvdec_amfbc_head_size(width, height), SZ_64K);
+}
+EXPORT_SYMBOL_GPL(amvdec_amfbc_size);
 
-u32 amvdec_am21c_size(u32 width, u32 height)
+u32 amvdec_is_dst_fbc(struct amvdec_session *sess)
 {
-	return ALIGN(amvdec_am21c_body_size(width, height) +
-		     amvdec_am21c_head_size(width, height), SZ_64K);
+	return sess->pixfmt_cap == V4L2_PIX_FMT_YUV420_8BIT ||
+	       sess->pixfmt_cap == V4L2_PIX_FMT_YUV420_10BIT;
 }
-EXPORT_SYMBOL_GPL(amvdec_am21c_size);
+EXPORT_SYMBOL_GPL(amvdec_is_dst_fbc);
 
 static int canvas_alloc(struct amvdec_session *sess, u8 *canvas_id)
 {
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.h b/drivers/staging/media/meson/vdec/vdec_helpers.h
index f059cf195cca..c1666125fe4c 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.h
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.h
@@ -27,9 +27,11 @@ void amvdec_clear_dos_bits(struct amvdec_core *core, u32 reg, u32 val);
 u32 amvdec_read_parser(struct amvdec_core *core, u32 reg);
 void amvdec_write_parser(struct amvdec_core *core, u32 reg, u32 val);
 
-u32 amvdec_am21c_body_size(u32 width, u32 height);
-u32 amvdec_am21c_head_size(u32 width, u32 height);
-u32 amvdec_am21c_size(u32 width, u32 height);
+/* Helpers for the Amlogic compressed framebuffer format */
+u32 amvdec_amfbc_body_size(u32 width, u32 height, u32 is_10bit, u32 use_mmu);
+u32 amvdec_amfbc_head_size(u32 width, u32 height);
+u32 amvdec_amfbc_size(u32 width, u32 height, u32 is_10bit, u32 use_mmu);
+u32 amvdec_is_dst_fbc(struct amvdec_session *sess);
 
 /**
  * amvdec_dst_buf_done_idx() - Signal that a buffer is done decoding
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
