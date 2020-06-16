Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CAA1FC099
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 23:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6valxaSnBXY9iGpsMf/OFbG8WwmGVfQ0ZLL+E99+pA=; b=HveNhYr8RPCxfC
	YZqVq8EfrnZFE6spxFkxwbbV4wNK4+hv+qy3+cBs9pAHmpAyARdAiYvShn8UU/7MJFkm+1ufupYkr
	vFAka/kJtmUF6y3sQ59SBZ8YXyrJe9vr5VTJDyjGSrrZsom6JWg/BVu/f/KaZijgvmIzi4mQWLKHq
	OoVzi99Zauiv0Z92ccJos0xHbJry1sH1Qi+MZkK1XyOhUt1OrSw2I5H6cpgufhOqd5zNvmO+f8VA8
	VdtQcNP8YOFn2zAGAYNDd7G339bm8AN29y8HlmiusrBDBixj5fi/IM/fyAjoRvVntvMHVBoZzUltu
	cRKtjf40P93l4kDtnZqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlIjx-0008Gg-HT; Tue, 16 Jun 2020 21:03:29 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlIjo-0008GB-E6
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 21:03:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592341399;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jrv6u/IyjeoGyX7Yz14HGrcrd86qr4fiQrLVf2Tt4MM=;
 b=hVpczUsoqBZt03Thvoz+WtWQa/iDX8M52QOQ4jeucvYiEdQPeOXDa3MooKDbkGCfQIW3Yf
 2hGWP2wEyOS42CjBrdDtQiz7oiIH2O+EA69cFUfTN3GjNeexvimufBAUGLdx325AKW1C/z
 wgpu/VEAZrBSPTx54RxiMqrEvRMcCRU=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-8hBzAoHRPFy440L20Q0KIg-1; Tue, 16 Jun 2020 17:03:16 -0400
X-MC-Unique: 8hBzAoHRPFy440L20Q0KIg-1
Received: by mail-qt1-f197.google.com with SMTP id y5so17737017qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 14:03:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jrv6u/IyjeoGyX7Yz14HGrcrd86qr4fiQrLVf2Tt4MM=;
 b=t2Vuy5+Ot1wPsmwqNyCVU+gtrO90C1uDgDMY/dYmqPTogSPcoMlKPXOfl7j5cNVuLv
 zZlCqNJLasyfh0dHhSI42XnqD4XjQBJx4wQc8IGdH4+G+ukW9L1zZDPGfnzY8tM9EFBn
 Wh43LgT128dIzTxPsnSmV99iZcDeWksDF+WQN2HxnYtBEHxPm/sIJ+2mfI9+LPxuWz2R
 8ljBhhBrPdxmZm2AZ/YXvM4sdSa+lD33Yp/SyGsGe88JfcrgyunOw8znU1sZ95thsCIW
 ruJ8G0nV+LKFPrjQVai7KxQanBCSWsGnM5cKWhetX82346ldXV6tZzO2rQBBC8N+dan/
 vjjw==
X-Gm-Message-State: AOAM531z6RS/1p0k8GS1kpivkGVNTZ0s1MpW84DY7C909JsFerFu/CNx
 Yo9y1brY7lOmFgpnhPUtmlDNxfEU/jtyx8Qyj7FY+VK+JbI1IReNxDRCwy7LMjIak7n5Y7LawCE
 RE47MbIQZKu5PXSO+ov6AoS9UEfGQtYLvrjc=
X-Received: by 2002:ac8:6ec5:: with SMTP id f5mr23634390qtv.163.1592341395504; 
 Tue, 16 Jun 2020 14:03:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxF61Dh2xefzBMPBEm2C7AoRpqAxg6bYegNDhmpzkQWpsDpqFwc6dGag1E30rH+tRg9dP4ZMQ==
X-Received: by 2002:ac8:6ec5:: with SMTP id f5mr23634348qtv.163.1592341395148; 
 Tue, 16 Jun 2020 14:03:15 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id 6sm13935183qkl.26.2020.06.16.14.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 14:03:14 -0700 (PDT)
Date: Tue, 16 Jun 2020 17:03:12 -0400
From: Peter Xu <peterx@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 00/25] mm: Page fault accounting cleanups
Message-ID: <20200616210312.GF11838@xz-x1>
References: <20200615221607.7764-1-peterx@redhat.com>
 <CAHk-=wiTjaXHu+uxMi0xCZQOm4KVr0MucECAK=Zm4p4YZZ1XEg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHk-=wiTjaXHu+uxMi0xCZQOm4KVr0MucECAK=Zm4p4YZZ1XEg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_140320_558337_59030F19 
X-CRM114-Status: GOOD (  27.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 openrisc@lists.librecores.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 11:55:17AM -0700, Linus Torvalds wrote:
> On Mon, Jun 15, 2020 at 3:16 PM Peter Xu <peterx@redhat.com> wrote:
> >
> > This series tries to address all of them by introducing mm_fault_accounting()
> > first, so that we move all the page fault accounting into the common code base,
> > then call it properly from arch pf handlers just like handle_mm_fault().
> 
> Hmm.
> 
> So having looked at this a bit more, I'd actually like to go even
> further, and just get rid of the per-architecture code _entirely_.
> 
> Here's a straw-man patch to the generic code - the idea is mostly laid
> out in the comment that I'm just quoting here directly too:
> 
>         /*
>          * Do accounting in the common code, to avoid unnecessary
>          * architecture differences or duplicated code.
>          *
>          * We arbitrarily make the rules be:
>          *
>          *  - faults that never even got here (because the address
>          *    wasn't valid). That includes arch_vma_access_permitted()
>          *    failing above.
>          *
>          *    So this is expressly not a "this many hardware page
>          *    faults" counter. Use the hw profiling for that.
>          *
>          *  - incomplete faults (ie RETRY) do not count (see above).
>          *    They will only count once completed.
>          *
>          *  - the fault counts as a "major" fault when the final
>          *    successful fault is VM_FAULT_MAJOR, or if it was a
>          *    retry (which implies that we couldn't handle it
>          *    immediately previously).
>          *
>          *  - if the fault is done for GUP, regs wil be NULL and
>          *    no accounting will be done (but you _could_ pass in
>          *    your own regs and it would be accounted to the thread
>          *    doing the fault, not to the target!)
>          */
> 
> the code itself in the patch is
> 
>  (a) pretty trivial and self-evident
> 
>  (b) INCOMPLETE
> 
> that (b) is worth noting: this patch won't compile on its own. It
> intentionally leaves all the users without the new 'regs' argument,
> because you obviously simply need to remove all the code that
> currently tries to do any accounting.
> 
> Comments?

Looks clean to me.  The definition of "major faults" will slightly change even
for those who has done the "major |= fault & MAJOR" operations before, but at
least I can't see anything bad about that either...

To make things easier, we can use the 1st patch to introduce this change,
however pass regs==NULL at the callers to never trigger this accounting.  Then
we can still use one patch for each arch to do the final convertions.

> 
> This is a bigger change, but I think it might be worth it to _really_
> consolidate the major/minor logic.
> 
> One detail worth noting: I do wonder if we should put the
> 
>     perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
> 
> just in the arch code at the top of the fault handling, and consider
> it entirely unrelated to the major/minor fault handling. The
> major/minor faults fundamnetally are about successes. But the plain
> PERF_COUNT_SW_PAGE_FAULTS could be about things that fail, including
> things that never even get to this point at all.
> 
> I'm not convinced it's useful to have three SW events that are defined
> to be A=B+C.

IMHO it's still common to have a "total" statistics in softwares even if each
of the subsets are accounted separately.  Here it's just a bit special because
there're only two elements so the addition is so straightforward.  It seems a
trade-off on whether we'd like to do the accounting of errornous faults, or we
want to make it cleaner by put them altogether but only successful page faults.
I slightly preferred the latter due to the fact that I failed to find great
usefulness out of keeping error fault accountings, but no strong opinions..

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
