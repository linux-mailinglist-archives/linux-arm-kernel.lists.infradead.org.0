Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8E61C0465
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 20:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/14gyxUOsmVj/+1gog9l3IMMhs8QdSBlzhH99JHRp4Q=; b=fQ+GP5kpBH9zT+MojhYpxeCeM
	Bk/kokhicmYcQaHhEXwGIou73Ykhm6j8k3IDAEMO5oTjA5xzZsyRcu92lsFvQPGNUU1yrvAk4kHJx
	xkDWME8asNNqMhLxOPkvN9LX43js8a7WTfMnYJEgmFDNa8iZcsf95kGAxKDCD11JU3ZdwPWi4Us9Z
	084p74ypM7yWYcdEy91ymLnYlJLFNi9ihuSlOJ8WZqEZXlHFF4rq1CaAx++TFppEQdQEiAzIlh1GW
	8vN1A4ybDqrC4VA72m7GTtoiunQOrKu5/4TfJoqVu0qoufdaCnBIgYUGy+U3gJ/ZNBpyWZCWwZpcj
	lS3IJacQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUDfW-0005wj-Kt; Thu, 30 Apr 2020 18:12:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUDfO-0005wG-Cb
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 18:12:12 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 504A22073E;
 Thu, 30 Apr 2020 18:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588270330;
 bh=uZzbisc8ZrbgvrWcinRIkDr/7MqbjQAc/dl6CHyH8rQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Vpn5cEYRdXnlx70upnq1Z0EAQBUntihdDMhHEXJvsHpqh9Fj/4xERZzG9QeTFd+pa
 eXzZhtwyaOkyCpbkMGKaXCL3hFMUeH+SO8krJ/wRs7ipeYcPGdR6VE6TnysDjcVnFL
 Ro0G+3R34M36RoocU+PrHhWoqc/bn6BNyKg0OC3k=
Date: Thu, 30 Apr 2020 19:12:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/2] arm64: kernel: Convert to modern annotations for
 assembly functions
Message-ID: <20200430181207.GJ4633@sirena.org.uk>
References: <20200428164331.27289-1-broonie@kernel.org>
 <20200428164331.27289-2-broonie@kernel.org>
 <20200430171825.GI25258@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200430171825.GI25258@willie-the-truck>
X-Cookie: Sign here without admitting guilt.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_111210_466241_43A77EB7 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0201030461213907970=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0201030461213907970==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gBdJBemW82xJqIAr"
Content-Disposition: inline


--gBdJBemW82xJqIAr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 30, 2020 at 06:18:25PM +0100, Will Deacon wrote:
> On Tue, Apr 28, 2020 at 05:43:30PM +0100, Mark Brown wrote:

> > -work_pending:
> > +SYM_CODE_START_LOCAL(work_pending)
> >  	mov	x0, sp				// 'regs'
> >  	bl	do_notify_resume
> >  #ifdef CONFIG_TRACE_IRQFLAGS
> > @@ -738,10 +738,11 @@ work_pending:
> >  #endif
> >  	ldr	x1, [tsk, #TSK_TI_FLAGS]	// re-check for single-step
> >  	b	finish_ret_to_user
> > +SYM_CODE_END(work_pending)
> >  /*
> >   * "slow" syscall return path.
> >   */
> > -ret_to_user:
> > +SYM_CODE_START_LOCAL(ret_to_user)

> Would this be better off as a SYM_INNER_LABEL inside work_pending? Given
> that ret_to_user and work_pending both branch into each other, separating
> them doesn't feel quite right.

I remember looking at these when doing the conversion and thinking that
nothing looked quite right due to the cross calls :/  The number of
things that branch to ret_to_user made me think it should really be it's
own thing rather than just a label in the middle of another block but
then work_pending is really a subroutine of ret_to_user that uses a
branch rather than a call so how do you annotate that?

Possibly we could move work_pending after the kernel_exit in ret_to_user
and make work_pending the SYM_INNER_LABEL, doing things the opposite way
around to what you suggest?  I think that's more the intent.

> > +SYM_CODE_START_LOCAL(\label)
> >  	b \label
> > -ENDPROC(\label)
> > +SYM_CODE_END(\label)
> >  .endm

> Huh, this is the exact same macro as the one from the hibernate code. Maybe
> we should stick it in asm/asembler.h alongside ventry? Obviously a separate
> patch, though.

I agree.

> > -ENTRY(absolute_data64)
> > +SYM_CODE_START(absolute_data64)
> >  	ldr	x0, 0f
> >  	ret
> >  0:	.quad	sym64_abs
> > -ENDPROC(absolute_data64)
> > +SYM_CODE_END(absolute_data64)

> Hmm, but all the functions in here *are* actually just called from the C
> code in reloc_test_core.c afaict, so they should probably be using
> SYM_FUNC_*.

You're right I think - I remember thinking as I was going through that
since they were explicitly designed to test relocations it might be
important that they emit exactly the instructions that are written but
now I look again the functions are actually called rather than just
linked so we need to emit landing pads for them.

> > -ENTRY(cpu_resume)
> > +SYM_FUNC_START(cpu_resume)
> >  	bl	el2_setup		// if in EL2 drop to EL1 cleanly
> >  	mov	x0, #ARM64_CPU_RUNTIME
> >  	bl	__cpu_setup
> > @@ -107,11 +107,11 @@ ENTRY(cpu_resume)
> >  	bl	__enable_mmu
> >  	ldr	x8, =_cpu_resume
> >  	br	x8
> > -ENDPROC(cpu_resume)
> > +SYM_FUNC_END(cpu_resume)

> SYM_CODE_* here, as this is I think this is the entry point from the resume
> path?

It has a C prototype in asm/suspend.h and swsup_arch_suspend_exit in
hibernate-asm.S runs earlier but now I look again it jumps here by
issuing a ret rather than via a call so it's definitely not a normal C
function.

--gBdJBemW82xJqIAr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6rFPYACgkQJNaLcl1U
h9BrSAf8CFe45JsUDVu/UCwECpwrN/daLRwP7sYkaostBqKKP/Zi3+Vn0TVQQAJo
rBtue7qQ1OtI+O1CS3RoP6Cg2wgXsBVM4JDTLsfxYguDiW0EF6QN7sbPTfH8xiD6
sQlT2ReFTN4GxHdN683/f3lo0MrriLC60tVP33J076GjGDYoxE8fEnPkFPdsribY
MmKOOyIt+lbe8plAptBwp2miOXlxhSqdRgUJQPaQ1NVRNHL8VML5kkAv7utFfxCJ
t/a9nvlRv4NQoMqIcQS8uY5bJvpUf5J1HkWzv+rgIFRa6TUhUzTStHrhfVAi/OH0
JRzCS4nE1nroyqfwl3rVh+AtQJsKYQ==
=Fwk1
-----END PGP SIGNATURE-----

--gBdJBemW82xJqIAr--


--===============0201030461213907970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0201030461213907970==--

