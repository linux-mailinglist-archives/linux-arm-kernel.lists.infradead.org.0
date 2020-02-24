Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C162416A218
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9GIViAH93UVgftKzKlNWXz1VlxY4DPDIxNKul2iCec=; b=Xl/92hwd6zeIXd
	dtUB2q4HdZnqUFlhjAStZNIQxiTT4ovWLbaG3HkmuV3+ARNN0Ze8DeAR9Uyj6jusuByVglfAw4xDd
	L9IZEyhgW3KgvTyl5F2m4ySIdr8zIRyKsKtsPpcLdbb3KM4CBWAPXqbmK6I0ydrrIWGvg+t978E0g
	yJ3fdjnzQTPksPolbJb779y8cvSJd37tpfzIxlGFYtIllDVXQzqPpd5OB7nt7chOgeO8005E09oKD
	i2y1kWy5PEBpe6G1BBAF+B1WG1A7CLTtPR41Em9NjZWAo8h4hr3978MF+w0HLeSxnBcFL65xzCi50
	ICxp5FFrK+/rOwRfSa8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69yS-0007d3-CB; Mon, 24 Feb 2020 09:24:24 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kU-00022O-Uk; Mon, 24 Feb 2020 09:10:01 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 90566616;
 Mon, 24 Feb 2020 04:09:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=3rltT13G+L+1c
 57hjhCuMYYG1tpoQkl5+Nulwk8ESAE=; b=iH5+T9kmTb1qcPe/I4o9A3KT1RSZF
 3rqgbO1TIsr+k5BMkcOc85XBAQ+eQ3sO46SRJY2TCN/36NTS7T7z9sddTyhbGc3r
 35+FcJp2Kr2Z8Imwc9p6trul17aIlTm7eEd0vEW6gy0CSvbvgKUKnJk0bAibSgM5
 E5TEi9t0d8syAAw7fTS5R+7QlTZ0ZJHvFhf3ogHibuG/CcsRcKeE8rnndI7tV5AW
 RBwNDCoQgL+1QnrPo8JXROkFi3q8bHdEphY+U4AQ+YCoIFd7hp2plB3+Kb9oBrCb
 K8OQKVobNmidy+X/KUc1JwoQ716D5pxEf2rX+FnjaOAdzn0adRLnmbcjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=3rltT13G+L+1c57hjhCuMYYG1tpoQkl5+Nulwk8ESAE=; b=qt3Z8nS6
 nBgFfZZuTQVtchxhEjJ1Unu04oQqhZfNnegQOKP3c6/SoFan3cxrKPODh2x7RYmp
 xBJZfUjRILt7wywb0Ki6Sj0oPo+wr2IXrpzfUN5x4KfOveMDuWg4v+WP47dmQEaq
 NxbN31mmNbA5bqn7CVVqz7uscuu3lRj3KswMpr58gGGrfD7a9H/1hLeMy28O0n6M
 3/DgX5+R07oJBQjbv1WZxkpjnMxswn6DEaXf8hYm8qpu66zrAxgIo43zX3tBlIHX
 hBnxZ68pwjeEAmhYBHwb4dvwzMpiaJNjUsQgF18xbkcdL5lUrvZStks19axA64Cz
 dT5z1T0z7NM3Rw==
X-ME-Sender: <xms:5ZJTXo20TGsxtUHTVz6QBQfJAJ-7C9uNbfd9LXKG44Bv-bvAWbS-0w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepfeelnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:5ZJTXgk-q4FJPHHRPhkNHiCphejoaWLSs4-UsjWI-VkYYyEoWRJ5Dg>
 <xmx:5ZJTXs-VZhjsbkDgKtiOfyvUEt-rs7G6B76YjCJVIUjnJSFER7b7lg>
 <xmx:5ZJTXvGqislwdzjv-uqPfW2xF4l3Q-39gaCadxNBnzGhw7Wo86Thgg>
 <xmx:5ZJTXu7ySU6_HRwaHdTGm9imRBHMGVLhPGj-m5xLEnc-m4PD-QEAb-3RrvM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CF6793060BD1;
 Mon, 24 Feb 2020 04:09:56 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 47/89] drm/vc4: crtc: Turn static const variable into a define
Date: Mon, 24 Feb 2020 10:06:49 +0100
Message-Id: <f509208841b8d5a4cbff3bacaee4ca7fedb13969.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010959_056262_A72C12F1 
X-CRM114-Status: UNSURE (   8.24  )
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

The hvs_latency_pix variable doesn't need to be a variable and can just be
defined.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 4a2ea897eb48..53ce2bbb10b5 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -44,6 +44,8 @@
 #include "vc4_drv.h"
 #include "vc4_regs.h"
 
+#define HVS_FIFO_LATENCY_PIX	6
+
 #define CRTC_WRITE(offset, val) writel(val, vc4_crtc->regs + (offset))
 #define CRTC_READ(offset) readl(vc4_crtc->regs + (offset))
 
@@ -227,21 +229,21 @@ vc4_crtc_update_gamma_lut(struct drm_crtc *crtc)
 	vc4_crtc_lut_load(crtc);
 }
 
+
 static u32 vc4_get_fifo_full_level(u32 format)
 {
 	static const u32 fifo_len_bytes = 64;
-	static const u32 hvs_latency_pix = 6;
 
 	switch (format) {
 	case PV_CONTROL_FORMAT_DSIV_16:
 	case PV_CONTROL_FORMAT_DSIC_16:
-		return fifo_len_bytes - 2 * hvs_latency_pix;
+		return fifo_len_bytes - 2 * HVS_FIFO_LATENCY_PIX;
 	case PV_CONTROL_FORMAT_DSIV_18:
 		return fifo_len_bytes - 14;
 	case PV_CONTROL_FORMAT_24:
 	case PV_CONTROL_FORMAT_DSIV_24:
 	default:
-		return fifo_len_bytes - 3 * hvs_latency_pix;
+		return fifo_len_bytes - 3 * HVS_FIFO_LATENCY_PIX;
 	}
 }
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
