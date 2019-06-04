Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE66234410
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQW4zmJcS2NhKqrHrC2ay90i4ugpCO1ZRcQgOHrSqAs=; b=PZ+dp1NKc+SWhW
	w5Owp+mnlsEGnClXhiG/9LXOa9cmzpTVP5gDiFbDk1SY6lH5GPROa3SCCAAbIbLpbplx9gWN065n2
	IF3CQ7ijBDl/WXoW4VA0nlCz4EYCaDLk9cQhgU57uqPZlk7QJ+xQ42McZyYDHJ8H5JiTtN70QKpIl
	i4ktQ+e3wNxCCi3EMAkhja7njziAcPG/CWVohyPjMeqWwswCpejSCfvqoEhNnIFL6zSB6ZBEikJTD
	foV5Pxnnkdhc9YZsspe46BGWN6bx2Y8hXSzwIh4ITrEX/FOnRW862oJldTLLhemmBz6NuJMzu4tOM
	xO5wKCiqSQ+gZDGAUlqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Sk-0000zw-Bv; Tue, 04 Jun 2019 10:14:38 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RW-0007lA-MM; Tue, 04 Jun 2019 10:13:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PD92jndTWUq1rL1FRZA+E89X4cA0+M13fs8F8yh+tDc=; b=pQiAO28mt/YT4XNFRuXjidb/P
 ALU+Za+LrKl+r1TH9vpz2VZ0grwJV3aEDt+W3Pm6kto0PhZUf4Bjf16gjMLpgkdm5fLi9qnMQdcOs
 upMhlK//nLmZj/yNSuJw8KsN7EU0FZiohr2liHeI+T7Cq/ai5WC/iyWRnAqxIf6UH2z1t+ddqQtkk
 JAXMHjc7xwB2sNyj6tIgZ84sS7TU5c3pkrE1SSkhd0bTtyx7MZNoKxviozIM5+Fp30WzinNRogbMl
 nLMgHbv+fz4sEhRc9simJ/PwzkMqAv0XUQnABfqP0Sv5SrOl4779SyElZ2/xhBw5C0LpHWzF/OncU
 +SROqs/mg==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RT-0003Ur-CJ; Tue, 04 Jun 2019 10:13:20 +0000
X-UUID: 7b29ca5ce11c4791b05fe49b898e7360-20190604
X-UUID: 7b29ca5ce11c4791b05fe49b898e7360-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1097217260; Tue, 04 Jun 2019 02:12:03 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:02 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:00 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 05/14] [media] mtk-mipicsi: register the v4l2 device for
 mt2712 mipicsi
Date: Tue, 4 Jun 2019 18:11:46 +0800
Message-ID: <1559643115-15124-6-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061319_615383_C816C83B 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch register the v4l2 camera for mt2712 mipicsi.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 728 ++++++++++++++++++
 1 file changed, 728 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index 3d1e52411b69..28dcc683a958 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -32,14 +32,28 @@
 #include <linux/slab.h>
 #include <linux/pm_runtime.h>
 #include <linux/iommu.h>
+#include <linux/of_graph.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
+#include <media/v4l2-common.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-dev.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-ioctl.h>
+#include <media/v4l2-event.h>
+#include <media/v4l2-fwnode.h>
+#include <media/videobuf2-dma-contig.h>
+#include <media/videobuf2-core.h>
+#include <linux/videodev2.h>
 #include <soc/mediatek/smi.h>
 #include <linux/regmap.h>
 #include <linux/mfd/syscon.h>
 
 #define MTK_MIPICSI_DRV_NAME "mtk-mipicsi"
 #define MTK_PLATFORM_STR "platform:mt2712"
+#define MAX_SUPPORT_WIDTH             4096U
+#define MAX_SUPPORT_HEIGHT            4096U
+#define MAX_BUFFER_NUM                  32U
 
 #define MIPI_RX_ANA00_CSI				0x00
 #define MIPI_RX_ANA04_CSI				0x04
@@ -86,6 +100,28 @@
 #define IMGO_STRIDE					0x238
 #define DMA_FRAME_HEADER_EN				0xE00
 
+#define notifier_to_mipicsi(n) container_of(n, struct mtk_mipicsi_dev, \
+					    notifier)
+/* buffer for one video frame */
+struct mtk_mipicsi_buf {
+	struct list_head queue;
+	struct vb2_buffer *vb;
+	dma_addr_t vb_dma_addr_phy;
+	int prepare_flag;
+};
+
+struct mtk_format {
+	u32     fourcc;
+	u32     mbus_code;
+	u8      bpp;
+};
+
+struct mtk_mipicsi_subdev {
+	struct device_node *node;
+	struct v4l2_async_subdev asd;
+	struct v4l2_subdev *subdev;
+};
+
 struct mtk_mipicsi_channel {
 	void __iomem            *seninf_mux;
 	void __iomem            *camsv;
@@ -103,6 +139,47 @@ struct mtk_mipicsi_dev {
 	void __iomem		*seninf_ctrl;
 	void __iomem		*seninf;
 	struct regmap		*seninf_top;
+
+	struct v4l2_device	v4l2_dev;
+	struct video_device	*vdev;
+	struct vb2_queue	queue;
+	struct v4l2_async_notifier	notifier;
+	struct mtk_mipicsi_subdev	mipicsi_sd;
+	struct v4l2_format		fmt;
+	unsigned int			num_user_formats;
+	const struct mtk_format		**user_formats;
+	const struct mtk_format		*current_fmt;
+
+	struct mtk_mipicsi_buf	cam_buf[MAX_BUFFER_NUM];
+	struct list_head	fb_list;
+	bool streamon;
+	char drv_name[16];
+	u32 id;
+
+	spinlock_t		irqlock;
+	spinlock_t		queue_lock;
+	struct mutex		lock;
+
+};
+
+static const struct mtk_format mtk_mipicsi_formats[] = {
+{
+	.fourcc = V4L2_PIX_FMT_YUYV,
+	.mbus_code = MEDIA_BUS_FMT_YUYV8_2X8,
+	.bpp = 2,
+}, {
+	.fourcc = V4L2_PIX_FMT_YVYU,
+	.mbus_code = MEDIA_BUS_FMT_YVYU8_2X8,
+	.bpp = 2,
+}, {
+	.fourcc = V4L2_PIX_FMT_UYVY,
+	.mbus_code = MEDIA_BUS_FMT_UYVY8_2X8,
+	.bpp = 2,
+}, {
+	.fourcc = V4L2_PIX_FMT_VYUY,
+	.mbus_code = MEDIA_BUS_FMT_VYUY8_2X8,
+	.bpp = 2,
+},
 };
 
 static void mtk_mipicsi_ana_init(void __iomem *base)
@@ -335,6 +412,321 @@ static const struct dev_pm_ops mtk_mipicsi_pm = {
 		mtk_mipicsi_pm_resume, NULL)
 };
 
+static int mtk_mipicsi_vb2_queue_setup(struct vb2_queue *vq,
+		unsigned int *nbufs, unsigned int *num_planes,
+		unsigned int sizes[], struct device *alloc_devs[])
+{
+	struct mtk_mipicsi_dev *mipicsi = vb2_get_drv_priv(vq);
+	u32 sizeimage = mipicsi->fmt.fmt.pix.sizeimage;
+
+	if (*nbufs == 0U || *nbufs > MAX_BUFFER_NUM)
+		*nbufs = MAX_BUFFER_NUM;
+
+	/*
+	 * Called from VIDIOC_REQBUFS or in compatibility mode For YUV422P
+	 * format, even if there are 3 planes Y, U and V, we reply there is only
+	 * one plane, containing Y, U and V data, one after the other.
+	 */
+	if (*num_planes != 0U)
+		return sizes[0] < sizeimage ? -EINVAL : 0;
+
+	sizes[0] = sizeimage;
+	*num_planes = 1;
+
+	return 0;
+}
+
+static int mtk_mipicsi_vb2_init(struct vb2_buffer *vb)
+{
+	struct mtk_mipicsi_dev *mipicsi = vb2_get_drv_priv(vb->vb2_queue);
+
+	mipicsi->cam_buf[vb->index].prepare_flag = 0;
+
+	return 0;
+}
+
+static int mtk_mipicsi_vb2_prepare(struct vb2_buffer *vb)
+{
+	struct mtk_mipicsi_dev *mipicsi = vb2_get_drv_priv(vb->vb2_queue);
+	struct mtk_mipicsi_buf *buf;
+	u32 size = 0;
+
+	buf = &mipicsi->cam_buf[vb->index];
+	size = mipicsi->fmt.fmt.pix.sizeimage;
+
+	if (vb2_plane_size(vb, 0) < size) {
+		dev_err(&mipicsi->pdev->dev, "data will not fit into plane (%lu < %u)",
+			vb2_plane_size(vb, 0), size);
+		return -EINVAL;
+	}
+
+	vb2_set_plane_payload(vb, 0, size);
+
+	if ((buf->prepare_flag) == 0) {
+		buf->prepare_flag = 1;
+		buf->vb_dma_addr_phy =
+			vb2_dma_contig_plane_dma_addr(vb, 0);
+		buf->vb = vb;
+	}
+
+	return 0;
+}
+
+static void mtk_mipicsi_vb2_queue(struct vb2_buffer *vb)
+{
+	struct mtk_mipicsi_dev *mipicsi = vb2_get_drv_priv(vb->vb2_queue);
+
+	spin_lock(&mipicsi->queue_lock);
+	list_add_tail(&(mipicsi->cam_buf[vb->index].queue),
+		&(mipicsi->fb_list));
+	spin_unlock(&mipicsi->queue_lock);
+}
+
+static int mtk_mipicsi_vb2_start_streaming(struct vb2_queue *vq,
+		unsigned int count)
+{
+	struct mtk_mipicsi_dev *mipicsi = vb2_get_drv_priv(vq);
+
+	mipicsi->streamon = true;
+
+	return 0;
+}
+
+static void mtk_mipicsi_vb2_stop_streaming(struct vb2_queue *vq)
+{
+	struct mtk_mipicsi_dev *mipicsi = vb2_get_drv_priv(vq);
+	struct mtk_mipicsi_buf *buf = NULL;
+	struct mtk_mipicsi_buf *tmp = NULL;
+	unsigned int index = 0;
+
+	spin_lock(&mipicsi->queue_lock);
+	while (list_empty(&(mipicsi->fb_list)) == 0) {
+		list_for_each_entry_safe(buf, tmp, &(mipicsi->fb_list), queue) {
+			if (buf->vb->state == VB2_BUF_STATE_ACTIVE) {
+				vb2_buffer_done(buf->vb, VB2_BUF_STATE_ERROR);
+				break;
+			}
+		}
+		buf->vb_dma_addr_phy = 0ULL;
+		buf->prepare_flag = 0;
+		index = buf->vb->index;
+		list_del_init(&(mipicsi->cam_buf[index].queue));
+	}
+	spin_unlock(&mipicsi->queue_lock);
+
+	INIT_LIST_HEAD(&(mipicsi->fb_list));
+
+	mipicsi->streamon = false;
+}
+
+static struct vb2_ops mtk_vb2_ops = {
+	.queue_setup		= mtk_mipicsi_vb2_queue_setup,
+	.buf_init		= mtk_mipicsi_vb2_init,
+	.buf_prepare		= mtk_mipicsi_vb2_prepare,
+	.buf_queue		= mtk_mipicsi_vb2_queue,
+	.start_streaming	= mtk_mipicsi_vb2_start_streaming,
+	.stop_streaming		= mtk_mipicsi_vb2_stop_streaming,
+	.wait_prepare		= vb2_ops_wait_prepare,
+	.wait_finish		= vb2_ops_wait_finish,
+};
+
+static int mtk_s_input(struct file *file, void *priv, unsigned int i)
+{
+	if (i > 0)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int mtk_g_input(struct file *file, void *priv, unsigned int *i)
+{
+	*i = 0;
+
+	return 0;
+}
+
+static int mtk_enum_input(struct file *file, void *priv,
+				struct v4l2_input *i)
+{
+	if (i->index != 0)
+		return -EINVAL;
+
+	i->type = V4L2_INPUT_TYPE_CAMERA;
+	strscpy(i->name, "Camera", sizeof(i->name));
+
+	return 0;
+}
+
+static int mtk_enum_fmt_vid_cap(struct file *file, void  *priv,
+				struct v4l2_fmtdesc *f)
+{
+	struct mtk_mipicsi_dev *mipicsi = video_drvdata(file);
+
+	if (f->index >= mipicsi->num_user_formats)
+		return -EINVAL;
+
+	f->pixelformat = mipicsi->user_formats[f->index]->fourcc;
+
+	return 0;
+}
+
+static const struct mtk_format *find_format_by_fourcc(
+					struct mtk_mipicsi_dev *mipicsi,
+					unsigned int fourcc)
+{
+	unsigned int num_formats = mipicsi->num_user_formats;
+	const struct mtk_format *fmt;
+	unsigned int i;
+
+	for (i = 0; i < num_formats; i++) {
+		fmt = mipicsi->user_formats[i];
+		if (fmt->fourcc == fourcc)
+			return fmt;
+	}
+
+	return NULL;
+}
+
+static int mtk_mipicsi_try_fmt(struct mtk_mipicsi_dev *mipicsi,
+			      struct v4l2_format *f,
+			      const struct mtk_format **current_fmt)
+{
+	const struct mtk_format *mtk_fmt;
+	struct v4l2_pix_format *pix = &f->fmt.pix;
+	struct v4l2_subdev_pad_config pad_cfg;
+	struct v4l2_subdev *sd = mipicsi->mipicsi_sd.subdev;
+	struct v4l2_subdev_format format = {
+		.which = V4L2_SUBDEV_FORMAT_TRY,
+	};
+	int ret = 0;
+
+	mtk_fmt = find_format_by_fourcc(mipicsi, pix->pixelformat);
+	if (!mtk_fmt) {
+		mtk_fmt = mipicsi->user_formats[0];
+		pix->pixelformat = mtk_fmt->fourcc;
+	}
+
+	/* limit to MTK hardware capabilities */
+	pix->height = clamp(pix->height, 0U, MAX_SUPPORT_HEIGHT);
+	pix->width = clamp(pix->width, 0U, MAX_SUPPORT_WIDTH);
+	v4l2_fill_mbus_format(&format.format, pix, mtk_fmt->mbus_code);
+	ret = v4l2_subdev_call(sd, pad, set_fmt, &pad_cfg, &format);
+	if (ret < 0)
+		return ret;
+
+	v4l2_fill_pix_format(pix, &format.format);
+	pix->bytesperline = pix->width * mtk_fmt->bpp;
+	pix->sizeimage = pix->bytesperline * pix->height;
+
+	if (current_fmt)
+		*current_fmt = mtk_fmt;
+
+	return ret;
+}
+
+static int mtk_mipicsi_set_fmt(struct mtk_mipicsi_dev *mipicsi,
+				struct v4l2_format *f)
+{
+	struct v4l2_subdev *sd = mipicsi->mipicsi_sd.subdev;
+	struct device *dev = &mipicsi->pdev->dev;
+	struct v4l2_pix_format *pix = &f->fmt.pix;
+	struct v4l2_subdev_format format = {
+		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
+	};
+	const struct mtk_format *current_fmt;
+	int ret;
+
+	ret = mtk_mipicsi_try_fmt(mipicsi, f, &current_fmt);
+	if (ret)
+		return ret;
+
+	v4l2_fill_mbus_format(&format.format, &f->fmt.pix,
+			current_fmt->mbus_code);
+
+	ret = v4l2_subdev_call(sd, pad, set_fmt, NULL, &format);
+	if (ret < 0)
+		return ret;
+
+	mipicsi->fmt = *f;
+	mipicsi->current_fmt = current_fmt;
+
+	dev_info(dev, "width/height/sizeimage %u/%u/%u", pix->width,
+							 pix->height,
+							 pix->sizeimage);
+
+	return ret;
+}
+
+static int mtk_s_fmt_vid_cap(struct file *file, void *priv,
+				struct v4l2_format *f)
+{
+	struct mtk_mipicsi_dev *mipicsi = video_drvdata(file);
+
+	if (vb2_is_streaming(&mipicsi->queue))
+		return -EBUSY;
+
+	return mtk_mipicsi_set_fmt(mipicsi, f);
+}
+
+static int mtk_g_fmt_vid_cap(struct file *file, void *priv,
+				struct v4l2_format *fmt)
+{
+	struct mtk_mipicsi_dev *mipicsi = video_drvdata(file);
+
+	*fmt = mipicsi->fmt;
+
+	return 0;
+}
+
+static int mtk_try_fmt_vid_cap(struct file *file, void *priv,
+				struct v4l2_format *f)
+{
+	struct mtk_mipicsi_dev *mipicsi = video_drvdata(file);
+
+	return mtk_mipicsi_try_fmt(mipicsi, f, NULL);
+}
+
+static int mtk_mipicsi_querycap(struct file *file, void *priv,
+				struct v4l2_capability *cap)
+{
+	struct mtk_mipicsi_dev *mipicsi = video_drvdata(file);
+
+	strlcpy(cap->card, MTK_PLATFORM_STR, sizeof(cap->card));
+	strlcpy(cap->driver, mipicsi->drv_name, sizeof(cap->driver));
+	strlcpy(cap->bus_info, MTK_PLATFORM_STR, sizeof(cap->bus_info));
+	cap->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
+	cap->capabilities = cap->device_caps | V4L2_CAP_DEVICE_CAPS;
+
+	return 0;
+}
+
+static const struct v4l2_ioctl_ops mtk_mipicsi_ioctl_ops = {
+	.vidioc_querycap                = mtk_mipicsi_querycap,
+
+	.vidioc_try_fmt_vid_cap         = mtk_try_fmt_vid_cap,
+	.vidioc_g_fmt_vid_cap           = mtk_g_fmt_vid_cap,
+	.vidioc_s_fmt_vid_cap           = mtk_s_fmt_vid_cap,
+	.vidioc_enum_fmt_vid_cap        = mtk_enum_fmt_vid_cap,
+
+	.vidioc_enum_input              = mtk_enum_input,
+	.vidioc_g_input                 = mtk_g_input,
+	.vidioc_s_input                 = mtk_s_input,
+
+	.vidioc_reqbufs                 = vb2_ioctl_reqbufs,
+	.vidioc_create_bufs             = vb2_ioctl_create_bufs,
+	.vidioc_querybuf                = vb2_ioctl_querybuf,
+	.vidioc_qbuf                    = vb2_ioctl_qbuf,
+	.vidioc_dqbuf                   = vb2_ioctl_dqbuf,
+	.vidioc_expbuf                  = vb2_ioctl_expbuf,
+	.vidioc_prepare_buf             = vb2_ioctl_prepare_buf,
+	.vidioc_streamon                = vb2_ioctl_streamon,
+	.vidioc_streamoff               = vb2_ioctl_streamoff,
+
+	.vidioc_log_status              = v4l2_ctrl_log_status,
+	.vidioc_subscribe_event         = v4l2_ctrl_subscribe_event,
+	.vidioc_unsubscribe_event       = v4l2_event_unsubscribe,
+};
+
 static int seninf_mux_camsv_node_parse(struct mtk_mipicsi_dev *mipicsi,
 		int index)
 {
@@ -452,6 +844,16 @@ static int mtk_mipicsi_node_parse(struct mtk_mipicsi_dev *mipicsi)
 	dev = &mipicsi->pdev->dev;
 	pdev = mipicsi->pdev;
 
+	/* mediatek,mipicsiid is a flag to show which mipicsi HW */
+	ret = of_property_read_u32(dev->of_node, "mediatek,mipicsiid",
+		(u32 *)&mipicsi->id);
+	if (ret != 0) {
+		dev_info(dev, "not set mediatek,mipicsiid, use default id 0\n");
+		mipicsi->id = 0;
+	}
+	(void)sprintf(mipicsi->drv_name, MTK_MIPICSI_DRV_NAME"%d",
+		mipicsi->id);
+
 	/* get and parse seninf_mux_camsv */
 	camsv_num = of_count_phandle_with_args(dev->of_node,
 		"mediatek,seninf_mux_camsv", NULL);
@@ -514,6 +916,262 @@ static int mtk_mipicsi_node_parse(struct mtk_mipicsi_dev *mipicsi)
 	return 0;
 }
 
+static int mtk_mipicsi_set_default_fmt(struct mtk_mipicsi_dev *mipicsi)
+{
+	struct v4l2_format f = {
+		.type = V4L2_BUF_TYPE_VIDEO_CAPTURE,
+		.fmt.pix = {
+			.width          = 1280,
+			.height         = 720,
+			.field          = V4L2_FIELD_NONE,
+			.pixelformat    = mipicsi->user_formats[0]->fourcc,
+		},
+	};
+	int ret;
+
+	ret = mtk_mipicsi_try_fmt(mipicsi, &f, NULL);
+	if (ret)
+		return ret;
+	mipicsi->current_fmt = mipicsi->user_formats[0];
+	mipicsi->fmt = f;
+
+	return 0;
+}
+
+static int mipicsi_formats_init(struct mtk_mipicsi_dev *mipicsi)
+{
+	const struct mtk_format *mipicsi_fmts[ARRAY_SIZE(mtk_mipicsi_formats)];
+	struct v4l2_subdev *sd = mipicsi->mipicsi_sd.subdev;
+	unsigned int i, j, num_fmts = 0;
+	struct v4l2_subdev_mbus_code_enum mbus_code = {
+		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
+	};
+
+	while (!v4l2_subdev_call(sd, pad, enum_mbus_code, NULL, &mbus_code)) {
+		for (i = 0; i < ARRAY_SIZE(mtk_mipicsi_formats); i++) {
+			if (mtk_mipicsi_formats[i].mbus_code != mbus_code.code)
+				continue;
+
+			/* Code supported, have we got this fourcc yet? */
+			for (j = 0; j < num_fmts; j++)
+				if (mipicsi_fmts[j]->fourcc ==
+				    mtk_mipicsi_formats[i].fourcc)
+					/* Already available */
+					break;
+
+			if (j == num_fmts)
+				/* new */
+				mipicsi_fmts[num_fmts++] =
+					&mtk_mipicsi_formats[i];
+		}
+		mbus_code.index++;
+	}
+
+	if (!num_fmts)
+		return -ENXIO;
+
+	mipicsi->num_user_formats = num_fmts;
+	mipicsi->user_formats = devm_kcalloc(&mipicsi->pdev->dev,
+					     num_fmts,
+					     sizeof(struct isi_format *),
+					     GFP_KERNEL);
+	if (!mipicsi->user_formats)
+		return -ENOMEM;
+
+	memcpy(mipicsi->user_formats, mipicsi_fmts,
+	       num_fmts * sizeof(struct mtk_format *));
+	mipicsi->current_fmt = mipicsi->user_formats[0];
+
+	return 0;
+}
+
+static int mipicsi_subdev_notify_complete(struct v4l2_async_notifier *notifier)
+{
+	struct mtk_mipicsi_dev *mipicsi = notifier_to_mipicsi(notifier);
+	struct device *dev = &mipicsi->pdev->dev;
+	int ret;
+
+	mipicsi->vdev->ctrl_handler = mipicsi->mipicsi_sd.subdev->ctrl_handler;
+	ret = mipicsi_formats_init(mipicsi);
+	if (ret) {
+		dev_err(dev, "No supported mediabus format found\n");
+		return ret;
+	}
+
+	ret = mtk_mipicsi_set_default_fmt(mipicsi);
+	if (ret) {
+		dev_err(dev, "Could not set default format\n");
+		return ret;
+	}
+
+	ret = video_register_device(mipicsi->vdev, VFL_TYPE_GRABBER, -1);
+	if (ret) {
+		dev_err(dev, "Failed to register video device\n");
+		return ret;
+	}
+
+	dev_dbg(dev, "Device registered as %s\n",
+		video_device_node_name(mipicsi->vdev));
+
+	return 0;
+}
+
+static void mipicsi_subdev_notify_unbind(struct v4l2_async_notifier *notifier,
+					 struct v4l2_subdev *sd,
+					 struct v4l2_async_subdev *asd)
+{
+	struct mtk_mipicsi_dev *mipicsi = notifier_to_mipicsi(notifier);
+
+	dev_dbg(&mipicsi->pdev->dev, "Removing %s\n",
+		video_device_node_name(mipicsi->vdev));
+
+	/* Checks internally if vdev have been init or not */
+	video_unregister_device(mipicsi->vdev);
+}
+
+static int mipicsi_subdev_notify_bound(struct v4l2_async_notifier *notifier,
+				       struct v4l2_subdev *subdev,
+				       struct v4l2_async_subdev *asd)
+{
+	struct mtk_mipicsi_dev *mipicsi = notifier_to_mipicsi(notifier);
+
+	dev_dbg(&mipicsi->pdev->dev, "subdev %s bound\n", subdev->name);
+
+	mipicsi->mipicsi_sd.subdev = subdev;
+
+	return 0;
+}
+
+static const struct v4l2_async_notifier_operations mipicsi_subdev_notify_ops = {
+	.bound = mipicsi_subdev_notify_bound,
+	.unbind = mipicsi_subdev_notify_unbind,
+	.complete = mipicsi_subdev_notify_complete,
+};
+
+static int mtk_mipicsi_graph_parse(struct mtk_mipicsi_dev *mipicsi,
+					struct device_node *node)
+{
+	struct device_node *ep = NULL;
+	struct device_node *remote;
+
+	ep = of_graph_get_next_endpoint(node, ep);
+	if (!ep)
+		return -EINVAL;
+
+	remote = of_graph_get_remote_port_parent(ep);
+	of_node_put(ep);
+	if (!remote)
+		return -EINVAL;
+
+	/* Remote node to connect */
+	mipicsi->mipicsi_sd.node = remote;
+	mipicsi->mipicsi_sd.asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
+	mipicsi->mipicsi_sd.asd.match.fwnode = of_fwnode_handle(remote);
+	return 0;
+}
+
+static int mtk_mipicsi_subdev_init(struct mtk_mipicsi_dev *mipicsi)
+{
+	int ret;
+	struct device *dev = &mipicsi->pdev->dev;
+
+	/* Parse the graph to extract a list of subdevice DT nodes. */
+	ret = mtk_mipicsi_graph_parse(mipicsi, dev->of_node);
+	if (ret < 0) {
+		dev_err(&mipicsi->pdev->dev, "Graph parsing failed\n");
+		return ret;
+	}
+
+	v4l2_async_notifier_init(&mipicsi->notifier);
+
+	ret = v4l2_async_notifier_add_subdev(&mipicsi->notifier,
+						&mipicsi->mipicsi_sd.asd);
+	if (ret) {
+		of_node_put(mipicsi->mipicsi_sd.node);
+		return ret;
+	}
+
+	mipicsi->notifier.ops = &mipicsi_subdev_notify_ops;
+
+	ret = v4l2_async_notifier_register(&mipicsi->v4l2_dev,
+					   &mipicsi->notifier);
+	if (ret < 0) {
+		dev_err(&mipicsi->pdev->dev, "Notifier registration failed\n");
+		v4l2_async_notifier_cleanup(&mipicsi->notifier);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int mtk_mipicsi_open(struct file *file)
+{
+	struct mtk_mipicsi_dev *mipicsi = video_drvdata(file);
+	struct v4l2_subdev *sd = mipicsi->mipicsi_sd.subdev;
+	int ret;
+
+	if (mutex_lock_interruptible(&mipicsi->lock))
+		return -ERESTARTSYS;
+
+	ret = v4l2_fh_open(file);
+	if (ret < 0)
+		goto unlock;
+
+	if (!v4l2_fh_is_singular_file(file))
+		goto fh_rel;
+
+	ret = v4l2_subdev_call(sd, core, s_power, 1);
+	if (ret < 0 && ret != -ENOIOCTLCMD)
+		goto fh_rel;
+
+	ret = mtk_mipicsi_set_fmt(mipicsi, &mipicsi->fmt);
+	if (ret)
+		v4l2_subdev_call(sd, core, s_power, 0);
+
+	pm_runtime_get_sync(&mipicsi->pdev->dev);
+
+fh_rel:
+	if (ret)
+		v4l2_fh_release(file);
+unlock:
+	mutex_unlock(&mipicsi->lock);
+	return ret;
+}
+
+static int mtk_mipicsi_release(struct file *file)
+{
+	struct mtk_mipicsi_dev *mipicsi = video_drvdata(file);
+	struct device *dev = &mipicsi->pdev->dev;
+	struct v4l2_subdev *sd = mipicsi->mipicsi_sd.subdev;
+	bool fh_singular;
+	int ret;
+
+	mutex_lock(&mipicsi->lock);
+
+	pm_runtime_put_sync(dev);
+
+	fh_singular = v4l2_fh_is_singular_file(file);
+
+	ret = _vb2_fop_release(file, NULL);
+
+	if (fh_singular)
+		v4l2_subdev_call(sd, core, s_power, 0);
+
+	mutex_unlock(&mipicsi->lock);
+
+	return ret;
+}
+
+static const struct v4l2_file_operations mipicsi_fops = {
+	.owner          = THIS_MODULE,
+	.unlocked_ioctl = video_ioctl2,
+	.open           = mtk_mipicsi_open,
+	.release        = mtk_mipicsi_release,
+	.poll           = vb2_fop_poll,
+	.mmap           = vb2_fop_mmap,
+	.read           = vb2_fop_read,
+};
+
 static int mtk_mipicsi_probe(struct platform_device *pdev)
 {
 	struct mtk_mipicsi_dev *mipicsi = NULL;
@@ -521,6 +1179,7 @@ static int mtk_mipicsi_probe(struct platform_device *pdev)
 	struct iommu_domain *iommu = NULL;
 	struct device_node *larb_node = NULL;
 	struct platform_device *larb_pdev = NULL;
+	struct vb2_queue *q;
 
 	iommu = iommu_get_domain_for_dev(&pdev->dev);
 	if (iommu == NULL) {
@@ -557,9 +1216,78 @@ static int mtk_mipicsi_probe(struct platform_device *pdev)
 
 	pm_runtime_enable(&pdev->dev);
 
+	INIT_LIST_HEAD(&mipicsi->fb_list);
+	spin_lock_init(&mipicsi->queue_lock);
+	spin_lock_init(&mipicsi->irqlock);
+	mutex_init(&mipicsi->lock);
+
+	q = &mipicsi->queue;
+
+	/* Initialize the top-level structure */
+	ret = v4l2_device_register(&pdev->dev, &mipicsi->v4l2_dev);
+	if (ret)
+		return ret;
+
+	mipicsi->vdev = video_device_alloc();
+	if (mipicsi->vdev == NULL) {
+		ret = -ENOMEM;
+		goto err_vdev_alloc;
+	}
+
+	/* video node */
+	mipicsi->vdev->fops = &mipicsi_fops;
+	mipicsi->vdev->v4l2_dev = &mipicsi->v4l2_dev;
+	mipicsi->vdev->queue = &mipicsi->queue;
+	strscpy(mipicsi->vdev->name, mipicsi->drv_name,
+		sizeof(mipicsi->vdev->name));
+	mipicsi->vdev->release = video_device_release;
+	mipicsi->vdev->ioctl_ops = &mtk_mipicsi_ioctl_ops;
+	mipicsi->vdev->lock = &mipicsi->lock;
+	mipicsi->vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE |
+				     V4L2_CAP_STREAMING |
+				     V4L2_CAP_READWRITE;
+	video_set_drvdata(mipicsi->vdev, mipicsi);
+
+	/* buffer queue */
+	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
+	q->io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
+	q->drv_priv = mipicsi;
+	q->buf_struct_size = sizeof(struct vb2_buffer);
+	q->ops = &mtk_vb2_ops;
+	q->mem_ops = &vb2_dma_contig_memops;
+	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
+	q->dev = mipicsi->v4l2_dev.dev;
+	q->lock = &mipicsi->lock;
+
+	ret = vb2_queue_init(q);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "failed to initialize VB2 queue\n");
+		goto err_vb2_queue;
+	}
+
+	mipicsi->streamon = false;
+
+	ret = mtk_mipicsi_subdev_init(mipicsi);
+	if (ret < 0)
+		goto err_mipicsi_subdev_init;
+
+	ret = vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32U));
+	if (ret != 0) {
+		dev_err(&pdev->dev, "dma set max seg size fail\n");
+		goto clean;
+	}
+
 	dev_set_drvdata(&pdev->dev, mipicsi);
 
 	dev_info(&pdev->dev, "probe done\n");
+	return ret;
+clean:
+err_mipicsi_subdev_init:
+err_vb2_queue:
+	video_device_release(mipicsi->vdev);
+err_vdev_alloc:
+	v4l2_device_unregister(&mipicsi->v4l2_dev);
+	pm_runtime_disable(&pdev->dev);
 
 	return ret;
 }
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
