Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1137816979A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 14:04:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=daV6JRQOQmbHZu6Kn5/5G+h9lyIDxPj5BCpy0RNiMHg=; b=sp0
	MpFzEVnz7aiQsa8/CPcaIw6BolPCoYcQLpNJQlRTehasFDFdYIAWr0Tdee4bQ3/WJ70cLpvV08rLb
	z3QR7OyvE82tE2GoQjfxz0ipRrRmTXBIllP500EQ+lOhxM1fY71659UN8EAkV92Kd33IHsV1vwCPQ
	wlkE40FhI4xdi+20Vr8Jjv5d5ViCYY6i0WPQh/Cj1LwCuZHZ1NNmVO2aqv21u24qYWhpkIDaIYdtz
	RPv6EV3eZQ58zytabusHBNEXy1xEP4hlSHzbYzyYI06j7ZWxZ6Mh7Qsa5ABuxP3w6iJzszZy86bdv
	GB55+MWoogv6od35iR0B218oegRN9Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5qvs-00014h-AC; Sun, 23 Feb 2020 13:04:28 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5qvk-00014I-67; Sun, 23 Feb 2020 13:04:21 +0000
Received: from localhost.localdomain ([37.4.249.121]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MhDEo-1jaDwE2jC6-00eMCo; Sun, 23 Feb 2020 14:04:12 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH] ARM: bcm2835_defconfig: Explicitly restore CONFIG_DEBUG_FS
Date: Sun, 23 Feb 2020 14:02:56 +0100
Message-Id: <1582462976-30646-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:CoVY1sXEwV2l9EVwIL4/vKabbkLRc6PDSydEJoCPv/DceZV9G+X
 +4Lsl2DE3ev9q4tPi8ZfMi/sOcG/535sYaOvQ8AHxonjQuQCe/C5BxhTPft9VB5KrlsG/lJ
 Z8h8KdxVCkJinnAxuTDG1iz2VQnIHWdlSxr1PA03By5GpXGJrMUbaxDYbZYp66bq833slJr
 iLFFf9mNBOocesZpllMkw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c/XCZm9674I=:VfT84tFuX8f64fMm1J1I52
 sETxGV0spQSxtdN+tGh2miB5BCFLH+o2mTomzwgHSML9CzEZI9eaz78tA5uguEJHcpKDAzZq+
 iLISvMKoMyfet3y/7h90bzjb8BdJ5pEyvi4l9pnym2U8h0UC0J0eWOLIM/gLZGzWDRtDAif4L
 gk/AP4DxHWsocnwJlx6UQaiiVoAGVwt/YlRlYqQcQz6LIN0j+95m69ISV954nqSRtH0GvbU2c
 Ta663VWP/N8kdtlurTuWGPc6HHjZzV+g6N2kWpmhWu8eqDtb2fLWLDNKMvvwKrgUOcamFciSP
 dCZMtu6YnFdS4QNNDZII7uf+99l1zxzagL376n/iNEOKPaPpdJTTu+5Bd+j5fVy1qYebg95da
 c/hMB+zc3wfj1dWrfHUmJEycA88ZEDp2Uu205mtxY+loQKGWnfeqqt6iivb0Hllynp3s04q7l
 nToDN5fxpbTdZ6/zd9UULcXp1liYXAM1QlHiQ1pYVVw6dAXWMy4msMHozTRuGUexy/IKX+6eR
 8qiv5EFabZRR7IVuAqPFSTi0w+Tu34Fmt0uuBd8F7juho2/5GlMDSMIv+hm/jYH2HctlECXK5
 Fo4k1/LBUvK3PvAQPs7sP2eTIa71Dil3Mrpm53Qw2WPtYWAPmXq4H0O1M2pMeTxXgF/buGUJJ
 lCshihATi/XM/W2/HaNKUjNwUnSNguYFO8AO+odzp3WB5hCp0VNp5clkG+fehT7Kkzd8JCNo2
 ihs7cHFL7lcPUBb900AAl5cn9rmeE4T/ODPCgBXRt/lHmoiOMjdAXrGn0x7esNvZfb9iO4NeD
 y7h42kMEwIopee0l1dxQ6mBJQZril99E0odWq4nQnRHhg8m9Ei5YYGhGNSWYQVBVKFcJ7Nr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_050420_532694_707ED5F9 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
accidentally dropped the DEBUG FS support in bcm2835_defconfig. So
restore the config as before the commit.

Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Fixes: 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/configs/bcm2835_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/bcm2835_defconfig b/arch/arm/configs/bcm2835_defconfig
index 3843754..8e7a3ed 100644
--- a/arch/arm/configs/bcm2835_defconfig
+++ b/arch/arm/configs/bcm2835_defconfig
@@ -183,6 +183,7 @@ CONFIG_SCHED_TRACER=y
 CONFIG_STACK_TRACER=y
 CONFIG_FUNCTION_PROFILER=y
 CONFIG_TEST_KSTRTOX=y
+CONFIG_DEBUG_FS=y
 CONFIG_KGDB=y
 CONFIG_KGDB_KDB=y
 CONFIG_STRICT_DEVMEM=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
