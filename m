Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D246179B64
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 23:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fncGM++fqg83le4rYdbgOTVFce0+ZAurc2ajSa1+598=; b=Do7
	+YoHpkv4HcIGqsG4vOUuxoE6ImKM3htVMjZcMKPfsaIidVYaojvRlqn4LZYmBMaIJ2EQjAWoa2fnq
	szq4ZEB1BC6SLx8oklH6yLF2RzUjF3QyxkO8rf0bmncQHNB3nkj9cljd3WWWC71mRWKNOZCLVKiDa
	oE7QlTvoGFs+wRRgUyu8GdVGPoQ+F7AMbAkRhl6o7TigavAYHR+4y2hpkxXW8lFVxSCQXG9T1Y43I
	+DBqVPB+TJBxWfaI0LBmiM87zFJlU2+0/U3b/PgEdnxz/711E1S9YR+uowoV0h+Y4wSI48o0/dXgy
	JyzkmWwTnNGXlUFh/W5nNCU6mONfkMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9c4m-0005nG-5c; Wed, 04 Mar 2020 22:01:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9c4d-0005m7-JW
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 22:01:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56EA41FB;
 Wed,  4 Mar 2020 14:01:00 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 20A3E3F6CF;
 Wed,  4 Mar 2020 14:00:54 -0800 (PST)
From: Lukasz Luba <lukasz.luba@arm.com>
To: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH] drm/exynos: Fix memory leak and release IOMMU mapping
 structures
Date: Wed,  4 Mar 2020 22:00:22 +0000
Message-Id: <20200304220022.8003-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_140103_732321_F5258020 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: jy0922.shim@samsung.com, b.zolnierkie@samsung.com, airlied@linux.ie,
 sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 a.hajda@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 daniel@ffwll.ch, Dietmar.Eggemann@arm.com, lukasz.luba@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a memory leak which left some objects not freed. The reference
counter of mapping: 'mapping->kref' was 2 when calling
arm_iommu_detach_device(), so the release_iommu_mapping() won't be called.
Since the old mapping structure is not going to be used any more (because
it is detached and new one attached), call arm_iommu_release_mapping()
to trigger cleanup.

Found using kmemleak detector, the output:

unreferenced object 0xc2137640 (size 64):
  comm "swapper/0", pid 1, jiffies 4294937900 (age 3127.400s)
  hex dump (first 32 bytes):
    50 a3 14 c2 80 a2 14 c2 01 00 00 00 20 00 00 00  P........... ...
    00 10 00 00 00 80 00 00 00 00 00 00 00 00 00 00  ................
  backtrace:
    [<3acd268d>] arch_setup_dma_ops+0x4c/0x104
    [<9f7d2cce>] of_dma_configure+0x19c/0x3a4
    [<ba07704b>] really_probe+0xb0/0x47c
    [<4f510e4f>] driver_probe_device+0x78/0x1c4
    [<7481a0cf>] device_driver_attach+0x58/0x60
    [<0ff8f5c1>] __driver_attach+0xb8/0x158
    [<86006144>] bus_for_each_dev+0x74/0xb4
    [<10159dca>] bus_add_driver+0x1c0/0x200
    [<8a265265>] driver_register+0x74/0x108
    [<e0f3451a>] exynos_drm_init+0xb0/0x134
    [<db3fc7ba>] do_one_initcall+0x90/0x458
    [<6da35917>] kernel_init_freeable+0x188/0x200
    [<db3f74d4>] kernel_init+0x8/0x110
    [<1f3cddf9>] ret_from_fork+0x14/0x20
    [<8cd12507>] 0x0
unreferenced object 0xc214a280 (size 128):
  comm "swapper/0", pid 1, jiffies 4294937900 (age 3127.400s)
  hex dump (first 32 bytes):
    00 a0 ec ed 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
  backtrace:
    [<3acd268d>] arch_setup_dma_ops+0x4c/0x104
    [<9f7d2cce>] of_dma_configure+0x19c/0x3a4
    [<ba07704b>] really_probe+0xb0/0x47c
    [<4f510e4f>] driver_probe_device+0x78/0x1c4
    [<7481a0cf>] device_driver_attach+0x58/0x60
    [<0ff8f5c1>] __driver_attach+0xb8/0x158
    [<86006144>] bus_for_each_dev+0x74/0xb4
    [<10159dca>] bus_add_driver+0x1c0/0x200
    [<8a265265>] driver_register+0x74/0x108
    [<e0f3451a>] exynos_drm_init+0xb0/0x134
    [<db3fc7ba>] do_one_initcall+0x90/0x458
    [<6da35917>] kernel_init_freeable+0x188/0x200
    [<db3f74d4>] kernel_init+0x8/0x110
    [<1f3cddf9>] ret_from_fork+0x14/0x20
    [<8cd12507>] 0x0
unreferenced object 0xedeca000 (size 4096):
  comm "swapper/0", pid 1, jiffies 4294937900 (age 3127.400s)
  hex dump (first 32 bytes):
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
  backtrace:
    [<3acd268d>] arch_setup_dma_ops+0x4c/0x104
    [<9f7d2cce>] of_dma_configure+0x19c/0x3a4
    [<ba07704b>] really_probe+0xb0/0x47c
    [<4f510e4f>] driver_probe_device+0x78/0x1c4
    [<7481a0cf>] device_driver_attach+0x58/0x60
    [<0ff8f5c1>] __driver_attach+0xb8/0x158
    [<86006144>] bus_for_each_dev+0x74/0xb4
    [<10159dca>] bus_add_driver+0x1c0/0x200
    [<8a265265>] driver_register+0x74/0x108
    [<e0f3451a>] exynos_drm_init+0xb0/0x134
    [<db3fc7ba>] do_one_initcall+0x90/0x458
    [<6da35917>] kernel_init_freeable+0x188/0x200
    [<db3f74d4>] kernel_init+0x8/0x110
    [<1f3cddf9>] ret_from_fork+0x14/0x20
    [<8cd12507>] 0x0
unreferenced object 0xc214a300 (size 128):
  comm "swapper/0", pid 1, jiffies 4294937900 (age 3127.400s)
  hex dump (first 32 bytes):
    00 a3 14 c2 00 a3 14 c2 00 40 18 c2 00 80 18 c2  .........@......
    02 00 02 00 ad 4e ad de ff ff ff ff ff ff ff ff  .....N..........
  backtrace:
    [<08cbd8bc>] iommu_domain_alloc+0x24/0x50
    [<b835abee>] arm_iommu_create_mapping+0xe4/0x134
    [<3acd268d>] arch_setup_dma_ops+0x4c/0x104
    [<9f7d2cce>] of_dma_configure+0x19c/0x3a4
    [<ba07704b>] really_probe+0xb0/0x47c
    [<4f510e4f>] driver_probe_device+0x78/0x1c4
    [<7481a0cf>] device_driver_attach+0x58/0x60
    [<0ff8f5c1>] __driver_attach+0xb8/0x158
    [<86006144>] bus_for_each_dev+0x74/0xb4
    [<10159dca>] bus_add_driver+0x1c0/0x200
    [<8a265265>] driver_register+0x74/0x108
    [<e0f3451a>] exynos_drm_init+0xb0/0x134
    [<db3fc7ba>] do_one_initcall+0x90/0x458
    [<6da35917>] kernel_init_freeable+0x188/0x200
    [<db3f74d4>] kernel_init+0x8/0x110
    [<1f3cddf9>] ret_from_fork+0x14/0x20

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---

Hi all,

I have discovered this issue on OdroidXU4 while running some stress tests
for upcoming Energy Model. To reproduce it, kernel must be compiled with
DEBUG_KMEMLEAK. When the boot has finished, type:
# echo scan > /sys/kernel/debug/kmemleak
# cat /sys/kernel/debug/kmemleak
You should expect similar output to the one from the commit message.

I don't know if it should go via stable tree as well. I can resend with CC
stable, if there is a need.

Regards,
Lukasz Luba

 drivers/gpu/drm/exynos/exynos_drm_dma.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dma.c b/drivers/gpu/drm/exynos/exynos_drm_dma.c
index 9ebc02768847..45f209ec107f 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dma.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dma.c
@@ -74,8 +74,13 @@ static int drm_iommu_attach_device(struct drm_device *drm_dev,
 		return ret;
 
 	if (IS_ENABLED(CONFIG_ARM_DMA_USE_IOMMU)) {
-		if (to_dma_iommu_mapping(subdrv_dev))
+		struct dma_iommu_mapping *mapping =
+					to_dma_iommu_mapping(subdrv_dev);
+
+		if (mapping) {
 			arm_iommu_detach_device(subdrv_dev);
+			arm_iommu_release_mapping(mapping);
+		}
 
 		ret = arm_iommu_attach_device(subdrv_dev, priv->mapping);
 	} else if (IS_ENABLED(CONFIG_IOMMU_DMA)) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
