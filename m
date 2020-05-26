Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E0C1E2463
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 16:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwambJNcu3EOVo1vsPfQrAZwFkaBgT6WV9pHpbHW1Y4=; b=Y5tMfpZKgmZO4z
	i0aLvIfFvZR23pINWTTrs6TePDcGEn5/hHAksmFUWbVpfkc57rrua33ctmEEvTnAP3crdPINKcMnP
	9l/XOTAx0S+NX9ZD+RhFWwDbf/ZciOw1rJ0WDp6vVFV+U18cQBEVEyvaA7sL0Jjs8oj6Xkjo9iixk
	oAKsmmdRz3+wBYCeIClprjzYeGfQ7rEisJu6v7LhG5/fxrLBccuzHH6TlXlohSaodcNfD/8ejU/oB
	4nPXxwRuqEOzYh9AHUKOmwdDDCup3h4GCj50Dg9ukt4f+O++2PyJvUpsIk5LKTy8kg77gezlI5jHP
	7WWX/QmrSPY0yUs4pcSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdapn-0005HR-B9; Tue, 26 May 2020 14:45:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdapd-0005Gx-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 14:45:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33E151FB;
 Tue, 26 May 2020 07:45:28 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 372023F305;
 Tue, 26 May 2020 07:45:27 -0700 (PDT)
Date: Tue, 26 May 2020 15:45:25 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 13/14] prctl.2: Add SVE prctls (arm64)
Message-ID: <20200526144524.GR5031@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-14-git-send-email-Dave.Martin@arm.com>
 <20200513084351.GB18196@willie-the-truck>
 <20200513104635.GD21779@arm.com>
 <a01fc572-cac8-1932-c3e5-c70184417ca3@gmail.com>
 <20200513140200.GP21779@arm.com>
 <20200513211153.GB28594@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513211153.GB28594@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_074529_361512_C6DFB1F5 
X-CRM114-Status: GOOD (  28.18  )
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 10:11:54PM +0100, Will Deacon wrote:
> On Wed, May 13, 2020 at 03:02:00PM +0100, Dave Martin wrote:
> > On Wed, May 13, 2020 at 01:01:12PM +0200, Michael Kerrisk (man-pages) wrote:
> > > On 5/13/20 12:46 PM, Dave Martin wrote:
> > > > On Wed, May 13, 2020 at 09:43:52AM +0100, Will Deacon wrote:
> > > >> On Tue, May 12, 2020 at 05:36:58PM +0100, Dave Martin wrote:

[...]

> > > >>> +If
> > > >>> +.B PR_SVE_VL_INHERIT
> > > >>> +is also included in
> > > >>> +.IR arg2 ,
> > > >>> +it takes effect
> > > >>> +.I after
> > > >>> +this deferred change.
> > > >>
> > > >> I find this a bit hard to follow, since it's not clear to me whether the
> > > >> INHERIT flag is effectively set before or after the next execve(). In other
> > > >> words, if both PR_SVE_SET_VL_ONEXEC and PR_SVE_VL_INHERIT are specified,
> > > >> is the vector length preserved or reset on the next execve()?
> > > > 
> > > > It makes no difference, because the ONEXEC handling takes priority over
> > > > the INHERIT handling. But either way INHERIT is never cleared by execve()
> > > > and will apply at subsequent execs().
> > > > 
> > > > Explaining all this properly seems out of scope here.  Maybe this should
> > > > be trimmed down rather than elaborated?  Or perhaps just explain it in
> > > > terms of what the kernel does instead of futile attempts to make it
> > > > intuitive?
> 
> Hmm, if we don't explain it in the man page then we should at least point
> people to somewhere where they can get the gory details, because I think
> they're necessary in order to use the prctl() request correctly. I'm still
> not confident that I understand the semantics of setting both
> PR_SVE_SET_VL_ONEXEC and PR_SVE_VL_INHERIT without reading the code, which
> may change.

On this point, can you review the following wording?

I simply enumerate the possible flag combinations now, rather than tying
myself in knots trying to describe the two flags independently.

Cheers
---Dave

--8<--

       PR_SVE_SET_VL (since Linux 4.15, only on arm64)
              Configure the thread's SVE vector length, as specified by  (int)
              arg2.  Arguments arg3, arg4 and arg5 are ignored.

              The bits of arg2 corresponding to PR_SVE_VL_LEN_MASK must be set
              to the desired vector length in bytes.  This is  interpreted  as
              an  upper  bound:  the kernel will select the greatest available
              vector length that does not exceed the value specified.  In par-
              ticular,  specifying  SVE_VL_MAX (defined in <asm/sigcontext.h>)
              for the PR_SVE_VL_LEN_MASK bits requests the  maximum  supported
              vector length.

              In  addition,  arg2  may  include  the following combinations of
              flags:

              0      Perform the change immediately.  At the next execve(2) in
                     the  thread, the vector length will be reset to the value
                     configured in /proc/sys/abi/sve_default_vector_length.

              PR_SVE_VL_INHERIT
                     Perform the  change  immediately.   Subsequent  execve(2)
                     calls will preserve the new vector length.

              PR_SVE_SET_VL_ONEXEC
                     Defer  the  change,  so  that it is performed at the next
                     execve(2) in the thread.  Further  execve(2)  calls  will
                     reset  the  vector  length  to  the  value  configured in
                     /proc/sys/abi/sve_default_vector_length.

              PR_SVE_SET_VL_ONEXEC | PR_SVE_VL_INHERIT
                     Defer the change, so that it is  performed  at  the  next
                     execve(2)  in  the  thread.  Further execve(2) calls will
                     preserve the new vector length.

              In all cases, any previously pending  deferred  change  is  can-
              celed.

              The  call fails with error EINVAL if SVE is not supported on the
              platform, if arg2 is unrecognized or invalid, or  the  value  in
              the  bits of arg2 corresponding to PR_SVE_VL_LEN_MASK is outside
              the range SVE_VL_MIN..SVE_VL_MAX, or is not a multiple of 16.

              On success, a nonnegative value is returned that  describes  the
              selected  configuration,  which may differ from the current con-
              figuration if PR_SVE_SET_VL_ONEXEC was specified.  The value  is
              encoded in the same way as the return value of PR_SVE_GET_VL.

              The  configuration  (including  any  pending deferred change) is
              inherited across fork(2) and clone(2).

              For more information, see  the  kernel  source  file  Documenta-
              tion/arm64/sve.rst  (or Documentation/arm64/sve.txt before Linux
              5.3).

              Warning: Because the compiler or  run-time  environment  may  be
              using SVE, using this call without the PR_SVE_SET_VL_ONEXEC flag
              can lead to unpredicable behaviour in the calling process.   The
              conditions for using it safely are complex and system-dependent.
              Don't use it unless you really know what you are doing.

-->8--

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
