Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A2584861
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 11:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZlBtX+nEV1T5IbIeuuuf3/VUNV9GjVf64tWw+hlqw8=; b=Tu3AbsatQpttQZ
	UrT5veTop44F+Xj+Jkr2VoZdgpA/s1GfB4TpKEWcsjcmmebHsXVcndl41v4qHoXU2P7s/CObOKV7i
	qMdxWcGBi/VMd0+IZmlT32JQrToqssUI4BkVBTq0n/dLGGBu/NvmHSQcmoJ5KWPqRjDSMkWrcbDnt
	+qHhMr1uUsATzm6xziBYDT2HAhlXjjeJVbPv34xKHFKGBCssHrRQurG6MU2jkAMkHmuOHiuYMpYcr
	zW0WxishF2OecllNDWiNw9VzNPaTmYXcc9xSbNqvyG20+CX8vHcL4FR8hWTFtUlVzaOY9r8RVpseu
	4jFeK2NR/Q2omf5xvR3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHsy-0007zb-IO; Wed, 07 Aug 2019 09:05:32 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHse-0007oG-El
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 09:05:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id k8so39816166plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 02:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=J4ZFvTXe+zTVR2M5ZBZS8AXmh/aoWceUxNcpzmTU7Uw=;
 b=NsPlvCGahqKL6UxzvtvcHQ/HirhN9BDf2ppat0hC9TPHLVHpLY9s95fX53JbOZhIPv
 Z5XqIT9H203n8G5v+pSp8n0/cBfYjp2MuhBO5wrt6xGk3Tfkrkx7ezxyYP2PEUC7ad0h
 89yaIBfX97z/Gmvkc3MkqlFkxhhlVROqzzJ/N5yrKpCOFHGeKlvAYExc7qHGZ522Fi2U
 Wd9eS+4FG6mg/W+Tw5mmnd3tJhOABj3QAEV8GuNja20qzp4WsEK1RiayBgMNBz6psTj4
 1yu4jjzu/fWjMbycIl+hd3h3GJ3rXM7uJsTVcXiGvcxH5H3lFqGbwJzBKQiYBTkLjxhq
 A+Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=J4ZFvTXe+zTVR2M5ZBZS8AXmh/aoWceUxNcpzmTU7Uw=;
 b=cfriBtqtGrnVlqJWHvgDpJr6TAd2AF5udnIPL1HW3Dq7T54e4aAMJcSnyB9C1/yFYv
 U6j8pUtlphbFVXBVTeMzojSFiMi5T7GGNkf4ySIPYIaCJUnEcZDvB1oAHpNnjTiooqXx
 mV7RSCUH7JrwcqW3hP+IaQMEgfFmFJdfPh/EcMNSdp05hKAZg5/CKBvXcnMVauv2/YvD
 I7YuFKMfZkIKkFheqIAfgMhPvamW58LqDc/6WYvXNOnoNMvUQdWeD5jpsyty1BhqY0us
 yoQE7++SGnDV8sKrgXzg5V6x8Yvadc2MX48cmsXnb/OTCq2DeGNq8X+BpIB2clUp8nGL
 dOPg==
X-Gm-Message-State: APjAAAVKd5wSq9Xmeq36o+Fnhpd5Zbpfgqho+HQ5vmz94fOcZ2OP4ING
 FduEvSX9MkDeqp4s+09DQyFU2w==
X-Google-Smtp-Source: APXvYqwfH6D7XhoDyWG2BYBL/s5POj834n5L7zMUmOgrJb8o7wh9ak/X/IpezahPVk9H4JXKtlfOkA==
X-Received: by 2002:a65:68d9:: with SMTP id k25mr6855707pgt.337.1565168711202; 
 Wed, 07 Aug 2019 02:05:11 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id 33sm103194231pgy.22.2019.08.07.02.05.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 02:05:10 -0700 (PDT)
Date: Wed, 7 Aug 2019 14:35:08 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH] cpufreq: mediatek-cpufreq: Add compatible for MT8516
Message-ID: <20190807090508.vhc3o3jhmiooyr4m@vireshk-i7>
References: <20190806095029.4758-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806095029.4758-1-fparent@baylibre.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_020512_690398_DB0E56D8 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-08-19, 11:50, Fabien Parent wrote:
> Add the compatible for MT8516 in order to take advantage of the
> MediaTek CPUFreq driver for Mediatek's MT8516 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  drivers/cpufreq/mediatek-cpufreq.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/mediatek-cpufreq.c b/drivers/cpufreq/mediatek-cpufreq.c
> index f14f3a85f2f7..10bc06f5dd45 100644
> --- a/drivers/cpufreq/mediatek-cpufreq.c
> +++ b/drivers/cpufreq/mediatek-cpufreq.c
> @@ -535,6 +535,7 @@ static const struct of_device_id mtk_cpufreq_machines[] __initconst = {
>  	{ .compatible = "mediatek,mt817x", },
>  	{ .compatible = "mediatek,mt8173", },
>  	{ .compatible = "mediatek,mt8176", },
> +	{ .compatible = "mediatek,mt8516", },
>  
>  	{ }
>  };

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
