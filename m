Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F29B78A78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 13:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MO+I8e9e6SwRxE+/OFSsduUF7JwPuSgYGogV78lagIM=; b=KQ68j6mY4rOt63
	w0YIXj5B3wig+xvIekQ22wU+A38NbX5ZYudshMcjuuaGFSct3mqw6+weZI5xV4cT2awddTEzZ8CU/
	YHl1C1qyhd65NYJHq5s29yRmUBpZNHA9xCVwo+vh0vs/hkuo0RlJjka9sfPO9wp8VK7UhV73YR6Ly
	chN0rqOby3wAi9knUYj5KyCTswwt3CTl6fHgurscs7lQjw2DJ+6Nvp3D5Ka5ZELo3n4tAkvV7g7Wg
	oMKcrBd5xokgDl4ybEwl6OdnaPib1ahK1b+JqcryezJp6+QZfSASN9uIYY9yb/G8o+Qj0kv+ATA4m
	o3VpJzp1kzK/TSrgQ0NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3o7-0004zE-U6; Mon, 29 Jul 2019 11:27:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3o1-0004yh-6C
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 11:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AJFDErCt39201FNQKilwHIBzEO29fQ2Ljw5a5yV4E4w=; b=bOquBCIPTUOyUStyjVuUuZkeW
 4P+zRMB1AdEIekxBvJYF1H2cM5duwaffYklJkcix0BEosox6aXkh/F1/e9KgHxlG0qqKDL2kG/6Dm
 j0ibAtnilRmrVV491Ftwb/n0RW9VWSFoWXBYOqlUqb/OZo3gWQoR/7As7u8vzXz+8TLsIEk2dclTr
 0yMw3jAppcSDGvozQX6zU8OCLQOLw1FzVOQXODHNhDIuMJujVwGL/9FTMczAntFK3kdzSSFx/Acbz
 CQn2X17UT8u+iXSdpNeOpLbXSJ8z5KouRkTaRruypjtW2gOMb20/HU4q/norr+NlNzWWcOWTAHsN8
 Ddg7Zce3Q==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:45946)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hs3nu-0006gX-A5; Mon, 29 Jul 2019 12:26:58 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hs3nt-000195-DJ; Mon, 29 Jul 2019 12:26:57 +0100
Date: Mon, 29 Jul 2019 12:26:57 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Wolfram Sang <wsa@the-dreams.de>, linux-i2c@vger.kernel.org,
 linux-imx@nxp.com
Subject: Re: REGRESSION: i2c-imx endlessly triggers clk warning
Message-ID: <20190729112657.GW1330@shell.armlinux.org.uk>
References: <20190729111720.GV1330@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729111720.GV1330@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_042705_234873_9025C1DB 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 12:17:20PM +0100, Russell King - ARM Linux admin wrote:
> Booting 5.2 on the VF610 based ZII rev B board results in the board
> not making progress due to an endless stream of:
> 
> [  153.077831] ------------[ cut here ]------------
> [  153.082528] WARNING: CPU: 0 PID: 15 at drivers/clk/clk.c:924 clk_core_disable_lock+0x18/0x24
> [  153.093077] i2c0 already disabled
> [  153.096416] Modules linked in:
> [  153.099521] CPU: 0 PID: 15 Comm: kworker/0:1 Tainted: G        W         5.2.0+ #321
> [  153.107290] Hardware name: Freescale Vybrid VF5xx/VF6xx (Device Tree)
> [  153.113772] Workqueue: events deferred_probe_work_func
> [  153.118979] [<c0019560>] (unwind_backtrace) from [<c0014734>] (show_stack+0x10/0x14)
> [  153.126778] [<c0014734>] (show_stack) from [<c083f8dc>] (dump_stack+0x9c/0xd4)
> [  153.134051] [<c083f8dc>] (dump_stack) from [<c0031154>] (__warn+0xf8/0x124)
> [  153.141056] [<c0031154>] (__warn) from [<c0031248>] (warn_slowpath_fmt+0x38/0x48)
> [  153.148580] [<c0031248>] (warn_slowpath_fmt) from [<c040fde0>] (clk_core_disable_lock+0x18/0x24)
> [  153.157413] [<c040fde0>] (clk_core_disable_lock) from [<c058f520>] (i2c_imx_probe+0x554/0x6ec)
> [  153.166076] [<c058f520>] (i2c_imx_probe) from [<c04b9178>] (platform_drv_probe+0x48/0x98)
> [  153.174297] [<c04b9178>] (platform_drv_probe) from [<c04b7298>] (really_probe+0x1d8/0x2c0)
> [  153.182605] [<c04b7298>] (really_probe) from [<c04b7554>] (driver_probe_device+0x5c/0x174)
> [  153.190909] [<c04b7554>] (driver_probe_device) from [<c04b58c8>] (bus_for_each_drv+0x44/0x8c)
> [  153.199480] [<c04b58c8>] (bus_for_each_drv) from [<c04b746c>] (__device_attach+0xa0/0x108)
> [  153.207782] [<c04b746c>] (__device_attach) from [<c04b65a4>] (bus_probe_device+0x88/0x90)
> [  153.215999] [<c04b65a4>] (bus_probe_device) from [<c04b6a04>] (deferred_probe_work_func+0x60/0x90)
> [  153.225003] [<c04b6a04>] (deferred_probe_work_func) from [<c004f190>] (process_one_work+0x204/0x634)
> [  153.234178] [<c004f190>] (process_one_work) from [<c004f618>] (worker_thread+0x20/0x484)
> [  153.242315] [<c004f618>] (worker_thread) from [<c0055c2c>] (kthread+0x118/0x150)
> [  153.249758] [<c0055c2c>] (kthread) from [<c00090b4>] (ret_from_fork+0x14/0x20)
> [  153.257006] Exception stack(0xdde43fb0 to 0xdde43ff8)
> [  153.262095] 3fa0:                                     00000000 00000000 00000000 00000000
> [  153.270306] 3fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> [  153.278520] 3fe0: 00000000 00000000 00000000 00000000 00000013 00000000
> [  153.285159] irq event stamp: 3323022
> [  153.288787] hardirqs last  enabled at (3323021): [<c0861c4c>] _raw_spin_unlock_irq+0x24/0x2c
> [  153.297261] hardirqs last disabled at (3323022): [<c040d7a0>] clk_enable_lock+0x10/0x124
> [  153.305392] softirqs last  enabled at (3322092): [<c000a504>] __do_softirq+0x344/0x540
> [  153.313352] softirqs last disabled at (3322081): [<c00385c0>] irq_exit+0x10c/0x128
> [  153.320946] ---[ end trace a506731ccd9bd703 ]---
> 
> My guess is that this is due to a combination of e1ab9a468e3b ("i2c:
> imx: improve the error handling in i2c_imx_dma_request()") and the fact
> that my configuration has CONFIG_FSL_EDMA=m.  Given that the boot makes
> no progress, it seems that this driver now requires EDMA to be built-in
> _if_ this driver is also built in.  It seems that Kconfig allows an
> invalid configuration as far as the driver is concerned.
> 
> However, even though it seems that EDMA needs to be built-in with
> 5.2, this should not trigger the above kernel warning, which suggests
> something is wrong in the driver cleanup paths.

The endless loop is probably caused by the driver not obeying the basic
rule of: claim resources THEN publish APIs.  The driver registers
itself with the I2C core as an adapter (which then causes the child
devices to be created _and_ probed, thereby triggering the deferred
probing) only to fail later when trying to get DMA resources, and
returning -EPROBE_DEFER.  This causes the i2c-imx driver to be
immediately reprobed.

This driver really needs to obey the basic rule of drivers.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
