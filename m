Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0B8159AED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 22:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6DC8qRQSoaTxAbnV7mgW3OplUyfUh9xrUBq9GIE+MOM=; b=Sy9iic//MwADpLVzMfZS+xa8o
	8SqJLt2SHLP56YDkfyosvn4ubnK1NHw544jh7WJDx99MdEPTJhOZiylhdFM0+9JzAue9AgEqwgYie
	OQ1MzBN8WO1jGiE4MgrF+A4UclFNkV6RCwvgPplLt3RPp1y8V4VMRNwOtv1VTOmT1zhx81ZObTzUk
	lHmfk3wM/juF+AzPD4v+ybuIl3L3S4YcZ2UQUHKtSuoUa0bt9P3ZLQE/gzDHfFabKukqaBGKrgIdI
	qjpk3+CA+5jbQvYGQCcw9S9sg1pZ8LaAI3j9FdXiHL1a74oYRqXZxJ6lTbn8YiOAvN3VS9AuIFkwM
	rC+311C4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ckJ-0003NH-9e; Tue, 11 Feb 2020 21:07:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ckC-0003MY-3g
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 21:06:57 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DC6820708;
 Tue, 11 Feb 2020 21:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581455215;
 bh=ial5lfm1joGz3c4sbCOYuWw3kSyd3YsJFbgXFfG8r/g=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=msfipC7T9DKYbMKWk/VLVW4IMh7VnAItA5wtAxaobNWwXfYmHZ/X/Ymmq8lsnLEGN
 Wu+pQMJuctk58waK3nUpMbXZ4UDxTjq9yOcqf5kjKIuTY+pyZfL45ptaFYdIywNhS+
 cyd182nfjlqDLv5IJ8aOb17XICywoddq/X6ljmcc=
Subject: Re: [PATCH v3 7/7] selftests/exec: Add READ_IMPLIES_EXEC tests
To: Kees Cook <keescook@chromium.org>
References: <20200210193049.64362-1-keescook@chromium.org>
 <20200210193049.64362-8-keescook@chromium.org>
 <4f8a5036-dc2a-90ad-5fc8-69560a5dd78e@kernel.org>
 <202002111124.0A334167@keescook>
From: shuah <shuah@kernel.org>
Message-ID: <c09c345a-786f-25d2-1ee5-65f9cb23db6d@kernel.org>
Date: Tue, 11 Feb 2020 14:06:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <202002111124.0A334167@keescook>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_130656_171101_85049EA8 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jann Horn <jannh@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, Hector Marco-Gisbert <hecmargi@upv.es>,
 Russell King <linux@armlinux.org.uk>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@mellanox.com>,
 linux-kselftest@vger.kernel.org, kernel-hardening@lists.openwall.com,
 shuah <shuah@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/11/20 12:25 PM, Kees Cook wrote:
> On Tue, Feb 11, 2020 at 11:11:21AM -0700, shuah wrote:
>> On 2/10/20 12:30 PM, Kees Cook wrote:
>>> In order to check the matrix of possible states for handling
>>> READ_IMPLIES_EXEC across native, compat, and the state of PT_GNU_STACK,
>>> add tests for these execution conditions.
>>>
>>> Signed-off-by: Kees Cook <keescook@chromium.org>
>>
>> No issues for this to go through tip.
>>
>> A few problems to fix first. This fails to compile when 32-bit libraries
>> aren't installed. It should fail the 32-bit part and run other checks.
> 
> Do you mean the Makefile should detect the missing compat build deps and
> avoid building them? Testing compat is pretty important to this test, so
> it seems like missing the build deps causing the build to fail is the
> correct action here. This is likely true for the x86/ selftests too.
> 
> What would you like this to do?
> 

selftests/x86 does this already and runs the dependency check in 
x86/Makefile.


check_cc.sh:# check_cc.sh - Helper to test userspace compilation support
Makefile:CAN_BUILD_I386 := $(shell ./check_cc.sh $(CC) 
trivial_32bit_program.c -m32)
Makefile:CAN_BUILD_X86_64 := $(shell ./check_cc.sh $(CC) 
trivial_64bit_program.c)
Makefile:CAN_BUILD_WITH_NOPIE := $(shell ./check_cc.sh $(CC) 
trivial_program.c -no-pie)

Take a look and see if you can leverage this.

thanks,
-- Shuah

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
