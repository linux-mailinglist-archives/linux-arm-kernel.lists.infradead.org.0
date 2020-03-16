Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4880918635C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APZsuu+hxHjDIiEOyyLRveNUi75NHjNzcRwswPBAGf4=; b=bMrw4jhwQzNhvQ
	BQdgQ74ucb87XUDNh5UukkvfVjvi5uAi3/cHHp90PH5Ryw69KMAutCITnmUSEIQAnWCWtn6fFxuZK
	4zVmFs6NKG1LRYiZ1kd4R2Ns4C/MNsr80y3UoW8r+hypZ7aVspIkrgcKuRxWyv+0elqRWGTPE2q+X
	0/vax+F3CcXWC45wOS+8g5z11Vwg0X2IDDxTKydamdDow3k0XDCe/lhhueq4jmWKy6wkZ1a007yDV
	uoe0/B0GI9UAPg/cd4kkKKZI26CGU8tzVvqJqt6JeI/aO49NHUX1NPFKl378VybySdUSboGZ6qmMz
	K1p0XTDTFOSVWt18GGsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDflq-0000yd-7c; Mon, 16 Mar 2020 02:46:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfbW-00059r-IQ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:35:49 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46AC320739;
 Mon, 16 Mar 2020 02:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326146;
 bh=DAzNytEKYVDkkCaQNm7J4s7xcEx2wTe7yrYfQJXX7+Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tRQCsIvpaAcy9268wB7HdS9Lh4R7JxEarnmqQi9YMfk87pHThOEcgdJKGULgqcSAl
 XwaTRb8krKW74cw9DLq7xgOAf0yHb6hcGvLUQ5ZodWzwmCHlb9rfz8lgiOaWBenXpE
 q5F5PS/WkiObAwFxTiQsy8MXdz+g5VoDY9Zv2Vnw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 6/7] drm/exynos: dsi: fix workaround for the
 legacy clock name
Date: Sun, 15 Mar 2020 22:35:37 -0400
Message-Id: <20200316023538.2232-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316023538.2232-1-sashal@kernel.org>
References: <20200316023538.2232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193546_693463_2150CE72 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-samsung-soc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

[ Upstream commit c0fd99d659ba5582e09625c7a985d63fc2ca74b5 ]

Writing to the built-in strings arrays doesn't work if driver is loaded
as kernel module. This is also considered as a bad pattern. Fix this by
adding a call to clk_get() with legacy clock name. This fixes following
kernel oops if driver is loaded as module:

Unable to handle kernel paging request at virtual address bf047978
 pgd = (ptrval)
 [bf047978] *pgd=59344811, *pte=5903c6df, *ppte=5903c65f
 Internal error: Oops: 80f [#1] SMP ARM
 Modules linked in: mc exynosdrm(+) analogix_dp rtc_s3c exynos_ppmu i2c_gpio
 CPU: 1 PID: 212 Comm: systemd-udevd Not tainted 5.6.0-rc2-next-20200219 #326
 videodev: Linux video capture interface: v2.00
 Hardware name: Samsung Exynos (Flattened Device Tree)
 PC is at exynos_dsi_probe+0x1f0/0x384 [exynosdrm]
 LR is at exynos_dsi_probe+0x1dc/0x384 [exynosdrm]
 ...
 Process systemd-udevd (pid: 212, stack limit = 0x(ptrval))
 ...
 [<bf03cf14>] (exynos_dsi_probe [exynosdrm]) from [<c09b1ca0>] (platform_drv_probe+0x6c/0xa4)
 [<c09b1ca0>] (platform_drv_probe) from [<c09afcb8>] (really_probe+0x210/0x350)
 [<c09afcb8>] (really_probe) from [<c09aff74>] (driver_probe_device+0x60/0x1a0)
 [<c09aff74>] (driver_probe_device) from [<c09b0254>] (device_driver_attach+0x58/0x60)
 [<c09b0254>] (device_driver_attach) from [<c09b02dc>] (__driver_attach+0x80/0xbc)
 [<c09b02dc>] (__driver_attach) from [<c09ade00>] (bus_for_each_dev+0x68/0xb4)
 [<c09ade00>] (bus_for_each_dev) from [<c09aefd8>] (bus_add_driver+0x130/0x1e8)
 [<c09aefd8>] (bus_add_driver) from [<c09b0d64>] (driver_register+0x78/0x110)
 [<c09b0d64>] (driver_register) from [<bf038558>] (exynos_drm_init+0xe8/0x11c [exynosdrm])
 [<bf038558>] (exynos_drm_init [exynosdrm]) from [<c0302fa8>] (do_one_initcall+0x50/0x220)
 [<c0302fa8>] (do_one_initcall) from [<c03dd02c>] (do_init_module+0x60/0x210)
 [<c03dd02c>] (do_init_module) from [<c03dbf44>] (load_module+0x1c0c/0x2310)
 [<c03dbf44>] (load_module) from [<c03dc85c>] (sys_finit_module+0xac/0xbc)
 [<c03dc85c>] (sys_finit_module) from [<c0301000>] (ret_fast_syscall+0x0/0x54)
 Exception stack(0xd979bfa8 to 0xd979bff0)
 ...
 ---[ end trace db16efe05faab470 ]---

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
Signed-off-by: Inki Dae <inki.dae@samsung.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/exynos/exynos_drm_dsi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
index 5e202af7fbf53..2b6c04acb24f5 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
@@ -1790,9 +1790,10 @@ static int exynos_dsi_probe(struct platform_device *pdev)
 		dsi->clks[i] = devm_clk_get(dev, clk_names[i]);
 		if (IS_ERR(dsi->clks[i])) {
 			if (strcmp(clk_names[i], "sclk_mipi") == 0) {
-				strcpy(clk_names[i], OLD_SCLK_MIPI_CLK_NAME);
-				i--;
-				continue;
+				dsi->clks[i] = devm_clk_get(dev,
+							OLD_SCLK_MIPI_CLK_NAME);
+				if (!IS_ERR(dsi->clks[i]))
+					continue;
 			}
 
 			dev_info(dev, "failed to get the clock: %s\n",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
