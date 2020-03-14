Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C27C185663
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 22:45:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYxYV0RhX79jTqnI7ZXO+iBnbw89q/nXBZwxIk4eJRQ=; b=hV/RmzMJujrocq
	Wj6+sBrQz7Aj+RAEySfEQCsCymJ+0yrO9ElBJOT7HPSS1aZRsMeZcjI4CVx/kn++8Tj5oWy6g8lKa
	xsYMHOleTkRo9BYb3b+05mivwmZjswCuJdBGMsk/lSg0fdyhVvGeWnl9zpSSjg+p0T2rCPXZvUtEq
	hLlba8IPmOEVlbzFM0J5B6vxBXH4nehD5TwBT7sLzWA3LJEpkCUiJbgXLCDFEYVpxaV3ncJU8DMeR
	2ChXw2Q4eCDwXNTwKeFhdqqs7/oQId3/nw9zbydDlzXuaKrEa1B0pqH7erjZ8EgmlaOyGC4nYRyiY
	Vc0GWig09d2j7jNH5PDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDEaZ-0002tc-Ay; Sat, 14 Mar 2020 21:44:59 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDEZG-0001ng-LM
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 21:43:40 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 1C50B8196;
 Sat, 14 Mar 2020 21:44:19 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/7] ARM: omap2plus_defconfig: Enable simple-pm-bus
Date: Sat, 14 Mar 2020 14:43:23 -0700
Message-Id: <20200314214328.13342-2-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314214328.13342-1-tony@atomide.com>
References: <20200314214328.13342-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_144338_742731_DD248FC3 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can use simple-pm-bus instead of simple-bus, let's enable it to allow
configuring it in dts files for using things like genpd.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/configs/omap2plus_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -130,6 +130,7 @@ CONFIG_PCI_EPF_TEST=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_OMAP_OCP2SCP=y
+CONFIG_SIMPLE_PM_BUS=y
 CONFIG_CONNECTOR=m
 CONFIG_MTD=y
 CONFIG_MTD_CMDLINE_PARTS=y
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
