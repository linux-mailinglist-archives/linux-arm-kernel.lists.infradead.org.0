Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDBA311E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CArQDMFmNm7GHA+ltWaNwsGl+ANeg8EB4LkaHsC1Jfk=; b=G7rhamWDEgLlwn
	7O6Mx4hjFEPPcWGjAhEdHT5ptQnGgx9wGcECqXeiueUW9L59j5CIoCO4QOyU6Uwcp91eK/wOjgUul
	KF5vrPtQWTdm8yfg512XSNAgQr+7io6qxoWnMeQ7RyzgnjfYF3SD63dW2fOI464256OKnKvHOnqJv
	L6sudBGoNf4BPuEfE4BFjhUDMBnYril91gc57Ncky4f3l2eqFgRjqK/dlaqs2RFUj+UA7lCoaJiFz
	CVu9NEZx+UxI4lHxsXdkwHqRg9cMQSwywgsXBtLICLWnK6sDh7YgONSTGwzeBGEFbR7IxVqGOGvxX
	Y8ji6NxkS6DOv62GVlMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWk0e-0000iH-6s; Fri, 31 May 2019 16:04:00 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWk0W-0000hp-HH
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:03:54 +0000
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
 [209.85.222.41]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x4VG3EH1022977
 for <linux-arm-kernel@lists.infradead.org>; Sat, 1 Jun 2019 01:03:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x4VG3EH1022977
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559318595;
 bh=kJBHRLcXvbaLbs7VdY0urin0KXZb9MB5irbTDQDFLsM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=j1vS3Fo2SbSSGk5hgSGlnZE18MPfhXToy+JQX6djnAMb6PqS6sC4G7WD9736s6PKJ
 10F7vqeJS79+DJ3knYjdpChTvE8N3V/W8R2ucksMjuF+TaC4SdSt0kZLnju2TAE0bC
 6iPMC/O0QIKHMtdipBy3dEZE3I/P7kGA5MVv93o33/CfeKA+8yXp0HFEFXAKCC5eFU
 jaSJ8AyNJ2yXiV5udyXAMvodL0Mlig+DC4VoI8tNbFgtrWvZZ6Lf0w7HZVzD/qxmeh
 DxonV1qKs//TvOYzk/X7inuTOqsRnVlloS6Slk5lzFmX4lIxctELld9i11NGF6Jx5N
 MCtiwYF/17xZg==
X-Nifty-SrcIP: [209.85.222.41]
Received: by mail-ua1-f41.google.com with SMTP id d4so4024052uaj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 09:03:14 -0700 (PDT)
X-Gm-Message-State: APjAAAXbFCo2O/IQfchdaU0Xx0/UYytbewA4yn9Hll8KDLm7YgE4fTOK
 chBlUvg6VNl3959hV9UfrZOR5Eb/vbzME6rQlDc=
X-Google-Smtp-Source: APXvYqwHQqFZ9e5//lG3X8WUAgLmWN6ZzV4dNJBRrUjKgJtyQq6oBEdOAFsk02L/Yu/qZJbj3cpHf8ZTPT/71l3++hs=
X-Received: by 2002:a9f:3381:: with SMTP id p1mr5953024uab.40.1559318593421;
 Fri, 31 May 2019 09:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <1559316388-19565-1-git-send-email-george_davis@mentor.com>
In-Reply-To: <1559316388-19565-1-git-send-email-george_davis@mentor.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 1 Jun 2019 01:02:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNATXzLzttF_gLA4wdfE1ue+bLPhvDZVsTKbB5K3nrN3jng@mail.gmail.com>
Message-ID: <CAK7LNATXzLzttF_gLA4wdfE1ue+bLPhvDZVsTKbB5K3nrN3jng@mail.gmail.com>
Subject: Re: [RFC][PATCH] Makefile: Fix checkstack.pl arm64 wrong or unknown
 architecture
To: "George G. Davis" <george_davis@mentor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_090352_834907_B0A5FCF2 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, Joe Perches <joe@perches.com>,
 Andy Whitcroft <apw@canonical.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 1, 2019 at 12:27 AM George G. Davis <george_davis@mentor.com> wrote:
>
> The following error occurs for the `make ARCH=arm64 checkstack` case:
>
> aarch64-linux-gnu-objdump -d vmlinux $(find . -name '*.ko') | \
> perl ./scripts/checkstack.pl arm64
> wrong or unknown architecture "arm64"
>
> Fix the above error by setting `CHECKSTACK_ARCH := aarch64` for the
> ARCH=arm64 case.
>
> Signed-off-by: George G. Davis <george_davis@mentor.com>


Why don't you fix scripts/checkstack.pl ?



> ---
>  Makefile | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 11358153d8f2..3e615e8553c0 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1695,7 +1695,11 @@ PHONY += checkstack kernelrelease kernelversion image_name
>  ifeq ($(ARCH), um)
>  CHECKSTACK_ARCH := $(SUBARCH)
>  else
> -CHECKSTACK_ARCH := $(ARCH)
> +       ifeq ($(ARCH), arm64)
> +               CHECKSTACK_ARCH := aarch64
> +       else
> +               CHECKSTACK_ARCH := $(ARCH)
> +       endif
>  endif
>  checkstack:
>         $(OBJDUMP) -d vmlinux $$(find . -name '*.ko') | \
> --
> 2.7.4
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
