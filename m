Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B001233DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 18:48:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9T5kDZUIR5PFjQsNVV95BazWPRlAsGVUqafisXjSp84=; b=PcQdYtP/WKVT9B
	hhHYOX7mO8SP1ckgOFweVN5ysNMlnFsCBIGxOwaXfTLM9Nky3RY//BiZ6SWIOEoV7UcBFOYOhwPfa
	WT4/zRSK62SGzd7mJy2v4udvQfE1Ji2I8+P1PxoYqBB2EOWYyRVsUzSyHTLZ9Th1poEMMQ3Wihsb6
	hFhxdoEtdO4FEv1RxqgSmIqcvrSeOp4BpfMI5H5LuK6ZjZXwwD0Ebt0ieSP3/sPfZeWhO1LtrIXse
	6c+BpLY2sMlZ92HdVGh1ojBZXCsakMawp5iDH24hPQ/WruweqyxCCESwcGfi41bsqRqXO08iL6GBx
	sgnkfZYqyqaXEoOkEHqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihGxQ-0006RX-59; Tue, 17 Dec 2019 17:48:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihGxF-0006Qo-RA
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 17:48:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E743C30E;
 Tue, 17 Dec 2019 09:48:13 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 455AE3F67D; Tue, 17 Dec 2019 09:48:12 -0800 (PST)
Date: Tue, 17 Dec 2019 17:48:10 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH 12/22] arm64: mte: Add specific SIGSEGV codes
Message-ID: <20191217174808.GM5624@arrakis.emea.arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-13-catalin.marinas@arm.com>
 <CAK8P3a1-eaR7NddhDce65vXKCGeZD3xUMrTTAWN4U3oW0ecN=g@mail.gmail.com>
 <87zhfxqu1q.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zhfxqu1q.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_094817_918483_DA87BC88 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Richard Earnshaw <Richard.Earnshaw@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Linux-MM <linux-mm@kvack.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On Thu, Dec 12, 2019 at 12:26:41PM -0600, Eric W. Biederman wrote:
> Arnd Bergmann <arnd@arndb.de> writes:
> > On Wed, Dec 11, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >>
> >> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> >>
> >> Add MTE-specific SIGSEGV codes to siginfo.h.
> >>
> >> Note that the for MTE we are reusing the same SPARC ADI codes because
> >> the two functionalities are similar and they cannot coexist on the same
> >> system.
> 
> Please Please Please don't do that.
> 
> It is actively harmful to have architecture specific si_code values.
> As it makes maintenance much more difficult.
> 
> Especially as the si_codes are part of union descrimanator.
> 
> If your functionality is identical reuse the numbers otherwise please
> just select the next numbers not yet used.

It makes sense.

> We have at least 256 si_codes per signal 2**32 if we really need them so
> there is no need to be reuse numbers.
> 
> The practical problem is that architecture specific si_codes start
> turning kernel/signal.c into #ifdef soup, and we loose a lot of
> basic compile coverage because of that.  In turn not compiling the code
> leads to bit-rot in all kinds of weird places.

Fortunately for MTE we don't need to change kernel/signal.c. It's
sufficient to call force_sig_fault() from the arch code with the
corresponding signo, code and fault address.

> p.s. As for coexistence there is always the possibility that one chip
> in a cpu family does supports one thing and another chip in a cpu
> family supports another.  So userspace may have to cope with the
> situation even if an individual chip doesn't.
> 
> I remember a similar case where sparc had several distinct page table
> formats and we had a single kernel that had to cope with them all.

We have such fun on ARM as well with the big.LITTLE systems where not
all CPUs support the same features. For example, MTE is only enabled
once all the secondary CPUs have booted and confirmed to have the
feature.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
