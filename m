Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3822DACC12
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 12:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78/ghZRp9l4SlXo0BPXQ8BxvWxL1g3kTI0Ad1y0pubE=; b=Ze7ltyR6XC/o1W
	l52yP1O+/oaFvT7vCyDT35pN8QxAeX5ufx4gFKS3v0jeIINtY9+Lh6PTlhiM6oLinYZ2ATxi16jxp
	tutNXVDmvJs0a1UVPT8fCX/wTLmPAGiZ6SQYAILe5yMtMGHO0HLDrNRZD3N7wHflqOEVBjLg4Ia4i
	SOsOUWkYlSorOP28JwQVBufRb35iqE0ZEYVV/o46hm63/wt8m+drs/f91y71B33cKhB6KxCg9FUxd
	DUqt/qiVI/eOSqhQHsm+FRYbngtq6FtO+d9qMW0SGcLcDtCSno+Ki7Gsfb+KfPBz61qmy30aeVGNE
	WIFok8U8CnSmYam3SWJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6uVF-0004P5-Cg; Sun, 08 Sep 2019 10:33:05 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6uV9-0004OV-4g
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 10:33:00 +0000
Received: by mail-vk1-xa43.google.com with SMTP id b25so2147322vkk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Sep 2019 03:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bX3KqjL4fKpxNJSQAl68andrMAZ0zFQA7utOvXr90Wk=;
 b=c04Ea7Qd/zMKT/FcbxFqguzMDiyky5hl4KTgVxYklu0gvxwcYx9WE7wEZOM7bJ3q+T
 LpLB04fsPXAQGKS7ORsUyao+D9Ck/clQqS4zXpFn/MU9UZR94Z/MNfiW4kShbHjWnF2i
 VHF9l48x7V4MhX+e++ks14gtSiiDwTUwFRNKh2+8M27ZHd/db64VmIvFtq0a7uQvlGii
 2YuySmS+2dFEs5XirH5TuhCAvqRlBtRheiUbAGGBINaarTGq6VFq1I1yN4JHmIgR889R
 iblEZexgIi9vJAXzXuIsetwC501NJImDYFMCDS/vnHP+FuwuSu5iCcWzFDWKIJzq7pyT
 V5Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bX3KqjL4fKpxNJSQAl68andrMAZ0zFQA7utOvXr90Wk=;
 b=RR5PcNcR4WYaSvkuKvZYXI2VGH14GKRO0yupNBhkde/EK46psQvUVYiq6DW+pgUliD
 RnEJwCcUliAgNxwyWN3Cn7UHrRdLpLHVWwbMzEr6AmA9LDuZuSDAhCYt0KgMIf2etjuB
 Y0nfBkgzlfSGE83D/6u7K46nKp4JABMs4hWum0Kc0wMV2CCiRiyQ6xOxh/ZQF5aGFX8v
 sKMvuzpzaNGKXf9Y2sZ8jspHChLPihMn4dYubZpdLnvSMgNR3S2OTt2BvBJfJppPrykh
 d5u7fTtMB14TmFOvhRh4Eyt1ajoAT/Lzn4UBq7zmGlUV7chjhxdQjpzUYrySF2WsVSdj
 8yVA==
X-Gm-Message-State: APjAAAWPzrd5w1BEeKYZEatDSUOvCWLaJYPl4KivJnMPCtvGVy24ydTj
 Hb6ycWVznAWReiOEg4UI746O47lu1809zQKZZfj/8Q==
X-Google-Smtp-Source: APXvYqx6AtGiyvrIbxIWnNr0Pg+dtCTgbgAuq/Fhl9QAovGWe1AuWd8I7KV41uSYL4a46U13t4KwGpG64r4f7TfJw2E=
X-Received: by 2002:a1f:5e4f:: with SMTP id s76mr8536398vkb.4.1567938777211;
 Sun, 08 Sep 2019 03:32:57 -0700 (PDT)
MIME-Version: 1.0
References: <1567928752-2557-1-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1567928752-2557-1-git-send-email-wahrenst@gmx.net>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Sun, 8 Sep 2019 12:32:21 +0200
Message-ID: <CAPDyKFpdZnQaH9NfTsmFk2pjREL_pv6netQjwubMzrkXAOg6hA@mail.gmail.com>
Subject: Re: [PATCH] Revert "mmc: bcm2835: Terminate timeout work
 synchronously"
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_033259_186018_5FCAD9FA 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "# 4.0+" <stable@vger.kernel.org>, Eric Anholt <eric@anholt.net>,
 Lukas Wunner <lukas@wunner.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 8 Sep 2019 at 09:46, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> The commit 37fefadee8bb ("mmc: bcm2835: Terminate timeout work
> synchronously") causes lockups in case of hardware timeouts due the
> timeout work also calling cancel_delayed_work_sync() on its own.
> So revert it.
>
> Fixes: 37fefadee8bb ("mmc: bcm2835: Terminate timeout work synchronously")
> Cc: stable@vger.kernel.org
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applied for fixes, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/bcm2835.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/bcm2835.c b/drivers/mmc/host/bcm2835.c
> index 7e0d3a4..bb31e13 100644
> --- a/drivers/mmc/host/bcm2835.c
> +++ b/drivers/mmc/host/bcm2835.c
> @@ -597,7 +597,7 @@ static void bcm2835_finish_request(struct bcm2835_host *host)
>         struct dma_chan *terminate_chan = NULL;
>         struct mmc_request *mrq;
>
> -       cancel_delayed_work_sync(&host->timeout_work);
> +       cancel_delayed_work(&host->timeout_work);
>
>         mrq = host->mrq;
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
