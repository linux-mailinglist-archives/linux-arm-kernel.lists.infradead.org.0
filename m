Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57904C10D3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 14:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pP8QaqstoILTjlE61B4w2U3BkgRuDPf6WnF49ng6Dc4=; b=JlqhC0pa6vaf8k
	+cb17TjKRpPXh23L+WnDftdFOq/2kk+B68/7kUI3TFfjujqlyAJmXd7aGakRKfQwWu19k2qFM7hbw
	8Om5jcMxHkl2b0PGKvTyPuF1RGrRvVgUQD414zHVW+dz9FXbFEVH9tLuKLPVhUkWcsRO95Nzxlkyq
	T6cPCCp31Dy7YxZ9RF+5qe/L8QaJ7LsuJ1sltBIi4zSm3yjTdHH1StxR0M5Hy8GgHIeLST3hmC6li
	ckSTMEz5j+KvXG8Wi/qj7wkWHWvy/V5MZxVB3vWdDZKjBsjcmytko+PJjMa3y8np9wGdH2I4zg2jX
	cJeuOqa0jnttzFYH3i7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEBkZ-0006NB-Sn; Sat, 28 Sep 2019 12:22:59 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEBkP-0006Mn-Ti
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 12:22:51 +0000
Received: by mail-ed1-x542.google.com with SMTP id h33so4525118edh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Sep 2019 05:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/hR+kqMDGuDIlBzQcMCCpOjWvuyBdLfiOy3t48A5p6Y=;
 b=f3xx81X7mWXH4CeG5AZFssab+cToO6mGAOOHEKmFloqLfr62ldyeY0Z7oewGlBco4f
 bhRASLKwwg+bRdpnaJKDTAlc7HNc+AJmxufJJbD2Okav13mJwFv/DiEpWuXbsM/f/Dtm
 rZe9V+Fvu+CF0Q2I6P8nHmnbViET59+QugGsw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/hR+kqMDGuDIlBzQcMCCpOjWvuyBdLfiOy3t48A5p6Y=;
 b=VMhYX/rVsW/yBCFAjkrXdWYbPgUInZvOqDw5pVgN21Xf9URzv+B4UtaoytI11y9lvp
 ZaNfqUNSs691kbLNYu30x2cq9OR/sFJWIGlASYse6ZSZ4RatxyM0WM3BEVZ+xSjhmLpe
 I72RrP6XmiBeYlA8z3PfB/nAEzuMTb9kYcMtWfPoewmVxAawrhWvEwGRoemW8zJ3A0qx
 Jq46Zg6cPfhQ8ZRxi9IkUaUklO5RqFjY7RxtaXwulyRkKcjEA7wWjOzJXxr0BnbGWExz
 QgKZrUkP8CUBmE+5oLIktuEP+bmDX5LE2rTGOY6JxD23PVGI6X1FuPSObIjcssUg0IPe
 mTrQ==
X-Gm-Message-State: APjAAAUqM3msDIIWN//pwsL9tlwxFMooemQdaP71YsFY8mWVf6i/KTNK
 KtzLoAJIc016sI5UnbLGMQgCSY7hkS3UuQ==
X-Google-Smtp-Source: APXvYqz9PIWxbBSO6NrcwLKTJPqxoF9S6qRlRn5cukkNuft33k2wM8ZyW6wRwHSUkhsAnuEj1yPmwA==
X-Received: by 2002:a50:91b1:: with SMTP id g46mr9494084eda.255.1569673367803; 
 Sat, 28 Sep 2019 05:22:47 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id h10sm1179026edf.81.2019.09.28.05.22.47
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Sep 2019 05:22:47 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id a6so8548663wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Sep 2019 05:22:47 -0700 (PDT)
X-Received: by 2002:a1c:a516:: with SMTP id o22mr11383304wme.116.1569673044123; 
 Sat, 28 Sep 2019 05:17:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190927071824.18675-1-dongchun.zhu@mediatek.com>
 <20190927071824.18675-2-dongchun.zhu@mediatek.com>
In-Reply-To: <20190927071824.18675-2-dongchun.zhu@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 28 Sep 2019 21:17:11 +0900
X-Gmail-Original-Message-ID: <CAAFQd5B1htFA1R92iQQ93dMQujkSWNqHkx94GG+bdUscRA4gDQ@mail.gmail.com>
Message-ID: <CAAFQd5B1htFA1R92iQQ93dMQujkSWNqHkx94GG+bdUscRA4gDQ@mail.gmail.com>
Subject: Re: [PATCH] media: i2c: ov5695: Modify the function of async register
 subdev related devices
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_052249_984412_E697CDCC 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, andriy.shevchenko@linux.intel.com,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 shengnan.wang@mediatek.com, Louis Kuo <louis.kuo@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 4:18 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> This patch adds support for registering a sensor sub-device to the async sub-device framework and parse set up common
> sensor related devices such as actuator/VCM.

nit: The description should be wrapped around the 80th column.

Sakari, do we need to resent or you could just rewrap when applying?

>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  drivers/media/i2c/ov5695.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/media/i2c/ov5695.c b/drivers/media/i2c/ov5695.c
> index e65a943..b6ee62c 100644
> --- a/drivers/media/i2c/ov5695.c
> +++ b/drivers/media/i2c/ov5695.c
> @@ -1328,7 +1328,7 @@ static int ov5695_probe(struct i2c_client *client,
>                 goto err_power_off;
>  #endif
>
> -       ret = v4l2_async_register_subdev(sd);
> +       ret = v4l2_async_register_subdev_sensor_common(sd);
>         if (ret) {
>                 dev_err(dev, "v4l2 async register subdev failed\n");
>                 goto err_clean_entity;
> --
> 2.9.2
>

Otherwise:

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
