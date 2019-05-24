Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C97AC29E29
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ra7BVXTBXjUzufQb6FBUnQqSRoQaJMDvrtHp1MvZ3yY=; b=OGjko81pjcbjBL
	o42m7ld3IXceZGaUjXMx04hhCIwSq47QadG5+gF46l43XwhB5rVyldtqWoL8cUjdkhQB4v5SfcWS4
	weTeBa/XewxqmD1dNbLXEqWUUDZ7j7ykJxAsgIPt6w7BE3MzSpmwwA00XRVU/62UfmF5tgnOignK2
	ZCBbJahMCndC70zqzsJSrLQYeLujZhnY8Rdbug1iPCYHI/i+/Te75eJNNnNbdEQzPVvQMN8f6mH1u
	qlMcEHIIYUvWbPi6d/CXX05PQyCYhoymMjtPoOOU0j0TqBePCQzSYyrs44XGUpKZtVdGENfjwhpC0
	cIR1k8dpXK9K+BsvrABw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUF2w-0003W7-L6; Fri, 24 May 2019 18:36:02 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUF2p-0003Vc-NR
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 18:35:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E187EA78;
 Fri, 24 May 2019 11:35:54 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 89E403F703;
 Fri, 24 May 2019 11:35:53 -0700 (PDT)
Date: Fri, 24 May 2019 19:35:51 +0100
From: Will Deacon <will.deacon@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v2 3/3] arm64: use the correct function type for
 __arm64_sys_ni_syscall
Message-ID: <20190524183551.GE9697@fuggles.cambridge.arm.com>
References: <20190503191225.6684-1-samitolvanen@google.com>
 <20190503191225.6684-4-samitolvanen@google.com>
 <20190507172512.GA35803@lakrids.cambridge.arm.com>
 <20190507183227.GA10191@google.com>
 <20190515114035.GG24357@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515114035.GG24357@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_113555_768772_400FCF43 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sami,

On Wed, May 15, 2019 at 12:40:39PM +0100, Will Deacon wrote:
> On Tue, May 07, 2019 at 11:32:27AM -0700, Sami Tolvanen wrote:
> > On Tue, May 07, 2019 at 06:25:12PM +0100, Mark Rutland wrote:
> > > I strongly think that we cant to fix up the common definition in
> > > kernel/sys_ni.c rather than having a point-hack in arm64. Other
> > > architectures (e.g. x86, s390) will want the same for CFI, and I'd like
> > > to ensure that our approached don't diverge.
> > 
> > s390 already has the following in arch/s390/kernel/sys_s390.c:
> > 
> >   SYSCALL_DEFINE0(ni_syscall)
> >   {
> >         return -ENOSYS;
> >   }
> > 
> > Which, I suppose, is cleaner than calling sys_ni_syscall.
> > 
> > > I took a quick look, and it looks like it's messy but possible to fix
> > > up the core.
> > 
> > OK. How would you propose fixing this?
> 
> In the absence of a patch from Mark, I'd suggest just adding a SYS_NI macro
> to our asm/syscall_wrapper.h file which avoids the error injection stuff. It
> doesn't preclude moving this to the core later on, but it unblocks the CFI
> work.

Do you plan to repost this?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
