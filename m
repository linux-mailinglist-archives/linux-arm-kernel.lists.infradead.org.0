Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB84F1430CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjAO0O04e+bKq1s/H1la0gfJah/CARH1GX/zcWQNC/Q=; b=mBYIGYlkzZ5Wmd
	QdeS5Do5LFlKMvo8Kt6xuq46GVYfJ6yy8Xrjq1mqWTN8E3ZwpH7J9zdxLf9b9nOtE3xh1Nw3VYKHH
	W0HYfvKJE3a2YnwLeylHfv1th6bOEmOi4+b1WtvbBKB/JvFEUXiqBJEtcXRksWKgyMfDWK4aLNadB
	WTcBqSbtzaD/nk7Vnl8frT+bdXL/XAsBSMF+w3wrOWNZj7ngXThvinN5mtC9erO2uB0gpTYIFgRCV
	z6DwRJwosrWIh2hKMtnf8NCsByoDIOLh7jPz3vmbfmlNytzMGsuTYmLW/VnwnHh1SoXK0stjxK3dG
	hpSR/pMjK/ILMd9ow7Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaqT-0008Ql-V1; Mon, 20 Jan 2020 17:28:13 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaqJ-0008QB-OG
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 17:28:05 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 00KHRXcN008864;
 Mon, 20 Jan 2020 11:27:33 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 00KHRW40008862;
 Mon, 20 Jan 2020 11:27:32 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Mon, 20 Jan 2020 11:27:32 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [RFC PATCH v4 00/11] powerpc: switch VDSO to C implementation.
Message-ID: <20200120172732.GC3191@gate.crashing.org>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <20200117085851.GS3191@gate.crashing.org>
 <3027b6d2-47a9-a871-7c52-050a5f9c6ab7@c-s.fr>
 <20200120151936.GB3191@gate.crashing.org>
 <4b0e5941-c37e-3c85-3809-45f33ce35657@c-s.fr>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b0e5941-c37e-3c85-3809-45f33ce35657@c-s.fr>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_092803_936250_7AE50343 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: nathanl@linux.ibm.com, arnd@arndb.de,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, luto@kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, tglx@linutronix.de,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 06:08:23PM +0100, Christophe Leroy wrote:
> Not easy I think.
> 
> First we have the unavoidable ASM entry function that can't be dropped 
> because of the CR[SO] bit the set on error or clear on no error and that 
> can't be done in C.

Yup.

> In our ASM VDSO, fixed shifts are used, while in generic C VDSO, shifts 
> are generic and read from the VDSO data.

Does that cost more than just a few cycles?

> And there is still some funny code generated by GCC (8.1), like:
> 
>  620:	7d 29 3c 30 	srw     r9,r9,r7
>  624:	21 87 00 20 	subfic  r12,r7,32
>  628:	7d 07 3c 31 	srw.    r7,r8,r7
>  62c:	7d 08 60 30 	slw     r8,r8,r12
>  630:	7d 0b 4b 78 	or      r11,r8,r9

(This can be done cheaper for fixed shifts, you can use rlwimi then).

>  634:	39 40 00 00 	li      r10,0
>  638:	40 82 00 84 	bne     6bc <__c_kernel_clock_gettime+0x114>
>  63c:	81 23 00 24 	lwz     r9,36(r3)
>  640:	81 05 00 00 	lwz     r8,0(r5)
> ...
>  6bc:	7d 69 5b 78 	mr      r9,r11
>  6c0:	7c ea 3b 78 	mr      r10,r7
>  6c4:	7d 2b 4b 78 	mr      r11,r9
>  6c8:	4b ff ff 74 	b       63c <__c_kernel_clock_gettime+0x94>
> 
> This branch to 6bc is totally useless:
> - copying r11 into r9 is pointless as r9 is overwritten in 63c
> - copying back r9 into r11 is pointless as r11 has not been modified 
> inbetween.

Yeah, huh, how did that happen.

> - loading r10 with 0 then overwritting r10 with r7 when r7 is not 0 is 
> pointless as well, could have directly put the result of srw. in r10.

This may be harder to make the compiler do.

But the r9/r11 thing suggests you are preventing optimisation somewhere,
maybe with some asm?  Do you have some small testcase I can compile?


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
