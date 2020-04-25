Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D391B856C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 11:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5KToiOl03DdWFihuCNhxg3vHKNEZ4cMyDBkYsREgno=; b=ImDksXkpZpzDZt
	Wle5HMpe70iQkMg0b340Go0gdHM0SYwcwpypxfQvw7i69F5WhaxFuZv5kBEe5nownBDzZYTXHwicT
	yJXghLlReZx49k4dIoSOOunghqVysbVzV8KBVQXbrxpkqR4Lk7BOJXCwijoBqSvUFEjWKhbsYXWPP
	lwPPjWcYgHl5j0cR7LVCYBMh+bWx8ULWV416tXBAKkOoLmdWsDG3nBRTv0Kzv/bF2gFekmlkmPHlO
	u59MJLYg6sjlfldoHx1J5m6ZUVLSfz+j7Zb78AAPUcUOmmFQkqrpiQB9kbRbivYpWPG4HmK/N8JpE
	eiWcpuZ3o+/oabylXEmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSHWt-0004hQ-2y; Sat, 25 Apr 2020 09:55:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSHWh-0004gg-ND; Sat, 25 Apr 2020 09:55:13 +0000
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8BF921582;
 Sat, 25 Apr 2020 09:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587808510;
 bh=cFCb6ouVsRKlwXUJyAVxrlbNXmEFn9jU+rjADB6sKDA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=v4eWhID3u6oMR1TCD9C2GRkOvzExTDKctrBW8x+Zm8rAufeSFrBSk6aIl2GNZ+R3N
 ay4sNtLTFHsyPF/KbFI/P/THHSCnz3LzZhj712PPIKzNScNyeqFB1t5nAuqtl0bYiV
 fHXlo5QRuM9ph3M1cFXuygI5knfNTscN/hhdUxwY=
Received: by mail-il1-f178.google.com with SMTP id x2so11734255ilp.13;
 Sat, 25 Apr 2020 02:55:10 -0700 (PDT)
X-Gm-Message-State: AGi0PubAWLyKo4RW6x5TZVkt0g81FD2rtNhl2y6MICNOaySRu6ny+PF2
 YTNDo8q3ZnOCzgRaHryLn9H+3A3ySYJdvApdBhA=
X-Google-Smtp-Source: APiQypLZtLKycOIzKTEYuJq4H3b7SltxSSmrEey2TDNOZqtmGbqzGMnCBRhtXICyYR3C/t2dUY5Lwx2OOjasIxJ5xjg=
X-Received: by 2002:a92:aa0f:: with SMTP id j15mr12758968ili.211.1587808510181; 
 Sat, 25 Apr 2020 02:55:10 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-b521aadc-a209-48d6-886c-957c87f97367@palmerdabbelt-glaptop1>
 <8bf726ff-2f25-e8ba-17c7-2abf450b7c72@gmx.de>
In-Reply-To: <8bf726ff-2f25-e8ba-17c7-2abf450b7c72@gmx.de>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 25 Apr 2020 11:54:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHNcyVnEsB71KPjZEcPuCT9KCctbOJW8nOC5uy2GYLtLA@mail.gmail.com>
Message-ID: <CAMj1kXHNcyVnEsB71KPjZEcPuCT9KCctbOJW8nOC5uy2GYLtLA@mail.gmail.com>
Subject: Re: [v2 PATCH 1/5] efi: Move arm-stub to a common file
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_025511_780040_958AE12A 
X-CRM114-Status: GOOD (  16.71  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Atish Patra <Atish.Patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 at 11:48, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>
> On 4/21/20 9:19 PM, Palmer Dabbelt wrote:
> > On Mon, 13 Apr 2020 14:29:03 PDT (-0700), Atish Patra wrote:
> >> Most of the arm-stub code is written in an architecture independent
> >> manner.
> >> As a result, RISC-V can reuse most of the arm-stub code.
> >>
> >> Rename the arm-stub.c to efi-stub.c so that ARM, ARM64 and RISC-V can
> >> use it.
> >> This patch doesn't introduce any functional changes.
> >>
> >> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>
> The code being moved has some problems:
>
> The ARM stub ignores the return value of efi_setup_gop().
>
> drivers/firmware/efi/libstub/arm-stub.c and
> drivers/firmware/efi/libstub/x86-stub.c both call LocateHandle() before
> calling efi_setup_gop(). I think this should be moved to efi_setup_gop().
>
> I guess the issues can be addressed in some follow up patch.
>

Yes, I suppose this could be improved a bit, so patches welcome, as usual :-)
But I don't think it has any bearing on a patch that renames the file.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
