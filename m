Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929779A075
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7jNnPtzxfM38/aO6aAFbU9EMyHr7b4FG39CxbnU7TY=; b=lPfEKfaNyzmx3N
	lPkOG5PN/wURrNqMXUojlPC7ZeB2R8gwtF64b8mSlpojUnDIGoYYRw6o7HolGwzxObtI17LbmzTBa
	/vVFcHcX6AdTY3ZhwgF90Sk46tTXXC5eJki6uNlLVHilTV7HfXTy+wWvZJCzyUG/jJ8NI1DdKFHBz
	PvfPBj/wH1kIUmyDv0rt2iwxdf+7t0ZwDsS99gB79yj6TQhoroolWrb8+WgHNmiW//AbymgH1y2j7
	yVWpV9pt0YTwBri08ML2Te9EAJt+l3zHTcBdtPrOJ24lOi86TtgvP9GjPzsxU/UovbMRha/gb57mB
	J1c/2JIrTioU6XTyyxoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0t3L-0001GZ-Fa; Thu, 22 Aug 2019 19:47:23 +0000
Received: from mailoutvs14.siol.net ([185.57.226.205] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0t1W-0007vN-Pv
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 19:45:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 4AD9E5249EB;
 Thu, 22 Aug 2019 21:45:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 42uRjQLJpET2; Thu, 22 Aug 2019 21:45:29 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id F1F6252481F;
 Thu, 22 Aug 2019 21:45:28 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 8A5B15249EF;
 Thu, 22 Aug 2019 21:45:26 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
Subject: [PATCH 8/8] media: cedrus: Add support for V4L2_DEC_CMD_FLUSH
Date: Thu, 22 Aug 2019 21:45:00 +0200
Message-Id: <20190822194500.2071-9-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190822194500.2071-1-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_124531_226330_09FDB643 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.205 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, pawel@osciak.com,
 acourbot@chromium.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 wens@csie.org, tfiga@chromium.org, kyungmin.park@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 ezequiel@collabora.com, linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This command is useful for explicitly flushing last decoded frame.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../staging/media/sunxi/cedrus/cedrus_video.c | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 5153b2bba21e..9eae69d5741c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -331,6 +331,37 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
 	return 0;
 }
 
+static int cedrus_try_decoder_cmd(struct file *file, void *fh,
+				  struct v4l2_decoder_cmd *dc)
+{
+	if (dc->cmd != V4L2_DEC_CMD_FLUSH)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int cedrus_decoder_cmd(struct file *file, void *fh,
+			      struct v4l2_decoder_cmd *dc)
+{
+	struct cedrus_ctx *ctx = cedrus_file2ctx(file);
+	struct vb2_v4l2_buffer *out_vb, *cap_vb;
+	int ret;
+
+	ret = cedrus_try_decoder_cmd(file, fh, dc);
+	if (ret < 0)
+		return ret;
+
+	out_vb = v4l2_m2m_last_src_buf(ctx->fh.m2m_ctx);
+	cap_vb = v4l2_m2m_last_dst_buf(ctx->fh.m2m_ctx);
+
+	if (out_vb)
+		out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
+	else if (cap_vb && cap_vb->is_held)
+		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
+
+	return 0;
+}
+
 const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
 	.vidioc_querycap		= cedrus_querycap,
 
@@ -355,6 +386,9 @@ const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
 	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
 	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
 
+	.vidioc_try_decoder_cmd		= cedrus_try_decoder_cmd,
+	.vidioc_decoder_cmd		= cedrus_decoder_cmd,
+
 	.vidioc_subscribe_event		= v4l2_ctrl_subscribe_event,
 	.vidioc_unsubscribe_event	= v4l2_event_unsubscribe,
 };
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
