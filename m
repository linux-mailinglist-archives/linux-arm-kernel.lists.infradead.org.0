Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11B813A5AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2krZVRbr/klo5XC5YefxAslJvgzoEcHsxHDjOYMngRE=; b=unC0voQs2PnPVr
	lfcMJJzLVrHTWgjILwd4BV7K7Wa7hkuZOcL8U8DTEh+V4hRBUZNCuwNqq5N0MKgHF6B7cQJcp9Rtx
	hPniWCNaKXTTAdPzQUi84NKa29WzN3250iOwKtIjOesV23C29fLbMZTycpIP8lRKWF/73sdcYICkP
	YUZNBJ6uHWKQ+9FS28t/mZOjDddAS7NlWZUYh845j9TV/3bsapswopzRK84IWOCc1xGFVbx0DUh8s
	6ZgjrUplxN7Y2+TN71aQppvdjKV9F1jQ5Eqbm3mwdY0+zr9IwhfrfZeNhWqiN8EJBhWtQMuFPquhG
	V248ZL98wERrJT3NSE+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJCb-0000ku-Lc; Tue, 14 Jan 2020 10:13:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJCQ-0000jY-OJ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 10:13:31 +0000
Received: by mail-wm1-x344.google.com with SMTP id a5so13060835wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 02:13:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PVJ9vsBKjNHAquu2wHQplGsVSsF8ZvsB04D/QJeGvO0=;
 b=QkBD7bGtsftShAVXrNLgP1GUir8zjpVH0BFB90Jq5fahbPDtUfMTZaLzyDbhXOmO2A
 nmmqavi/LtNmqfhcGG7sHpIdRdVeANyAR8RL4ouV2QsNHaRbPadxRhtHfIck56dD+8uQ
 amPWIBI+kZVA3StySeTyIOizmVdjxn4elq6Rdd/Vu1fbnzP1X5G5zN3FMNkpg/tfZKNO
 UGRQ/dsX9XyZDxTxyBVv3AiujdGMR3zooptycedYQPYqK3O/q7SqsUJzB2EFcT7aHdzZ
 U49U6xkIT+sSUuwO26vUpxKWZ8RlksiqQkZ2jKW9qn3klff/vprVctHRbtLhH98FzmK7
 a1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PVJ9vsBKjNHAquu2wHQplGsVSsF8ZvsB04D/QJeGvO0=;
 b=i6E1ZHH6i5H/LmSXF5PtbYnJbQGjo+mBHXWANaeLnlvVppi0KhR90YRaWoJNyk9HiK
 94q7fY0JVGP48e9dMOWEmqHUYy3FyrnJjqmlxoYrkVSeyjPgnGqxvoAmOGGl7f6F33G5
 HkAGAvOh3i2IPN6GEk1JKkMWtBRQQ8noZZFDHuh+1oMVOgN+DjOCQk0bRwdTqYArMHC2
 hMIRNQsj7J36q4LG2hNlO6+D0o02U8tu5Muuy0WjeNvl/XB1uz6pmu8riiIKAmjDmAbs
 PYnU+uF4VVge9puOuAilKHx5hqg/m9bFsZtQpsUlzLV+VAOvR1KwqMViPpvYdTdLjRdZ
 ed7w==
X-Gm-Message-State: APjAAAW+aWNc9/IDZK6GsqmrdTmHiBeKIGxjTSVOCKO8VSVzdg5qNyU9
 tbVuV6ao6HfjfncKMOR9v4UNsosFi82EglfJCLLTOw==
X-Google-Smtp-Source: APXvYqxJZ24GiVlk9lUMDjJkGJEI6s3pmAanrQrR6ZjPBl+XBfGQsJAevyPjLoW5Oxheg/hE/D/XAZSaJTq3QWFkOzU=
X-Received: by 2002:a1c:7205:: with SMTP id n5mr26748340wmc.9.1578996805060;
 Tue, 14 Jan 2020 02:13:25 -0800 (PST)
MIME-Version: 1.0
References: <20200114094505.11855-1-ardb@kernel.org>
 <20200114094505.11855-3-ardb@kernel.org>
In-Reply-To: <20200114094505.11855-3-ardb@kernel.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 14 Jan 2020 11:13:13 +0100
Message-ID: <CAKv+Gu93rePi1MctP9ffr3wT2r-8OCBoO7Pw5ivWOcXgwfS4Hw@mail.gmail.com>
Subject: Re: [PATCH 2/2] tpm: tis: add support for MMIO TPM on SynQuacer
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_021326_847828_222AD089 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-integrity <linux-integrity@vger.kernel.org>,
 =?UTF-8?Q?Peter_H=C3=BCwe?= <peterhuewe@gmx.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 at 10:46, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> When fitted, the SynQuacer platform exposes its SPI TPM via a MMIO
> window that is backed by the SPI command sequencer in the SPI bus
> controller. This arrangement has the limitation that only byte size
> accesses are supported, and so we'll need to provide a separate set
> of read and write accessors that take this into account.
>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/char/tpm/tpm_tis.c | 31 ++++++++++++++++++--
>  1 file changed, 29 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/char/tpm/tpm_tis.c b/drivers/char/tpm/tpm_tis.c
> index e7df342a317d..693e48096035 100644
> --- a/drivers/char/tpm/tpm_tis.c
> +++ b/drivers/char/tpm/tpm_tis.c
> @@ -32,6 +32,7 @@
>
>  struct tpm_info {
>         struct resource res;
> +       const struct tpm_tis_phy_ops *ops;
>         /* irq > 0 means: use irq $irq;
>          * irq = 0 means: autoprobe for an irq;
>          * irq = -1 means: no irq support
> @@ -186,6 +187,29 @@ static const struct tpm_tis_phy_ops tpm_tcg = {
>         .write32 = tpm_tcg_write32,
>  };
>
> +static int tpm_tcg_read16_bw(struct tpm_tis_data *data, u32 addr, u16 *result)
> +{
> +       return tpm_tcg_read_bytes(data, addr, 2, (u8 *)result);
> +}
> +
> +static int tpm_tcg_read32_bw(struct tpm_tis_data *data, u32 addr, u32 *result)
> +{
> +       return tpm_tcg_read_bytes(data, addr, 4, (u8 *)result);
> +}
> +
> +static int tpm_tcg_write32_bw(struct tpm_tis_data *data, u32 addr, u32 value)
> +{
> +       return tpm_tcg_write_bytes(data, addr, 4, (u8 *)&value);
> +}
> +

These are wrong - I'll need to respin. Apologies for the noise.

> +static const struct tpm_tis_phy_ops tpm_tcg_bw = {
> +       .read_bytes     = tpm_tcg_read_bytes,
> +       .write_bytes    = tpm_tcg_write_bytes,
> +       .read16         = tpm_tcg_read16_bw,
> +       .read32         = tpm_tcg_read32_bw,
> +       .write32        = tpm_tcg_write32_bw,
> +};
> +
>  static int tpm_tis_init(struct device *dev, struct tpm_info *tpm_info)
>  {
>         struct tpm_tis_tcg_phy *phy;
> @@ -210,7 +234,7 @@ static int tpm_tis_init(struct device *dev, struct tpm_info *tpm_info)
>         if (itpm || is_itpm(ACPI_COMPANION(dev)))
>                 phy->priv.flags |= TPM_TIS_ITPM_WORKAROUND;
>
> -       return tpm_tis_core_init(dev, &phy->priv, irq, &tpm_tcg,
> +       return tpm_tis_core_init(dev, &phy->priv, irq, tpm_info->ops,
>                                  ACPI_HANDLE(dev));
>  }
>
> @@ -219,7 +243,7 @@ static SIMPLE_DEV_PM_OPS(tpm_tis_pm, tpm_pm_suspend, tpm_tis_resume);
>  static int tpm_tis_pnp_init(struct pnp_dev *pnp_dev,
>                             const struct pnp_device_id *pnp_id)
>  {
> -       struct tpm_info tpm_info = {};
> +       struct tpm_info tpm_info = { .ops = &tpm_tcg };
>         struct resource *res;
>
>         res = pnp_get_resource(pnp_dev, IORESOURCE_MEM, 0);
> @@ -295,6 +319,8 @@ static int tpm_tis_plat_probe(struct platform_device *pdev)
>                         tpm_info.irq = 0;
>         }
>
> +       tpm_info.ops = of_device_get_match_data(&pdev->dev) ?: &tpm_tcg;
> +
>         return tpm_tis_init(&pdev->dev, &tpm_info);
>  }
>
> @@ -311,6 +337,7 @@ static int tpm_tis_plat_remove(struct platform_device *pdev)
>  #ifdef CONFIG_OF
>  static const struct of_device_id tis_of_platform_match[] = {
>         {.compatible = "tcg,tpm-tis-mmio"},
> +       {.compatible = "socionext,synquacer-tpm-mmio", .data = &tpm_tcg_bw},
>         {},
>  };
>  MODULE_DEVICE_TABLE(of, tis_of_platform_match);
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
