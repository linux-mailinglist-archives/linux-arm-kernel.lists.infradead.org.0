Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B5E1B175E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 22:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTYh0OAZ9HGoTW8oI4qWh2AHUVxADXXTL5GQP+TCxoE=; b=qXVzoGevLdoWy9
	Qv/5cMTBv5TaBko8SocLDDLiSyZTvPC73WLEbtTKyimyx6gerxBteYs1I7uP/PLW+kK1Hz/XO7BBu
	YCBKTDtxWDZgrgz3qiMOjwlCkpGqAofb0tzVudw3ek7acQiokDaV4o3xhbXsgrDPPnQ3Uum4vrkXd
	b/xjjwOIWEFfVHHnoxzEcpVHbpxLCA2LgW5W+rbaeUNQ7aSUf9fi5vzl6RakfcN3bJL20u/E0lV8v
	m2McpTi9r4AHl/juUxafzg8qElQxPVpazEIw99hJHclOfUFpJuxtzzHEaReGT7urIzGfr9t6+tKVS
	SACaL2nyGFqiWqwDEUFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQdFr-00079F-A7; Mon, 20 Apr 2020 20:42:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQdFe-00078E-AT
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 20:42:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50BB9207FC;
 Mon, 20 Apr 2020 20:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587415366;
 bh=/Lm2cTmavSfvPwo3EnY/skppJ5i7CHKipIJNiAMzESE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vX206r139s9j+s4JKnaMI4JpxtutoxgTKEzqEw3LnEF+8MAWjTABg/8ixx8KpUvhJ
 aBeW060QZCReO+UrYVjtFosA573ZmpGd4EEAhYESWJJ38YU2e8uDaSguoFjd9eEoa2
 GF7apirwkq/9qg8hWCNZ5P1q630+XpFbjnKHsvw4=
Date: Mon, 20 Apr 2020 21:42:39 +0100
From: Will Deacon <will@kernel.org>
To: George Spelvin <lkml@sdf.org>
Subject: Re: [RFC PATCH v1 40/50] arch/*/include/asm/stackprotector.h: Use
 get_random_canary() consistently
Message-ID: <20200420204238.GB29998@willie-the-truck>
References: <202003281643.02SGhM0T009250@sdf.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003281643.02SGhM0T009250@sdf.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_134246_406027_0D94E563 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>, Paul Burton <paulburton@kernel.org>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 12:35:14AM -0500, George Spelvin wrote:
> ... in boot_init_stack_canary().
> 
> This is the archetypical example of where the extra security of
> get_random_bytes() is wasted.  The canary is only important as
> long as it's stored in __stack_chk_guard.
> 
> It's also a great example of code that has been copied around
> a lot and not updated.
> 
> Remove the XOR with LINUX_VERSION_CODE as it's pointless; the inclusion
> of utsname() in init_std_data in the random seeding obviates it.
> 
> The XOR with the TSC on x86 and mtfb() on powerPC were left in,
> as I haven't proved them redundant yet.  For those, we call
> get_random_long(), xor, and mask manually.
> 
> FUNCTIONAL CHANGE: mips and xtensa were changed from 64-bit
> get_random_long() to 56-bit get_random_canary() to match the
> others, in accordance with the logic in CANARY_MASK.
> 
> (We could do 1 bit better and zero *one* of the two high bytes.)
> 
> Signed-off-by: George Spelvin <lkml@sdf.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Ralf Baechle <ralf@linux-mips.org>
> Cc: Paul Burton <paulburton@kernel.org>
> Cc: James Hogan <jhogan@kernel.org>
> Cc: linux-mips@vger.kernel.org
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
> Cc: Rich Felker <dalias@libc.org>
> Cc: linux-sh@vger.kernel.org
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc:  "H. Peter Anvin" <hpa@zytor.com>
> Cc: x86@kernel.org
> Cc: Chris Zankel <chris@zankel.net>
> Cc: Max Filippov <jcmvbkbc@gmail.com>
> Cc: linux-xtensa@linux-xtensa.org
> ---
>  arch/arm/include/asm/stackprotector.h     | 9 +++------
>  arch/arm64/include/asm/stackprotector.h   | 8 ++------
>  arch/mips/include/asm/stackprotector.h    | 7 ++-----
>  arch/powerpc/include/asm/stackprotector.h | 6 ++----
>  arch/sh/include/asm/stackprotector.h      | 8 ++------
>  arch/x86/include/asm/stackprotector.h     | 4 ++--
>  arch/xtensa/include/asm/stackprotector.h  | 7 ++-----
>  7 files changed, 15 insertions(+), 34 deletions(-)

Just found this kicking around in the depths of my inbox. Is the series
dead?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
