Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD4412BE2E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 18:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKI3LrGNYU6QzzyYo7sahr2SDS1UwdC76oUQyfma3Ag=; b=WMGqp/8B/rAZLI
	sPdrgpVr980VSyYbM6iQhDnWK32F449HJ8ciXrMme6ILhwvQYOqu1PBveDzugWv90oOCBSNIMn72M
	Z8VHoPK+6s6L8z3q2k+9LTe6WknD63qooOUy7IVvE+i1QsIPF98UVp2iYlovjhIk5HgdML89O8Ab7
	ClLkfFMfmc4I4EoriFnjRFeqG+B9aoHfb+1T76GQJi3xlAxc90ZtQEf9tqtF+h42vExekrcWHxB37
	LMWJeXKjqdX+NzAYwJzRFRoaU7U8ItxButz6NhpfaKaHf5BSA9IZIn+dtqqUAb5rP2S45fn7+JWZQ
	kY4cJsN51iFHufJL8Iig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilG3y-0003eD-24; Sat, 28 Dec 2019 17:39:42 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilG3q-0003dO-8s; Sat, 28 Dec 2019 17:39:35 +0000
Received: by mail-io1-xd42.google.com with SMTP id r13so18222540ioa.3;
 Sat, 28 Dec 2019 09:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nkCMArF5O7FXPw9BK2mgjdrIaTyHpsDk1hbsnTlNyJs=;
 b=stqjHdMIvlCCQU7QSqBhhrLQXtLp4MjfeRb6tc8UaWpblVQe6np+9BiXPqJ4FM+lCs
 60yIPCesMBN/wWiJiAb/UrVnMfND7ZNzcTOQv8NTHRm9wqQp/Z2B3sLhGpjRnJzjzfFq
 1rPAFgLDUk5BylE/oIzVbfUub9tQLyIiedJL6E4NH8RAbNTI4ASDEwM8loFlLcAg6BRw
 ug9Vof8O1H3TXd8hOmCok9FwhAGsJLZ3o5EFhr4BoxOGrruWfIgGNS/A0qbdGod3YtHh
 wACkY8OpHm//bPKKEL6nXtEOyYslQqOoaXnMPSQJG4JvdO0PR5nCqAmMp6ngAQXiYLXa
 LSOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nkCMArF5O7FXPw9BK2mgjdrIaTyHpsDk1hbsnTlNyJs=;
 b=E4QXxo31u0UOF1vvMAr10aKujw/4xaBU1cvd2nVyGf4Js0LGHpRWHxDNOZ/gr5V4Xx
 WnroEMKltlRu4gc4PIsqLTUa62y4ArRKg0C0A1T3LrrD48+InCCipXZzYovC7Aau/BEH
 7ZwDpwpEMZbBPWvszKBKsl4mfJdU2b9YlAydrqn1fL7TVZEUzBZinGgoum1BqRaUfN19
 OdilpuS7FAN7vAS7P+mQwtz1zTxUep1mbyJpsY7u81EE0/fNjyrhEp+0V8LyV3f52iOt
 LGbc/gQOao2ZVZXspOdIHmsbpMa/aXMc7qq2srthMayrF5r6AczFYdG5NfWyrXAPa4jH
 g1HA==
X-Gm-Message-State: APjAAAWi29fulCnM8cvRlYuhtKwmDcPg2qhGTbsfLrj95HLTMGbKBFla
 yFTf2pH4GevcMVCN9M1P8OJOrC6Xja1Ity0orOw=
X-Google-Smtp-Source: APXvYqyr/5wjv0CAn42AahOFrX+6N7JwDXAu/FKvMB0E9bGBOizVAHxY7kmasrb40gVuFjrfidmQTqq1aCWHimSjN84=
X-Received: by 2002:a6b:c410:: with SMTP id y16mr36580386ioa.18.1577554773160; 
 Sat, 28 Dec 2019 09:39:33 -0800 (PST)
MIME-Version: 1.0
References: <20191210203149.7115-1-tiny.windzz@gmail.com>
In-Reply-To: <20191210203149.7115-1-tiny.windzz@gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 29 Dec 2019 01:39:21 +0800
Message-ID: <CAEExFWvd1Md-guT=wgZ1-G69r71KBn64k2yGh0Vqjh_-D8yGuQ@mail.gmail.com>
Subject: Re: [PATCH] drivers: add devm_platform_ioremap_resource_byname()
 helper
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, vz@mleia.com,
 khilman@baylibre.com, 
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 andriy.shevchenko@linux.intel.com, 
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, mans@mansr.com,
 treding@nvidia.com, 
 suzuki.poulose@arm.com, bgolaszewski@baylibre.com, tglx@linutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_093934_340351_F3130EE9 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ping...

On Wed, Dec 11, 2019 at 4:31 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> There are currently 300+ instances of using platform_get_resource_byname()
> and devm_ioremap_resource() together in the kernel tree.
>
> This patch wraps these two calls in a single helper.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/base/platform.c         | 22 +++++++++++++++++++++-
>  include/linux/platform_device.h |  3 +++
>  2 files changed, 24 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index b6c6c7d97d5b..9c4f5e229600 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -60,6 +60,7 @@ struct resource *platform_get_resource(struct platform_device *dev,
>  }
>  EXPORT_SYMBOL_GPL(platform_get_resource);
>
> +#ifdef CONFIG_HAS_IOMEM
>  /**
>   * devm_platform_ioremap_resource - call devm_ioremap_resource() for a platform
>   *                                 device
> @@ -68,7 +69,7 @@ EXPORT_SYMBOL_GPL(platform_get_resource);
>   *        resource management
>   * @index: resource index
>   */
> -#ifdef CONFIG_HAS_IOMEM
> +
>  void __iomem *devm_platform_ioremap_resource(struct platform_device *pdev,
>                                              unsigned int index)
>  {
> @@ -78,6 +79,25 @@ void __iomem *devm_platform_ioremap_resource(struct platform_device *pdev,
>         return devm_ioremap_resource(&pdev->dev, res);
>  }
>  EXPORT_SYMBOL_GPL(devm_platform_ioremap_resource);
> +
> +/**
> + * devm_platform_ioremap_resource_byname - call devm_ioremap_resource() for
> + *                                        a platform device
> + *
> + * @pdev: platform device to use both for memory resource lookup as well as
> + *        resource managemend
> + * @name: resource name
> + */
> +void __iomem *
> +devm_platform_ioremap_resource_byname(struct platform_device *pdev,
> +                                     const char *name)
> +{
> +       struct resource *res;
> +
> +       res = platform_get_resource_byname(pdev, IORESOURCE_MEM, name);
> +       return devm_ioremap_resource(&pdev->dev, res);
> +}
> +EXPORT_SYMBOL_GPL(devm_platform_ioremap_resource_byname);
>  #endif /* CONFIG_HAS_IOMEM */
>
>  static int __platform_get_irq(struct platform_device *dev, unsigned int num)
> diff --git a/include/linux/platform_device.h b/include/linux/platform_device.h
> index 1b5cec067533..24ff5da9c532 100644
> --- a/include/linux/platform_device.h
> +++ b/include/linux/platform_device.h
> @@ -63,6 +63,9 @@ extern int platform_irq_count(struct platform_device *);
>  extern struct resource *platform_get_resource_byname(struct platform_device *,
>                                                      unsigned int,
>                                                      const char *);
> +extern void __iomem *
> +devm_platform_ioremap_resource_byname(struct platform_device *pdev,
> +                                     const char *name);
>  extern int platform_get_irq_byname(struct platform_device *, const char *);
>  extern int platform_add_devices(struct platform_device **, int);
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
