Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52679481FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBLA7Dksjy1uK5cY0ZKdxP0usWGsI8Tv3F8yQvTkJcg=; b=Fqy/0QpNeeS6R/
	uoEd7XzuRr0pk/TYJBa9U9Rg92FDRG7gYscXQxY3n7ms29Jq7IHIeI2JCSeITITaR1D2YscXJgi/W
	IH3E0oZlekgSy01yvG3S20M8VoCLi2g82cHsN6dptkoRaYqgjhugdMMGDdMTL3LvY2xCOzhJCeNcQ
	+LuFUBRpFoCljFTGAh+sou5iOEKDaBmcFg+2YTT2tVBHk2lQfDAE9wHYQ03cutgp8uZYmV3spTvkj
	PZxrE04g0fSLEtXZf3hydy92WREjjoRA+mQN0lRLVyAr8tHCSov0hTUjG5g/t5alEsQvMpmDzqD9g
	EI1uYW2sBUu2Y3Pj5Biw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqiU-0007u3-Bq; Mon, 17 Jun 2019 12:26:30 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqhw-0007ex-6x
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:25:58 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MhDIw-1iFm1T14Ik-00eILm; Mon, 17 Jun 2019 14:25:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: arm@kernel.org, Linus Walleij <linusw@kernel.org>,
 Imre Kaloz <kaloz@openwrt.org>, Krzysztof Halasa <khalasa@piap.pl>
Subject: [PATCH 3/3] ARM: ixp4xx: include irqs.h where needed
Date: Mon, 17 Jun 2019 14:24:32 +0200
Message-Id: <20190617122449.457744-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190617122449.457744-1-arnd@arndb.de>
References: <20190617122449.457744-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ogxG53xxYtKSunk3MRNQJAEkPnjE5pExadqIw1wtkbMkNmusoj9
 aZO36fRS80Wu/8c4ipcqJ+zvnYjQNIkJR4SCcFvTYhva+3LV3IEq749pLMtw8R/r2KrLwWa
 FagBXt9Ly5NshVz8XjZe/q/y+qht9OjYIz8VcckwU498AqLWgRsBAQ2qnmu16n/lhR7Hx0E
 Yb0tA8yzzPP6mO9cbbGOw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DfHKUbhazqM=:YDY2/2Alqmy6ferl84BsB7
 aTPywctrbekMzh8cdM3EsbjDQAS4kYQ6x40t3G+jSNk1GCteQrQ9qaT8fJp2mp/2OCVzA8qsW
 kkSILkIdM8OVdMpuPg8+25kNURFM8JYrTL+TcbbHIx7k3Lq9R/vD0y+hU64s2LyqPPPh0slyn
 N3LnzMVWa4B1kQza2oz4IWYFWIhGuw4yPD4JOPm/ad6tagM9LxxM/TnaoBACJTKMLgQb8TpUb
 ZwuBcdk8NzAq9MYq3o0lou2x2/4ai9kFW+slBUVpBA6xGQkKz8+3xtq/OAkrBgrNlqdK++Djz
 tg4ZlQK6DbriSz0wargKxCiKpLafM6pwO28XW7V7aXdrBbcRivhAsohFrX7MqVhdlx9H3uiHN
 /8qILCdsv37YqYuxeFLHlcxdZoOmYpObWiDn3oe28Q0ks48ioZIstBoi6TW34Tk7Yh7LzBDuA
 QIJOBYHK2ybQccAFTmStPaVWx7bCXh44ts0sPkbzmDG/D8T2sq29iHcmy2biGDCeagMYL9H3A
 UI17s4Xo4o/GpKfGrVvHJCMRdchId8Zp79M0FLgG7WmremXejp11NuqPIPOKMgGK7xdmZi0Vq
 orq/NVKHc1ccDZL/aCh5You0KvzNWInt+AIj2ePLJNfiMNWt5Z8Pt7nvlCkDMIrGdKGE4paH8
 xMcxineZ/BYiWyGNDO77IJ5ZD6vqhh/8I54dPAAPmhlaFlGwH/D2bUmg8qz6U0Y9uGF+5CmY3
 gMlxUwAqfuMJLxF4+45prNpvpPB2L/RelpYWQw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_052556_626880_863D129C 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Multiple ixp4xx specific files require macros from irqs.h that
were moved out from mach/irqs.h, e.g.:

arch/arm/mach-ixp4xx/vulcan-pci.c:41:19: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
arch/arm/mach-ixp4xx/vulcan-pci.c:49:10: error: implicit declaration of function 'IXP4XX_GPIO_IRQ' [-Werror,-Wimplicit-function-declaration]
                return IXP4XX_GPIO_IRQ(INTA);

Include this header in all files that failed to build because of
that.

Fixes: dc8ef8cd3a05 ("ARM: ixp4xx: Convert to SPARSE_IRQ")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-ixp4xx/goramo_mlr.c   | 2 ++
 arch/arm/mach-ixp4xx/miccpt-pci.c   | 2 ++
 arch/arm/mach-ixp4xx/omixp-setup.c  | 2 ++
 arch/arm/mach-ixp4xx/vulcan-pci.c   | 2 ++
 arch/arm/mach-ixp4xx/vulcan-setup.c | 2 ++
 5 files changed, 10 insertions(+)

diff --git a/arch/arm/mach-ixp4xx/goramo_mlr.c b/arch/arm/mach-ixp4xx/goramo_mlr.c
index 4d805080020e..a0e0b6b7dc5c 100644
--- a/arch/arm/mach-ixp4xx/goramo_mlr.c
+++ b/arch/arm/mach-ixp4xx/goramo_mlr.c
@@ -18,6 +18,8 @@
 #include <asm/mach/pci.h>
 #include <asm/system_info.h>
 
+#include "irqs.h"
+
 #define SLOT_ETHA		0x0B	/* IDSEL = AD21 */
 #define SLOT_ETHB		0x0C	/* IDSEL = AD20 */
 #define SLOT_MPCI		0x0D	/* IDSEL = AD19 */
diff --git a/arch/arm/mach-ixp4xx/miccpt-pci.c b/arch/arm/mach-ixp4xx/miccpt-pci.c
index d114ccd2017c..ca889ef068a5 100644
--- a/arch/arm/mach-ixp4xx/miccpt-pci.c
+++ b/arch/arm/mach-ixp4xx/miccpt-pci.c
@@ -25,6 +25,8 @@
 #include <mach/hardware.h>
 #include <asm/mach-types.h>
 
+#include "irqs.h"
+
 #define MAX_DEV		4
 #define IRQ_LINES	4
 
diff --git a/arch/arm/mach-ixp4xx/omixp-setup.c b/arch/arm/mach-ixp4xx/omixp-setup.c
index 2d494b454376..c02fa6f48382 100644
--- a/arch/arm/mach-ixp4xx/omixp-setup.c
+++ b/arch/arm/mach-ixp4xx/omixp-setup.c
@@ -27,6 +27,8 @@
 
 #include <mach/hardware.h>
 
+#include "irqs.h"
+
 static struct resource omixp_flash_resources[] = {
 	{
 		.flags	= IORESOURCE_MEM,
diff --git a/arch/arm/mach-ixp4xx/vulcan-pci.c b/arch/arm/mach-ixp4xx/vulcan-pci.c
index a4220fa5e0c3..6e41e5ece4e1 100644
--- a/arch/arm/mach-ixp4xx/vulcan-pci.c
+++ b/arch/arm/mach-ixp4xx/vulcan-pci.c
@@ -21,6 +21,8 @@
 #include <asm/mach/pci.h>
 #include <asm/mach-types.h>
 
+#include "irqs.h"
+
 /* PCI controller GPIO to IRQ pin mappings */
 #define INTA	2
 #define INTB	3
diff --git a/arch/arm/mach-ixp4xx/vulcan-setup.c b/arch/arm/mach-ixp4xx/vulcan-setup.c
index 2c03d2f6b647..d2ebb7c675a8 100644
--- a/arch/arm/mach-ixp4xx/vulcan-setup.c
+++ b/arch/arm/mach-ixp4xx/vulcan-setup.c
@@ -22,6 +22,8 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/flash.h>
 
+#include "irqs.h"
+
 static struct flash_platform_data vulcan_flash_data = {
 	.map_name	= "cfi_probe",
 	.width		= 2,
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
