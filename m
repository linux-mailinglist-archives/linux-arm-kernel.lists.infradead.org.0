Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0271E3BC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PionoKR2o8bpgnCr5uS3xLoKPK1rXa4B39FAjN74tgE=; b=shczq9o3cULUU2
	GC8PGnNItGo/1HqFSbucRpl9lQz1x/TcUq4oTax0iGQZRizK/IFVWVZRpf+EmYxF4W2H0oRqd1gpc
	YFwQ31Vaqkk70x6hF53ZBAq/MJ+nQsBH2tyL1ju6qmdP4QFAXfvVBHdLSmk4ugP7inf7g50PngiJe
	9OLjp7YRZAtDqt7PpBCzjT+QZefVhBiCToLccbqu7sVKXTrfjSz66sGiv6/oAA5iFSf0Q+MBUoiSA
	AiXzPMZzM0hzMgAc2ETZChmSEdi1Y0DpMfNHiy6FjNsm5bh2aS75Fbzr1sQK4P+d/pwfUqTj8o/GQ
	6WX/D9Z2ajiKPfeA4yYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrG0-0006J4-Qn; Wed, 27 May 2020 08:17:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrFo-0006Hp-NO
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:17:38 +0000
Received: by mail-wm1-x344.google.com with SMTP id f5so2139278wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 01:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zQPsUVCqNfzFIU8v+ZDf1R9blbjp1zF0pTEs4sFWhWU=;
 b=YgVqEsnHHZp93t+SQ2Ae73TGpl85Q6L1tDROvs8Tobv4eKCAT6IccsQt9lTRvQbuxT
 O6gRYjdUeWehx0AhZ3hloWHfGclDcE6lRxvAxSjFiM/u5tuFFkqPHi6VvC4idg/peWJJ
 PXmxtXbc2FPfb2G9YJnwd9blYMCKwXce1c3qDOE8qUunH9ZMXoFKSgzzxJEIWwhdX8HI
 LJK2hTqGT1GbT0D+R5KLVgVnjZwCzVPGSOToiINSZojZ5Y8yqparHQ4hIa0LpHq4Be5M
 Htj/D/oSFAmmNjpiQS6cjzqkIgLwn/QLo938SrxL9OxivAv4pqjJF7IbiEVfjtRQE9x+
 d0aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zQPsUVCqNfzFIU8v+ZDf1R9blbjp1zF0pTEs4sFWhWU=;
 b=PM51Fych+prtJ2Jvt/IohtMksFk8mkrZvkb2vb9z5Oavy/WHnAz5zuaWI0oR3gMD/K
 Md4IBhf26DY+3VmcKab20vUhCuyymtVdaAHS4EbYkhIH0qNaZV3W9cbVuKujJGRQeKXt
 hs1h/F8hNPkhQjnPKccnnuZWgZ93pkg55YDctyhnYhjmqMCvQzaEIvkuNJbRK9N/QRfp
 5Aa4xV+TIxIcGEN1NQ75D0qM/IQBsgmkQnKqppogKq2K3R9uXDqpXdw7CXvVbZp5kzBW
 TVvG9HfIuHdml5uxJb3n5l2HirgTy4RZK2ohuYT+EhS0pDW0gcU6b9YpM+/f6roRSUnF
 ykJA==
X-Gm-Message-State: AOAM530oFvmUqkn4kPUaZh85JKT3kQ3LfvdOsl0B+ImcW9WvuMOlGcSp
 HaIa2gVl0bgVQtHABB4S6Z3uCw==
X-Google-Smtp-Source: ABdhPJx8wptAoFsnZYW04E1TTKd7bYnndpnmEkPYZcaM4kED49FKX+cqXxfItLqmi7vSzsFcR5xCkA==
X-Received: by 2002:a1c:64c1:: with SMTP id y184mr3055622wmb.175.1590567453814; 
 Wed, 27 May 2020 01:17:33 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:acf8:18a8:b3a5:a17b?
 ([2a01:e35:2ec0:82b0:acf8:18a8:b3a5:a17b])
 by smtp.gmail.com with ESMTPSA id t14sm2165032wrb.94.2020.05.27.01.17.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 01:17:33 -0700 (PDT)
Subject: Re: [PATCH for-5.8 2/2] usb: dwc3: meson-g12a: fix USB2 PHY
 initialization on G12A and A1 SoCs
To: balbi@kernel.org, gregkh@linuxfoundation.org
References: <20200526202943.715220-1-martin.blumenstingl@googlemail.com>
 <20200526202943.715220-3-martin.blumenstingl@googlemail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <40a874eb-1a2b-533e-ee3e-bd90510abaf9@baylibre.com>
Date: Wed, 27 May 2020 10:17:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200526202943.715220-3-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_011736_768893_A3DAD2C2 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: hanjie.lin@amlogic.com, "kernelci.org bot" <bot@kernelci.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, yue.wang@amlogic.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On 26/05/2020 22:29, Martin Blumenstingl wrote:
> dwc3_meson_g12a_usb2_init_phy() crashes with NULL pointer on an SM1
> board (which uses the same USB setup as G12A) dereference as reported
> by the Kernel CI bot. This is because of the following call flow:
>   dwc3_meson_g12a_probe
>     priv->drvdata->setup_regmaps
>       dwc3_meson_g12a_setup_regmaps
>         priv->usb2_ports is still 0 so priv->u2p_regmap[i] will be NULL
>     dwc3_meson_g12a_get_phys
>       initializes priv->usb2_ports
>     priv->drvdata->usb_init
>       dwc3_meson_g12a_usb_init
>         dwc3_meson_g12a_usb_init_glue
>           dwc3_meson_g12a_usb2_init
>             priv->drvdata->usb2_init_phy
>               dwc3_meson_g12a_usb2_init_phy
>                 dereferences priv->u2p_regmap[i]
> 
> Call priv->drvdata->setup_regmaps only after dwc3_meson_g12a_get_phys so
> priv->usb2_ports is initialized and the regmaps will be set up
> correctly. This fixes the NULL dereference later on.
> 
> Fixes: 013af227f58a97 ("usb: dwc3: meson-g12a: handle the phy and glue registers separately")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/usb/dwc3/dwc3-meson-g12a.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
> index ce5388338389..1f7f4d88ed9d 100644
> --- a/drivers/usb/dwc3/dwc3-meson-g12a.c
> +++ b/drivers/usb/dwc3/dwc3-meson-g12a.c

[...]

Fixes regression reported at [1] on SEI510 board based on Amlogic G12A.

Felipe, Greg, can this be queued on uxb-next for 5.8 ?

Acked-by: Neil Armstrong <narmstron@baylibre.com>

Thanks,
Neil

[1] http://lore.kernel.org/r/ffe2c64c-62ed-9b59-3754-7ede0f0203be@collabora.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
