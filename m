Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91042168369
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z4KLBiZaEQFzuRVM1QkhbrkUii+zxR+VHW6J3XEvz+Y=; b=Iy7p429RHokJUvhuqk1g60H5V
	lrmsUvZMJadE31ySTKMVdeQ2eQHUlAZi8OUOed5VMcRT4bfRWvDkWxJXJDUnaDwrpjgod50SF4oBt
	heU49aR70G7bk9VuDjT0gses2vlLwEo8tazhogewSreDTmgMLKcLvriJifUC0sntSrPMcb1kiZIRn
	wVaM/4UkYViYq4yiGNneZXMVQITewx36aYs2OI4ys02OBo6U+LaS1NwQVNz3X2qkR36Hor1V/ZddP
	Q8Q6gcJ0H6Wyd5fmTLv/EVjALwrFSTR8a/brBepj89LuPAmwBI+tRL1I8LhX2XZJEyqalgaYLWRin
	riQt31Hog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BCk-0005XX-ML; Fri, 21 Feb 2020 16:31:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BCc-0005Wa-3Y
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:30:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33DBB30E;
 Fri, 21 Feb 2020 08:30:57 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D2033F68F;
 Fri, 21 Feb 2020 08:30:56 -0800 (PST)
Subject: Re: [PATCH 2/3] dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
To: Rob Herring <robh@kernel.org>
References: <cover.1582300927.git.robin.murphy@arm.com>
 <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582300927.git.robin.murphy@arm.com>
 <CAL_JsqKgz7N=nsA=TgJx=G9Zad77s39gyd3fwJV71-hdqokQpg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <14fec4e8-acde-23b8-ac59-22c0e358b5c8@arm.com>
Date: Fri, 21 Feb 2020 16:30:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKgz7N=nsA=TgJx=G9Zad77s39gyd3fwJV71-hdqokQpg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_083058_194263_EC109D0E 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/02/2020 4:26 pm, Rob Herring wrote:
> On Fri, Feb 21, 2020 at 10:05 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> Add new PMU definitions to correspond with the CPU bindings.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   Documentation/devicetree/bindings/arm/pmu.yaml | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
>> index 52ae094ce330..cc52195d0e9e 100644
>> --- a/Documentation/devicetree/bindings/arm/pmu.yaml
>> +++ b/Documentation/devicetree/bindings/arm/pmu.yaml
>> @@ -21,11 +21,20 @@ properties:
>>         - enum:
>>             - apm,potenza-pmu
>>             - arm,armv8-pmuv3
>> +          - arm,neoverse-n1-pmu
>> +          - arm,neoverse-e1-pmu
> 
> We've managed to do some interesting sorting here. Oh well.

Indeed; it appeared to be some sort of overlap between reverse-alpha and 
"big-to-little", so I just picked that up and ran with it :)

Thanks,
Robin.

> I'll take patches 1 and 2.
> 
>> +          - arm,cortex-a77-pmu
>> +          - arm,cortex-a76-pmu
>> +          - arm,cortex-a75-pmu
>>             - arm,cortex-a73-pmu
>>             - arm,cortex-a72-pmu
>> +          - arm,cortex-a65-pmu
>>             - arm,cortex-a57-pmu
>> +          - arm,cortex-a55-pmu
>>             - arm,cortex-a53-pmu
>>             - arm,cortex-a35-pmu
>> +          - arm,cortex-a34-pmu
>> +          - arm,cortex-a32-pmu
>>             - arm,cortex-a17-pmu
>>             - arm,cortex-a15-pmu
>>             - arm,cortex-a12-pmu
>> --
>> 2.23.0.dirty
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
