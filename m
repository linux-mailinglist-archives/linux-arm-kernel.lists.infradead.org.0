Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66586150455
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:36:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NUgJLesZyiJM2RZWdwUa5e+mRFTjUpsyDK8LZ+Jke0o=; b=a8fFPPxNoCYS+V
	YjtbIwuSFi+rVv9IcGNh9vKiUoX4UHB2LfBKxtBx0qPlGe/p28JxhrGVQ/35IHFmk+22Gk5LslkO3
	WZ6RLMFbars3xWAN51jVr5eWe429R9dCQEOdMI6fcOHnDf1rhYMc2rJPkhsFWDO6R3XFBzNuCcWHJ
	wGM5LfvlefAz4ll8Nii9Fc93q4/oSNIQ2J8Y8LzIMiEL3iW+FSUXxfA9+s+ZEpPsoc3nfr/Ky/eFl
	zNCSM4z24+no9a9vnjkMCDNDeKa0tFWA8JEUQ2Fk5ozo74lH2fMVNZHQg0STpgZqB9/UV80ZEgqP7
	YmdAgA9HXuOK0ok1xu8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZ5p-0008P4-IN; Mon, 03 Feb 2020 10:36:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZ5j-0008OX-1c
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:36:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 86B6DB0BA
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  3 Feb 2020 10:36:27 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: Warnings during boot on TI OMAP4 PandaBoard
X-Yow: Leona, I want to CONFESS things to you..
 I want to WRAP you in a SCARLET ROBE trimmed with POLYVINYL CHLORIDE..
 I want to EMPTY your ASHTRAYS...
Date: Mon, 03 Feb 2020 11:36:27 +0100
Message-ID: <mvmwo94q7o4.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_023631_379805_8CEB4118 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[    8.817352] ------------[ cut here ]------------
[    8.822784] WARNING: CPU: 0 PID: 1 at arch/arm/mm/dump.c:248 note_page+0x404/0x410                                                                           
[    8.830474] arm/mm: Found insecure W+X mapping at address 0xf108d000
[    8.836914] Modules linked in:
[    8.839996] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.4.14-1-default #1 openSUSE Tumbleweed (unreleased)                                                   
[    8.849700] Hardware name: ti panda/panda, BIOS 2020.01 01/30/2020
[    8.855926] Backtrace: 
[    8.855926] [<c031ad88>] (dump_backtrace) from [<c031b010>] (show_stack+0x20/0x24)                                                                           
[    8.866027]  r7:c184eaf8 r6:00000000 r5:60000153 r4:c184eaf8
[    8.866027] [<c031aff0>] (show_stack) from [<c0e02c10>] (dump_stack+0xe8/0x114)                                                                              
[    8.879089] [<c0e02b28>] (dump_stack) from [<c036c3b4>] (__warn+0xe0/0x108)
[    8.886108]  r10:f108e000 r9:00000000 r8:c129f7d0 r7:000000f8 r6:c032c6f4 r5:00000009                                                                        
[    8.886138]  r4:c129f804
[    8.896545] [<c036c2d4>] (__warn) from [<c036c7e0>] (warn_slowpath_fmt+0xa4/0xc8)                                                                            
[    8.904083]  r7:00000009 r6:c032c6f4 r5:000000f8 r4:c129f804
[    8.904083] [<c036c740>] (warn_slowpath_fmt) from [<c032c6f4>] (note_page+0x404/0x410)                                                                       
[    8.917724]  r8:00000000 r7:c170c248 r6:00000200 r5:00000004 r4:ee96bf28
[    8.924468] [<c032c2f0>] (note_page) from [<c032c86c>] (walk_pmd+0x16c/0x1a8)
[    8.931640]  r10:f108f000 r9:00000000 r8:c0207c40 r7:f1000000 r6:ee96bf28 r5:c129f84c                                                                        
[    8.939514]  r4:eeaf923c
[    8.942047] [<c032c700>] (walk_pmd) from [<c032ca04>] (ptdump_check_wx+0x98/0x110)                                                                           
[    8.949676]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:c0208000 r5:f1000000                                                                        
[    8.957550]  r4:c0207c48
[    8.960083] [<c032c96c>] (ptdump_check_wx) from [<c0326bf0>] (mark_rodata_ro+0x3c/0x44)                                                                      
[    8.968139]  r6:00000000 r5:c0e1b3a8 r4:00000000
[    8.972778] [<c0326bb4>] (mark_rodata_ro) from [<c0e1b3e8>] (kernel_init+0x40/0x124)                                                                         
[    8.980560] [<c0e1b3a8>] (kernel_init) from [<c03010b0>] (ret_from_fork+0x14/0x24)                                                                           
[    8.988189] Exception stack(0xee96bfb0 to 0xee96bff8)
[    8.993255] bfa0:                                     00000000 00000000 00000000 00000000                                                                    
[    9.001464] bfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000                                                                    
[    9.009704] bfe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    9.016326]  r5:c0e1b3a8 r4:00000000
[    9.019989] ---[ end trace 1ca85f4ff811d04f ]---

[   36.280273] ------------[ cut here ]------------
[   36.284759] WARNING: CPU: 1 PID: 429 at drivers/base/power/runtime.c:1388 pm_runtime_enable+0xc4/0xe4
[   36.294219] Enabling runtime PM for inactive device (4a0ad000.ocp2scp) with active children
[   36.302612] Modules linked in: omap_ocp2scp(+) ti_soc_thermal nls_iso8859_1 nls_cp437 vfat fat bq27xxx_battery_hdq bq27xxx_battery omap_des crypto_engine omap_crypto libdes omap_hdq wire twl6030_gpadc industrialio spi_omap2_mcspi snd_soc_omap_mcbsp snd_soc_omap_mcpdm snd_soc_ti_sdma snd_soc_core snd_compress ac97_bus snd_pcm_dmaengine snd_pcm snd_timer snd omap_wdt soundcore uio_pdrv_genirq uio mmc_block clk_twl6040 gpio_twl6040 omap2430 phy_generic gpio_keys ti_tfp410 phy_twl6030_usb phy_omap_usb2 ohci_platform musb_hdrc ohci_hcd omap4_keypad ti_abb_regulator ehci_omap ehci_hcd pbias_regulator udc_core omap_dma omap_hsmmc mmc_core usbcore phy_omap_control pwm_twl twl6030_regulator pwm_twl_led ledtrig_heartbeat sg dm_multipath dm_mod dax scsi_dh_rdac scsi_dh_emc scsi_dh_alua efivarfs
[   36.372497] CPU: 1 PID: 429 Comm: systemd-udevd Tainted: G        W         5.4.14-1-default #1 openSUSE Tumbleweed (unreleased)
[   36.384124] Hardware name: ti panda/panda, BIOS 2020.01 01/30/2020
[   36.386627] Backtrace: 
[   36.392791] [<c031ad88>] (dump_backtrace) from [<c031b010>] (show_stack+0x20/0x24)
[   36.400451]  r7:c184eaf8 r6:00000000 r5:60030193 r4:c184eaf8
[   36.406127] [<c031aff0>] (show_stack) from [<c0e02c10>] (dump_stack+0xe8/0x114)
[   36.413513] [<c0e02b28>] (dump_stack) from [<c036c3b4>] (__warn+0xe0/0x108)
[   36.420562]  r10:0000004b r9:bf30c014 r8:c137c958 r7:0000056c r6:c0a9711c r5:00000009
[   36.428436]  r4:c137c99c
[   36.430999] [<c036c2d4>] (__warn) from [<c036c7e0>] (warn_slowpath_fmt+0xa4/0xc8)
[   36.438507]  r7:00000009 r6:c0a9711c r5:0000056c r4:c137c99c
[   36.444061] [<c036c740>] (warn_slowpath_fmt) from [<c0a9711c>] (pm_runtime_enable+0xc4/0xe4)
[   36.452697]  r8:00000000 r7:eeec4410 r6:eeec448c r5:60030113 r4:eeec4410
[   36.459442] [<c0a97058>] (pm_runtime_enable) from [<bf30a0b8>] (omap_ocp2scp_probe+0x4c/0x10c [omap_ocp2scp])
[   36.466735]  r6:ef4d7784 r5:eeec4400 r4:00000000
[   36.474121] [<bf30a06c>] (omap_ocp2scp_probe [omap_ocp2scp]) from [<c0a8bea8>] (platform_drv_probe+0x58/0xac)
[   36.484100]  r7:c1d3b130 r6:bf30c014 r5:eeec4410 r4:00000000
[   36.489776] [<c0a8be50>] (platform_drv_probe) from [<c0a89268>] (really_probe+0x220/0x468)
[   36.498107]  r7:c1d3b130 r6:00000000 r5:c1d3b12c r4:eeec4410
[   36.503814] [<c0a89048>] (really_probe) from [<c0a897b8>] (driver_probe_device+0x134/0x154)
[   36.512207]  r10:bf30c080 r9:ed2d9f28 r8:00000000 r7:c1821378 r6:bf30c014 r5:bf30c014
[   36.520080]  r4:eeec4410
[   36.522613] [<c0a89684>] (driver_probe_device) from [<c0a89a74>] (device_driver_attach+0x6c/0x74)
[   36.531555]  r8:00000000 r7:c1821378 r6:bf30c014 r5:00000000 r4:eeec4410
[   36.538299] [<c0a89a08>] (device_driver_attach) from [<c0a89b1c>] (__driver_attach+0xa0/0x158)
[   36.538299]  r7:c1821378 r6:eeec4410 r5:bf30c014 r4:00000000
[   36.552642] [<c0a89a7c>] (__driver_attach) from [<c0a86e18>] (bus_for_each_dev+0x88/0xd0)
[   36.560882]  r7:c1821378 r6:c0a89a7c r5:bf30c014 r4:00000000
[   36.566558] [<c0a86d90>] (bus_for_each_dev) from [<c0a8890c>] (driver_attach+0x2c/0x34)
[   36.574615]  r6:00000000 r5:ed3c8e00 r4:bf30c014
[   36.579254] [<c0a888e0>] (driver_attach) from [<c0a881a8>] (bus_add_driver+0x144/0x218)
[   36.587310] [<c0a88064>] (bus_add_driver) from [<c0a8a760>] (driver_register+0x8c/0x12c)
[   36.591430]  r7:ed2d9eb0 r6:00000001 r5:ed589140 r4:bf30c014
[   36.597503] [<c0a8a6d4>] (driver_register) from [<c0a8bdf4>] (__platform_driver_register+0x50/0x5c)
[   36.607421]  r5:ed589140 r4:c1821378
[   36.613830] [<c0a8bda4>] (__platform_driver_register) from [<bf01d028>] (omap_ocp2scp_driver_init+0x28/0x1000 [omap_ocp2scp])
[   36.625213]  r5:ed589140 r4:bf01d000
[   36.627593] [<bf01d000>] (omap_ocp2scp_driver_init [omap_ocp2scp]) from [<c0304070>] (do_one_initcall+0x54/0x274)
[   36.639160] [<c030401c>] (do_one_initcall) from [<c042914c>] (do_init_module+0x70/0x264)
[   36.647308]  r8:bf30c08c r7:ed2d9eb0 r6:00000001 r5:ed589140 r4:bf30c080
[   36.654052] [<c04290dc>] (do_init_module) from [<c042b170>] (load_module+0x11d0/0x1558)
[   36.661773]  r6:00000001 r5:00000000 r4:bf30c180
[   36.666748] [<c0429fa0>] (load_module) from [<c042b6a4>] (sys_init_module+0x1ac/0x1d0)
[   36.674713]  r10:00000080 r9:ed2d8000 r8:b6b36dd8 r7:00000000 r6:00ba515f r5:f10a6d97
[   36.682586]  r4:00001d97
[   36.685150] [<c042b4f8>] (sys_init_module) from [<c0301000>] (ret_fast_syscall+0x0/0x28)
[   36.691406] Exception stack(0xed2d9fa8 to 0xed2d9ff0)
[   36.698364] 9fa0:                   20001137 00000000 00ba33c8 00001d97 b6b36dd8 00000000
[   36.706573] 9fc0: 20001137 00000000 00b93568 00000080 00000003 00000000 00020000 00b93568
[   36.713012] 9fe0: b6b48e08 be81f488 b6b32bbc b6e9cd30
[   36.716461]  r9:ed2d8000 r8:c0301208 r7:00000080 r6:00b93568 r5:00000000 r4:20001137
[   36.727661] ---[ end trace 1ca85f4ff811d050 ]---

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
