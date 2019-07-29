Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EF479112
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ff0+WiIT8s9ZJmE3IgqD1I4PtvrLN7/k/enaSA7LB/M=; b=ZJLub1YiwmlMS9
	X2m/0QBOV/A5yuupif3GvHx5Uaz5F7fIfjtVuOb4p0vqdM0NBuriiCLBpsZ41p6ik/EbiyKIvhAlm
	A9vEyft1CsLGkKgJQowVC1hFQ2TAHOgiV6Ih7xwa4JEYj07pm6n4S5GnSRRNeGgb/Nvso8yLz7u68
	nh+yObIvSBd1RAr54nJOOG9ZqswPY+INy8VMYP/aOyE3xCcl3YfCSRzAJ+TqQ18W4u/zVxbkc8suJ
	6fvD9Q24tu1qCzsI63Qj+ktlQMDkwU6TKiwLQiFQIrXgThazFmckEgP1UMdq7nmO4NcX/PTKm3O8A
	JuIRsf0FVljJCHTI+66g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8dF-0007X7-96; Mon, 29 Jul 2019 16:36:17 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8cg-0007HW-PI
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:35:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so22306547pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IEddiYi3k/QkBC5cxfQW5fAN4XjjJLsCvTR0ynzn9xQ=;
 b=PFOOf1pY2vYwMTBzCHhJbt6J3OJX9kEF5fPBmfilOEVHC7yfX6C8vdygMvSnG/ORXJ
 +ubu/CTvk6N9l3Hpyyd3g4nctPRzdxe6Wq1t3Eb4eDZho2NwHODoNKaBeWPkSiWF672+
 wwNrEzYzu+TH35C5nW4a1HvCbhiXC4sOnUUAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IEddiYi3k/QkBC5cxfQW5fAN4XjjJLsCvTR0ynzn9xQ=;
 b=YMk9Zgt9wMxRgR6k+Ou/nA7FNM9gcZCdw8KE6ngzzROVpU1JO84xjJ3geyj28BZczM
 kOEd74pVA0mIGC9ovT/XpfT4uJAnlFGaTspkkerO68Qa6CvWVUYRo0S9nf6AdHDcHrnL
 HB0UIeFF/DAEvU2M3zJP3F4cqHUrYPVoQqtJe9wa9mBFJNMt/fHQGdw6H6W41mY4EU41
 aXEDtohNATC41LuSvEREg7uE4l2brdnNVwSkaY8chxMvxqM3LWlLOiBd3rcvMLb0w5fY
 bN6uKpD0NUL93hun8qvvsjEtX+Puk6smX8JO9QNhnYoTQlWoVOO+BqzKNycf2rdboCJI
 gQ6A==
X-Gm-Message-State: APjAAAUVTdypbW2wYRRoPGz8L9OutX6B2EelglnrTkSiOk19syYjh3UC
 WpFHgpjI1A8YnuT8KMJnrkjfrw==
X-Google-Smtp-Source: APXvYqzgPp1ai8L1U1DHi9sD7NWNDjDbn+/ShCDM00cHu0bZrIrBVGOukCtp85AANTBOMAzU8Deeyg==
X-Received: by 2002:aa7:81ca:: with SMTP id c10mr37907100pfn.185.1564418142347; 
 Mon, 29 Jul 2019 09:35:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l26sm63883324pgb.90.2019.07.29.09.35.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 09:35:41 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:35:40 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] mmc: atmel-mci: Mark expected switch fall-throughs
Message-ID: <201907290935.2B95CBC@keescook>
References: <20190729000123.GA23902@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729000123.GA23902@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093542_851218_A598D008 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 07:01:23PM -0500, Gustavo A. R. Silva wrote:
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

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/mmc/host/atmel-mci.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mmc/host/atmel-mci.c b/drivers/mmc/host/atmel-mci.c
> index 9ee0bc0ce6d0..c26fbe5f2222 100644
> --- a/drivers/mmc/host/atmel-mci.c
> +++ b/drivers/mmc/host/atmel-mci.c
> @@ -2413,6 +2413,7 @@ static void atmci_get_cap(struct atmel_mci *host)
>  	case 0x600:
>  	case 0x500:
>  		host->caps.has_odd_clk_div = 1;
> +		/* Fall through */
>  	case 0x400:
>  	case 0x300:
>  		host->caps.has_dma_conf_reg = 1;
> @@ -2420,13 +2421,16 @@ static void atmci_get_cap(struct atmel_mci *host)
>  		host->caps.has_cfg_reg = 1;
>  		host->caps.has_cstor_reg = 1;
>  		host->caps.has_highspeed = 1;
> +		/* Fall through */
>  	case 0x200:
>  		host->caps.has_rwproof = 1;
>  		host->caps.need_blksz_mul_4 = 0;
>  		host->caps.need_notbusy_for_read_ops = 1;
> +		/* Fall through */
>  	case 0x100:
>  		host->caps.has_bad_data_ordering = 0;
>  		host->caps.need_reset_after_xfer = 0;
> +		/* Fall through */
>  	case 0x0:
>  		break;
>  	default:
> -- 
> 2.22.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
