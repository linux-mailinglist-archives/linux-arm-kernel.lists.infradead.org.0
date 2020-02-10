Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CFD15858B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jk0877wIagx5iRvSLFTmy6V3ti95yBL4vE9Lg8VFluM=; b=UeurRoVBDavA1K
	7xp1Z8IsEkO68HWWwzI/MH3kko8mfLXLNV++YBbXUgboarnjjGp5QG7D1BZG/8Jq/9VuYrT8x3X98
	VFt1+0E+2ZpDkqTBETWVYoX+aZAvvLtynBosgK3hIRDk5hQu6iM7YvS5l9lIIorYCQPdfTa6FZcES
	8hHAQtvlX4j0VdEOvNpc1mXfEeqx+GS5Crfad11gxMr3EatBtIbtPcbPk2x100KGGA6Pt237DwW9W
	rjdz7x822O9IfoTB19ogT33m2apK6EhIJhtJ7VSIH1QNUS/3ClfYf8mV3VhoSRItjzp7KfMb5Nn3t
	CvUD9qAFWSm5ah5lbVeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HYC-00064H-7F; Mon, 10 Feb 2020 22:29:08 +0000
Received: from mailoutvs57.siol.net ([185.57.226.248] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HXW-0005cg-Qc
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:28:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id EE8795222B4;
 Mon, 10 Feb 2020 23:28:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id gTivMyQ3DMx5; Mon, 10 Feb 2020 23:28:16 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 9DF585221F6;
 Mon, 10 Feb 2020 23:28:16 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 1CEF3521B7E;
 Mon, 10 Feb 2020 23:28:16 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 0/7] clk: sunxi-ng: sun8i-de2: Multiple fixes
Date: Mon, 10 Feb 2020 23:28:00 +0100
Message-Id: <20200210222807.206426-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142827_016703_A95899A3 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jernej.skrabec@siol.net, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, icenowy@aosc.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In current sun8i-de2 clock driver, rotation core related clocks and
reset weren't considered properly. All SoC which have that core don't
have those definitions. Even worse, the only SoC which have rotation
core related definitions doesn't have that core at all.

This series fixes this mess.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (7):
  clk: sunxi-ng: sun8i-de2: Sort structures
  clk: sunxi-ng: sun8i-de2: Split out H5 definitions
  clk: sunxi-ng: sun8i-de2: Add rotation core clocks and reset for A64
  clk: sunxi-ng: sun8i-de2: H6 doesn't have rotate core
  clk: sunxi-ng: sun8i-de2: Don't reuse A83T resets
  clk: sunxi-ng: sun8i-de2: Add rotation core clocks and reset for A83T
  clk: sunxi-ng: sun8i-de2: Add R40 specific quirks

 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 131 +++++++++++++++++----------
 1 file changed, 82 insertions(+), 49 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
