Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8AD9F76F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 02:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UP8JcpZl3SEQR3hyAOU3KyMX2QLLwMhBWnCR9ACISQ=; b=BO92UVw3xpwwRh
	G8TXNyhGvDV8w/vHd/I1Laf45YGdYDWM+sGG1xCbmPM8i/DZhkhuFBFnqv5Rm5CDZ2QqVkCfpr4iW
	wYW+UfjohdDik74UatDNqOguj4XNm8v+9BE7UYEZbWAOyKGedL5huHxYEtLaq8cjx9IJpctiP1ljN
	xtqcODcUk9t53lc3l6mPCwyidn4vALpqDwlCr3ySHZXqjXv9k3hvF+F4759OiIN7fSidCk8qOj768
	gIpxxby3IDtr0F8AP+flHq3n10zgOCAbHf4/ttSZmc12mxuXzzU6NbbZ1yjurk82TuLtWzBv61+MA
	fGq847H6oP68cFpRI+7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2lwp-0000JA-MU; Wed, 28 Aug 2019 00:36:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2lwh-0000Ik-B1
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 00:36:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id w11so352109plp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 17:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=wmS7FrQPukUY1SYRxTvvzLc7Vj+es0c1WkGNt9QAu3k=;
 b=MuaJswhO/hYBUjfZZyVJFR8oyAZKM/ig0OP3rDwDqD2YbiFFuNppsaq3UZL7LKvHSd
 2CKADiqfXNIj465C67ssRe2UTuIm3LtfLmZZfRpIO8kBQk1IJyhWxnki0866529lnm4P
 q+Velb3UI33KVOGRGEv8/33hFidA9ZMm7qqJZbPy87mtKNoARL57Co5X/3p1yZMF46+f
 +/1PyUysWkZKjFNhMC1MSgSB9+sy1V+jUOsJJlDlof6wK+00WRcsi4P+KhaXJNNP3xwo
 4REAB02FOxOmpT2HdckqeEFeYXeQZSrStRmvzYEzcbly6xBuFVi4metk4sjQO6EfMKXe
 14Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=wmS7FrQPukUY1SYRxTvvzLc7Vj+es0c1WkGNt9QAu3k=;
 b=cWw6TLpJ9iauu+sLhWWdkujGsh4pJgidDxAFftRluyZmVvIgIo5J7vwiqAhZui8WDR
 a+JCp2jTXNx9/RWjILi7CQ0HUS1YmUyuz0wE7GL0tYHo+9hYVJy+FDG6VyOVBfxW/V1G
 ZSfutCGadpl9JLT5mFcfCGzs+ou1U8v1IQuJalEdLn7aCX8RCpe+IMzNz5UgtXN7232/
 RpZ5zlGoQJdhb7JF7byvg186LBU6w2gMTpvWW9HHK8C3mbQSZkCUJ7iktJrtufIodcua
 aavGDokosuFvtkIVi6DLoGMVk4+onn1Cu0eLM+W91cxuWs00lQ75X23DaKjx7sBnKwWv
 DIPw==
X-Gm-Message-State: APjAAAV3bJS8CXx0l0qt984gFVHyh9URtUl8a2dGh0zgDCCvrK2+evik
 u11E/ceAwLzO7EtCh6kJNmJp8N8H
X-Google-Smtp-Source: APXvYqzAFp57WI5nRoBPJ95nSs4zG2MftKEUTRq3QXaFnRUDFp9tT6Esous8OROyD9OqLE2OC3fy3A==
X-Received: by 2002:a17:902:d686:: with SMTP id
 v6mr1695246ply.134.1566952577795; 
 Tue, 27 Aug 2019 17:36:17 -0700 (PDT)
Received: from localhost (14-202-91-55.tpgi.com.au. [14.202.91.55])
 by smtp.gmail.com with ESMTPSA id m34sm351963pje.5.2019.08.27.17.36.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 17:36:17 -0700 (PDT)
Date: Wed, 28 Aug 2019 10:35:24 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 0/6] Fix TLB invalidation on arm64
To: linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>
References: <20190827131818.14724-1-will@kernel.org>
In-Reply-To: <20190827131818.14724-1-will@kernel.org>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
Message-Id: <1566947104.2uma6s0pl1.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_173619_384100_C7DFC3F4 
X-CRM114-Status: GOOD (  24.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will Deacon's on August 27, 2019 11:18 pm:
> can actually raise a translation fault on the load instruction because the
> translation can be performed speculatively before the page table update and
> then marked as "faulting" by the CPU. For user PTEs, this is ok because we
> can handle the spurious fault, but for kernel PTEs and intermediate table
> entries this results in a panic().

powerpc sounds like it has the same coherency issue with stores vs loads 
from the MMU's page table walker, and a barrier called ptesync to order 
them.

> We can fix this by reverting 24fe1b0efad4fcdd, but the fun doesn't stop
> there. If we consider the unmap case, then a similar constraint applies to
> ordering subsequent memory accesses after the completion of the TLB
> invalidation, so we also need to add an ISB instruction to
> __flush_tlb_kernel_pgtable(). For user addresses, the exception return
> provides the necessary context synchronisation.
> 
> This then raises an interesting question: if an ISB is required after a TLBI
> instruction to prevent speculative translation of subsequent instructions,
> how is this speculation prevented on concurrent CPUs that receive the
> broadcast TLB invalidation message? Sending and completing a broadcast TLB
> invalidation message does not imply execution of an ISB on the remote CPU,
> however it /does/ require that the remote CPU will no longer make use of any
> old translations because otherwise we wouldn't be able to guarantee that an
> unmapped page could no longer be modified. In this regard, receiving a TLB
> invalidation is in some ways stronger than sending one (where you need the
> ISB).

Similar with powerpc's tlbie, sender requires extra barriers!

> So far, so good, but the final piece of the puzzle isn't quite so rosy.
> 
> *** Other architecture maintainers -- start here! ***
> 
> In the case that one CPU maps a page and then sets a flag to tell another
> CPU:
> 
> 	CPU 0
> 	-----
> 
> 	MOV	X0, <valid pte>
> 	STR	X0, [Xptep]	// Store new PTE to page table
> 	DSB	ISHST
> 	ISB
> 	MOV	X1, #1
> 	STR	X1, [Xflag]	// Set the flag
> 
> 	CPU 1
> 	-----
> 
> loop:	LDAR	X0, [Xflag]	// Poll flag with Acquire semantics
> 	CBZ	X0, loop
> 	LDR	X1, [X2]	// Translates using the new PTE
> 
> then the final load on CPU 1 can raise a translation fault for the same
> reasons as mentioned at the start of this description.

powerpc's ptesync instruction is defined to order MMU memory accesses on
all other CPUs. ptesync does not go out to the fabric though. How does
it work then?

Because the MMU coherency problem (at least we have) is not that the
load will begin to "partially" execute ahead of the store, enough to
kick off a table walk that goes ahead of the store, but not so much
that it violates the regular CPU barriers. It's just that the loads
from the MMU don't participate in the LSU pipeline, they don't snoop
the store queues aren't inserted into load queues so the regular
memory barrier instructions won't see stores from other threads cuasing
ordering violations.

In your first example, if powerpc just has a normal memory barrier
there instead of a ptesync, it could all execute completely
non-speculatively and in-order but still cause a fault, because the
table walker's loads didn't see the store in the store queue.

From the other side of the fabric you have no such problem. The table
walker is cache coherent apart from the local stores, so we don't need a 
special barrier on the other side. That's why ptesync doesn't broadcast.

I would be surprised if ARM's issue is different, but interested to 
hear if it is.

> In reality, code
> such as:
> 
> 	CPU 0				CPU 1
> 	-----				-----
> 	spin_lock(&lock);		spin_lock(&lock);
> 	*ptr = vmalloc(size);		if (*ptr)
> 	spin_unlock(&lock);			foo = **ptr;
> 					spin_unlock(&lock);
> 
> will not trigger the fault because there is an address dependency on
> CPU1 which prevents the speculative translation. However, more exotic
> code where the virtual address is known ahead of time, such as:
> 
> 	CPU 0				CPU 1
> 	-----				-----
> 	spin_lock(&lock);		spin_lock(&lock);
> 	set_fixmap(0, paddr, prot);	if (mapped)
> 	mapped = true;				foo = *fix_to_virt(0);
> 	spin_unlock(&lock);		spin_unlock(&lock);
> 
> could fault.

This is kind of a different issue, or part of a wider one at least.
Consider speculative execution more generally, any branch mispredict can 
send us off to crazy town executing instructions using nonsense register
values. CPU0 does not have to be in the picture, or any kernel page 
table modification at all, CPU1 alone will be doing speculative loads 
wildly all over the kernel address space and trying to access pages with
no pte.

Yet we don't have to flush TLB when creating a new kernel mapping, and
we don't get spurious kernel faults. The page table walker won't
install negative entries, at least not "architectural" i.e., that cause
faults and require flushing. My guess is ARM is similar, or you would 
have seen bigger problems by now?

If you have CPU0 doing a ro->rw upgrade on a kernel PTE, then it may
be possible another CPU1 would speculatively install a ro TLB and then
spurious fault on it when attempting to store to it. But no amount of
barriers would help because CPU1 could have picked up that TLB any time
in the past.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
