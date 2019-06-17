Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA60482B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8aI4u1VKhIA6f2BxJfnVvka4hkUBft/ANQ//7ouCPo=; b=CK+/Bkk2woDP3g
	SZ54pr4ZiA78LC4r5X27/wfcM/ZaQeR/G0wLlrtpK/5xukHSdCUxT9mI95N4hcYJl/wU0rAl9XJ3I
	D3DV+u+AIjjUblSRUxWUgTP3sExDHH44OyKXuQV5ij7BVKR17bsOeqdCZRpihRqrss2MjXh07Zz0t
	XO8dFpxzJ2sW127g/gq5A0a5AexHezyrO4P5jU9/0FMcMR3f/atK49aIr+jLkJORRTvdddbT5SsW4
	iR426xiJfF/xr2USRT3ygrW1YQkiFy6W3ErulG0PgKUSMjKr4EY45meg7/R9XeI4JgKtaJlxAZJKs
	Jiwth9BATlCMn5sJP8BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqwj-00082S-E2; Mon, 17 Jun 2019 12:41:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqwa-00080x-Bw
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:41:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so9752418wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WOOxpm7ozZave7X/hBH3gYwbNXHHvhxtj5pINcFfpmM=;
 b=gzjXdC3SyBjROxKdZINhmdO+YOBW7w31ZU3bhz19+zQh6bKN9So0wH9jBV6ITP3QUn
 ++GtUH3piNFnSVVsYe0do04ZpfDbpYv26fFZeVjgXw4FxfZMuesrcH65TQFpGFp8T2Mp
 WjsMvhOjYwEJgwznc9B2blDBrgh5Im/R0KZukg1QIvyOQ6bKIAIomK2vt2EHNT694ecI
 Ki1oy53r5lVNwvL9uYiGc8r3yraGmX7LD06ibLUeaFxuzIjDYoAPXMzGUibsgvm4o1gH
 I+5Fztidy7Qtl2+7beYTnPuFR0ckvioG+IkKs0zm660+0nvPLoG7vkjcvr9q3kD4cMfL
 tFqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WOOxpm7ozZave7X/hBH3gYwbNXHHvhxtj5pINcFfpmM=;
 b=q19KnhOThXr7TNWRP/hfoiAdUnyp5no4sZJNMIsD73eE0arflge2hbFXyYxeLJKbT7
 OgXVAVnJy3/3S7yOn824LElH/Wmdh6ye/vumW6IABILLkDM2LsFAMpbioPkwc62Uh2am
 rnuhYxs3Uf5acSeOaw1TUFLcwGJ/rRKMFxp83jqhTNmwLWTuBhr7DXzw3rx5GaOkSZRv
 t74zPF10+e70KPKicGigvApi9CaQ6bY9RjCMHUhohG2ytKJNHAGywIwbo4wFxCmkcc5r
 TrOJ7aCI5kUnLUUZJn9jgEY41CTULYWWCzmTh/OoVbUdWf4pRGgxZ9JRP33+hzB11GOk
 4Bvg==
X-Gm-Message-State: APjAAAV+yOTzhbZSNxmbcReId/4bGvvD5c7QTvqQtdu3X2266712uIZN
 UU06iWhWXB7JqcoFpvX+pyO1x42mhZryPKHursvXQg==
X-Google-Smtp-Source: APXvYqzpuPnI+gsxO4zp+HzWS3tA15wt/2tfOqTOkMZ8lgfnUBjUyQc5aSZTXucpdJWE7KyO86xEbW+pmWZ5wCwQiQ0=
X-Received: by 2002:a5d:4ec1:: with SMTP id s1mr23708512wrv.19.1560775262236; 
 Mon, 17 Jun 2019 05:41:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190617111718.2277220-1-arnd@arndb.de>
In-Reply-To: <20190617111718.2277220-1-arnd@arndb.de>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Mon, 17 Jun 2019 14:40:51 +0200
Message-ID: <CAMO6nazK5uo3deCqKEAGqB4TfEp9W1u2bkWaMNg_DMtSw=E2YQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] media: meson: include linux/kthread.h
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_054104_440038_87E9D9E2 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-media@lists.freedesktop.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-amlogic@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Arnd,
On Mon, Jun 17, 2019 at 1:17 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Without this header, we get a compilation error in some configurations:
>
> drivers/staging/media/meson/vdec/vdec.c: In function 'vdec_recycle_thread':
> drivers/staging/media/meson/vdec/vdec.c:59:10: error: implicit declaration of function 'kthread_should_stop' [-Werror=implicit-function-declaration]
>
> Fixes: 3e7f51bd9607 ("media: meson: add v4l2 m2m video decoder driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/staging/media/meson/vdec/vdec.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
> index 0a1a04fd5d13..eb335a0f2bdd 100644
> --- a/drivers/staging/media/meson/vdec/vdec.c
> +++ b/drivers/staging/media/meson/vdec/vdec.c
> @@ -8,6 +8,7 @@
>  #include <linux/clk.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> +#include <linux/kthread.h>
>  #include <linux/platform_device.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/slab.h>
> --
> 2.20.0
>

Thanks for the patch, a similar one has already been sent by Yue
Haibing and is sitting in media/master at the moment [0]. My apologies
for this oversight.

Regards,
Maxime

[0] https://git.linuxtv.org/media_tree.git/commit/?id=3510c68d32bf3a188c077b5fb87339379f4e6b43

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
