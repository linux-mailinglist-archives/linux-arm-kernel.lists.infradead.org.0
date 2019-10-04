Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F048CC229
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 19:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=CUEAg1g+OePGKx39BW4lhDqh4Hdk7fR4m7OB9J1XuFk=; b=bId
	sjrqBJR6IuBL4TeCs/M/btVtxITlWBny2XTuACyHleLSprMum9PuyJ1kCJzqaRHz1+oCP+3rshqqf
	e/729+lwH3nwa51uZu3uOfddORx+JCmXXM/ywFAj5VC/j8c5Uoyts+y7LP378Z8J3EXzpbpqBd5gM
	hYLGjtciFSPU31ue/geL60v5y4A6Ve+yY6SeFLrQn4zrYXDwDl8GhtWzVHLiXq7Srl7yVtUp5nRpN
	xP3nNY5q0zwm8sJfEE+I6+sTQC4PEGXftirGQHf1PUzV6pmeSgqzv78GmohMI8kRkXCztXJzG6ZfY
	e+4FyfFzlIRTpIlqM5HyovlAUJRpsbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRm8-0006AU-NF; Fri, 04 Oct 2019 17:53:56 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRl6-0005Fz-6d
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 17:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=RVk+oStKYFfTJ0PAcHGTkjn6t/EZekqeV+GFcEZZoLA=; b=rBHQZpxwSFOm
 x7LqZH8z9vOtOoly2/2iLm7IZj7X/eRqgdMGch/pcJmlVnMO844TwWfaR+vlzyB3HbFgNgrCvAqqq
 bKfROoXIB5zOrnq/SYxNeB3c3HVfuOC8Cu0+THXzoAXgOxoLkrfOkfWlBTSvsAGHF6WeWCZ1mnqwM
 QjV1E=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iGRl3-0003xB-9G; Fri, 04 Oct 2019 17:52:49 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id BFB722741EF0; Fri,  4 Oct 2019 18:52:48 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Patrice Chotard <patrice.chotard@st.com>
Subject: Applied "spi: stm32-qspi: Fix kernel oops when unbinding driver" to
 the spi tree
In-Reply-To: <20191004123606.17241-1-patrice.chotard@st.com>
X-Patchwork-Hint: ignore
Message-Id: <20191004175248.BFB722741EF0@ypsilon.sirena.org.uk>
Date: Fri,  4 Oct 2019 18:52:48 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_105252_404653_493C66D7 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: stm32-qspi: Fix kernel oops when unbinding driver

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.4

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 3c0af1dd2fe78adc02fe21f6cfe7d6cb8602573e Mon Sep 17 00:00:00 2001
From: Patrice Chotard <patrice.chotard@st.com>
Date: Fri, 4 Oct 2019 14:36:06 +0200
Subject: [PATCH] spi: stm32-qspi: Fix kernel oops when unbinding driver

spi_master_put() must only be called in .probe() in case of error.

As devm_spi_register_master() is used during probe, spi_master_put()
mustn't be called in .remove() callback.

It fixes the following kernel WARNING/Oops when executing
echo "58003000.spi" > /sys/bus/platform/drivers/stm32-qspi/unbind :

------------[ cut here ]------------
WARNING: CPU: 1 PID: 496 at fs/kernfs/dir.c:1504 kernfs_remove_by_name_ns+0x9c/0xa4
kernfs: can not remove 'uevent', no directory
Modules linked in:
CPU: 1 PID: 496 Comm: sh Not tainted 5.3.0-rc1-00219-ga0e07bb51a37 #62
Hardware name: STM32 (Device Tree Support)
[<c0111570>] (unwind_backtrace) from [<c010d384>] (show_stack+0x10/0x14)
[<c010d384>] (show_stack) from [<c08db558>] (dump_stack+0xb4/0xc8)
[<c08db558>] (dump_stack) from [<c01209d8>] (__warn.part.3+0xbc/0xd8)
[<c01209d8>] (__warn.part.3) from [<c0120a5c>] (warn_slowpath_fmt+0x68/0x8c)
[<c0120a5c>] (warn_slowpath_fmt) from [<c02e5844>] (kernfs_remove_by_name_ns+0x9c/0xa4)
[<c02e5844>] (kernfs_remove_by_name_ns) from [<c05833a4>] (device_del+0x128/0x358)
[<c05833a4>] (device_del) from [<c05835f8>] (device_unregister+0x24/0x64)
[<c05835f8>] (device_unregister) from [<c0638dac>] (spi_unregister_controller+0x88/0xe8)
[<c0638dac>] (spi_unregister_controller) from [<c058c580>] (release_nodes+0x1bc/0x200)
[<c058c580>] (release_nodes) from [<c0588a44>] (device_release_driver_internal+0xec/0x1ac)
[<c0588a44>] (device_release_driver_internal) from [<c0586840>] (unbind_store+0x60/0xd4)
[<c0586840>] (unbind_store) from [<c02e64e8>] (kernfs_fop_write+0xe8/0x1c4)
[<c02e64e8>] (kernfs_fop_write) from [<c0266b44>] (__vfs_write+0x2c/0x1c0)
[<c0266b44>] (__vfs_write) from [<c02694c0>] (vfs_write+0xa4/0x184)
[<c02694c0>] (vfs_write) from [<c0269710>] (ksys_write+0x58/0xd0)
[<c0269710>] (ksys_write) from [<c0101000>] (ret_fast_syscall+0x0/0x54)
Exception stack(0xdd289fa8 to 0xdd289ff0)
9fa0:                   0000006c 000e20e8 00000001 000e20e8 0000000d 00000000
9fc0: 0000006c 000e20e8 b6f87da0 00000004 0000000d 0000000d 00000000 00000000
9fe0: 00000004 bee639b0 b6f2286b b6eaf6c6
---[ end trace 1b15df8a02d76aef ]---
------------[ cut here ]------------
WARNING: CPU: 1 PID: 496 at fs/kernfs/dir.c:1504 kernfs_remove_by_name_ns+0x9c/0xa4
kernfs: can not remove 'online', no directory
Modules linked in:
CPU: 1 PID: 496 Comm: sh Tainted: G        W         5.3.0-rc1-00219-ga0e07bb51a37 #62
Hardware name: STM32 (Device Tree Support)
[<c0111570>] (unwind_backtrace) from [<c010d384>] (show_stack+0x10/0x14)
[<c010d384>] (show_stack) from [<c08db558>] (dump_stack+0xb4/0xc8)
[<c08db558>] (dump_stack) from [<c01209d8>] (__warn.part.3+0xbc/0xd8)
[<c01209d8>] (__warn.part.3) from [<c0120a5c>] (warn_slowpath_fmt+0x68/0x8c)
[<c0120a5c>] (warn_slowpath_fmt) from [<c02e5844>] (kernfs_remove_by_name_ns+0x9c/0xa4)
[<c02e5844>] (kernfs_remove_by_name_ns) from [<c0582488>] (device_remove_attrs+0x20/0x5c)
[<c0582488>] (device_remove_attrs) from [<c05833b0>] (device_del+0x134/0x358)
[<c05833b0>] (device_del) from [<c05835f8>] (device_unregister+0x24/0x64)
[<c05835f8>] (device_unregister) from [<c0638dac>] (spi_unregister_controller+0x88/0xe8)
[<c0638dac>] (spi_unregister_controller) from [<c058c580>] (release_nodes+0x1bc/0x200)
[<c058c580>] (release_nodes) from [<c0588a44>] (device_release_driver_internal+0xec/0x1ac)
[<c0588a44>] (device_release_driver_internal) from [<c0586840>] (unbind_store+0x60/0xd4)
[<c0586840>] (unbind_store) from [<c02e64e8>] (kernfs_fop_write+0xe8/0x1c4)
[<c02e64e8>] (kernfs_fop_write) from [<c0266b44>] (__vfs_write+0x2c/0x1c0)
[<c0266b44>] (__vfs_write) from [<c02694c0>] (vfs_write+0xa4/0x184)
[<c02694c0>] (vfs_write) from [<c0269710>] (ksys_write+0x58/0xd0)
[<c0269710>] (ksys_write) from [<c0101000>] (ret_fast_syscall+0x0/0x54)
Exception stack(0xdd289fa8 to 0xdd289ff0)
9fa0:                   0000006c 000e20e8 00000001 000e20e8 0000000d 00000000
9fc0: 0000006c 000e20e8 b6f87da0 00000004 0000000d 0000000d 00000000 00000000
9fe0: 00000004 bee639b0 b6f2286b b6eaf6c6
---[ end trace 1b15df8a02d76af0 ]---
8<--- cut here ---
Unable to handle kernel NULL pointer dereference at virtual address 00000050
pgd = e612f14d
[00000050] *pgd=ff1f5835
Internal error: Oops: 17 [#1] SMP ARM
Modules linked in:
CPU: 1 PID: 496 Comm: sh Tainted: G        W         5.3.0-rc1-00219-ga0e07bb51a37 #62
Hardware name: STM32 (Device Tree Support)
PC is at kernfs_find_ns+0x8/0xfc
LR is at kernfs_find_and_get_ns+0x30/0x48
pc : [<c02e49a4>]    lr : [<c02e4ac8>]    psr: 40010013
sp : dd289dac  ip : 00000000  fp : 00000000
r10: 00000000  r9 : def6ec58  r8 : dd289e54
r7 : 00000000  r6 : c0abb234  r5 : 00000000  r4 : c0d26a30
r3 : ddab5080  r2 : 00000000  r1 : c0abb234  r0 : 00000000
Flags: nZcv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
Control: 10c5387d  Table: dd11c06a  DAC: 00000051
Process sh (pid: 496, stack limit = 0xe13a592d)
Stack: (0xdd289dac to 0xdd28a000)
9da0:                            c0d26a30 00000000 c0abb234 00000000 c02e4ac8
9dc0: 00000000 c0976b44 def6ec00 dea53810 dd289e54 c02e864c c0a61a48 c0a4a5ec
9de0: c0d630a8 def6ec00 c0d04c48 c02e86e0 def6ec00 de909338 c0d04c48 c05833b0
9e00: 00000000 c0638144 dd289e54 def59900 00000000 475b3ee5 def6ec00 00000000
9e20: def6ec00 def59b80 dd289e54 def59900 00000000 c05835f8 def6ec00 c0638dac
9e40: 0000000a dea53810 c0d04c48 c058c580 dea53810 def59500 def59b80 475b3ee5
9e60: ddc63e00 dea53810 dea3fe10 c0d63a0c dea53810 ddc63e00 dd289f78 dd240d10
9e80: 00000000 c0588a44 c0d59a20 0000000d c0d63a0c c0586840 0000000d dd240d00
9ea0: 00000000 00000000 ddc63e00 c02e64e8 00000000 00000000 c0d04c48 dd9bbcc0
9ec0: c02e6400 dd289f78 00000000 000e20e8 0000000d c0266b44 00000055 00000cc0
9ee0: 000000e3 000e3000 dd11c000 dd11c000 00000000 00000000 00000000 00000000
9f00: ffeee38c dff99688 00000000 475b3ee5 00000001 dd289fb0 ddab5080 ddaa5800
9f20: 00000817 000e30ec dd9e7720 475b3ee5 ddaa583c 0000000d dd9bbcc0 000e20e8
9f40: dd289f78 00000000 000e20e8 0000000d 00000000 c02694c0 00000000 00000000
9f60: c0d04c48 dd9bbcc0 00000000 00000000 dd9bbcc0 c0269710 00000000 00000000
9f80: 000a91f4 475b3ee5 0000006c 000e20e8 b6f87da0 00000004 c0101204 dd288000
9fa0: 00000004 c0101000 0000006c 000e20e8 00000001 000e20e8 0000000d 00000000
9fc0: 0000006c 000e20e8 b6f87da0 00000004 0000000d 0000000d 00000000 00000000
9fe0: 00000004 bee639b0 b6f2286b b6eaf6c6 600e0030 00000001 00000000 00000000
[<c02e49a4>] (kernfs_find_ns) from [<def6ec00>] (0xdef6ec00)
Code: ebf8eeab c0dc50b8 e92d40f0 e292c000 (e1d035b0)
---[ end trace 1b15df8a02d76af1 ]---

Fixes: a88eceb17ac7 ("spi: stm32-qspi: add spi_master_put in release function")
Cc: <stable@vger.kernel.org>
Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
Link: https://lore.kernel.org/r/20191004123606.17241-1-patrice.chotard@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-stm32-qspi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 9ac6f9fe13cf..4e726929bb4f 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -528,7 +528,6 @@ static void stm32_qspi_release(struct stm32_qspi *qspi)
 	stm32_qspi_dma_free(qspi);
 	mutex_destroy(&qspi->lock);
 	clk_disable_unprepare(qspi->clk);
-	spi_master_put(qspi->ctrl);
 }
 
 static int stm32_qspi_probe(struct platform_device *pdev)
@@ -626,6 +625,8 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 
 err:
 	stm32_qspi_release(qspi);
+	spi_master_put(qspi->ctrl);
+
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
