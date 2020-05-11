Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8461CD346
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 09:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRPL9v5uOi7/oZnPelurlajdWni6bOc67jZy780P99s=; b=WR0qqVcuZOr75z
	XuGr3k7r6Ya7sj4dHqEg5sP5WsvXXnVDiH6vSqj8nGgzdU3H0a176ndA14cW9Wpjvb1lDzr5N9/Fu
	ayPMIFvMlwJqr7IY316z7th/iNPLZZM6SLJhUWxfPtVnUErzXx2um7LSL/SzJDhKkcB1Lt8mXaJU+
	vIFugeNuQin5cctToP5fheH9fmziCYzdKqj1LDcAF9euhIT+0kVAz6exdGEPdmJDKLZ3txPLDxV+J
	yw4jEmVVfez+JijstXhRJKimlL1JA5cH5VYsN4QgLh4LpwJa+/RHKz3OSQtf0ng1e8wRZgj6VQRca
	7eEE+hPnpXTbRKzZqzlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3Do-0007CI-1N; Mon, 11 May 2020 07:51:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3Dg-0007Be-8j; Mon, 11 May 2020 07:51:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15B2F20735;
 Mon, 11 May 2020 07:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589183483;
 bh=ujV3u+dsl5PKS0aIWtuPo2XlUIWTrnZfhH9932lJ3Ck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0mQ7t5as8jZps7eSFkQLnwLtzVeQdo1iP3qe/Hftt/g3zJxfzwQVDrNcWnrxBfusE
 WGRRbC87hk6tU7Y02J552JkiWyPKHGmHG8/2xNIIubv0rRSCeTtP6ug62nSc345L3i
 YbZ4edSRI7cSRvmZAntksnLnC8c2Z4vBB1WMY+EY=
Date: Mon, 11 May 2020 08:51:15 +0100
From: Will Deacon <will@kernel.org>
To: Christoph Hellwig <hch@lst.de>, james.morse@arm.com,
 catalin.marinas@arm.com
Subject: Re: [PATCH 02/31] arm64: fix the flush_icache_range arguments in
 machine_kexec
Message-ID: <20200511075115.GA16134@willie-the-truck>
References: <20200510075510.987823-1-hch@lst.de>
 <20200510075510.987823-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200510075510.987823-3-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_005124_323286_125698CE 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Roman Zippel <zippel@linux-m68k.org>, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-xtensa@linux-xtensa.org, Arnd Bergmann <arnd@arndb.de>,
 Jessica Yu <jeyu@kernel.org>, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+James and Catalin]

On Sun, May 10, 2020 at 09:54:41AM +0200, Christoph Hellwig wrote:
> The second argument is the end "pointer", not the length.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm64/kernel/machine_kexec.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
> index 8e9c924423b4e..a0b144cfaea71 100644
> --- a/arch/arm64/kernel/machine_kexec.c
> +++ b/arch/arm64/kernel/machine_kexec.c
> @@ -177,6 +177,7 @@ void machine_kexec(struct kimage *kimage)
>  	 * the offline CPUs. Therefore, we must use the __* variant here.
>  	 */
>  	__flush_icache_range((uintptr_t)reboot_code_buffer,
> +			     (uintptr_t)reboot_code_buffer +
>  			     arm64_relocate_new_kernel_size);

Urgh, well spotted. It's annoyingly different from __flush_dcache_area().

But now I'm wondering what this code actually does... the loop condition
in invalidate_icache_by_line works with 64-bit arithmetic, so we could
spend a /very/ long time here afaict. It's also a bit annoying that we
do a bunch of redundant D-cache maintenance too.

Should we use invalidate_icache_range() here instead? (and why does that
thing need to toggle uaccess)? Argh, too many questions!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
