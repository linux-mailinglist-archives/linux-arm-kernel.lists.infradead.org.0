Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECFF15408F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16+C0DfC0l7w1lZ2ze5+sP+LP4agA5p+3K8pesx/HKQ=; b=VOwNQfC5YdmePI
	iD4yJyQN0QoJldShLxFj4PoOO6EbpnqFpAlMWlyIat6RpX39OjU7J+j3USG3WwLI5p3nOHUtSGc6J
	n6jTTm6s0lcoGJKVvQPoPAUDpnOn5C9fYorBj3EdasS3MDJvDkvTkJZfTkbhdJS0xapfhknuJCcsK
	K2tj2iGG30Inu0AQ4inqEfpLCUCnVegQsvCSlxYJGgaFUiUq6FB90Ya+6BSiBDLMX8KtmSEbNsByZ
	MLunhj6e5zXDhXbkwpI/8pWuaU2J1497a61xdfIVFBHcsE3lx6nkQVRJmYc3eJPdbjV6wqH+hcTUj
	Z/z1QlFsolUoC5xvmg8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izckQ-0002Rt-Ua; Thu, 06 Feb 2020 08:42:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcjZ-0001bP-Ef
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:42:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so6088619wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 00:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bO+zCL5u73T+GZvMtGYQd6cU1mmqrjPqTwiTFGUJPt0=;
 b=dqSY4Swk5kwvUBiYNuxRKAX+rM1OglI0SNSg7cNoET+JqfDT1u35POksuSfItDdnq9
 Yakon5N6BMHB6clLQx0ydxa9n5HWMWB3mB+fW1mM40Zn/p1Qx7L0bvW1UGlOIOhQUWG8
 YST1aMBgmvj8C7YqA81+zV5sNNDOnS0ittSztWSyTXtpasB+HxsD16izdic7BidSDvx8
 LEyD4eNAWkIhZobu9rr0vet0ZnQzjk75XnJF1Fxq/XOsdD33objJGFFd1xnoYl0g5tND
 4MZf7EjmCSZfiWfmB2+1tjZC36MpkIlqSo21ZiLvizqS8rtoBNByZ7cWbLV9sK5vpcTP
 PFbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bO+zCL5u73T+GZvMtGYQd6cU1mmqrjPqTwiTFGUJPt0=;
 b=E6o3RDul2uq9oHNFtthHtCgkpL8B0nOp1zTmS48lm89Jk3NxGMmNE1i3QoPr0o3fnc
 JmvkZR4Y8ZMgc6rrLN5de8iJ43ibHsCC4YuqEWDLKe7kEd53gsSLh0cDwjE3L7qIOydm
 SdJh38FwbhlEezR7v+MhjEb+0cP/na0M/1arvp/6A8eufL1r1C/xpAqljdNDVrxXLuqw
 XJz/t/7r7OB7uDmHqmW3xlvCgk+3HUUxu7ri+0d0qWdNwvpDCBW0W2PgFx5sQusieyPX
 1U4cBg4o5reM/eNXfbqmSPFnL+2OxAsVBf3GpYXVx2MqryBTCqZCUNZC7FxAOr2qrMpe
 8Z5A==
X-Gm-Message-State: APjAAAUvjmL02unb4g1YLM42CqCFS6E97gFHVZmR71fuqhjTZ4HZfyv/
 1qk/iriV/jayrPT45QpXP9fMHA==
X-Google-Smtp-Source: APXvYqygNHe40VSvUcWGy2GnvPydZHqaoGbCtz/werL32AQ0/Q6fEyy+VAhHxPoefbyErchEQx1PBQ==
X-Received: by 2002:a5d:4e91:: with SMTP id e17mr2411529wru.233.1580978519932; 
 Thu, 06 Feb 2020 00:41:59 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:7d33:17f7:8097:ecc7])
 by smtp.gmail.com with ESMTPSA id r1sm3222760wrx.11.2020.02.06.00.41.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 00:41:59 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v4 4/5] media: meson: vdec: add VP9 input support
Date: Thu,  6 Feb 2020 09:41:51 +0100
Message-Id: <20200206084152.7070-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200206084152.7070-1-narmstrong@baylibre.com>
References: <20200206084152.7070-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_004201_542097_4266DD55 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
