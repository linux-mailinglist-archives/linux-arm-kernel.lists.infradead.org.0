Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E4B1BEF75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 06:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IRUCAAVVg4dhR6x8qwRN2wkMv6cIsCBplY3pqfb6ZuM=; b=W0hP80qTVepc8MzLJD2iDAJtx
	k0piInwgTJUL24yKmGbo/zWBB6VCr4DOH3EBXY7Q8eJW6HgzmC+LRvJ/EHXMbodWuSc+3/lkk59Am
	tBogXptGmlq163V7ZdLk7sBcB0n5gicIONBCxMcdBRYIbXP+EzgdYieNfKzG25pT5iHK+SbgZ+g77
	Z20sBN3FQFfM+gqkFdRHiTZyiVU0crVsDI3Ag8UnkqPX/G03uJF1kLVhkMlV57GzQvwzY3oVmPEOw
	F9c7xCdOtoGjy6QmFOjbI3sS+qe5WtM5RLJVycPpjxOOUgEflW/9w+R648DMo2zF+cfGJJIy1AFSq
	0zmML06FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU1Ec-0000q1-Vx; Thu, 30 Apr 2020 04:55:42 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU1EV-0000pA-Ex
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 04:55:36 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03U4tVE8121395;
 Wed, 29 Apr 2020 23:55:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588222531;
 bh=/G6Mzbyf9lh0LZ/LmPuHyv+oSnTdGGeYpa0gLdkICyQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TMSdJ49r6Vc+CNj7DA8E4ISYRqM+AId5PRiwb08eUuzJ93B6qXbfg+C6wiHnmNU80
 yy4HKj6ogClfQ4TGto8aseOAsuGL4cZF57lJ8O+Ki3rqbZmME9ABnJAh4baxW6ndGx
 sPMHqQeJua7vMrbgbW1mm5mPh+FmnWe8Y2UpkZWI=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03U4tVUj119890
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 29 Apr 2020 23:55:31 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 29
 Apr 2020 23:55:31 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 29 Apr 2020 23:55:31 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03U4tUHp061722;
 Wed, 29 Apr 2020 23:55:30 -0500
Subject: Re: [PATCH 1/8] ARM: dts: omap4: fix node names for the l4_cm clkctrl
 nodes
To: Tony Lindgren <tony@atomide.com>
References: <20200429143002.5050-1-t-kristo@ti.com>
 <20200429143002.5050-2-t-kristo@ti.com> <20200429220714.GV37466@atomide.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <fef91f43-df5f-99e4-7861-05190fcc2040@ti.com>
Date: Thu, 30 Apr 2020 07:55:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200429220714.GV37466@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_215535_622149_8EA3CBA5 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2020 01:07, Tony Lindgren wrote:
> * Tero Kristo <t-kristo@ti.com> [200429 14:31]:
>> The node name for these should be clk instead of clock. Otherwise the
>> clock driver won't be able to map the parent/child relationships
>> properly, and large number of clocks end up in orphaned state.
>>
>> Signed-off-by: Tero Kristo <t-kristo@ti.com>
>> ---
>>   arch/arm/boot/dts/omap44xx-clocks.dtsi | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/omap44xx-clocks.dtsi b/arch/arm/boot/dts/omap44xx-clocks.dtsi
>> index 532868591107..b82b1ca0e557 100644
>> --- a/arch/arm/boot/dts/omap44xx-clocks.dtsi
>> +++ b/arch/arm/boot/dts/omap44xx-clocks.dtsi
>> @@ -1279,13 +1279,13 @@
>>   		#size-cells = <1>;
>>   		ranges = <0 0x1400 0x200>;
>>   
>> -		l4_per_clkctrl: clock@20 {
>> +		l4_per_clkctrl: clk@20 {
>>   			compatible = "ti,clkctrl-l4-per", "ti,clkctrl";
>>   			reg = <0x20 0x144>;
>>   			#clock-cells = <2>;
>>   		};
>>   
>> -		l4_secure_clkctrl: clock@1a0 {
>> +		l4_secure_clkctrl: clk@1a0 {
>>   			compatible = "ti,clkctrl-l4-secure", "ti,clkctrl";
>>   			reg = <0x1a0 0x3c>;
>>   			#clock-cells = <2>;
> 
> Heh this is no longer needed since commit 6c3090520554
> ("clk: ti: clkctrl: Fix hidden dependency to node name")
> that added support for using the compatible name :)
> 
> Maybe you are using some older tree? Or else there's
> still something wrong somewhere.

I was using 5.7-rc1 as baseline so can't be that.

Let me try to check this one again.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
