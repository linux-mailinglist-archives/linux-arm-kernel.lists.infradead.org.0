Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DEF4A43E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yZNJEyLRyGmcCZtfK7t6usm1dBpgJswEbobIcWHQKss=; b=lYe0cA+eiX8wmEQsfvHzqgwOc
	QizEueKIDKEQ1hBi303g40qMC1/EY5eDqDvSnd7IqU5GoFF4YgJht6VylwLgTK7FjooquTbqZ2YUI
	pmbTK6Mn9k8A9GDNq2KCPBtSsfx2ucwLdPSQB8pAOCa4lbHcycZFtX81z6Ty94Q6uvs7cx6Y9t1r1
	nXDLyx2s+gY1gxEhDcox31TM1PKGBGEVD2wh1YkLwskAr+Hw/T7PGlS/z2qxmLTV/dxzNucphnXaY
	B0G4tc/hk9CsVp6pqqICl1wswGnFLer78PuwB4pJrOFvuIcVmzXB6DPCFYhaWfqU4A9xjBSbSDztb
	sgOVB9kcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFKl-0000Rw-Dt; Tue, 18 Jun 2019 14:43:39 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFKW-0000RE-6g
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:43:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IEhM8g070320;
 Tue, 18 Jun 2019 09:43:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560869002;
 bh=OD/7aM+GBajZ0tYxC1X/lF5btDJMS2SHBfug2bvucPs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=W3NSCoRaf30bMLwbARC0rVC2D2L7/b3GjLM06E1QKGkvf6SNYk2inpQuWx/2WlxQQ
 LDbMCFDgbbMy7mnYJihIBSbnEOQLQO/CtaOsWISNuqis1E4qMOkgdJugLtQYrwq/FT
 DmgqEYxU7nB6XRlhbkGqzQuRvI7anCOSQlSsKLEo=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IEhMtd019174
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 09:43:22 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 09:43:21 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 09:43:21 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IEhJdL016389;
 Tue, 18 Jun 2019 09:43:19 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e-main: Add Main NavSS Interrupt
 controller node
To: Lokesh Vutla <lokeshvutla@ti.com>, Suman Anna <s-anna@ti.com>, Nishanth
 Menon <nm@ti.com>
References: <20190531004848.32061-1-s-anna@ti.com>
 <5e8fa7b4-6c44-85dc-0a33-bcf930b6d795@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <148be27b-b4ca-dacc-0218-fef489931224@ti.com>
Date: Tue, 18 Jun 2019 17:43:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5e8fa7b4-6c44-85dc-0a33-bcf930b6d795@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_074324_323104_538BE037 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/06/2019 17:47, Lokesh Vutla wrote:
> 
> 
> On 31/05/19 6:18 AM, Suman Anna wrote:
>> Add the Interrupt controller node for the Interrupt Router present within
>> the Main NavSS module. This Interrupt Router can route 192 interrupts to
>> the GIC_SPI in 3 sets of 64 interrupts each. Note that the last set is
>> reserved for the host ID A72_3 for hypervisor usecases, so the node is
>> added only with 2 sets for the Linux kernel context (host id A72_2). This
>> is specified through the ti,sci-rm-range-girq property.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
> 
> Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Queuing for 5.3, thanks.

-Tero

> 
> Thanks and regards,
> Lokesh
> 
>> ---
>> Hi Tero,
>>
>> This patch depends on the J721E series [1] from Nishanth. Patch tested
>> using additional patches exercising Mailbox IP.
>>
>> regards
>> Suman
>>
>> [1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189
>>
>>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 18 ++++++++++++++++++
>>   1 file changed, 18 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> index d42912044a5d..36c51ff9a898 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> @@ -50,6 +50,24 @@
>>   		#iommu-cells = <1>;
>>   	};
>>   
>> +	cbass_main_navss: interconnect0 {
>> +		compatible = "simple-bus";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		main_navss_intr: interrupt-controller1 {
>> +			compatible = "ti,sci-intr";
>> +			ti,intr-trigger-type = <4>;
>> +			interrupt-controller;
>> +			interrupt-parent = <&gic500>;
>> +			#interrupt-cells = <2>;
>> +			ti,sci = <&dmsc>;
>> +			ti,sci-dst-id = <14>;
>> +			ti,sci-rm-range-girq = <0>, <2>;
>> +		};
>> +	};
>> +
>>   	secure_proxy_main: mailbox@32c00000 {
>>   		compatible = "ti,am654-secure-proxy";
>>   		#mbox-cells = <1>;
>>

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
