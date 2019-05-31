Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26C3309D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XugoBoIIEfvjlyRa3OTBietWAiedxJTm3T3ehgioBLw=; b=p4Cns7FTgxJiUB
	bEVJFAul9+zuH5Sy4Sas3mnLt51wjJB5x/q9bUNypsB15IZ5vMcLmuk3Yk9FfPx6tdDrirC63UbCF
	/LuayhUAzXsOaMC1hx7xx/YJlkHBJhD8+h8PMCMOSyfbNwIkWtjRwcl3DUCSUhWp2f7PMrrLNnXNZ
	tNY5apiSAUXdgIZ8I/6B8zhd3kwfC1k5FWC9MXIneKlEVfqmgvC6kOGshMtRW6kgat9ZJuW+4+C9l
	KaO2hleEgFuFopujnqRAGhqZsV7KsYfme6mJNPVPLN7d9D83Wps/Ba1bogAUYCMIqkj6hvHkv/v40
	0ikHbE9Jb7k2sOtD0mRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcXr-00007I-S5; Fri, 31 May 2019 08:05:47 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcXk-00006H-Qn
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:05:42 +0000
Received: by mail-qt1-f195.google.com with SMTP id i34so10323378qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 01:05:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KsWPoelIonqgtQjEjEZhAHR4HHsLSmBSBxOwcnV/0ek=;
 b=LUxVo/fSDf6/5GIiRxuWmy9cOHeEb81J3SYXa5VR5Vqx2DnnJlQLF2aDEn6kmuvu3G
 eDuegO1OO+LkrWhBEuApg9EnPi2KC9vrSPvUZYuVkeqENIF7WgVN4w46D58nJc5X1p/T
 t/KaXoN7yp4Kf4ILCOi8vP1wDlYU786Rgtjdu2teRPs0N07rPVAECxY12Ii5BZCv3zqZ
 56vuCMv8QIdlZ9wpi63nJ7oDbGn9FtcV0/NLCTOfcm9AaZxvTpv+bdh0R7snluUkj4HI
 m7tFBTqH3jx/eEQXkPVhE/S/zTK9PN9mjUDw81ollUJzzHBd4tER4ArQh14sYnxUP70z
 qLUg==
X-Gm-Message-State: APjAAAVfmxxLZQNcW33joTfXPZIK6/3ohgN7OtoosXu8SwU9HJrMkHVB
 IPPtxvLAJBzyqHTgLd86+4+Qak1udf6Yj1rM5wY=
X-Google-Smtp-Source: APXvYqxpUebMd4P6HeLcNgjp63Kigfm6+Toh9gpYgK7tKsqGakdyNSwEH4MHbH8rOHyEAgWuOxDPZhRFFQ2E/WINNSM=
X-Received: by 2002:a0c:e78b:: with SMTP id x11mr3752479qvn.93.1559289938144; 
 Fri, 31 May 2019 01:05:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190528235742.105510-1-natechancellor@gmail.com>
In-Reply-To: <20190528235742.105510-1-natechancellor@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 10:05:22 +0200
Message-ID: <CAK8P3a0a0hMsZDkqKsfsyCWpdvDni72tjAxCz2VeAaU56zqrXg@mail.gmail.com>
Subject: Re: [PATCH] ARM: xor-neon: Replace __GNUC__ checks with
 CONFIG_CC_IS_GCC
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_010540_868900_4D5B483B 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 1:57 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Currently, when compiling this code with clang, the following warning is
> emitted:
>
>     CC      arch/arm/lib/xor-neon.o
>   arch/arm/lib/xor-neon.c:33:2: warning: This code requires at least
>   version 4.6 of GCC [-W#warnings]
>
> This is because clang poses as GCC 4.2.1 with its __GNUC__ conditionals
> for glibc compatibility[1]:
>
> $ echo | clang -dM -E -x c /dev/null | grep GNUC | awk '{print $2" "$3}'
> __GNUC_MINOR__ 2
> __GNUC_PATCHLEVEL__ 1
> __GNUC_STDC_INLINE__ 1
> __GNUC__ 4
>
> As pointed out by Ard Biesheuvel and Arnd Bergmann in an earlier
> thread[2], the oldest version of GCC that is currently supported is gcc
> 4.6 after commit cafa0010cd51 ("Raise the minimum required gcc version
> to 4.6") so we do not need to check for anything older anymore.
>
> However, just removing the version check is not enough to silence clang
> because it does not recognize '#pragma GCC optimize':
>
>   arch/arm/lib/xor-neon.c:25:13: warning: unknown pragma ignored
>   [-Wunknown-pragmas]
>   #pragma GCC optimize "tree-vectorize"
>
> Looking into it further, -ftree-vectorize (which '#pragma GCC optimize
> "tree-vectorize"' enables) is an alias in clang for -fvectorize[3],
> which according to the documentation is on by default[4] (at least at
> -O2 or -Os).
>
> Just add the pragma when compiling with GCC so that clang does not
> unnecessarily warn.

If I remember correctly, we also had the same issue with older versions
of clang, possibly even newer ones. Shouldn't we check for a minimum
compiler version when building with clang to ensure that the code is
really vectorized?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
