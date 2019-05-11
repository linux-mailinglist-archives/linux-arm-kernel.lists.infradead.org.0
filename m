Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3339F1A6B5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 07:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KADKIUhmven50huwwY6Oo6y10Oj948ahaSx7Lgu304=; b=jBmhSEc2MBmRlo
	npfKBEveutqtKXH/bOPYPKUYdyf+HyZkaDAj9wGoP3c/UYbNCUHaZsA7t7zubhTavsihwx8Qs/Tsk
	ptey2CA9J2Fzrke46XEXCDBpHGphOE7McGZaW7O4d/q6WsDBl5Q04D7CjXdqWUDbono4hdN/VsOvD
	i2kyCChLPpiIhfmQ07alsJ4OoJxdRLI3Y+ogeoV7opv1Ty0SV+e3J8PyutpidCPnOWQvoH9bI5BB4
	h+CZYPY82b7Fj4GjWrENo/LQxVC8MkJMlXQ2om6QunXDsB7ajm0rHalDX9Qv2SEMzEKL7SOxvYRNc
	3QCiKGKDyF26wMIOVz2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPKNN-0005vq-ET; Sat, 11 May 2019 05:16:49 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPKNF-0005v3-62
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 05:16:42 +0000
Received: by mail-lf1-x143.google.com with SMTP id n134so5525013lfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 22:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RubaYD8lmKjs7mOc/w46zB7MTkNoz0PuGk8avcCv1n8=;
 b=KnpNi/ucLh6IWYYptTfkL/B8kBD2j4ymE2Yi5Zbg9F8XKW89fK0cdBydRylStUBQ6F
 eT0qJceyDrRupFQj6FZWqgAUOg977uKXNdeLKNbfXrBfw2BbAJR3hXX4VcbxcsD/482k
 W5tB8xSluxW3w2q2ZVxYLI/XHcbj2aYKEsP9DPOE6ip/2RWzyKVxLcdTFB0gk6Y4FLT8
 O7mIyG7miRN40jOk5dyuN9quiQP6sPGEeAPs4/h5gHG9B8q/gz1x+vH0438pEkLrSQCr
 iMc/2OeX5AqWTYaAtM+8WxliqQn2Q46xIXIoMUfCVNbp+7CriHhh3x7QWmA4946Bya1d
 rUuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RubaYD8lmKjs7mOc/w46zB7MTkNoz0PuGk8avcCv1n8=;
 b=rd96pIKTpbhKciLsBKtrOcihsz4WvRWO4LUuJKRN5xdXrMPmcIbXA4PMYr08uSGc6B
 QG56IgfHoX6leThI7D5aaWsy5wF8IrflNIEwdgTAHGiLRy1b8zwikNpD/cW2RVKjiq80
 s+If/G+CK2CjeOvCpL1ab7GDqOmCYIKavwVL2Dz+JMGgc00jjo7q8D16k/iLdwdAArWq
 FrAd8jzXVexMSAGgmbEFwCHYrC9g/+ZzPDURLKolDqaQij+xiCupzufC28WxAIl6Xlx6
 ozrnDJkjTICjG8tNzNmHR7Cyn2ge+AxwikJ17cRrwPVpoMwtqUFrKdiw+P7NCMJCbNu4
 jyAA==
X-Gm-Message-State: APjAAAVo8Gqgoa7o4YtlgEiNoZfDgU/5dfl4ztbfR4REByJuA131+Y52
 K8yuI2DHOGYejiELggMyLgsKeGW2kIPWMq7Ec1E=
X-Google-Smtp-Source: APXvYqzINuOJuvge+HOzITNLiJ0az8yid3Ry6I90eMiHeFr1Pgol9IDFg9QvWgBzNQC5mPuWXYIYhwXXmRz3yvdxBe0=
X-Received: by 2002:a19:ca0e:: with SMTP id a14mr7824921lfg.3.1557551796422;
 Fri, 10 May 2019 22:16:36 -0700 (PDT)
MIME-Version: 1.0
References: <5cd642e1.1c69fb81.4ee83.327d@mx.google.com>
In-Reply-To: <5cd642e1.1c69fb81.4ee83.327d@mx.google.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Sat, 11 May 2019 10:46:24 +0530
Message-ID: <CAFqt6zZLxvXrT4Oky6F3oWa2g8LWhowUL6tz3H8XeBeDnO0y9w@mail.gmail.com>
Subject: Re: [PATCH] mm: Remove duplicate headers
To: Sabyasachi Gupta <sabyasachi.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_221641_256872_3FB7796B 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jrdr.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Russell King - ARM Linux <linux@armlinux.org.uk>, rostedt@goodmis.org,
 linux-kernel@vger.kernel.org, rppt@linux.vnet.ibm.com,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, changbin.du@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 11, 2019 at 9:04 AM Sabyasachi Gupta
<sabyasachi.linux@gmail.com> wrote:
>
> Remove asm/sections.h and asm/fixmap.h which are included more than once
>
> Signed-off-by: Sabyasachi Gupta <sabyasachi.linux@gmail.com>

Acked-by: Souptick Joarder <jrdr.linux@gmail.com>

> ---
>  arch/arm/mm/mmu.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index fcded2c..29035f4 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -23,7 +23,6 @@
>  #include <asm/sections.h>
>  #include <asm/cachetype.h>
>  #include <asm/fixmap.h>
> -#include <asm/sections.h>
>  #include <asm/setup.h>
>  #include <asm/smp_plat.h>
>  #include <asm/tlb.h>
> @@ -36,7 +35,6 @@
>  #include <asm/mach/arch.h>
>  #include <asm/mach/map.h>
>  #include <asm/mach/pci.h>
> -#include <asm/fixmap.h>
>
>  #include "fault.h"
>  #include "mm.h"
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
