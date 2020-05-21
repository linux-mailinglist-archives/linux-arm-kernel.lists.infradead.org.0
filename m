Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7EB1DD733
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxNbQOHLZjaqwIn1E5XvwBYhRZAJFH6rvfuU6ulR9rA=; b=DGfhDqrz2LmwJr
	aSvjwfdZGPf4/MurD3pjjHeD4RN7RUGcByHuQfXARI5B2Ftte/Yl+oyNTruU0z/+Quq1Md6pCSvfS
	CVigam3jOD5/wu2LKj7cmbZKt9tvvXUjzEdBvFCw/UGgIQxBGIT0e9CNisogw9EDvAW5kUmYizpmb
	RqjRZXxqDsSEIYHmKG8R35dYPefM1VOcMLE3+3C5sJRRxT/Mz0wq3RwJkaCj3ADcBpnxVWatbNxpP
	eQ6ZTKfQ5ZVvKv4YiAvwA50ckFInkZU7YpWEHVIKEwDBhDwhmLib/9AY0uJH2oHKhHbz9j13C0K90
	7GY0kHTjrFkpIH5GVMUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqsA-00017u-K7; Thu, 21 May 2020 19:28:54 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqs0-00017Q-V8
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:28:46 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jbqrs-0007eK-0A; Thu, 21 May 2020 13:28:36 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jbqrq-0007UK-EM; Thu, 21 May 2020 13:28:35 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Peter Collingbourne <pcc@google.com>
References: <20200508020106.136652-1-pcc@google.com>
 <20200513180914.50892-1-pcc@google.com>
 <20200513202808.GY21779@arm.com>
 <CAMn1gO4V05nD-Tq4dES0QyO73bAT-Nwo1ABnz0nuous8Rq+dGA@mail.gmail.com>
 <20200518095313.GZ21779@arm.com>
 <CAMn1gO4c3-hG_i6ZWsk-+oUGQQBdzFJRMrpehT3OFERF2Z7nrg@mail.gmail.com>
 <20200520085502.GC24293@willie-the-truck>
 <20200520092558.GI5031@arm.com>
 <CAMn1gO7VWBcbMvqNeyBdfpO71kfhrZbHwkOC0JeSX13_HUMmWA@mail.gmail.com>
 <87zha1ea98.fsf@x220.int.ebiederm.org>
 <CAMn1gO6cgcP0O85BA_ire9j1L5zvN4i2JFRXO7R=MScXbmWG1g@mail.gmail.com>
Date: Thu, 21 May 2020 14:24:45 -0500
In-Reply-To: <CAMn1gO6cgcP0O85BA_ire9j1L5zvN4i2JFRXO7R=MScXbmWG1g@mail.gmail.com>
 (Peter Collingbourne's message of "Thu, 21 May 2020 11:03:52 -0700")
Message-ID: <874ks9drb6.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jbqrq-0007UK-EM; ; ; mid=<874ks9drb6.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX18fPDRegNq7PdHxnXC780DiOsLx9W2bOY8=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG autolearn=disabled
 version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4990]
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa07 0; Body=1 Fuz1=1 Fuz2=1]
X-Spam-DCC: ; sa07 0; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;Peter Collingbourne <pcc@google.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 1128 ms - load_scoreonly_sql: 0.04 (0.0%),
 signal_user_changed: 9 (0.8%), b_tie_ro: 7 (0.7%), parse: 1.32 (0.1%),
 extract_message_metadata: 26 (2.3%), get_uri_detail_list: 6 (0.6%),
 tests_pri_-1000: 18 (1.6%), tests_pri_-950: 1.74 (0.2%),
 tests_pri_-900: 1.23 (0.1%), tests_pri_-90: 158 (14.0%), check_bayes:
 152 (13.5%), b_tokenize: 26 (2.3%), b_tok_get_all: 18 (1.6%),
 b_comp_prob: 7 (0.6%), b_tok_touch_all: 96 (8.5%), b_finish: 1.16
 (0.1%), tests_pri_0: 890 (78.9%), check_dkim_signature: 0.91 (0.1%),
 check_dkim_adsp: 2.8 (0.2%), poll_dns_idle: 0.55 (0.0%), tests_pri_10:
 2.3 (0.2%), tests_pri_500: 11 (1.0%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH v6] arm64: Expose FAR_EL1 tag bits in sigcontext
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_122845_030748_7A93D625 
X-CRM114-Status: GOOD (  47.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.233 listed in list.dnswl.org]
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Oleg Nesterov <oleg@redhat.com>,
 Kostya Serebryany <kcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgenii Stepanov <eugenis@google.com>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Peter Collingbourne <pcc@google.com> writes:

> On Thu, May 21, 2020 at 5:39 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
>>
>> Peter Collingbourne <pcc@google.com> writes:
>>
>> > On Wed, May 20, 2020 at 2:26 AM Dave Martin <Dave.Martin@arm.com> wrote:
>> >>
>> >> On Wed, May 20, 2020 at 09:55:03AM +0100, Will Deacon wrote:
>> >> > On Tue, May 19, 2020 at 03:00:12PM -0700, Peter Collingbourne wrote:
>> >> > > On Mon, May 18, 2020 at 2:53 AM Dave Martin <Dave.Martin@arm.com> wrote:
>> >> > > > On Thu, May 14, 2020 at 05:58:21PM -0700, Peter Collingbourne wrote:
>> >> > > > > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
>> >> > > > > index baa88dc02e5c..5867f2fdbe64 100644
>> >> > > > > --- a/arch/arm64/kernel/signal.c
>> >> > > > > +++ b/arch/arm64/kernel/signal.c
>> >> > > > > @@ -648,6 +648,7 @@ static int setup_sigframe(struct
>> >> > > > > rt_sigframe_user_layout *user,
>> >> > > > >                 __put_user_error(ESR_MAGIC, &esr_ctx->head.magic, err);
>> >> > > > >                 __put_user_error(sizeof(*esr_ctx), &esr_ctx->head.size, err);
>> >> > > > >                 __put_user_error(current->thread.fault_code,
>> >> > > > > &esr_ctx->esr, err);
>> >> > > > > +               current->thread.fault_code = 0;
>> >> > > >
>> >> > > > Perhaps, but we'd need to be careful.  For example, can we run out of
>> >> > > > user stack before this and deliver a SIGSEGV, but with the old
>> >> > > > fault_code still set?  Then we'd emit the old fault code with the
>> >> > > > new "can't deliver signal" signal, which doesn't make sense.
>> >> > > >
>> >> > > > Stuff may also go wrong with signal prioritisation.
>> >> > > >
>> >> > > > If a higher-priority signal (say SIGINT) comes in after a data abort
>> >> > > > enters the kernel but before the resulting SIGSEGV is dequeued for
>> >> > > > delivery, wouldn't we deliver SIGINT first, with the bogus fault code?
>> >> > > > With your change we'd then have cleared the fault code by the time we
>> >> > > > deliver the SIGSEGV it actually relates to, if I've understood right.
>> >> > > >
>> >> > > > Today, I think we just attach that fault code to every signal that's
>> >> > > > delivered until something overwrites or resets it, which means that
>> >> > > > a signal that needs fault_code gets it, at the expense of attaching
>> >> > > > it to a bunch of other random signals too.
>> >> > > >
>> >> > > >
>> >> > > > Checking the signal number and si_code might help us to know what we
>> >> > > > should be doing with fault_code.  We need to have sure userspace can't
>> >> > > > trick us with a non kernel generated signal here.  It would also be
>> >> > > > necessary to check how PTRACE_SETSIGINFO interacts with this.
>> >> > >
>> >> > > With these possible interactions in mind I think we should store the
>> >> > > fault code and fault address in kernel_siginfo instead of
>> >> > > thread_struct (and clear these fields when we receive a siginfo from
>> >> > > userspace, i.e. in copy_siginfo_from_user which is used by
>> >> > > ptrace(PTRACE_SETSIGINFO) among other places). That way, the
>> >> > > information is clearly associated with the signal itself and not the
>> >> > > thread, so we don't need to worry about our signal being delivered out
>> >> > > of order.
>> >> >
>> >> > Hmm, I can't see a way to do that that isn't horribly invasive in the core
>> >> > signal code. Can you?
>> >
>> > I think I've come up with a way that doesn't seem to be too invasive.
>> > See patch #1 of the series that I'm about to send out.
>> >
>> >> > But generally, I agree: the per-thread handling of fault_address and
>> >> > fault_code appears to be quite broken in the face of signal prioritisation
>> >> > and signals that don't correspond directly to hardware trap. It would be
>> >> > nice to have some tests for this...
>> >> >
>> >> > If we want to pile on more bodges, perhaps we could stash the signal number
>> >> > to which the fault_{address,code} relate, and then check that at delivery
>> >> > and clear on a match. I hate it.
>> >>
>> >> I agree with Daniel's suggestion in principle, but I was also concerned
>> >> about whether it would be too invasive elsewhere.
>> >>
>> >> Question though: does the core code take special care to make sure that
>> >> a force_sig cannot be outprioritised by a regular signal?  If so,
>> >> perhaps we get away with it.  I ask this, because the same same issue
>> >> may be hitting other arches otherwise.
>> >
>> > Not as far as I can tell. There does appear to be prioritisation for
>> > synchronous signals [1] but as far as I can tell nothing to
>> > distinguish one of these signals from one with the same signal number
>> > sent from userspace (e.g. via kill(2)).
>>
>> The si_code will differ between signals generated between userspace
>> and signals generated by the kernel.
>>
>> We do allow a little bit of ptrace and sending to yourself to spoof
>> kernel generated signals, for reasons of debugging and process migration
>> where an existing process needs to be reconstructed.  But the defenses
>> should be strong enough you can assume that we reliably distinguish
>> between a signal from userspace and a signal from the kernel.
>
> So check for SIGBUS || SIGSEGV and one of the below si_codes, and only
> add the context in that case? Seems fragile to me, but I suppose I
> could live with it.
>
>> I don't fully follow what you are doing but this feels like the
>> kind of case where a new si_code has been defined as well as additional
>> fields in siginfo.
>
> There is no new si_code for this, the information will be exposed for
> several existing si_code types (BUS_ADRERR, BUS_ADRALN, BUS_MCEERR_AR,
> SEGV_ACCERR, SEGV_MAPERR), and possibly others in the future
> (particularly SEGV_MTESERR, which is part of the proposed MTE patch
> set). Note that we already have a union field for BUS_MCEERR_AR, and
> we may want to expose it for the other si_codes that already have
> union fields as well.
>
> That being said, taking a closer look at siginfo, I think we are in
> luck and we might be able to make this work in a reasonable way by
> reusing padding (see below).
>
>> In your patchset I really hate that you were going back to
>> force_sig_info, and filling out struct siginfo by hand.  That is an
>> error prone pattern, and I have fixed enough bugs in the kernel to prove
>> that.
>
> To be fair, most of the callers are in helper functions that take
> explicit parameters similar to force_sig_fault et al, and the SIGILL
> one could easily be made that way as well.
>
>> I take exception to the idea that including the full address might break
>> userspace.  That means typically means someone has been too lazy to look
>> and see what userspace is doing.  When that userspace that might break
>> is the same userspace you are changing the kernel to serve that makes me
>> nervous.  AKA the userspace that cares about this signal and how it is
>> represented in siginfo.
>
> It's not a matter of being lazy. This behaviour isn't just an accident
> but has been explicitly documented for years (see the
> tagged-pointers.rst file that I changed: "Non-zero tags are not
> preserved when delivering signals."), so users can reasonably rely on
> it. Furthermore we simply don't have visibility into the majority of
> userspace. For example, there are a lot of closed source Android apps
> out there, and who knows what signal handlers they're installing and
> how they're making use of the si_addr field on e.g. SEGV_MAPERR. We
> can't just change the documented semantics under their feet.
>
> It's also not the same userspace either. The userspace that's
> initially going to be consuming the new fields is in a part of the
> Android system that handles and reports crashes, and that's something
> that we control unlike all the apps.
>
> Finally, the userspace may need to know whether the tag bits were
> actually zero or whether they were just unavailable, otherwise
> userspace could for example produce a misleading crash report. Simply
> having the kernel set the top bits of si_addr wouldn't accomplish that
> due to the kernel's previous behaviour, hence the mask to let
> userspace know which bits are accurate.
>
>> A fix of one instance of SIGILL should not be included with a patch that
>> does something else, and really should come before everything else if
>> possible.
>
> Fair point. I can see if I can split that part out.
>
>> If this information really belongs in struct siginfo (as it sounds like)
>> please actually put the information in siginfo, and let userspace look
>> in siginfo to find it.  struct siginfo is a union with plenty of space,
>> and plenty of si_codes.
>>
>> If this applies to multiple cases then it might be trickier but please
>> dig into the details, don't toss things into sigcontext just because
>> you can't figure out a clean design for reporting this.
>
> If we wanted this in siginfo, one idea that I had was to revert commit
> b68a68d3dcc15ebbf23cbe91af1abf57591bd96b and add unsigned char fields
> _addr_top_byte and _addr_top_byte_mask in the padding between
> _addr_lsb and the union (with comments on all the fields of course to
> say when they are filled in). I think that would work since we are
> already clearing padding in siginfo, one nice property of the new
> fields is that the zero values are correct in the case where the
> information isn't being exposed (so old kernels would already have the
> correct behaviour). That would only work on certain architectures
> (i.e. at least alignof(void*) >= 4) so I suppose it could have an
> #ifdef __aarch64__ around it.

Perhaps add a 4th padding member to the union inside of _sigfault, that
adds something like 4 unsigned long's worth of data, and then have your
fields after the union.

Is it quite a bit of work to gather that information from the
instructions that faulted?  I am just checking that this work is really
makes sense.

What I really don't understand is how well this problem generalizes to
other architectures to tell if this is something other people need to
solve at some point as well.

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
