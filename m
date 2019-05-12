Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BC81ADCE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 20:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hQZkHRBwsMlGkS2zwjszJKz+JItJuzVcIyQvSxrbkAo=; b=f5mSj7cNkgeL7X
	t3PkeGhFnm7velT0yWWCiSPVK/8+smnWbDvQy4nThit+tid+apGi7F+CUOsu5kPpG+yOwF7kxRO5r
	UrMB0DwQN3AG0xMCA+fDPvMIzZeqH/6sLDwVDTBckJBY0Q8ccKUhXZ64jeNx9ThgwnlqmPiFuvAAo
	/mcXVhv0FqhSQpdIMXSn/Ft9C982Ay6ciP0NNrHVzHQhQ5tbNJbvJq4nktFyLitJBV8YrWcipmque
	777qJ1qsa8fHl0i5ESkQqX0XC4YIXQaf4iUI7g231wDqWEbN2O9iP8EbDNmDQSNNLl43Waee2YE74
	wxI704SoBplPggAgYB1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtQ0-0007sc-4Y; Sun, 12 May 2019 18:41:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtPr-0007s1-QO
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 18:41:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id t187so5545954pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 11:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e+4FJQrwxfW4iQ3D++ujgHoZ7fSNJSGSWELuM5mxXM0=;
 b=OFAoMYrjTKSrSw68dDWRRAa8d060sQJaewjsrrmuYlw7o0UTzedLE5cjsvyGvG6/lj
 XFe19ijnnSaSUUsxtTUcmuztKzK4FrkBnPr61fwbecvFpT8FD+xEs/TTVE3mTrT4M214
 GmkpotVhxepcWmHthgsbOF67lJkSrkiHKb8rM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e+4FJQrwxfW4iQ3D++ujgHoZ7fSNJSGSWELuM5mxXM0=;
 b=KrLt9+1onSDRve9kTKAE/6DCT9Yc/yQ05wzpj/NCR6KnWJ5ta2DEs5u1etxC13BDdX
 gZLFC66gfSYtXQrw0Rp3A2oUWRnpv2tgbXNhAzOSD1HIFS54Ng7XOln9fhxQulnzvpyd
 e16PPYUlU4KqGd2E3plt4fXeA/jT3Vp4ZmohviePhmEPPAlyS+4fD7v+GRXnZGZkKeXC
 rnPO63rEqeBAc+s51uDDb3NmCSz9B6VQ+GAHF9+M2h3y62T+cE7a92DCfsExSTkyQg8d
 24Kws3+opysaoy3dThAB0NvB0zTi/I+xwtkNzb4uyNRPryRCrzDfc9bMflaxzEAfgb6e
 C0Lw==
X-Gm-Message-State: APjAAAVTS9n6yNQDNvBE8c1O2gZHYsy/cVlxJ0QwkyT2m2XpoRmfm/Rd
 K5Q7x4Ydpwxw6PnOqbF0dvFxuQ==
X-Google-Smtp-Source: APXvYqxEjNVOEFw39liUe55Z6S+XNfP2Rf4kINCXCoKeJYUK6ImMO8g8xjL8UwoLXVRCynFgk9TW7A==
X-Received: by 2002:a63:4346:: with SMTP id q67mr26842320pga.241.1557686502441; 
 Sun, 12 May 2019 11:41:42 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id 37sm11041291pgn.21.2019.05.12.11.41.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 11:41:42 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v10 0/2] drm/sun4i: sun6i_mipi_dsi: Fixes/updates
Date: Mon, 13 May 2019 00:11:25 +0530
Message-Id: <20190512184128.13720-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_114144_318534_C5910EAC 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-sunxi@googlegroups.com, Jagan Teki <jagan@amarulasolutions.com>,
 michael@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is v10 for the previous series[1] and few pathes are dropped
as part of this series since it would require separate rework same
will send in separately or another series.

Changes for v10:
- rebased on linux-next
- dropped few patches
- add 150 multiplication on hsync_porch
Changes for v9:
- rebase on drm-misc
- update commit messages
- add hsync_porch overflow patch
Changes for v8:
- rebase on master
- rework on commit messages
- rework video start delay
- include drq changes from previous version
Changes for v7:
- rebase on master
- collect Merlijn Wajer Tested-by credits.
Changes for v6:
- fixed all burst mode patches as per previous version comments
- rebase on master
- update proper commit message
- dropped unneeded comments
- order the patches that make review easy
Changes for v5, v4, v3, v2:
- use existing driver code construct for hblk computation
- create separate function for vblk computation 
- cleanup commit messages
- update proper commit messages
- fixed checkpatch warnings/errors
- use proper return value for tcon0 probe
- add logic to get tcon0 divider values
- simplify timings code to support burst mode
- fix drq computation return values
- rebase on master

[1] https://patchwork.kernel.org/cover/10837163/

Any inputs?
Jagan.

Jagan Teki (2):
  drm/sun4i: sun6i_mipi_dsi: Fix hsync_porch overflow
  drm/sun4i: sun6i_mipi_dsi: Support DSI GENERIC_SHORT_WRITE_2 transfer

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
