Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7A81F6735
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4cI6MhPehY9jGLqUfd7dOBvtPdfSL3z5NDti/+PKzw=; b=mw720Q5V3VY40K
	KQsgLFx9j6LuOxPVfenx2XDH4D13q6NyfHrKJq6rkvecwaIrJ6gLsAFtnS4818qn1VB8cN4imBB2e
	ab7394iNQHqLklXdZXGxLolh6eXPkS1nyfdNaoOzEfckbRcJl/ZrOYqq/Zsbjxs7rdVXauU8EXWX9
	HY4iawpiLbATDSh6VRi0vgt9Dl5DaQX25KTtec9fMMxHKZJg4r8U+31XLe9k72fbLkQbMELminI12
	nvZyjdRKnKfJfbfag8AHjTu66OZL3OQ16FYvxwr4gpgc5jV+JlvsEs77aq2Wg/I1YBw0+r5qNkL/P
	ZxMj7t73frshs1gu69yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLkU-0003Jj-C0; Thu, 11 Jun 2020 11:51:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLkL-0003JG-Sw
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 11:51:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 380A22078D;
 Thu, 11 Jun 2020 11:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591876309;
 bh=hUZmjSIobC8gBA5LV9Q11++dATnUKfOjWjFSzhnOpDc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cejDfBVcnvOUBvpSThXQiLM7LU5Ct2juS/6RBermPlLhiAWwaaxS/APLylHb7ztfy
 x5yEnPbq6+SIFYHIkfAh3gIfM4kLvcP1wKdNFFn/mrudGRj4fxFgiOv9O5e/pNmxQH
 Ha99KSZU6exmWbZV6Q2gxCEV6tH4ODKhB/AMBFA4=
Date: Thu, 11 Jun 2020 12:51:44 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: warn on incorrect placement of the kernel by the
 bootloader
Message-ID: <20200611115144.GA5057@willie-the-truck>
References: <20200610174601.159853-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610174601.159853-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_045149_975508_B78F5F70 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, maz@kernel.org, jonathan@marek.ca,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 07:46:01PM +0200, Ard Biesheuvel wrote:
> Commit cfa7ede20f133c ("arm64: set TEXT_OFFSET to 0x0 in preparation for
> removing it entirely") results in boot failures when booting kernels that
> are built without KASLR support on broken bootloaders that ignore the
> TEXT_OFFSET value passed via the header, and use the default of 0x80000
> instead.
> 
> To work around this, turn CONFIG_RELOCATABLE on by default, even if KASLR
> itself (CONFIG_RANDOMIZE_BASE) is turned off, and require CONFIG_EXPERT
> to be enabled to deviate from this. Then, emit a warning into the kernel
> log if we are not booting via the EFI stub (which is permitted to deviate
> from the placement restrictions) and the kernel base address is not placed
> according to the rules as laid out in Documentation/arm64/booting.rst.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm64/Kconfig        | 3 ++-
>  arch/arm64/kernel/setup.c | 3 +++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 7f9d38444d6d..16c3f158c80e 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1740,8 +1740,9 @@ config ARM64_DEBUG_PRIORITY_MASKING
>  endif
>  
>  config RELOCATABLE
> -	bool
> +	bool "Build a relocatable kernel image" if EXPERT
>  	select ARCH_HAS_RELR
> +	default y
>  	help
>  	  This builds the kernel as a Position Independent Executable (PIE),
>  	  which retains all relocation metadata required to relocate the
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 3fd2c11c09fc..bfeeeea833dd 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -319,6 +319,9 @@ void __init setup_arch(char **cmdline_p)
>  
>  	xen_early_init();
>  	efi_init();
> +	WARN(!efi_enabled(EFI_BOOT) && ((u64)_text % MIN_KIMG_ALIGN) != 0,
> +	     FW_BUG "Kernel image misaligned at boot, please fix your bootloader");

I think pr_warn is probably sufficient here, as the backtrace isn't really
helping anybody:

[    0.000000] ------------[ cut here ]------------
[    0.000000] [Firmware Bug]: Kernel image misaligned at boot, please fix your bootloader
[    0.000000] WARNING: CPU: 0 PID: 0 at arch/arm64/kernel/setup.c:323 setup_arch+0x208/0x214
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc3-00162-g16d1072f6b69 #1
[    0.000000] Hardware name: linux,dummy-virt (DT)
[    0.000000] pstate: 60000085 (nZCv daIf -PAN -UAO BTYPE=--)
[    0.000000] pc : setup_arch+0x208/0x214
[    0.000000] lr : setup_arch+0x208/0x214
[    0.000000] sp : ffff800011b03f90
[    0.000000] x29: ffff800011b03f90 x28: 0000000081580018 
[    0.000000] x27: 0000000000000000 x26: 0000000000000000 
[    0.000000] x25: 0000000000000000 x24: 0000000000000000 
[    0.000000] x23: 0000000000080000 x22: 0000000000000000 
[    0.000000] x21: 000000008fe00000 x20: ffff800011b09000 
[    0.000000] x19: ffff800010080000 x18: 000000000001fdd8 
[    0.000000] x17: 000000000000004a x16: ffff800011b03bf1 
[    0.000000] x15: 0000000000000000 x14: 6564616f6c746f6f 
[    0.000000] x13: 0000000000000000 x12: 0000000000000000 
[    0.000000] x11: 0000000000000000 x10: 00000000ffffffff 
[    0.000000] x9 : 0000000000000000 x8 : 0000000000000000 
[    0.000000] x7 : 000000000000004b x6 : ffff800011d41093 
[    0.000000] x5 : 000000000000004b x4 : 000000000000000c 
[    0.000000] x3 : 0000000000000072 x2 : 000000000000003f 
[    0.000000] x1 : ffff800011d3e75f x0 : 000000000000004b 
[    0.000000] Call trace:
[    0.000000]  setup_arch+0x208/0x214
[    0.000000]  start_kernel+0x70/0x3ec
[    0.000000] random: get_random_bytes called from __warn+0xe4/0x178 with crng_init=0
[    0.000000] ---[ end trace 0000000000000000 ]---

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
