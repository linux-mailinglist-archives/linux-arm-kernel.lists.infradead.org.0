Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC77715C1BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:26:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mi+UGSVVvIUMKiIliOwmQBH8EFFlZAAn5kWWeF+weRk=; b=FhXpBFA3O1ypk1
	AmKMObjX50nyXzwasbaAKzausGR+nx2pdGSVWGiQ42UZQTxXJe18YKSOwIx2XTfa3AODYzXnB9nHj
	Qxvq/v11l1QPmLxOQk17dxbmxkJK6BqnUjEqN1mKVU9luEZqh3tedSm7ilYHacYB2B7oOuY5zMePd
	crHfOahFq8LUqcm9Y418js955fx7isQc9jWajfrslUCcSNQ7aJdpbKyTPwIBiKlrBeADEqW3OT8g0
	s5n8iDQTWmrMeAFg4VdK0QG5ChqoFnL15mVVPW8KUaIJCDresCFcNVwngMs6MmrHOwNTKbG2b3CUb
	Es0Mr5G+gAlI5DhuhNYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GNd-0004rj-Q8; Thu, 13 Feb 2020 15:26:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GNW-0004qm-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:26:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id t23so6710860wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 07:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I3z0GeNna29gwRdMMOKl3LqQuwXqLwU33hOnQJ+7Vb0=;
 b=KzwM0hCK5nh55Ewb3efIHVrhUtAv0ETsT0xyEaZwnKFX5LhYzyzCPFrg5IGsoc2CTZ
 EDKjPafC21JsM4cR3VWC/I3BoXkd5zGhgJ0KHoJesPnyl/vX2zjDPrT6To6zZdoKwnEP
 BuynLs+Io3t1+QfAcvqiY/hC5knCYY+I62i1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I3z0GeNna29gwRdMMOKl3LqQuwXqLwU33hOnQJ+7Vb0=;
 b=kvPMTRRhQiwV5/vnieOBfKSeZt/t7yAE0rI6UDL56m8ebZexw7Iio6HP7w9zvQKl4d
 NBmJR3LWYsB51Yp5mFyfucCBV+6lMp9CclIdAyvrzDEflxOe1YOzI+R2HjhBd+MwzU+X
 pz4naw/ScwMwbxVYGy2ffvERvimfEmifuvDXrJyoBlmjU2PpcOeWuyYTkjfC1s0GXPNf
 1rzki07tq2JP3IMX9+9ioAuCU82Jzajx9cdyzrpyfBqL3YKaQ0v2CCAjMoC/p4OsNo9z
 viaVaWqEchwihZyHrgDglq6jWlNrMQrHA4CvuyEzWsne+8/0EqgS7zkMO4NeqAiztj0U
 MzIw==
X-Gm-Message-State: APjAAAVaDbyzMWHKfVOZMyiLPxp9E9gK4PNbcZwW7rF3knEHmk4jGf6W
 hY9eW8yA/IadkXvVD8Z1ZfNIlfutg+WWUXFn2yaMRw==
X-Google-Smtp-Source: APXvYqw7LJ3y9EC/0ec46LvdlfSV1Ie8xgbuyVlK3yn3UmXw3YpS8twtFHNDErOnjjs7+s/ie9sogvRAdemhZOmdHZk=
X-Received: by 2002:a7b:c183:: with SMTP id y3mr6063317wmi.45.1581607568832;
 Thu, 13 Feb 2020 07:26:08 -0800 (PST)
MIME-Version: 1.0
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
 <20200213025930.27943-3-jaedon.shin@gmail.com>
In-Reply-To: <20200213025930.27943-3-jaedon.shin@gmail.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 13 Feb 2020 10:25:57 -0500
Message-ID: <CA+-6iNzj46rrd1=i_0oO5mOzP-KUxkxPRd=Qb0mX2fAJnt9Zpw@mail.gmail.com>
Subject: Re: [PATCH 2/3] PCI: brcmstb: Add regulator support
To: Jaedon Shin <jaedon.shin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_072610_668423_375272BF 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 9:59 PM Jaedon Shin <jaedon.shin@gmail.com> wrote:
>
> ARM-based Broadcom STB SoCs have GPIO-based voltage regulator for PCIe
> turning off/on power supplies.
>
> Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
> ---
>  drivers/gpio/gpio-brcmstb.c           | 13 ++++-
>  drivers/pci/controller/pcie-brcmstb.c | 76 +++++++++++++++++++++++++++
>  2 files changed, 88 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-brcmstb.c b/drivers/gpio/gpio-brcmstb.c
> index 05e3f99ae59c..0cee5fcd2782 100644
> --- a/drivers/gpio/gpio-brcmstb.c
> +++ b/drivers/gpio/gpio-brcmstb.c
> @@ -777,7 +777,18 @@ static struct platform_driver brcmstb_gpio_driver = {
>         .remove = brcmstb_gpio_remove,
>         .shutdown = brcmstb_gpio_shutdown,
>  };
> -module_platform_driver(brcmstb_gpio_driver);
> +
> +static int __init brcmstb_gpio_init(void)
> +{
> +       return platform_driver_register(&brcmstb_gpio_driver);
> +}
> +subsys_initcall(brcmstb_gpio_init);
> +
> +static void __exit brcmstb_gpio_exit(void)
> +{
> +       platform_driver_unregister(&brcmstb_gpio_driver);
> +}
> +module_exit(brcmstb_gpio_exit);
>
>  MODULE_AUTHOR("Gregory Fong");
>  MODULE_DESCRIPTION("Driver for Broadcom BRCMSTB SoC UPG GPIO");
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 34581a6a7313..0e0ca39a680b 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -23,6 +23,7 @@
>  #include <linux/of_platform.h>
>  #include <linux/pci.h>
>  #include <linux/printk.h>
> +#include <linux/regulator/consumer.h>
>  #include <linux/sizes.h>
>  #include <linux/slab.h>
>  #include <linux/string.h>
> @@ -173,8 +174,79 @@ struct brcm_pcie {
>         int                     gen;
>         u64                     msi_target_addr;
>         struct brcm_msi         *msi;
> +#ifdef CONFIG_REGULATOR
> +       int                     num_regs;
> +       struct regulator        **regs;
> +#endif
>  };
Hi,
Just a nit but I would lean towards using 'regulator' as opposed to
'reg', as the 'reg' term's common association is  'register'.  You
don't seem to be anywhere near the 80-col limit on your code so that
doesn't seem to be an issue.
Thanks,
Jim
>
> +#ifdef CONFIG_REGULATOR
> +static void brcm_pcie_regulator_enable(struct brcm_pcie *pcie)
> +{
> +       int i, ret;
> +
> +       for (i = 0; i < pcie->num_regs; i++) {
> +               if (!pcie->regs[i])
> +                       continue;
> +
> +               ret = regulator_enable(pcie->regs[i]);
> +               if (ret)
> +                       dev_err(pcie->dev, "Failed to enable regulator\n");
> +       }
> +}
> +
> +static void brcm_pcie_regulator_disable(struct brcm_pcie *pcie)
> +{
> +       int i, ret;
> +
> +       for (i = 0; i < pcie->num_regs; i++) {
> +               if (!pcie->regs[i])
> +                       continue;
> +
> +               ret = regulator_disable(pcie->regs[i]);
> +               if (ret)
> +                       dev_err(pcie->dev, "Failed to disable regulator\n");
> +       }
> +}
> +
> +static void brcm_pcie_regulator_init(struct brcm_pcie *pcie)
> +{
> +       struct device_node *np = pcie->dev->of_node;
> +       struct device *dev = pcie->dev;
> +       const char *name;
> +       struct regulator *reg;
> +       int i;
> +
> +       pcie->num_regs = of_property_count_strings(np, "supply-names");
> +       if (pcie->num_regs <= 0) {
> +               pcie->num_regs = 0;
> +               return;
> +       }
> +
> +       pcie->regs = devm_kcalloc(dev, pcie->num_regs, sizeof(pcie->regs[0]),
> +                                 GFP_KERNEL);
> +       if (!pcie->regs) {
> +               pcie->num_regs = 0;
> +               return;
> +       }
> +
> +       for (i = 0; i < pcie->num_regs; i++) {
> +               if (of_property_read_string_index(np, "supply-names", i, &name))
> +                       continue;
> +
> +               reg = devm_regulator_get_optional(dev, name);
> +               if (IS_ERR(reg))
> +                       continue;
> +
> +               pcie->regs[i] = reg;
> +       }
> +}
> +#else
> +static inline void brcm_pcie_regulator_enable(struct brcm_pcie *pcie) { }
> +static inline void brcm_pcie_regulator_disable(struct brcm_pcie *pcie) { }
> +static inline void brcm_pcie_regulator_init(struct brcm_pcie *pcie) { }
> +#endif
> +
>  /*
>   * This is to convert the size of the inbound "BAR" region to the
>   * non-linear values of PCIE_X_MISC_RC_BAR[123]_CONFIG_LO.SIZE
> @@ -898,6 +970,7 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
>  {
>         brcm_msi_remove(pcie);
>         brcm_pcie_turn_off(pcie);
> +       brcm_pcie_regulator_disable(pcie);
>         clk_disable_unprepare(pcie->clk);
>         clk_put(pcie->clk);
>  }
> @@ -955,6 +1028,9 @@ static int brcm_pcie_probe(struct platform_device *pdev)
>                 return ret;
>         }
>
> +       brcm_pcie_regulator_init(pcie);
> +       brcm_pcie_regulator_enable(pcie);
> +
>         ret = brcm_pcie_setup(pcie);
>         if (ret)
>                 goto fail;
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
