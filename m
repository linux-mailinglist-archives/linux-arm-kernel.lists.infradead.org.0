Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B231BBBA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48MBXfAy7NKA3NX+y6ixpRYFVP2e5mu2Qm4XPbRtJXs=; b=p2NpDfleQ5Ewiu
	tymYkEjzLdnWwyneTQy9GoUmhzX0vDXrVuGPiwAWeG7oeTVOftAkSb4dwjHrMuv7eVgZbHPln9gjn
	C6LOsP8FIEFKrRetaDWZl8by2DH/gkVUaJmmnSa1cJWNhl6f7TENJuYKoTmN3HuIIQrvVysGGUz+2
	rpEzurgcN0OsDn1Tm79SwEaWjuy1JVBbKvU8nzLliVPexyrbQH4mqjdIKltVfjXXANqPDU+aRzvPx
	mXA5yoeaZjXIjkJ0RVzyfH32Xfd4fANUGK5maYGOvVf+I6wcDy0R9Wb3B0azy32QpK2y3Y1lasSaM
	S9aUVY5GDPbwZdK2MWOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNru-0001nz-SL; Tue, 28 Apr 2020 10:53:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNrl-0001nP-2y
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:53:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57B2130E;
 Tue, 28 Apr 2020 03:53:28 -0700 (PDT)
Received: from [10.37.8.217] (unknown [10.37.8.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB2B43F73D;
 Tue, 28 Apr 2020 03:53:26 -0700 (PDT)
Subject: Re: arm64 vdso might miss .eh_frame
To: Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>
References: <20200415092336.GK987@arm.com>
 <20200428073435.GC4049@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <152f54d5-2fa9-bc08-d931-ed2f3675da6b@arm.com>
Date: Tue, 28 Apr 2020 11:54:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200428073435.GC4049@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_035329_172900_86DA4AA4 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Tamas Zsoldos <tamas.zsoldos@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 4/28/20 8:34 AM, Will Deacon wrote:
> On Wed, Apr 15, 2020 at 10:23:36AM +0100, Szabolcs Nagy wrote:
>> On aarch64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
>> by default since gcc-8, so now the de facto platform ABI is to allow
>> unwinding from async signal handlers.
>>
>> However on bare metal targets (aarch64-none-elf), and on old gcc,
>> async and sync unwind tables are not enabled by default to avoid
>> runtime memory costs.
>>
>> This means if linux is built with a baremetal toolchain the vdso.so
>> may not have unwind tables which breaks our (undocumented) platform
>> ABI guarantee in userspace. So adding -fasynchronous-unwind-tables
>> explicitly to the vgettimeofday.o cflags would be nice (the other
>> objects in the vdso seem to be asm).
>>
>> There was also a report that android clang built linux vdso.so lacks
>> .eh_frame completely, that may be a missing --eh-frame-hdr or different
>> platform ABI on android, Tamas on cc may be able to verify this.
> 
> Vincenzo? Looks like this is a regression caused by the move to C -- please
> can you take a look?
> 

I have already, locally, a patch that addresses the problem presented in this
email, based on Szabolcs comment. I did not post it yet because I was waiting
for Tamas' comment and address everything in one go.

Let me know if you need it before then that.

> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
