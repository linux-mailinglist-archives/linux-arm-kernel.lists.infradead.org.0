Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BDD15AD3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKaBPb868YBJzAy9arsgVjHq3jBZ9qeLhu+tfuWJ6hw=; b=DaESRacGLafzJS
	PPWNb4FkAAKxq6OhvzSE93DAcCAZiLKl+1cjf3d2SOIphGT5Gpmc8D18daH7ygV3DjB+hoU9vZ3iq
	A4N2o0HJMJrOjzjUbxAd2TmQjK0d32xtjuo6KEZicWkAzp/5MPtRlaOpA0Jsxcsdr15c5fXL80gUW
	2IMQ8KmMG9kUO0Pb4dNQ6fYulDomuToq8tFb7wuHoY2PDTxsfwAoAYvFRlUR0bHon7BrgEYTVw2ih
	CMFgKLQfPrj20rdT5FEA2SS6Q0HcksdDiA+eDo6Wxp+sCziuuayyhHjilgSbhigWIlZqMv6M5yvJW
	BUgLEvWnBh3vpRumi7Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1umY-0005Dg-Gb; Wed, 12 Feb 2020 16:22:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1umR-0005CO-NP
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:22:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id 4so1471471pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 08:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i/S/gu5ls056hur5YDfXFsWlqa/VXA1YVt8W07oi8A0=;
 b=t4Q/rqVY5SzGQA3770fHEw4TUpO31savs1Ccvpjf9zd84waVs3yJM9pfnejClHR1UE
 Lkp0sns0cE09dZfQRmq0oBofdY/9iVWCF74zdbMQWdFJsibQaCR/Wkpk7VSi5NCMrOTn
 FesMXEcb+2UEfy27+9j8iysokL7EZwdF07767X/5FXrobZfLI+8TCaTcIPe70Um0JggX
 qSAcy19J5mp5d1/lU2nLrFTadHzRHzD3f4cQ18i84bdKvjuTVxHi5uvrNXN+xyysxxE3
 ZpdgdexrOcsf6Xy54p3acue3hOABe+IBI5+5XfOCRiOmULIb1TFF6cTljQJOB3NDRPp0
 ixNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i/S/gu5ls056hur5YDfXFsWlqa/VXA1YVt8W07oi8A0=;
 b=Q0hjI5lICm/6yuUOXwqEQcKIVdcTaja7r9xZPQGV+VBXeeaia1f03XASLZAy/IFEsO
 hIavLk9khlqJlCToACr+xKM5+44giI5YJgw2/6ZbZtau3Az3sEWvUbenXyBmADUrca3Q
 NdSO79WeunvyNQoDkf4YqUMhGl8REw3xUUveNzNNf80qQmGBc5QatJgeh4ysrGO/tIB1
 Z1jjhBiUc4jjRyIYe1EaPG49U9fSq/iWFtp3lgLoQb75SsmJTRt+oQ4mNiGhYwn9GMtk
 G05On9zGbTymqAZlmQjU8JISOK5ooJLQl82MW1VAgghELqrByXvMXpJ/pbEDJs0YoyKC
 5wHg==
X-Gm-Message-State: APjAAAUrnWdKJpKGb1Mo57d3e8dmrOglqPGGd0RWuuBEParx7SyAIONM
 xMib1Dc4d8qq1KaNeBwzUnT3HLDXYIgXE2YtAK0=
X-Google-Smtp-Source: APXvYqyxHKklmuKov1yA4Urj79T+gfbmYj+Vp5gE+wLeOgEhYafxRpjw4Lg5cY3ZnSZXyB3yPILql+1nG6BAZerDyog=
X-Received: by 2002:a63:583:: with SMTP id 125mr9258604pgf.100.1581524546569; 
 Wed, 12 Feb 2020 08:22:26 -0800 (PST)
MIME-Version: 1.0
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200128110102.11522-2-martin@kaiser.cx>
In-Reply-To: <20200128110102.11522-2-martin@kaiser.cx>
From: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Date: Wed, 12 Feb 2020 21:52:15 +0530
Message-ID: <CANc+2y4Suv0iZ38uxC97U0x73RcKnKiRnjcC-xNh9gNZYn3aUQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] hwrng: imx-rngc - fix an error path
To: Martin Kaiser <martin@kaiser.cx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_082227_768601_0003A9A3 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 open list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Tue, 28 Jan 2020 at 16:31, Martin Kaiser <martin@kaiser.cx> wrote:
>
> Make sure that the rngc interrupt is masked if the rngc self test fails.
> Self test failure means that probe fails as well. Interrupts should be
> masked in this case, regardless of the error.
>
> Cc: stable@vger.kernel.org
> Fixes: 1d5449445bd0 ("hwrng: mx-rngc - add a driver for Freescale RNGC")
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>
> ---
>  drivers/char/hw_random/imx-rngc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
> index 30cf00f8e9a0..0576801944fd 100644
> --- a/drivers/char/hw_random/imx-rngc.c
> +++ b/drivers/char/hw_random/imx-rngc.c
> @@ -105,8 +105,10 @@ static int imx_rngc_self_test(struct imx_rngc *rngc)
>                 return -ETIMEDOUT;
>         }
>
> -       if (rngc->err_reg != 0)
> +       if (rngc->err_reg != 0) {
> +               imx_rngc_irq_mask_clear(rngc);
>                 return -EIO;
> +       }
>
>         return 0;
>  }
> --
> 2.20.1
>

Looks good to me. You can add
Reviewed-by: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>

Regards,
PrasannaKumar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
