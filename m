Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED98134F40
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 23:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/KtulT/Qs1sSMqxfrN3OaceZV/XvuGU9EElQx89dxs=; b=d/V1ao/8bSPpxw
	IaqfklxR0ZVnEfkv4RTiBVbaqi3eYsrfSDvpxt9rqZiJgmn037qb9Vm+y6urbhv4nyR3rIUcNNNPw
	QCY2TatY00z/Ho9vparqZzi9cp1PRCFYnyv5uIhtGnUU9LUQAKxRWKp8oSYHTxUae6BOc8WsYEohJ
	mPbHOl7jBcogQO/FKrpnHqOvQrD93f567YwbEOGZ48SVOPsIC7OPNzB6tVU1colXF+FiAzMb88Ee2
	HQiRVN+OmVpjbOgahgIRCZUCdQAPEAPHhn637GCpYkKwDpCtE4f+n8QzmEkQudrNcJCWDskpdphQE
	VdmwgxFF3crGfFeMengw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipJPZ-0004K6-GL; Wed, 08 Jan 2020 22:02:45 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipJPS-0004Ip-Ix
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 22:02:40 +0000
Received: by mail-ot1-f68.google.com with SMTP id b18so5209355otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 14:02:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O9YsXaP1lcVI3YB10D/1yLJh0lm8KzUFBjhvxrtn8yA=;
 b=IcEu9hvrE70URsMekBLL1GQFyNQRqjTwBeGbDZpTxIvI1xKi3G0qL9TZz9lieBpKbI
 w7b0L1sWeog+weosh1Dj9U52xUEgpSO4R7iVDRmkzx+G4/X1A99Rv4tX6VWYX/O7P9vi
 pvvKTxr6ryFkap320Y3o6NsMAdaGBONt8CM8qBc15k7x5tiNQdRN4NM2amGw/ObR61O5
 xm+w9uABYM3rtxiLrDWg2TXuhRm9pOMpeubHSkyTu5i9I1qmVnoBNdhpB8SwSd2xfvGR
 08srjGYwjvpKBQd7ZIfHIhdMbHvQvffvdtVwZSr2aly9hg9Im1ueaodudaY4GwiQK7mJ
 zYVw==
X-Gm-Message-State: APjAAAU064bIU2SksOnvk36u1A4ezVLLQaNhbl5l9BZqBbIQWsKMqEW/
 4KfMnY1bBVe6v8I6BzDhEEO3jH9M
X-Google-Smtp-Source: APXvYqwGI6RXFQSkfNOoRJ2+DEVgOJ3VPd3aT3mUZ/wlSbEen8dK0UHaCXqmN051lfhwZRhoTWQAbA==
X-Received: by 2002:a9d:51ca:: with SMTP id d10mr5748545oth.76.1578520957086; 
 Wed, 08 Jan 2020 14:02:37 -0800 (PST)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com.
 [209.85.167.178])
 by smtp.gmail.com with ESMTPSA id 17sm1570483oty.48.2020.01.08.14.02.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 14:02:36 -0800 (PST)
Received: by mail-oi1-f178.google.com with SMTP id c16so4118887oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 14:02:36 -0800 (PST)
X-Received: by 2002:aca:d887:: with SMTP id p129mr615231oig.51.1578520956285; 
 Wed, 08 Jan 2020 14:02:36 -0800 (PST)
MIME-Version: 1.0
References: <20200108130926.45808-1-yuehaibing@huawei.com>
In-Reply-To: <20200108130926.45808-1-yuehaibing@huawei.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 8 Jan 2020 16:02:25 -0600
X-Gmail-Original-Message-ID: <CADRPPNQp7KxENbr+nZ8AAZkuBW-=6sjeXd8LU2LJJZqjCvY==g@mail.gmail.com>
Message-ID: <CADRPPNQp7KxENbr+nZ8AAZkuBW-=6sjeXd8LU2LJJZqjCvY==g@mail.gmail.com>
Subject: Re: [PATCH -next] soc: fsl: qe: remove set but not used variable
 'mm_gc'
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_140238_626501_D7E696D7 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Zhao Qiang <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 7:12 AM YueHaibing <yuehaibing@huawei.com> wrote:
>
> drivers/soc/fsl/qe/gpio.c: In function qe_pin_request:
> drivers/soc/fsl/qe/gpio.c:163:26: warning: variable mm_gc set but not used [-Wunused-but-set-variable]
>
> commit 1e714e54b5ca ("powerpc: qe_lib-gpio: use gpiochip data pointer")
> left behind this unused variable.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied for next.  Thanks.

Btw, I find another patch from Chen Zhou fixing the same problem sent
earlier.  I will add his signed-off-by to the commit for credit too.

Regards,
Leo

> ---
>  drivers/soc/fsl/qe/gpio.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/soc/fsl/qe/gpio.c b/drivers/soc/fsl/qe/gpio.c
> index 12bdfd9..ed75198 100644
> --- a/drivers/soc/fsl/qe/gpio.c
> +++ b/drivers/soc/fsl/qe/gpio.c
> @@ -160,7 +160,6 @@ struct qe_pin *qe_pin_request(struct device_node *np, int index)
>  {
>         struct qe_pin *qe_pin;
>         struct gpio_chip *gc;
> -       struct of_mm_gpio_chip *mm_gc;
>         struct qe_gpio_chip *qe_gc;
>         int err;
>         unsigned long flags;
> @@ -186,7 +185,6 @@ struct qe_pin *qe_pin_request(struct device_node *np, int index)
>                 goto err0;
>         }
>
> -       mm_gc = to_of_mm_gpio_chip(gc);
>         qe_gc = gpiochip_get_data(gc);
>
>         spin_lock_irqsave(&qe_gc->lock, flags);
> --
> 2.7.4
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
