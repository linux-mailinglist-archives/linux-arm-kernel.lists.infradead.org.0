Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 583D5164687
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:11:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16+C0DfC0l7w1lZ2ze5+sP+LP4agA5p+3K8pesx/HKQ=; b=Oj037u5fkwOzeZ
	GStQNVFxeWf/v3+6jW+trUhR8tyBw59L1ZVx+mrjCpEEHR62iMOa9oBMESVsuxP2hWBUCgSJkvepm
	mOw4KtTfSQUd4QhnEtiYCNF2JGwe/wJAy+aJEorcKAMJTXsc6ov0QxDKHx6CN/wXxdJDuQ/KK6rh7
	6D2AeUAOUtGEeOjqP1pspKBQUF574MtWmAco7da0aDuyGw3mEQBP0n746b3Xixew4SATOHs44ZQte
	rfqEhWyTe31kGyppyiVKD5uqK670KrVpBL05DFpP+TG0+PgZwkQOjqmHmyewmZX20XVrep1Su9+77
	Qd1BWpCKsC0NwJsVTTSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Q4N-0006Nc-Pj; Wed, 19 Feb 2020 14:11:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Q3I-0005Ky-8d
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:10:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so808297wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:10:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bO+zCL5u73T+GZvMtGYQd6cU1mmqrjPqTwiTFGUJPt0=;
 b=keYetL6IKdKjosctUtfX0Up8yFA+EqwuNLnjprEIc0PeBM3/aAWaGEBV2kJ3+VPAwP
 h2dIyVemookn9f3QYWHGeb1QJMnmydBojCniZTLwbJysDLvJ4nNZ+iiLed9Zhwl+2+i3
 LaWHnzxBpNFgM8xH6beIDIVaIF2uC3r4cRbnf9o0YUx3Pzz6G7fDLsp1Fr2jGC1If71i
 Z8ZEAfj7QxBueUBvjBUYQzDVPitAEAcm63H1pwkd/VdOVLYW+4YTAzrLxkDn3Os6wjwJ
 qKg5vL/oqEOATZsUd1F0/6aCMlq6QO13r/4IhA0knL72YTRy/Aiv2QFGR0C6t7gTbnBy
 09WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bO+zCL5u73T+GZvMtGYQd6cU1mmqrjPqTwiTFGUJPt0=;
 b=I4gu4irSZc1SZYK7iuwCsr6y2ZAuHZ3daJdNSSd686FwFqrY7oWTeRgptlMU3Fexh3
 zudLyD8S6m4gYXLgr6UwhvcsTu8M4RVzY6VrN4X/lJkYBrCXWUAKQOCirU0tetorD5Cn
 DnCNGf8/ZatFxezSxlxU7xNXv/ZbREwONyCNcOZbuRViTT8LS++QHZtkEJmcqWB0+FOL
 eGHKz6dy4hhP8pFrCMv3+p4dCR6SKYD3TPA5T7TL7YCfGDwaAQJ+nYeJdwd2c6VkiENs
 pEB73bwEuqzANC/TJ8TwyWr9+GJKOEAuFVuRChYpVO/sTYi9pw572nkLn+5alGt7RtKN
 hhyA==
X-Gm-Message-State: APjAAAXtfySgx2UvyF9GAUx6iXOv32aO0XxLPWAxb5boipan4ggPC0tN
 wDCLdGnhzZPNt1NzUzHBM4VdZg==
X-Google-Smtp-Source: APXvYqzc/U2Yw16h4S7hTMYgsTEm+C8lAD5BiAA2G/gcI391coPZ4a8ehDCsSXuglNsh2CZczLC+lw==
X-Received: by 2002:a1c:5f06:: with SMTP id t6mr10530418wmb.32.1582121408857; 
 Wed, 19 Feb 2020 06:10:08 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id
 m68sm3182789wme.48.2020.02.19.06.10.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 06:10:08 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v5 4/5] media: meson: vdec: add VP9 input support
Date: Wed, 19 Feb 2020 15:09:57 +0100
Message-Id: <20200219140958.23542-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200219140958.23542-1-narmstrong@baylibre.com>
References: <20200219140958.23542-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_061012_370036_18DDC4AE 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Amlogic VP9 decoder requires an additional 16-byte payload before every
frame header.

The source buffer is updated in-place, then given to the Parser FIFO DMA.

The FIFO DMA copies the blocks into the 16MiB parser ring buffer, then parses
and copies the slice into the decoder "workspace".

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/staging/media/meson/vdec/esparser.c | 150 +++++++++++++++++++-
 1 file changed, 146 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/esparser.c b/drivers/staging/media/meson/vdec/esparser.c
index adc5c1e81a4c..4a9aad3fafeb 100644
--- a/drivers/staging/media/meson/vdec/esparser.c
+++ b/drivers/staging/media/meson/vdec/esparser.c
@@ -52,6 +52,7 @@
 #define PARSER_VIDEO_HOLE	0x90
 
 #define SEARCH_PATTERN_LEN	512
+#define VP9_HEADER_SIZE		16
 
 static DECLARE_WAIT_QUEUE_HEAD(wq);
 static int search_done;
@@ -74,14 +75,121 @@ static irqreturn_t esparser_isr(int irq, void *dev)
 	return IRQ_HANDLED;
 }
 
+/**
+ * VP9 frame headers need to be appended by a 16-byte long
+ * Amlogic custom header
+ */
+static int vp9_update_header(struct amvdec_core *core, struct vb2_buffer *buf)
+{
+	u8 *dp;
+	u8 marker;
+	int dsize;
+	int num_frames, cur_frame;
+	int cur_mag, mag, mag_ptr;
+	int frame_size[8], tot_frame_size[8];
+	int total_datasize = 0;
+	int new_frame_size;
+	unsigned char *old_header = NULL;
+
+	dp = (uint8_t *)vb2_plane_vaddr(buf, 0);
+	dsize = vb2_get_plane_payload(buf, 0);
+
+	if (dsize == vb2_plane_size(buf, 0)) {
+		dev_warn(core->dev, "%s: unable to update header\n", __func__);
+		return 0;
+	}
+
+	marker = dp[dsize - 1];
+	if ((marker & 0xe0) == 0xc0) {
+		num_frames = (marker & 0x7) + 1;
+		mag = ((marker >> 3) & 0x3) + 1;
+		mag_ptr = dsize - mag * num_frames - 2;
+		if (dp[mag_ptr] != marker)
+			return 0;
+
+		mag_ptr++;
+		for (cur_frame = 0; cur_frame < num_frames; cur_frame++) {
+			frame_size[cur_frame] = 0;
+			for (cur_mag = 0; cur_mag < mag; cur_mag++) {
+				frame_size[cur_frame] |=
+					(dp[mag_ptr] << (cur_mag * 8));
+				mag_ptr++;
+			}
+			if (cur_frame == 0)
+				tot_frame_size[cur_frame] =
+					frame_size[cur_frame];
+			else
+				tot_frame_size[cur_frame] =
+					tot_frame_size[cur_frame - 1] +
+					frame_size[cur_frame];
+			total_datasize += frame_size[cur_frame];
+		}
+	} else {
+		num_frames = 1;
+		frame_size[0] = dsize;
+		tot_frame_size[0] = dsize;
+		total_datasize = dsize;
+	}
+
+	new_frame_size = total_datasize + num_frames * VP9_HEADER_SIZE;
+
+	if (new_frame_size >= vb2_plane_size(buf, 0)) {
+		dev_warn(core->dev, "%s: unable to update header\n", __func__);
+		return 0;
+	}
+
+	for (cur_frame = num_frames - 1; cur_frame >= 0; cur_frame--) {
+		int framesize = frame_size[cur_frame];
+		int framesize_header = framesize + 4;
+		int oldframeoff = tot_frame_size[cur_frame] - framesize;
+		int outheaderoff =  oldframeoff + cur_frame * VP9_HEADER_SIZE;
+		u8 *fdata = dp + outheaderoff;
+		u8 *old_framedata = dp + oldframeoff;
+
+		memmove(fdata + VP9_HEADER_SIZE, old_framedata, framesize);
+
+		fdata[0] = (framesize_header >> 24) & 0xff;
+		fdata[1] = (framesize_header >> 16) & 0xff;
+		fdata[2] = (framesize_header >> 8) & 0xff;
+		fdata[3] = (framesize_header >> 0) & 0xff;
+		fdata[4] = ((framesize_header >> 24) & 0xff) ^ 0xff;
+		fdata[5] = ((framesize_header >> 16) & 0xff) ^ 0xff;
+		fdata[6] = ((framesize_header >> 8) & 0xff) ^ 0xff;
+		fdata[7] = ((framesize_header >> 0) & 0xff) ^ 0xff;
+		fdata[8] = 0;
+		fdata[9] = 0;
+		fdata[10] = 0;
+		fdata[11] = 1;
+		fdata[12] = 'A';
+		fdata[13] = 'M';
+		fdata[14] = 'L';
+		fdata[15] = 'V';
+
+		if (!old_header) {
+			/* nothing */
+		} else if (old_header > fdata + 16 + framesize) {
+			dev_dbg(core->dev, "%s: data has gaps, setting to 0\n",
+				__func__);
+			memset(fdata + 16 + framesize, 0,
+			       (old_header - fdata + 16 + framesize));
+		} else if (old_header < fdata + 16 + framesize) {
+			dev_err(core->dev, "%s: data overwritten\n", __func__);
+		}
+		old_header = fdata;
+	}
+
+	return new_frame_size;
+}
+
 /* Pad the packet to at least 4KiB bytes otherwise the VDEC unit won't trigger
  * ISRs.
  * Also append a start code 000001ff at the end to trigger
  * the ESPARSER interrupt.
  */
-static u32 esparser_pad_start_code(struct amvdec_core *core, struct vb2_buffer *vb)
+static u32 esparser_pad_start_code(struct amvdec_core *core,
+				   struct vb2_buffer *vb,
+				   u32 payload_size)
 {
-	u32 payload_size = vb2_get_plane_payload(vb, 0);
 	u32 pad_size = 0;
 	u8 *vaddr = vb2_plane_vaddr(vb, 0);
 
@@ -186,13 +294,35 @@ esparser_queue(struct amvdec_session *sess, struct vb2_v4l2_buffer *vbuf)
 	int ret;
 	struct vb2_buffer *vb = &vbuf->vb2_buf;
 	struct amvdec_core *core = sess->core;
+	struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;
 	u32 payload_size = vb2_get_plane_payload(vb, 0);
 	dma_addr_t phy = vb2_dma_contig_plane_dma_addr(vb, 0);
+	u32 num_dst_bufs = 0;
 	u32 offset;
 	u32 pad_size;
 
-	if (esparser_vififo_get_free_space(sess) < payload_size)
+	/*
+	 * When max ref frame is held by VP9, this should be -= 3 to prevent a
+	 * shortage of CAPTURE buffers on the decoder side.
+	 * For the future, a good enhancement of the way this is handled could
+	 * be to notify new capture buffers to the decoding modules, so that
+	 * they could pause when there is no capture buffer available and
+	 * resume on this notification.
+	 */
+	if (sess->fmt_out->pixfmt == V4L2_PIX_FMT_VP9) {
+		if (codec_ops->num_pending_bufs)
+			num_dst_bufs = codec_ops->num_pending_bufs(sess);
+
+		num_dst_bufs += v4l2_m2m_num_dst_bufs_ready(sess->m2m_ctx);
+		if (sess->fmt_out->pixfmt == V4L2_PIX_FMT_VP9)
+			num_dst_bufs -= 3;
+
+		if (esparser_vififo_get_free_space(sess) < payload_size ||
+		    atomic_read(&sess->esparser_queued_bufs) >= num_dst_bufs)
+			return -EAGAIN;
+	} else if (esparser_vififo_get_free_space(sess) < payload_size) {
 		return -EAGAIN;
+	}
 
 	v4l2_m2m_src_buf_remove_by_buf(sess->m2m_ctx, vbuf);
 
@@ -206,7 +336,19 @@ esparser_queue(struct amvdec_session *sess, struct vb2_v4l2_buffer *vbuf)
 	vbuf->field = V4L2_FIELD_NONE;
 	vbuf->sequence = sess->sequence_out++;
 
-	pad_size = esparser_pad_start_code(core, vb);
+	if (sess->fmt_out->pixfmt == V4L2_PIX_FMT_VP9) {
+		payload_size = vp9_update_header(core, vb);
+
+		/* If unable to alter buffer to add headers */
+		if (payload_size == 0) {
+			amvdec_remove_ts(sess, vb->timestamp);
+			v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
+
+			return 0;
+		}
+	}
+
+	pad_size = esparser_pad_start_code(core, vb, payload_size);
 	ret = esparser_write_data(core, phy, payload_size + pad_size);
 
 	if (ret <= 0) {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
