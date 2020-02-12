Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B462415ACF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:14:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bot9/zqoZ5/GQZ8LNEFerBctWilCkE/moahxOgKA+wY=; b=UWEWeg+4mOZADb
	e6lpbf/55UYGbMMl5DYqwBDle3pGUcVgqpOkCnNrc+LG9bsCde4koG4HhvXzhYeB/sZG9kG9OUql0
	C4ZYKUCaYxkyUqV5Si9rY4u45JERteyyTqP12tzG4ldSYCw+jxdjfTrsCq+zLgpUYgiIrjbpeNHgA
	MYqjV3+mH4fZeH5Z3Zp9ACWN68wAAlVP8fLYtspvoIUso0eyNoClMDsQcFk0UGoMZrkQzSK8E3GRo
	3uBf7UmGuOJbq8p9NI+nomwxYcpE2a1Qir2PHksDW2XVglxPeLjeHagrJE0VDeSAGPpIwSR1OmQJx
	hmOm5q0sxgRRLEqnXL+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ueT-0001XC-F1; Wed, 12 Feb 2020 16:14:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ueN-0001WW-BP
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:14:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id j4so1470962pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 08:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OE7vpo0ZLwKc2Q/gSZxbs7a6GJfpkch8/DsdID/PORQ=;
 b=cB8DmvKisQrlJkwK9PyfwxgRrDpyXZNfhy4jncjU2FNYol3VGdk7rq+8a5hVaxYZ5b
 ZpPyNrN9c0EapSL7MNHmrc8cg2S+Ow4NmeKlXgLChPxipLIzdAFYLOK/p1+/3RPg00+5
 JJJJuwcuoyMaQdq6Gdn2gHR/EDiTHf9Bu2LSA4ngMyQZiJyoKJtayMFQwxOdH218jfnC
 VwL/uES+mHf2cP4IgFE6us8CV1MUaS51x3v2WA2Bl4/Jqy8wQLkG1Ck2tTeKUkdwAPxx
 him4NdBe2VsLUWQeMn5ZMu2HgZoBoP/Dxw2maCXEbyN7sA4X9p85DH5YaG23ZwinD7V0
 OOMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OE7vpo0ZLwKc2Q/gSZxbs7a6GJfpkch8/DsdID/PORQ=;
 b=ONlyCsQo54/7p6ONLIV18HR2Ny2zp4EUJoIoXmNH+XyoJZezLFsSmAbO98nKmZJUEK
 ylWHIZvoXlMeffUBZMfZqepOJQxSJZ0UZexA6z2egFEbQHWSSDJ1XQi+33mIvjZKFkhf
 jEFPmQBo908nhsdzsDKLWyJ3yREspBfB4wioleup22PbaXaHBAmtDgWBw/yUb61L81X8
 rzxCNvkXUXuAqKDAQOenrrWPpgKObQlUbpVmkC9tNVA6QAsxAtHHLyn84IahWV6r2u7X
 /HxRUx/08JyHY1r/1IFReG63q7l0dqqRyQBkjUTIuMgLuMO1Ki0Ig10h7BaU8HWLhSHn
 jMtQ==
X-Gm-Message-State: APjAAAVfbAv7N1TCYVYdEVXXKK/r09RfJKczcWlnssvKrTBvfUKEO0MV
 KNEKmjwOeL+oDNDL/NRplCjGvWyaHzrfwGfmRYIYS00t
X-Google-Smtp-Source: APXvYqxh5GSPAkd71YH7sbjXip6T8nkNYUtTrt6qORPoCu8bXvvIHMza/bhRQ2uItfBi8M2VJco7HFV7RTGY08zVjwM=
X-Received: by 2002:aa7:9796:: with SMTP id o22mr9076367pfp.101.1581524045940; 
 Wed, 12 Feb 2020 08:14:05 -0800 (PST)
MIME-Version: 1.0
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200128110102.11522-4-martin@kaiser.cx>
In-Reply-To: <20200128110102.11522-4-martin@kaiser.cx>
From: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Date: Wed, 12 Feb 2020 21:43:55 +0530
Message-ID: <CANc+2y6Scy1=S7zeQ4gVowRoWmzsq4wiNXbLVeY1Qvu0oo9cUw@mail.gmail.com>
Subject: Re: [PATCH 3/6] hwrng: imx-rngc - use devres for registration
To: Martin Kaiser <martin@kaiser.cx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_081407_392926_3D624EFA 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prasannatsmkumar[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Tue, 28 Jan 2020 at 16:31, Martin Kaiser <martin@kaiser.cx> wrote:
>
> Use devres to register the rngc with the hwrng core. Drop the explicit
> deregistration.
>
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>
> ---
>  drivers/char/hw_random/imx-rngc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
> index 903894518c8d..1381ddd5b891 100644
> --- a/drivers/char/hw_random/imx-rngc.c
> +++ b/drivers/char/hw_random/imx-rngc.c
> @@ -263,7 +263,7 @@ static int imx_rngc_probe(struct platform_device *pdev)
>                 }
>         }
>
> -       ret = hwrng_register(&rngc->rng);
> +       ret = devm_hwrng_register(&pdev->dev, &rngc->rng);
>         if (ret) {
>                 dev_err(&pdev->dev, "FSL RNGC registering failed (%d)\n", ret);
>                 goto err;
> @@ -282,8 +282,6 @@ static int __exit imx_rngc_remove(struct platform_device *pdev)
>  {
>         struct imx_rngc *rngc = platform_get_drvdata(pdev);
>
> -       hwrng_unregister(&rngc->rng);
> -
>         clk_disable_unprepare(rngc->clk);
>
>         return 0;
> --
> 2.20.1
>

After imx_rngc_remove function hwrng_unregister will get called. This
leaves a window where the clock to rng hardware block is disabled but
still user space can access it via /dev/hwrng. This does not look
right, please revisit the patch.

Regards,
PrasannaKumar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
