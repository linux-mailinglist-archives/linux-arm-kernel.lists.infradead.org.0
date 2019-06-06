Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F217537A7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bdn49hw92XKDk1Q6VCTOeenE9wl22RlpRvKRwuBbUGM=; b=cs4BamSOsVC5ru
	pmdIdjfsbp8ED7Sw11ukWYBmyfFwFI+ok3s3R/0mpRHQYDDFutVsAcOj1EiOdrzkQ8HS0IdO4aDyx
	wuPUq18e/QBgd/V9ujJE+4q92KYUOwFFFu0rr2nG1qwfoNgrC1DxCEzEouceQo/PMoN2dv7YQNBZ3
	ytSjxYvQoDBuF6cevHM+G73JVs3rTWkdoL0gsLn7drPqrO+02peb6GA0UNhA6D2OOIxqcHwLx+RMj
	j/V6i/ao6miuAF7gDC8dkhZ9WAalbTyPll9rsOQ/k4wGRUF15pBJaVBaQmDFNt3gnr0Gku/PWT6dF
	s1p/zuLP1Oc1AQ4LdbLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvpB-0002Sw-CN; Thu, 06 Jun 2019 17:05:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvp3-00025E-L8; Thu, 06 Jun 2019 17:05:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39C5B20693;
 Thu,  6 Jun 2019 17:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559840705;
 bh=uHOnF18rQ1x4hUh7PQwXCuloLsMPslXGMYzeeFg/e18=;
 h=In-Reply-To:References:To:Subject:From:Cc:Date:From;
 b=LJouhF834bm0oyjp4K3HMzEfmeO/CynTLHON+s66xYLMS9rlFer55d4RIjFRsHe0h
 sKukE1s08fJcwj3HnI+19EmuFXk7pOcCRuTS5VjlCZQhSB64usa6fFp9BL+hN4jdCs
 OtnljmrrtAcwblV5a0vLj2vb6pEVb4Bf3VNMrNAA=
MIME-Version: 1.0
In-Reply-To: <20190606142255.29454-6-nsaenzjulienne@suse.de>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-6-nsaenzjulienne@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, stefan.wahren@i2se.com
Subject: Re: [PATCH v2 5/7] clk: raspberrypi: register platform device for
 raspberrypi-cpufreq
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 10:05:04 -0700
Message-Id: <20190606170505.39C5B20693@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_100505_717493_129E0F0C 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, viresh.kumar@linaro.org, mturquette@baylibre.com,
 linux-pm@vger.kernel.org, rjw@rjwysocki.net, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas Saenz Julienne (2019-06-06 07:22:58)
> diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
> index b1365cf19f3a..052296b5fbe4 100644
> --- a/drivers/clk/bcm/clk-raspberrypi.c
> +++ b/drivers/clk/bcm/clk-raspberrypi.c
> @@ -63,6 +63,8 @@ struct raspberrypi_firmware_prop {
>         __le32 disable_turbo;
>  } __packed;
>  
> +static struct platform_device *rpi_cpufreq;

Why can't this be stored in platform driver data?

> +
>  static int raspberrypi_clock_property(struct rpi_firmware *firmware, u32 tag,
>                                       u32 clk, u32 *val)
>  {
> @@ -285,6 +287,17 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
>                 return ret;
>         }
>  
> +       rpi_cpufreq = platform_device_register_data(dev, "raspberrypi-cpufreq",
> +                                                   -1, NULL, 0);
> +
> +       return 0;
> +}
> +
> +static int raspberrypi_clk_remove(struct platform_device *pdev)
> +{
> +       platform_device_unregister(rpi_cpufreq);
> +       rpi_cpufreq = NULL;

This assignment to NULL looks unnecessary.

> +
>         return 0;
>  }
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
