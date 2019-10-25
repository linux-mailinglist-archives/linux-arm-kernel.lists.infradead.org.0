Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F29E546B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 21:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8iEpwcUiYEbAn0v3DrTY0iwaQV/egF+zN/7Cd20vfs=; b=bIV+bR8e0IM1g7
	be919P5opjNqiPlYUxRrvg0VaJgwz0kveyylBH0F2qXKeXJRZ6m8uvHxKoBtZmeq6TzXt30dUAKFi
	gRjaUcP4JbPhEhbEv9hw3bXhfvgtiZf7Zk9t05jkI38nH2zLr5WNk/LzWDJTZe6gO47A+cJP995Gf
	nugJMDEjnmT2Y7JqTDPu5ecNLbe12RfH1gHyPQR6vw/JlGdLFs/skq22Fy6wAMFSq7SC6Bi391rXB
	fMlJ4TIElGhVgWCc3zpznBig3egw3wpsDc0vG0FOl2PNsoAVZTMogbbuw37vln6ehoktDmEVmD4V9
	eObxUiJ2QB1Amb3slNlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO5Ls-0004qR-5d; Fri, 25 Oct 2019 19:34:24 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO5Lg-0004pr-BQ
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 19:34:13 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N5CMP-1hyc2H2OZR-0118E5 for <linux-arm-kernel@lists.infradead.org>; Fri,
 25 Oct 2019 21:34:08 +0200
Received: by mail-qt1-f180.google.com with SMTP id o49so4959256qta.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 12:34:08 -0700 (PDT)
X-Gm-Message-State: APjAAAW3e7NT2OLnhBxWvHNVjCh+0GccQoq8b0Y/nNTzXJUdjFXfqU8T
 slC5cGxfJER2wKFaW/CFE7zQrjY0mqhLncU4Wx0=
X-Google-Smtp-Source: APXvYqxqRUdDkDGDboIREYAfMa9BcSiD+FbyHPst+CUWY+pnkxhYEyvJtms/zAXH68dfps3uZH2BHpzrqzNQtkt1Jus=
X-Received: by 2002:a0c:9083:: with SMTP id p3mr3905167qvp.210.1572032047231; 
 Fri, 25 Oct 2019 12:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2RDBTnKZ-yOJkqY5+2LBeeqvGJ3AMnf+cnqbDVPeUf6g@mail.gmail.com>
 <df19494e-589b-fbf5-bf19-8e8752b5e5be@arm.com>
 <20191025191735.GE25745@shell.armlinux.org.uk>
 <20191025192843.GF25745@shell.armlinux.org.uk>
In-Reply-To: <20191025192843.GF25745@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 25 Oct 2019 21:33:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3o517utXmG0zVxtOFDRLrP6vTnmpXsoUdr2nXSh4dEQw@mail.gmail.com>
Message-ID: <CAK8P3a3o517utXmG0zVxtOFDRLrP6vTnmpXsoUdr2nXSh4dEQw@mail.gmail.com>
Subject: Re: arm version of generic VDSO?
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:356WUv5zibfNrY2quSGZqtkSFYT/f10bNVyEjQLky3QFrV7vCdo
 2YXH0CQUrZVVSe+WSnGJWaVwAKAXX4aBTrcMOtcq9wgBSDeGRry53TPNoXtYuKuhWZgv3Xj
 JulMG7eNJ4RaomxQq+6ebgEIvCX3HeROprxIv2aqqrBs5xTipeG5RAKJz8Zg6RW+109GYFd
 czE9hnYx+0Yju8/8RB0QQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FIYsdbP4qhw=:gS2w6bdokHcjROYdLcvXIS
 3HxufsSamp9vzcseUvqXmJmDrLiOyOueOHqc/Lio5AL9tgNJHzXJWvxqu+EAAGeUSGQnI+SRP
 9SILdqcaY3iL3kxBmpNVqVtcj9yIuXLysVsoLu47Cxm3WDb6qClB3jhbRB6P29ab6Nimcl/l3
 bsqn9O1HjmmCC64zIdfqSeDCEzCpTLeC3YCWB28uaYIDM9nJscGfYLvMSSC37tejYFMRjQeYM
 XJjeBdcL28uFLFtR9uzSU1L4dWrJJ13PewYrVZ1RP0q6jrOMC8wLJ+9exHZdQ8CdPH3rpoHEy
 wbA5h6CWlAFxhRWymhsgPDUFCW13zx5120DiBrZpK9KPDUhCqucNdvvE8LDIAG6axLNw7xa7B
 EMeOOJ95bg7L18aCLZAnA0l3BUQ6sRYAedMSimYNy+8c2jBaG3HeCDSSKTqFwlUW5q3ybHgZY
 /mKEUwzF68Vdzta32npCZ7IMAEyERPEUyFkqP13kSSQkoRbvFgBgc1K78IaiysoIYz7EbN6il
 MWzkOpGVnl1KyDMKBP2fvQew7I/CWpIpaOr3DNO9d4dJkDnI9+McbggvQH7ndg8efurvN1d34
 HqXQmCmy1jWhufngrlv6e0/rdeF7wk6XGdhT3foLjZu5cCL5PNbFPwVSKQ3MPchcaIUU1ZiGP
 LK1uwAepQVkhMrdnDvlNAROjaJB6OMKc2iyHkD/y+t8buU2XuitcMMWNx5c2CTNf8SV8aCcnr
 lbziMXA3kg+O1GxxTmj0j3DD2iCIhfIPMvwzZcK4UT6AoerFVf100+JC2qHNKrWl9KNN1dWPc
 4PgwCQpkjLXpR6t/FE8CfvnoMtPQHkYBP7vqVoP3ZuXj3wMuUmE4L+avbqsWM5JcXED+0/SzH
 rQgj/M/KkKS5E2wK3jCA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_123412_684735_435FDBD9 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: y2038 Mailman List <y2038@lists.linaro.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 9:28 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Oct 25, 2019 at 08:17:36PM +0100, Russell King - ARM Linux admin wrote:
> > On Thu, Oct 24, 2019 at 01:47:24PM +0100, Vincenzo Frascino wrote:
>
> Okay, having discussed with Arnd what the current situation is, he
> points out that he needs an additional patch to solve some further
> build issues with the generic VDSO patches - caused by the Kconfig
> changes in your first patch.
>
> I'd rather that gets fixed up before I apply the patches, rather
> than applying a set of patches and a fix on top.
>
> Please re-spin with Arnd's Kconfig changes included.

For reference, this is the change I needed to get randconfig builds working
in configurations that did not enable CONFIG_VDSO:

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 32184065ceda..776ac0f4ef0e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -60,8 +60,6 @@ config ARM
        select GENERIC_SMP_IDLE_THREAD
        select GENERIC_STRNCPY_FROM_USER
        select GENERIC_STRNLEN_USER
-       select GENERIC_GETTIMEOFDAY
-       select GENERIC_VDSO_32
        select HANDLE_DOMAIN_IRQ
        select HARDIRQS_SW_RESEND
        select HAVE_ARCH_AUDITSYSCALL if AEABI && !OABI_COMPAT
@@ -112,7 +110,6 @@ config ARM
        select HAVE_SYSCALL_TRACEPOINTS
        select HAVE_UID16
        select HAVE_VIRT_CPU_ACCOUNTING_GEN
-       select HAVE_GENERIC_VDSO if AEABI
        select IRQ_FORCED_THREADING
        select MODULES_USE_ELF_REL
        select NEED_DMA_MAP_STATE
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index 608a1f6414c2..dce67c6834a8 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -896,7 +896,10 @@ config VDSO
        bool "Enable VDSO for acceleration of some system calls"
        depends on AEABI && MMU && CPU_V7
        default y if ARM_ARCH_TIMER
+       select HAVE_GENERIC_VDSO
        select GENERIC_TIME_VSYSCALL
+       select GENERIC_VDSO_32
+       select GENERIC_GETTIMEOFDAY
        help
          Place in the process address space an ELF shared object
          providing fast implementations of gettimeofday and

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
