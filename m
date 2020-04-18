Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527F51AF31C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 20:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6YjCA35QZ92YomE88oSZ/pLV8sjKULllmdqk39oEQ0Y=; b=Ia/ipYp7QJBUCl
	U8TSH6GI/9RxAvIIsKsOl+MqDpGwrbw8lcPOWk1dZj9r8RkhmzbTVX/KQSMA51CZ9RxIh0L1dhdnA
	RHoGkEXf77Mh0mln1h+juUqFdKtYt9pf5YhCE8H3uMB8QN6v9rsWgcn9p4aoggegNOBW2JGk3Cjh4
	TC/xYjKg1rRIBbR2XF7hV8A0efXqMezMRzTVwoB+m5IAHVvggICJa//85tj138irIStxHPPbunoL2
	p3ZUOs97g3kfYPyTUTPxaZPOShlLSc8LudSlCCA3aVZIJbjEtwtBE5HW38T4iw/V6cGfwjoVjFgce
	mKOs7hM2+sNq7D665/4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPrzu-0000Kw-3c; Sat, 18 Apr 2020 18:15:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPrzg-00085U-JM; Sat, 18 Apr 2020 18:15:10 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1B9D20724;
 Sat, 18 Apr 2020 18:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587233707;
 bh=KtXXKvkVx6nmTgkrhaXXeJdQ0VBttc8MSA5biUMFsqQ=;
 h=From:To:Cc:Subject:Date:From;
 b=mZK6C8xriOzlOLhzPA+VSzfm+EUGTXGNXDO3l4P7tiVGYEO0qcojJR+8PoWnon19w
 HKquJE5GZkfoFHYjP4RqBurmxQ13BamYSZ/BgnfV0yeGlrRbqFb7QN/PBtlsR6idfq
 EuGG1cqIJM9CjoBroVtm35bewlJOddyyGLl14yfM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jPrzd-004UT4-4q; Sat, 18 Apr 2020 19:15:05 +0100
From: Marc Zyngier <maz@kernel.org>
To: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH] net: stmmac: dwmac-meson8b: Add missing boundary to RGMII TX
 clock array
Date: Sat, 18 Apr 2020 19:14:57 +0100
Message-Id: <20200418181457.3193175-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, peppe.cavallaro@st.com,
 alexandre.torgue@st.com, joabreu@synopsys.com, davem@davemloft.net,
 khilman@baylibre.com, martin.blumenstingl@googlemail.com,
 stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_111508_688667_B0487BA5 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, stable@vger.kernel.org,
 Jose Abreu <joabreu@synopsys.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Running with KASAN on a VIM3L systems leads to the following splat
when probing the Ethernet device:

==================================================================
BUG: KASAN: global-out-of-bounds in _get_maxdiv+0x74/0xd8
Read of size 4 at addr ffffa000090615f4 by task systemd-udevd/139
CPU: 1 PID: 139 Comm: systemd-udevd Tainted: G            E     5.7.0-rc1-00101-g8624b7577b9c #781
Hardware name: amlogic w400/w400, BIOS 2020.01-rc5 03/12/2020
Call trace:
 dump_backtrace+0x0/0x2a0
 show_stack+0x20/0x30
 dump_stack+0xec/0x148
 print_address_description.isra.12+0x70/0x35c
 __kasan_report+0xfc/0x1d4
 kasan_report+0x4c/0x68
 __asan_load4+0x9c/0xd8
 _get_maxdiv+0x74/0xd8
 clk_divider_bestdiv+0x74/0x5e0
 clk_divider_round_rate+0x80/0x1a8
 clk_core_determine_round_nolock.part.9+0x9c/0xd0
 clk_core_round_rate_nolock+0xf0/0x108
 clk_hw_round_rate+0xac/0xf0
 clk_factor_round_rate+0xb8/0xd0
 clk_core_determine_round_nolock.part.9+0x9c/0xd0
 clk_core_round_rate_nolock+0xf0/0x108
 clk_core_round_rate_nolock+0xbc/0x108
 clk_core_set_rate_nolock+0xc4/0x2e8
 clk_set_rate+0x58/0xe0
 meson8b_dwmac_probe+0x588/0x72c [dwmac_meson8b]
 platform_drv_probe+0x78/0xd8
 really_probe+0x158/0x610
 driver_probe_device+0x140/0x1b0
 device_driver_attach+0xa4/0xb0
 __driver_attach+0xcc/0x1c8
 bus_for_each_dev+0xf4/0x168
 driver_attach+0x3c/0x50
 bus_add_driver+0x238/0x2e8
 driver_register+0xc8/0x1e8
 __platform_driver_register+0x88/0x98
 meson8b_dwmac_driver_init+0x28/0x1000 [dwmac_meson8b]
 do_one_initcall+0xa8/0x328
 do_init_module+0xe8/0x368
 load_module+0x3300/0x36b0
 __do_sys_finit_module+0x120/0x1a8
 __arm64_sys_finit_module+0x4c/0x60
 el0_svc_common.constprop.2+0xe4/0x268
 do_el0_svc+0x98/0xa8
 el0_svc+0x24/0x68
 el0_sync_handler+0x12c/0x318
 el0_sync+0x158/0x180

The buggy address belongs to the variable:
 div_table.63646+0x34/0xfffffffffffffa40 [dwmac_meson8b]

Memory state around the buggy address:
 ffffa00009061480: fa fa fa fa 00 00 00 01 fa fa fa fa 00 00 00 00
 ffffa00009061500: 05 fa fa fa fa fa fa fa 00 04 fa fa fa fa fa fa
>ffffa00009061580: 00 03 fa fa fa fa fa fa 00 00 00 00 00 00 fa fa
                                                             ^
 ffffa00009061600: fa fa fa fa 00 01 fa fa fa fa fa fa 01 fa fa fa
 ffffa00009061680: fa fa fa fa 00 01 fa fa fa fa fa fa 04 fa fa fa
==================================================================

Digging into this indeed shows that the clock divider array is
lacking a final fence, and that the clock subsystems goes in the
weeds. Oh well.

Let's add the empty structure that indicates the end of the array.

Fixes: bd6f48546b9c ("net: stmmac: dwmac-meson8b: Fix the RGMII TX delay on Meson8b/8m2 SoCs")
Signed-off-by: Marc Zyngier <maz@kernel.org>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: stable@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index 0e2fa14f14237..a3934ca6a043b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -119,6 +119,7 @@ static int meson8b_init_rgmii_tx_clk(struct meson8b_dwmac *dwmac)
 		{ .div = 5, .val = 5, },
 		{ .div = 6, .val = 6, },
 		{ .div = 7, .val = 7, },
+		{ /* end of array */ }
 	};
 
 	clk_configs = devm_kzalloc(dev, sizeof(*clk_configs), GFP_KERNEL);
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
