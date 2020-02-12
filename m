Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DF415AD4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:23:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4KUkwTx2fvL4qUFd4W1ty0/oOwVHirAiw1Fn9NpbD8=; b=JCuaPOFbwfmVLD
	NB7Dedw5lxfInDbeiFWw5hVpZnk4Q6f7YYoYQjuBeGsuM9aL28lB8+3nUQZs6YJIOUetqWTeDt0tV
	KhiRTtqrLOdnbmBNviIsNQztiXHV+bzdE3dBxtLsUHLwtzYLHE6zzDGEoh5MB+SJHagYh03DWyCl7
	buB/lcwu8yReFPJ+68y+UaeBDyFpfUJ+LaqRsKhch2G0llHMMO8t+xGTcmDVZKyI5eYyiUXZrUz/L
	/wbSC69G1B6v1e2okyi5vzLpBwEjKOjClzXEIWGkpipbXwNCsAD1L4r7GyhsbKyNcYWQqprCJ//0M
	fC8LPv5bskvTmK2HVxbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1unS-0005Ui-0w; Wed, 12 Feb 2020 16:23:30 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1unI-0005UO-U1
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:23:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so1143322plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 08:23:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yuS3UA1IgBJUj+Wpff0h1v7oXXukTf3YUcZ7+4lm5Pc=;
 b=ZBz6nbVg0BvKO4Kpp4xvT89r/oVFpqbGIv6DR+w3SZFiDgfpiCsa6srQmCI7ILhPsg
 ftsBjyXrlU+BY6jaNV2yB9qcscoalG03jvehW6GwpDD7HLsYyyPpMnkh9zMVvo8bT9OV
 WY7wem6cbcoBfg1yjGFvHS+IbXfECEzMnhhsTxFINGSMv+utJY7AyzknnwDbd/gzNGjh
 7yWTVzwMm78qnN7L7BeNToUPFxxslox45BOqW3slHHfw1nIyKT/Wl+WvOE3oXoQnKHb+
 Do/jOgYPgDl55OtppFGbDAmiQ+TnOUerZWMq/6crZdwYG6W+rF1Q3FCiXMfFtNqdNEtp
 ODgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yuS3UA1IgBJUj+Wpff0h1v7oXXukTf3YUcZ7+4lm5Pc=;
 b=COdgbzgPHWVcT4/C0ny4bwS5tiECwxjX/0TX8Mt1mzm4HpYVpfpXiKmpMNkan5NiYS
 aUyJ2/++0422J+r2YHLGV74rptFwWV2SnGVApbUmtsjzwV/CByW15SDXxRmQ9aY67ZWQ
 akXoMGWLDN9CcSiMNApH7yclwIjtkYA1/BBw1sB6L666YFywxBvvjRJEdwvbrxpAE5XC
 0ONLAcJI95PwdcKSIgXFvEeszBHQ0hTF3lE1axAVAISpTMp9BvtCtxRUQDQTJmMqIeNc
 oWvSke8xY6WdoJMkY7EBATFJ7HxQbSGZisxud7tx9IwoXxoBv4+/0Wop7d/SYU7Cvmdi
 qcqA==
X-Gm-Message-State: APjAAAV6HNh4YBiIlzCGq5Z/TqMXl1T1O7nVVnSlWZjG74xaqrWLhsNL
 /2e5upXe0kJr1zkHkPxuMJXtXCAB9EK3WjzNXhg=
X-Google-Smtp-Source: APXvYqyQ68Kti3qwh42kkGAhB0AUJ6hfRU+pu7Wom3J96ut79md2/f+Fd78hgzJvaOGt2BLMWtLQct6myw5vSBS/bc8=
X-Received: by 2002:a17:902:9342:: with SMTP id
 g2mr8825074plp.339.1581524600442; 
 Wed, 12 Feb 2020 08:23:20 -0800 (PST)
MIME-Version: 1.0
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200128110102.11522-6-martin@kaiser.cx>
In-Reply-To: <20200128110102.11522-6-martin@kaiser.cx>
From: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Date: Wed, 12 Feb 2020 21:53:09 +0530
Message-ID: <CANc+2y6oasMLCzDJAebFca4yoWWTL4r3Esyws-K5EuMLwbuAqA@mail.gmail.com>
Subject: Re: [PATCH 5/6] hwrng: imx-rngc - check the rng type
To: Martin Kaiser <martin@kaiser.cx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_082320_969758_C79D5ACF 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
> Read the rng type and hardware revision during probe. Fail the probe
> operation if the type is not one of rngc or rngb.
> (There's also an rnga type, which needs a different driver.)
>
> Display the type and revision in a debug print if probe was successful.
>
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>
> ---
>  drivers/char/hw_random/imx-rngc.c | 28 +++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/char/hw_random/imx-rngc.c b/drivers/char/hw_random/imx-rngc.c
> index 8222055b9e9b..27d85fced30b 100644
> --- a/drivers/char/hw_random/imx-rngc.c
> +++ b/drivers/char/hw_random/imx-rngc.c
> @@ -18,12 +18,22 @@
>  #include <linux/completion.h>
>  #include <linux/io.h>
>
> +#define RNGC_VER_ID                    0x0000
>  #define RNGC_COMMAND                   0x0004
>  #define RNGC_CONTROL                   0x0008
>  #define RNGC_STATUS                    0x000C
>  #define RNGC_ERROR                     0x0010
>  #define RNGC_FIFO                      0x0014
>
> +/* the fields in the ver id register */
> +#define RNGC_TYPE_SHIFT                28
> +#define RNGC_VER_MAJ_SHIFT             8
> +
> +/* the rng_type field */
> +#define RNGC_TYPE_RNGB                 0x1
> +#define RNGC_TYPE_RNGC                 0x2
> +
> +
>  #define RNGC_CMD_CLR_ERR               0x00000020
>  #define RNGC_CMD_CLR_INT               0x00000010
>  #define RNGC_CMD_SEED                  0x00000002
> @@ -212,6 +222,8 @@ static int imx_rngc_probe(struct platform_device *pdev)
>         struct imx_rngc *rngc;
>         int ret;
>         int irq;
> +       u32 ver_id;
> +       u8  rng_type;
>
>         rngc = devm_kzalloc(&pdev->dev, sizeof(*rngc), GFP_KERNEL);
>         if (!rngc)
> @@ -237,6 +249,17 @@ static int imx_rngc_probe(struct platform_device *pdev)
>         if (ret)
>                 return ret;
>
> +       ver_id = readl(rngc->base + RNGC_VER_ID);
> +       rng_type = ver_id >> RNGC_TYPE_SHIFT;
> +       /*
> +        * This driver supports only RNGC and RNGB. (There's a different
> +        * driver for RNGA.)
> +        */
> +       if (rng_type != RNGC_TYPE_RNGC && rng_type != RNGC_TYPE_RNGB) {
> +               ret = -ENODEV;
> +               goto err;
> +       }
> +
>         ret = devm_request_irq(&pdev->dev,
>                         irq, imx_rngc_irq, 0, pdev->name, (void *)rngc);
>         if (ret) {
> @@ -269,7 +292,10 @@ static int imx_rngc_probe(struct platform_device *pdev)
>                 goto err;
>         }
>
> -       dev_info(&pdev->dev, "Freescale RNGC registered.\n");
> +       dev_info(&pdev->dev,
> +               "Freescale RNG%c registered (HW revision %d.%02d)\n",
> +               rng_type == RNGC_TYPE_RNGB ? 'B' : 'C',
> +               (ver_id >> RNGC_VER_MAJ_SHIFT) & 0xff, ver_id & 0xff);
>         return 0;
>
>  err:
> --
> 2.20.1
>

Reviewed-by: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
