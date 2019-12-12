Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBAF11C19A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 01:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HRY1hxO2CEdSrwm30w716j05zDafb/zWghFR2y5vx4=; b=fBz/7hgXkzniLm
	yKk8GsPN/UobSYbagXTJoPAXxzXM1bqkRyewa/2D9QbV30fregr2zmfUKZcK6hdJFSPSziyuI/0Xr
	XJxrRYPHb0s1Gwvxf+h7lI2cu/mP8DAhO1REZ7UdwgXmw+UrGdYvvW9ZSp1pmHTGxn4YgCpEIBK++
	ckkYpGiyoG1wo/uem/4TNul0bRigkVIJXvbPBxHksJyV0VSRV1Rz/O1h+Z9I8NcDQDd6R9TAjwI9r
	WKdLnPWa9m0I//g8YBkqj2xusa7dLcBw6x7Qha2Onv2viJB+tx+Kj5nLO3Dp5nCz79cL4aEWIAc3F
	0A5dM3DghtSJAld3Oe1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCaO-0003YZ-RE; Thu, 12 Dec 2019 00:44:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCaF-0003XK-V3; Thu, 12 Dec 2019 00:44:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 753E11FB;
 Wed, 11 Dec 2019 16:43:54 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1D0D3F52E;
 Wed, 11 Dec 2019 16:43:53 -0800 (PST)
Date: Thu, 12 Dec 2019 00:43:52 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] PCI: rockchip: Fix register number offset to program IO
 outbound ATU
Message-ID: <20191212004347.GD24359@e119886-lin.cambridge.arm.com>
References: <20191211093450.7481-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211093450.7481-1-enric.balletbo@collabora.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_164400_089948_B4974FEC 
X-CRM114-Status: GOOD (  21.20  )
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
Cc: Rob Herring <robh@kernel.org>, gwendal@chromium.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, dtor@chromium.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, groeck@chromium.org,
 Collabora Kernel ML <kernel@collabora.com>, bleung@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:34:50AM +0100, Enric Balletbo i Serra wrote:
> Since commit '62240a88004b ("PCI: rockchip: Drop storing driver private
> outbound resource data)' the offset calculation is wrong to access the
> register number to program the IO outbound ATU. The offset should be
> based on the IORESOURCE_MEM resource size instead of the IORESOURCE_IO
> size.
> 
> This patch fixes the following 'synchronous external abort' bug:
> 
> [   15.362128] mwifiex_pcie 0000:01:00.0: enabling device (0000 -> 0002)
> [   15.369655] mwifiex_pcie: PCI memory map Virt0: 00000000a573ad00 PCI memory map Virt2: 00000000783126c4
> [   15.381466] Internal error: synchronous external abort: 96000210 [#1] PREEMPT SMP
> [   15.389965] Modules linked in: mwifiex_pcie(+) mwifiex uvcvideo cfg80211 atmel_mxt_ts videobuf2_vmalloc ...
> [   15.461095] CPU: 2 PID: 269 Comm: systemd-udevd Not tainted 5.4.0+ #327
> [   15.461097] Hardware name: Google Kevin (DT)
> [   15.461101] pstate: 60000005 (nZCv daif -PAN -UAO)
> [   15.461116] pc : mwifiex_register_dev+0x264/0x3f8 [mwifiex_pcie]
> [   15.461121] lr : mwifiex_register_dev+0x150/0x3f8 [mwifiex_pcie]
> [   15.461123] sp : ffff800012073860
> [   15.461128] x29: ffff800012073860 x28: ffff8000100a2e28
> [   15.509043] x27: ffff8000118b6210 x26: ffff800008f57458
> [   15.515055] x25: ffff0000ecfda000 x24: 0000000000000001
> [   15.521069] x23: ffff0000e9905080 x22: ffff800008f5d000
> [   15.527082] x21: ffff0000eecea078 x20: ffff0000e9905080
> [   15.533096] x19: ffff0000eecea000 x18: 0000000000000001
> [   15.539108] x17: 0000000000000000 x16: 0000000000000000
> [   15.545118] x15: ffffffffffffffff x14: ffff8000118998c8
> [   15.551128] x13: ffff000000000000 x12: 0000000000000008
> [   15.557138] x11: 0101010101010101 x10: ffff7f7fffff7fff
> [   15.563148] x9 : 0000000000000000 x8 : ffff0000e3c24240
> [   15.569159] x7 : 0000000000000000 x6 : ffff0000e3c24148
> [   15.575169] x5 : ffff0000e3c24148 x4 : ffff0000e7975ec8
> [   15.581178] x3 : 0000000000000001 x2 : 0000000000002b42
> [   15.587188] x1 : ffff800012c00008 x0 : ffff0000e9905080
> [   15.593200] Call trace:
> [   15.595970]  mwifiex_register_dev+0x264/0x3f8 [mwifiex_pcie]
> [   15.602398]  mwifiex_add_card+0x2f8/0x430 [mwifiex]
> [   15.607920]  mwifiex_pcie_probe+0x98/0x148 [mwifiex_pcie]
> [   15.614033]  local_pci_probe+0x3c/0xa0
> [   15.618275]  pci_device_probe+0x110/0x1a8
> [   15.622812]  really_probe+0xd4/0x308
> [   15.626856]  driver_probe_device+0x54/0xe8
> [   15.631491]  device_driver_attach+0x6c/0x78
> [   15.636224]  __driver_attach+0x54/0xd0
> [   15.640465]  bus_for_each_dev+0x70/0xc0
> [   15.644804]  driver_attach+0x20/0x28
> [   15.648847]  bus_add_driver+0x178/0x1d8
> [   15.653186]  driver_register+0x60/0x110
> [   15.657525]  __pci_register_driver+0x40/0x48
> [   15.662359]  mwifiex_pcie_init+0x24/0x1000 [mwifiex_pcie]
> [   15.668469]  do_one_initcall+0x74/0x1a8
> [   15.672810]  do_init_module+0x50/0x208
> [   15.677050]  load_module+0x1a78/0x1d18
> [   15.681290]  __do_sys_finit_module+0xd0/0xe8
> [   15.686120]  __arm64_sys_finit_module+0x1c/0x28
> [   15.691247]  el0_svc_common.constprop.2+0x88/0x150
> [   15.696668]  el0_svc_handler+0x20/0x80
> [   15.700909]  el0_sync_handler+0x118/0x188
> [   15.705444]  el0_sync+0x140/0x180
> [   15.716955] Code: a8c67bfd d65f03c0 f942ac01 91002021 (b9400021)
> [   15.731548] ---[ end trace 1488ca6d6b162849 ]---
> 
> Fixes: 62240a88004b ("PCI: rockchip: Drop storing driver private outbound resource data)
> Reported-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Suggested-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
>  drivers/pci/controller/pcie-rockchip-host.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index d9b63bfa5dd7..94af6f5828a3 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -834,10 +834,12 @@ static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
>  	if (!entry)
>  		return -ENODEV;
>  
> +	/* store the register number offset to program RC io outbound ATU */

Thanks for this fix. I've read your previous thread with Lorenzo and I can see
that this restores the logic of the original code.

If I understand correctly - the intent of offset is to ensure that when we
start programming the ATU for IO, we don't overwrite the windows we've already
written for MEMORY. Thus we need to calculate offset for the old (MEMORY) size.

Acked-by: Andrew Murray <andrew.murray@arm.com>

Thanks,

Andrew Murray

> +	offset = size >> 20;
> +
>  	size = resource_size(entry->res);
>  	pci_addr = entry->res->start - entry->offset;
>  
> -	offset = size >> 20;
>  	for (reg_no = 0; reg_no < (size >> 20); reg_no++) {
>  		err = rockchip_pcie_prog_ob_atu(rockchip,
>  						reg_no + 1 + offset,
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
