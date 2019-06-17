Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A434F4863F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OpUt81QLh3W5UrVcfK2W/mMaogqBhX8LqpnP1GjWPZ8=; b=YzVniJGfoAiIzTAVpDk8yDEyz
	BnX05UsY21AHW+oojaDgDqPmevK5RFisC2idRHtSU6W7d0LvPUpme5R1pfDCEeYolA3ZQyH9aRjNh
	UOTOEJOypVTTH8EBZA/N70ed7cZ5xgldqFgD8ayE3rX0Y2GWoJ05lzKd8e1iX30xRIOAR27gT8Ejx
	6t9kNfU76hc55jD3R0wHOgdUh8E/hc5Uwa0DS72v13WuIXE/4tCTQk53S/HVcRMjno4o6LdCkz6b5
	SGbDe0PCBda7Hhs0F95q1bVdXUCPm3zbvQrCKn/I+l0xVusxkNa9nFsvoTLR+BURxkl70u7HUSN8T
	nfkMzouYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct4R-0001VQ-1b; Mon, 17 Jun 2019 14:57:19 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hct1J-0006TB-A3
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:54:12 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HEs3KJ120379;
 Mon, 17 Jun 2019 09:54:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560783243;
 bh=xwLELKAKVPK0ob/NFwW368OT2nHjADb1LSHxV+OFJ/g=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=b3g0GV31MT5a/Z6iySiibUxDA7mLW49F3ndHSi0Q6LcEbcw4PiWnu6Ki/y7JWpnIP
 SkgFsXb2rD+HN1P8DCuuncK1e2pUS8IZVuerjsWcNBbCDXeAMEuUtGpvM4n/zwZlYy
 RA/a1xUZvMBVFG1USyCJmtmmkh2I/Fo72rkjWbgE=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HEs3T8053409
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 09:54:03 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 09:54:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 09:54:02 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HEs0TE100179;
 Mon, 17 Jun 2019 09:54:01 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in
 interconnect node
To: Nishanth Menon <nm@ti.com>, Suman Anna <s-anna@ti.com>
References: <20190529211344.18014-1-s-anna@ti.com>
 <20190530104903.ldcmkunjnk7a5y3c@akan>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
Date: Mon, 17 Jun 2019 17:54:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190530104903.ldcmkunjnk7a5y3c@akan>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075405_531320_5F21EA6D 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/05/2019 13:49, Nishanth Menon wrote:
> On 16:13-20190529, Suman Anna wrote:
>> From: Roger Quadros <rogerq@ti.com>
>>
>> Add the MSCM RAM address space to the ranges property of the cbass_main
>> interconnect node so that the addresses can be translated properly.
>>
>> This fixes the probe failure in the sram driver for the MSMC RAM node.
>>
>> Signed-off-by: Roger Quadros <rogerq@ti.com>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>
>> The following error message is seen without this:
>> [    0.480261] sram interconnect@100000:sram@70000000: found no memory resource
>> [    0.487497] sram: probe of interconnect@100000:sram@70000000 failed with error -22
>>
>> regards
>> Suman
>>
>>   arch/arm64/boot/dts/ti/k3-am65.dtsi | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
>> index 50f4be2047a9..68b3f954f1d1 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
>> @@ -68,6 +68,7 @@
>>   			 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /* serdes */
>>   			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /* Most peripherals */
>>   			 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /* MAIN NAVSS */
>> +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00200000>, /* MSMC SRAM */
>>   			 /* MCUSS Range */
>>   			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
>>   			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
>> -- 
>> 2.21.0
>>
> 
> Arrgh.. Nice catch. Thanks. We should consider pulling this in as part
> of early rc fixes please.
> 
> Acked-by: Nishanth Menon <nm@ti.com>

Hmm, what is the failure this causes, except the probe message? SRAM 
driver obviously won't work but is it used for anything at the moment 
anyways?

I would rather queue this towards 5.3.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
