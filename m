Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97B81309ED
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 21:43:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXHboHYJPfhylpSaC6VZmLseEGH7MhFDOMGjbZtxt2Q=; b=kZZ9dzhF/VXt5f
	yl/umV1CHF7+wvGnQRq/cuDGmuLnsJ+Tn43w9+gM95sSnxjUxLK1p75kLZ0ss8joPBOGawuocgZav
	K7nl+aQQFOQhta3m9ad0VYFms4LTvlJrVBSbWwmK1oM7FMPEtsCCo4fFIyum7EO8IMVnYZ4qP1xKy
	mxeZkiBmoKX7+xkw799wwYNubx3y2v+2M+rP3V+FqLJOKZ/OIY6tsixr5Fg4UtFLRrujNK6j+WDTv
	wCXEXmFPV8yGq7BdwvI0LP8MwES/8r7FEvPBQ9SMrBYpAb39wWJMp3xt+Hi2pCda+rJMnPAFlevfS
	N+Ej2IowQCbsXXsIHtUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioCkD-000575-LG; Sun, 05 Jan 2020 20:43:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioCk4-00055r-In
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 20:43:22 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioCjp-0000m4-Ne; Sun, 05 Jan 2020 21:43:05 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net: stmmac: platform: Fix MDIO init for platforms
 without PHY
Date: Sun, 05 Jan 2020 21:43:04 +0100
Message-ID: <1700835.tBzmY8zkgn@diego>
In-Reply-To: <20191220.212918.1661751615125167321.davem@davemloft.net>
References: <CGME20191219102407epcas5p103b26e6fb191f7135d870a3449115c89@epcas5p1.samsung.com>
 <1576750621-78066-1-git-send-email-p.rajanbabu@samsung.com>
 <20191220.212918.1661751615125167321.davem@davemloft.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_124320_778662_027C4E0E 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jose.Abreu@synopsys.com, jayati.sahu@samsung.com, alexandre.torgue@st.com,
 rcsekar@samsung.com, netdev@vger.kernel.org, sriram.dash@samsung.com,
 linux-kernel@vger.kernel.org, p.rajanbabu@samsung.com, stable@vger.kernel.org,
 pankaj.dubey@samsung.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Samstag, 21. Dezember 2019, 06:29:18 CET schrieb David Miller:
> From: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
> Date: Thu, 19 Dec 2019 15:47:01 +0530
> 
> > The current implementation of "stmmac_dt_phy" function initializes
> > the MDIO platform bus data, even in the absence of PHY. This fix
> > will skip MDIO initialization if there is no PHY present.
> > 
> > Fixes: 7437127 ("net: stmmac: Convert to phylink and remove phylib logic")
> > Acked-by: Jayati Sahu <jayati.sahu@samsung.com>
> > Signed-off-by: Sriram Dash <sriram.dash@samsung.com>
> > Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
> 
> Applied and queued up for -stable, thanks.

with this patch applied I now run into issues on multiple rockchip
platforms using a gmac interface.

When probing the driver and trying to establish a connection for a nfsroot
it always runs into a null pointer in mdiobus_get_phy():

[   26.878839] rk_gmac-dwmac ff360000.ethernet: IRQ eth_wake_irq not found
[   26.886322] rk_gmac-dwmac ff360000.ethernet: IRQ eth_lpi not found
[   26.894505] rk_gmac-dwmac ff360000.ethernet: PTP uses main clock
[   26.908209] rk_gmac-dwmac ff360000.ethernet: clock input or output? (output).
[   26.916269] rk_gmac-dwmac ff360000.ethernet: Can not read property: tx_delay.
[   26.924297] rk_gmac-dwmac ff360000.ethernet: set tx_delay to 0x30
[   26.931150] rk_gmac-dwmac ff360000.ethernet: Can not read property: rx_delay.
[   26.939166] rk_gmac-dwmac ff360000.ethernet: set rx_delay to 0x10
[   26.946021] rk_gmac-dwmac ff360000.ethernet: integrated PHY? (no).
[   26.953032] rk_gmac-dwmac ff360000.ethernet: cannot get clock clk_mac_refout
[   26.966161] rk_gmac-dwmac ff360000.ethernet: init for RMII
[   26.972633] rk_gmac-dwmac ff360000.ethernet: User ID: 0x10, Synopsys ID: 0x35
[   26.980830] rk_gmac-dwmac ff360000.ethernet:         DWMAC1000
[   26.986735] rk_gmac-dwmac ff360000.ethernet: DMA HW capability register supported
[   26.995145] rk_gmac-dwmac ff360000.ethernet: RX Checksum Offload Engine supported
[   27.003540] rk_gmac-dwmac ff360000.ethernet: COE Type 2
[   27.009408] rk_gmac-dwmac ff360000.ethernet: TX Checksum insertion supported
[   27.017320] rk_gmac-dwmac ff360000.ethernet: Wake-Up On Lan supported
[   27.024577] rk_gmac-dwmac ff360000.ethernet: Normal descriptors
[   27.031211] rk_gmac-dwmac ff360000.ethernet: Ring mode enabled
[   27.037743] rk_gmac-dwmac ff360000.ethernet: Enable RX Mitigation via HW Watchdog Timer
[   27.209823] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000398
 2IP-Config: eth0 hardware address  66:e4:9b:b1:30:c3 mtu 1500 DHCP
7.219681] Mem abort info:
[   27.229322]   ESR = 0x96000006
[   27.229328]   EC = 0x25: DABT (current EL), IL = 32 bits
[   27.229330]   SET = 0, FnV = 0
[   27.229332]   EA = 0, S1PTW = 0
[   27.229334] Data abort info:
[   27.229336]   ISV = 0, ISS = 0x00000006
[   27.229338]   CM = 0, WnR = 0
[   27.229342] user pgtable: 4k pages, 48-bit VAs, pgdp=000000003e7d4000
[   27.229345] [0000000000000398] pgd=0000000036739003, pud=0000000035894003, pmd=0000000000000000
[   27.273398] Internal error: Oops: 96000006 [#1] SMP
[   27.273403] Modules linked in: smsc95xx smsc75xx ax88179_178a asix usbnet panel_leadtek_ltk500hd1829 dwmac_rk stmmac_platform stmmac rockchipdrm phy_rockchip_inno_dsidphy analogix_dp dw_hdmi cec r
c_core dw_mipi_dsi drm_kms_helper rtc_rk808 drm drm_panel_orientation_quirks
[   27.305785] CPU: 3 PID: 1388 Comm: ipconfig Not tainted 5.5.0-rc4-00934-gd57e566e6874 #1463
[   27.305790] Hardware name: Theobroma Systems Cobra with Leadtek Display (DT)
[   27.323006] pstate: 40000005 (nZcv daif -PAN -UAO)
[   27.323020] pc : mdiobus_get_phy+0x4/0x20
[   27.332867] lr : stmmac_open+0x780/0xa78 [stmmac]
[   27.332872] sp : ffff80001113b9a0
[   27.341823] x29: ffff80001113b9a0 x28: 0000000000401003
[   27.347761] x27: ffff00003d5cf200 x26: 0000000000000000
[   27.353699] x25: 0000000000000001 x24: 0000000000000000
[   27.359636] x23: 0000000000001002 x22: ffff800008b790a0
[   27.365575] x21: ffff000035f84000 x20: 00000000ffffffff
[   27.371513] x19: ffff000035f84800 x18: 0000000000000000
[   27.377451] x17: 0000000000000000 x16: 0000000000000000
[   27.383389] x15: 0000000000000000 x14: ffffffffffffffff
[   27.389328] x13: 0000000000000020 x12: 0101010101010101
[   27.395266] x11: 0000000000000003 x10: 0101010101010101
[   27.401203] x9 : fffffffffffffffd x8 : 7f7f7f7f7f7f7f7f
[   27.407143] x7 : fefefeff646c606d x6 : 1e091448e4e5f6e9
[   27.413074] x5 : 697665644814091e x4 : 8080808000000000
[   27.419013] x3 : 8343c96b232bb348 x2 : ffff00003d63f880
[   27.424953] x1 : fffffffffffffff8 x0 : 0000000000000000
[   27.430882] Call trace:
[   27.433620]  mdiobus_get_phy+0x4/0x20
[   27.437715]  __dev_open+0xe4/0x160
[   27.441515]  __dev_change_flags+0x160/0x1b8
[   27.446191]  dev_change_flags+0x20/0x60
[   27.450478]  devinet_ioctl+0x66c/0x738
[   27.454666]  inet_ioctl+0x2f4/0x360
[   27.458565]  sock_do_ioctl+0x44/0x2b0
[   27.462657]  sock_ioctl+0x1c8/0x508
[   27.466556]  do_vfs_ioctl+0x604/0xbd0
[   27.470646]  ksys_ioctl+0x78/0xa8
[   27.474351]  __arm64_sys_ioctl+0x1c/0x28
[   27.478737]  el0_svc_common.constprop.0+0x68/0x160
[   27.484083]  el0_svc_handler+0x20/0x80
[   27.488273]  el0_sync_handler+0x10c/0x180
[   27.492753]  el0_sync+0x140/0x180
[   27.496462] Code: 97ffffb0 a8c17bfd d65f03c0 8b21cc01 (f941d020)
[   27.503275] ---[ end trace 6f6ca54e66af6d48 ]---

With the expected output being normally at this point:
[   18.575321] rk_gmac-dwmac ff360000.ethernet eth0: PHY [stmmac-0:00] driver [RTL8201F Fast Ethernet]
[   18.602975] rk_gmac-dwmac ff360000.ethernet eth0: No Safety Features support found
[   18.611505] rk_gmac-dwmac ff360000.ethernet eth0: PTP not supported by HW
[   18.619117] rk_gmac-dwmac ff360000.ethernet eth0: configuring for phy/rmii link mode
[   22.719478] rk_gmac-dwmac ff360000.ethernet eth0: Link is Up - 100Mbps/Full - flow control rx/tx

or

[   27.326984] rk_gmac-dwmac ff360000.ethernet eth0: PHY [stmmac-0:00] driver [Generic PHY]
[   27.353543] rk_gmac-dwmac ff360000.ethernet eth0: No Safety Features support found
[   27.362055] rk_gmac-dwmac ff360000.ethernet eth0: PTP not supported by HW
[   27.369663] rk_gmac-dwmac ff360000.ethernet eth0: configuring for phy/rmii link mode
[   29.406784] rk_gmac-dwmac ff360000.ethernet eth0: Link is Up - 100Mbps/Full - flow control rx/tx


This is torvalds git head and it was still working at -rc1 and all kernels
before that. When I just revert this commit, things also start working
again, so I guess something must be wrong here?

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
