Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD254A771
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 18:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvZVFZVnFP5WXYZYWeGe3pIbr6uoglEwic6e3IMEfqY=; b=EA+E3iKwfESx4/
	0FA/rZT8zSfoPBv+lyF4sUjJNWvbYQwxikA1EiFiLTn+R1pIekqg5+3Dms+0uvnBom4fWzQIU7nFj
	h/0TGgmTZEB61ZKkjbmHxSipLkMpkulrjmxknkrVod1LkCdmnQwhtV2mQlEvo+JPax4sXs56oKqhK
	wGgOD+Ic/teTs/jHusVTjozZt23xwDaJzMPFxd1lBbhGzo6tkr4mBW2XZ2A2j7PW814vZZMV3Brq5
	6epJNwE5gpk8XG+uYnFrPWaXgtKyLO/lQ6VUupm49jcr9OcvkZL2qNa+r7emQQgrfvvn5Vfg7CZBR
	MxDneSqwvll02DOq9UNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHG4-0006db-AC; Tue, 18 Jun 2019 16:46:56 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHFq-0006d5-VM
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 16:46:44 +0000
Received: by mail-io1-xd41.google.com with SMTP id j6so1756588ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 09:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gwFihAPGP6wzOK+kBPKAQVi7liUgqZUIPSL5DDnHSPo=;
 b=m+AzwmOJvaqda0PA4A3kH50zB/aKuXYTJXIq2ncP7kss8pwIRCHarGkn0vn0qekVXg
 DMvb6pe/4kCyyxBZ0fX6xNUPYpe8TkJznF4Xt5mjwezAwrKDdVHPHi+iGXsTVh1P0fVZ
 Vqxp87twM29o0lYzD1QiCTokXsk0tq1+P/Gw/KhCbI2C3EuwnBd8nWLPjfxOimKybbu5
 EBdlMIp+hKFR9yU3ccN5od4zBL16bzc3l8xbpURoquyppmDLUFjdHZbKNucs4GoVV3eS
 RwEdZXgKKJ8mrz//9UiPKQTRkBIeWaeNORJngOoJEynz57Wh/WpkxK8md8YA59mWm5ok
 dELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gwFihAPGP6wzOK+kBPKAQVi7liUgqZUIPSL5DDnHSPo=;
 b=fCvE9NmFaHWSz6jcQ8Y9AUtgZfhjEwIH4wftatx5qQwP//juRinb2JcbYs2SD/WQsa
 PAR950ROe4h/8PhEolSSaT38HN1W8S/WshJGHez2W2l4m/TuIdDapS4QKER0/Xau6hAU
 0muqb8dNEM7pTW/xAIuk0K3d53Vk6zV/NhWknw7qH3SCdyjjPXEk8kobNMUg9tofhhWl
 TKEOcKcVn97E8WNYUNfkYmU9OYam4XIQQ+hiEXABMuOJaAMVVrflDdbgFw0ZBt2F53KE
 jzUsNi1wTp6hCml4xsTCQmbh4y9QvqWridYgs0oyK9gsEW/ZlzK2k/M6/DIQS0Hfb9Fy
 FuRg==
X-Gm-Message-State: APjAAAUoxUUP6bhyPiqiRRKPPvxleobmvfd9QiuZ3X8gvD7gW10mzpJr
 ArdgkDWZ1eBZf5Nc4l+n4DjlfJMRthBxxyLfE4+3cw==
X-Google-Smtp-Source: APXvYqwfP4H5Qtjk8/J7nRjXv99FeQJa7fltAX57cFgZoswJDUwAV1Fen3fMy8Mm2DooyBSWOFHO5G5QFo8XfTvex1M=
X-Received: by 2002:a02:1a86:: with SMTP id 128mr91068852jai.95.1560876401463; 
 Tue, 18 Jun 2019 09:46:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190617115454.3226-1-lee.jones@linaro.org>
In-Reply-To: <20190617115454.3226-1-lee.jones@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 18 Jun 2019 18:46:29 +0200
Message-ID: <CAKv+Gu_qd9KrXHVSVHCoM42D8ACjU5onzFGJPTTBGOsVJpeayg@mail.gmail.com>
Subject: Re: [PATCH 1/1] scsi: ufs-qcom: Add support for platforms booting ACPI
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_094643_007315_C058CF77 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, avri.altman@wdc.com,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, jejb@linux.ibm.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, agross@kernel.org,
 alim.akhtar@samsung.com, Jeffrey Hugo <jlhugo@gmail.com>,
 pedrom.sousa@synopsys.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 at 13:55, Lee Jones <lee.jones@linaro.org> wrote:
>
> New Qualcomm AArch64 based laptops are now available which use UFS
> as their primary data storage medium.  These devices are supplied
> with ACPI support out of the box.  This patch ensures the Qualcomm
> UFS driver will be bound when the "QCOM24A5" H/W device is
> advertised as present.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

> ---
>  drivers/scsi/ufs/ufs-qcom.c | 23 ++++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/scsi/ufs/ufs-qcom.c b/drivers/scsi/ufs/ufs-qcom.c
> index 3aeadb14aae1..364af6a63e35 100644
> --- a/drivers/scsi/ufs/ufs-qcom.c
> +++ b/drivers/scsi/ufs/ufs-qcom.c
> @@ -12,6 +12,7 @@
>   *
>   */
>
> +#include <linux/acpi.h>
>  #include <linux/time.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> @@ -164,6 +165,9 @@ static int ufs_qcom_init_lane_clks(struct ufs_qcom_host *host)
>         int err = 0;
>         struct device *dev = host->hba->dev;
>
> +       if (has_acpi_companion(dev))
> +               return 0;
> +
>         err = ufs_qcom_host_clk_get(dev, "rx_lane0_sync_clk",
>                                         &host->rx_l0_sync_clk, false);
>         if (err)
> @@ -1208,9 +1212,13 @@ static int ufs_qcom_init(struct ufs_hba *hba)
>                         __func__, err);
>                 goto out_variant_clear;
>         } else if (IS_ERR(host->generic_phy)) {
> -               err = PTR_ERR(host->generic_phy);
> -               dev_err(dev, "%s: PHY get failed %d\n", __func__, err);
> -               goto out_variant_clear;
> +               if (has_acpi_companion(dev)) {
> +                       host->generic_phy = NULL;
> +               } else {
> +                       err = PTR_ERR(host->generic_phy);
> +                       dev_err(dev, "%s: PHY get failed %d\n", __func__, err);
> +                       goto out_variant_clear;
> +               }
>         }
>
>         err = ufs_qcom_bus_register(host);
> @@ -1680,6 +1688,14 @@ static const struct of_device_id ufs_qcom_of_match[] = {
>  };
>  MODULE_DEVICE_TABLE(of, ufs_qcom_of_match);
>
> +#ifdef CONFIG_ACPI
> +static const struct acpi_device_id ufs_qcom_acpi_match[] = {
> +       { "QCOM24A5" },
> +       { },
> +};
> +MODULE_DEVICE_TABLE(acpi, ufs_qcom_acpi_match);
> +#endif
> +
>  static const struct dev_pm_ops ufs_qcom_pm_ops = {
>         .suspend        = ufshcd_pltfrm_suspend,
>         .resume         = ufshcd_pltfrm_resume,
> @@ -1696,6 +1712,7 @@ static struct platform_driver ufs_qcom_pltform = {
>                 .name   = "ufshcd-qcom",
>                 .pm     = &ufs_qcom_pm_ops,
>                 .of_match_table = of_match_ptr(ufs_qcom_of_match),
> +               .acpi_match_table = ACPI_PTR(ufs_qcom_acpi_match),
>         },
>  };
>  module_platform_driver(ufs_qcom_pltform);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
