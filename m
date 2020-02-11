Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015F715985D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EJoO/bLM2GN+oEyEaE7Zqqh/rV3mMH6XPWO1cf269eg=; b=Yppv+MpcEQ4SjjM5TUIyO7ZJQ
	i+6UBo2D9o9P+iCNpQ4g26fqtg67EWKh0f7kwOm82UrZhCzMTPM8Z248cMclPF87VnR1oW+9kLlbr
	fji0JnjjI09I9x3aeECPN9uPG+WFsOB43PqH4KhhbQ8cpg6bvcIo4TWSVx5XAAkeQoud9Q7MqdSH0
	Cww8PUrCjyKJdFh8BsMNsAokxSI//BX/IYptAcvsiyBOWftv/Lh5GL5VVebpiuufXMTfdL84j1phb
	ErOipCRaq2rFWYu9LUJmd2PUA5Q8NhrsX7zzM3Gma3LfR8492NXD5sE8J+VuqgKy7qk+fav6Gk3lj
	22vLogkoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a9t-0007wY-9U; Tue, 11 Feb 2020 18:21:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1a0L-0006gU-9V
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:11:27 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19D48206DB;
 Tue, 11 Feb 2020 18:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581444682;
 bh=fCi7iGEzUFz55yqEcvf2QdYxh8pGHQFjh2eIogW1O7U=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=sqJ97A8QIcyNMreWkO51N9AJETetiBfBcRXN9gx5CKrvprmwfwo8YMHxgwMDzkQDM
 zdgThFTGIS6YitPfMwAGXptjc1IhDOR0zQwqp6O1ewNLHX6botCS733PBTZfglTpTN
 E5LnjKkXHdOxsui31xVKNIPr9HhvWhP8PkYuuT0U=
Subject: Re: [PATCH v3 7/7] selftests/exec: Add READ_IMPLIES_EXEC tests
To: Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>
References: <20200210193049.64362-1-keescook@chromium.org>
 <20200210193049.64362-8-keescook@chromium.org>
From: shuah <shuah@kernel.org>
Message-ID: <4f8a5036-dc2a-90ad-5fc8-69560a5dd78e@kernel.org>
Date: Tue, 11 Feb 2020 11:11:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200210193049.64362-8-keescook@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_101125_412509_B97BFA73 
X-CRM114-Status: GOOD (  13.61  )
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
 shuah <shuah@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/10/20 12:30 PM, Kees Cook wrote:
> In order to check the matrix of possible states for handling
> READ_IMPLIES_EXEC across native, compat, and the state of PT_GNU_STACK,
> add tests for these execution conditions.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

No issues for this to go through tip.

A few problems to fix first. This fails to compile when 32-bit libraries
aren't installed. It should fail the 32-bit part and run other checks.

make kselftest TARGETS=exec
make --no-builtin-rules ARCH=x86 -C ../../.. headers_install
make[2]: Entering directory '/lkml/linux_5.6'
   INSTALL ./usr/include
make[2]: Leaving directory '/lkml/linux_5.6'
make[2]: Entering directory '/lkml/linux_5.6/tools/testing/selftests/exec'
gcc -m32 -Wall -Wno-nonnull -D_GNU_SOURCE -Wl,-z,noexecstack -o 
/lkml/linux_5.6/tools/testing/selftests/exec/rie-compat-nx-gnu-stack.new 
read_implies_exec.c
readelf -Wl 
/lkml/linux_5.6/tools/testing/selftests/exec/rie-compat-nx-gnu-stack.new 
| grep GNU_STACK | grep -q 'RW ' && \
mv 
/lkml/linux_5.6/tools/testing/selftests/exec/rie-compat-nx-gnu-stack.new 
/lkml/linux_5.6/tools/testing/selftests/exec/rie-compat-nx-gnu-stack
In file included from /usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h:9,
                  from read_implies_exec.c:6:
/usr/include/stdint.h:26:10: fatal error: bits/libc-header-start.h: No 
such file or directory
    26 | #include <bits/libc-header-start.h>
       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
readelf: Error: 
'/lkml/linux_5.6/tools/testing/selftests/exec/rie-compat-nx-gnu-stack.new': 
No such file
make[2]: *** [Makefile:58: 
/lkml/linux_5.6/tools/testing/selftests/exec/rie-compat-nx-gnu-stack] 
Error 1
make[2]: Leaving directory '/lkml/linux_5.6/tools/testing/selftests/exec'
make[1]: *** [Makefile:150: all] Error 2
make: *** [Makefile:1217: kselftest] Error 2

thanks,
-- Shuah

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
