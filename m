Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F038818B4BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xJ26UevV645siqNhWHcW0LKbrrVIw0Cb0WB7AW/K7NA=; b=or3EfE+d/rVu0fnh294dH8EJT
	JwRaLX7k2osHkh6fKesnDKbuLKxE5kTQX3ABp2rOpvX8pURvb685bvIoUI2Jy8HCtlRlOSTtYWx8O
	LMi03RZtCCF5uKQ2FJVZKDgc/a2zrXou6dKRvD8nQhp7ZdIttyy08JZThI+ZhWBtDF+TI+2oJpNC9
	WHJTsJIpnj4MBekRi7ShRadLoVImkX0XBhDGiR5U1RFJ3N4ieWTeG53bvZS4ZDreq0SP6+ajckOYb
	CUHWMaveNwuHo5PYGP/8lnBtiNomx1M6P6xaqXZ5ZKQG6T4+jNC1rGvh4LooZUdtbISU2e69AFMa2
	KPOerKsmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuyO-00017m-EZ; Thu, 19 Mar 2020 13:12:32 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuyE-00016q-6N
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 13:12:23 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02JDCJ7H062279;
 Thu, 19 Mar 2020 08:12:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584623539;
 bh=V9HGJ0GpnxjQOESOUN/sLOEhLW57qIDweXOuYdH4iHk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=g7gey1toj8Azfli2+mo225NuIhZ6PEDfHwmuOjyfZulOzAsEePdkwGwzuvEhenmYs
 PYvBqO/oFjdl6BhssnjpaovxJbmGF2QAwuUhPKEBsEmUON9NmG9PbeMQoE6pKyjg6r
 E8LRfGh4jG+PiTOgsJNp3RpQArxsuFRE0MoPZPH8=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02JDCJfA105157
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 19 Mar 2020 08:12:19 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 19
 Mar 2020 08:12:18 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 19 Mar 2020 08:12:18 -0500
Received: from [10.250.86.23] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02JDCIUE076374;
 Thu, 19 Mar 2020 08:12:18 -0500
Subject: Re: [PATCH net-next v4 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Grygorii Strashko <grygorii.strashko@ti.com>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Tero Kristo
 <t-kristo@ti.com>, "David S . Miller" <davem@davemloft.net>, netdev
 <netdev@vger.kernel.org>, Roger Quadros <rogerq@ti.com>,
 <devicetree@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
References: <20200317072739.23950-1-grygorii.strashko@ti.com>
From: Murali Karicheri <m-karicheri2@ti.com>
Message-ID: <42462c2f-5714-4df3-0184-7fe2b0eec609@ti.com>
Date: Thu, 19 Mar 2020 09:12:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200317072739.23950-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_061222_317136_D0DC38A0 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/17/2020 03:27 AM, Grygorii Strashko wrote:
> Hi
> 
> This v4 series adds basic networking support support TI K3 AM654x/J721E SoC which
> have integrated Gigabit Ethernet MAC (Media Access Controller) into device MCU
> domain and named MCU_CPSW0 (CPSW2G NUSS).
> 
> Formally TRMs refer CPSW2G NUSS as two-port Gigabit Ethernet Switch subsystem
> with port 0 being the CPPI DMA host port and port 1 being the external Ethernet
> port, but for 1 external port device it's just Port 0 <-> ALE <-> Port 1 and it's
> rather device with HW filtering capabilities then actually switching device.
> It's expected to have similar devices, but with more external ports.
> 
> The new Host port 0 Communications Port Programming Interface (CPPI5) is
> operating by TI AM654x/J721E NAVSS Unified DMA Peripheral Root Complex (UDMA-P)
> controller [1].
> 
> The CPSW2G contains below modules for which existing code is re-used:
>   - MAC SL: cpsw_sl.c
>   - Address Lookup Engine (ALE): cpsw_ale.c, basically compatible with K2 66AK2E/G
>   - Management Data Input/Output interface (MDIO): davinci_mdio.c, fully
>     compatible with TI AM3/4/5 devices
> 
> Basic features supported by CPSW2G NUSS driver:
>   - VLAN support, 802.1Q compliant, Auto add port VLAN for untagged frames on
>     ingress, Auto VLAN removal on egress and auto pad to minimum frame size.
>   - multicast filtering
>   - promisc mode
>   - TX multiq support in Round Robin or Fixed priority modes
>   - RX checksum offload for non-fragmented IPv4/IPv6 TCP/UDP packets
>   - TX checksum offload support for IPv4/IPv6 TCP/UDP packets (J721E only).
> 
> Features under development:
>   - Support for IEEE 1588 Clock Synchronization. The CPSW2G NUSS includes new
>     version of Common Platform Time Sync (CPTS)
>   - tc-mqprio: priority level Quality Of Service (QOS) support (802.1p)
>   - tc-cbs: Support for Audio/Video Bridging (P802.1Qav/D6.0) HW shapers
>   - tc-taprio: IEEE 802.1Qbv/D2.2 Enhancements for Scheduled Traffic
>   - frame preemption: IEEE P902.3br/D2.0 Interspersing Express Traffic, 802.1Qbu
>   - extended ALE features: classifier/policers, auto-aging
> 
> Patches 1-6 are intended for netdev, Patches 7-11 are intended for K3 Platform
> tree and provided here for testing purposes.
> 
> Changes in v4:
>   - fixed minor comments from Jakub Kicinski <kuba@kernel.org>
>   - dependencies resolved: required phy-rmii-sel changes [2] queued for merge
>     except one [3] which is included in this series with Kishon's ask.
> 

Tested-by: Murali Karicheri <m-karicheri2@ti.com>

Logs at https://pastebin.ubuntu.com/p/rP6pcMqcw5/

> Changes in v3:
>   - add ARM64 defconfig changes for testing purposes
>   - fixed DT yaml definition
>   - fixed comments from Jakub Kicinski <kuba@kernel.org>
> 
> Changes in v2:
>   - fixed DT yaml definition
>   - fixed comments from David Miller
> 
> v3: https://patchwork.ozlabs.org/cover/1254568/
> v2: https://patchwork.ozlabs.org/cover/1250674/
> v1: https://lwn.net/Articles/813087/
> 
> TRMs:
>   AM654: http://www.ti.com/lit/ug/spruid7e/spruid7e.pdf
>   J721E: http://www.ti.com/lit/ug/spruil1a/spruil1a.pdf
> 
> Preliminary documentation can be found at:
>   http://software-dl.ti.com/processor-sdk-linux/esd/docs/latest/linux/Foundational_Components/Kernel/Kernel_Drivers/Network/K3_CPSW2g.html
> 
> [1] https://lwn.net/Articles/808030/
> [2] https://lkml.org/lkml/2020/2/22/100
> [3] https://lkml.org/lkml/2020/3/3/724
> 
> Grygorii Strashko (11):
>    phy: ti: gmii-sel: simplify config dependencies between net drivers
>      and gmii phy
>    net: ethernet: ti: ale: fix seeing unreg mcast packets with promisc
>      and allmulti disabled
>    net: ethernet: ti: ale: add support for mac-only mode
>    net: ethernet: ti: ale: am65: add support for default thread cfg
>    dt-binding: ti: am65x: document mcu cpsw nuss
>    net: ethernet: ti: introduce am65x/j721e gigabit eth subsystem driver
>    arm64: dts: ti: k3-am65-mcu: add cpsw nuss node
>    arm64: dts: k3-am654-base-board: add mcu cpsw nuss pinmux and phy defs
>    arm64: dts: ti: k3-j721e-mcu: add mcu cpsw nuss node
>    arm64: dts: ti: k3-j721e-common-proc-board: add mcu cpsw nuss pinmux
>      and phy defs
>    arm64: defconfig: ti: k3: enable dma and networking
> 
>   .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   |  226 ++
>   arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       |   49 +
>   arch/arm64/boot/dts/ti/k3-am65.dtsi           |    1 +
>   .../arm64/boot/dts/ti/k3-am654-base-board.dts |   42 +
>   .../dts/ti/k3-j721e-common-proc-board.dts     |   43 +
>   .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |   49 +
>   arch/arm64/boot/dts/ti/k3-j721e.dtsi          |    1 +
>   arch/arm64/configs/defconfig                  |    3 +
>   drivers/net/ethernet/ti/Kconfig               |   20 +-
>   drivers/net/ethernet/ti/Makefile              |    3 +
>   drivers/net/ethernet/ti/am65-cpsw-ethtool.c   |  747 +++++++
>   drivers/net/ethernet/ti/am65-cpsw-nuss.c      | 1965 +++++++++++++++++
>   drivers/net/ethernet/ti/am65-cpsw-nuss.h      |  143 ++
>   drivers/net/ethernet/ti/cpsw_ale.c            |   38 +
>   drivers/net/ethernet/ti/cpsw_ale.h            |    4 +
>   drivers/net/ethernet/ti/k3-udma-desc-pool.c   |  126 ++
>   drivers/net/ethernet/ti/k3-udma-desc-pool.h   |   30 +
>   drivers/phy/ti/Kconfig                        |    3 -
>   18 files changed, 3488 insertions(+), 5 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
>   create mode 100644 drivers/net/ethernet/ti/am65-cpsw-ethtool.c
>   create mode 100644 drivers/net/ethernet/ti/am65-cpsw-nuss.c
>   create mode 100644 drivers/net/ethernet/ti/am65-cpsw-nuss.h
>   create mode 100644 drivers/net/ethernet/ti/k3-udma-desc-pool.c
>   create mode 100644 drivers/net/ethernet/ti/k3-udma-desc-pool.h
> 

-- 
Murali Karicheri
Texas Instruments

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
