Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDA81BCC84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NedyWF8h2cLLqQL7Dp0pZE+ekfMSGXRZk7FmqEyj230=; b=ktUH8aHsbzY3H3
	NrvY2+QcIMCpV8J2Ru2gd1dw9WpaJthmM3S5arCff6I9CMtAr9LpqcVi0uQiiJQJbmfetaAXRPf+b
	4dRWACosRzuSAu3DEEDidX35GTf/XQy9yVHnWLYHrvJUNMzBuyzHaprohL12sXLYCRWwavnz+TcvX
	UAK4El2IkGDA5wVMpC9RH3Fq1iYHRLZEYfKAm7J+OW7WnFMBhPbxZT7pAOv21urBS3LBDIlkwvc+X
	l1s3CX7h3NZTOiW92emwhS4B+DT7IA7B4kfAVZoYuBl5W7LHvZV2MY5JNQu2p4HnV90laomDVD1s0
	niThSUCMQsv3Njgn7LZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTW5h-0005Nt-Tf; Tue, 28 Apr 2020 19:40:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTW5S-00056X-SU
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 19:40:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E5C5C14;
 Tue, 28 Apr 2020 12:40:10 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE6B73F68F;
 Tue, 28 Apr 2020 12:40:05 -0700 (PDT)
Date: Tue, 28 Apr 2020 20:40:01 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kevin Brodsky <kevin.brodsky@arm.com>
Subject: Re: [PATCH v3 20/23] fs: Allow copy_mount_options() to access
 user-space in a single pass
Message-ID: <20200428194001.GB35158@C02TF0J2HF1T.local>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-21-catalin.marinas@arm.com>
 <9544d86b-d445-3497-fbbf-56c590400f83@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9544d86b-d445-3497-fbbf-56c590400f83@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_124011_304558_AD575E82 
X-CRM114-Status: GOOD (  18.95  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 07:16:29PM +0100, Kevin Brodsky wrote:
> On 21/04/2020 15:26, Catalin Marinas wrote:
> > diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> > index 32fc8061aa76..566da441eba2 100644
> > --- a/arch/arm64/include/asm/uaccess.h
> > +++ b/arch/arm64/include/asm/uaccess.h
> > @@ -416,6 +416,17 @@ extern unsigned long __must_check __arch_copy_in_user(void __user *to, const voi
> >   #define INLINE_COPY_TO_USER
> >   #define INLINE_COPY_FROM_USER
> > +static inline bool arch_has_exact_copy_from_user(unsigned long n)
> > +{
> > +	/*
> > +	 * copy_from_user() aligns the source pointer if the size is greater
> > +	 * than 15. Since all the loads are naturally aligned, they can only
> > +	 * fail on the first byte.
> > +	 */
> > +	return n > 15;
> > +}
> > +#define arch_has_exact_copy_from_user
> > +
> >   extern unsigned long __must_check __arch_clear_user(void __user *to, unsigned long n);
> >   static inline unsigned long __must_check __clear_user(void __user *to, unsigned long n)
> >   {
> > diff --git a/fs/namespace.c b/fs/namespace.c
> > index a28e4db075ed..8febc50dfc5d 100644
> > --- a/fs/namespace.c
> > +++ b/fs/namespace.c
> > @@ -3025,13 +3025,16 @@ void *copy_mount_options(const void __user * data)
> >   	if (!copy)
> >   		return ERR_PTR(-ENOMEM);
> > -	size = PAGE_SIZE - offset_in_page(data);
> > +	size = PAGE_SIZE;
> > +	if (!arch_has_exact_copy_from_user(size))
> > +		size -= offset_in_page(data);
> > -	if (copy_from_user(copy, data, size)) {
> > +	if (copy_from_user(copy, data, size) == size) {
> >   		kfree(copy);
> >   		return ERR_PTR(-EFAULT);
> >   	}
> >   	if (size != PAGE_SIZE) {
> > +		WARN_ON(1);
> 
> I'm not sure I understand the rationale here. If we don't have exact
> copy_from_user for size, then we will attempt to copy up to the end of the
> page. Assuming this doesn't fault, we then want to carry on copying from the
> start of the next page, until we reach a total size of up to 4K. Why would
> we warn in that case?

We shouldn't warn, thanks for spotting this. I added it for some testing
and somehow ended up in the commit.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
