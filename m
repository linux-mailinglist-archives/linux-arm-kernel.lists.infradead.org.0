Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB01C195A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 22:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+SfyHdmfc4mIg7XUk6ueI1Ir5GQHgYtbSgIIvIRiMg=; b=PD7hCBGM4QXrJn
	O0ZVM+ftq4OwC9qWa9ptH/djXMkACL1a0a8iBVnS+DLoKv/BEbkTAR+e0HyLTZIJhNBZlLy6cZZxJ
	rywdkv4PJgiiJlsmsIxaEb2AxEeGzCpk7asDBgwYD3FJYJYUN7EQNRLIofEP+pyJgyy6WW7j10cY6
	sR3Wwla3x4OBTsdWs9foVUTWNTX9K+v2+DMS3DDe1ja2PqFYJCLuuRG/Hgl23UvW+eAV/JFpPM5rS
	KIy6NRsRLMF2N2fuo0/G8oJh+DgNYtI2JvrZKariM3y84J7eVCsyxN3CV+4rBHBISAWiVvvr9GR8T
	IP/VXKh0p4lKrrRko6Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEfOX-0002Mo-C4; Sun, 29 Sep 2019 20:02:13 +0000
Received: from mailoutvs14.siol.net ([185.57.226.205] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEfNS-0001Uh-3I
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 20:01:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 6DEBB5222FC;
 Sun, 29 Sep 2019 22:01:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ntXmbZGGPwrd; Sun, 29 Sep 2019 22:01:02 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 0DC7852233F;
 Sun, 29 Sep 2019 22:01:02 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 9093E5226F6;
 Sun, 29 Sep 2019 22:00:59 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 wens@csie.org
Subject: [PATCH v2 4/6] media: cedrus: Detect first slice of a frame
Date: Sun, 29 Sep 2019 22:00:21 +0200
Message-Id: <20190929200023.215831-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190929200023.215831-1-jernej.skrabec@siol.net>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_130106_345416_969CFBE1 
X-CRM114-Status: UNSURE (   8.08  )
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, jonas@kwiboo.se,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 boris.brezillon@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When codec supports multiple slices in one frame, VPU has to know when
first slice of each frame is being processed, presumably to correctly
clear/set data in auxiliary buffers.

Add first_slice field to cedrus_run structure and set it according to
timestamps of capture and output buffers. If timestamps are different,
it's first slice and viceversa.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h     | 1 +
 drivers/staging/media/sunxi/cedrus/cedrus_dec.c | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 2f017a651848..32cb38e541c6 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -70,6 +70,7 @@ struct cedrus_mpeg2_run {
 struct cedrus_run {
 	struct vb2_v4l2_buffer	*src;
 	struct vb2_v4l2_buffer	*dst;
+	bool first_slice;
 
 	union {
 		struct cedrus_h264_run	h264;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
index 56ca4c9ad01c..e49c3396ca4d 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
@@ -31,6 +31,8 @@ void cedrus_device_run(void *priv)
 
 	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+	run.first_slice = !run.dst->vb2_buf.copied_timestamp ||
+		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;
 
 	/* Apply request(s) controls if needed. */
 	src_req = run.src->vb2_buf.req_obj.req;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
