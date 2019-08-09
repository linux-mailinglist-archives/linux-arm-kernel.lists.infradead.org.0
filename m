Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1180A87A30
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 14:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EP88M0H+fmF0TNMDJqvH6WE2u57KdCdfO4YBfTsR0LQ=; b=uy7Bzmw2gn9zxz
	G1d0W4FOPJwUsX1YA/RI/PPFkwO/a3vfUhkinqDHdUKS5EWTlYkEUJUv/BYiAAxeMg/RiJguRUp39
	UaJOzf19285lR6BcIctdHzZJDQJbogvdR7Zaiba2i2KEQasgiomiMTwVAyWtpGSuwowi9sHGaBa44
	NcQ24RicbL8fNZq1KEIr7g+xQ7YrSaJb6HBZeGyLGscV7UQtanQPbYeYhMJ8lZw3ZvFZBBU3zAFmM
	3KPVH4FP+c4jjl732TE9nc8zZX9xht4qlAze42GZUDUwy7+x3RXnfzfPkUELDKd71T/GsDkhCNHlN
	BpSmHvPv9HIsk8GnavzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw44k-00016j-KB; Fri, 09 Aug 2019 12:32:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw44V-00015h-G2
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 12:32:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFE991596;
 Fri,  9 Aug 2019 05:32:36 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24BDD3F706;
 Fri,  9 Aug 2019 05:32:36 -0700 (PDT)
Date: Fri, 9 Aug 2019 13:32:34 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v3 02/11] kselftest: arm64: adds first test and common
 utils
Message-ID: <20190809123233.GM10425@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-3-cristian.marussi@arm.com>
 <20278fdd-95d0-060f-088d-aba8ac2b0b01@arm.com>
 <20190809111635.GL10425@arm.com>
 <4a73fcdf-911e-b44a-ce6b-f9bcde34eec8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4a73fcdf-911e-b44a-ce6b-f9bcde34eec8@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_053239_615868_7F9D4DC5 
X-CRM114-Status: GOOD (  24.52  )
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
Cc: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 01:20:45PM +0100, Cristian Marussi wrote:
> 
> Hi
> 
> On 8/9/19 12:16 PM, Dave Martin wrote:
> >On Fri, Aug 09, 2019 at 11:54:06AM +0100, Cristian Marussi wrote:
> >>Hi
> >>
> >>On 8/2/19 6:02 PM, Cristian Marussi wrote:
> >>>Added some arm64/signal specific boilerplate and utility code to help
> >>>further testcase development.
> >>>
> >>>A simple testcase and related helpers are also introduced in this commit:
> >>>mangle_pstate_invalid_compat_toggle is a simple mangle testcase which
> >>>messes with the ucontext_t from within the sig_handler, trying to toggle
> >>>PSTATE state bits to switch the system between 32bit/64bit execution state.
> >>>Expects SIGSEGV on test PASS.
> >>>
> >>>Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> >>>---

[...]

> >>diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.c b/tools/testing/selftests/arm64/signal/test_signals_utils.c
> >>index 31788a1d33a4..c0f3cd1b560a 100644
> >>--- a/tools/testing/selftests/arm64/signal/test_signals_utils.c
> >>+++ b/tools/testing/selftests/arm64/signal/test_signals_utils.c
> >>@@ -23,21 +23,25 @@ extern struct tdescr *current;
> >>  static int sig_copyctx = SIGTRAP;
> >>  static char *feats_store[FMAX_END] = {
> >>-       "SSBS",
> >>-       "PAN",
> >>-       "UAO",
> >>+       " SSBS ",
> >>+       " PAN ",
> >>+       " UAO ",
> >>  };
> >>  #define MAX_FEATS_SZ   128
> >>+static char feats_string[MAX_FEATS_SZ];
> >>+
> >>  static inline char *feats_to_string(unsigned long feats)
> >>  {
> >>-       static char feats_string[MAX_FEATS_SZ];
> >>+       for (int i = 0; i < FMAX_END; i++) {
> >>+               size_t tlen = 0;
> >>-       for (int i = 0; i < FMAX_END && feats_store[i][0]; i++) {
> >>-               if (feats & 1UL << i)
> >>-                       snprintf(feats_string, MAX_FEATS_SZ - 1, "%s %s ",
> >>-                                feats_string, feats_store[i]);
> >>+               if (feats & 1UL << i) {
> >>+                       strncat(feats_string, feats_store[i],
> >
> >Should this be feats_string + tlen?
> >
> 
> strncat appends to the end of a NULL terminated string overwriting the NULL itself and
> appending its own NULL (as long as dest and src do not overlap and fits the max size param),
> so it must be fed the start of the dest string to which we are appending
>
> >>+                               MAX_FEATS_SZ - 1 - tlen);

I see.  Yes, you're right -- I was confusing strncat() with strncpy().

> >An assert(tlen <= MAX_FEATS_SZ - 1) is probably a good idea here,
> >in case more features are added to feats_store[] someday.
> >
> 
> Yes in fact...if not it would be simply truncated silently

I think MAX_FEATS - 1 - tlen would overflow.  tlen is a size_t, so the
result would might be a giant unsigned number in this case, leading to a
potential buffer overrun in strncat().

> 
> >>+                       tlen += strlen(feats_store[i]);
> >>+               }
> >
> >Don't we need to initialise tlen outside the loop?  Otherwise we just
> >zero it again after the +=.
> 
> ..and that's a bug :<

OK

> >
> >>         }
> >>         return feats_string;
> >>@@ -190,7 +194,7 @@ static void default_handler(int signum, siginfo_t *si, void *uc)
> >>                 /* it's a bug in the test code when this assert fail */
> >>                 assert(!current->sig_trig || current->triggered);
> >>                 fprintf(stderr,
> >>-                       "SIG_OK -- SP:%p  si_addr@:0x%p  si_code:%d  token@:0x%p  offset:%ld\n",
> >>+                       "SIG_OK -- SP:%llX  si_addr@:0x%p  si_code:%d  token@:0x%p  offset:%ld\n",
> >
> >For consistency, can we have a "0x" prefix?
> >
> >I think %p usually generates a "0x" prefix by itself, so 0x%p might give
> >a double prefix.
> >
> 
> Yes you are right.
> 
> Moreover I'm in doubt what to do generally with all these stderr
> output, because I optionally discard to null testing standalone, but
> this is not what the KSFT framework runner script does, so
> arm64/signal tests end up being overly verbose when run from the
> framework (even if tests use anyway the KSFT exit codes conventions
> so all the results are correctly reported); but I suppose I'll
> receive a clear indication on this matter from the maintainers at the
> end...

Sure, keep the prints for now.  If they're potentially useful we can
always find a way to make them optional.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
