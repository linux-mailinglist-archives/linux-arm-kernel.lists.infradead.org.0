Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D638D1ADAD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y5p2/SHd03K92I11OtV4JDh13+Dgfz6WWU79m/otzWo=; b=YjuMD8DDtEVLhs2/cGbiiY7Tl
	nmZsS6JjS+wI+IRbn1pfo7CQyBKQKZEbU8DjSQGIM1dDna6MNP+Neyc+WEIFlH8yS9U1yOZEMflEy
	dBdpCL4geXeniDNRgpNGRaxQeoBvD5UXia+zL9+L0fOaVMHTKt7DGZaohQGeOi6E3DX3jqUwwNk3a
	EFJEYwskskXWHqrvWsStDlXkDFwWnpBxigqLb1ErHJ4ldxbpKV0FX6r1+/Y1/0j76104f/zC3nsFz
	0XUwZcuIMdN0XfPljtYmaGAi/H8yI8VWbmsAAG1gNIgbfB0eWj2EV+2mo7O2WFeDWRnz9peyn6bwh
	5ZjMWDwMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPO7t-0000Rs-UB; Fri, 17 Apr 2020 10:21:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPO7n-0000RT-0O
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:21:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id w11so886849pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 03:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nBFBAoAwAyP38F9Puiz/s+pK43NM/15bb5AV9eLL73M=;
 b=n68JObTPG8sMtnn7/W1k8zdbGCJ890mxJZRXi9vppk4Cg1tOZiJU07e8gv3jLOfYk4
 4fZOPrLhrwqwSYZ6sQGJf+JPBxz1gN1HfL1faGlbDlnX2Ty7lRIyej2HiPJf7N4tL5S6
 gWRZ+CAUK715hEsWJJhggJ6k9o85E6DwkZonPD9BBk4U8nn7uR/SySCEwih6Hwv0wZCU
 zJdKs8hwSr6yAV46NKytF69gxxmEHjDDL/Sp0VY2yXfKinDf+NuTPvQfB3u7S0bgvpWX
 5FCp/t2RaJAtHEiIhZqAG8lclHZoBKxSYt86y2G+15D1QP+VDE25v8Lcs7KQO8YxC/PS
 iwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nBFBAoAwAyP38F9Puiz/s+pK43NM/15bb5AV9eLL73M=;
 b=sUgsGpSm7on/tDRgQprEvyyZyPVnkbpYrfNVygG+eZMawHHqBQF8xo7ssHFtxqWp7x
 ztLF1lX897jZ4m1RqmOR4jmhXDLszPjYjnk0ChJJGDhUc1doYJobrQlkDN7if3UBXDQF
 KDWIuDIR+NUyIR5eRau5ORBsLIzArXeCduWDEgoFo7pt8EnCEkpzaAHXm0zrDdc27a+y
 Q6QfPmwqVU2CmoNOuXU2FY4xP7cyycbf4IIvqmle1ZlYBgmUayqoWrI4t5MNUKb2Wn5f
 asOVT33nsI+6c4s3beJ+yTtx3m8L6xu6Wt82z0VZsoQy3PUAKIR+25nft+Wi7LOL6bTs
 VXeA==
X-Gm-Message-State: AGi0PuaxboWH/YO1ZM/hr8gXipawtRfLTv9S3ahP8cLhQ/DJ0bMxWi82
 nbaFVUMZylZitvK2RqRgNI+BprtsNUA=
X-Google-Smtp-Source: APiQypIKjVeCBOzawaC/0Sq3O++B+3b6SKgWwqYL8N1IM0V680Q5/Kt3b3mWMcdMrnLChv4RFN/LFA==
X-Received: by 2002:a62:34c6:: with SMTP id b189mr2511070pfa.206.1587118889699; 
 Fri, 17 Apr 2020 03:21:29 -0700 (PDT)
Received: from pek-khao-d2.corp.ad.wrs.com (unknown-105-123.windriver.com.
 [147.11.105.123])
 by smtp.gmail.com with ESMTPSA id f6sm5436358pfn.189.2020.04.17.03.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 03:21:28 -0700 (PDT)
Date: Fri, 17 Apr 2020 18:21:20 +0800
From: Kevin Hao <haokexin@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: entry: Update the IRQ tracing before debug
 exception unmasked
Message-ID: <20200417102120.GD3218630@pek-khao-d2.corp.ad.wrs.com>
References: <20200401052107.36076-1-haokexin@gmail.com>
 <20200416131633.GH4987@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200416131633.GH4987@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_032131_078218_0C1E7B99 
X-CRM114-Status: GOOD (  26.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [haokexin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2996063548149286554=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2996063548149286554==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ylS2wUBXLOxYXZFQ"
Content-Disposition: inline


--ylS2wUBXLOxYXZFQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 16, 2020 at 02:16:34PM +0100, Mark Rutland wrote:
> On Wed, Apr 01, 2020 at 01:21:07PM +0800, Kevin Hao wrote:
> > When running the kgdb test suite, we get the following call trace:
> >   # echo kgdbts=3DV1 > /sys/module/kgdbts/parameters/kgdbts
> >=20
> >   DEBUG_LOCKS_WARN_ON(current->hardirqs_enabled)
> >   WARNING: CPU: 10 PID: 697 at kernel/locking/lockdep.c:4793 check_flag=
s.part.0+0x15c/0x180
> >   Modules linked in:
> >   CPU: 10 PID: 697 Comm: sh Not tainted 5.6.0-next-20200331-yoctodev-st=
andard+ #341
> >   Hardware name: Marvell OcteonTX CN96XX board (DT)
> >   pstate: 604003c9 (nZCv DAIF +PAN -UAO)
> >   pc : check_flags.part.0+0x15c/0x180
> >   lr : check_flags.part.0+0x15c/0x180
> >   sp : ffff800017d0f830
> >   x29: ffff800017d0f830 x28: ffff000b936c0000
> >   x27: 00000000c28f5c29 x26: 00000000ffffffff
> >   x25: 00000000000003c0 x24: ffff800011af8dd0
> >   x23: 0000000000000000 x22: ffff8000119afdc0
> >   x21: ffff80001198bbe8 x20: ffff800011400018
> >   x19: ffff800012655000 x18: 0000000000000001
> >   x17: 0000000000000000 x16: 0000000000000000
> >   x15: ffff000b936c0470 x14: ffffffffffffffff
> >   x13: 0000000000000000 x12: ffff800012655000
> >   x11: ffff800017d0f830 x10: ffff800017d0f830
> >   x9 : 00000000000003c0 x8 : 6e655f7371726964
> >   x7 : 7261683e2d746e65 x6 : ffff8000126552fe
> >   x5 : 0000000000000000 x4 : 0000000000000000
> >   x3 : 00000000ffffffff x2 : 0000000000000000
> >   x1 : bbf8ef1cf7dda200 x0 : 0000000000000000
> >   Call trace:
> >    check_flags.part.0+0x15c/0x180
> >    lock_is_held_type+0xf0/0x120
> >    rcu_read_lock_sched_held+0x74/0x98
> >    trace_rcu_dyntick+0x1b8/0x1e0
> >    rcu_nmi_enter+0x7c/0xb8
> >    debug_exception_enter+0x68/0xe8
> >    do_debug_exception+0x60/0x150
> >    el1_sync_handler+0xd8/0xf8
> >    el1_sync+0x7c/0x100
> >    el1_irq+0x78/0x180
> >    kgdbts_break_test+0x0/0x40
> >    param_set_kgdbts_var+0x68/0xe8
> >    param_attr_store+0xb8/0x120
> >    module_attr_store+0x2c/0x48
> >    sysfs_kf_write+0x54/0x80
> >    kernfs_fop_write+0x154/0x248
> >    __vfs_write+0x24/0x50
> >    vfs_write+0xec/0x1d8
> >    ksys_write+0x74/0x100
> >    __arm64_sys_write+0x24/0x30
> >    do_el0_svc+0x8c/0x1e8
> >    el0_sync_handler+0x11c/0x198
> >    el0_sync+0x158/0x180
> >   irq event stamp: 76505
> >   hardirqs last  enabled at (76505): [<ffff80001009f9ec>] debug_excepti=
on_exit+0x54/0x68
> >   hardirqs last disabled at (76504): [<ffff80001009fb04>] debug_excepti=
on_enter+0xac/0xe8
> >   softirqs last  enabled at (76498): [<ffff8000100817b4>] __do_softirq+=
0x5a4/0x5ec
> >   softirqs last disabled at (76439): [<ffff8000100b6ff4>] irq_exit+0x13=
c/0x150
> >=20
> > The reason is that an IRQ is emitted when doing the single step debug,
> > but in the IRQ handler we would enable the debug exception before
> > updating the IRQ tracing flags. This will cause the debug exception
> > running in an context which the IRQ state and IRQ tracing flags are
> > mismatched. And the debug exception handler only update the IRQ tracing
> > flag to off when it think that the debug emit in a IRQ enabled context.
> > Then we would get the above call trace if any code like check_flags()
> > is called in the debug exception handler's path. So we have to update
> > the IRQ tracing to the correct status before the debug exception unmask=
ed.
> >=20
> > Signed-off-by: Kevin Hao <haokexin@gmail.com>
>=20
> I think that actual issue here is in the debug path:
> debug_exception_enter() tries to conditionally trace_hardirqs_off(), and
> this is unsound as it does this based solely on
> interrupts_enabled(regs).
>=20
> Here we take a debug exception while the HW state is disabled, but the
> tracing state is enabled, and I reckon we can also do that elsewhere.
> for example, if we set a breakpoint in the middle of
> local_irq_disable(), between the write to DAIF and the update of the irq
> tracing state. In that case, interrupts_enabled(regs) will be false, but
> the tracing state will be stale and might say that IRQs are enabled.
>=20
> Given that possibility, I suspect that we need to unconditionally
> trace_hardirqs_off() in the debug entry path to make that robust.

It makes sense. The v2 is coming.

Thanks,
Kevin

>=20
> Thanks,
> Mark.
>=20
> > ---
> >  arch/arm64/kernel/entry.S | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> > index ddcde093c433..0cc65b7b9e1a 100644
> > --- a/arch/arm64/kernel/entry.S
> > +++ b/arch/arm64/kernel/entry.S
> > @@ -592,7 +592,6 @@ SYM_CODE_END(el1_sync)
> >  SYM_CODE_START_LOCAL_NOALIGN(el1_irq)
> >  	kernel_entry 1
> >  	gic_prio_irq_setup pmr=3Dx20, tmp=3Dx1
> > -	enable_da_f
> > =20
> >  #ifdef CONFIG_ARM64_PSEUDO_NMI
> >  	test_irqs_unmasked	res=3Dx0, pmr=3Dx20
> > @@ -605,6 +604,7 @@ SYM_CODE_START_LOCAL_NOALIGN(el1_irq)
> >  	bl	trace_hardirqs_off
> >  #endif
> > =20
> > +	enable_da_f
> >  	irq_handler
> > =20
> >  #ifdef CONFIG_PREEMPTION
> > --=20
> > 2.25.1.377.g2d2118b814c1
> >=20
> >=20
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--ylS2wUBXLOxYXZFQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAl6ZgyAACgkQk1jtMN6u
sXGAUggAsSxjq/2yByy79rCVtD1vTrfcN2W3QDvGCQAcMOaXsKgBap6LCy9sjmcw
KGsswcvfz4PkcaRNCyfqKofySDYJU8ALvPyoSHfuj6xBlRVnka1TZ0GVdHADoL90
/+tZHb5lSzeLq/Jb6F30dES3uxHkFVezfkLSsvNCqnckAbQZtRr7rlzDKT6PyAvR
HSpoSie3ugvm+Ocm4HwqXUOlMApPmFldJCsCJJI+IFzLvHKSUuGEY1nTYwmdGqnP
6p+ePwKezV004YJk9W9c5i3fgZMds0ZfB9qaJzTi33odJCknf8jbSqendGbzhpQK
IS4BaMhouEJFwGMxWuKpt5Dihvx+Cg==
=PCBY
-----END PGP SIGNATURE-----

--ylS2wUBXLOxYXZFQ--


--===============2996063548149286554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2996063548149286554==--

