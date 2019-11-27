Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE3810AA97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 07:08:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/0nBiXEXBRZO1sZYq4PkwRpT4xpK3taTLzsQzJ4sFw=; b=Lhdo2MHw4nPm3y
	dydgVglACA2pHwFSuLDGWDtorfVblseUKT1K7hAxecBy3vGOKzeHVe6NyR6gajqGPUv8BBGratgZd
	idVs2Z1m7iW2jSKd3UVOoN5GgBysBTAwHakKE9xBInAYJpEvAqGLq+7VBeFMaUfvKLMbKJbJWbEBC
	KIC9v/CnM3fS2ttsfYI6YrROH1tmcMSmlF/9uxWMcEc/yGw84TOa25VislK+E3Iuv9iDoWcHLyOiL
	GTN/VgS00KTYuyzw98XwGfULe7wJY3nfcokVyv80EYJp4P3F6eqq19cFPa69CafuyFp7UTWx0rFv5
	vI5LtTesBuUF3TqR1I4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZqVA-0007f3-5F; Wed, 27 Nov 2019 06:08:36 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZqUz-0007eW-2N
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 06:08:26 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAR68ATE043987;
 Wed, 27 Nov 2019 00:08:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574834890;
 bh=JZc1B8RG/YeMTo2s/ibzN/Eaqy05JPcFJLaIF51oXpc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=rDqjV4QMMrb55FIJgfbdwesvYoqebW+NdP/vKFSp3Ds9OTNe0YCZbTIdfECAp1V5E
 nuEWG+4NvH4aknsDljjRrRl841LOspwEFH3uwU1syK3xtGVtuP2Br0L+m7w5HHz0D0
 VpTBKfKLSlHYLykmJGDbf6fOpODYdg0keEQQAmzk=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAR68Adw029429
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 27 Nov 2019 00:08:10 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 27
 Nov 2019 00:08:10 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 27 Nov 2019 00:08:10 -0600
Received: from [10.24.69.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAR680Wc026149;
 Wed, 27 Nov 2019 00:08:01 -0600
Subject: Re: [PATCH 0/5] Add support for PCIe controller to work in endpoint
 mode on R-Car SoCs.
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci
 <linux-pci@vger.kernel.org>
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CA+V-a8tVK7oUYggTb5Vi3agMp4CH8gtiKDHet09DzE5-LAfiew@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <a0d5b159-001a-a013-ba1d-a0eeb3c89ffa@ti.com>
Date: Wed, 27 Nov 2019 11:37:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+V-a8tVK7oUYggTb5Vi3agMp4CH8gtiKDHet09DzE5-LAfiew@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_220825_198896_14CC6E96 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prabhakar,

On 26/11/19 8:03 PM, Lad, Prabhakar wrote:
> Hi Bjorn/Kishon,
> 
> Gentle ping for this patch set.

Reviewed them now. Sorry for the delay.

Thanks
Kishon

> 
> On Wed, Nov 6, 2019 at 7:36 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
>>
>> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>>
>> This patch series adds support for PCIe controller on rcar to work in endpoint mode,
>> this also extends the epf framework to handle multiple outbound regions.
>>
> Cheers,
> --Prabhakar Lad
> 
> 
>> Note:
>> The cadence/rockchip/designware endpoint drivers are build tested only.
>>
>> Endpoint configuration:
>> $ cd /sys/kernel/config/pci_ep
>> $ mkdir functions/pci_epf_test/func1
>> $ echo 0x1912 > functions/pci_epf_test/func1/vendorid
>> $ echo 0x002d > functions/pci_epf_test/func1/deviceid
>> $ echo 32 > functions/pci_epf_test/func1/msi_interrupts
>> $ ln -s functions/pci_epf_test/func1/ controllers/fe000000.pcie_ep/
>> $ echo 1 > controllers/fe000000.pcie_ep/start
>>
>> Host side results:
>> lspci output:
>> 01:00.0 Unassigned class [ff00]: Renesas Technology Corp. Device 002d
>>         Flags: bus master, fast devsel, latency 0, IRQ 103
>>         Memory at fe200200 (64-bit, non-prefetchable) [size=128]
>>         Memory at fe200000 (64-bit, non-prefetchable) [size=256]
>>         Memory at fe200100 (64-bit, non-prefetchable) [size=256]
>>         Capabilities: [40] Power Management version 3
>>         Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
>>         Capabilities: [70] Express Endpoint, MSI 00
>>         Capabilities: [100] Virtual Channel
>>         Kernel driver in use: pci-endpoint-test
>>
>> pcitest results:
>>
>> BAR tests
>>
>> BAR0:           OKAY
>> BAR1:           NOT OKAY
>> BAR2:           OKAY
>> BAR3:           NOT OKAY
>> BAR4:           OKAY
>> BAR5:           NOT OKAY
>>
>> Interrupt tests
>>
>> SET IRQ TYPE TO LEGACY:         OKAY
>> LEGACY IRQ:     OKAY
>> Read Tests
>>
>> SET IRQ TYPE TO LEGACY:         OKAY
>> READ (      1 bytes):           OKAY
>> READ (   1024 bytes):           OKAY
>> READ (   1025 bytes):           OKAY
>> READ (1024000 bytes):           OKAY
>> READ (1024001 bytes):           OKAY
>>
>> Write Tests
>>
>> WRITE (      1 bytes):          OKAY
>> WRITE (   1024 bytes):          OKAY
>> WRITE (   1025 bytes):          OKAY
>> WRITE (1024000 bytes):          OKAY
>> WRITE (1024001 bytes):          OKAY
>>
>> Copy Tests
>>
>> COPY (      1 bytes):           OKAY
>> COPY (   1024 bytes):           OKAY
>> COPY (   1025 bytes):           OKAY
>> COPY (1024000 bytes):           OKAY
>> COPY (1024001 bytes):           OKAY
>>
>> BAR tests for 1/3/5 fail because its configured to use 64bit bars
>>
>> Lad, Prabhakar (5):
>>   pci: pcie-rcar: preparation for adding endpoint support
>>   pci: endpoint: add support to handle multiple base for mapping
>>     outbound memory
>>   PCI: rcar: Add R-Car PCIe endpoint device tree bindings
>>   pci: rcar: add support for rcar pcie controller in endpoint mode
>>   misc: pci_endpoint_test: add device-id for RZ/G2 pcie controller
>>
>>  .../devicetree/bindings/pci/rcar-pci-ep.txt   |   43 +
>>  arch/arm64/configs/defconfig                  |    2 +-
>>  arch/arm64/configs/renesas_defconfig          |    2 +-
>>  drivers/misc/pci_endpoint_test.c              |    3 +
>>  drivers/pci/controller/Kconfig                |   11 +-
>>  drivers/pci/controller/Makefile               |    3 +-
>>  .../pci/controller/dwc/pcie-designware-ep.c   |   30 +-
>>  drivers/pci/controller/pcie-cadence-ep.c      |   11 +-
>>  drivers/pci/controller/pcie-rcar-ep.c         |  483 +++++++
>>  drivers/pci/controller/pcie-rcar-host.c       | 1058 ++++++++++++++
>>  drivers/pci/controller/pcie-rcar.c            | 1231 +----------------
>>  drivers/pci/controller/pcie-rcar.h            |  129 ++
>>  drivers/pci/controller/pcie-rockchip-ep.c     |   13 +-
>>  drivers/pci/endpoint/functions/pci-epf-test.c |   29 +-
>>  drivers/pci/endpoint/pci-epc-core.c           |    7 +-
>>  drivers/pci/endpoint/pci-epc-mem.c            |  189 ++-
>>  include/linux/pci-epc.h                       |   43 +-
>>  17 files changed, 2016 insertions(+), 1271 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
>>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
>>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
>>  create mode 100644 drivers/pci/controller/pcie-rcar.h
>>
>> --
>> 2.20.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
