Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67734DD3D5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 00:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ILYWB1Bk075ry/OujY/cJr+GZDgjxe2fQQZL/A7dngc=; b=kHXV0PKG5qlMLu
	7S15H6UvVby5XCGr5Hj+4Lq+WmT8geSolkDyyXZdo3wg91xgG+0BQqGraW+VZTBioEKvxQ2eyoaGk
	khCXPI9DyfrvLA5+02PxoYDKTjBqJgWCs2t2q7aDVyOLa+tJzN/V62ofyXNYBSRbYwH2G+s5N9BEZ
	X8I0jZbSscFaIpN59jQB9PhyYBgk6dNew6iHOoDYpW1u9He23isZsHDFhJsMfyTtqmEFARMA59jPD
	As5XQaq99vv4Q+s+1tadNI2yZ9+jr3Mtfyy2V7u64ouFG0cSFcP+3hiXcN3pTxDrBOPfnM/9q6FmU
	sW8e4WzlLZlgFwTbtGSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLact-0001D3-Dc; Fri, 18 Oct 2019 22:21:39 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLaci-0001B0-Sw
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 22:21:30 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id DF3E1809F;
 Fri, 18 Oct 2019 22:21:59 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 0/2] Better voltage controller configuration for droid4
Date: Fri, 18 Oct 2019 15:21:05 -0700
Message-Id: <20191018222107.32917-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_152128_997861_C8C086AA 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org, Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here are two more patches to change droid4 to use low-speed configuration
like the Motorola Mapphone Android Linux kernel does.

This gains us a power saving of 7mW bringing the whole device power
consumption in retention idle mode to about 32mW between wakeups with
screen blanked, modem off, usb and phy modules unloaded and wlan
connected. That's about the same number as I measured Android do in
flight mode suspended.

With the pending modem patches with modem online, I'm now seeing average
power consumption of about 60 - 70mW for the whole device as measured
once a minute from /sys/class/power_supply/battery/power_avg.

The patches are against v5.4-rc1 on top of the related patches:

[PATCH 0/8] Improve PM for omap4 devices

Regards,

Tony


Tony Lindgren (2):
  ARM: OMAP2+: Configure voltage controller for retention
  ARM: OMAP2+: Configure voltage controller for cpcap to low-speed

 arch/arm/mach-omap2/pmic-cpcap.c | 18 ++++++++++++-----
 arch/arm/mach-omap2/vc.c         | 34 ++++++++++++++++++++++++++++----
 arch/arm/mach-omap2/vc.h         |  2 +-
 3 files changed, 44 insertions(+), 10 deletions(-)

-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
