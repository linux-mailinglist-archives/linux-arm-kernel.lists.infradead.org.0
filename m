Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77EC144D07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 09:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qETbyUzgvQWEpkH4/qM+PFnf/ithWI2onC2dyVvYXZ4=; b=OCGU653yHNQ6Dx
	N8YXRbTfATNPdGYYLP55E99IySKBPb/lpQAbg7h7vOjodVvmUpwCxTBnbwfqCa2gA/rHwhbIgSvEh
	11k5pjHkbyf8BT8OEVBatrN4Qu4lUQ1P3nr7CsfpYkk+dGfYu9InMpER2S3QLhWI7QlhOs7LwvkB+
	cer8rROyfhw692xdeIn8Hb3aKfYHrU4lxP0Jn+U2dUYGqK4+lDun9WiVlk5lbPo8sE2RBqks57FdE
	2acXjSLqZG0LmTTxcT2WXRZ7u9PCgEpkVnLpw9Gp54OsOMV8X+vScOByHs2c8CKrORhhcWKurb6Qi
	1RuDzeXXcuXbSx8ZcLhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuB8g-0002Ec-DB; Wed, 22 Jan 2020 08:13:26 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuB8W-0002E0-RF; Wed, 22 Jan 2020 08:13:18 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00M8Cxqb099296;
 Wed, 22 Jan 2020 02:12:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579680779;
 bh=DhZNPVYtbrpKrZkAkg13qDd9TroZfhPQ/2aqImA4XLQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=YyTGJm0CliogdcFd9gnifEAk8QmkOT+QCVGoH27ocDzrZPB7avzwnza5mzPX+UheB
 WfIed/40LSUiLyMMRn74ExRwIwhhSSv1UJr7souRbL0Yr2UkTH1rE9itP9it9eg9Og
 aM+RXxLq2QWw9UixnNzaKOvthN/78MMYypz3cRkI=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00M8CwGh095984
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 02:12:58 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 02:12:58 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 02:12:58 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00M8Co0Y069651;
 Wed, 22 Jan 2020 02:12:51 -0600
Subject: Re: [v3 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Mark Rutland
 <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci
 <linux-pci@vger.kernel.org>
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CA+V-a8s1Jx8uZiSr0uiryS492EbFRoFg9QTwkosZsuyfRYp-3g@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <9c65eb7a-539b-1fa3-f988-40c32aa8dfe3@ti.com>
Date: Wed, 22 Jan 2020 13:45:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CA+V-a8s1Jx8uZiSr0uiryS492EbFRoFg9QTwkosZsuyfRYp-3g@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_001316_964165_A0F402A3 
X-CRM114-Status: GOOD (  26.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On 21/01/20 11:27 PM, Lad, Prabhakar wrote:
> Hi Rob/Kishon,
> 
> On Wed, Jan 8, 2020 at 4:22 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
>>
>> This patch adds the bindings for the R-Car PCIe endpoint driver.
>>
>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>> ---
>>  .../devicetree/bindings/pci/rcar-pci-ep.yaml  | 76 +++++++++++++++++++
>>  1 file changed, 76 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>> new file mode 100644
>> index 000000000000..99c2a1174463
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>> @@ -0,0 +1,76 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pci/rcar-pcie-ep.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Renesas R-Car PCIe Endpoint
>> +
>> +maintainers:
>> +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - const: renesas,r8a774c0-pcie-ep
>> +      - const: renesas,rcar-gen3-pcie-ep
>> +
>> +  reg:
>> +    maxItems: 5
>> +
>> +  reg-names:
>> +    items:
>> +      - const: apb-base
>> +      - const: memory0
>> +      - const: memory1
>> +      - const: memory2
>> +      - const: memory3

As I had mentioned in the other patch, I'd prefer if we can create
standard binding for representing the memory regions. IMHO we should
create subnode for memory regions Each sub-node itself may or may not
have more than one memory region.

In your platform, since there can be only one allocation in a memory
region, there should be 4 sub-nodes for each of the memory region and
each node should have page_size (or some equivalent property) property
to indicate page_size (= region_size).

For a platform that doesn't have the restriction, there can be a single
sub-node containing all the memory region.

Let's wait for Rob's comment though.

Thanks
Kishon
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    items:
>> +      - const: pcie
>> +
>> +  max-functions:
>> +    minimum: 1
>> +    maximum: 6
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - reg-names
>> +  - resets
>> +  - power-domains
>> +  - clocks
>> +  - clock-names
>> +  - max-functions
>> +
> apart from dt_binding_check error are we OK with dt bindings ?
> 
> Cheers,
> --Prabhakar
> 
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/r8a774c0-cpg-mssr.h>
>> +    #include <dt-bindings/power/r8a774c0-sysc.h>
>> +
>> +     pcie0_ep: pcie-ep@fe000000 {
>> +            compatible = "renesas,r8a774c0-pcie-ep",
>> +                         "renesas,rcar-gen3-pcie-ep";
>> +            reg = <0 0xfe000000 0 0x80000>,
>> +                  <0x0 0xfe100000 0 0x100000>,
>> +                  <0x0 0xfe200000 0 0x200000>,
>> +                  <0x0 0x30000000 0 0x8000000>,
>> +                  <0x0 0x38000000 0 0x8000000>;
>> +            reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
>> +            resets = <&cpg 319>;
>> +            power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
>> +            clocks = <&cpg CPG_MOD 319>;
>> +            clock-names = "pcie";
>> +            max-functions = /bits/ 8 <1>;
>> +    };
>> --
>> 2.20.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
