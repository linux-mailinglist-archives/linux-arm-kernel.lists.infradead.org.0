Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7539215AD53
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baEicCSt/Hh3lc0Gos0AxP4DGfMsk2iDKhDARnjUvRs=; b=reK7YRNBTZJcXY
	/aH650B1iqkTNfWSRHTA7Nzdak+ICFA8PAQxVh9LODVbmPo5nSWg3XX5aShY6CWWtSEfxUv4VQArh
	f3QjuEfnpp3y+LV1GpsCNk0yQBkQrTohiAguCBI+gc0yuu5wgbOIgMpysqVU9igAwqttW3cj1KBMx
	UyhnRthiWEJYgdVy5XJb7dLWPcKm0VJ1tM647K/xt5HxZpnhFJUwbtyLHR5qtvFp0/K5WhMz87EI0
	QNYQhOs/AXMGDb5lafdGs/+ygpBuWGqJhT9shS6eDVsPEakgrTmQtHPvLkpK2RZVACc0+0GnJwrR1
	neYC8SUI+vb9mCDuydTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1uoM-0005sv-Ib; Wed, 12 Feb 2020 16:24:26 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1uoB-0005rs-8d
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:24:16 +0000
Received: by mail-pf1-x444.google.com with SMTP id 2so1463437pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 08:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EdJ9jznJ6wCoLx3M+Q7vLWwv5VYzXfXi+Eg2gF08D2I=;
 b=miH8EZwyrhb+567BJVz1H3LtOZjolN68vVQomtTgvaRF686bLqKCfLLvGqjKZCAIfO
 vEwZnoZTnct1ylTVoh6kwFNTk0xX28/mT2r+cZIP+nVlkmL+PT00G5vmr2dEifKCK6t9
 e0cymh4CgsQiIxIAgrASohWQ2vHA/1ShVebZKDRY0sDXK4egykHjQbpcWfowbTtEbqfB
 VOD6PXOrRpH0E4EsE0KHSi/EMIbadnTfgueujtGvt9H0KJtvh5EVf9ju7oPDxuoMLhsx
 T6qp7GJc8KKEtqqSi82gAJA0KqRiTRPiDKeHxotQ2YirxY68n1MR+s0fMKhBznbGtwxC
 S9Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EdJ9jznJ6wCoLx3M+Q7vLWwv5VYzXfXi+Eg2gF08D2I=;
 b=Owu8M0LII4me+U8WcxUExwvc1xNERNXu6YPtxX+s3b8bt7aZ+Qfb8tAtL1dslJS7FQ
 Hny3uXiQUIDKbnqusRbLGDLZxL8jPLEQLRltQ76H62e8WJVU+iP0OYQ/y1sw/VscMHpD
 Tc3dzeuq6sNs9MmyFI1M+xPrEy7I/uHWnzPvRwhOle4ZV3HzcSXGPZRyviSysEvz7Fqn
 wiLElN3/XOzI8uFklWeRrSRfYi4B40n80DjeInTAALjh9+oJWMt6+QYptRsNOdsUbseb
 6xbT156garAiIWOa7xoGmk78/TLwZJ5S0XW9mNkWxbXMxOiHEjGFrs55J2c19yL8E8tg
 HF5A==
X-Gm-Message-State: APjAAAWHSLOkdmH00kaFejrQGB151TQmx8cj/PIaiZjzXdrdw5tat2Bk
 UOZ3eyBNYwSQYvGAxVuQ8FO39kdTYNoyk0FJnI8=
X-Google-Smtp-Source: APXvYqwzBgfyekxP6cVyPe5nEedZ7+Oaj2Yy8d5xqV52U+jREyuWzXUbC7v7ynDyQxgDAtlZRKMM87v5w+R1JwlTBNE=
X-Received: by 2002:a63:583:: with SMTP id 125mr9266610pgf.100.1581524654460; 
 Wed, 12 Feb 2020 08:24:14 -0800 (PST)
MIME-Version: 1.0
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200128110102.11522-5-martin@kaiser.cx>
In-Reply-To: <20200128110102.11522-5-martin@kaiser.cx>
From: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Date: Wed, 12 Feb 2020 21:54:03 +0530
Message-ID: <CANc+2y7ToOCEzRjJR=Mx6LpGim-StDw_NEZAZjT+WWXpK39n1A@mail.gmail.com>
Subject: Re: [PATCH 4/6] hwrng: imx-rngc - (trivial) simplify error prints
To: Martin Kaiser <martin@kaiser.cx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_082415_303217_64BDE5D6 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

On Tue, 28 Jan 2020 at 16:31, Martin Kaiser <martin@kaiser.cx> wrote:
>
> Remove the device name, it is added by the dev_...() routines.
>
> Drop the error code as well. It will be shown by the driver core when
> the probe operation failed.
>
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>
> ---
>  drivers/char/hw_random/imx-rngc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
> index 1381ddd5b891..8222055b9e9b 100644
> --- a/drivers/char/hw_random/imx-rngc.c
> +++ b/drivers/char/hw_random/imx-rngc.c
> @@ -258,14 +258,14 @@ static int imx_rngc_probe(struct platform_device *pdev)
>         if (self_test) {
>                 ret = imx_rngc_self_test(rngc);
>                 if (ret) {
> -                       dev_err(rngc->dev, "FSL RNGC self test failed.\n");
> +                       dev_err(rngc->dev, "self test failed\n");
>                         goto err;
>                 }
>         }
>
>         ret = devm_hwrng_register(&pdev->dev, &rngc->rng);
>         if (ret) {
> -               dev_err(&pdev->dev, "FSL RNGC registering failed (%d)\n", ret);
> +               dev_err(&pdev->dev, "hwrng registration failed\n");
>                 goto err;
>         }
>
> --
> 2.20.1
>

Reviewed-by: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
