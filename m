Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185DB1E9492
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 01:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9JpI/XJWCjbV1WrlN3YLWarSNFPTdDemzroAqMJC8Q=; b=VJOOlGScWajZ+p
	Lv37oEX3s7Ut7+qViLXFto8smGxozpzUiiec9SIyQCWUFFqZ6uRaV2Eyo/Oqa8pAXUAswYwCp77ua
	j61hgqQIXkILH//JPFOzx2RzckBAoWkp2fQGL4RjevyEwW68YjdYogY1NLNJUGD6GO0Ttslbtrq4n
	2Icb36A9g9GQMVf2pcrc9po6Agg+ID42Qv6YZYuspKAuBPSQErhS4h/qRh/XpX/1wX58V2TIMUcjo
	37wxH66Y8GB5vQXEwmyBghsTGVny5Ur6XtzFhxnkrI8n3MTcW6RYGpDey1vOVHdy/EkB9fIwL+ihA
	EBexdktvAsbeV3BDY/8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfBNC-0001yO-Kl; Sat, 30 May 2020 23:58:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfBN5-0001xo-32
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 23:58:36 +0000
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E648720776
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 May 2020 23:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590883113;
 bh=VUz6nHZXjZ/r4lCM+WBxybE+t4xw4kvQcisbJmoT/Dg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=18ho/PhYFDtcVEFFwa9kL4XMLHSHS3voxfTSEgSRGbxy+wrWU2KJ6VYRzamYa2M4c
 oODZBCidDXttGIIH56KairuG4hGqUTBS3F5Tbg/TAihKM+8KqipnLdYGHacHH++erf
 65sfhOv3W5JIIaGJXkt4EyX7DeBPsLOlDH0XR1Q8=
Received: by mail-lj1-f175.google.com with SMTP id s1so3763782ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 May 2020 16:58:32 -0700 (PDT)
X-Gm-Message-State: AOAM533iPKnPG/7PSjrblySY+53ldNdAV7+v2Bba3v6peMDgNOxu8RPL
 iT6z3iiUbynFZiYRKGnMRnKNKRR8RgylWcOtfVM=
X-Google-Smtp-Source: ABdhPJzgSmF0+p11oPO+AZBR8CytQW5O5N8qZczqfnM6nRVQcCxJIot76Q2X9ANKtvk8r/cwbxtdchn2Ly+QLKlKomk=
X-Received: by 2002:a05:651c:105a:: with SMTP id
 x26mr7446493ljm.159.1590883111232; 
 Sat, 30 May 2020 16:58:31 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200529163225eucas1p1cfb2233c869dcc3dab84b754bbce17b6@eucas1p1.samsung.com>
 <20200529163200.18031-1-s.nawrocki@samsung.com>
 <20200529163200.18031-4-s.nawrocki@samsung.com>
In-Reply-To: <20200529163200.18031-4-s.nawrocki@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 31 May 2020 08:57:54 +0900
X-Gmail-Original-Message-ID: <CAGTfZH1KC=jpQ5GXNtEf1cn7+WqXJdqbbVKmpxr8Snh4GEy8bA@mail.gmail.com>
Message-ID: <CAGTfZH1KC=jpQ5GXNtEf1cn7+WqXJdqbbVKmpxr8Snh4GEy8bA@mail.gmail.com>
Subject: Re: [RFC PATCH v5 3/6] PM / devfreq: exynos-bus: Add registration of
 interconnect child device
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_165835_179164_994E1342 
X-CRM114-Status: GOOD (  25.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sylwester,

On Sat, May 30, 2020 at 1:33 AM Sylwester Nawrocki
<s.nawrocki@samsung.com> wrote:
>
> This patch adds registration of a child platform device for the exynos
> interconnect driver. It is assumed that the interconnect provider will
> only be needed when #interconnect-cells property is present in the bus
> DT node, hence the child device will be created only when such a property
> is present.
>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
>
> Changes for v5:
>  - new patch.
> ---
>  drivers/devfreq/exynos-bus.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
> index 8fa8eb5..856e37d 100644
> --- a/drivers/devfreq/exynos-bus.c
> +++ b/drivers/devfreq/exynos-bus.c
> @@ -24,6 +24,7 @@
>
>  struct exynos_bus {
>         struct device *dev;
> +       struct platform_device *icc_pdev;
>
>         struct devfreq *devfreq;
>         struct devfreq_event_dev **edev;
> @@ -156,6 +157,8 @@ static void exynos_bus_exit(struct device *dev)
>         if (ret < 0)
>                 dev_warn(dev, "failed to disable the devfreq-event devices\n");
>
> +       platform_device_unregister(bus->icc_pdev);
> +
>         dev_pm_opp_of_remove_table(dev);
>         clk_disable_unprepare(bus->clk);
>         if (bus->opp_table) {
> @@ -168,6 +171,8 @@ static void exynos_bus_passive_exit(struct device *dev)
>  {
>         struct exynos_bus *bus = dev_get_drvdata(dev);
>
> +       platform_device_unregister(bus->icc_pdev);
> +
>         dev_pm_opp_of_remove_table(dev);
>         clk_disable_unprepare(bus->clk);
>  }
> @@ -431,6 +436,18 @@ static int exynos_bus_probe(struct platform_device *pdev)
>         if (ret < 0)
>                 goto err;
>
> +       /* Create child platform device for the interconnect provider */
> +       if (of_get_property(dev->of_node, "#interconnect-cells", NULL)) {
> +                   bus->icc_pdev = platform_device_register_data(
> +                                               dev, "exynos-generic-icc",
> +                                               PLATFORM_DEVID_AUTO, NULL, 0);
> +
> +                   if (IS_ERR(bus->icc_pdev)) {
> +                           ret = PTR_ERR(bus->icc_pdev);
> +                           goto err;
> +                   }
> +       }
> +
>         max_state = bus->devfreq->profile->max_state;
>         min_freq = (bus->devfreq->profile->freq_table[0] / 1000);
>         max_freq = (bus->devfreq->profile->freq_table[max_state - 1] / 1000);
> --
> 2.7.4
>

It looks like very similar like the registering the interconnect
device of imx-bus.c
and I already reviewed and agreed this approach.

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

nitpick: IMHO, I think that 'exynos-icc' is proper and simple without
'generic' word.
If we need to add new icc compatible int the future, we will add
'exynosXXXX-icc' new compatible.
But, I'm not forcing it. just opinion. Anyway, I agree this approach.

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
