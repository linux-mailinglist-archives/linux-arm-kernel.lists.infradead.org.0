Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB541FC30C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 02:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbcbiZ7p9OIq9qroIDNIbINQkYdaq6AFqV6f56Mat7c=; b=LLWFpxnrCOUYjw
	djuXN3wLT0pX5gThhyXxqVUwLm6aOQ9DR38S2S0FvxaZjyQLhNtseyq6E4/FELVTFZuq18uWZ1JXS
	o4WU3luycZ/pv0NsjMialhqU/dyYDA+XXJcM63TF7Y2gdBeMr0OEijPeRy0oJfql+NQUyg3w8gogs
	0TjT9sKhFQO5vo67J+KrSBDhsphP7k73cGWY6/1EcTs0zAZ/OQREPjlfv1T938RcLIxJ+p1JOQ8kE
	WyxPz2PnxeZmgtGivVIi0ukqZmulYYXN9CKXoDeI32Uv0a1P2NgtvsvLb3ww4ii1XC2CEYySHW7u8
	9ObmClgCtQqmWH6WFfMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlMMH-0007Ht-9U; Wed, 17 Jun 2020 00:55:17 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlMLu-0007Gf-E2
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 00:54:57 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49mmn31DRrz9sRR;
 Wed, 17 Jun 2020 10:54:47 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1592355289;
 bh=Tt4ck1L8nY61ACyfCaQSk9IvU7WHJrdCNXj+0siSSyg=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=X9ymJOnvys9Xta0MkoWBUczKpvqc1UyN/Q9aQyWmLXe1VKUTEmNDQSj0rsR9Q534F
 p6Cep2OQrqfnlebt9PQxQzVrQBhhGf8vxbnkZ2KkloITdv6wE3e3fWf2KzjAQ/3rHv
 4Rf2KtyRVAUQ0TfXasgP2KtS5MyWwwXfSxOEHZFxwBGwJ77QG/uKkxjIM9la7HY3Yo
 s6mWsZ+5Aa9gVpDy6HW9lFlvnILbbuGiSBVRHnfji5SIv8PgYQDi4XcBz//pG5rD8Z
 yHLXPGR8ugwb3hM4yDbup0N8aruEnPrwavrRY0cCsW8tvoiEuDekDUjg2hB93vQcq9
 r0IQCg06h+QGQ==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH 00/25] mm: Page fault accounting cleanups
In-Reply-To: <CAHk-=wiTjaXHu+uxMi0xCZQOm4KVr0MucECAK=Zm4p4YZZ1XEg@mail.gmail.com>
References: <20200615221607.7764-1-peterx@redhat.com>
 <CAHk-=wiTjaXHu+uxMi0xCZQOm4KVr0MucECAK=Zm4p4YZZ1XEg@mail.gmail.com>
Date: Wed, 17 Jun 2020 10:55:14 +1000
Message-ID: <87imfqecjx.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_175455_228809_02D356EE 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Linus Torvalds <torvalds@linux-foundation.org> writes:
> On Mon, Jun 15, 2020 at 3:16 PM Peter Xu <peterx@redhat.com> wrote:
>> This series tries to address all of them by introducing mm_fault_accounting()
>> first, so that we move all the page fault accounting into the common code base,
>> then call it properly from arch pf handlers just like handle_mm_fault().
>
> Hmm.
>
> So having looked at this a bit more, I'd actually like to go even
> further, and just get rid of the per-architecture code _entirely_.

<snip>

> One detail worth noting: I do wonder if we should put the
>
>     perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
>
> just in the arch code at the top of the fault handling, and consider
> it entirely unrelated to the major/minor fault handling. The
> major/minor faults fundamnetally are about successes. But the plain
> PERF_COUNT_SW_PAGE_FAULTS could be about things that fail, including
> things that never even get to this point at all.

Yeah I think we should keep it in the arch code at roughly the top.

If it's moved to the end you could have a process spinning taking bad
page faults (and fixing them up), and see no sign of it from the perf
page fault counters.

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
