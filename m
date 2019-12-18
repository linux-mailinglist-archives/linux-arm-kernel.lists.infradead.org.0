Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93287123F9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 07:30:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2zuxhswFltj77FNuB4Jeptal3J/BtXnckrUrHYruFA=; b=CuI8GouNaMVJhd
	uGEcpCJn409SQdu+B/il/yjUvXVVzgpKuwIPwYYwjpcyEnwwNm1gUM0lk+YoSh81I5FFA5Sslyanh
	cZsJUaqbMGS7VU1dNgbcW65iS8QsvZSJIpFvuH+n2v3rHfeMXul91NDKYW/eEd9PoNifVEwpQSRuY
	mB/k0g+vf+q13+tkNDVW9W6NCwrkz16ADq2Tth4uieArb/VP3hRs3zVFDbwH1mkweFP7DxrDFJwH0
	Nkn+UrKkGTWl818phjAlNkQ/ceCT5Q51hpP9JsgMNAuAd6zVgc0n4obhd6lcfwr0heNfXMBtYH80A
	rmbO4lH9YfQ8Gy/c6Iqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihSr8-00049x-ET; Wed, 18 Dec 2019 06:30:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihSqu-00045l-DG
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 06:30:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id 2so624110pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 22:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QUqCKPDBExCLLAwVtzgi61MYbDhx2OZCOHrZup6vycw=;
 b=WVTTapXo9831RocflUB0ikHKFJuh9iAvfg6my6hM4pUeSOGR+cnsYT1tCVdopTiQHg
 a9iyF7SBYSz9UrCG2ZhM5bNW2gpuyr4iZK+AREwohsVYFPGEm3aJRxhiJoNKRvDCWBHH
 4E9e9gsfZo2EyGyj4UVSpFyMPwZKH/MGKHkN/6w3Dc+ayTlnFZSl8dy9UlJEuimtMebw
 hR1PyhRC8cTn/D+OJt/V/RKflu+iF9f35hC5f/4d3DJNrgZ6hbymq2gc7V/5oso7HO6F
 xqeBCMVDMd5B6szz4pJ9wsJuj00hJjcZf+ZH3dqw1+1/63XOgvTlvCVrQzT4/Etad3w1
 4QYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QUqCKPDBExCLLAwVtzgi61MYbDhx2OZCOHrZup6vycw=;
 b=k9HQLk068DqdpgRrorK69VuO/scnByDzVv3TokB4QPw9cJvoEHFde0UwWE791JQNcG
 n29uUiDz8Rcviw7ywhSxcmWgUlo3YVm9+JkDx8SQuKp1BaNXdGmBAY/qW1w4glS/97pQ
 OHn/6skIPoT04n5nwOt7FT+SdDlXNfpxJvNJB4oXfScfieIe0VtwEu7NfeRYx1bMko7/
 SlPotnnx6uhbX6CIr9hHAjO6vjI6T2X4hjBx6HMduFTi0YOnIHencbNqcK42+yy8oW6K
 fjG/UxZkgEcqdUUML4HjGaywupid9LDlGpdWyywbLIHkCsWilHP7VYkyjS/zmnfngxIa
 CaCg==
X-Gm-Message-State: APjAAAX06Ug7ifoyLapoTjYIEgYe1Vo1dkDuMWgMnxg57iVSsmxW7akQ
 n4FViXDi5uxfSrXxmdNnX5ZNYQ==
X-Google-Smtp-Source: APXvYqzIvX0pWBlNmYdcCxRQD7mXEfg6Upgu8h5ATMfO9O8MRrkIOt+XJa8qeUETe/PDXbEwm9iagA==
X-Received: by 2002:aa7:848c:: with SMTP id u12mr1237038pfn.12.1576650631883; 
 Tue, 17 Dec 2019 22:30:31 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id p5sm1253789pgs.28.2019.12.17.22.30.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 22:30:31 -0800 (PST)
Date: Tue, 17 Dec 2019 22:30:28 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 10/13] mmc: sdhci-msm: convert to
 devm_platform_ioremap_resource
Message-ID: <20191218063028.GC3755841@builder>
References: <20191215175120.3290-1-tiny.windzz@gmail.com>
 <20191215175120.3290-10-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215175120.3290-10-tiny.windzz@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_223033_614859_BB4733CB 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kstewart@linuxfoundation.org, ulf.hansson@linaro.org,
 geert+renesas@glider.be, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com,
 khilman@baylibre.com, jh80.chung@samsung.com, wens@csie.org, agross@kernel.org,
 chaotian.jing@mediatek.com, linux-arm-msm@vger.kernel.org,
 wsa+renesas@sang-engineering.com, mripard@kernel.org,
 linux-mediatek@lists.infradead.org, ben-linux@fluff.org,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org, tglx@linutronix.de,
 allison@lohutok.net, linux-arm-kernel@lists.infradead.org, nico@fluxnic.net,
 gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com,
 linux-mmc@vger.kernel.org, adrian.hunter@intel.com, vireshk@kernel.org,
 manuel.lauss@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun 15 Dec 09:51 PST 2019, Yangtao Li wrote:

> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/mmc/host/sdhci-msm.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-msm.c b/drivers/mmc/host/sdhci-msm.c
> index 3d0bb5e2e09b..6daacef4ceec 100644
> --- a/drivers/mmc/host/sdhci-msm.c
> +++ b/drivers/mmc/host/sdhci-msm.c
> @@ -1746,7 +1746,6 @@ static int sdhci_msm_probe(struct platform_device *pdev)
>  	struct sdhci_host *host;
>  	struct sdhci_pltfm_host *pltfm_host;
>  	struct sdhci_msm_host *msm_host;
> -	struct resource *core_memres;
>  	struct clk *clk;
>  	int ret;
>  	u16 host_version, core_minor;
> @@ -1847,9 +1846,7 @@ static int sdhci_msm_probe(struct platform_device *pdev)
>  	}
>  
>  	if (!msm_host->mci_removed) {
> -		core_memres = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> -		msm_host->core_mem = devm_ioremap_resource(&pdev->dev,
> -				core_memres);
> +		msm_host->core_mem = devm_platform_ioremap_resource(pdev, 1);
>  

This would now look better without this empty line.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

>  		if (IS_ERR(msm_host->core_mem)) {
>  			ret = PTR_ERR(msm_host->core_mem);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
