Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8447C8C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SX8bRdtzbp5YyrfyNArS0wwZsN/HDdnbRSY9QfjHLRs=; b=rpu3EFbh8VuNtM
	AoNn4MyVD77owvfI7h0W/gMieS18V7kEQ+m3ocRAUZfTGFLX5+0+pb7RTlxZ8LHqZmtv/MdlnjB7P
	XdlUEx8/kf4rAPoj/8kF7w5/JjMfgiscBiSas1F+4mzIsz4F9ZXp88ej0P4YBwJtmf3jTd9vwKPzV
	WzwIkNeOLEoJ0TpMYyHP7J98tNzIajVMCzByOnFcji5FXom73LIJsQjRY6LTejwIEpt5iAibpPnXA
	2Kf4KnUtgRDYpIHr4GpdChOWvj090VGM1nyHmyqBMHc9IrT6V1o8VVb7e11KpoKtdf/TD5qkoVAz6
	mrnksgQP6Z3Ehh3bjHKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrXR-0000xI-Qw; Wed, 31 Jul 2019 16:33:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrXG-0000vu-D5; Wed, 31 Jul 2019 16:33:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E9B6337;
 Wed, 31 Jul 2019 09:33:03 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0AE8B3F71F;
 Wed, 31 Jul 2019 09:33:00 -0700 (PDT)
Date: Wed, 31 Jul 2019 17:32:58 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [RFC v2 0/8] arm64: MMU enabled kexec relocation
Message-ID: <20190731163258.GH39768@lakrids.cambridge.arm.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731153857.4045-1-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_093306_533326_F1849A89 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sashal@kernel.org, vladimir.murzin@arm.com, corbet@lwn.net,
 marc.zyngier@arm.com, catalin.marinas@arm.com, bhsharma@redhat.com,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, jmorris@namei.org, james.morse@arm.com,
 ebiederm@xmission.com, matthias.bgg@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

Generally, the cover letter should state up-front what the goal is (or
what problem you're trying to solve). It would be really helpful to have
that so that we understand what you're trying to achieve, and why.

Messing with the MMU is often fraught with danger (and very painful to
debug, as you are now aware), and so far we've tried to minimize the
number of places where we have to do so.

On Wed, Jul 31, 2019 at 11:38:49AM -0400, Pavel Tatashin wrote:
> Changelog from previous RFC:
> - Added trans_table support for both hibernate and kexec.
> - Fixed performance issue, where enabling MMU did not yield the
>   actual performance improvement.
> 
> Bug:
> With the current state, this patch series works on kernels booted with EL1
> mode, but for some reason, when elevated to EL2 mode reboot freezes in
> both QEMU and on real hardware.
> 
> The freeze happens in:
> 
> arch/arm64/kernel/relocate_kernel.S
> 	turn_on_mmu()
> 
> Right after sctlr_el2 is written (MMU on EL2 is enabled)
> 
> 	msr     sctlr_el2, \tmp1
> 
> I've been studying all the relevant control registers for EL2, but do not
> see what might be causing this hang:
> 
> MAIR_EL2 is set to be exactly the same as MAIR_EL1 0xbbff440c0400
> 
> TCR_EL2        0x80843510
> Enabled bits:
> PS      Physical Address Size. (0b100   44 bits, 16TB.)
> SH0     Shareability    11 Inner Shareable
> ORGN0   Normal memory, Outer Write-Back Read-Allocate Write-Allocate Cach.
> IRGN0   Normal memory, Inner Write-Back Read-Allocate Write-Allocate Cach.
> T0SZ    01 0000
> 
> SCTLR_EL2	0x30e5183f
> RES1    : Reserve ones
> M       : MMU enabled
> A       : Align check
> C       : Cacheability control
> SA      : SP Alignment check enable
> IESB    : Implicit Error Synchronization event
> I       : Instruction access Cacheability
> 
> TTBR0_EL2      0x1b3069000 (address of trans_table)
> 
> Any suggestion of what else might be missing that causes this freeze when
> MMU is enabled in EL2?
> 
> =====

> Here is the current data from the real hardware:
> (because of bug, I forced EL1 mode by setting el2_switch always to zero in
> cpu_soft_restart()):
> 
> For this experiment, the size of kernel plus initramfs is 25M. If initramfs
> was larger, than the improvements would be even greater, as time spent in
> relocation is proportional to the size of relocation.
> 
> Previously:
> kernel shutdown	0.022131328s
> relocation	0.440510736s
> kernel startup	0.294706768s

In total this takes ~0.76s...

> 
> Relocation was taking: 58.2% of reboot time
> 
> Now:
> kernel shutdown	0.032066576s
> relocation	0.022158152s
> kernel startup	0.296055880s

... and this takes ~0.35s

So do we really need this complexity for a few blinks of an eye?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
