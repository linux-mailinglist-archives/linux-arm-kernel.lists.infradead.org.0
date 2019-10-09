Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D2AD0994
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Lc1ZDiGyYR8BKURYiPZvPdz0DleneAVKU+dcbRVX/s=; b=gR0r9Hj/DD73Ta
	4AF5ztpSrllBgcTUd+Q/3ufDjBFDplK6owoxTzZhQjy4HQTZwduRMwgGW4J0CltWhaz4ObDw9YuS4
	3olxBDztrgEM55ZT72egaQnGDL1ILHJZMeQvtEcpd0jT1ADPPGDSpx7ajImItJnY8j6vUcvY0xpwV
	Gn6y/N2MVW6Sv8bw8E+0dEjrulfttTd6jTgxWIhGbJh84ImDi3alPgWo14/p5gMIBBM4nJIIATZP0
	p12ofvHcH7DgtKYWTrwZu6NKsoS7cZPun6eBwnDGLe4MupmzU0f8Yo0rXRklozoFV4zLPTVat23Pn
	wBuMHRVUs+2t3qw0KoVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7FF-0001K6-37; Wed, 09 Oct 2019 08:22:53 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7Ed-0000r7-Ml; Wed, 09 Oct 2019 08:22:17 +0000
Received: by mail-qk1-x744.google.com with SMTP id u22so1373344qkk.11;
 Wed, 09 Oct 2019 01:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2vS6ftWv38t6sGsCONON8A/FlGoTEEeUhyw2u38Psys=;
 b=Cdi+f4aCoQax6/k08emQ2lJLcJma2WQWPj2sDWaUAIyNxc1z4FKB8BqfKmJ9Z5SarE
 DE3N/4o2O2mNISHES1onvLTvuRpQiyEXHitSlBua8rinA6JART4GoBf7vdEvu+n7rN9U
 XvCz6sm2vxFbnosUIiTDnUCTP07dZZ94GVayWBBS7bbGQdwhuhTe2jwZepH8sWdDtNgP
 G5SCwFbB+xNM+G2nK1s/aU9B2cvG+KpT0+/ggvOzIUE441IEmQK1CKPgRbnFUH/5+41b
 b45CSPFkm3mrlWBB2+nVpXXqESBNOTSmaanoB4L6eg4BXILbn5BcpREj3YdWgO9VnM0i
 6Obg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2vS6ftWv38t6sGsCONON8A/FlGoTEEeUhyw2u38Psys=;
 b=gR4CQe+Cw3FU1Syyp1KPJDRuaqFwKHYiZ/JcRNAn4SCZRvyYe2a6N4sGgryJWZbo/d
 YZ3jPcMGGkYYzpvgxdS++3VodU8EE8Xcl9aV+woyqxk8iFGpfvU0JPo+9z7zkfgr/hFA
 xjWiJnikTaQtC9OlosG8Vnuuhs2ThI8gUFCuZHmQ8D8I/WVS7wJ4/zLhdyiuu3cJjv93
 CzGSoEVULc/srvavCQN5GEIcBI7FYuKZsXq20cccvvOAG88pbcUONz0wm4sKTr6fJEmD
 l00YT2Q8Y0ZGOZIaeE/0aEzpKDv3JpaGge6+bEA6myHPPPMNBzPI2sc3PBVMXyPGpfcW
 8O+w==
X-Gm-Message-State: APjAAAXJ/nHSLagyPWTRGuYVtbqdA2Sr4Udc6UwYJRppWe5rJiL6IL2h
 XytGzaZuIWePh/B6NnxLpmIFpELSueHZeBatBFc=
X-Google-Smtp-Source: APXvYqxsOXmemHID6heONiV8vI+KimCDKqoQrtNjmYG58JhuwE01IW+RdWPgGIjDI48XZ9ZREJZcjouZaIm3zI7sOfA=
X-Received: by 2002:a05:620a:a55:: with SMTP id
 j21mr2361419qka.402.1570609334042; 
 Wed, 09 Oct 2019 01:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190925184346.14121-1-heiko@sntech.de>
In-Reply-To: <20190925184346.14121-1-heiko@sntech.de>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Wed, 9 Oct 2019 10:22:02 +0200
Message-ID: <CAFqH_53xE7fH-Mf0_qokamUCBNDedadSLQa=uxiP_v7TW7DPfw@mail.gmail.com>
Subject: Re: [PATCH] iommu/rockchip: don't use platform_get_irq to implicitly
 count irqs
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_012215_755576_BBECCF67 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eballetbo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Missatge de Heiko Stuebner <heiko@sntech.de> del dia dc., 25 de set.
2019 a les 20:44:
>
> Till now the Rockchip iommu driver walked through the irq list via
> platform_get_irq() until it encountered an ENXIO error. With the
> recent change to add a central error message, this always results
> in such an error for each iommu on probe and shutdown.
>
> To not confuse people, switch to platform_count_irqs() to get the
> actual number of interrupts before walking through them.
>
> Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

This patch definitely removes the annoying messages on my Samsung
Chromebook Plus like:

 rk_iommu ff924000.iommu: IRQ index 1 not found
 rk_iommu ff914000.iommu: IRQ index 1 not found
 rk_iommu ff903f00.iommu: IRQ index 1 not found
 rk_iommu ff8f3f00.iommu: IRQ index 1 not found
 rk_iommu ff650800.iommu: IRQ index 1 not found

FWIW, I sent a similar patch [1] to fix this, but can be rejected in
favour of the Heiko's patch. So,

Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks,
 Enric

[1] https://lkml.org/lkml/2019/10/8/551

>  drivers/iommu/rockchip-iommu.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 26290f310f90..4dcbf68dfda4 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -100,6 +100,7 @@ struct rk_iommu {
>         struct device *dev;
>         void __iomem **bases;
>         int num_mmu;
> +       int num_irq;
>         struct clk_bulk_data *clocks;
>         int num_clocks;
>         bool reset_disabled;
> @@ -1136,7 +1137,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
>         struct rk_iommu *iommu;
>         struct resource *res;
>         int num_res = pdev->num_resources;
> -       int err, i, irq;
> +       int err, i;
>
>         iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
>         if (!iommu)
> @@ -1163,6 +1164,10 @@ static int rk_iommu_probe(struct platform_device *pdev)
>         if (iommu->num_mmu == 0)
>                 return PTR_ERR(iommu->bases[0]);
>
> +       iommu->num_irq = platform_irq_count(pdev);
> +       if (iommu->num_irq < 0)
> +               return iommu->num_irq;
> +
>         iommu->reset_disabled = device_property_read_bool(dev,
>                                         "rockchip,disable-mmu-reset");
>
> @@ -1219,8 +1224,9 @@ static int rk_iommu_probe(struct platform_device *pdev)
>
>         pm_runtime_enable(dev);
>
> -       i = 0;
> -       while ((irq = platform_get_irq(pdev, i++)) != -ENXIO) {
> +       for (i = 0; i < iommu->num_irq; i++) {
> +               int irq = platform_get_irq(pdev, i);
> +
>                 if (irq < 0)
>                         return irq;
>
> @@ -1245,10 +1251,13 @@ static int rk_iommu_probe(struct platform_device *pdev)
>  static void rk_iommu_shutdown(struct platform_device *pdev)
>  {
>         struct rk_iommu *iommu = platform_get_drvdata(pdev);
> -       int i = 0, irq;
> +       int i;
> +
> +       for (i = 0; i < iommu->num_irq; i++) {
> +               int irq = platform_get_irq(pdev, i);
>
> -       while ((irq = platform_get_irq(pdev, i++)) != -ENXIO)
>                 devm_free_irq(iommu->dev, irq, iommu);
> +       }
>
>         pm_runtime_force_suspend(&pdev->dev);
>  }
> --
> 2.23.0
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
