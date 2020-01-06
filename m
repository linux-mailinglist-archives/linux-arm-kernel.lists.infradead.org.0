Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AA8131270
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 13:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=90Tq+PK5ClPOSCYgrhBfA0qiEKZoUyyHSfRFh/mpW5Q=; b=gwDdHrwhCYhUiIPVpIbJypAVa
	trxxgql9EaR9KKdrMNNQNfhOOr1sU22EARq4RjJtYn6KtQ6l7nqK6mF0ZCWVhGUvzXSTNds81fxbX
	C03ljUjmi3rtNTPxXeuJpmds1vEuoTHyr95lEZCZ5ftHFami7XMRXYesd00icdADz7wGoWs5zD82D
	ony7SGiinbnAsCtjm3kHtWeNiWkaymbHuPU1qk0AVwyOpu9FHkv7u2JW2f1oe4fBz1sPVb5SlXWUF
	1Va/zK/Eno6gzpMb9iRLjp4CIZT5YPJqOiH7xOC/p/5vebPYjyhI56X+c4Z5rUt/EbsIRYKz6QCUc
	vTwDdh80A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioRyV-0005pJ-Fg; Mon, 06 Jan 2020 12:59:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioRyH-0005iL-53; Mon, 06 Jan 2020 12:59:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49810328;
 Mon,  6 Jan 2020 04:58:57 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 598B73F534;
 Mon,  6 Jan 2020 04:58:56 -0800 (PST)
Subject: Re: Orange Pi 4 (RK3399) fails to bring up ethernet on boot
To: Joseph Kogut <joseph.kogut@gmail.com>
References: <CAMWSM7ha5XcoknM1qrNTMM+A5Re2yQPNWvu_ZVKAWBUx-FmasA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <eeace85d-c007-a1ad-054c-21b129c35179@arm.com>
Date: Mon, 6 Jan 2020 12:58:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMWSM7ha5XcoknM1qrNTMM+A5Re2yQPNWvu_ZVKAWBUx-FmasA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_045901_301494_C85CEC50 
X-CRM114-Status: GOOD (  22.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/01/2020 1:04 am, Joseph Kogut wrote:
> Hello,
> 
> I'm working on getting the newly released Orange Pi 4 up and running
> with the mainline kernel. Using the rk3399-orangepi device tree gets
> the device to start booting, but the kernel has an oops when starting
> networking, and the boot process fails to continue.
> 
> [  153.325306] Internal error: Oops: 96000004 [#1] SMP
> [  153.325733] Modules linked in: rockchipdrm btsdio(+) brcmfmac
> analogix_dp rockchip_rga dw_mipi_dsi brcmutil dw_hdmi hci_uart cec
> videobuf2_dma_sg cfg80211 v4l2_mem2mem btqca rc_core videobuf2_memops
> btbcm videobuf2_v4l2 btintel videobuf2_common drm_kms_helper bluetooth
> dwmac_rk syscopyarea stmmac_platform videodev panfrost sysfillrect
> stmmac snd_soc_simple_card sysimgblt fb_sys_fops gpu_sched
> snd_soc_simple_card_utils ecdh_generic st_lsm6dsx_spi phylink mc
> st_lsm6dsx_i2c ecc inv_mpu6050_i2c drm rfkill st_lsm6dsx inv_mpu6050
> adc_keys rockchip_saradc gpio_keys ak8975 cm32181 dw_wdt
> rockchip_thermal rtc_rk808
> [  153.330457] CPU: 1 PID: 493 Comm: systemd-network Tainted: G
>       L    5.5.0-rc4-1-ARCH #1
> [  153.331230] Hardware name: Orange Pi RK3399 Board (DT)
> [  153.331681] pstate: 40000005 (nZcv daif -PAN -UAO)
> [  153.332108] pc : mdiobus_get_phy+0xc/0x28
> [  153.332487] lr : stmmac_open+0x288/0xa50 [stmmac]
> [  153.332899] sp : ffff800011f2b5e0
> [  153.333190] x29: ffff800011f2b5e0 x28: 0000000000000000
> [  153.333656] x27: ffff0000eb6448c0 x26: ffff0000eb7e7e10
> [  153.334122] x25: 0000000000000001 x24: 0000000000000000
> [  153.334587] x23: ffff800011829000 x22: ffff0000eb644000
> [  153.335053] x21: ffff800011f2bbd0 x20: ffff0000ea0e6280
> [  153.335519] x19: 00000000ffffffff x18: 0000000000000000
> [  153.335984] x17: 0000000000000000 x16: 0000000000000000
> [  153.336449] x15: 0000000000000000 x14: 0000000000000000
> [  153.336915] x13: 0000000000000000 x12: 0000000000000000
> [  153.337380] x11: 0000000000000003 x10: 0101010101010101
> [  153.337845] x9 : ffff8000090becb0 x8 : 7f7f7f7f7f7f7f7f
> [  153.338310] x7 : fefefeff646c606d x6 : 1e091448e4e5f6e9
> [  153.338776] x5 : 697665644814091e x4 : 8080808000000000
> [  153.339241] x3 : 8343c96b232bb348 x2 : ffff0000ea0b8880
> [  153.339707] x1 : 00000000ffffffff x0 : fffffffffffffff8
> [  153.340172] Call trace:
> [  153.340392]  mdiobus_get_phy+0xc/0x28
> [  153.340717]  __dev_open+0x104/0x198
> [  153.341025]  __dev_change_flags+0x1a0/0x208
> [  153.341393]  dev_change_flags+0x28/0x68
> [  153.341731]  do_setlink+0x2cc/0xcc0
> [  153.342040]  rtnl_setlink+0xf0/0x188
> [  153.342355]  rtnetlink_rcv_msg+0x2b0/0x358
> [  153.342719]  netlink_rcv_skb+0x60/0x120
> [  153.343056]  rtnetlink_rcv+0x1c/0x28
> [  153.343371]  netlink_unicast+0x1a0/0x248
> [  153.343716]  netlink_sendmsg+0x1c0/0x3c0
> [  153.344061]  sock_sendmsg+0x4c/0x58
> [  153.344368]  __sys_sendto+0xd4/0x138
> [  153.344683]  __arm64_sys_sendto+0x2c/0x38
> [  153.345039]  el0_svc_handler+0xa4/0x188
> [  153.345377]  el0_sync_handler+0x1c8/0x260
> [  153.345730]  el0_sync+0x140/0x180
> [  153.346025] Code: d65f03c0 aa1e03e9 d503201f 8b21cc00 (f941d000)
> [  153.346560] ---[ end trace 0d82e8dab5e0c74f ]---
> 
> It's worth noting that the rk3399-orangepi device tree isn't
> necessarily compatible with this board, though after perusing the
> schematics for both the Orange Pi 4 and Orange Pi RK3399, I found no
> differences as far as the networking hardware goes. However, this is
> not an area in which I am well experienced.
> 
> I was able to work around this issue by reading a few other RK3399
> based device trees, and adding a phy-handle property to the gmac node,
> as well as an mdio child node. I have a patch [0] that works with my
> board, but I'm unsure if it's correct for both Orange Pis, and even if
> it is, I'm not sure what the original problem was, or how to word the
> commit message to actually send the patch.
> 
> Could you please advise on how I should proceed?

FWIW this appears to be down to a recent driver change breaking MDIO 
auto-probing in the case where there is neither a fixed link nor an 
explicitly-described phy - see the discussion on the thread here: 
https://lore.kernel.org/netdev/1599392.7x4dJXGyiB@diego/

Robin.

> 
> Best,
> Joseph
> 
> [0] https://gist.github.com/jakogut/bc21de0535b640f2374c1d07a710e8ab
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
