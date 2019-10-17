Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AE4DA5CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q19jwPwK0ggrBIEFd9dg6MtROKA4q7XLx2s+zIpV284=; b=PskWqf0LDv3M74
	ItM9eC8yQZKOEFbpnIcTw+//hEd2bNz/s/DW6hWxhUJbaxTiEKgrnWKozaCWUPEbSbdPJcRAxJJwg
	dZXZpvMJya9uEECjD6+4c5hKm1lyOKV7FpbfNv8CmCAZkHPSxKxW+y25vl0nHT8Btl5MSmnnnd9xE
	h9e7NvE2em7rQ94bIBLXFtA+3wy4mfWjeRJ4iosHAUB1g6i8UuI4/L5zHQJL2z1yuEuiLL4vciZDS
	D6rDQCBnlUSAATT2rQDHrEJuKotYrZDbpljnTu+ctDegqoJW1R08BWUBOA5o+0tpg7/zqUkLlACJx
	qR8Gk6IVNkLQfq1qpqpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzeS-0001uD-K0; Thu, 17 Oct 2019 06:52:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzeK-0001tS-7K; Thu, 17 Oct 2019 06:52:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7846BADAB;
 Thu, 17 Oct 2019 06:52:35 +0000 (UTC)
Date: Thu, 17 Oct 2019 08:52:30 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191017065230.krcrrlmedzi6tj3r@beryllium.lan>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191015005327.GJ19861@lunn.ch>
 <20191015171653.ejgfegw3hkef3mbo@beryllium.lan>
 <20191016142501.2c76q7kkfmfcnqns@beryllium.lan>
 <20191016155107.GH17013@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016155107.GH17013@lunn.ch>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_235240_556174_74A5553E 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Woojung Huh <woojung.huh@microchip.com>, netdev@vger.kernel.org,
 UNGLinuxDriver@microchip.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 05:51:07PM +0200, Andrew Lunn wrote:
> Hi Daniel
> 
> Please could you give this a go. It is totally untested, not even
> compile tested...

Sure. The system boots but ther is one splat:


[    2.213987] usb 1-1: new high-speed USB device number 2 using dwc2
[    2.426789] hub 1-1:1.0: USB hub found
[    2.430677] hub 1-1:1.0: 4 ports detected
[    2.721982] usb 1-1.1: new high-speed USB device number 3 using dwc2
[    2.826991] hub 1-1.1:1.0: USB hub found
[    2.831093] hub 1-1.1:1.0: 3 ports detected
[    3.489988] usb 1-1.1.1: new high-speed USB device number 4 using dwc2
[    3.729045] lan78xx 1-1.1.1:1.0 (unnamed net_device) (uninitialized): deferred multicast write 0x00007ca0
[    3.870518] lan78xx 1-1.1.1:1.0 (unnamed net_device) (uninitialized): No External EEPROM. Setting MAC Speed
[    3.881900] libphy: lan78xx-mdiobus: probed
[    3.893322] lan78xx 1-1.1.1:1.0 (unnamed net_device) (uninitialized): registered mdiobus bus usb-001:004
[    3.902984] lan78xx 1-1.1.1:1.0 (unnamed net_device) (uninitialized): phydev->irq = 79
[    4.283761] random: crng init done
[    4.958866] lan78xx 1-1.1.1:1.0 eth0: receive multicast hash filter
[    4.965311] lan78xx 1-1.1.1:1.0 eth0: deferred multicast write 0x00007ca2
[    6.502358] lan78xx 1-1.1.1:1.0 eth0: PHY INTR: 0x00020000
[    6.507935] ------------[ cut here ]------------
[    6.512635] irq 79 handler irq_default_primary_handler+0x0/0x8 enabled interrupts
[    6.520250] WARNING: CPU: 0 PID: 0 at kernel/irq/handle.c:152 __handle_irq_event_percpu+0x150/0x170
[    6.529424] Modules linked in:
[    6.532526] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.4.0-rc3-00018-g5bc52f64e884-dirty #36
[    6.541172] Hardware name: Raspberry Pi 3 Model B+ (DT)
[    6.546471] pstate: 60000005 (nZCv daif -PAN -UAO)
[    6.551329] pc : __handle_irq_event_percpu+0x150/0x170
[    6.556539] lr : __handle_irq_event_percpu+0x150/0x170
[    6.561747] sp : ffff800010003cc0
[    6.565104] x29: ffff800010003cc0 x28: 0000000000000060 
[    6.570493] x27: ffff8000110fb9b0 x26: ffff800011a3daeb 
[    6.575882] x25: ffff800011892d40 x24: ffff000037525800 
[    6.581270] x23: 000000000000004f x22: ffff800010003d64 
[    6.586659] x21: 0000000000000000 x20: 0000000000000002 
[    6.592046] x19: ffff00003716fb00 x18: 0000000000000010 
[    6.597434] x17: 0000000000000001 x16: 0000000000000007 
[    6.602822] x15: ffff8000118931b0 x14: 747075727265746e 
[    6.608210] x13: 692064656c62616e x12: 65203878302f3078 
[    6.613598] x11: 302b72656c646e61 x10: 685f7972616d6972 
[    6.618986] x9 : 705f746c75616665 x8 : ffff800011a9f000 
[    6.624374] x7 : ffff800010681150 x6 : 00000000000000f9 
[    6.629761] x5 : 0000000000000000 x4 : 0000000000000000 
[    6.635148] x3 : 00000000ffffffff x2 : ffff8000118a2440 
[    6.640535] x1 : ab82878caf7c9e00 x0 : 0000000000000000 
[    6.645923] Call trace:
[    6.648404]  __handle_irq_event_percpu+0x150/0x170
[    6.653262]  handle_irq_event_percpu+0x30/0x88
[    6.657767]  handle_irq_event+0x44/0xc8
[    6.661659]  handle_simple_irq+0x90/0xc0
[    6.665635]  generic_handle_irq+0x24/0x38
[    6.669703]  intr_complete+0x104/0x178
[    6.673508]  __usb_hcd_giveback_urb+0x58/0xf8
[    6.677927]  usb_giveback_urb_bh+0xac/0x108
[    6.682173]  tasklet_action_common.isra.0+0x154/0x1a0
[    6.687298]  tasklet_hi_action+0x24/0x30
[    6.691277]  __do_softirq+0x120/0x23c
[    6.694990]  irq_exit+0xb8/0xd8
[    6.698174]  __handle_domain_irq+0x64/0xb8
[    6.702326]  bcm2836_arm_irqchip_handle_irq+0x60/0xc0
[    6.707449]  el1_irq+0xb8/0x180
[    6.710634]  arch_cpu_idle+0x10/0x18
[    6.714260]  do_idle+0x200/0x280
[    6.717532]  cpu_startup_entry+0x20/0x40
[    6.721512]  rest_init+0xd4/0xe0
[    6.724786]  arch_call_rest_init+0xc/0x14
[    6.728851]  start_kernel+0x420/0x44c
[    6.732562] ---[ end trace e770c2c68be5476f ]---
[    6.742776] lan78xx 1-1.1.1:1.0 eth0: speed: 1000 duplex: 1 anadv: 0x05e1 anlpa: 0xc1e1
[    6.750940] lan78xx 1-1.1.1:1.0 eth0: rx pause disabled, tx pause disabled
[    6.769976] Sending DHCP requests ..., OK
[   12.926088] IP-Config: Got DHCP answer from 192.168.19.2, my address is 192.168.19.53
[   12.934059] IP-Config: Complete:
[   12.937335]      device=eth0, hwaddr=b8:27:eb:85:c7:c9, ipaddr=192.168.19.53, mask=255.255.255.0, gw=192.168.19.1
[   12.947758]      host=192.168.19.53, domain=, nis-domain=(none)
[   12.953772]      bootserver=192.168.19.2, rootserver=192.168.19.2, rootpath=
[   12.953776]      nameserver0=192.168.19.2
[   12.965221] ALSA device list:
[   12.968246]   No soundcards found.
[   12.984397] VFS: Mounted root (nfs filesystem) on device 0:19.
[   12.991059] devtmpfs: mounted
[   13.000530] Freeing unused kernel memory: 5504K
[   13.018077] Run /sbin/init as init process
[   44.010022] nfs: server 192.168.19.2 not responding, still trying
[   44.010027] nfs: server 192.168.19.2 not responding, still trying
[   44.010033] nfs: server 192.168.19.2 not responding, still trying
[   44.010056] nfs: server 192.168.19.2 not responding, still trying
[   44.010070] nfs: server 192.168.19.2 not responding, still trying
[   44.017003] nfs: server 192.168.19.2 OK
[   44.028842] nfs: server 192.168.19.2 OK
[   44.035171] nfs: server 192.168.19.2 OK
[   44.035751] nfs: server 192.168.19.2 OK
[   44.035796] nfs: server 192.168.19.2 OK
[   46.056211] systemd[1]: System time before build time, advancing clock.
[   46.114708] systemd[1]: systemd 232 running in system mode. (+PAM +AUDIT +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN)
[   46.133593] systemd[1]: Detected architecture arm64.

Welcome to Debian GNU/Linux 9 (stretch)!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
