Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D931A6E3BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 11:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Je7557OquAV0hEOa4QeQkuZQ14Fkl1zGFvsaur3/uGI=; b=qGoJqNrxuu1lLj
	L1invjgehHMSVxduHcFTTwAoDso6aqMWeim0QwA6s1bjZxeO4SxIvVjuvAM9EfaPm7OqoSz/8Z/X4
	csfDr3gfsaC2SWq9FGgRKl7/tRM6+vpcZo9TCymWonOdZ0L4cSWSA2DYkcCoXIzMx3xe6ZTb21oaT
	f0dK8CfC3eXn3vsKD9zqS73RGiKCGgJZXtI/zqkqmJ1KAwbAi9SWxswEfCLd6mbdmS17wUCYEJfI/
	KEq1o1l9YiFF4t14vUqkz4Pj0V4wf7gv4LftVUW9axqe+RMPRX7JiHnpGgzqy5PKJvbHwBpXO97Uv
	eZwTOuiTSh49dSZ3nV4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoPWp-0005oc-K2; Fri, 19 Jul 2019 09:50:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoPWS-0005nv-Te
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 09:49:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 215AD337;
 Fri, 19 Jul 2019 02:49:52 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A4BB33F59C;
 Fri, 19 Jul 2019 02:49:49 -0700 (PDT)
Subject: Re: [PATCH] arm64: vdso: Cleanup Makefiles.
To: Will Deacon <will@kernel.org>
References: <20190712153746.5dwwptgrle3z25m7@willie-the-truck>
 <20190718114121.33024-1-vincenzo.frascino@arm.com>
 <20190719080435.f3nlecyu3ysnsnpv@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <867d5696-6784-20ee-79cc-8a2bf39431f9@arm.com>
Date: Fri, 19 Jul 2019 10:49:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719080435.f3nlecyu3ysnsnpv@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_024953_007471_7C261E4B 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch@vger.kernel.org, naohiro.aota@wdc.com, sthotton@marvell.com,
 luto@kernel.org, arnd@arndb.de, huw@codeweavers.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, yamada.masahiro@socionext.com, andre.przywara@arm.com,
 john.stultz@linaro.org, 0x7f454c46@gmail.com, linux@rasmusvillemoes.dk,
 tglx@linutronix.de, salyzyn@android.com, pcc@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 19/07/2019 09:04, Will Deacon wrote:
> On Thu, Jul 18, 2019 at 12:41:21PM +0100, Vincenzo Frascino wrote:
>> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
>> index 21009ed5a755..6c4e496309c4 100644
>> --- a/arch/arm64/kernel/vdso32/Makefile
>> +++ b/arch/arm64/kernel/vdso32/Makefile
>> @@ -155,17 +155,17 @@ $(asm-obj-vdso): %.o: %.S FORCE
>>  	$(call if_changed_dep,vdsoas)
>>  
>>  # Actual build commands
>> -quiet_cmd_vdsold_and_vdso_check = LD      $@
>> +quiet_cmd_vdsold_and_vdso_check = VDSOLIB $@
>>        cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
>>  
>> -quiet_cmd_vdsold = VDSOL   $@
>> +quiet_cmd_vdsold = VDSOLD  $@
> 
> I think we should be more consistent about whether or not we prefix things
> with VDSO, so either go with "VDSOLD, VDSOCC and VDSOAS" or stick to "LD,
> CC and AS" rather than mixing between them.
> 
> I think my suggestion would be something along the lines of CC, LD, AS for
> the native vdso and CC32, LD32, AS32 for the compat vdso.
> 

Sounds good. I will send v2 accordingly.

> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
