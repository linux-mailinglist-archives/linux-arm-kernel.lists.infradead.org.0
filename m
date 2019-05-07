Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD44D16197
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t13KDA7ItG8jjI+C32XDh7aCtRytFcVIwnKN+BlPQNg=; b=OJ8JST1dfc1gzF4HeXW4wqLbV
	elQgPhqI8cIgJeyZm5EEui53fuX9hNynZlDa1OOvWDNqjStJifgj3V0XbGxiURn6rdxDsBvuj9QV9
	+a2bmeK0BpEaYsxqOFqvclxcG5pExO2AtJGx9UVFyO/Gg68109WcNs5DQi2QSNzn0roNPgZt+ea0K
	lgVdZeQvpH5YLSrOTouER1Muy01iNK8rHsGSxmfQ0/C8e1MgtD/cOT3+4fGZrPaBtul7jHJJCzFom
	/MiZGrROkqf8aSWLs9jKMeAfefXXFwFQ929CPxWCF49u/g1mFbP1qRUvfP1Yx+UA0x+865Ig+Yb2+
	qjXqvvG8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwrV-0008Ps-7E; Tue, 07 May 2019 09:58:13 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwrN-0008PE-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:58:06 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd1568a0000>; Tue, 07 May 2019 02:57:30 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 07 May 2019 02:58:04 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 07 May 2019 02:58:04 -0700
Received: from [10.25.73.250] (172.20.13.39) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 May
 2019 09:57:59 +0000
Subject: Re: [PATCH V5 11/16] dt-bindings: PHY: P2U: Add Tegra 194 P2U block
To: Rob Herring <robh@kernel.org>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-12-vidyas@nvidia.com> <20190426154519.GA19329@bogus>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <c13db22f-0557-8e98-0a1d-00ee4405e6db@nvidia.com>
Date: Tue, 7 May 2019 15:27:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190426154519.GA19329@bogus>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557223050; bh=yMsBiV1fEe9A1TMMLA2KOVpdo0cNL5OaDWCKWRUAWd4=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=E0KqgTbmZdwQUPOTRizQDdy3EywsHpf0ZNQ/rMVFPenqr4vkGKS9bmSfTG6rwBIk8
 Ea2Io3f6vj7Gdq3hXuiUi9RUu2bn5qCONy0tpr6/7sC6qPgGbCYmcTiZhAQKKm8WIs
 DO+utS9tWBXG+o3Vq/ntx5qhTKP9q+nI50yl5PduUNBKLegReyTi8J6oR/1Yem6a06
 swD6Gn+/eAKc6A8vdqurZvej2kDFZsRaonKz25ZUcLgKTjIV27zDa7Lf/CUMz+DDVD
 L4LPmCa17kdDUbPgdDFCOb99OidYusHCPLhppOtk6zIaLR4WVKV0WM2WvIpNz5lS51
 Rsx9dyningPNQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_025805_065330_F43A8556 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/26/2019 9:15 PM, Rob Herring wrote:
> On Wed, Apr 24, 2019 at 10:49:59AM +0530, Vidya Sagar wrote:
>> Add support for Tegra194 P2U (PIPE to UPHY) module block which is a glue
>> module instantiated one for each PCIe lane between Synopsys Designware core
>> based PCIe IP and Universal PHY block.
> 
> Missing Sob.
Done.

> 
>> ---
>> Changes since [v4]:
>> * None
>>
>> Changes since [v3]:
>> * None
>>
>> Changes since [v2]:
>> * Changed node label to reflect new format that includes either 'hsio' or
>>    'nvhs' in its name to reflect which UPHY brick they belong to
>>
>> Changes since [v1]:
>> * This is a new patch in v2 series
>>
>>   .../bindings/phy/phy-tegra194-p2u.txt         | 28 +++++++++++++++++++
>>   1 file changed, 28 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
>>
>> diff --git a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
>> new file mode 100644
>> index 000000000000..8b543cba483b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
>> @@ -0,0 +1,28 @@
>> +NVIDIA Tegra194 P2U binding
>> +
>> +Tegra194 has two PHY bricks namely HSIO (High Speed IO) and NVHS (NVIDIA High
>> +Speed) each interfacing with 12 and 8 P2U instances respectively.
>> +A P2U instance is a glue logic between Synopsys DesignWare Core PCIe IP's PIPE
>> +interface and PHY of HSIO/NVHS bricks. Each P2U instance represents one PCIe
>> +lane.
>> +
>> +Required properties:
>> +- compatible: For Tegra19x, must contain "nvidia,tegra194-p2u".
>> +- reg: Should be the physical address space and length of respective each P2U
>> +       instance.
>> +- reg-names: Must include the entry "ctl".
> 
> -names is pointless when there is only 1.
I did it this way to make it future proof as there could be more regions that might get
added at a later point of time.

> 
>> +
>> +Required properties for PHY port node:
>> +- #phy-cells: Defined by generic PHY bindings.  Must be 0.
>> +
>> +Refer to phy/phy-bindings.txt for the generic PHY binding properties.
>> +
>> +Example:
>> +
>> +p2u_hsio_0: p2u@3e10000 {
> 
> phy@...
Done.

> 
>> +	compatible = "nvidia,tegra194-p2u";
>> +	reg = <0x03e10000 0x10000>;
>> +	reg-names = "ctl";
>> +
>> +	#phy-cells = <0>;
>> +};
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
