Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FA91708C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 20:15:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xD7uqJHFBvAWAT0Yp6ok9I/ElBNteDxEveTLHINenYs=; b=qqkcNCxix294v7
	9vMpTq9WlqkRJnqDi2NzS+D2zQbwCwSXXSHtAWncVZCGxoCACUka8x6qfHdoMIqIdymXQcoPQj2AL
	d0WE8+8aOhZBDvVLefWBlsfm6IUWVr2fxy7sAcqUYv6sLvPVJl9HRhyoxtUFykZ01xxHZwamBonXE
	PsyHNlZLYWS3moeDAFMmeDfsPCi1FUOxd8RUROs4/mGwQHstltHLmUj0p9Gj/TqsGpMlnnUfTB+TI
	weMIWg/gU2pI5MAY2IKYHxL4+OIvLI32dL63fClDjG6aGweoACCOiHXDmRmA/y97uuZK5uhczN8dm
	UlxbSLg0Cgf0+Zuqjbcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j729L-0007xx-Jv; Wed, 26 Feb 2020 19:15:15 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7296-0007xB-Cb
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 19:15:01 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id C71A88022;
 Wed, 26 Feb 2020 19:15:44 +0000 (UTC)
Date: Wed, 26 Feb 2020 11:14:56 -0800
From: Tony Lindgren <tony@atomide.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v4 0/5] ARM: decompressor: use by-VA cache maintenance
 for v7 cores
Message-ID: <20200226191456.GZ37466@atomide.com>
References: <20200226165738.11201-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226165738.11201-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_111500_462117_E728DCA9 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, Nicolas Pitre <nico@fluxnic.net>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Ard Biesheuvel <ardb@kernel.org> [200226 16:58]:
> While making changes to the EFI stub startup code, I noticed that we are
> still doing set/way maintenance on the caches when booting on v7 cores.
> This works today on VMs by virtue of the fact that KVM traps set/way ops
> and cleans the whole address space by VA on behalf of the guest, and on
> most v7 hardware, the set/way ops are in fact sufficient when only one
> core is running, as there usually is no system cache. But on systems
> like SynQuacer, for which 32-bit firmware is available, the current cache
> maintenance only pushes the data out to the L3 system cache, where it
> is not visible to the CPU once it turns the MMU and caches off.
> 
> So instead, switch to the by-VA cache maintenance that the architecture
> requires for v7 and later (and ARM1176, as a side effect).
> 
> Changes since v3:
> - ensure that the region that is cleaned after self-relocation of the zImage
>   covers the appended DTB, if present

I gave these a try on top of the earlier "arm: fix Kbuild issue caused
by per-task stack protector GCC plugin" and booting still works for
me on armv7 including appended dtb:

Tested-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
