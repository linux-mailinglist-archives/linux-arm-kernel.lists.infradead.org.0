Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 596EF5B6C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuWjqBeo8UkK0xPv0HBgHZfBP9MDo+KJZPHXMEFAK1w=; b=md9X9bIUfPoo/I
	eucvZxp8+dWIatdL048g5JNGUyJncTHnI3gNcnMz67vyLQo1dw3eGsjVeKqktMIcRa3tmzaITPVZ0
	f5MuUmBs3CNObY12FyknGD3DskR6cIAe455XxTbpuBhpB/Gw0om5AY99XTduAtBZ5rj/1e8qC6ZAw
	1exXdRkdRo28L1mRcm6vc4jZjRFRWgA4JgrJ48/+avm0EInbeHvNSXe6MccFD4e1wavyb7wydZiw9
	0ds5ME+4NS4FCWfxl/IcZknVOILt4GCOOkvEC3Y9qzEgE5W2JCtTHrsAfaLfKq3Ab/2oxIoGjWq9P
	GB4K4p7JlUHM3IPog3wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrdH-0008Ug-OW; Mon, 01 Jul 2019 08:25:51 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrd5-0008Qq-Ch
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:25:40 +0000
Received: by mail-oi1-x244.google.com with SMTP id g7so9266283oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 01:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ym5J0gHrzU1eWCK3FfxSZBqLOjejvpidzKKQjL50u94=;
 b=lrFMLxnOPq9Gb4mDjYntgsL52S+LiOMwxA+1CiKwpqm4bkAWQubeuEmTZpgocpqb1O
 RAcp9m/7a0j4QRvd0YAw38RKxvt/1oTVBpg1e4CJhVXm8HQaub6o2PBzn/ulBOMj22Rx
 CkzVm+UvtSCDVNLF7ZzqHa9sNj0fafonaOsqFucDJPC6m3a42lqKMfIC1vWzEFOE59VS
 CeyNiVYUsDAlSknBKDNFEfihY3tvpvide7MUlvcLOdZXw7uygqo0Taos7eVX0O2+ZmpK
 Q50V+aszXieivGJH8paa5nh8T95E+br14g5T+ucz4JGmUF23vUMJXugn/SVcmxeiqDfw
 afDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ym5J0gHrzU1eWCK3FfxSZBqLOjejvpidzKKQjL50u94=;
 b=iD52HpcCSe0g8kOyEqiLx4aiywcKjKhO8wtjb/zTjgMvDaT0YDQAzfDjcfYCYyO6hs
 yK5ChpbEZfkrKcBUtCIoTTzZ1WvO3KStIbf4HvRBfgviURFYDctTuUydRTFUI1N41GoM
 KBv005O1CQNyxykTEfAdECdyFJ2MVAA0QcXkPxI4opXfGon4kvfo7XBrwkYvG4uJFstK
 pEjy5bsj9goaIDL5heYWplTZWxV1aA9jZttMOhKKZUp2uUzVwX1POP13n1gKa7Xx1enD
 C9ki71vzf8zaGN3JUh2J1Z1N//KUkP44eh3YKtbVObyy5rNYiq6O6lABUFzmkiwiUtb0
 3ztA==
X-Gm-Message-State: APjAAAWe44nOrBWNYog9qwO0ZzMLmGT1/7rdmGHPZW2fULMIII/BYmbV
 jC4cp7CFJcRj3TxcXEsJUHMpfLH67JKDiENixSY=
X-Google-Smtp-Source: APXvYqxeodXSxesbEQ96QbUQET7l2bQnzyKbxYSjLJV6c1xtLUMOy0COHZ8cHF5Dpw+SxIReWGDUZpFyqCz5TXzs5Ss=
X-Received: by 2002:aca:f08a:: with SMTP id o132mr5877714oih.101.1561969537943; 
 Mon, 01 Jul 2019 01:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190628105131.3130257-1-arnd@arndb.de>
In-Reply-To: <20190628105131.3130257-1-arnd@arndb.de>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 1 Jul 2019 09:25:11 +0100
Message-ID: <CA+V-a8s5FtLik_BKhWPuG=JywN64kN7cM1vbyx+-EbrrVdjmsA@mail.gmail.com>
Subject: Re: [PATCH] media: davinci-vpbe: remove obsolete includes
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_012539_456010_092EF75A 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sekhar Nori <nsekhar@ti.com>, LKML <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

Thank you for the patch.

On Fri, Jun 28, 2019 at 11:51 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The driver builds fine without these, and they cause build
> problems once davinci multiplatform support is enabled.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/media/platform/davinci/vpbe_display.c | 4 ----
>  drivers/media/platform/davinci/vpbe_osd.c     | 5 -----
>  drivers/media/platform/davinci/vpbe_venc.c    | 5 -----
>  3 files changed, 14 deletions(-)
>

Acked-by: Lad, Prabhakar <prabhakar.csengg@gmail.com>

Cheers,
--Prabhakar Lad

> diff --git a/drivers/media/platform/davinci/vpbe_display.c b/drivers/media/platform/davinci/vpbe_display.c
> index 000b191c42d8..18f9408013d1 100644
> --- a/drivers/media/platform/davinci/vpbe_display.c
> +++ b/drivers/media/platform/davinci/vpbe_display.c
> @@ -19,10 +19,6 @@
>
>  #include <asm/pgtable.h>
>
> -#ifdef CONFIG_ARCH_DAVINCI
> -#include <mach/cputype.h>
> -#endif
> -
>  #include <media/v4l2-dev.h>
>  #include <media/v4l2-common.h>
>  #include <media/v4l2-ioctl.h>
> diff --git a/drivers/media/platform/davinci/vpbe_osd.c b/drivers/media/platform/davinci/vpbe_osd.c
> index 491842ef33c5..91b571a0ac2c 100644
> --- a/drivers/media/platform/davinci/vpbe_osd.c
> +++ b/drivers/media/platform/davinci/vpbe_osd.c
> @@ -16,11 +16,6 @@
>  #include <linux/clk.h>
>  #include <linux/slab.h>
>
> -#ifdef CONFIG_ARCH_DAVINCI
> -#include <mach/cputype.h>
> -#include <mach/hardware.h>
> -#endif
> -
>  #include <media/davinci/vpss.h>
>  #include <media/v4l2-device.h>
>  #include <media/davinci/vpbe_types.h>
> diff --git a/drivers/media/platform/davinci/vpbe_venc.c b/drivers/media/platform/davinci/vpbe_venc.c
> index 425f91f07165..8caa084e5704 100644
> --- a/drivers/media/platform/davinci/vpbe_venc.c
> +++ b/drivers/media/platform/davinci/vpbe_venc.c
> @@ -14,11 +14,6 @@
>  #include <linux/videodev2.h>
>  #include <linux/slab.h>
>
> -#ifdef CONFIG_ARCH_DAVINCI
> -#include <mach/hardware.h>
> -#include <mach/mux.h>
> -#endif
> -
>  #include <linux/platform_data/i2c-davinci.h>
>
>  #include <linux/io.h>
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
