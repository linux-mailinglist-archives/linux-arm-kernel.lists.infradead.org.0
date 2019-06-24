Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDECB51C15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 22:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqSaeOeg7IJiNM5sWdj0i7A5Y+cTvS+Y7ruoUlti168=; b=AljJRTrfj19OAf
	7fXNuF6RpcLpat3KohivpCWxeciqjW6EyPWpkflR/zmNUQs+nqKIgpchr73DR1ML4GTx+yFDx/MK7
	SmzO5yHJVk9hgSE7BNbHDqGOutOCMSGI0dI1FivBTmmhgO1B/fruPu9vEvv3SVhiqyaIDcSPtTyZx
	sGoNsNdM0DtRchba2iLfQDTbIhAHnKaBNlpjVAl3BAc4h9nige+Wh1oSRSokEMQ3/4I4QSp12KdkE
	s2CQItHsh+H4RsXaaSTP2ulyKmRQTb3YHd0ZTEgM1PHIgf4sc3anuE0AJR5qQbJPSukxHKMKXnFr6
	ex76xhNA9wWmXim4ujOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVM3-0008HG-Un; Mon, 24 Jun 2019 20:14:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVLr-0008GX-7u
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 20:14:08 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so8162326pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 13:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gA5g+3BvXIn/jRUNtYVuPBrGxTYGWqRjXHzrOj0QNto=;
 b=L+LVVsngjla9IhiIu1qCjMLss6ub8VVfgUke6Gzkiw5NVrLAvU/gWqkuuHKGDOwMDW
 iKWKiU1MlGwfjkeOFjN1NalBd7eBHsPeYrhg5k+FVzwWHaMVG3/Nr3MLS/ULe22cYYIm
 IL/e1u438sX5K1I7IV95CS2mNWZ5Jx3DECYlJXfFyGyMMV7qeRLRg0T9Ta/abjre95vY
 Al3azFfxrVdCoEM1E08zKV/Gdac9CyZMPq5/qme19eVRYysbxXDDQQnyvWQkH8ELAZhd
 Vfkqazo5h0Y49tV+CODXvwa9eM4sGzGuCTYsu5+dqoaSCIWM0oEts3l4CQxlE8eRtodq
 c5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gA5g+3BvXIn/jRUNtYVuPBrGxTYGWqRjXHzrOj0QNto=;
 b=ekYGi5Kbcj4rXRadEKDJnuYTSjtmFzAYIdFEP6L3f1LBzMWtPf9eik6mLH075V/NrP
 1AvO3+1VtfN5VEWcPC8v/0B46FoSuRVn6CDFUlYq92J4HDMTIZVRoXSSf75VV+57kQuf
 dFk6Tf4fPnrh8Vth3U61AQQhI371Gd+ubTDytEbR+wWrA8w/IaFE7nsy6k4e48JraAEn
 59IjZj41vL844FeSGwyacchdKGJnmCKA0HdSLS71bLENBS/LA0cpSoFZLQoZvkc5SfIZ
 AeHqpZ3qgO6YvI0iJ9dkvBI7uCbL88AeNbMFpTEVFvHA1k5wKtB95lqWccR3sK78IK3a
 Ffug==
X-Gm-Message-State: APjAAAXsrPMTaHGpQ7lJIZiBZqC7kSIl/Vx1DMKwc3ZnG1IZ9ZHZEa/3
 6wH+jNwrb66l19mJptOjqr0iQj43HIcXb5PbstWgPg==
X-Google-Smtp-Source: APXvYqwbHSEWWrxjTaNlQU9gt/t2po73l8ewfc3CeWUC+uGjt8eAkQ/DPm2hhyPcDvaU4F0z6E4FQeppylXUxiE/nP4=
X-Received: by 2002:a63:52:: with SMTP id 79mr34338767pga.381.1561407243756;
 Mon, 24 Jun 2019 13:14:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190618020307.50917-1-natechancellor@gmail.com>
In-Reply-To: <20190618020307.50917-1-natechancellor@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 24 Jun 2019 13:13:52 -0700
Message-ID: <CAKwvOd=U7GOuZm82_-pOAVaU1FejuGASETyxVw00xnnj2rPoHA@mail.gmail.com>
Subject: Re: [PATCH] ARM: iop13xx: Simplify iop13xx_atu{e, x}_pci_status checks
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_131407_334114_009E68BA 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 7:03 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> clang warns:
>
> arch/arm/mach-iop13xx/pci.c:292:7: warning: logical not is only applied
> to the left hand side of this comparison [-Wlogical-not-parentheses]
>                 if (!iop13xx_atux_pci_status(1) == 0)
>                     ^                           ~~
> arch/arm/mach-iop13xx/pci.c:439:7: warning: logical not is only applied
> to the left hand side of this comparison [-Wlogical-not-parentheses]
>                 if (!iop13xx_atue_pci_status(1) == 0)
>                     ^                           ~~
>
> !func() == 0 is equivalent to func(), which clears up this warning and
> makes the code more readable.

Yep, this is more concise, thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
please submit this to:
https://www.armlinux.org.uk/developer/patches/add.php

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/543
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/arm/mach-iop13xx/pci.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/mach-iop13xx/pci.c b/arch/arm/mach-iop13xx/pci.c
> index 46ea06e906cc..94d30bc7bba1 100644
> --- a/arch/arm/mach-iop13xx/pci.c
> +++ b/arch/arm/mach-iop13xx/pci.c
> @@ -289,7 +289,7 @@ iop13xx_atux_write_config(struct pci_bus *bus, unsigned int devfn, int where,
>
>         if (size != 4) {
>                 val = iop13xx_atux_read(addr);
> -               if (!iop13xx_atux_pci_status(1) == 0)
> +               if (iop13xx_atux_pci_status(1))
>                         return PCIBIOS_SUCCESSFUL;
>
>                 where = (where & 3) * 8;
> @@ -436,7 +436,7 @@ iop13xx_atue_write_config(struct pci_bus *bus, unsigned int devfn, int where,
>
>         if (size != 4) {
>                 val = iop13xx_atue_read(addr);
> -               if (!iop13xx_atue_pci_status(1) == 0)
> +               if (iop13xx_atue_pci_status(1))
>                         return PCIBIOS_SUCCESSFUL;
>
>                 where = (where & 3) * 8;
> --
> 2.22.0
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
