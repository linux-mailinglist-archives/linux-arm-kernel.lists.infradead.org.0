Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D9F1890C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 22:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C48752ysmeBsIMWKq3b0arq4Elj9Nt7n22XZKsDLiOA=; b=M91to/IIMOzY/f
	QGY10PMv+VHh8N49ML62RgWsYv1klDnUt5BQ3HcQ1UJyX8wu03wPqtxFn2b/jva0YxsMur+0vBoMe
	j6rfwbQfJXFXypCdbbz7t/Pv5lGOasMptlmFfUmwfyWW1NsdIFJeBoHe76yDVXRtV8Int+WsT0AMT
	Cr8SCL20MBGTFWWmgU+403ag7GaQDhkJKxRIVkf6z5rsxD2KYDXyFIKSJBT9hD8CZ3wW1EoK1IS+9
	dc5ppg1kPLuXgTBceIZAKg64tOAXUUxzcS9qXuooVRtoBY7dB4JBqHRVil24CLlTBEipathCiXsLQ
	E4GcYpgWojXnllX9Ld+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEK9C-0000o4-9f; Tue, 17 Mar 2020 21:53:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEK93-0000jy-0C
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 21:53:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F25DB20724;
 Tue, 17 Mar 2020 21:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584481984;
 bh=4fpXMStLT3ChZUSNNoR5DM0vAh+pn633V+leBozCyWA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j9izuxAJEYWfwOlyHm+dzHMrstapzlPoXAEYb7DfotjV7f8+lIrKsh/8yjOmRey35
 G6BkqEvgCCE0/nxL4u9SrTR3Ai5Q51DCYkWMsq7w+HwzxaZHlQeiS4oaslEAOKqBXs
 HfHocYpm5b4/XhOJrKH+WzAynGxE3ddRp080wgDc=
Date: Tue, 17 Mar 2020 21:52:57 +0000
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 6/9] arm64/build: Use common DISCARDS in linker script
Message-ID: <20200317215256.GA20788@willie-the-truck>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-7-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228002244.15240-7-keescook@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_145305_065749_BDD98769 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 linux-arch@vger.kernel.org, Borislav Petkov <bp@suse.de>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 04:22:41PM -0800, Kees Cook wrote:
> Use the common DISCARDS rule for the linker script in an effort to
> regularize the linker script to prepare for warning on orphaned
> sections.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/kernel/vmlinux.lds.S | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 497f9675071d..c61d9ab3211c 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -6,6 +6,7 @@
>   */
>  
>  #define RO_EXCEPTION_TABLE_ALIGN	8
> +#define RUNTIME_DISCARD_EXIT
>  
>  #include <asm-generic/vmlinux.lds.h>
>  #include <asm/cache.h>
> @@ -19,7 +20,6 @@
>  
>  /* .exit.text needed in case of alternative patching */
>  #define ARM_EXIT_KEEP(x)	x
> -#define ARM_EXIT_DISCARD(x)
>  
>  OUTPUT_ARCH(aarch64)
>  ENTRY(_text)
> @@ -94,12 +94,8 @@ SECTIONS
>  	 * matching the same input section name.  There is no documented
>  	 * order of matching.
>  	 */
> +	DISCARDS
>  	/DISCARD/ : {
> -		ARM_EXIT_DISCARD(EXIT_TEXT)
> -		ARM_EXIT_DISCARD(EXIT_DATA)
> -		EXIT_CALL
> -		*(.discard)
> -		*(.discard.*)
>  		*(.interp .dynamic)
>  		*(.dynsym .dynstr .hash .gnu.hash)
>  		*(.eh_frame)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
