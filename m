Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813B616A21A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/7eBliQO+lSXy0+0xWVorhzNK+somTjo6F5IW7QG3c=; b=XNOg3paP48noSH
	Bp14ScLPc3m0iMY8NkpN97+H5GqYccBclK1OSE/pljKV/05gRZCi3yoAfSZ1IboCODH/SS/EjbCpV
	NfmDBxDyXpNVGsI7Dr7/6NMTLSrJkPMbeFWQ1QIxvkbERMsollHMH9j30dysQ1/V1e31ROsQnCJ04
	3hPG/epRHKXRbcZOjV3HR1bQo4OUlskBMaHKQ6bPAE97pLQnaU12vUN6BGyGOvHSjtFG3ILWVzIDo
	KFpk/81hksSaiPKWJvvOe30AclhuGhp8K5rJGmxcIFKWWAR5wam44pmRWvagBsE0IeoCZ7cpvVRMG
	TVVe/CnMbYhQ3iKEoIiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69yt-00085T-Bs; Mon, 24 Feb 2020 09:24:51 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kb-00025P-0h; Mon, 24 Feb 2020 09:10:07 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id C4C93616;
 Mon, 24 Feb 2020 04:10:01 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=hKVRtL0uL3hgd
 oZOi9U39towoF/TFyELVBoPINOnrVA=; b=FFNwPKkvgAgjPLwGQ+wYtIkzQ1pNg
 GZawvETvOEJmuD3b7VcgmfrHPjhhcOYN0+Kv2rAWkjD1GzK/r+BhaDUYWJfoK9U2
 OOXV11lkX9S3rCIR+hBmu9Aw4bgq4jXb87UWt48t832NXRs66LtnPWI/HlRSSI6C
 +hkv8PXzn6FNCNOlhLiXW/4bUmsrT6lK5dQLKkp7wA03iMZV2X4DhR1CObZveCTl
 HSU8HTAwErumhejqVWtb5cY0Vx+Zif7eK1OxQGwFuoTmSe2dTvsCdlxuOCWyHixh
 /9twQzZUffdzcIov7MActMKkkNqFdEGJibeQjM6KNPu3XW2tA+DevY2FQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=hKVRtL0uL3hgdoZOi9U39towoF/TFyELVBoPINOnrVA=; b=AzL+CVwf
 a9N5IqzmiojHkdLjbTVE2a5K3IDHYJdo3dALD86IzDzfS1cu3cle/uitOEU0Iv2E
 7IkLiDDQlMc31kWkj8Tn11NCqPzP1S/4LV1j0sJjvvj/QevszbTGKgzjQIbbDwOW
 cyN7Kvr79p9paeAC6kDftvPhfOJXtDbQnNfQy9qwfl3JUzj9U7DunCS75CQ81hSx
 q4NiZPpkMCrLXV045zufySQy77VMyFHp1ynxlPgNrnoXRrdBJb77paRnGLOnCr0D
 uK2z6IfqvPWQWIdN6bc18RcmOJf/vJKvWjPvrxnOoc4E6uwNpwqm4Hencmi6E4lm
 EZETa6xWEaABWQ==
X-ME-Sender: <xms:6ZJTXsJ7N7nGkoGGvEFJ_CUykwxSE3FsLkMYx5H0Sjjkuw6Aebt6zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepgeegnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6ZJTXoMG7TM335l_S7DotE5GFvIyNambRV6vWGbp9gJkv2-CnyCHOw>
 <xmx:6ZJTXioyKEHzS5On1Z2jizBJSvZkvpZiXrHv2jHV6s5tozdaoMeNUA>
 <xmx:6ZJTXqUlOXzTc57wUn6JkAPoffUfW16o1TFVssHSin_8Tuu2Bpqt3Q>
 <xmx:6ZJTXnhHQX3aDLOVxgdv0jHYEqdytoSOHJMgmkAquwime7payNem_hEYCfM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 16FC53280066;
 Mon, 24 Feb 2020 04:10:01 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 50/89] drm/vc4: crtc: Use local chan variable
Date: Mon, 24 Feb 2020 10:06:52 +0100
Message-Id: <3e902ce1e4f07af302997f827fc736d951d752ad.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011005_332064_743BC53D 
X-CRM114-Status: GOOD (  10.39  )
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

The vc4_crtc_handle_page_flip already has a local variable holding the
value of vc4_crtc->channel, so let's use it instead.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index d03bd7946a84..d3ff32daf60a 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -815,7 +815,7 @@ static void vc4_crtc_handle_page_flip(struct vc4_crtc *vc4_crtc)
 		 * the CRTC and encoder already reconfigured, leading to
 		 * underruns. This can be seen when reconfiguring the CRTC.
 		 */
-		vc4_hvs_unmask_underrun(dev, vc4_crtc->channel);
+		vc4_hvs_unmask_underrun(dev, chan);
 	}
 	spin_unlock_irqrestore(&dev->event_lock, flags);
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
