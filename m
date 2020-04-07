Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B1B1A08E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 10:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DqyBlfQkaOjtTHB1/nG8Zfoc3Nga2K4GNNV/DFsSrQ=; b=DKCaEQWY6uSPE8
	ElDHtoJSKsaL8U02WMR5Yi/fyrCZ/haqXEiO8cbMiFJa7Z21VSqSoB8pu+0Mvfhx0RrFBXZmxMYPc
	rr3APbJls+JdStlSZmeCMjs2YaNmEYAcOGpiQD00ls6l09iCybjdhB3Jj8k7rrOw0vFRvIvgYmf1Y
	WiILIsgbvaIpu0YrP1Zx/kZsXoMIcGb1CWun7n0UzOZksyYr5qA1x2+3pQP//C2HRoZ57RexRvBpZ
	ABjqY1dzK0Ph3KRiDN6uGcF+GLL36NH5kP30Fmug/CXkpIFZIZJME4iL1aLxm3/TjFCG3+2Mo78s3
	FRSBINXZLgST5LE+V7GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjFZ-0004Ms-5j; Tue, 07 Apr 2020 08:06:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjFS-0004MO-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 08:06:19 +0000
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
 [209.85.166.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D517206F7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Apr 2020 08:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586246778;
 bh=ijVnqwhCqf4fs9C+9xw7ciBLhNLO23n9D9rmQH1fmiA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mHlSxJrcNhIYT0hvojUxBi4+ctfXYPKVF3K6WA1+0quK3nY3Yt9HxuHz3WPpAQ3EV
 5XkMkJp3UyYMPG7+dsgE8T6YPn7j1ObiMvzfSaz3HBBG2hTcCpOzjf0TXmKxKgdvuV
 XMxu8wynWzyVm8ZTgC6bpglIaeWvNHdCsPwqPbss=
Received: by mail-io1-f53.google.com with SMTP id o3so2469488ioh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 01:06:18 -0700 (PDT)
X-Gm-Message-State: AGi0PuZYGhQg8CgoJTI93L6/DpgZAzNyDsXzRZdqVUJpa5lQQIsPLrFr
 HSv1ml22h7/ZMdXKamspOgGwDVK9eCSttZtOdFk=
X-Google-Smtp-Source: APiQypLsme6x+ejsERpriV/GJkOFApDxTEjYLZx4E9jqw16cBVFPgwG339SFwGl4V6xNQkbLjeAz7NaVMLfkykg0JVY=
X-Received: by 2002:a02:3f2f:: with SMTP id d47mr764961jaa.68.1586246777449;
 Tue, 07 Apr 2020 01:06:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200407074623.29378-1-ardb@kernel.org>
In-Reply-To: <20200407074623.29378-1-ardb@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 7 Apr 2020 10:06:06 +0200
X-Gmail-Original-Message-ID: <CAMj1kXH+dz3MhCyR-LNnsPeNvw_ZX8kqxCy0Uuu5t_u0bgx3aw@mail.gmail.com>
Message-ID: <CAMj1kXH+dz3MhCyR-LNnsPeNvw_ZX8kqxCy0Uuu5t_u0bgx3aw@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: deal with ADR going out of range in
 efi_enter_kernel()
To: Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_010618_575631_040DBFC0 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 Apr 2020 at 09:46, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Commit 0698fac4ac2a ("efi/arm: Clean EFI stub exit code from cache instead
> of avoiding it") introduced a PC-relative reference to 'call_cache_fn' into
> efi_enter_kernel(), which lives way at the end of head.S. In some cases,
> the ARM version of the ADR instruction does not have sufficient range,
> resulting in a build error:
>
>   arch/arm/boot/compressed/head.S:1453: Error: invalid constant (fffffffffffffbe4) after fixup
>
> ARM defines an alternative with a wider range, called ADRL, but this does
> not exist for Thumb-2. At the same time, the ADR instruction in Thumb-2
> has a wider range, and so it does not suffer from the same issue.
>
> So let's switch to ADRL for ARM builds, and keep the ADR for Thumb-2 builds.
>
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

If nobody has any objections, I'll take this as a EFI fix.


> ---
>  arch/arm/boot/compressed/head.S | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index cabdd8f4a248..e8e1c866e413 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -1450,7 +1450,8 @@ ENTRY(efi_enter_kernel)
>                 @ running beyond the PoU, and so calling cache_off below from
>                 @ inside the PE/COFF loader allocated region is unsafe unless
>                 @ we explicitly clean it to the PoC.
> -               adr     r0, call_cache_fn               @ region of code we will
> + ARM(          adrl    r0, call_cache_fn       )
> + THUMB(                adr     r0, call_cache_fn       )       @ region of code we will
>                 adr     r1, 0f                          @ run with MMU off
>                 bl      cache_clean_flush
>                 bl      cache_off
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
