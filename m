Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FC21C1DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 07:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zWjCDg3Bn3G9YS4m7onqZcIzZAxAYpldkfOWmpWKxEY=; b=R7gp3mOgtIduA1NGgz1PdonAf
	tsJAFSHqaBaf+7cGTRZnpUBH6lDJ9e0m0jRsDG7XF/t3AQwLWBAtvP/6MpOfIyT9Fg5SwoB9E6n5y
	B+kaGX3wZ84XJK4/cWSD/pEHhx9qJ/2t4yapq2FBfPdsRj6GzxvaiMjsm+i4ArTY8AL/P/mVbgFam
	XMN83V4ZoOUeCF3jZpnMnmmDdf6G94ykXrXHDYGJPllzrYk4IIzPNr2pQ0zJZernDOTZ5oxuvbdvW
	Icff0tHtx5QMs1fvGMl63pI4xQw5t3T+dUka6j05tfB+JDmufgj8oRRvSNeZcEHB7kkAiqyvaITYI
	f0T9AUcVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQ0a-0007Rb-LD; Tue, 14 May 2019 05:29:48 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQ0T-0007R5-2h
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 05:29:42 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cda521b0000>; Mon, 13 May 2019 22:28:59 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 13 May 2019 22:29:39 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 13 May 2019 22:29:39 -0700
Received: from [10.24.47.172] (10.124.1.5) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 14 May
 2019 05:29:34 +0000
Subject: Re: [PATCH V5 07/16] dt-bindings: PCI: designware: Add binding for
 CDM register check
To: Rob Herring <robh@kernel.org>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-8-vidyas@nvidia.com> <20190426143247.GA25107@bogus>
 <031df2ca-27de-2388-5f23-078320203f5d@nvidia.com>
 <CAL_JsqKvES6OuPRgu8A009j6L4rkc11rB9TyxPe1iUJhvk1O8w@mail.gmail.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <f340cb14-a6df-340b-ce37-227685f78b80@nvidia.com>
Date: Tue, 14 May 2019 10:59:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKvES6OuPRgu8A009j6L4rkc11rB9TyxPe1iUJhvk1O8w@mail.gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557811740; bh=cqJjsaktR+J8Rzac06BPbRbkXCQMRbYeXEjs18+haNc=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=DqVGD9SpIGwB+ICy+zXbqihOzxwZF83U/SQ2oW9SUGBCiTUWbFM2evWjeZaNNRcXp
 OUdYxDyeRXV/BmgAiiVD8BOefyvDaY7i6G3qmcv8B1QWNg9oUGJEloYXLeAlR6GTP+
 5ft4GbFstcouTV1VmsB5acuJkkQpCXPpm4vYhS6kxxYf7AeOYnfOn77cwsU7UEU5BC
 qecBcnP7PkPZzkcP0DGTgZ5euLnpKNLHgMv25PXeahLET5puUlat8Tgp13WbKdDq3L
 cc4MwKxr2dL0MMXQGuzeZT8NQi4r0U/0uogEF/Q9Fd3KDRQCoVbAwAvbR2vJzBSjH8
 j4wCRmXxcqTew==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_222941_140491_5C7C825C 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Manikanta Maddireddy <mmaddireddy@nvidia.com>, linux-pci@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kthota@nvidia.com, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Jon Hunter <jonathanh@nvidia.com>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/2019 8:45 PM, Rob Herring wrote:
> On Tue, May 7, 2019 at 3:25 AM Vidya Sagar <vidyas@nvidia.com> wrote:
>>
>> On 4/26/2019 8:02 PM, Rob Herring wrote:
>>> On Wed, Apr 24, 2019 at 10:49:55AM +0530, Vidya Sagar wrote:
>>>> Add support to enable CDM (Configuration Dependent Module) registers check
>>>> for any data corruption. CDM registers include standard PCIe configuration
>>>> space registers, Port Logic registers and iATU and DMA registers.
>>>> Refer Section S.4 of Synopsys DesignWare Cores PCI Express Controller Databook
>>>> Version 4.90a
>>>>
>>>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>>>> ---
>>>> Changes since [v4]:
>>>> * None
>>>>
>>>> Changes since [v3]:
>>>> * None
>>>>
>>>> Changes since [v2]:
>>>> * Changed flag name from 'cdm-check' to 'enable-cdm-check'
>>>> * Added info about Port Logic and DMA registers being part of CDM
>>>>
>>>> Changes since [v1]:
>>>> * This is a new patch in v2 series
>>>>
>>>>    Documentation/devicetree/bindings/pci/designware-pcie.txt | 5 +++++
>>>>    1 file changed, 5 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/pci/designware-pcie.txt b/Documentation/devicetree/bindings/pci/designware-pcie.txt
>>>> index 5561a1c060d0..85b872c42a9f 100644
>>>> --- a/Documentation/devicetree/bindings/pci/designware-pcie.txt
>>>> +++ b/Documentation/devicetree/bindings/pci/designware-pcie.txt
>>>> @@ -34,6 +34,11 @@ Optional properties:
>>>>    - clock-names: Must include the following entries:
>>>>       - "pcie"
>>>>       - "pcie_bus"
>>>> +- enable-cdm-check: This is a boolean property and if present enables
>>>
>>> This needs a vendor prefix.
>> Why only for this? Since this whole file is for Synopsys DesignWare core based PCIe IP,
>> I thought there is specific prefix required. Am I wrong? Also, CDM checking is a feature
>> of IP and DWC based implementations can choose either to enable this feature at hardware level
>> or not. And whoever enabled it at hardware level (like Tegra194) can set this flag to
>> enable corresponding software support.
> 
> TBC, I meant a Synopsys vendor prefix, not NVIDIA.
> 
> Any property that's not from a common binding should have a vendor
> prefix. That hasn't always happened, so we do have lots of examples
> without.
Ok. got it. I'm going to take care of this in V7 series.

> 
> Rob
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
