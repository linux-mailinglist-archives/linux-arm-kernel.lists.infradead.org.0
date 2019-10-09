Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61A1D0C21
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 12:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n3CqzeUMmiU5cyRRe67OnBdAib1W8fgFkHQBvxfl/uw=; b=ZNSUan3/XH0neRAmvB1aGOI0o
	wNhZqPs8C2hMYEzTZLiUqFS8t26dU5aguwSYHTmcRbl+FISinT7fHITIDVu7zX3/64a2I2yhIxnlw
	cAHSYf1ZC0L6U6M/BOUlAjwzGqBmPg4cy2oGFiZHwtqToMp5b2xG+a0W/5TPGwGNc3guHHpQybLgs
	iFdVLu4IUo6B2QpVBXMW+xN6azZTGNWnlIhhS+camvnpU5R1dUeJ1XzRYhV2T99jrJNjhpj9PtoRj
	4KWgYpScJ4AtNOt1i7n3lC/zy5xBB8UX9b0tOKOATxewGWh9lSae97EE6HoGO12947RuAGG2HmDYO
	mtj1z8AYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8oi-0002UQ-Nh; Wed, 09 Oct 2019 10:03:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8oa-0002Tv-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 10:03:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A435F28;
 Wed,  9 Oct 2019 03:03:27 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 137A73F68E;
 Wed,  9 Oct 2019 03:03:25 -0700 (PDT)
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
 <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
 <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
 <CABCJKucPcqSS=8dP-6hOwGpKUYxOk8Q_Av83O0A2A85JKznypQ@mail.gmail.com>
 <c0f0eb7e-9e46-10cc-1277-b37fcd48d0be@arm.com>
 <CAKv+Gu82ERZjaEH265+RNVjtQSk51ekHONniDZg-4vWy1VHkuQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <240f81a1-4fe5-0ff3-f97a-0c9aa6b68e03@arm.com>
Date: Wed, 9 Oct 2019 11:03:16 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu82ERZjaEH265+RNVjtQSk51ekHONniDZg-4vWy1VHkuQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_030328_768713_B6E20910 
X-CRM114-Status: GOOD (  13.54  )
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-08 10:03 pm, Ard Biesheuvel wrote:
> On Tue, 8 Oct 2019 at 18:19, Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 08/10/2019 16:22, Sami Tolvanen wrote:
>>> On Mon, Oct 7, 2019 at 2:46 PM 'Nick Desaulniers' via Clang Built
>>> Linux <clang-built-linux@googlegroups.com> wrote:
>>>> I'm worried that one of these might lower to LSE atomics without
>>>> ALTERNATIVE guards by blanketing all C code with `-march=armv8-a+lse`.
>>>
>>> True, that's a valid concern. I think adding the directive to each
>>> assembly block is the way forward then, assuming the maintainers are
>>> fine with that.
>>
>> It's definitely a valid concern in principle, but in practice note that
>> lse.h ends up included in ~99% of C files, so the extension is enabled
>> more or less everywhere already.
>>
> 
> lse.h currently does
> 
> __asm__(".arch_extension        lse");
> 
> which instructs the assembler to permit the use of LSE opcodes, but it
> does not instruct the compiler to emit them, so this is not quite the
> same thing.

Derp, of course it isn't. And IIRC we can't just pass the option through 
with -Wa either because at least some versions of GCC emit an explicit 
.arch directive at the top of the output. Oh well; sorry for the 
distraction.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
