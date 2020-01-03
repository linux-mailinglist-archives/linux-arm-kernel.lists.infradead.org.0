Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8831A12F27F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 02:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=htoYdI5iWHpGg9YtE4fm/twovbrYLewCad8V3KQ68iw=; b=Fwe49vSxoNTqQu
	IaxOXsHP50XNJ8ym2s5ThkBAoV2h0y9UCx4cIhoRBnG9tB0u/bA3NL+RIT1tN6p9VqW/YpFDXvHFL
	SI7Grnr1XGRYHOqUtNRh8DLJVVAqYt1pI1CI9YfU09Ff1eDP41fEqL033qI4X+bTWh51OCFAaGLS8
	SCOIOuLLS5Il/xBvZkflpv2NE8BWpLVNrwR0wJJtCVMOSyp8fUIofLq74e3MUxxrSCDXcIVo/rtO3
	1dzTiEmf+cGnRVQtxr0odTholNzXLfuwgsUprAWYmUi2+E0PfGbVkokDBaWJ22gXTTButA20cRZ9s
	0f9LuTNNE/zwpGcIUGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inBOs-0008EF-2J; Fri, 03 Jan 2020 01:05:14 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inBOl-0007gq-DW; Fri, 03 Jan 2020 01:05:09 +0000
Received: by mail-ua1-x942.google.com with SMTP id f7so14183272uaa.8;
 Thu, 02 Jan 2020 17:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=5Sgvu+ftX8WosJ7WQ0e9tXOw3qR77NQu+UEd3hyiXD4=;
 b=N2z2VnSsKbvyEdCtMIpQM6HpWs2GGuIW4auIa7X1g7wZBWW2kS6hIbjcOP8pPP48lV
 o/ez+NK+dh98E9pOunDBAlTWM9lhlUzVzFqKVLy3IaPvf+0uKvVY5r5Fos3NZ51qd/7L
 2to+TBxFg+m+sGUkfJdFgMh2pr/4JNB2KZ5O+Nz/h77JhmBbwT+8WX//r3Jm+VoqQd0D
 CcZFKcsD3XF1yzMSSSdWYsT7/ia2IQj5XWDn8x+UFPHEowCQBO3qbxHmJafwZSW9ZkUb
 1jK1Ta96QsRDH2ECrm/AbmvMlJPl3A3SeVLmJhOqPUdZxtY80rr8CsQdTGqICVqUdrqf
 +qiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=5Sgvu+ftX8WosJ7WQ0e9tXOw3qR77NQu+UEd3hyiXD4=;
 b=t4qiiGFcBD4EzO1/OUArzm3edp+x1pt4cbz5KnNSmnQjEFt5j69AdtUBaarNWvWubG
 ZoLa6EJyrWk/jILmM/YdBACRL6T6UJTQvKzwCFhTqmLGo0FODnY5n7r9ngILHPU2KFzp
 2QdpPZI/TqPw6DcNsIx0gRUrB+Q92xMxTZesAtaQGA9MaseFzwZzQ0IGpPuPa9X+hyyE
 N3fMJn7+lwSi1wjIgvJe9QYHAL32fW5jWOMKxGiywJsV8arAJ6mhzDOmG6N3JMqXkMuY
 qmdNn/NmlgFMQjNtZi0LFhZri9r1gyoewe52R6ewzAX8Nh5biRpkanDXfNYlpgCy1+wD
 1nOQ==
X-Gm-Message-State: APjAAAWGskRGzvoM178M1knfDS9n9uNAQ7SV3JOlVxovNuHBIBAUGKrz
 03s8LUONq0V9wCrRSpqVPcMLiywTp2RsDnVg4Uo=
X-Google-Smtp-Source: APXvYqyRysXyaIBX+UDWjrrp1LxFLTBzfE52SoyzQ2oplFoUhEappvh7Q60WzlS74qCyiY36Y5rpaNEvOIjjyV2jTfA=
X-Received: by 2002:ab0:5510:: with SMTP id t16mr53211184uaa.15.1578013505829; 
 Thu, 02 Jan 2020 17:05:05 -0800 (PST)
MIME-Version: 1.0
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Thu, 2 Jan 2020 17:04:30 -0800
Message-ID: <CAMWSM7ha5XcoknM1qrNTMM+A5Re2yQPNWvu_ZVKAWBUx-FmasA@mail.gmail.com>
Subject: Orange Pi 4 (RK3399) fails to bring up ethernet on boot
To: robh+dt@kernel.org, mark.rutland@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_170507_470652_460F3813 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joseph.kogut[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I'm working on getting the newly released Orange Pi 4 up and running
with the mainline kernel. Using the rk3399-orangepi device tree gets
the device to start booting, but the kernel has an oops when starting
networking, and the boot process fails to continue.

[  153.325306] Internal error: Oops: 96000004 [#1] SMP
[  153.325733] Modules linked in: rockchipdrm btsdio(+) brcmfmac
analogix_dp rockchip_rga dw_mipi_dsi brcmutil dw_hdmi hci_uart cec
videobuf2_dma_sg cfg80211 v4l2_mem2mem btqca rc_core videobuf2_memops
btbcm videobuf2_v4l2 btintel videobuf2_common drm_kms_helper bluetooth
dwmac_rk syscopyarea stmmac_platform videodev panfrost sysfillrect
stmmac snd_soc_simple_card sysimgblt fb_sys_fops gpu_sched
snd_soc_simple_card_utils ecdh_generic st_lsm6dsx_spi phylink mc
st_lsm6dsx_i2c ecc inv_mpu6050_i2c drm rfkill st_lsm6dsx inv_mpu6050
adc_keys rockchip_saradc gpio_keys ak8975 cm32181 dw_wdt
rockchip_thermal rtc_rk808
[  153.330457] CPU: 1 PID: 493 Comm: systemd-network Tainted: G
     L    5.5.0-rc4-1-ARCH #1
[  153.331230] Hardware name: Orange Pi RK3399 Board (DT)
[  153.331681] pstate: 40000005 (nZcv daif -PAN -UAO)
[  153.332108] pc : mdiobus_get_phy+0xc/0x28
[  153.332487] lr : stmmac_open+0x288/0xa50 [stmmac]
[  153.332899] sp : ffff800011f2b5e0
[  153.333190] x29: ffff800011f2b5e0 x28: 0000000000000000
[  153.333656] x27: ffff0000eb6448c0 x26: ffff0000eb7e7e10
[  153.334122] x25: 0000000000000001 x24: 0000000000000000
[  153.334587] x23: ffff800011829000 x22: ffff0000eb644000
[  153.335053] x21: ffff800011f2bbd0 x20: ffff0000ea0e6280
[  153.335519] x19: 00000000ffffffff x18: 0000000000000000
[  153.335984] x17: 0000000000000000 x16: 0000000000000000
[  153.336449] x15: 0000000000000000 x14: 0000000000000000
[  153.336915] x13: 0000000000000000 x12: 0000000000000000
[  153.337380] x11: 0000000000000003 x10: 0101010101010101
[  153.337845] x9 : ffff8000090becb0 x8 : 7f7f7f7f7f7f7f7f
[  153.338310] x7 : fefefeff646c606d x6 : 1e091448e4e5f6e9
[  153.338776] x5 : 697665644814091e x4 : 8080808000000000
[  153.339241] x3 : 8343c96b232bb348 x2 : ffff0000ea0b8880
[  153.339707] x1 : 00000000ffffffff x0 : fffffffffffffff8
[  153.340172] Call trace:
[  153.340392]  mdiobus_get_phy+0xc/0x28
[  153.340717]  __dev_open+0x104/0x198
[  153.341025]  __dev_change_flags+0x1a0/0x208
[  153.341393]  dev_change_flags+0x28/0x68
[  153.341731]  do_setlink+0x2cc/0xcc0
[  153.342040]  rtnl_setlink+0xf0/0x188
[  153.342355]  rtnetlink_rcv_msg+0x2b0/0x358
[  153.342719]  netlink_rcv_skb+0x60/0x120
[  153.343056]  rtnetlink_rcv+0x1c/0x28
[  153.343371]  netlink_unicast+0x1a0/0x248
[  153.343716]  netlink_sendmsg+0x1c0/0x3c0
[  153.344061]  sock_sendmsg+0x4c/0x58
[  153.344368]  __sys_sendto+0xd4/0x138
[  153.344683]  __arm64_sys_sendto+0x2c/0x38
[  153.345039]  el0_svc_handler+0xa4/0x188
[  153.345377]  el0_sync_handler+0x1c8/0x260
[  153.345730]  el0_sync+0x140/0x180
[  153.346025] Code: d65f03c0 aa1e03e9 d503201f 8b21cc00 (f941d000)
[  153.346560] ---[ end trace 0d82e8dab5e0c74f ]---

It's worth noting that the rk3399-orangepi device tree isn't
necessarily compatible with this board, though after perusing the
schematics for both the Orange Pi 4 and Orange Pi RK3399, I found no
differences as far as the networking hardware goes. However, this is
not an area in which I am well experienced.

I was able to work around this issue by reading a few other RK3399
based device trees, and adding a phy-handle property to the gmac node,
as well as an mdio child node. I have a patch [0] that works with my
board, but I'm unsure if it's correct for both Orange Pis, and even if
it is, I'm not sure what the original problem was, or how to word the
commit message to actually send the patch.

Could you please advise on how I should proceed?

Best,
Joseph

[0] https://gist.github.com/jakogut/bc21de0535b640f2374c1d07a710e8ab

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
