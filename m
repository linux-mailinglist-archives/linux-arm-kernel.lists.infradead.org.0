Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E061CA9ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 13:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F38INhe7oTJcUh/gb6ke4qFWXuG5RoHIUS/3Lps7kBc=; b=iIwQHZu8BSGm1A
	VQhJC9EJ6Rxi2dzHAmoAg9wMxDqTDKcahWvq1QhNHVrmpAzZ5LWKZnHQ9nvbzUjRuh/L3khzhu2Zi
	TR3XfvRQapS8mYOynIVlWPpjs/Vv+UBzJ5oGzfzeGn8DHqcBYSGCFe5Dfic3TfzOoR2150cMtoK4y
	ea7YP4I2h8nN+YILBE1FW6PzPGfdviE7bQPDq2hkDaF5GP60ZnhVJjZPnmR3JS//Ej9ipju7x8fww
	0s2r7c6HqkhRI4m91cGMeEH2RH8WlQL720sScnlIkVVaYOFlLfEVsVKZ2YamCdDAUeqB0NPfm1woj
	Tv0PG2CzhMVrvtq/boVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX1TQ-0005MV-LP; Fri, 08 May 2020 11:47:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX1TJ-0005Ll-1X
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 11:47:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AF1C208DB;
 Fri,  8 May 2020 11:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588938436;
 bh=t1Iwu24XFt/a9NpFSyEL3vQir1AT95eNfYgPSI3dRXk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fbr0ksTlgIL5FTsuoGevS/1Dfx/6oKLeeINEHrjnfmHHcaDmHd5vjhSs6V/18OxQl
 d87ngXBx/xymM9BE8xEn5y929HYpCE0cwOKixvFuxVhneks1P992dmKU3twX75N40j
 S/0gFC6NylCeiDyMUntAk0xuU23GFqIAXLPGpZOc=
Date: Fri, 8 May 2020 12:47:10 +0100
From: Will Deacon <will@kernel.org>
To: Luke Nelson <luke.r.nels@gmail.com>
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
Message-ID: <20200508114709.GB16247@willie-the-truck>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-2-luke.r.nels@gmail.com>
 <20200507082934.GA28215@willie-the-truck>
 <20200507101224.33a44d71@why>
 <CAB-e3NRCJ_4+vkFPkMN67DwBBtO=sJwR-oL4-AozVw2bBJHOzg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB-e3NRCJ_4+vkFPkMN67DwBBtO=sJwR-oL4-AozVw2bBJHOzg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_044717_129253_A9065120 
X-CRM114-Status: GOOD (  23.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 clang-built-linux@googlegroups.com, Daniel Borkmann <daniel@iogearbox.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Marc Zyngier <maz@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
 KP Singh <kpsingh@chromium.org>, Luke Nelson <lukenels@cs.washington.edu>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Zi Shen Lim <zlim.lnx@gmail.com>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 02:48:07PM -0700, Luke Nelson wrote:
> Thanks for the comments! Responses below:
> 
> > It's a bit grotty spreading the checks out now. How about we tweak things
> > slightly along the lines of:
> >
> >
> > diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> > index 4a9e773a177f..60ec788eaf33 100644
> > --- a/arch/arm64/kernel/insn.c
> > +++ b/arch/arm64/kernel/insn.c
> > [...]
> 
> Agreed; this new version looks much cleaner. I re-ran all the tests /
> verification and everything seems good. Would you like me to submit a
> v2 of this series with this new code?

Yes, please! And please include Daniel's acks on the BPF changes too. It's a
public holiday here in the UK today, but I can pick this up next week.

> >> We tested the new code against llvm-mc with all 1,302 encodable 32-bit
> >> logical immediates and all 5,334 encodable 64-bit logical immediates.
> >
> > That, on its own, is awesome information. Do you have any pointer on
> > how to set this up?
> 
> Sure! The process of running the tests is pretty involved, but I'll
> describe it below and give some links here.
> 
> We found the bugs in insn.c while adding support for logical immediates
> to the BPF JIT and verifying the changes with our tool, Serval:
> https://github.com/uw-unsat/serval-bpf. The basic idea for how we tested /
> verified logical immediates is the following:
> 
> First, we have a Python script [1] for generating every encodable
> logical immediate and the corresponding instruction fields that encode
> that immediate. The script validates the list by checking that llvm-mc
> decodes each instruction back to the expected immediate.
> 
> Next, we use the list [2] from the first step to check a Racket
> translation [3] of the logical immediate encoding function in insn.c.
> We found the second mask bug by noticing that some (encodable) 32-bit
> immediates were being rejected by the encoding function.
> 
> Last, we use the Racket translation of the encoding function to verify
> the correctness of the BPF JIT implementation [4], i.e., the JIT
> correctly compiles BPF_{AND,OR,XOR,JSET} BPF_K instructions to arm64
> instructions with equivalent semantics. We found the first bug as the
> verifier complained that the function was producing invalid encodings
> for 32-bit -1 immediates, and we were able to reproduce a kernel crash
> using the BPF tests.
> 
> We manually translated the C code to Racket because our verifier, Serval,
> currently only works on Racket code.

Nice! Two things:

(1) I really think you should give a talk on this at a Linux conference
(2) Did you look at any instruction generation functions other than the
    logical immediate encoding function?

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
