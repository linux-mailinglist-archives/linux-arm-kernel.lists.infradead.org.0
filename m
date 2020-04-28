Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE591BBB68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JI/56fFv4IiDtIvLFD+zUuBhbvAVVGrf2rgjl3zGnso=; b=Dtg3owgzK1wYb1
	8FGzVSPms6YuOCj/vt4VSRWQJOv3lAh+Jl0S3yWI4RGORKYKilP4GUW/XgLwxKB1Ab+xjBpNo5lVl
	i3tVNO84k28oj8ucKmw6ZfH4R3ipG84TzLHZ/IooMjiwgXjs/Bap1t8p3cPLF0TiKtQXQvSe97MLM
	OQaJSFg5K2sv5lsYan+okL/sJ7maO8HtCZSVklzX1M6xFhj/9HmHaAPiCOvRpDA9eP+ivqYFv2Mzx
	II7XrFgopNFVNVpcosNzJL/LjgDpq0XAxYRrwzHtIulT2Cg7DPILkd6xOJuZMRWRaL1LGnkeG1Nku
	Yp0oSiE3dvHCmRkXr7LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNjz-00063v-4q; Tue, 28 Apr 2020 10:45:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNjh-0004um-DP
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:45:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C65430E;
 Tue, 28 Apr 2020 03:45:06 -0700 (PDT)
Received: from [10.37.8.217] (unknown [10.37.8.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2086B3F305;
 Tue, 28 Apr 2020 03:45:04 -0700 (PDT)
Subject: Re: [PATCH] arm64/vdso: Remove unused makefile variable
To: Will Deacon <will@kernel.org>, Geoff Levand <geoff@infradead.org>
References: <d8baa0e5-0e20-9f58-5e79-34a272f86d1d@infradead.org>
 <20200427203520.GA23186@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <c3c48a79-6a0c-2bae-16a8-507f05ee5473@arm.com>
Date: Tue, 28 Apr 2020 11:46:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200427203520.GA23186@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_034509_505058_376C9A48 
X-CRM114-Status: GOOD (  17.06  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

thank you for pointing this out.

On 4/27/20 9:35 PM, Will Deacon wrote:
> [+Vincenzo]
> 
> On Fri, Apr 24, 2020 at 08:58:49AM -0700, Geoff Levand wrote:
>> The vdso makefile variable VDSO_LDFLAGS is defined, but never used,
>> so remove it.
>>
>> Signed-off-by: Geoff Levand <geoff@infradead.org>
>> ---
>>
>> Hi,
>>
>> This seems to be left over from a code cleanup that missed it.
> 
> While I agree that this isn't used, I'm wondering why '-Bsymbolic' is used
> to link the compat vDSO but not the native one. It seems weird to differ
> in this regard.
> 
> Vincenzo? Looks like you added this unused variable in 28b1a824a4f44
> ("arm64: vdso: Substitute gettimeofday() with C implementation").
> 

My understanding is that "-Bsymbolic" is required by both compat and normal vdso
because when the shared library is built it adds a flag in the dynamic section
of the binary called DT_SYMBOLIC which alters the dynamic linker's symbol
resolution algorithm to search for references for a symbol inside the library
first and then into the executable.

This becomes useful for example when an executable built with -fPIC is trying to
call a public vDSO function from assembly (bl symbol).

The issue here seems to be that I used VDSO_LDFLAGS instead of ldflags-y. I can
post a patch and Cc stable. Adding Geoff as Reported-by.

> Will
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
