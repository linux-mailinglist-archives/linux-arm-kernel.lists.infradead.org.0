Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0855D11046C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 19:46:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hR0mzAhF59g6zIGZ2bpsJpsELWHenTz21zUES5ZCmLo=; b=Hv7k/QBrJewoVukh2WzmYnMEy
	Vi2gKm1ks0LgiFXXMHqaahKZYhyuHpFRgj8YlgipippBhC1XSRAFwBT+p7Ae1DBXX+6uIBBvqCI7g
	YQN6PhSN2rmdyCGmjJ1PHl/HrXqN/CyO/1d77SBKElEfuZJr+TaPwntILGMqxY9TPPLQ+R5E7wLQ1
	5k8pljmvVxyogIfMavaj+wlSwQcLlZxIiDXmSTXkj2JxW1DQF3D8OS5hp+4o7y/8vwx383kuE8jQe
	BuBz8URgd17mX3nwPQYunprFSZX5QRUp9xmzFxn2Ia+/pQ+H7+TGORi9rJfVQyPymvVKhmvwf+lDz
	+1dTHKsIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDBL-0001GT-MT; Tue, 03 Dec 2019 18:45:55 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDBE-0001Ft-SI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 18:45:50 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1icDBC-0002AY-Bd; Tue, 03 Dec 2019 19:45:46 +0100
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64: Fix compile error with KVM and
 =?UTF-8?Q?!HARDEN=5FBRANCH=5FPREDICTOR?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 03 Dec 2019 18:45:46 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <CAKv+Gu9mS2BZj+YMemMTy-e=42wBdu7u3+Rp=w9cWZXMmbpt7A@mail.gmail.com>
References: <20191127181040.20012-1-minyard@acm.org>
 <CAKv+Gu-Xbpky-VN4WgSKJ5k_98shRdr_7aEcXJBV9uZqJrV7Jw@mail.gmail.com>
 <86pnhbywpo.wl-maz@kernel.org>
 <CAKv+Gu-CuNpu4jv7S6v2G9Z5dHCVOMX3nVX5VFYhoY4SfCK+cg@mail.gmail.com>
 <ab0d3eff89247f18d6edcb28b577d186@www.loen.fr>
 <CAKv+Gu9mS2BZj+YMemMTy-e=42wBdu7u3+Rp=w9cWZXMmbpt7A@mail.gmail.com>
Message-ID: <8274815953233fb2d522f216b36d7247@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: ard.biesheuvel@linaro.org, minyard@acm.org,
 linux-arm-kernel@lists.infradead.org, cminyard@mvista.com,
 andre.przywara@arm.com, catalin.marinas@arm.com, stefan.wahren@i2se.com,
 will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_104549_061370_D4F55AA3 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Corey Minyard <cminyard@mvista.com>,
 minyard@acm.org, Catalin Marinas <catalin.marinas@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-03 18:35, Ard Biesheuvel wrote:

[...]

> OK, I have prepared a branch that carries all these patches in the
> right order with the upstream commit reference added to the commit
> log. I'll send this out for review first, before actually sending it
> to -stable, unless anyone feels that this is a bad idea.
>
> arm64: KVM: Move BP hardening vectors into .hyp.text section
> arm64: insn: Add N immediate encoding
> arm64: insn: Add encoder for bitwise operations using literals
> arm64: KVM: Dynamically patch the kernel/hyp VA mask
> arm64: cpufeatures: Drop the ARM64_HYP_OFFSET_LOW feature flag
> arm64; insn: Add encoder for the EXTR instruction
> arm64: insn: Allow ADD/SUB (immediate) with LSL #12
> arm64: KVM: Dynamically compute the HYP VA mask
> arm64: KVM: Introduce EL2 VA randomisation
> arm64: KVM: Move stashing of x0/x1 into the vector code itself
> arm64: KVM: Reserve 4 additional instructions in the BPI template
> arm64: KVM: Allow far branches from vector slots to the main vectors
> arm64: Make BP hardening slot counter available
> arm64: Move the content of bpi.S to hyp-entry.S

My personal take on this is that it is *a lot* of code that affects
a very critical path, and I'm not completely sure that it is what
we want for something as dated as 4.14.

The only valuable reason I can think of (aside of the vulnerability
mitigation aspect) would be if we need to backport more code to
the exception entry path for EL2. I don't know if there is such
need yet.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
