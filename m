Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDA4A7FF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 12:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/tDaxhcABGlb5Uez4oUv9gMm/7e/Qg23GEuaUfkd7c=; b=W1OfQgY1+SEAP6
	KIJTIx6bXR5/oFOYn9PjZ6P+MNz8DbWdGQC2SDACGuDtbfoWoaJ/wrH4Ba+biCgdXCA7PThi62YjW
	tNiNnnEtLwCip8M3LoXmEMT+6xhGZEeeh6JyQBbYeeCoBFdg0fJ5V2JHZeK4+3vlW1ANmdgx0+Lyl
	cxtGhWpIb9Qtdidd9Bs8cuNNl65N/K9EvmkN6L0RAGkdU33XppsNl5T8rWo2wTi45r/yI5+1VjRTO
	G6K5Kg9tDFRiKHCb+AyX3heutG0VAUwxmKgIBZ2gP3UMhLlKO8z9eANOtGKrPf3SljixxvAx8vyrg
	EsMZFoaLapfZNNevCinQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SAW-0002Dm-4N; Wed, 04 Sep 2019 10:05:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SAF-0002DM-6k
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 10:05:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 288A528;
 Wed,  4 Sep 2019 03:05:22 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B3003F246;
 Wed,  4 Sep 2019 03:05:21 -0700 (PDT)
Date: Wed, 4 Sep 2019 11:05:19 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v3 06/11] kselftest: arm64: fake_sigreturn_bad_magic
Message-ID: <20190904100516.GN27757@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-7-cristian.marussi@arm.com>
 <20190813162523.GD10425@arm.com>
 <245a3d64-2790-1768-94ab-d1ea56aa3d3d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <245a3d64-2790-1768-94ab-d1ea56aa3d3d@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_030523_321960_0944EA21 
X-CRM114-Status: GOOD (  18.36  )
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
Cc: andreyknvl@google.com, shuah@kernel.org, linux-kselftest@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 03:29:29PM +0100, Cristian Marussi wrote:
> Hi
> 
> On 13/08/2019 17:25, Dave Martin wrote:
> > On Fri, Aug 02, 2019 at 06:02:55PM +0100, Cristian Marussi wrote:

[...]

> >> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c

[...]

> >> +static int fake_sigreturn_bad_magic_run(struct tdescr *td,
> >> +					siginfo_t *si, ucontext_t *uc)
> >> +{
> >> +	size_t resv_sz, offset;
> >> +	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
> >> +
> >> +	/* just to fill the ucontext_t with something real */
> >> +	if (!get_current_context(td, &sf.uc))
> >> +		return 1;
> >> +
> >> +	resv_sz = GET_SF_RESV_SIZE(sf);
> >> +	/*
> >> +	 * find the terminator, preserving existing headers
> >> +	 * and verify amount of spare room in __reserved area.
> >> +	 */
> >> +	head = get_terminator(shead, resv_sz, &offset);
> >> +	/*
> >> +	 * try stripping extra_context header when low on space:
> >> +	 * we need at least 2*HDR_SZ space ... one for the KSFT_BAD_MAGIC
> >> +	 * and the other for the usual terminator.
> >> +	 */
> >> +	if (head && resv_sz - offset < HDR_SZ * 2) {
> > 
> > Can we factor out this logic for finding space in the signal frame?
> > 
> > We do pretty much the same thing in all the fake_sigreturn tests...
> 
> Ok
> > 
> >> +		fprintf(stderr, "Low on space:%zd. Discarding extra_context.\n",
> >> +			resv_sz - offset);
> >> +		head = get_header(shead, EXTRA_MAGIC, resv_sz, &offset);
> >> +	}
> >> +	/* just give up and timeout if still not enough space */
> > 
> > Do we actually time out?  I don't see where we actually wait, so doesn't
> > test_run() just fail immediately?
> > 
> > The same applies to all the other fake_sigreturn tests too.
> > 
> Right. It is probably a leftover.
> 
> SIGALRM is used as an extreme measure to kill tests gone bad, but this
> can happen only once the fake sigframe has been effectively placed on the stack
> and sigreturned.

OK, so this gets reported as a test failure because with no SIGSEGV,
nothing ever sets td->pass?

This is probably OK for now, though I wonder whether this should be
reported as a skipped test instead.

In case of doubt, reporting a failure is preferable anyway, since that
will encourage people actually to investigate what went wrong.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
