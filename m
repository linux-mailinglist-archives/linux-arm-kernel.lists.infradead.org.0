Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43048CD35C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 18:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=znjwGQubw737w+hO5C6S34xGNx7xZu2PLc6HoeTx/YQ=; b=cDZ49Lx0bY9uB7
	G8966EUDDfEKf158RxDgtZx54mhGrBTc+POelgq05mgx/ff5xdqKrORQNAxAqsFhGBLTRlSakCphL
	s+RFjlf2gWxTwOqisO/jUfNIQnj7iRw5fo/P7xq3qWPaUJdDNhWj8E2oXtC/iJsZfweS/2JmJs9TH
	BBaFOWHyl+N0/9lR79zzN17ymAGccBKEjOgBf2EmO1KkRZRb8CTuLdVttrZ272WvGRXsu9EKS4Ujt
	qxCa/vTyJZ/d0JP8sEwbFGT8rV+0VjLCxi9JYVvQ9nBNeW9GNJJ5jWqY60vMwHkLMnlspP0P8Q0dK
	ficciXrz3ksobdGBstSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH91K-0005nl-QS; Sun, 06 Oct 2019 16:04:30 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH916-0005jO-Dh
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 16:04:18 +0000
Received: from [199.195.250.187] (port=38197 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iH912-0004ET-8f; Sun, 06 Oct 2019 17:04:12 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id B0BE18289D;
 Sun,  6 Oct 2019 16:04:06 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2 0/3] drm/sun4i: dsi: misc fixes
Date: Mon,  7 Oct 2019 00:02:59 +0800
Message-Id: <20191006160303.24413-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 50
X-Spam-Status: No, score=5.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_090416_476265_A7385B3B 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
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

This patchset contains several fixes to the sun6i_mipi_dsi driver.

First, it's a rebased version of video start delay porch fix from Jagan
Teki.

The next patch fixes the overhead of HFP packet, according to the source
code of BSP [1].

The final patch fixes DCS long write, which fixes initialization issue
with a panel with ST7703 controller (XBD599 panel used by PinePhone).
This seems to be a misread of [2]. (The formula in [2] is para_num+1,
and the code of the sun6i_mipi_dsi driver uses tx_len, which is the
length including the command; thus tx_len is equal to para_num+1, so it
shouldn't be added with 1 for another time.)

Icenowy Zheng (2):
  drm/sun4i: dsi: fix the overhead of the horizontal front porch
  drm/sun4i: sun6i_mipi_dsi: fix DCS long write packet length

Jagan Teki (1):
  drm/sun4i: dsi: Fix video start delay computation

[1] https://github.com/ayufan-pine64/linux-pine64/blob/my-hacks-1.2-with-drm/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L920

[2] https://github.com/ayufan-pine64/linux-pine64/blob/my-hacks-1.2-with-drm/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L227

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
