Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF1116A256
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:31:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQVlZVU2Ums/w85wVVSvVobp36bW01Cd0NrxjXQEjMw=; b=YS1ggGq30ABP6b
	aJ2VMxd452NzHVBiYhXbi3HO6zhC4ju4YBghSCJza4aTzjq18P+pUTIWCClC0YaKzKken4XExSYt4
	8klCGIf4SXeWZXzt19bqPATRqwz0rts/yM5JoAIgmCPVQ2Brs8anxkX6YrsC7ZfFo9en5VzragSxM
	83ckH0syKkBOeqgTmH44R08Y0LURGCjLCYfw/Me/U1ZEyPS0HJTadvA0uHkrWGY4YpM8VLr6B3H2a
	FNXLbdK2nemhnq8PCNV0sP9UoY1HAUlDJEA6Ont9uvkOD133cc1miqR4FzMkS5tkQ00k8Yh/WR/X+
	m6Oqcs0Hk6bUUwIz6Njg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A5d-0008LY-Nr; Mon, 24 Feb 2020 09:31:49 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ki-0002jN-V4; Mon, 24 Feb 2020 09:10:15 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 92A2064A;
 Mon, 24 Feb 2020 04:10:10 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=dCChNX6FMZlCN
 ueoWIvqsRwLBjCvrd5jh3HlRZlOXsQ=; b=Rw4EK0w/cbVi4eTw2OZjPh/Tclk3v
 HCd3zmuFQoRMgTCbECzWoYvFkhawsaDpiM0P2/eAH9rkmcwGFN8daEpxtL5AiIge
 y9Sq+VQ8H6Vdsx+9x4L6u56RuHT3ctKKAkR28bUAF3DQdYYUpPTPZmNFmsBAai5V
 5wWSjf1qGJm5v80Qgz/kC0+NgJzLYRCSDMoqNmrPp3KdctjUsadNDEW3OvG2WlqD
 gGkAEbLz35SOuif5QFK03RM/7GKPzzRXa4h+1ShOye83zFn3DmLZvjZZ1GWAzUOK
 JD24tWbrSEm2SDeWVOpnYza4KCqsQ9RqTktfN9OCjbVQw1F4wlLIoU08g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=dCChNX6FMZlCNueoWIvqsRwLBjCvrd5jh3HlRZlOXsQ=; b=RJhZlgvN
 3yfJQi8HUOrXPqRG4EsBgm1xLNp294flcOw63/ChP7VKkrCgwav6fxRbhU1Th27G
 I060P/UvGNSGYFRgDGBwfadKl9gtYKeL0yFVpfWuPz+ew38Xs/M5RvekWAATcRtj
 scTmVvsTS+7GvATCfpSlhkFNTPM8dFODortsOywWEewFt+wwfq8SIEbBWle2Biff
 CfU+bUnjutH7HlSS7NypgcW0cQS6DJTvk480ogmCfBpARmmNVGbCza6/vhqhLxQl
 7CaFctg/WR0LsmWzMn477O/2MaJ7sftOHVSeqxc6bQ5IvTP1bJuwQ9eLO2I2uE49
 Oj4Qab7v04TYPQ==
X-ME-Sender: <xms:8pJTXkeCB41ym8md0m3NjMjgy5JIQzSP06lZmtOJyw4koMSCj98q4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepgeeknecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:8pJTXvCxxc2mayxuQyTRcJyJFbb1I8epe7kmRPXgKYaF1c_9Drwxkw>
 <xmx:8pJTXscdH2afqrIfdncj5DInIN9JoqhrKzCWtNcRRpf35YGNZNpi6g>
 <xmx:8pJTXjit5z8sEQg8vjMztB8ZeQJxkOnYPtyqpxi24AOLgpNyIp-WZA>
 <xmx:8pJTXqsOpzCeVTSqI1LQUHly2dY43rZ7Z8zcxHEr91V5tw7el9a-DxUlcrU>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D9196328005E;
 Mon, 24 Feb 2020 04:10:09 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 56/89] drm/vc4: crtc: Add HDMI1 encoder type
Date: Mon, 24 Feb 2020 10:06:58 +0100
Message-Id: <bca207588770faae4db427c729bae8da3fd6e849.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011013_655944_15B590C5 
X-CRM114-Status: UNSURE (   7.65  )
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

The BCM2711 sports a second HDMI controller, so let's add that second HDMI
encoder type.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index c262c7a388a4..1e44a3a8c2b0 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -428,6 +428,7 @@ to_vc4_plane_state(struct drm_plane_state *state)
 enum vc4_encoder_type {
 	VC4_ENCODER_TYPE_NONE,
 	VC4_ENCODER_TYPE_HDMI0,
+	VC4_ENCODER_TYPE_HDMI1,
 	VC4_ENCODER_TYPE_VEC,
 	VC4_ENCODER_TYPE_DSI0,
 	VC4_ENCODER_TYPE_DSI1,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
