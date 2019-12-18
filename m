Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3949E123D6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zik/LfG2m/HSdyhx8QZpgI7xqWJulO8EOTrP3qFu6YM=; b=CEbzMlf0ZjEO42
	J8ekNsITQ07ySl8WsLzJfiNax7lHM4Zk4vY2OCKV/3gi8YWKmi+J65kAPBznmtg257U68Y55hEU9M
	JbCxXoDDGD99g+ndhXYvJbMk/M1RhOWn33fJWNlTHRkG4nsT7uWEl1jW1vB63jhNT47Q0nMhH7TAG
	g62aGNwgHWNi25ppVf9pffINMTx27I/U2zkAoaWyZIh5XyGx5G/5giOBMbCwuBUgms/0U7+1rNyt9
	4zY0WdBn2ndeNd/gju4H4yjne1PmOIq+JFFIY61wlYpCprsB3IEe6kAMRBW1cEMGZX/fQIpbSjhPy
	HP7/4nSUAHSS/Gh9SRiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihPMl-0002KK-Vv; Wed, 18 Dec 2019 02:47:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihPMa-0002IT-L3; Wed, 18 Dec 2019 02:47:01 +0000
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0725021835;
 Wed, 18 Dec 2019 02:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576637220;
 bh=EN9XGbtCVFK944Al0uckJBpC3fwAtS4+X+y3O5WYLdA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=W8gElQ6oUB4T3v7WLZo0xo/RWlXTJ4G1338qddAWGZocy4sQqcExFpivqsupYWXw9
 /ez6h5tkCZx9ba0610UE/DI1i4tgrsUycRKdOiENqXqww6Q0OXbHnweB1/hYYQAhrs
 QvkVbsingA+2bcvptfW18RFWZ4ILB/e70Otx2yqY=
Received: by mail-wr1-f45.google.com with SMTP id z3so611626wru.3;
 Tue, 17 Dec 2019 18:46:59 -0800 (PST)
X-Gm-Message-State: APjAAAUDGUeAUQlWzpAeX/9JyQiGYEjEIhCI4PBRq8JMAPpsaO7Yt/ym
 W6MdBaTFaC82uD/lcpG5kvD+e549Y1tfC5Nngus=
X-Google-Smtp-Source: APXvYqysa4a+4xeUb9YQTX1Eh4yJtSOADgVQZkRKpq63DrhasVdvKDjwwOKDppLi9wiOP9XubpNTkYeEip1VsbgqxhI=
X-Received: by 2002:adf:cf12:: with SMTP id o18mr1139856wrj.361.1576637218572; 
 Tue, 17 Dec 2019 18:46:58 -0800 (PST)
MIME-Version: 1.0
References: <20191210203149.7115-1-tiny.windzz@gmail.com>
 <20191210203149.7115-2-tiny.windzz@gmail.com>
In-Reply-To: <20191210203149.7115-2-tiny.windzz@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 18 Dec 2019 10:46:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v65vb0HOHS18-z2dzu=icQGssKtSNWGKa9Uy5dYREURheg@mail.gmail.com>
Message-ID: <CAGb2v65vb0HOHS18-z2dzu=icQGssKtSNWGKa9Uy5dYREURheg@mail.gmail.com>
Subject: Re: [PATCH 1/5] nvmem: sunxi_sid: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_184700_706168_5778B57A 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thierry Reding <treding@nvidia.com>, Mans Rullgard <mans@mansr.com>,
 rafael@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 suzuki.poulose@arm.com, linux-kernel <linux-kernel@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 4:32 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify code.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

> ---
>  drivers/nvmem/sunxi_sid.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/nvmem/sunxi_sid.c b/drivers/nvmem/sunxi_sid.c
> index e26ef1bbf198..c54adf60b155 100644
> --- a/drivers/nvmem/sunxi_sid.c
> +++ b/drivers/nvmem/sunxi_sid.c
> @@ -112,7 +112,6 @@ static int sun8i_sid_read_by_reg(void *context, unsigned int offset,
>  static int sunxi_sid_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
> -       struct resource *res;
>         struct nvmem_config *nvmem_cfg;
>         struct nvmem_device *nvmem;
>         struct sunxi_sid *sid;
> @@ -129,8 +128,7 @@ static int sunxi_sid_probe(struct platform_device *pdev)
>                 return -EINVAL;
>         sid->value_offset = cfg->value_offset;
>
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       sid->base = devm_ioremap_resource(dev, res);
> +       sid->base = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(sid->base))
>                 return PTR_ERR(sid->base);
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
