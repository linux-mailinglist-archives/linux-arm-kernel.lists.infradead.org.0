Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959CA7FD5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 17:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQqG5ZXkjh+ux99rSpUT1iPvk5mulQ5DtlTvUcyscWg=; b=pzb5UVgwZtmirD
	W4Lh1LQuvCcU0GOKKu2IsWV5J8+Jqt6ICL3J2DmiJT6gVpkpal0HBWslQiz/Gg0/+2iDec2X4huml
	7CHnyDrQkveltu4yka3Y+s+Gy65smLU0s7/uwCFFoxBl3KnURvr5Lr4KHupZeLK4z1MSjLm5/EQJW
	qiv0jwcsXq+cYxDeVT39Q4FvyctQTPg/8F6aaJ7Chlj1OlsDU+dmomZCBC9sr5PhFzLSqxXHJUneR
	LQI7rmnvHws4t8Ut+1iNSl7r6UnWFDnTqnqeU5esUDTKsa2AdbI7Hh/vHYekYo1O7U2DtZf3FXwZK
	Lqv86gAhFuMBoybMFeLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZIp-0005tA-QX; Fri, 02 Aug 2019 15:17:07 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htZIi-0005sa-KB
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 15:17:01 +0000
Received: by mail-vs1-xe44.google.com with SMTP id k9so51513810vso.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 08:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K/2TKAA2eHey/AJMPKbULt2KgA6zmWugOWMLV/zLdIQ=;
 b=MOnyX+ENZwETJxfcOsqblof0a5+oHsd548wkWcaufdcOARpVP6mirV4rDTs4r7nNNz
 Q9PYFbuq0inCJjPWfvp39vJaHis4Nu+BLljBFrXmXlRwNDQQgCs69XrFlq414pfJRcaX
 ut5O1R9I3YkEUZ/nYExGXOuKC2JyQ/8GLhadgne5IeTAfdTLisHwcSrN5RuUDDyORs8e
 uviMnn0lHnuUeweHEmQg3w2gWVpi8/DCOGJ8MtKbxy0FKVf/WycngUTDR9yiAbo5zRcQ
 nO2R/Nx/Idv316NUzQqBsUUwRnfk/xMUvir/CPfTu7KmcA67Fw6b7kl6/iRqnN7j78zO
 CB6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K/2TKAA2eHey/AJMPKbULt2KgA6zmWugOWMLV/zLdIQ=;
 b=PNjwQREfPLPyqtu3aD6e9OPRobnF3Nrh4AaDrI/Qr+FkWCe37HQ+IOQRqx0gZ1pYCs
 QTMpgENrraTaOsRnCpcsDphKrcGxbyfV25VVSXqgdUW5+6W3Pj9bl8J8/Ug8kTNuGRXE
 QlR9XfSu7j6qpAoCxlVg9skHhMihMzfEJXrqJv8NnSQpLFbGtWGePq1bhbpZc5dXyJlt
 kGtbKhd62FF0X6Y18dIw/S7DZC4rWEzcRRski/pM0pnhqW57ifFJXkyticbEZYcxeRjw
 mSvTaW3HlYfn50A/sr4oGKceY57zywR16ACgmMEvUlTKofrR/u7WWZ1ZlyJl39JlOe2C
 UQWA==
X-Gm-Message-State: APjAAAXoCppBEPGpvGtfb4GE4Maua69qEyZRNnRjbeVip/fVMdDsstDK
 8NZyHRQNx5vAiDi4tmkyqUhAfMLslvVqUajIyqV3rw==
X-Google-Smtp-Source: APXvYqx9frm06YF1N5D53ooE2tPKeuM65QVyErgco5333MettoQsWU5nOdnhCLPi/9YXZJUk29Ou7PZ2QcY3Y8ZMcrw=
X-Received: by 2002:a67:8709:: with SMTP id j9mr86962584vsd.35.1564759019207; 
 Fri, 02 Aug 2019 08:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190729000123.GA23902@embeddedor>
In-Reply-To: <20190729000123.GA23902@embeddedor>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 2 Aug 2019 17:16:22 +0200
Message-ID: <CAPDyKFo9UjyiCrWpB2Xid=tWdZ3GUgdO7pnzrZ4JEKm7nPZAww@mail.gmail.com>
Subject: Re: [PATCH] mmc: atmel-mci: Mark expected switch fall-throughs
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_081700_664431_9FE4936D 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kees Cook <keescook@chromium.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 29 Jul 2019 at 02:01, Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
> Mark switch cases where we are expecting to fall through.
>
> This patch fixes the following warnings:
>
> drivers/mmc/host/atmel-mci.c: In function 'atmci_get_cap':
> drivers/mmc/host/atmel-mci.c:2415:30: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    host->caps.has_odd_clk_div = 1;
>    ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
> drivers/mmc/host/atmel-mci.c:2416:2: note: here
>   case 0x400:
>   ^~~~
> drivers/mmc/host/atmel-mci.c:2422:28: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    host->caps.has_highspeed = 1;
>    ~~~~~~~~~~~~~~~~~~~~~~~~~^~~
> drivers/mmc/host/atmel-mci.c:2423:2: note: here
>   case 0x200:
>   ^~~~
> drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    host->caps.need_notbusy_for_read_ops = 1;
>    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
> drivers/mmc/host/atmel-mci.c:2427:2: note: here
>   case 0x100:
>   ^~~~
>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/atmel-mci.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/mmc/host/atmel-mci.c b/drivers/mmc/host/atmel-mci.c
> index 9ee0bc0ce6d0..c26fbe5f2222 100644
> --- a/drivers/mmc/host/atmel-mci.c
> +++ b/drivers/mmc/host/atmel-mci.c
> @@ -2413,6 +2413,7 @@ static void atmci_get_cap(struct atmel_mci *host)
>         case 0x600:
>         case 0x500:
>                 host->caps.has_odd_clk_div = 1;
> +               /* Fall through */
>         case 0x400:
>         case 0x300:
>                 host->caps.has_dma_conf_reg = 1;
> @@ -2420,13 +2421,16 @@ static void atmci_get_cap(struct atmel_mci *host)
>                 host->caps.has_cfg_reg = 1;
>                 host->caps.has_cstor_reg = 1;
>                 host->caps.has_highspeed = 1;
> +               /* Fall through */
>         case 0x200:
>                 host->caps.has_rwproof = 1;
>                 host->caps.need_blksz_mul_4 = 0;
>                 host->caps.need_notbusy_for_read_ops = 1;
> +               /* Fall through */
>         case 0x100:
>                 host->caps.has_bad_data_ordering = 0;
>                 host->caps.need_reset_after_xfer = 0;
> +               /* Fall through */
>         case 0x0:
>                 break;
>         default:
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
