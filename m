Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6336816A20B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:22:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmRuOfD9nrlAwJm/k29bW4AiZUi4ToVjcUVxFAuZH3Y=; b=aI9qKVj1kA0mkK
	rVGlOrjghtpTHkVonQxFS0cY3XYK6N9WQ59Robcn5eFuhxC3py2FdtVLSoX9zw1Ck5hmfqysDMPaI
	q6k+9FoYwOQjGz8Mtq1+J5LsMRH6UXaI6FSiW7fpmIThR3dhda2wA/prZgf1HJ48PZVo5Io3d5Jx7
	Z0U08D6Uw9xGN0Km0DCvhjiJ6+LLSep6d3egAWrc81BBj18kR7VpD/vaBBbTG2zDONSwU6KfsqJQc
	q7s/1tQYrGYbfd7VzATcS/Pqt2GKFaoLzA8TQ+D6ZAYizxr21N+fm4h9IiKDo1hagTjrNNUiaLXWo
	A9CXm+nRFPhHvlHWABFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69wm-0005tp-Nk; Mon, 24 Feb 2020 09:22:40 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kD-0001qF-8U; Mon, 24 Feb 2020 09:09:44 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 001C0642;
 Mon, 24 Feb 2020 04:09:38 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=5VHijJAYm3oTK
 O0zNKBs8Gagg4smi82iYxVSDlNTN7o=; b=aU7BNV09UShQ+5K4/7KIXbU80V6Zi
 jvAYm5LHbInuecOAyw7epjDg6qD1KIxrXj0CX6Qm0icJrRnzan8I6s1GTFvUKoIq
 t3MilKcu7cCdaDItxjscal5QmfcxoRf2lOQwTJwsuNMR7JoRjJhV2XFNnA8NvY5g
 6Iyqe8as+vZtQNgxaufFZaxW/FXW/BYklurckzHOTBs5PR7mfZSejmOebaYy1Ti2
 kyU+7qLGQsXb9rmstJ0kdMFh+YMC1eUfBZinRCddEnwepa1pu4ZcT8CUyuBBd75k
 sxBK5R2KjNi3qhMhzWZJN8jGgiBF1xeQQjn5vKMHPqyDaj1MZQsYplA6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=5VHijJAYm3oTKO0zNKBs8Gagg4smi82iYxVSDlNTN7o=; b=rEjci/IR
 G7AJaxyirQS/0F3BIJ79pP7V6IWMiUsile5o0HTEDLDkMV78CSCpzC7U7Y7EA92z
 +JXfFnmDecyR/JfnPqtZR6MV2muGnlbrfC60dUkgRsHGxng/hjrZYTlhN+ES3IEh
 g0VQztGJkwfb17W6+16Jvu9SsklOcp8iD45VkkkzbQYzijyfssfIJdt2VRkoH6A6
 Yc7vwPOaItH1DT1b1lb+Ka4Ap7xMcyhX1BLieA4FiUC3YqMexXusE+0UcNtMTQOk
 LsEC0yVmMuneRAliUvzdKEEnysXLrGgzg4fUgCDTCo9UNUsgQljjldmw1DhTxD7h
 PJakevcdCbz6dQ==
X-ME-Sender: <xms:0pJTXpJjDqYsGBLVSdpCkzhtMT5C6rafL2dJltBvOnp0n5c46vj6jg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepvdejnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:0pJTXk1mtT7krM7Y3bbsLBiurzcoOpJZjn6Uqsyar7JHCtwmjj8G7Q>
 <xmx:0pJTXsgC_BRWpCHt-X0mJWpMUxsa7m_XMS9sAQKg2fZicwZfbfBlSA>
 <xmx:0pJTXs2afXjkw5MJQLE-AtVMPQiabblLBbGTaHYuSGTCa0TxxHdKjA>
 <xmx:0pJTXku1nRpBR4me4XxeBlfStmrC6C5jomBytLPiDxoi6iG8-bbdNHTHpA8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4378F3280063;
 Mon, 24 Feb 2020 04:09:38 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 34/89] drm/vc4: drv: Add include guards
Date: Mon, 24 Feb 2020 10:06:36 +0100
Message-Id: <9032ef5343f779a04fe9f8017e582b4fa5162868.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010941_468280_7E609B2B 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vc4_drv.h doesn't have any include guards which prevents it from being
included twice. Let's add them.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 6627b20c99e9..0a2447bb0f5d 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -2,6 +2,8 @@
 /*
  * Copyright (C) 2015 Broadcom
  */
+#ifndef _VC4_DRV_H_
+#define _VC4_DRV_H_
 
 #include <linux/delay.h>
 #include <linux/refcount.h>
@@ -892,3 +894,5 @@ int vc4_perfmon_destroy_ioctl(struct drm_device *dev, void *data,
 			      struct drm_file *file_priv);
 int vc4_perfmon_get_values_ioctl(struct drm_device *dev, void *data,
 				 struct drm_file *file_priv);
+
+#endif /* _VC4_DRV_H_ */
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
