Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B08E159947
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J1u7KUn7+D12CTUtQHvdwptG9/WWyKxVlsifF4atrQI=; b=N7fzT+TQkEs++v
	+qfesGkzOk9eDHFZcnwFJHnnbvnl2cNiHBVqDo/0nUfyG9HfkneBNXD2FsG2FkkAncx3sUuMfnZn5
	MNfiimK6GDdQwRuXG0i0Sss/3c2yFLhnfn8/n4rO6IBLEq0bBkSgcfWdgQqNXfVeqaTA6qrR8GoqX
	FX4JJH70wWRV3JQp6EhNt2JJByDkJ1+qnTCAwyHDSAEWN/tgL1o9Ld5k3tjHyZfdUr41FJklUi7NJ
	ghctNLhEYBUiHFm1yCqxfnyeaP6lO5jFjeZkF2iMafor4D6A9SaiJSRDwW2MC5ISOdrxdkdzYVnix
	Tvp6cN3P43BIticrkbgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1amk-0004Ni-5s; Tue, 11 Feb 2020 19:01:26 +0000
Received: from mailoutvs50.siol.net ([185.57.226.241] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ama-0004Kw-60
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:01:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 4F0835251A6;
 Tue, 11 Feb 2020 20:01:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 9Oh5r2s8Blr6; Tue, 11 Feb 2020 20:01:02 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 092D4525187;
 Tue, 11 Feb 2020 20:01:02 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id DB442525125;
 Tue, 11 Feb 2020 20:01:00 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 0/7] clk: sunxi-ng: sun8i-de2: Multiple fixes
Date: Tue, 11 Feb 2020 19:59:29 +0100
Message-Id: <20200211185936.245174-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_110116_387771_C2351098 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.241 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Changes from v1:
- fix "fixes" tags
- move sort patch at the end
- update several commit logs

Jernej Skrabec (7):
  clk: sunxi-ng: sun8i-de2: Split out H5 definitions
  clk: sunxi-ng: sun8i-de2: Add rotation core clocks and reset for A64
  clk: sunxi-ng: sun8i-de2: H6 doesn't have rotate core
  clk: sunxi-ng: sun8i-de2: Don't reuse A83T resets
  clk: sunxi-ng: sun8i-de2: Add rotation core clocks and reset for A83T
  clk: sunxi-ng: sun8i-de2: Add R40 specific quirks
  clk: sunxi-ng: sun8i-de2: Sort structures

 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 127 +++++++++++++++++----------
 1 file changed, 80 insertions(+), 47 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
