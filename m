Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098E01525B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 05:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vIihH0TSayZ++UZo3R1BqEFNxh8M+hOBfL5zuISD0w=; b=HlwvxomAY3AVTK
	NJGkM7bpKgS9u2CqFpCd2DyISc50xdIaPRwmuTSVOYouXh4+PAQaLnF0u2ChGHKQHrJoCNWHVO7H2
	0bBdzBOnjhpO9LgR/LgXrHQZe2Y5VkaGLffgHbGQnC87u73X0kNxS3RalC3ZC1uTzY4gJqnZwG4wk
	9Vloxn0aMC5BZLHQfz01yn/BGfkk+9JUe2rIWc6LCdL2yT0JAjln3lS2uIntUytsIehjwiLjDy7w9
	84msyeLAHHar5wnlhCh6W2KGZ9dS0zpg7WEx/5U6YqOMUTUImsqDm6Fow2jCUgIQKcw9ZnZbDvzpr
	B7D7O2YlPR5kWqYW6CbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izCkU-0000iQ-45; Wed, 05 Feb 2020 04:57:14 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izCkN-0000hX-9r
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 04:57:08 +0000
Received: by mail-ed1-f66.google.com with SMTP id cy15so947481edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 20:57:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UCEeJD0oPt/cyzPGhF5uF/YpWpW9XVqpjLag5G1/XFc=;
 b=Tm/6ASU1cA1CEACkNz1RO4s4CO0mjL/HaQn+EKDB7tLM+eQfvjodofqOdH66gINJZM
 wMtzqx1ADTyfkqNZ1zMDxP4k4C2oNaXSJM5ZifF36Z2FNX1rWxmWx8uAxAhNROFbBrEH
 kpDtUIIQ05k3ErXC04KJM4g+0N0ugTTaEMAHxvteKhPvotSvqtP680kMH3l7jczK04xP
 j6AqGNh+XStHOhNYnZypKdiQD/seIomDAEfNgx78ajaLUpfAVjN9CvXQOw7nVV0LK/L0
 6x3S3+PfMiuT660Pni7UjyuNgp3xdHNfiLDWrGZV7ZHu713dM28nYQZw0K1wEPRO5lwo
 e9uA==
X-Gm-Message-State: APjAAAU8kwsEGyWSq7+chrNyMVdkLOZ2CjKTo8jBY2qfuU1Plkk/XoKp
 7TMEShaHgf56KnE27Qiz57yrkW+mr3o=
X-Google-Smtp-Source: APXvYqxi5eQvR1iaxF3311B4jncEBBdfjQy8P8vCuT75aJDQA2Au14WvIicOlw8RbwJRznh+grTmYw==
X-Received: by 2002:a50:9e63:: with SMTP id z90mr3290751ede.306.1580878624546; 
 Tue, 04 Feb 2020 20:57:04 -0800 (PST)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id h16sm1619682ejc.89.2020.02.04.20.57.04
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Feb 2020 20:57:04 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id w15so983319wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 20:57:04 -0800 (PST)
X-Received: by 2002:a5d:484f:: with SMTP id n15mr26015369wrs.365.1580878623767; 
 Tue, 04 Feb 2020 20:57:03 -0800 (PST)
MIME-Version: 1.0
References: <20200205044247.32496-1-yuehaibing@huawei.com>
In-Reply-To: <20200205044247.32496-1-yuehaibing@huawei.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 5 Feb 2020 12:56:51 +0800
X-Gmail-Original-Message-ID: <CAGb2v67gzb+8vR=6jQKX07pcARUqBHeburNWM9tqzqhfTnodGg@mail.gmail.com>
Message-ID: <CAGb2v67gzb+8vR=6jQKX07pcARUqBHeburNWM9tqzqhfTnodGg@mail.gmail.com>
Subject: Re: [PATCH -next] dmaengine: sun4i: remove set but unused variable
 'linear_mode'
To: YueHaibing <yuehaibing@huawei.com>, Stefan Mavrodiev <stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_205707_341909_00B0FF7A 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Feb 5, 2020 at 12:43 PM YueHaibing <yuehaibing@huawei.com> wrote:
>
> drivers/dma/sun4i-dma.c: In function sun4i_dma_prep_dma_cyclic:
> drivers/dma/sun4i-dma.c:672:24: warning:
>  variable linear_mode set but not used [-Wunused-but-set-variable]
>
> commit ffc079a4accc ("dmaengine: sun4i: Add support for cyclic requests with dedicated DMA")
> involved this unused variable.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/dma/sun4i-dma.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/dma/sun4i-dma.c b/drivers/dma/sun4i-dma.c
> index bbc2bda..501cd44 100644
> --- a/drivers/dma/sun4i-dma.c
> +++ b/drivers/dma/sun4i-dma.c
> @@ -669,7 +669,7 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
>         dma_addr_t src, dest;
>         u32 endpoints;
>         int nr_periods, offset, plength, i;
> -       u8 ram_type, io_mode, linear_mode;
> +       u8 ram_type, io_mode;
>
>         if (!is_slave_direction(dir)) {
>                 dev_err(chan2dev(chan), "Invalid DMA direction\n");
> @@ -684,11 +684,9 @@ sun4i_dma_prep_dma_cyclic(struct dma_chan *chan, dma_addr_t buf, size_t len,
>
>         if (vchan->is_dedicated) {
>                 io_mode = SUN4I_DDMA_ADDR_MODE_IO;
> -               linear_mode = SUN4I_DDMA_ADDR_MODE_LINEAR;
>                 ram_type = SUN4I_DDMA_DRQ_TYPE_SDRAM;
>         } else {
>                 io_mode = SUN4I_NDMA_ADDR_MODE_IO;
> -               linear_mode = SUN4I_NDMA_ADDR_MODE_LINEAR;
>                 ram_type = SUN4I_NDMA_DRQ_TYPE_SDRAM;
>         }

I think it's better to actually use these values later when composing
the value for `endpoints`, as we do in sun4i_dma_prep_slave_sg().

The code currently works because SUN4I_DDMA_ADDR_MODE_LINEAR == 0.
However explicitly using the value makes the code more readable,
and doesn't require the reader to have implicit knowledge of default
values for parameters not specified in the composition of `endpoints`.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
