Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4B7131E1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 04:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USxxo7AEfoZVftfwIWW73yQiELNvUxmb8fNA9He7YOE=; b=TTEUQ12aFED+nz
	Q7+x3DJ9l26Lb3rqJRxJT3/jS9b3QEMmrOjqQEaSwy30kuIJ6E+MrMAbbvz3nuIVkxh1vrKYYI6gT
	fGmFxFaLfsMTMPwZhCx+EEBKgcc6NuXC2SGy3pJbS2AD7YfDQMzfRMWUOsxEHRI10cYGIzL6xWPD/
	bNTq7agX1e5SxvrOcvHVGk5NQgWjcgA/o0oKrGcpppssw/ZbQ+DTKkTzRtlEl66fgWWHchdTbL7uo
	JXdXkLuXLm+jrexh0rgVBTfG7znTxHTw1m+lEyl8t5u54JiTpfp8wVoJgKYHEGjDU+YottjyYNYRF
	TjKJ0rPjMzVP4Fi9SJvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iofn8-0001qT-U9; Tue, 07 Jan 2020 03:44:26 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iofmX-0001TT-Gv
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 03:43:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id x7so27819296pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 19:43:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9HAw19jVeHxxdurgcOiXctlBffkucK0nh349iGgV3R8=;
 b=XxtAdd0bdWrUOYxuX9W//W7L7wcHPwRI7vqpeyReLB++pcKOYHbipgm8p8eTWR13XG
 tAd0LVfns+9qbiXhOrJGMpmGKcQutmOa4dHPyV38miXXPqInzTLDFJ+CHIyXtIfnLcwq
 FzQMlZCgf8+9iYSCsgI7ngoIJbF7o+U6QpiQeYqgoPCQRH90aCuVIvb4UGw1D7A3rf1U
 hTjdMkrpmDKa6xc5br7mAjmv2rg8CwnIGQpJRfXq7B5zYWCEkPhdyfunoNKB3EhptX9Z
 cFP1EsFJqVOvao7775LD44VszXG1wOmQEnpe61gLVhjsEx/2n+3siVfbXs33sJdTJQdc
 cmgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=9HAw19jVeHxxdurgcOiXctlBffkucK0nh349iGgV3R8=;
 b=DBIHrR62C1B0Ru1aTs4ZKJvMsbdhShMb+BQ8btjg5uFbD2+wyfmbEhF4KZNm90NW6/
 +iviDkJCkiTcqph0fytU54o2QyG4jYkc7Dk4YjQbC65RiDAjsQJrRzymFP/yhHTcBx1O
 xNnQk7gLoXXFK944FXtrnBA1x4su3NWIi9Jl7pyCZe5bpH/KUeOdUBCtZHcmqoKrzaKw
 gSJ8p4Bt/oU4QlxG80hFZXBSu7RI8VhthiQVhnYuc6hs9YFbIPE1BPdZQ7Ho2GuMoBbW
 zyt8WyZ2yzLNaa66FRfpeFzJehQM1jM5fe5KfZ555PDnukI/IXkQKv6Xo5Nf8hD1itda
 2ECg==
X-Gm-Message-State: APjAAAXbag6Q35Red8+z6ulKWcPpB2BHbTBU0tRpGWth4Sk3Tg7t6IDv
 WBbkbKXxU3rt3AXuvmyKtb0=
X-Google-Smtp-Source: APXvYqz6EHI8pVF3FrydG0u6YG4WEAj9paVMg8hO9zp/2XkhyJQbUxJZBQWNw2PlKPMWFXz8af/1XA==
X-Received: by 2002:a63:3f4f:: with SMTP id
 m76mr111711984pga.353.1578368628186; 
 Mon, 06 Jan 2020 19:43:48 -0800 (PST)
Received: from voyager.lan ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id g10sm73455929pgh.35.2020.01.06.19.43.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 19:43:47 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 Eddie James <eajames@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 2/3] media: aspeed: Use runtime configuration
Date: Tue,  7 Jan 2020 14:13:23 +1030
Message-Id: <20200107034324.38073-3-joel@jms.id.au>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200107034324.38073-1-joel@jms.id.au>
References: <20200107034324.38073-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_194349_604721_CC535ADC 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The aspeed video IP has some differences between SoC families. Currently
the driver decides which registers to use at compile time, which means
a single kernel can not be used between platforms.

Switch to using runtime configuration of the registers that vary between
SoC families. This is in preparation for upcoming ast2600 support.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/media/platform/aspeed-video.c | 53 ++++++++++++++++++++-------
 1 file changed, 39 insertions(+), 14 deletions(-)

diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
index 8f849d9866af..d70b893fd4cf 100644
--- a/drivers/media/platform/aspeed-video.c
+++ b/drivers/media/platform/aspeed-video.c
@@ -72,11 +72,8 @@
 #define  VE_SEQ_CTRL_CAP_BUSY		BIT(16)
 #define  VE_SEQ_CTRL_COMP_BUSY		BIT(18)
 
-#ifdef CONFIG_MACH_ASPEED_G5
-#define  VE_SEQ_CTRL_JPEG_MODE		BIT(13)	/* AST2500 */
-#else
-#define  VE_SEQ_CTRL_JPEG_MODE		BIT(8)	/* AST2400 */
-#endif /* CONFIG_MACH_ASPEED_G5 */
+#define AST2500_VE_SEQ_CTRL_JPEG_MODE	BIT(13)
+#define AST2400_VE_SEQ_CTRL_JPEG_MODE	BIT(8)
 
 #define VE_CTRL				0x008
 #define  VE_CTRL_HSYNC_POL		BIT(0)
@@ -220,6 +217,9 @@ struct aspeed_video {
 	struct video_device vdev;
 	struct mutex video_lock;	/* v4l2 and videobuf2 lock */
 
+	u32 jpeg_mode;
+	u32 comp_size_read;
+
 	wait_queue_head_t wait;
 	spinlock_t lock;		/* buffer list lock */
 	struct delayed_work res_work;
@@ -243,6 +243,21 @@ struct aspeed_video {
 
 #define to_aspeed_video(x) container_of((x), struct aspeed_video, v4l2_dev)
 
+struct aspeed_video_config {
+	u32 jpeg_mode;
+	u32 comp_size_read;
+};
+
+static const struct aspeed_video_config ast2400_config = {
+	.jpeg_mode = AST2400_VE_SEQ_CTRL_JPEG_MODE,
+	.comp_size_read = VE_OFFSET_COMP_STREAM,
+};
+
+static const struct aspeed_video_config ast2500_config = {
+	.jpeg_mode = AST2500_VE_SEQ_CTRL_JPEG_MODE,
+	.comp_size_read = VE_OFFSET_COMP_STREAM,
+};
+
 static const u32 aspeed_video_jpeg_header[ASPEED_VIDEO_JPEG_HEADER_SIZE] = {
 	0xe0ffd8ff, 0x464a1000, 0x01004649, 0x60000101, 0x00006000, 0x0f00feff,
 	0x00002d05, 0x00000000, 0x00000000, 0x00dbff00
@@ -572,7 +587,7 @@ static irqreturn_t aspeed_video_irq(int irq, void *arg)
 	if (sts & VE_INTERRUPT_COMP_COMPLETE) {
 		struct aspeed_video_buffer *buf;
 		u32 frame_size = aspeed_video_read(video,
-						   VE_OFFSET_COMP_STREAM);
+						   video->comp_size_read);
 
 		spin_lock(&video->lock);
 		clear_bit(VIDEO_FRAME_INPRG, &video->flags);
@@ -907,7 +922,7 @@ static void aspeed_video_init_regs(struct aspeed_video *video)
 		FIELD_PREP(VE_COMP_CTRL_DCT_LUM, video->jpeg_quality) |
 		FIELD_PREP(VE_COMP_CTRL_DCT_CHR, video->jpeg_quality | 0x10);
 	u32 ctrl = VE_CTRL_AUTO_OR_CURSOR;
-	u32 seq_ctrl = VE_SEQ_CTRL_JPEG_MODE;
+	u32 seq_ctrl = video->jpeg_mode;;
 
 	if (video->frame_rate)
 		ctrl |= FIELD_PREP(VE_CTRL_FRC, video->frame_rate);
@@ -1653,8 +1668,17 @@ static int aspeed_video_init(struct aspeed_video *video)
 	return rc;
 }
 
+static const struct of_device_id aspeed_video_of_match[] = {
+	{ .compatible = "aspeed,ast2400-video-engine", .data = &ast2400_config },
+	{ .compatible = "aspeed,ast2500-video-engine", .data = &ast2500_config },
+	{}
+};
+MODULE_DEVICE_TABLE(of, aspeed_video_of_match);
+
 static int aspeed_video_probe(struct platform_device *pdev)
 {
+	const struct aspeed_video_config *config;
+	const struct of_device_id *match;
 	struct aspeed_video *video;
 	int rc;
 
@@ -1666,6 +1690,14 @@ static int aspeed_video_probe(struct platform_device *pdev)
 	if (IS_ERR(video->base))
 		return PTR_ERR(video->base);
 
+	match = of_match_node(aspeed_video_of_match, pdev->dev.of_node);
+	if (!match)
+		return -EINVAL;
+
+	config = match->data;
+	video->jpeg_mode = config->jpeg_mode;
+	video->comp_size_read = config->comp_size_read;
+
 	video->frame_rate = 30;
 	video->dev = &pdev->dev;
 	spin_lock_init(&video->lock);
@@ -1712,13 +1744,6 @@ static int aspeed_video_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id aspeed_video_of_match[] = {
-	{ .compatible = "aspeed,ast2400-video-engine" },
-	{ .compatible = "aspeed,ast2500-video-engine" },
-	{}
-};
-MODULE_DEVICE_TABLE(of, aspeed_video_of_match);
-
 static struct platform_driver aspeed_video_driver = {
 	.driver = {
 		.name = DEVICE_NAME,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
