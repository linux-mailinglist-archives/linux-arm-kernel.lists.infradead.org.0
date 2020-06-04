Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F22CD1EE114
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:20:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHvOf/hyBUuGRrkDrt99gIitcggVB2z4yaioTMjRx78=; b=FRZEqQFu80TvHD
	qldjn6ioZp34ACB9mQPAOclqRPyJpGT7C4iJO7u6HYT8hKWK7+5hQZIx9R/ZaZ3FWvrgXncBjHrYm
	v6i5Vfeo7vuEZ0WccdU8IAKTsNPvQLErbVM+V6NAz0e7a6OC/7dUbkeGHP3bDZTj5WpYxIJbvRqKh
	UWxyaKmoQVuRl8nBtVyArIifgNcTc0cMzIeGyXhdED+uvKXZ8urbonpipD24dolSvHbXBhh29DHb6
	NmHXVIgXqSDYaszYXKwknyO9xtme7UZ5ovjuAsNlH45dmOSu3rtmcVtC+ZuDPU+P3jDM/Wt93577z
	GOFK3f9RcTSGCU9Wg+8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgm2U-0002lQ-LZ; Thu, 04 Jun 2020 09:19:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgm12-0001Nr-JL; Thu, 04 Jun 2020 09:18:27 +0000
X-UUID: 59df2de868d04be9a892990b7d9ccef6-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=B/w2ehlpdSMG2o1JAKklslgzvugqL0CKOQBnvbbutuc=; 
 b=cAwzOBgx8ZER1qiiq9b426/Z7Z0L4bqPJZEuYpOLuQ/uQZbDhBLFPRHVegfJOMk7AcRr1HiYVKWlyE3ab3h0FZCYuKtjGB7Un/cqOs4Phgex3IGhNndw3TnajiPHHL042hutb1n3TmOnct7Io3A5YYbO7xS1pksFC0tJa3IdWGk=;
X-UUID: 59df2de868d04be9a892990b7d9ccef6-20200604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 779172007; Thu, 04 Jun 2020 01:18:07 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 02:08:12 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 17:08:09 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 17:08:08 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH RESEND v9 08/18] media: platform: Cancel the last frame
 handling flow
Date: Thu, 4 Jun 2020 17:05:43 +0800
Message-ID: <20200604090553.10861-10-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200604090553.10861-1-xia.jiang@mediatek.com>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_021824_737505_718001B8 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Xia Jiang <xia.jiang@mediatek.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need to queue an empty buffer for signaling a last frame,
because all frames are separate from each other in JPEG.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v9: new patch
---
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 21 +------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index 49bdbf1c435f..bb4ebce881ee 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -55,15 +55,9 @@ static struct mtk_jpeg_fmt mtk_jpeg_formats[] = {
 
 #define MTK_JPEG_NUM_FORMATS ARRAY_SIZE(mtk_jpeg_formats)
 
-enum {
-	MTK_JPEG_BUF_FLAGS_INIT			= 0,
-	MTK_JPEG_BUF_FLAGS_LAST_FRAME		= 1,
-};
-
 struct mtk_jpeg_src_buf {
 	struct vb2_v4l2_buffer b;
 	struct list_head list;
-	int flags;
 	struct mtk_jpeg_dec_param dec_param;
 };
 
@@ -520,8 +514,6 @@ static int mtk_jpeg_qbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 
 	vb = vb2_get_buffer(vq, buf->index);
 	jpeg_src_buf = mtk_jpeg_vb2_to_srcbuf(vb);
-	jpeg_src_buf->flags = (buf->m.planes[0].bytesused == 0) ?
-		MTK_JPEG_BUF_FLAGS_LAST_FRAME : MTK_JPEG_BUF_FLAGS_INIT;
 end:
 	return v4l2_m2m_qbuf(file, fh->m2m_ctx, buf);
 }
@@ -676,10 +668,6 @@ static void mtk_jpeg_buf_queue(struct vb2_buffer *vb)
 	param = &jpeg_src_buf->dec_param;
 	memset(param, 0, sizeof(*param));
 
-	if (jpeg_src_buf->flags & MTK_JPEG_BUF_FLAGS_LAST_FRAME) {
-		v4l2_dbg(1, debug, &jpeg->v4l2_dev, "Got eos\n");
-		goto end;
-	}
 	header_valid = mtk_jpeg_parse(param, (u8 *)vb2_plane_vaddr(vb, 0),
 				      vb2_get_plane_payload(vb, 0));
 	if (!header_valid) {
@@ -792,19 +780,12 @@ static void mtk_jpeg_device_run(void *priv)
 	struct mtk_jpeg_src_buf *jpeg_src_buf;
 	struct mtk_jpeg_bs bs;
 	struct mtk_jpeg_fb fb;
-	int i, ret;
+	int ret;
 
 	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 	jpeg_src_buf = mtk_jpeg_vb2_to_srcbuf(&src_buf->vb2_buf);
 
-	if (jpeg_src_buf->flags & MTK_JPEG_BUF_FLAGS_LAST_FRAME) {
-		for (i = 0; i < dst_buf->vb2_buf.num_planes; i++)
-			vb2_set_plane_payload(&dst_buf->vb2_buf, i, 0);
-		buf_state = VB2_BUF_STATE_DONE;
-		goto dec_end;
-	}
-
 	if (mtk_jpeg_check_resolution_change(ctx, &jpeg_src_buf->dec_param)) {
 		mtk_jpeg_queue_src_chg_event(ctx);
 		ctx->state = MTK_JPEG_SOURCE_CHANGE;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
