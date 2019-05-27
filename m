Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495102B489
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aPpAJQtHCc9TinLySt7ihC9EODre0MyN7vgfaqxNiOE=; b=BXRX7Aulg/g5aR
	abUdQdFnFTejqiYrVJLrDxR6td7/B7Stwz80uRlXcTk9yv0k6MC0AXEkHk+zuCr1eTa/5ODQ+hcOe
	asCBQHheYtgA574oba3ryJp69NqKG/iEPiOoOTpRFl+Bu7wpsKodnwoyIHMuK2BTWwi1dc92H1tM8
	F9iDpB1AP5vDkqc7YoiW7buoqnznO5am9gsUX5nCIGb2bY25Z/rLnkr0qub7hdp2LiYW7MgGmeQtQ
	iC+ATKy5IGa1dJw1hXE32/iK8oOdGMK5Q4NWKcgWBMFzml+AbQmLiAVKP0RQifPf2nc5h42xPZWP8
	jn1m8Y0HweCBG8YlKKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEW9-0001sx-4m; Mon, 27 May 2019 12:14:17 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEW1-0001rq-7U
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:14:10 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 79BD780F3;
 Mon, 27 May 2019 12:14:27 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 00/12] ti-sysc driver changes to drop custom hwmods property
Date: Mon, 27 May 2019 05:13:36 -0700
Message-Id: <20190527121348.45251-1-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_051409_305092_A176C16E 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, Keerthy <j-keerthy@ti.com>,
 Suman Anna <s-anna@ti.com>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here are changes to improve ti-sysc driver to the point where we can
finally drop the custom hwmods property for most cases. This series
drops hwmods property only for omap4 UART and MMC as those can be
tested with core retention idle.

I'll be posting more patches for dropping hwmods properties as they
get tested.

Regards,

Tony


Tony Lindgren (12):
  bus: ti-sysc: Support 16-bit writes too
  bus: ti-sysc: Make OCP reset work for sysstatus and sysconfig reset
    bits
  bus: ti-sysc: Allow QUIRK_LEGACY_IDLE even if legacy_mode is not set
  bus: ti-sysc: Enable interconnect target module autoidle bit on enable
  bus: ti-sysc: Handle clockactivity for enable and disable
  bus: ti-sysc: Handle swsup idle mode quirks
  bus: ti-sysc: Set ENAWAKEUP if available
  bus: ti-sysc: Add support for disabling module without legacy mode
  bus: ti-sysc: Do rstctrl reset handling in two phases
  bus: ti-sysc: Detect uarts also on omap34xx
  ARM: dts: Drop legacy custom hwmods property for omap4 uart
  ARM: dts: Drop legacy custom hwmods property for omap4 mmc

 arch/arm/boot/dts/omap4-l4.dtsi       |   9 --
 drivers/bus/ti-sysc.c                 | 182 ++++++++++++++++++++------
 include/linux/platform_data/ti-sysc.h |   1 +
 3 files changed, 140 insertions(+), 52 deletions(-)

-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
