Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB5E19C0E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 14:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66pB4/V55YahhvpViGHEi5jCJ5mKT3cUEHu2+nb7Crk=; b=bWbRYQ3JGpt6L1
	Y+8nBjPVkbLCEt+kXmzoH7laK856kilkbyWMcUjDITuBxuzHhZXTU45dHn1esLEbq46DGTh+Gf+Uj
	SGRTpvCUu7K+FkRhIBGO8gQWefW+5HLoFO6u/AkdKpuyGgZMFBh1sInyxsWVdcyxmuUu6fO01r0gr
	hQK55Fi8Hv8ubt9CYkNViBmPuy5iy3COg/MV5Tl9pi1lT+TrOyoljwG69uDXmtxM9zSMR7ByizQNL
	qyI2eCdBHwz4YY7SC/kiihPQZSl9cPjsACjwoQh3TELy8tOKQupWfsek4NONoVWtm/urlHO6fCRj9
	N2+VmXaX3/V2R1+giyig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyj2-0005hi-JF; Thu, 02 Apr 2020 12:13:36 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyiv-0005gy-Ai
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 12:13:30 +0000
Received: from [IPv6:2a00:5f00:102:0:1862:4eff:fe91:4534] (unknown
 [IPv6:2a00:5f00:102:0:1862:4eff:fe91:4534])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: gtucker)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4FC87297C2F;
 Thu,  2 Apr 2020 13:13:27 +0100 (BST)
Subject: Re: [PATCH] ARM: exynos: update l2c_aux_mask to fix alert message
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <b29f34870380093e6268c11d3033033d6def61b7.1585756648.git.guillaume.tucker@collabora.com>
 <20200401163101.GV25745@shell.armlinux.org.uk>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <35c7cf4b-e6b8-43aa-d934-4a1c2e738372@collabora.com>
Date: Thu, 2 Apr 2020 13:13:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200401163101.GV25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_051329_497153_F3E96DF6 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/04/2020 17:31, Russell King - ARM Linux admin wrote:
> On Wed, Apr 01, 2020 at 05:08:03PM +0100, Guillaume Tucker wrote:
>> Allow setting the number of cycles for RAM reads in the pl310 cache
>> controller L2 auxiliary control register mask (bits 0-2) since it
>> needs to be changed in software.  This only affects exynos4210 and
>> exynos4412 as they use the pl310 cache controller.
>>
>> With the mask used until now, the following warnings were generated,
>> the 2nd one being a pr_alert():
>>
>>   L2C: platform modifies aux control register: 0x02070000 -> 0x3e470001
>>   L2C: platform provided aux values permit register corruption.
>>
>> This latency cycles value has always been set in software in spite of
>> the warnings.  Keep it this way but clear the alert message about
>> register corruption to acknowledge it is a valid thing to do.
> 
> This is telling you that you are doing something you should not be
> doing.  The L2C controller should be configured by board firmware
> first and foremost, because if, for example, u-boot makes use of the
> L2 cache, or any other pre-main kernel code (in other words,
> decompressor) the setup of the L2 controller will be wrong.
> 
> So, NAK.

OK thanks, I guess I misinterpreted the meaning of the error
message.  It's really saying that the register value was not the
right one before the kernel tried to change it.  Next step for me
is to look into U-Boot.

Guillaume

>> Tested on exynos4412-odroid-x2.
>>
>> Signed-off-by: Guillaume Tucker <guillaume.tucker@collabora.com>
>> Reported-by: "kernelci.org bot" <bot@kernelci.org>
>> ---
>>  arch/arm/mach-exynos/exynos.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
>> index 7a8d1555db40..ed1bba49210d 100644
>> --- a/arch/arm/mach-exynos/exynos.c
>> +++ b/arch/arm/mach-exynos/exynos.c
>> @@ -194,7 +194,7 @@ static void __init exynos_dt_fixup(void)
>>  
>>  DT_MACHINE_START(EXYNOS_DT, "Samsung Exynos (Flattened Device Tree)")
>>  	.l2c_aux_val	= 0x3c400001,
>> -	.l2c_aux_mask	= 0xc20fffff,
>> +	.l2c_aux_mask	= 0xc20ffff8,
>>  	.smp		= smp_ops(exynos_smp_ops),
>>  	.map_io		= exynos_init_io,
>>  	.init_early	= exynos_firmware_init,
>> -- 
>> 2.20.1
>>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
