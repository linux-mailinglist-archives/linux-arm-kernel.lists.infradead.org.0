Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE52140A4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rtgjl7SxHlLPuuPnvjV8Su0UQE69KdYCIUTv7o+jyLQ=; b=W75aYsZWTKVF8w9HaVbWLsSrH
	iKGkPead/pupoRLa0zc++LSnZ9vIPvhyzLvHdgEf1eBuIFXiOZVI6N9poEFfiwgrX3G5uIsRL5tac
	sfUnb5w72svjV46bfq+bmx+bwEShjqpIgHTWnfo7bb4UWY6C0fEEjLHMUOUsKiRFwtQCkjBZJd9k+
	gn+71jahPp2ZvisP9CIBULT72x0rB63utbntwyC8cFrhWkO5fs5qyAsiksWx78Jx7nOLm/wre02BJ
	M6iwU7y3Sl8yM9OzYyrA3sLNNBVU62IGGMjUG6rtHggRzFJLUIdSls1uThwUk5Yn6z38YJD0/oJTu
	E9O7VdBng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRCv-0006uQ-Fw; Fri, 17 Jan 2020 12:58:37 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRCj-0006tu-UP
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:58:30 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00HCwNE1128076;
 Fri, 17 Jan 2020 06:58:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579265903;
 bh=E1dOnxVQIjpeR6bOLipZZbcFgOSQLVZ7wpbIxUxOI0E=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=JGztN/0gAyyp+QPZtCFIfV6L73s556m11QLrYi8t3D07CZG02r1z2qh0w4V3S8n0U
 mc9E78qTvrT2P4ab4RxAro4Cxu/YQWGn1A3Uoaz1L1WQYt3U3C2k93P62RXoGPuwEB
 xUPOvm80Pz+pj/XPtOAnsPxgdid1wj7WltNKvscI=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00HCwNdM094446
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 17 Jan 2020 06:58:23 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 17
 Jan 2020 06:58:23 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 17 Jan 2020 06:58:23 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00HCwLe6046135;
 Fri, 17 Jan 2020 06:58:21 -0600
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e-main: Add missing power-domains
 for smmu
To: Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>
References: <20191122100356.20622-1-lokeshvutla@ti.com>
 <14a3898b-f91b-861e-0091-7e445c087ec0@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <a2c6841a-4e30-bcb2-1bfa-6a603af44d4e@ti.com>
Date: Fri, 17 Jan 2020 14:58:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <14a3898b-f91b-861e-0091-7e445c087ec0@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_045826_061022_690F8FE9 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Suman Anna <s-anna@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/01/2020 06:00, Lokesh Vutla wrote:
> H Tero,
> 
> On 22/11/19 3:33 PM, Lokesh Vutla wrote:
>> Add power-domains entry for smmu, so that the it is accessible as long
>> as the driver is active. Without this device shutdown is throwing the
>> below warning:
>> "[   44.736348] arm-smmu-v3 36600000.smmu: failed to clear cr0"
>>
>> Reported-by: Suman Anna <s-anna@ti.com>
>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> 
> Any comments on this patch? If there are no objections, can this be picked?

Sorry for delay, I've been engulfed with various other pieces of work 
and handling upstream has been quite slow.

Anyways, for this patch, queued up for 5.6, thanks!

-Tero

> 
> Thanks and regards,
> Lokesh
> 
>> ---
>>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> index 698ef9a1d5b7..96445111e398 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> @@ -43,6 +43,7 @@
>>   	smmu0: smmu@36600000 {
>>   		compatible = "arm,smmu-v3";
>>   		reg = <0x0 0x36600000 0x0 0x100000>;
>> +		power-domains = <&k3_pds 229 TI_SCI_PD_EXCLUSIVE>;
>>   		interrupt-parent = <&gic500>;
>>   		interrupts = <GIC_SPI 772 IRQ_TYPE_EDGE_RISING>,
>>   			     <GIC_SPI 768 IRQ_TYPE_EDGE_RISING>;
>>

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
