Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152A410AA60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 06:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmVOnuo9r/8yILdrDHgR3f4gehpLaftiQZUHiCUNI7c=; b=EBBADIXM7y+bzU
	/6Ns5kRuopXDsUi/JfE2FkWsBkCsVI0FmmTvVYMF//NYITZuzjeVYSioyrwz0cE8mZlT/FykZbkw8
	mlZdqBnSymLCnidH8ckdERbIlDofiiq6dr2GL/1T5KwbSvHhJERebS2kajJ/TutcS3OoS3kAn137e
	iIgsHCk39IdpAwUVl3ilhn+36jmbG5CLVF7ghe2KaXSnfdzhAti1OtEwpLxia2WMWksXl0shtnKF6
	IXlHAOKWvI7l9BNknpggw/Ot8Z6/zwT74nnXMNah2QCG/Rlq2erWiUNEw55jKN8KL3szSAbPzJ3Bk
	J90qJ4Uoj9f23O1yiaPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZq8l-0008F3-9u; Wed, 27 Nov 2019 05:45:27 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZq8c-0008Eb-0O
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 05:45:19 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAR5iw31020018;
 Tue, 26 Nov 2019 23:44:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574833498;
 bh=ghIhQuJ9aHS97LO4zAtdQCLPCJDJTY7NbKzwS6TyyAw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=qndVf33YNLkQZU0nWotc7RdalzlFQ+JstoxF8ycG9eZBnDYfY/9carjo8SclfjI4X
 j7o7vWluLgW7LnpKzrtc4uwH7N7pAKZHZl8RyJCZFurCkosFACCMWgNW7VwRkjky9H
 7zU+CnLxcJxErGfyfY9QjF2lQdJhb6HJnbDh4Nis=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAR5iwf4108619
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 26 Nov 2019 23:44:58 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 26
 Nov 2019 23:44:58 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 26 Nov 2019 23:44:58 -0600
Received: from [10.24.69.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAR5iocX018864;
 Tue, 26 Nov 2019 23:44:51 -0600
Subject: Re: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
To: Rob Herring <robh@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdVZwgVnq2kwjNJQHfvUH0sk6M7Hz-AJR82jMOsCNfW9wQ@mail.gmail.com>
 <CA+V-a8swtOUaxKnCdiTV5wvvxLEJ6XdODL=7bvQmFKY0zQTj2w@mail.gmail.com>
 <CAMuHMdXkbWkQgswMNL7Dw7_jucH+MsuAW+-CjoGVYsm=tjShRw@mail.gmail.com>
 <20191113040802.GA8269@bogus>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <3b218f7f-78a8-c158-80ac-67a3b9f5970c@ti.com>
Date: Wed, 27 Nov 2019 11:14:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113040802.GA8269@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_214518_138672_B6E1A198 
X-CRM114-Status: GOOD (  25.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 13/11/19 9:38 AM, Rob Herring wrote:
> On Thu, Nov 07, 2019 at 09:08:35PM +0100, Geert Uytterhoeven wrote:
>> Hi Prabhakar,
>>
>> On Thu, Nov 7, 2019 at 10:26 AM Lad, Prabhakar
>> <prabhakar.csengg@gmail.com> wrote:
>>> On Thu, Nov 7, 2019 at 8:44 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>>>> On Wed, Nov 6, 2019 at 8:36 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
>>>>> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>>>>>
>>>>> This patch adds the bindings for the R-Car PCIe endpoint driver.
>>>>>
>>>>> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>>>>
>>>> Thanks for your patch!
>>>>
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
>>>>> @@ -0,0 +1,43 @@
>>>>> +* Renesas R-Car PCIe Endpoint Controller DT description
>>>>> +
>>>>> +Required properties:
>>>>> +           "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
>>>>> +           "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
>>>>> +                                    RZ/G2 compatible device.
>>>>
>>>> Unless I'm missing something, this is for the exact same hardware block as
>>>> Documentation/devicetree/bindings/pci/rcar-pci.txt?
>>>> So shouldn't you amend those bindings, instead of adding new compatible
>>>> values?
>>>> Please remember that DT describes hardware, not software policy.
>>>> So IMHO choosing between host and endpoint is purely a configuration
>>>> issue, and could be indicated by the presence or lack of some DT properties.
>>>> E.g. host mode requires both "bus-range" and "device_type" properties,
>>>> so their absence could indicate endpoint mode.
>>>>
>>> yes its the same hardware block as described in the rcar-pci.txt, I
>>> did think about amending it
>>> but  it might turn out to be bit messy,
>>>
>>> required properties host ======required properties Endpoint
>>> ====================||==================
>>> 1: reg                                || reg
>>> 2:bus-range                      || reg names
>>> 3: device_type                  || resets
>>> 4: ranges                          || clocks
>>> 5: dma-ranges                  || clock-names
>>> 6: interrupts                      ||
>>> 7: interrupt-cells               ||
>>> 8: interrupt-map-mask     ||
>>> 9: clocks                          ||
>>> 10: clock-names             ||
>>
>> We have a similar situation with SPI, where a controller can operate in
>> master or slave mode, based on the absence or presence of the
>> "spi-slave" DT property.
>>
>>> and if I go ahead with the same compatible string that would mean to
>>> add support for endpoint
>>> mode in the host driver itself. I did follow the examples of
>>
>> You can still have two separate drivers, binding against the same
>> compatible value.  Just let the .probe() function return -ENODEV if it
>> discovers (by looking at DT properties) if the node is configured for
>> the other mode.
>> Which brings us to my next questions: is there any code that could be
>> shared between the drivers for the two modes?
>>
>>> rockchip/cadence/designware where
>>> its the same hardware block but has two different binding files one
>>> for host mode and other for
>>> endpoint mode.
>>
>> Having two separate DT binding documents sounds fine to me, if unifying
>> them makes things too complex.
>> However, I think they should use the same compatible value, because the
>> hardware block is the same, but just used in a different mode.
>>
>> Rob/Mark: Any input from the DT maintainers?
> 
> Separate files makes sense because different modes will want to 
> include different common schemas. We've generally been doing different 
> compatibles too which makes validating the node has the right set of 
> properties easier.
>  
>>>>> +- reg: Five register ranges as listed in the reg-names property
>>>>> +- reg-names: Must include the following names
>>>>> +       - "apb-base"
>>>>> +       - "memory0"
>>>>> +       - "memory1"
>>>>> +       - "memory2"
>>>>> +       - "memory3"
>>>>
>>>> What is the purpose of the last 4 regions?
>>>> Can they be chosen by the driver, at runtime?
>>>>
>>> no the driver cannot choose them at runtime, as these are the only
>>> PCIE memory(0/1/2/3) ranges
>>> in the AXI address space where host memory can be mapped.
>>
>> Are they fixed by the PCIe hardware, i.e. could they be looked up by the
>> driver based on the compatible value?
> 
> That would be strange for a memory range.
> 
> Sounds like like 'ranges' though I'm not sure if 'ranges' for an EP 
> makes sense or what that should look like.

These are similar to "memory node" with multiple address, size pairs. I'm
thinking if these should be added as a subnode within PCIe EP controller device
tree node?

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
