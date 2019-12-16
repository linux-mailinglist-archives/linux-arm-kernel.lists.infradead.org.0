Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12461120706
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kze5otapIv2CVMaid9PMJ29XMR2QeAlBg1DXhmdBV3M=; b=K0KgCjFXHtAs1F
	lyWOObS6SUOczAPEet2rFVFldocKQPja68VVbdAI1QSGxbc1GrG8buPAH7O6sfotlMFzfNEpnk/aT
	z+i6wHWTqP0lfh6NI0UD1fLwlmUcwKGjALKjhVHilqIhRoFblQZMmUOLMfFeS7zw5h0qb+yKsFxB/
	Jzk1gdLdbtN/Ub2OcAst1tVo7GhYHTPAn5U5RkPEEDZ4DfKKYFN8sBmyILxgkO5Z/j7LrGN79kwp7
	yqBVNVpeR3HDK/tDERJF4+1Ka1aLOJwanuee+8fClhVlwPttd+zHKwzq/wqWkjRPwgoXUlD+MRxWq
	RwtGo/vNML79ZWll7/LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqK6-00071s-Vx; Mon, 16 Dec 2019 13:22:06 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqJy-00071U-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 13:21:59 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MGhi0-1iT9Ch3e2k-00DrdU; Mon, 16 Dec 2019 14:21:34 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Tero Kristo <t-kristo@ti.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>
Subject: [PATCH] ARM: omap2plus: select RESET_CONTROLLER
Date: Mon, 16 Dec 2019 14:21:26 +0100
Message-Id: <20191216132132.3330811-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:Wm5RTpZAgx5UpDGIoWv7v4EV7gdfDKQbLqHRuQjOl+FrgU30CXT
 axQk9AW0xPd7KS/ckntU087e9UeSzC5puiBOhiDC2jXNCLtwnF7z+3SGrPJDn5SrDkCBSfJ
 uaaXALhckSIy8qrY87GXPTv53Ehouq3yWA+xHHc9uk4WUVKG5qBHqn4arqcPnS1mAJ1LS67
 1beLDQLKqRcI96Xz4pJ3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Hrhxfp/VpYg=:3otAal51aHHrkXXep6RH3D
 7F0TWQqaWvIE6pZWycdW0E94YlOXWPMFP6aMmQvxiv1V+yLiY2VWmBia32ctSmLwaqXqDfRon
 pvhuknI9ImJtknZepqcWir9QoV61iyewoOYhWlh/TAb533Du5IpXnN+EpnZ/RLRbSfRNswjnv
 SVeX3cGJZZUFTaQldEZ7dSukka3ZgyFdVELyWO9lbJTbNY2usV4AEZLs+cU7vEnkWX5SmKpV7
 Wjh2GIYbkYJZgJXnHPLFS3IBzczQr9AR7supnUl1r5+QIx4P8QiPkyBgQL+ulfOG/TwHu+UT+
 TAvzHq/vmlFxQVJbr+gPGUWz+bfZUTcJgySg0B6PYMSWsckQ3EwtzyfKq9rS1Tf4TEN41PbOd
 9MTGtmwxzpbsNOxYJXzm/3R/GWgSSj2Ws6No7WFdeSyG+o+qWPQrJvIBOjUPmQt/N5VgdSbsH
 9/UmgMUJlFPZRVfQwd2ksC34toKEjbL6Pj+pnrzrQQeAHJKFfnJ/en/nmx4ePAJNxDOaSi34t
 n9k8kisZWjgEoL9UkqlPzN9PPKioK6KVWt8DPQVQo49jsJDIgUyfho/hWLQwOb2Oj2yiHpLPj
 hs6J9TPJv+vc09ftQI2x2ar3Qo9Sf4K+X7gHcpSaSVmMQt+w1p18DEKsaKKik03Cm1AZx930O
 FQsf7nrtKzqa57ux1XvcYb1qXkP4E5XKcnNm9TnE+KWVdu+xSAZVML3jAtPt2gH0pOZN3Vp0I
 ZqcPfdT7utDoewzkX7bHJx7AgSFSny7N+OkdsgTiQwjJZnrbbdslnq5Z/yCMn7sIHsc7ZSxEg
 eVaUCaX1Ulxe54UoREM+4uNOjYLy5HHCdVyPTpcff+DIoRgazBOxWn/vJICZcGIzMtY64yXYh
 HWZNCOLHk4g6rke0sltg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_052158_769791_B370326F 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the new omap_prm driver added unconditionally, omap2 builds
fail when the reset controller subsystem is disabled:

drivers/soc/ti/omap_prm.o: In function `omap_prm_probe':
omap_prm.c:(.text+0x2d4): undefined reference to `devm_reset_controller_register'

Fixes: 3e99cb214f03 ("soc: ti: add initial PRM driver with reset control support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-omap2/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
index fe0f82efb1de..639bc38567a7 100644
--- a/arch/arm/mach-omap2/Kconfig
+++ b/arch/arm/mach-omap2/Kconfig
@@ -95,6 +95,7 @@ config ARCH_OMAP2PLUS
 	bool
 	select ARCH_HAS_BANDGAP
 	select ARCH_HAS_HOLES_MEMORYMODEL
+	select ARCH_HAS_RESET_CONTROLLER
 	select ARCH_OMAP
 	select CLKSRC_MMIO
 	select GENERIC_IRQ_CHIP
@@ -105,11 +106,11 @@ config ARCH_OMAP2PLUS
 	select OMAP_DM_TIMER
 	select OMAP_GPMC
 	select PINCTRL
+	select RESET_CONTROLLER
 	select SOC_BUS
 	select TI_SYSC
 	select OMAP_IRQCHIP
 	select CLKSRC_TI_32K
-	select ARCH_HAS_RESET_CONTROLLER
 	help
 	  Systems based on OMAP2, OMAP3, OMAP4 or OMAP5
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
