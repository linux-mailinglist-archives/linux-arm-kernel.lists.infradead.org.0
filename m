Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6E71E4992
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uzl1oHWCm8svIdDE/k+3yXQxavvass0iY6NiDskt7wg=; b=kALFWxanDH/D7a
	swVwrPO9v+Wfdg9pQinn+niLac4N4UiufBIl4c9CCpZ5od03Snza0HjBe5l13ocgr3oezOqC2249O
	Rvhg/zkyAgbN8sGtJkLLhh8xJ9JJlrye4K0RJg9jHye42dcW0HnGgXEc3Y7MFon5UdzIClzgBUszg
	E6FPxAY8ycSxKVs68Gf83+V0bqdFbQGGFNiw8VtIZzy20clukF3FYTrYO1N5MyrFJbF7a+Jjnhgcz
	Rd7kIy7WvgCyM5h+h+5tOSiWBBJD27Km20z/X+cqszMgOJ4N0Yy6XZhUs0jNOasDCzOmwxyMksUYF
	Gt+Np/16LoHCLiJAY9eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyiB-00036D-7q; Wed, 27 May 2020 16:15:23 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyK6-0000iN-8w; Wed, 27 May 2020 15:50:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2AD8A582086;
 Wed, 27 May 2020 11:50:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=nG/RYo7tmKxJf
 6kRryI78rAS9caRthvRwWfJX3SbsG0=; b=A5CdNSbzLgWsDFPRyDGr7S6i2Qp6J
 vgfku64SpbbqX1swjGP4Im9bmXzaraxHGW+KHX2EOPNHDfZcxTmnRaU1vbl+9bLS
 ZRJEfcwoFdN5LbbSsGqd8ywC9dAY8Qp8F8LIRTZHH0PQScEZZcLTss0H2wDxYFeN
 n5/Vaz1eV3NHGr8Q9hAkDtzgP2P/3zIjyL1TbTB/aULwNTi8Jr3nDPlrumDkTmIo
 Y6I1oBAPiOJn64U1BU7LDhC9bIgIyFOAqAxfCtPOqFDHyg6ER+1UYOU3B/CUba0G
 ChRxxPKpajCBqC0lE28jtAOFLrsOEEs0aWZyKuvmjWRreqULCHPgiH0xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=nG/RYo7tmKxJf6kRryI78rAS9caRthvRwWfJX3SbsG0=; b=1Fp/wADc
 U9CoB8+Xb/cAepV5LsvhZE5Ybj7f3c4OX2rHQyLcWZ2XbbORDmY39LaWY53JYyUu
 qd7qhVu3LFi+lFsbEaDYmnPgF3640mj7rya8im20njaCYB3LNyDPqcmMWtBwdTue
 03dDIU2yvmlpdHkqTebyeiUk/cuX4phcz9kkyHHF00LoSSbE3/DcQUEOI9IT3Rri
 6QPkXya+7at64Q69oO9G/FY+QR0MjJUnnXvbKTcee4o/9I7y5PkTAn2CHHpVqyRl
 e7ix3nZaY5qw64x1swnuPMWHQRbu/F8Prx+RlCnkT/5OVE8UZ2hkKj1V15e70gG4
 HjiZ4tWzuXEVFg==
X-ME-Sender: <xms:RYzOXu39WoUbQEbRgsOLV35Yfy_8hMu55Unxy0A0yEWaG_lMy9ALVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdehne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RYzOXhEoU2zzLKEzZoaPyG5uMLEcxpZmJcjyVfHvjK6x-lwksZp7sQ>
 <xmx:RYzOXm6tc3rkK2f05zF3f2CO28fhhrgFKmyf7ooU0eyHR_b6UY2Edg>
 <xmx:RYzOXv0XXZvz_mGcy7MCNvksUEk9Xi8anuFRCeMFaY_J2onO8DufPg>
 <xmx:RYzOXo3YiqEi58qDNsOLf2piHcaszUUnKVyvxxTCUXSCvfobXzrscA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 98E263061CCB;
 Wed, 27 May 2020 11:50:28 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 045/105] drm/vc4: hvs: Make sure our channel is reset
Date: Wed, 27 May 2020 17:48:15 +0200
Message-Id: <c1c69d2d2d909822300dca1ddc0bb5b5896a5107.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085030_497894_68537D58 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

In order to clear our intermediate FIFOs that might end up with a stale
pixel, let's make sure our FIFO channel is reset everytime our channel is
setup.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hvs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index 87bbd68d44db..754aff3966bd 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -205,6 +205,10 @@ static int vc4_hvs_init_channel(struct vc4_dev *vc4, struct drm_crtc *crtc,
 	u32 dispbkgndx;
 	u32 dispctrl;
 
+	HVS_WRITE(SCALER_DISPCTRLX(chan), 0);
+	HVS_WRITE(SCALER_DISPCTRLX(chan), SCALER_DISPCTRLX_RESET);
+	HVS_WRITE(SCALER_DISPCTRLX(chan), 0);
+
 	/* Turn on the scaler, which will wait for vstart to start
 	 * compositing.
 	 * When feeding the transposer, we should operate in oneshot
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
