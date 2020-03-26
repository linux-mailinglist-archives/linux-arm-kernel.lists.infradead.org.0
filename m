Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AB3194543
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:19:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKYEdwKHdr0bk28u+n0DV6LGju5EYTte9PWIjftmByc=; b=MlGkDJTmaan54o
	1jRgiGkdAI9cSjb0NqHxqz1bQ2Xx47F0zzGepZjk7B5UbtZvNEDUp4/tcnLFXuSW5bRffQg0B2baR
	5cCIIq8F5DTXovYjAd8qS3KX7HYJeGyJgEpMLj3guovDbLb3PMFGEUYXy4661Y6ORL2tz5S26T3fk
	sJFEHvOsRpWWbZkMOTLOx+za7oQr50FRS6MdIxKAS168LqesGP2kRZF8CfFzllufdK3NF7Mo1kY6a
	10xuTHOcKa5dW+8+/CvTfTNP8Vpwz4S4KeqrTf4qeAPW7r3DtG8gaMxmI212gk9cfd2+nZMCZyeAT
	Wzyg+3WXNtyMrgsO/nvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHW9r-0005Lk-FD; Thu, 26 Mar 2020 17:19:07 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHW9e-0005L6-Mc
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 17:18:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id e1so2378346plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 10:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FuNH3TvottBd6Vom+HjZUn38bx12HjWSuxT5PFFp2NM=;
 b=bOPaTx6GdaN/kw3TDtNtl7YJvpKCdLmNpmXwiUaOV/H2Dyt1eisLQis+PnTqW9A+cy
 EpkaDdfA5uo4DCk1ebTh4faj0FTdvUrGM01MpAbv2nSbK+gGglpLa6jzzOF6TUBcNS18
 J+EdB85pXrJ9G1gjVsQGSBY1SA1XxTOvVWnGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FuNH3TvottBd6Vom+HjZUn38bx12HjWSuxT5PFFp2NM=;
 b=EKwbk/P3druKYxJvkbJ9l8ueuevCZXCulaynkjqrd2DQ3NOXWzBBbj+hXxLyBfEMla
 bBBhwolcc0rJV81To0Ktw7fYaCngRjDZ3AawmN4JlV9o/a3wsyJLHAjH3ltEXkwn+r/H
 W0X2rjEItiWrWv55f9oj4FZcSDlqPPg38u/d39kviPPjinlyiiryEYl3yH2iGB2717Uu
 5FxwsDrf9AXZODyepJAx6Sq9a2SSwO2UbAI1/gOlx2OASHQKJqlD/4wztSicbfCcLs1e
 upXc+9k1uzPxHaVSu77zLq+vFKjBtOxR/Gu4mNS6jldQjIbWa4qbIyb/p6WzIZNTkCpO
 DkCw==
X-Gm-Message-State: ANhLgQ3CwOdTP1gW4ARfq7NylLYsJQakC5DW0VHbTDBF8UvddLmA4pFB
 RD5wXRmAA8fWjywZ7xDU/Cif3g==
X-Google-Smtp-Source: ADFU+vuKz5FLrd/n++22UcE/kf4ftn3gYQmH2FDL1/qqMttDY074nJOuzLStkZh5VaZoPZM9xVSjkg==
X-Received: by 2002:a17:90a:3783:: with SMTP id
 v3mr1135572pjb.31.1585243134014; 
 Thu, 26 Mar 2020 10:18:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m68sm6263454pjb.0.2020.03.26.10.18.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 10:18:53 -0700 (PDT)
Date: Thu, 26 Mar 2020 10:18:51 -0700
From: Kees Cook <keescook@chromium.org>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH v2 0/5] Optionally randomize kernel stack offset each
 syscall
Message-ID: <202003260932.510967DD@keescook>
References: <20200324203231.64324-1-keescook@chromium.org>
 <CAG48ez3yYkMdxEEW6sJzBC5BZSbzEZKnpWzco32p-TJx7y_srg@mail.gmail.com>
 <202003241604.7269C810B@keescook>
 <BL0PR11MB3281D8D615FA521401B8E320E7CE0@BL0PR11MB3281.namprd11.prod.outlook.com>
 <202003251322.180F2536E@keescook>
 <CAG48ez1RfvayCpNVkVQrdNbb6tNv1Wc=337Q7kZu80PrbMOP_A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG48ez1RfvayCpNVkVQrdNbb6tNv1Wc=337Q7kZu80PrbMOP_A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_101854_769935_BB30521E 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Andy Lutomirski <luto@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "Reshetova, Elena" <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 12:20:19AM +0100, Jann Horn wrote:
> On Wed, Mar 25, 2020 at 9:27 PM Kees Cook <keescook@chromium.org> wrote:
> > On Wed, Mar 25, 2020 at 12:15:12PM +0000, Reshetova, Elena wrote:
> > > > > Also, are you sure that it isn't possible to make the syscall that
> > > > > leaked its stack pointer never return to userspace (via ptrace or
> > > > > SIGSTOP or something like that), and therefore never realign its
> > > > > stack, while keeping some controlled data present on the syscall's
> > > > > stack?
> > >
> > > How would you reliably detect that a stack pointer has been leaked
> > > to userspace while it has been in a syscall? Does not seem to be a trivial
> > > task to me.
> >
> > Well, my expectation is that folks using this defense are also using
> > panic_on_warn sysctl, etc, so attackers don't get a chance to actually
> > _use_ register values spilled to dmesg.
> 
> Uh... I thought that thing was exclusively for stuff like syzkaller,
> because nuking the entire system because of a WARN is far too
> excessive? WARNs should be safe to add almost anywhere in the kernel,
> so that developers can put their assumptions about system behavior
> into code without having to worry about bringing down the entire
> system if that assumption turns out to have been false in some
> harmless edgecase.

So, I'm caught in a tight spot between Linus's deprecation of BUG()[1],
and the desire for high-sensitivity security-oriented system builders
to have a "completely stop running that kernel thread" option. Linus's
entirely reasonable observation that BUG() destabilizes the kernel more
often than it doesn't means there isn't actually a safe "stop that kernel
thread" option, especially since many mitigations that detect badness span
a spectrum of "stops the badness before it happens" (e.g. NX memory) to
"I see badness has already happened" (e.g. stack protector). As a result,
the only way to provide a way for the security-prioritized users is to
downgrade corruptions to DoSes via panic(). I wish there was a magic
way to have a perfect kernel state unwinder to get us the BUG() we
wanted it to be, but given the kernel's complexity, it doesn't exist
(and is unlikely to be worth developing). Right now, we either get
"WARN() and keep going as best we can" or we get "WARN() and panic".

And with regard to "WARNs should be safe to add", yes, that's generally
true, but the goal is to not make them reachable from userspace because
of this need to be able to "upgrade" them to panic(). I have tried to
document[1] this:

  Note that the WARN()-family should only be used for "expected to
  be unreachable" situations. If you want to warn about "reachable
  but undesirable" situations, please use the pr_warn()-family of
  functions. System owners may have set the *panic_on_warn* sysctl,
  to make sure their systems do not continue running in the face of
  "unreachable" conditions. (For example, see commits like `this one
  <https://git.kernel.org/linus/d4689846881d160a4d12a514e991a740bcb5d65a>`_.)

[1] https://lore.kernel.org/lkml/202003141524.59C619B51A@keescook/

> Also, there are other places that dump register state. In particular
> the soft lockup detection, which you can IIRC easily trip even
> accidentally if you play around with stuff like FUSE filesystems, or
> if a disk becomes unresponsive. Sure, *theoretically* you can also set
> the "panic on soft lockup" flag, but that seems like a really terrible
> idea to me.

I understand your general objection to non-deterministic defenses,
as there will always be ways to weaken them, but I don't think that's
reason enough to not have them. I prefer to look at mitigations as a
spectrum, and to recognize that some are more effective with certain
system configurations. They become tools to choose from when building
defense in depth.

> As far as I can tell, the only clean way to fix this is to tell
> distros that give non-root users access to dmesg (Ubuntu in
> particular) that they have to stop doing that. E.g. Debian seems to
> get by just fine with root-restricted dmesg.

Totally agreed about that. Ubuntu may be hard to convince as one of
their design principles has been to make the first user able to use the
system completely with as little interruption as possible. (e.g. pop-up
confirmation dialogs are strongly discouraged, etc.)

So, for this series, I think the benefit-to-complexity value is high.
It's a simple solution even if it's not perfect (most things can't be
given the existing kernel design trade-offs).

-Kees

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
