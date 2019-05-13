Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A56691B585
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 14:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJ4BnyUOk2pC+vHD4zLyG0HyhYdtTkYx2fGwUEjP/oA=; b=azKl44/ZG5CXUh
	q8oPzOqU2xghWAsuVIaO/dw+aaHnB9d47tibR5H0bQ7wcEMF7IPXS5Je9EbdJ2ZbSnlm4gobeciUn
	wssUGUArHUvzL+D2rFCE/jURmkfNZ+WO7SeUQwpRguPDDAmYxzogKD99KuJl5nvJTMJU5rczMeOLI
	a7XdMQyVkbsE4+eRcuRo+kC8/Vr6DvRhTHPAS0GUhDDukUqG+dJU6GsMEd014rfRVA3cftnuUn8jj
	wxk7p9F+E50SXzE+024euQoWtKGiScGuFHx8734d20aW9KWzM/GndK+M3ifYVBmMmXJdkuitfuaY8
	evl+BW0TAU6QFWrNbswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9kq-0005xG-Se; Mon, 13 May 2019 12:08:28 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9kj-0005wO-4G
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 12:08:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id c17so1531399lfi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 05:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ac4KtOUsNoDvhwtf3ctSxXYmUHfwscjlSjgUuFBgLgc=;
 b=ayvSBY5SqK3dHApMglm4NnvF2Cn8ewBJkdkjrAXDUz05PQiGVjpvRF3+XClC/rS+7y
 w2QwbSVX0QSgedqUHVt/NQLuHiTgd4KptSYM8ZX1KYkV21Zl0IVTfaSMMDJFZoDAxAKl
 Ldcu6GHWpLq7D/sumOCb5st2LfbLau2MFhWF+Kd+KL5EJhPu8bNHI8deOpXLJoyKL/XH
 8O+2OMgq6/bpFLORQ9v7LTfgUg3xQItT7YvqnX7babI/q8rsE/PhiwFWz895dv4dOzV4
 NpUdxdjloCvZbXie5EAaqdpjddFcAqrteUSS1gqh6JESdh4Rw/CNX2yq4sefmVAkjQuw
 j53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ac4KtOUsNoDvhwtf3ctSxXYmUHfwscjlSjgUuFBgLgc=;
 b=igrVXY+gZQhQ98fmX4GiBkyyvJ3O48gsNKJGT1zztL1Doodoa5nVGc2n97Qi2/P3s1
 n5e/ZqizQyTjAB2NLlJgqfMW3HW5rz8PDpwlNkzL3iW5FF7C9/eZnY7A5Gf4JAjOJReb
 0kQqPil+ok/9WvWDyKZ0bJjzKM7tjI8nIWvShhN0YZcO72L0GOd/2aRVoKvFDNL86Xul
 E44pLkPvoQniMJzBTt9CHW3d59MphLzpflH/UhgLGVudFad5cNxo5D81Q8UvC2dU6GEG
 W8Sq0bUV+VPnTAb5/xnYnPzvEQk5Sbp48NzYYGVtssn/8ukZhbWJItdWFkEeUWmS8HAO
 IUtg==
X-Gm-Message-State: APjAAAUOnq8J0vG7tSOjw1HJHlKzptpzrXblFcd65EQW1CBWqJDz6dfr
 /WBzt2oMbYgqj53qwHutjb3DAtqtqoqr8LLMbcI=
X-Google-Smtp-Source: APXvYqwJF+xPBJwJm+E8FKTc14obKjNiPyvFkQedIXVqqN5g+cLaP46UDWt9HDKLLIbctb7iaU1MffjgsblDjMEnym4=
X-Received: by 2002:ac2:5621:: with SMTP id b1mr14096133lff.27.1557749298694; 
 Mon, 13 May 2019 05:08:18 -0700 (PDT)
MIME-Version: 1.0
References: <5cd6d102.1c69fb81.b7df1.aae9@mx.google.com>
In-Reply-To: <5cd6d102.1c69fb81.b7df1.aae9@mx.google.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Mon, 13 May 2019 17:38:06 +0530
Message-ID: <CAFqt6zZie-ei1L6qNvDJc=BSmfy-3vbFq6cX5Q7GrY1V4ROR6g@mail.gmail.com>
Subject: Re: [PATCH] ARM: Remove duplicate header
To: Sabyasachi Gupta <sabyasachi.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_050821_168347_A1EDD9CC 
X-CRM114-Status: GOOD (  13.49  )
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
Cc: Russell King - ARM Linux <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 11, 2019 at 7:11 PM Sabyasachi Gupta
<sabyasachi.linux@gmail.com> wrote:
>
> Remove linux/tty.h which is included more than once
>
> Signed-off-by: Sabyasachi Gupta <sabyasachi.linux@gmail.com>

Acked-by: Souptick Joarder <jrdr.linux@gmail.com>

> ---
>  arch/arm/mach-sa1100/hackkit.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/mach-sa1100/hackkit.c b/arch/arm/mach-sa1100/hackkit.c
> index 643d5f2..0016d25 100644
> --- a/arch/arm/mach-sa1100/hackkit.c
> +++ b/arch/arm/mach-sa1100/hackkit.c
> @@ -22,7 +22,6 @@
>  #include <linux/serial_core.h>
>  #include <linux/mtd/mtd.h>
>  #include <linux/mtd/partitions.h>
> -#include <linux/tty.h>
>  #include <linux/gpio.h>
>  #include <linux/leds.h>
>  #include <linux/platform_device.h>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
