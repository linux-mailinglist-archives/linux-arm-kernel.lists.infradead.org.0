Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD5464B4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 19:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/WhDCj5FyfqMSUag8IA5jJFw19AVylJ7CRBj7XV/3ZQ=; b=ZLjVm6aG/2gCjrcSRBqu861Rq
	M4vD9sY9iiqzzEv2+S3JUjjp6wm/4n/K5dqvE25faKYXHak4omkA/TKrSUO8nf7UziWPzzrocyOIn
	8l5ADuOsr50Znexcv8X3syFPXVoPKW51jKbdmMkKNjXV3wX9mEP9Xgnyk9PiL/luqwwa/lVzjgOtF
	hvpx4DXG2lQZ+kumaetC3vY7Nhu2JomrKUoj6Kcv2x2itlUl6Cnrl/Qnij/wGbAObydDu6xfmbNnj
	jZ5ii8mKv1JxRG7VgeS6EFjqX11RY1zbMC/+sp1Z+bYZWcI762n8eyQqqHFpTRNt9tuDl1sb4gqHY
	brKy+R8Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlGB5-0000gn-LN; Wed, 10 Jul 2019 17:14:47 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlGAq-0000fs-Nl
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 17:14:34 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d261cf30000>; Wed, 10 Jul 2019 10:14:27 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 10 Jul 2019 10:14:28 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 10 Jul 2019 10:14:28 -0700
Received: from [10.25.74.6] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Jul
 2019 17:14:23 +0000
Subject: Re: [PATCH V13 08/12] dt-bindings: Add PCIe supports-clkreq property
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
 <20190710062212.1745-9-vidyas@nvidia.com>
 <20190710152856.GB8781@e121166-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <95103fa2-9181-247e-3fd5-1b0bd95e8bb9@nvidia.com>
Date: Wed, 10 Jul 2019 22:44:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710152856.GB8781@e121166-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562778867; bh=CCe2cpbcTfj8PcVYEgcYHWQ29tSTq4v82/vz3Ha3bvM=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=IDIaT7hwrXY0e2aFy5qoHGyfhPqHrmC06v3yAqQpH3QWKIbHjK1TiJmxlfbYnvK+S
 11zGdae9e8G8gihUUhW8kewo+e9ilAfgeFBoZ6Fw8gPOKv6e/txU0NMcDqiEtaRKEK
 nfjc3NjcplCTdBkmDWuQKtPF8gvWVcHdOLmd8B+xEWGloRMLXsSJ9LNmF/xNat9Ffw
 ToQVm9aCL62P0BKMp1MbCu4L/p/+IkCC1wR+OOHO27FYKLmI7dEYTALN03dkFL6fyq
 NOwTeOBDzk3shnZQTTwy/+4zQYXF54Qk5sh0dbt5bJhpdi3fB0jhyWPLT40R75GATG
 tJwWeTIf914CQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_101432_789781_E2F2F5E9 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, linux-pci@vger.kernel.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, kthota@nvidia.com,
 kishon@ti.com, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/10/2019 8:58 PM, Lorenzo Pieralisi wrote:
> On Wed, Jul 10, 2019 at 11:52:08AM +0530, Vidya Sagar wrote:
>> Some host controllers need to know the existence of clkreq signal routing to
>> downstream devices to be able to advertise low power features like ASPM L1
>> substates. Without clkreq signal routing being present, enabling ASPM L1 sub
>> states might lead to downstream devices falling off the bus. Hence a new device
> 
> You mean "being disconnected from the bus" right ? I will update it.
Yes. I meant the same.

> 
> Lorenzo
> 
>> tree property 'supports-clkreq' is added to make such host controllers
>> aware of clkreq signal routing to downstream devices.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Reviewed-by: Thierry Reding <treding@nvidia.com>
>> ---
>> V13:
>> * None
>>
>> V12:
>> * Rebased on top of linux-next top of the tree
>>
>> V11:
>> * None
>>
>> V10:
>> * None
>>
>> V9:
>> * None
>>
>> V8:
>> * None
>>
>> V7:
>> * None
>>
>> V6:
>> * s/Documentation\/devicetree/dt-bindings/ in the subject
>>
>> V5:
>> * None
>>
>> V4:
>> * Rebased on top of linux-next top of the tree
>>
>> V3:
>> * None
>>
>> V2:
>> * This is a new patch in v2 series
>>
>>   Documentation/devicetree/bindings/pci/pci.txt | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/pci.txt b/Documentation/devicetree/bindings/pci/pci.txt
>> index 2a5d91024059..29bcbd88f457 100644
>> --- a/Documentation/devicetree/bindings/pci/pci.txt
>> +++ b/Documentation/devicetree/bindings/pci/pci.txt
>> @@ -27,6 +27,11 @@ driver implementation may support the following properties:
>>   - reset-gpios:
>>      If present this property specifies PERST# GPIO. Host drivers can parse the
>>      GPIO and apply fundamental reset to endpoints.
>> +- supports-clkreq:
>> +   If present this property specifies that CLKREQ signal routing exists from
>> +   root port to downstream device and host bridge drivers can do programming
>> +   which depends on CLKREQ signal existence. For example, programming root port
>> +   not to advertise ASPM L1 Sub-States support if there is no CLKREQ signal.
>>   
>>   PCI-PCI Bridge properties
>>   -------------------------
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
