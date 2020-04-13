Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C8B1A63F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 10:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKzqr2Q+XuymeK01PsjWq1Pnm4fbt30EOf/fyy+/9aY=; b=ju0BaX8RKjDscO
	hfbtB8gg6tvPatx4eZuSQ89PuDP09cZ2yAKPNn780UgPB/NuKEAAgSM8iL7nHEd5ciU7x6URic6WD
	gNX1wlCDE4g7h7P0jf+j/IeYemUO8JcFzUuorBXL1slNVtBkC1uuNpv0iv5DYuWse1rzsl9WOYExU
	8KIRAm8MmjdZoWB88h0Fp6h8CX2Qdro1Lhik8XEMdGLF6PEwTWSJkGvUeQnYK1fyjvcSpRIgLHS/R
	3nfi9qKvCO71ULHja/z3tn+Z+LliL/lV+0fVYJDfPQ4W4wyGTRhBXKm+xmJcScDDy/27yuRc02E5K
	lajBYeZp3qYFEbzjmoDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNu5o-0006te-Qm; Mon, 13 Apr 2020 08:05:20 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNu5f-0004Y4-UI; Mon, 13 Apr 2020 08:05:14 +0000
Received: from zn.tnic (p200300EC2F06C9001913BA8A68E69387.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f06:c900:1913:ba8a:68e6:9387])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id AB4B41EC0C5C;
 Mon, 13 Apr 2020 10:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1586765097;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=NtPO5LzemSA3ICkOs6m1ba4SCa7L4ISc43jbxALQ8Eo=;
 b=LiW9TWY65xGpOpMp70AGqFiT+xVtj2UulV/4AIQ88A2mmw52OenPNvt84zJTmXQ7bqMzGL
 zhBkQqATm2LMmz85N6xLixb3fl93koLptHv/GK7iGITPLXQOTiYA/vG270sn9ouOu+R2FU
 JQU+EnPno3Dy9bJNMibbKFZ/Eah3XRc=
Date: Mon, 13 Apr 2020 10:04:52 +0200
From: Borislav Petkov <bp@alien8.de>
To: David Miller <davem@davemloft.net>, leon@kernel.org
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
Message-ID: <20200413080452.GA3772@zn.tnic>
References: <20200413045555.GE334007@unreal>
 <20200412.220739.516022706077351913.davem@davemloft.net>
 <20200413052637.GG334007@unreal>
 <20200412.223604.1160930629964379276.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200412.223604.1160930629964379276.davem@davemloft.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_010512_280215_AB7950DB 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: thor.thayer@linux.intel.com, heiko@sntech.de, irusskikh@marvell.com,
 andreas@gaisler.com, chris.snook@gmail.com, dave@thedillows.org,
 jes@trained-monkey.org, iyappan@os.amperecomputing.com,
 quan@os.amperecomputing.com, linux-acenic@sunsite.dk, andy@greyhouse.net,
 akiyano@amazon.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 LinoSanfilippo@gmx.de, vfalico@gmail.com, kuba@kernel.org,
 thomas.lendacky@amd.com, jcliburn@gmail.com, j.vosburgh@gmail.com,
 keyur@os.amperecomputing.com, mripard@kernel.org, pcnet32@frontier.com,
 nios2-dev@lists.rocketboards.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, ionut@badula.org,
 netanel@amazon.com, mark.einon@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 10:36:04PM -0700, David Miller wrote:
> From: Leon Romanovsky <leon@kernel.org>
> Date: Mon, 13 Apr 2020 08:26:37 +0300
> 
> > How do you want us to handle it? Boris resend, me to send, you to fix?
> 
> Anyone other than me can do it ;-)

Ok, here's what I'm thinking: that vermagic.h is normally automatically
included in the *mod.c as part of the module creation, see add_header()
in modpost.c.

So then perhaps drivers should not use it directly due to the current
inclusion order:

linux/module.h includes asm/module.h and that arch-specific header
defines MODULE_VERMAGIC* for the respective arch.

linux/vermagic.h defines all those fallbacks for those MODULE_VERMAGIC*
things and if the inclusion order is swapped - we get the redefinition
warning.

Yesterday I tried the below - basically get rid of all the remaining
includers of linux/vermagic.h but two are left:

drivers/net/ethernet/hisilicon/hns3/hns3_enet.c:18:#include <linux/vermagic.h>
drivers/net/ethernet/netronome/nfp/nfp_main.c:17:#include <linux/vermagic.h>

because both use VERMAGIC_STRING directly.

So,

* one could either allow that and sort the inclusion order so that, for
example, asm/module.h includes linux/vermagic.h and thus the fallbacks
are there present.

or

* remove all uses of VERMAGIC_STRING from the drivers, add a header
guard which prevents people from using it directly and leave
VERMAGIC_STRING only to the internal module machinery in the kernel.

Judging by how only a handful of old drivers are even using that,
perhaps not too far fetched.

In any case, this needs a maintainer decision.

Leon, if you wanna do it whatever you guys end up agreeing on, just go
ahead and submit the patches - it's not like I don't have anything else
on the TODO :-) Just add a Reported-by: me and that should be enough.

If you're busy too, lemme know and I'll put it on my todo then.

Thx.

diff --git a/drivers/net/bonding/bonding_priv.h b/drivers/net/bonding/bonding_priv.h
index 45b77bc8c7b3..48cdf3a49a7d 100644
--- a/drivers/net/bonding/bonding_priv.h
+++ b/drivers/net/bonding/bonding_priv.h
@@ -14,7 +14,7 @@
 
 #ifndef _BONDING_PRIV_H
 #define _BONDING_PRIV_H
-#include <linux/vermagic.h>
+#include <generated/utsrelease.h>
 
 #define DRV_NAME	"bonding"
 #define DRV_DESCRIPTION	"Ethernet Channel Bonding Driver"
diff --git a/drivers/net/ethernet/3com/3c509.c b/drivers/net/ethernet/3com/3c509.c
index b762176a1406..139d0120f511 100644
--- a/drivers/net/ethernet/3com/3c509.c
+++ b/drivers/net/ethernet/3com/3c509.c
@@ -85,7 +85,6 @@
 #include <linux/device.h>
 #include <linux/eisa.h>
 #include <linux/bitops.h>
-#include <linux/vermagic.h>
 
 #include <linux/uaccess.h>
 #include <asm/io.h>
diff --git a/drivers/net/ethernet/3com/3c515.c b/drivers/net/ethernet/3com/3c515.c
index 90312fcd6319..47b4215bb93b 100644
--- a/drivers/net/ethernet/3com/3c515.c
+++ b/drivers/net/ethernet/3com/3c515.c
@@ -22,7 +22,6 @@
 
 */
 
-#include <linux/vermagic.h>
 #define DRV_NAME		"3c515"
 
 #define CORKSCREW 1
diff --git a/drivers/net/ethernet/adaptec/starfire.c b/drivers/net/ethernet/adaptec/starfire.c
index 2db42211329f..a64191fc2af9 100644
--- a/drivers/net/ethernet/adaptec/starfire.c
+++ b/drivers/net/ethernet/adaptec/starfire.c
@@ -45,7 +45,6 @@
 #include <asm/processor.h>		/* Processor type for cache alignment. */
 #include <linux/uaccess.h>
 #include <asm/io.h>
-#include <linux/vermagic.h>
 
 /*
  * The current frame processor firmware fails to checksum a fragment
diff --git a/drivers/net/ethernet/pensando/ionic/ionic_main.c b/drivers/net/ethernet/pensando/ionic/ionic_main.c
index 588c62e9add7..3ed150512091 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_main.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_main.c
@@ -6,7 +6,7 @@
 #include <linux/module.h>
 #include <linux/netdevice.h>
 #include <linux/utsname.h>
-#include <linux/vermagic.h>
+#include <generated/utsrelease.h>
 
 #include "ionic.h"
 #include "ionic_bus.h"
diff --git a/drivers/power/supply/test_power.c b/drivers/power/supply/test_power.c
index 65c23ef6408d..b3c05ff05783 100644
--- a/drivers/power/supply/test_power.c
+++ b/drivers/power/supply/test_power.c
@@ -16,7 +16,7 @@
 #include <linux/power_supply.h>
 #include <linux/errno.h>
 #include <linux/delay.h>
-#include <linux/vermagic.h>
+#include <generated/utsrelease.h>
 
 enum test_power_id {
 	TEST_AC,
diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 89d0b1827aaf..adab97e500cf 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -17,7 +17,6 @@
 #include <linux/phy.h>
 #include <linux/bitops.h>
 #include <linux/uaccess.h>
-#include <linux/vermagic.h>
 #include <linux/vmalloc.h>
 #include <linux/sfp.h>
 #include <linux/slab.h>
@@ -29,6 +28,8 @@
 #include <net/flow_offload.h>
 #include <linux/ethtool_netlink.h>
 
+#include <generated/utsrelease.h>
+
 #include "common.h"
 
 /*


-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
