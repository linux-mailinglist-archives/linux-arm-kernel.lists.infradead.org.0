Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A39313D8F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4PaqRN8mYAFo5LIrfg4NkJ8ea5A2YsAXLnI4Ie5svM=; b=auL8zUJILkVC3o
	M04tojFzdB5A/xYhxyXLkntjO9lK2huoqhPq2xagklw7i/uqcW8KuJHOjZNowr5veDd3wmiST0Jt/
	sHyeeEqx5XqBAwTRmUvLU//fHHbS075HlovXN+0zI3/bkvm7rCVSIdK/dYzRj1At/ZBMRQi7TF8JB
	1NxxD/+kvZP8WWHZYJRlxwdrgLDlucuEW8HqSt2ub7kIKD43swFQDs06DZwo4+Xo7m84xBBcTK2ES
	q5Y9Joc1aefX8TBwM/YXkR0j8KRuJw0/0jNzXp2Gmsx6RFmBRLn3wDCUCUHYGGxp349uRo/b76gFE
	fqKZVL3x4JHXNwx6ZIVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3JN-00045G-Ke; Thu, 16 Jan 2020 11:27:41 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3JB-000442-Bp; Thu, 16 Jan 2020 11:27:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00GBRGdj061689;
 Thu, 16 Jan 2020 05:27:16 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579174036;
 bh=myfrgAkACHwJfmdNtMcuEJNJskU9ZB6VVutnIR84JH4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nEFmlIIkHRmg720elyKMOm+dhwS+GmQz54J/Pk0oyMkOmh+nf69RXMnk221Fm2/e7
 NSzzCU2NpIciRM4d5s7zg63jd0GcYITe/s87EiYMWMO+9mg4DS68MEI0wBotVnoNJ0
 KvXPQQC6+eWZhLjEpa5vffjlE8C0JzoLPGRujhCI=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00GBRGVV021247
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 16 Jan 2020 05:27:16 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 16
 Jan 2020 05:27:16 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 16 Jan 2020 05:27:15 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00GBR8Tb095885;
 Thu, 16 Jan 2020 05:27:11 -0600
Subject: Re: [PATCH 2/7] dt-bindings: PCI: cadence: Add binding to specify max
 virtual functions
To: Rob Herring <robh@kernel.org>
References: <20191231113534.30405-1-kishon@ti.com>
 <20191231113534.30405-3-kishon@ti.com> <20200115014026.GA10726@bogus>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <f0690395-4ce7-df93-e837-670829aafb03@ti.com>
Date: Thu, 16 Jan 2020 16:59:20 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200115014026.GA10726@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_032729_485427_945292E9 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jonathan Corbet <corbet@lwn.net>, Jingoo Han <jingoohan1@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 15/01/20 7:10 AM, Rob Herring wrote:
> On Tue, Dec 31, 2019 at 05:05:29PM +0530, Kishon Vijay Abraham I wrote:
>> Add binding to specify maximum number of virtual functions that can be
>> associated with each physical function.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  .../devicetree/bindings/pci/cdns,cdns-pcie-ep.txt         | 2 ++
>>  .../devicetree/bindings/pci/ti,j721e-pci-ep.yaml          | 8 ++++++++
>>  2 files changed, 10 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
>> index 4a0475e2ba7e..432578202733 100644
>> --- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
>> +++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
>> @@ -9,6 +9,8 @@ Required properties:
>>  
>>  Optional properties:
>>  - max-functions: Maximum number of functions that can be configured (default 1).
>> +- max-virtual-functions: Maximum number of virtual functions that can be
>> +    associated with each physical function.
>>  - phys: From PHY bindings: List of Generic PHY phandles. One per lane if more
>>    than one in the list.  If only one PHY listed it must manage all lanes. 
>>  - phy-names:  List of names to identify the PHY.
>> diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
>> index 4621c62016c7..1d4964ba494f 100644
>> --- a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
>> +++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
>> @@ -61,6 +61,12 @@ properties:
>>      minimum: 1
>>      maximum: 6
>>  
>> +  max-virtual-functions:
>> +    minItems: 1
>> +    maxItems: 6
> 
> Is there a PCIe spec limit to number of virtual functions per phy 
> function? Or 2^32 virtual functions is okay.

The PCIe spec provides a 16 bit field to specify number of virtual
functions in the SR-IOV extended capability.


> 
>> +    description: As defined in
>> +                 Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
> 
> I suspect this this be a common property.

Right now we don't have common EP property binding across all
controllers. Maybe should create one?

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
