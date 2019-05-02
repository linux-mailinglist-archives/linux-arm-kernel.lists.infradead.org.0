Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF8811D3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 17:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+unocW6TJ7H2sYdgUIg60LMzfVcm7IwB5Hr88I+dGU=; b=J6NlEufdOX23xi
	vyMLeKC3ayBF2rUEMjDBKbV32PAkji7fQyhGIhd7Vf23q450Edk4burU7iJdnY+trSzue9a72lg61
	3Bg4OoS5DeRv1bASjPz80z//Fq5rty/LEyBAZawWE72Y86JowPvmZKRREtngIRO4VbTyTEvYPr/XQ
	GJnWwgDdJnNAZburPxmfPqK+QDIpgtPhNz1UALGVD5hfuY0o0AkvBnzR4BoWT6j+dAsEZgnLZ6jYd
	2x74WAypK9q1S9gCAge/NAOOzN0iYgJZP2bsBJH71kjXyHOYzBB6o4jkIvs3Zt38LiAk2eGhiwsvb
	DFrG6EHhj5ti+iyD+8Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDgI-000605-U5; Thu, 02 May 2019 15:31:30 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDg8-0005z0-Q4; Thu, 02 May 2019 15:31:22 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 44vzkR0Xvsz9sPk;
 Fri,  3 May 2019 01:31:11 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Mike Rapoport <rppt@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] memblock: make keeping memblock memory opt-in rather than
 opt-out
In-Reply-To: <1556102150-32517-1-git-send-email-rppt@linux.ibm.com>
References: <1556102150-32517-1-git-send-email-rppt@linux.ibm.com>
Date: Fri, 03 May 2019 01:31:10 +1000
Message-ID: <87h8acyitd.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_083121_030862_722B7F9E 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-hexagon@vger.kernel.org,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-m68k@lists.linux-m68k.org, Borislav Petkov <bp@alien8.de>,
 nios2-dev@lists.rocketboards.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Richard Kuo <rkuo@codeaurora.org>,
 Paul Burton <paul.burton@mips.com>, Eric Biederman <ebiederm@xmission.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Ley Foon Tan <lftan@altera.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mike Rapoport <rppt@linux.ibm.com> writes:
> diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
> index 2d0be82..39877b9 100644
> --- a/arch/powerpc/Kconfig
> +++ b/arch/powerpc/Kconfig
> @@ -143,6 +143,7 @@ config PPC
>  	select ARCH_HAS_UBSAN_SANITIZE_ALL
>  	select ARCH_HAS_ZONE_DEVICE		if PPC_BOOK3S_64
>  	select ARCH_HAVE_NMI_SAFE_CMPXCHG
> +	select ARCH_KEEP_MEMBLOCK

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
