Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14092E5DDC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 17:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hj8LPhZxs75toWHiRopp9dQKDNTDNhOGzXaRUdh+CHE=; b=YMC0RXwlD690sH
	nDYnRSoPr1WW1dPLym47vkaTw5olfmav8vwBU5b+4IT0uvMQ74PkmA+IwPV5SGZzHRH5lY6egHQq9
	UQGR84Fvb5U+j1gelI9YSMXEA0l8IH1VtadITof99PhHjxGm8MCdXM9Vfcq8G8KJdEHoRHvU5Ilmx
	DCbLBT1Qi5WqstYrwCZyNUzDZ3kXZHfe/CM0mh8PfgQB7fItGD0QJqTVDZk/jCvThBxtJHnXHxBAZ
	BbFcI3DQGKIslZ5QIe5+AYO1/OUPjMxW6XDFAHTxRqJgj/ifjmPWYXwdTLhgm1oX7vpBXro2CgOEy
	HQ5/OlduJKdaQozv0VCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iONc0-0003jh-It; Sat, 26 Oct 2019 15:04:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iONbu-0003jA-8B
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 15:04:11 +0000
Received: by mail-wr1-x441.google.com with SMTP id r1so5434032wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 08:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YX9PeBiYB4z6tyZ7g7UzNJLY7tU0ltcTMGRXXHunNtE=;
 b=CoKuuHoY9/J6zlC1CJq/00HJVY+GqBkFupHAwVitwkfOYn72KEdXdOmGEZO0fwrGL9
 ifsJDGncC/0bK5PP96i3oKqOyhqVds8IoRcmXIb8byRTkjPLUjeVSLG+cS7rTILxEnDr
 7+X8uOTMmLFdJf6t2DnvhvyodSpMqAB7Hma9ZjP+qDljRRW6JAlRcc3HSBk1P2BoLGAJ
 uNt1y5+w8/LvqMmUzGxMPM4DVYxcHN6tQ7ATt8aHwo08wAARlCvkFuVSCEHBQB3LmnzA
 DfR6ZopIBPZu03M30K4VnPJcVZqvcLU7oK249kzvKhbkkwJOGyggRu3ESJJcJKIzi9aL
 Vfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YX9PeBiYB4z6tyZ7g7UzNJLY7tU0ltcTMGRXXHunNtE=;
 b=sOsTRdFXNY26gT4EQjLRC8YTq1X48yb8Sm+PPMH2pc9PWldSYM59eCI9pqLM2i8lAW
 /eJhKMMu20lQP5Y5F/gwzNVUh46QI3coJAGRUj60w1YNjrFrRDJg6KXQUE/T/98o+FMI
 6i5fIGgYYh+PZG4MLnJXaMV4rOHdUKj6XOjy5qWggwH93Py5AtskK6Hhe0SVT1ot/WCf
 ja2R1LOdxoY+ybiFNQD72JRspQX95/mxXy7Q3yZ9ODKKD5VDBoK74XsxbhYADDpbwrWh
 /mNCHtohyGvkSHI4R2eD8sXTwM/978dwJntJJOxb1omGmjkL5Q2Oxyqw+CAY3xjCC4ed
 zyEQ==
X-Gm-Message-State: APjAAAVdLxr4ysa/xBVeiAZb8j4O0poisxSMvTKVAIFyIDKFJ5h4RqCA
 UsItC/UCljcMxCO7PAvf58eUm8TAvchMJWDnKULaag==
X-Google-Smtp-Source: APXvYqyG6c7e6ZSbIAiM9TGPkQhultl0mF1e0TmtKI7pMMARHVg6EwZfDkl/T5WfRjuQafTYwq4MhrhpH5YDW0oUb9c=
X-Received: by 2002:adf:9f08:: with SMTP id l8mr7338607wrf.325.1572102246965; 
 Sat, 26 Oct 2019 08:04:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-8-t-kristo@ti.com>
In-Reply-To: <20191017122549.4634-8-t-kristo@ti.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 26 Oct 2019 17:04:05 +0200
Message-ID: <CAKv+Gu-4j3yUT7ekPukj1t50WXuNBb+XwwCqP7qHCkH_ZE9ipw@mail.gmail.com>
Subject: Re: [PATCH 07/10] crypto: omap-aes-gcm: fix corner case with only
 auth data
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_080410_319472_5D0603C0 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-omap@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019 at 14:26, Tero Kristo <t-kristo@ti.com> wrote:
>
> Fix a corner case where only authdata is generated, without any provided
> assocdata / cryptdata. Passing the empty scatterlists to OMAP AES core driver
> in this case would confuse it, failing to map DMAs.
>

So this change appears to be the culprit for causing the remaining
issue that I reported in the cover letter of the followup series that
I sent out.

The logic below does not account for the case where only assocdata is
provided, which is a valid use of an AEAD.

> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  drivers/crypto/omap-aes-gcm.c | 22 ++++++++++++++--------
>  1 file changed, 14 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/crypto/omap-aes-gcm.c b/drivers/crypto/omap-aes-gcm.c
> index 9bbedbccfadf..dfd4d1cac421 100644
> --- a/drivers/crypto/omap-aes-gcm.c
> +++ b/drivers/crypto/omap-aes-gcm.c
> @@ -148,12 +148,14 @@ static int omap_aes_gcm_copy_buffers(struct omap_aes_dev *dd,
>         if (req->src == req->dst || dd->out_sg == sg_arr)
>                 flags |= OMAP_CRYPTO_FORCE_COPY;
>
> -       ret = omap_crypto_align_sg(&dd->out_sg, cryptlen,
> -                                  AES_BLOCK_SIZE, &dd->out_sgl,
> -                                  flags,
> -                                  FLAGS_OUT_DATA_ST_SHIFT, &dd->flags);
> -       if (ret)
> -               return ret;
> +       if (cryptlen) {
> +               ret = omap_crypto_align_sg(&dd->out_sg, cryptlen,
> +                                          AES_BLOCK_SIZE, &dd->out_sgl,
> +                                          flags,
> +                                          FLAGS_OUT_DATA_ST_SHIFT, &dd->flags);
> +               if (ret)
> +                       return ret;
> +       }
>
>         dd->in_sg_len = sg_nents_for_len(dd->in_sg, alen + clen);
>         dd->out_sg_len = sg_nents_for_len(dd->out_sg, clen);
> @@ -287,8 +289,12 @@ static int omap_aes_gcm_handle_queue(struct omap_aes_dev *dd,
>                 return err;
>
>         err = omap_aes_write_ctrl(dd);
> -       if (!err)
> -               err = omap_aes_crypt_dma_start(dd);
> +       if (!err) {
> +               if (dd->in_sg_len && dd->out_sg_len)
> +                       err = omap_aes_crypt_dma_start(dd);
> +               else
> +                       omap_aes_gcm_dma_out_callback(dd);
> +       }
>
>         if (err) {
>                 omap_aes_gcm_finish_req(dd, err);
> --
> 2.17.1
>
> --
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
