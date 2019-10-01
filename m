Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD3FC2E8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hWFC/F2+dwgqT5NcKL0TqMUb/vFutqVnZE9T5eg+458=; b=dqB8+K29spVrtl
	JVP5xBf+PAKDpiil2Vnchp6wO/UB3w3NxnBgwvW2ANvoRzcRbJU2b0rZdNdaLwFQBBVSYunLeApiC
	UYOWyUDcqh4XOw2m5/wOJGdBQBdSf6t1l9vfkUKwt6APEd6HDFETcF0WKIM2dULLlAZBBvsMTgR7O
	8xnda6I1oK/wM94N3Z8jmKs9II2HHOye1RBjDaQfm5cu8EyQPtQpKZe0UPYYR7xiMROri9d5o2ldU
	q8b6Rg54zQzALwxhmGcT7okVRoXDFNkC++Ep0Qrm4UdLQdJe9txrYjyOOp8ZNk8zXIjxcUCBrcH/B
	vsCOfDLeGPYQOIhPx+ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFD8h-0003aX-Jl; Tue, 01 Oct 2019 08:04:07 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFD8b-0003Zt-2Q
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:04:02 +0000
Received: from [199.195.250.187] (port=57030 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iFD8W-0004DW-3H; Tue, 01 Oct 2019 09:03:56 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id DFC5182AC9;
 Tue,  1 Oct 2019 08:03:44 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 0/3] drm/sun4i: dsi: misc timing fixes
Date: Tue,  1 Oct 2019 16:02:50 +0800
Message-Id: <20191001080253.6135-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 50
X-Spam-Status: No, score=5.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_010401_110634_E2F95905 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-sunxi@googlegroups.com, Icenowy Zheng <icenowy@aosc.io>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset fixes some portion of timing calculation in sun6i_mipi_dsi
driver according to the BSP driver.

Two of the patches are reverting, one is fixing some misread of the BSP
source code, another is fixing a wrong refactor that actually breaks the
formula.

The other non-reverting patch is fixing a porch error which is usually
seen in the original driver commit. Most of porch errors are then fixed,
but this one gets ignored.

By applying these patches, several DSI panels are tested to be driven
properly by the timing provided by the vendor, including the LCD panel
of PinePhone "Don't Be Evil" DevKit, the final PinePhone panel and the
panel on PineTab. Without these patches they need dirty timing hacks to
work.

Icenowy Zheng (3):
  Revert "drm/sun4i: dsi: Change the start delay calculation"
  drm/sun4i: dsi: fix DRQ calculation
  Revert "drm/sun4i: dsi: Rework a bit the hblk calculation"

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
