Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADFE865A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 17:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PD6NosTPvp6WgyQAZYz5f4YcCgrJQtXOJbXaXpfmYVg=; b=IXGTVw6UlKvl3t
	a5Ezb/F+NAHXSjE9xdF41v/9fGnaIiOYQRGSb8egTObGoGSisdFnAos5KzLsM8/uGviKzTB5YjOmg
	rxa6iiaoHrChK9jNDPhCeKPxjsPatBfivKoRAaymaJ4PZtxVNUaQrGzG/9AeF0NFDy5cQSjArdM3a
	Id45Q93YeEsi8khphzUmdjsjgO76VcXLslpsn2EdW4u17vjg5z0NFvNT8RdPaKYOoh8RGl+/SA8Vc
	Tq9EfGu/ZvSduw0sYhAKIb2qpPUaeUZ52yb8uRsNXsemT+T3qkkOGs8lyWbNW9GJVlVNTyQG6VuS+
	XMZdIv3ZZfWKIsblOugQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkGa-0001Sa-Qv; Thu, 08 Aug 2019 15:23:48 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkGQ-0001Ra-3N
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 15:23:39 +0000
Received: by mail-vk1-xa44.google.com with SMTP id b64so18826900vke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 08:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QNB3Zm9MMvwDRnXaJ2FS/3pgiFUqCEAjWklwwyvURzI=;
 b=QW+HXSNaJIeMSgjFtPBC8shR+iNt9+afsMRJmza60ge+Uo5qwyV5gFbqtGRm1umBx/
 OS2BYWlgkFU1xeCsJn+PyYOqe6JQKr3WdGoL/qGN1mXfmapaYVh+6T5MOBlg1ISWAkSx
 cHZgDJM37VcRbC+RBdKUFsjAtywZh4EA+OSAy1mLa6+fg4luQnJR8jUCGj7gY2sdEOXZ
 2qTK2rkaNWXhAd8gK6sItZ+AZ8oCKSdzfhIkgxsZMzSnMk6r/fkT6T/uRmIujgVbrLAo
 NRsj1iJiOiwLaAxgR1PGDzGNdTQSIofv43CI6Swq2iZJsoV5g/3Il2jpP/j03FmsExZu
 sY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QNB3Zm9MMvwDRnXaJ2FS/3pgiFUqCEAjWklwwyvURzI=;
 b=DhHTxaePX2m721dLqvVtIG8NjHGUJOlzy7yZ0qOK5zepoULHNE3wmA4iuKbgu00dvv
 1Vi3XpQsa53zxj0zk2lQdouFrWK4WxmVYOIMmgWzIHMUyHHliisbnkT5Pw7fHqUqXs87
 ofKJu3kksVCArD7506/MytTETYLyvyvLsw/lhYFzzrqzw7ILTxHymKaf2sWSpEZD4e2l
 9Y3fMu0+/dWVDsRvTUNZThI7hwV3/wisRX7bHs9IoqZbuxHxISGNcChbS4h5bBXer7cp
 UMr65bzRfQwDX1hEp160yebtrKjb3Xm7MZAbHiOflgnNAnzO+umCq05tEbQWs4v652+5
 fLbA==
X-Gm-Message-State: APjAAAWCGcghX24nsYpYSnWCYHNR8Yvs+m9IGXqwbeC9GeMttCIiyXz+
 +Mbt8pFJTsR2+gf2Ghcgp6pQ0otmBVjQkc17W8e/qg==
X-Google-Smtp-Source: APXvYqy4vBIhIEDkHZGbjPTFMN0MG3rSPoqUvYTRP/e/2YG84U7QfZw+MjtJ98ys313+siGvTnSpq6E/mbY+mp2X4wk=
X-Received: by 2002:a1f:3f45:: with SMTP id m66mr6091559vka.17.1565277816177; 
 Thu, 08 Aug 2019 08:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 8 Aug 2019 17:23:00 +0200
Message-ID: <CAPDyKFrUr8_VP1JLRk48zR8_p1Y62wKLBnS0iTgdhUSArwD49Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: sdhci-of-at91: add quirk for broken HS200
To: Eugen.Hristev@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_082338_175436_54F2484A 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ludovic Desroches <Ludovic.Desroches@microchip.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019 at 10:35, <Eugen.Hristev@microchip.com> wrote:
>
> From: Eugen Hristev <eugen.hristev@microchip.com>
>
> HS200 is not implemented in the driver, but the controller claims it
> through caps.
> Remove it via quirk.
> Without this quirk, the mmc core will try to enable hs200, which will fail,
> and the eMMC initialization will fail.
>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Should this be applied as a fix and possibly tagged for stable?

In such case, do you have a specific commit that it fixes?

Kind regards
Uffe

> ---
>  drivers/mmc/host/sdhci-of-at91.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index 57fe3b2..3a8c6d8 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -370,6 +370,9 @@ static int sdhci_at91_probe(struct platform_device *pdev)
>         pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
>         pm_runtime_use_autosuspend(&pdev->dev);
>
> +       /* HS200 is broken at this moment */
> +       host->quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
> +
>         ret = sdhci_add_host(host);
>         if (ret)
>                 goto pm_runtime_disable;
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
