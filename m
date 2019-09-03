Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0063A6BDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2tTeSqDo8/OMmOGCE8pEpFa5jjaeNTGF/aR1wXw+wE=; b=ZksdUSakvSvga/
	Or1bxXfONhBWQQK3ncaGSzMOsNRen1KysSdoz28t2E7khMrvnkK+W0hbmNMjA05f1FcQ0CaK0wGhQ
	kVRCIamD7aWugwp3/OJ/VyCPzJrCFXdGI/F1UyG1+ERiTvmG9meaIcA8u7SUQsYq7gpdvgI65m+0X
	dewGnYacnjyO5YiuMUxZT83TKzRb3M7/wavDRmA2pN3UyzVgyHMVi0O0lYjEu3mXbcZ6nAOLg86jt
	PklcZlxbvfVIiWrHx55+WxGsHCirpPclYPmkcfx5aS7ij+ss3G1v5PBcHOtsMmH4YYQ7bmN35Cadr
	fgV0zYx7aYAe87QitjPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5A8L-0007ZY-W1; Tue, 03 Sep 2019 14:50:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5A89-0007FW-09
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:50:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF1EC337;
 Tue,  3 Sep 2019 07:49:59 -0700 (PDT)
Received: from [10.37.8.116] (unknown [10.37.8.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C3E663F246;
 Tue,  3 Sep 2019 07:49:57 -0700 (PDT)
Subject: Re: [PATCH v2 7/8] mips: vdso: Remove unused VDSO_HAS_32BIT_FALLBACK
To: Paul Burton <paul.burton@mips.com>
References: <20190830135902.20861-1-vincenzo.frascino@arm.com>
 <20190830135902.20861-8-vincenzo.frascino@arm.com>
 <20190903143801.7upetfqe6upouzlh@pburton-laptop>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <f783346b-3e33-1bce-f204-f9737ef493e0@arm.com>
Date: Tue, 3 Sep 2019 15:51:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190903143801.7upetfqe6upouzlh@pburton-laptop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_075001_083410_AEFF48DC 
X-CRM114-Status: GOOD (  18.30  )
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "luto@kernel.org" <luto@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "salyzyn@android.com" <salyzyn@android.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

On 9/3/19 3:46 PM, Paul Burton wrote:
> Hi Vincenzo,
> 
> On Fri, Aug 30, 2019 at 02:59:01PM +0100, Vincenzo Frascino wrote:
>> VDSO_HAS_32BIT_FALLBACK has been removed from the core since
>> the architectures that support the generic vDSO library have
>> been converted to support the 32 bit fallbacks.
>>
>> Remove unused VDSO_HAS_32BIT_FALLBACK from mips vdso.
>>
>> Cc: Paul Burton <paul.burton@mips.com>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> Do you want this one in mips-next too, or applied somewhere else along
> with the rest of the series? If the latter:
> 
>     Acked-by: Paul Burton <paul.burton@mips.com>
> 

This patch has a dependency on patch n5 hence can not be applied independently.

Thanks,
Vincenzo

> Thanks,
>     Paul
> 
>> ---
>>  arch/mips/include/asm/vdso/gettimeofday.h | 2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/arch/mips/include/asm/vdso/gettimeofday.h b/arch/mips/include/asm/vdso/gettimeofday.h
>> index e78462e8ca2e..5ad2b086626d 100644
>> --- a/arch/mips/include/asm/vdso/gettimeofday.h
>> +++ b/arch/mips/include/asm/vdso/gettimeofday.h
>> @@ -107,8 +107,6 @@ static __always_inline int clock_getres_fallback(
>>  
>>  #if _MIPS_SIM != _MIPS_SIM_ABI64
>>  
>> -#define VDSO_HAS_32BIT_FALLBACK	1
>> -
>>  static __always_inline long clock_gettime32_fallback(
>>  					clockid_t _clkid,
>>  					struct old_timespec32 *_ts)
>> -- 
>> 2.23.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
