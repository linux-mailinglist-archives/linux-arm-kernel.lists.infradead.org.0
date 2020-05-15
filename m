Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 626B41D537C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cx8jH9uI0eS2frjoGq4aPGabsQTaeSFo5ZaU+UoT2K8=; b=SjotselFgqX9Gk
	cWRvlVlYoUMtSgbnss74TEFRtSF4cg85GmZjHON1CmC9F38alur9MuJpBcZleEWCLsyi/8FbnlMAi
	VFqBl9smvYizH+P2dnKkGICvk4bArJe9Rs1rfnsY09ZXnoULl81G+ZDTL5JaYqNcXRuJEeyEGO6Y+
	dsuKa+n4D7YsWMJNlsWbIn6s8alACDDYeOoWWUw9iFVzAciV9AUu+kMBvImcNuEcECHzJXcCasjsm
	SqyoLyuiBlXu5GQd6wIJRP7tHOKKMj5AJACA1Z7x9B3skX7GiQ/LvUF7ANiwVCusNJwSQP3aD/n/l
	LP2Zw94JFzD+lyuJ732w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZc06-0001jX-Fa; Fri, 15 May 2020 15:11:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbzv-0001ic-6T
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:11:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 115532F;
 Fri, 15 May 2020 08:11:37 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2DAE3F71E;
 Fri, 15 May 2020 08:11:35 -0700 (PDT)
Subject: Re: [PATCH v3 08/20] arm64: dts: arm: model: Fix GIC compatible names
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-9-andre.przywara@arm.com>
 <20200513182144.GD27686@bogus>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Organization: ARM Ltd.
Message-ID: <4aa83004-38c3-c625-f439-25255376ab2b@arm.com>
Date: Fri, 15 May 2020 16:10:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513182144.GD27686@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_081139_286188_0763CD49 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/05/2020 19:21, Sudeep Holla wrote:
> On Wed, May 13, 2020 at 11:30:04AM +0100, Andre Przywara wrote:
>> The GIC DT binding only allows certain combinations of DT compatible
>> strings. The somewhat awkward "arm,cortex-a15-gic", "arm,cortex-a9-gic"
>> is not among those.
>>
>> Drop that combination of different "cortex" based strings used for the
>> models, and replace it with the more useful combination including
>> "arm,gic-400".
>>
>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>> ---
>>  arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi | 2 +-
>>  arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts       | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
>> index 15fe81738e94..f17e744163a5 100644
>> --- a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
>> +++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
>> @@ -6,7 +6,7 @@
>>  
>>  / {
>>  	gic: interrupt-controller@2c001000 {
>> -		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
>> +		compatible = "arm,gic-400", "arm,cortex-a15-gic";
> 
> Do we need to still retain "arm,cortex-a15-gic" ? 

I'd rather would like to keep that. "arm,gic-400" was introduced only
later into Linux as a compatible string, so dropping this would break
older kernels. I don't see any difference between a9-gic and a15-gic in
term of kernel support, so a9-gic can surely go.

Cheers,
Andre


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
