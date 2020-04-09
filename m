Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483BB1A3562
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:08:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g0RFC0gH6dwm6rm8qOJpjJV/BfQ+GhYCUO+FuC4a+1k=; b=avr4Rkm9DKNx4flOXqEESd6CG
	W4kED3mEQ3YsYMM6GZ2PfxxMvVIhTcwS3rfvNv4AfkgLq7BTFBt/uq7sniVian+ahQVEp+WuQz54T
	elJTv72eAKkJi4MrzliktiYBSHHKssoEgpgo9VfoQzkxk26wfpJ3CeaagXjldQRp9g5IETRcgaK8F
	ST3hw/dxp9O6y9B/D0gMg1kefjqXtSx/uIfFWm006OUrC6SER8mXSrmHTIVYRsvigxMZ9ZzjFCixY
	FW7oEH9yKuhre2AuRZ0in3iO3gp8Vn8Q2pX5gD2b7pbxlzbaXRZfjBZbKQGe4y7VrsXxaEQXZsVhB
	9XFZv+9Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXqh-000700-Kb; Thu, 09 Apr 2020 14:08:07 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXqa-0006zH-Sl
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:08:02 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 039E7h6o029946;
 Thu, 9 Apr 2020 09:07:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586441263;
 bh=3gqI19XisR3qGspsaOL9E0JWEAZr7zQg0fFq2CZV2Hw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ZUcjlDHmHGAQ3KizNSZbsviTkSZsndRLH+jqcIGMJXtwnMLTDVRn4WYCQUu9sSV5F
 f2SHCNtP1PQCbHHf3drpLKr/EMOEPDf6Uf85/jfE6iMdI5W7TXJQA7Lns0Sx33szc4
 9MdeVOaYmM2ytt+ox7WeZrg/P/senUa/89m/rU3g=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 039E7hiX028657
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 9 Apr 2020 09:07:43 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Apr
 2020 09:07:43 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Apr 2020 09:07:43 -0500
Received: from [10.250.133.160] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 039E7dJM126106;
 Thu, 9 Apr 2020 09:07:40 -0500
Subject: Re: [PATCH v6 0/4] thermal: k3: Add support for bandgap sensors
To: Daniel Lezcano <daniel.lezcano@linaro.org>, <rui.zhang@intel.com>,
 <robh+dt@kernel.org>, <t-kristo@ti.com>
References: <20200407055116.16082-1-j-keerthy@ti.com>
 <3c69e3c6-5549-e891-fde6-95a2ecc49f77@linaro.org>
From: "J, KEERTHY" <j-keerthy@ti.com>
Message-ID: <0817f9ee-c72f-3e9f-00cf-e8ddaf608020@ti.com>
Date: Thu, 9 Apr 2020 19:37:38 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <3c69e3c6-5549-e891-fde6-95a2ecc49f77@linaro.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_070801_003270_3E9B2C44 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/9/2020 7:19 PM, Daniel Lezcano wrote:
> 
> Hi Keerthy,
> 
> On 07/04/2020 07:51, Keerthy wrote:
>> Add VTM thermal support. In the Voltage Thermal
>> Management Module(VTM), K3 AM654 supplies a voltage
>> reference and a temperature sensor feature that are gathered in the band
>> gap voltage and temperature sensor (VBGAPTS) module. The band
>> gap provides current and voltage reference for its internal
>> circuits and other analog IP blocks. The analog-to-digital
>> converter (ADC) produces an output value that is proportional
>> to the silicon temperature.
>>
>> Add support for bandgap sensors. Currently reading temperatures
>> is supported.
> 
> How do you want to proceed? Shall I take patches 1 & 2 ?

+Tero

Hi Tero,

Can you pull 3 & 4? Or Daniel can take all 4?

- Keerthy

> 
> 
>> Changes in v6:
>>
>>    * Removed bunch of unused #defines and couple of redundant variables.
>>    * Reordered patches a bit.
>>    * Minor reordering in dt binding patch.
>>
>> Changes in v5:
>>
>>    * Removed thermal work function which was unused.
>>    * Removed unused preve_tenmp and a couple more struct variables.
>>    * Removed couple of redundant header function include.
>>
>> Changes in v4:
>>
>>    * Fixed comments from Daniel to remove trend function.
>>    * Mostly cleaned up all the unused variables.
>>    * Driver from bool to tristate.
>>
>> Changes in v3:
>>
>>    * Fixed errors seen with:
>>      dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>
>> Changes in v2:
>>
>>    * Fixed yaml errors
>>    * renamed am654-industrial-thermal.dtsi to k3-am654-industrial-thermal.dtsi
>>      to follow the convention for k3 family.
>>
>> Keerthy (4):
>>    dt-bindings: thermal: k3: Add VTM bindings documentation
>>    thermal: k3: Add support for bandgap sensors
>>    arm64: dts: ti: am65-wakeup: Add VTM node
>>    arm64: dts: ti: am654: Add thermal zones
>>
>>   .../bindings/thermal/ti,am654-thermal.yaml    |  56 ++++
>>   arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    |  11 +
>>   .../dts/ti/k3-am654-industrial-thermal.dtsi   |  45 +++
>>   drivers/thermal/Kconfig                       |  10 +
>>   drivers/thermal/Makefile                      |   1 +
>>   drivers/thermal/k3_bandgap.c                  | 264 ++++++++++++++++++
>>   6 files changed, 387 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>   create mode 100644 arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
>>   create mode 100644 drivers/thermal/k3_bandgap.c
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
