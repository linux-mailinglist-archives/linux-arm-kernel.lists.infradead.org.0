Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8334349A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlOVwqVOA2G+ayuG4dJSHnzByDhfC1DmCxi6tfm4kKk=; b=hZ9aseUhon8iOr
	4s5PRJC4rbSALeBAGWZRwshwSClv3Xdb0oqdw6xp2zf0CPRNePA38g86euteZh/W/XMB1O+6hbfof
	/zfhkwNI2ZNd29WRSRzKAVinz8FJc6KNC3cl+sguNS6R+rLDApu0XswjgLczY3JjQYbGiY9eiC8K2
	Z3KrHXtQEejhsmpQxT538WAKUpQiUVEDQLwmWEXUCU6nKEqTSmlwPnS9M9gwaOyyC6Kk88M7kjALX
	nYwprFReWVqvjq++DXbXrEiQiryunKtUOOom3BDGSyqb4NAqOIFnvzxhhJg8yriEF/xnjRHY/zyGS
	kKCwNik8oUtCRd/SuUVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLv7-00008P-Gl; Thu, 13 Jun 2019 09:21:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLut-00007u-Nh
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:21:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E080367;
 Thu, 13 Jun 2019 02:21:06 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 999743F694;
 Thu, 13 Jun 2019 02:21:02 -0700 (PDT)
Date: Thu, 13 Jun 2019 10:20:59 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
Subject: Re: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Message-ID: <20190613092054.GO28951@C02TF0J2HF1T.local>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-2-vincenzo.frascino@arm.com>
 <a90da586-8ff6-4bed-d940-9306d517a18c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a90da586-8ff6-4bed-d940-9306d517a18c@arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_022107_860707_F28CF718 
X-CRM114-Status: GOOD (  26.28  )
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>, nd <nd@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Szabolcs,

On Wed, Jun 12, 2019 at 05:30:34PM +0100, Szabolcs Nagy wrote:
> On 12/06/2019 15:21, Vincenzo Frascino wrote:
> > +2. ARM64 Tagged Address ABI
> > +---------------------------
> > +
> > +From the kernel syscall interface prospective, we define, for the purposes
>                                      ^^^^^^^^^^^
> perspective
> 
> > +of this document, a "valid tagged pointer" as a pointer that either it has
> > +a zero value set in the top byte or it has a non-zero value, it is in memory
> > +ranges privately owned by a userspace process and it is obtained in one of
> > +the following ways:
> > +  - mmap() done by the process itself, where either:
> > +    * flags = MAP_PRIVATE | MAP_ANONYMOUS
> > +    * flags = MAP_PRIVATE and the file descriptor refers to a regular
> > +      file or "/dev/zero"
> 
> this does not make it clear if MAP_FIXED or other flags are valid
> (there are many map flags i don't know, but at least fixed should work
> and stack/growsdown. i'd expect anything that's not incompatible with
> private|anon to work).

Just to clarify, this document tries to define the memory ranges from
where tagged addresses can be passed into the kernel in the context
of TBI only (not MTE); that is for hwasan support. FIXED or GROWSDOWN
should not affect this.

> > +  - a mapping below sbrk(0) done by the process itself
> 
> doesn't the mmap rule cover this?

IIUC it doesn't cover it as that's memory mapped by the kernel
automatically on access vs a pointer returned by mmap(). The statement
above talks about how the address is obtained by the user.

> > +  - any memory mapped by the kernel in the process's address space during
> > +    creation and following the restrictions presented above (i.e. data, bss,
> > +    stack).
> 
> OK.
> 
> Can a null pointer have a tag?
> (in case NULL is valid to pass to a syscall)

Good point. I don't think it can. We may change this for MTE where we
give a hint tag but no hint address, however, this document only covers
TBI for now.

> > +The ARM64 Tagged Address ABI is an opt-in feature, and an application can
> > +control it using the following prctl()s:
> > +  - PR_SET_TAGGED_ADDR_CTRL: can be used to enable the Tagged Address ABI.
> > +  - PR_GET_TAGGED_ADDR_CTRL: can be used to check the status of the Tagged
> > +                             Address ABI.
> > +
> > +As a consequence of invoking PR_SET_TAGGED_ADDR_CTRL prctl() by an applications,
> > +the ABI guarantees the following behaviours:
> > +
> > +  - Every current or newly introduced syscall can accept any valid tagged
> > +    pointers.
> > +
> > +  - If a non valid tagged pointer is passed to a syscall then the behaviour
> > +    is undefined.
> > +
> > +  - Every valid tagged pointer is expected to work as an untagged one.
> > +
> > +  - The kernel preserves any valid tagged pointers and returns them to the
> > +    userspace unchanged in all the cases except the ones documented in the
> > +    "Preserving tags" paragraph of tagged-pointers.txt.
> 
> OK.
> 
> i guess pointers of another process are not "valid tagged pointers"
> for the current one, so e.g. in ptrace the ptracer has to clear the
> tags before PEEK etc.

Another good point. Are there any pros/cons here or use-cases? When we
add MTE support, should we handle this differently?

> > +A definition of the meaning of tagged pointers on arm64 can be found in:
> > +Documentation/arm64/tagged-pointers.txt.
> > +
> > +3. ARM64 Tagged Address ABI Exceptions
> > +--------------------------------------
> > +
> > +The behaviours described in paragraph 2, with particular reference to the
> > +acceptance by the syscalls of any valid tagged pointer are not applicable
> > +to the following cases:
> > +  - mmap() addr parameter.
> > +  - mremap() new_address parameter.
> > +  - prctl_set_mm() struct prctl_map fields.
> > +  - prctl_set_mm_map() struct prctl_map fields.
> 
> i don't understand the exception: does it mean that passing a tagged
> address to these syscalls is undefined?

I'd say it's as undefined as it is right now without these patches. We
may be able to explain this better in the document.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
