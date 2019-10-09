Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBE5D0E12
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 13:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dwBVYHXW+K7Cd1EYtk9o01ih43geKVMhFOnSHcPA2s=; b=Jw1EWKzUWtfnhg
	nDjMG0x+eLEEfGuCZqaAAaHUwLSRKgKz9alKC+aUnMHcUqQjhBCj4ONGMcuUcX2tplEzlhMpsycET
	jA3BUFLYlym98Xo1e1YQTDIs+pHjQW6Gh0a5Z1qZ5jVSP1DDfgh+z1k0Bl1Ez+g2h7TydYy4b+3h+
	IiontpHzc1OqiIgcDAZN5sVIDqXa6lIXwHZbF+VKrGx6v7TqB/ibpBxeILMibXSQuAoP0p4IjlJzT
	OYzxDDMTQk0/tGf1UHSAZ/LxwW2GR7d/p6oSn/+ZyWQebKALLvfG8u+z8ecRkI1OBLuegJJo9JrlZ
	Mh4JMtlK4kcU5ByIhQ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAZF-0003GI-R3; Wed, 09 Oct 2019 11:55:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAZ6-0003Fk-41
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 11:55:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B79528;
 Wed,  9 Oct 2019 04:55:35 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC4D63F703;
 Wed,  9 Oct 2019 04:55:34 -0700 (PDT)
Subject: Re: [PATCH v8 02/12] kselftest: arm64:
 mangle_pstate_invalid_compat_toggle and common utils
To: Dave Martin <Dave.Martin@arm.com>
References: <20191009082611.9441-1-cristian.marussi@arm.com>
 <20191009082611.9441-3-cristian.marussi@arm.com>
 <20191009111848.GB27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <38e73559-ad80-d05a-32ca-ac763ee648bb@arm.com>
Date: Wed, 9 Oct 2019 12:55:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191009111848.GB27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_045536_202055_FB5A9F59 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 12:18, Dave Martin wrote:
> On Wed, Oct 09, 2019 at 09:26:01AM +0100, Cristian Marussi wrote:
>> Add some arm64/signal specific boilerplate and utility code to help
>> further testcases' development.
>>
>> Introduce also one simple testcase mangle_pstate_invalid_compat_toggle
>> and some related helpers: it is a simple mangle testcase which messes
>> with the ucontext_t from within the signal handler, trying to toggle
>> PSTATE state bits to switch the system between 32bit/64bit execution
>> state. Expects SIGSEGV on test PASS.
>>
>> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v7 --> v8
>> - removed unused SSBS_SYSREG
> 
> [...]
> 
>> diff --git a/tools/testing/selftests/arm64/signal/.gitignore b/tools/testing/selftests/arm64/signal/.gitignore
>> new file mode 100644
>> index 000000000000..e5aeae45febb
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/.gitignore
>> @@ -0,0 +1,3 @@
>> +!*.[ch]
>> +mangle_*
>> +fake_sigreturn_*
> 
> I think the !*.[ch] line needs to come last.
> 
> Re-including *.[ch] on the first line has no effect because no files
> have been excluded yet.
> 
> (This looks like it was my mistake when I originally suggested using
> wildcards here -- apologies for that!)
> 
> I'm happy for you to keey my Reviewed-by on that change.
> 

Moved to last in v9

Cristian
> [...]
> 
> Cheers
> ---Dave
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
