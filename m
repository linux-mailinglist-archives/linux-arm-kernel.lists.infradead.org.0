Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C892DC3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 13:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNkkLilMvBzh4R6jGtdrJBD+dGSqlE3FUiiYNsrr7fY=; b=XARJh3uD5Wp1lR
	QjTn73OME0DtAuUvsspTrXAUjQhlaWNgGlmnsHEO7ZlTbUvVC4YUqdeEViGQtBWWEpQp6cd8wXpZz
	w4/DGo9PIHHuyIvqUDJeBqdz5xNnZGdaAFqU/GtIkSj/OcIFxWSh9+fMaQ4EN0d+BKbIYKx3EFOFG
	kTjXk0+/gcsi09St8DaZwEqT7SXnwFJg9uTzr5LBU4ZFDk5JZugoItYx285iyq1+PKgVeYq1GDaUt
	4VLpoOlZKWyjUrFKDSEMVcxCk0yD+dh7MF4iCeNAgnzm3oK2LImzSGvsTEuEQ5TMCJ7btL7BjGmSr
	e9WVIz9s02mZ03O5cu9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVx9q-0000Dq-PC; Wed, 29 May 2019 11:54:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVx9h-0000DS-MA
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 11:54:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hEtSO/lPmTiS/mP1vu+4cITw8XneB5W9aOyGqI2G490=; b=m8nOqlKXhVDLkRdgxhr+T0Q2R
 Nt7LCw38dThzwC71saVRQ5jhIWdHKD9Nfi0kcadwQVD2wQO0DOVZjk+44NGcnqQG3bXf1Bo8ypXSP
 pONdeluyGdxvwYNDbmvrhXNY5ZpjhcR3PPPQ7sn2Ib+fNm2tXkTTAP0kT9LcSfa5pMTi2odZZs915
 LLIxMA9VdUj5dsJJu0IyxY61yarJfQaDGY5G+VUjRwBCqWy9V3Zd/9mXnBpV2X7ily/O5VsiNPvnB
 OlYiVWdaxGYeWmWuYo0DATx6f+dzm//N7sw1gZB5D7MmHBXypn6xAjebOvrYYBg9s1P0unktzFzQX
 BGjJXjK2Q==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38358)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hVx9X-0004Bp-An; Wed, 29 May 2019 12:53:55 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hVx9T-0004WN-GO; Wed, 29 May 2019 12:53:51 +0100
Date: Wed, 29 May 2019 12:53:51 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: CONFIG_OPTIMIZE_INLINING breaks atomic64 test on arm64
Message-ID: <20190529115351.k3k5kcwpdopk2tck@shell.armlinux.org.uk>
References: <ba33029c-64f6-6908-a098-b543f0851fb7@redhat.com>
 <20190529112956.GE4485@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529112956.GE4485@fuggles.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_045405_729983_1BAB3C1B 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Laura Abbott <labbott@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Andrew.Murray@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 12:29:56PM +0100, Will Deacon wrote:
> Hi Laura,
> 
> Thanks for the report -- I've managed to reproduce the issue locally.
> 
> On Tue, May 28, 2019 at 05:42:04PM -0400, Laura Abbott wrote:
> > CONFIG_OPTIMIZE_INLINING is a selectable option on arm64 now. It currently
> > triggers a bug on the CONFIG_ATOMIC64_SELFTEST:
> 
> [...]
> 
> > ffff0000104901d0 <arch_atomic64_dec_if_positive>:
> > ffff0000104901d0:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> > ffff0000104901d4:       aa0003e1        mov     x1, x0
> > ffff0000104901d8:       910003fd        mov     x29, sp
> > ffff0000104901dc:       9412c9d5        bl      ffff000010942930 <__ll_sc_arch_atomic64_dec_if_positive>
> > ffff0000104901e0:       d503201f        nop
> > ffff0000104901e4:       d503201f        nop
> > ffff0000104901e8:       d503201f        nop
> > ffff0000104901ec:       d503201f        nop
> > ffff0000104901f0:       d503201f        nop
> > ffff0000104901f4:       d503201f        nop
> > ffff0000104901f8:       aa0103e0        mov     x0, x1
> > ffff0000104901fc:       a8c17bfd        ldp     x29, x30, [sp], #16
> > ffff000010490200:       d65f03c0        ret
> > 
> > ...which seems to be coming from this buggy looking code.
> 
> The problem here is that GCC has allocated the '%[ret]' input operand in x1
> for the out-of-line version of the function, despite us using the register
> keyword explicitly:
> 
> static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
> {
> 	register long x0 asm ("x0") = (long)v;
> 
> 	asm volatile(ARM64_LSE_ATOMIC_INSN(
> 	/* LL/SC */
> 	__LL_SC_ATOMIC64(dec_if_positive)
> 	__nops(6),
> 	/* LSE atomics */
> 	"1:	ldr	x30, %[v]\n"
> 	"	subs	%[ret], x30, #1\n"
> 	"	b.lt	2f\n"
> 	"	casal	x30, %[ret], %[v]\n"
> 	"	sub	x30, x30, #1\n"
> 	"	sub	x30, x30, %[ret]\n"
> 	"	cbnz	x30, 1b\n"
> 	"2:")
> 	: [ret] "+&r" (x0), [v] "+Q" (v->counter)
> 	:
> 	: __LL_SC_CLOBBERS, "cc", "memory");
> 
> 	return x0;
> }
> 
> My reading of:
> 
>   https://gcc.gnu.org/onlinedocs/gcc/Local-Register-Variables.html#Local-Register-Variables
> 
> is that this should work, although it's fair to say that we are pulling
> a bunch of other tricks in this code.

This is why 32-bit ARM has the __asmeq() macro, after a very similar bug
afflicted that toolchain.  Nico decided it wasn't worth the pain of
debugging these issues, so we added checks to inline assembly that
depends on registers in certain hardware registers.  That's kept us
safe.

I would encourage aarch64 to adopt this approach, especially as you
now have a similar instance of this.  It guarantees that the register
allocation for assembly code is in fact what you expect it to be.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
