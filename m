Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209691C0DD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 07:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAOXoGD6t+AwoTEeOVffx37RUikLTVobe4kSEG1Xuzw=; b=spzrT1BWVnGcSF
	V+68d38RWUTyhcp66sWHnb9T4ml+JtAaHczpjAcw9BF2waFlRvyp+IWZ0Kv5DUnt5omensu9Dg2zf
	/4CGhTMTRlH/VG6b4KoFsUuVPkaIeODCwgqCyNl73RPWEweM5xc+PV3udhxrFEWgvQjnXNC9loevw
	1kelePbXRg+AoncVL92NYMObhfA8baeyN5zvdl5uzAj4CkZrUbadzlejTCIjVXMNwfuIFbOj5d68n
	zZOTp/G/nzMwRUG+J6uX6J/13LqjyiXzuOVpQD+hzzkWN1wSntyqbpB6BM8Jlsg4XLkon5UT0MlbB
	Mkx4SZJShzuZ/1y62J0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUOSa-0005ud-1R; Fri, 01 May 2020 05:43:40 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUOSS-0005tM-NM
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 05:43:34 +0000
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 0415hDLO002179
 for <linux-arm-kernel@lists.infradead.org>; Fri, 1 May 2020 14:43:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 0415hDLO002179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1588311793;
 bh=JQ+NT5tSci3ERKOVJyxa+oPFKBaFqVmX8JUwPvEgrjc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=E8jJKgCnJSdNy3Ag+st7t/1vQ3Xo3+uvpba3XN96gbcisGv49qI7nt8biF5cRiWCK
 76WGkmVC5my2SwOJw9pJ6ikV9YKmblXeGt1NdGvjNW9IuB6hyjKsgdyIvCKhE6gwU2
 BeYkDA+UP+ef/gUxjt2/TkuW/Q65MMgm3P4k71vFF2/bGuI9PCogCY+5KrwrMjqXzu
 e7UiTp5eJ8NfSBm1IFIJ6AH/uGTz8dqCtVdITDQrhuubYyBhoE1t9KRMN1wsRAXEK1
 dZs8P4/Qj2MFiVtp6JeyA+jIE54LnHElDSh17Hk8UCLyX962Ti/zUxlAiGdcQJUWKh
 BUzzGKFYxfILA==
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id c24so3372844uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 22:43:13 -0700 (PDT)
X-Gm-Message-State: AGi0PuZvb0GmtdhoHkAyaF05qF/aKDRkQYn1hFhdmKN85ZAl/zb7aAgg
 sKNEL4XrrQviFQw2BRhP28Lt9Lq0kcynMSYnCFI=
X-Google-Smtp-Source: APiQypL9Dl/SneveyzRqSdEaEYpGDY+MVwEwFsVFpofdeFfpbHH1pm3Qqsf2iB3/M2GGhFUDXTeDDO3qeXfrNAk9FcU=
X-Received: by 2002:a9f:28c5:: with SMTP id d63mr1755267uad.25.1588311792545; 
 Thu, 30 Apr 2020 22:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200427003019.2401592-1-masahiroy@kernel.org>
 <20200427080600.GC11787@willie-the-truck>
In-Reply-To: <20200427080600.GC11787@willie-the-truck>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 1 May 2020 14:42:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT-O6C0WO3d0bx+sWCzJF5YmOVcnPYMFMX0wTz6y+C0pA@mail.gmail.com>
Message-ID: <CAK7LNAT-O6C0WO3d0bx+sWCzJF5YmOVcnPYMFMX0wTz6y+C0pA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: remove unused AS assignment
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_224332_992041_856F5B6B 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, Nathan Huckleberry <nhuck15@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 5:06 PM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Apr 27, 2020 at 09:30:19AM +0900, Masahiro Yamada wrote:
> > $(AS) is not used anywhere, hence commit aa824e0c962b ("kbuild: remove
> > AS variable") killed it.
> >
> > Remove the left-over code in arch/{arm,arm64}/Makefile.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  arch/arm/Makefile   | 2 --
> >  arch/arm64/Makefile | 2 --
> >  2 files changed, 4 deletions(-)
>
> Acked-by: Will Deacon <will@kernel.org>
>
> (If you post the arm64 part as a separate patch, I can pick it up)


This is just a trivial cleanup patch.
So, I do not split it per-arch.


Applied to linux-kbuild.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
