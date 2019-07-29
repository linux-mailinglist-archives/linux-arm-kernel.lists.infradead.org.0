Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1942C79639
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 21:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAAo5FyPtZ+hfxJNTfuF49m8W6OgYQX9iV3Lx3+pPsY=; b=m8OHGIRgvry+P4
	yaWJ6zGdvR5IXG34MmLltgy0/ARLdJsiQWXJRF1S67rO3RTwjnIPfJM+aN2IXjNJHKojqGqyw4cxY
	b9T37muNi1gljbBHMoowCe+aeiqt0OukqGu2xSkouH9Eu3QBqnhgsxgHDPgBsQ6V7v28PLQz9+OS3
	JInNRFF3pktiurn9g/LPtBQ8pmf41KlhvRjyzfHlIUsegKHjJqcYtX0eOBrhU4LQv7Pn+3GboI3Fk
	xH/eGKKlp/Dmqo6eVTEvUsdZbnnJHl69ePGslMqYVTNl96542bV5Oq91wqcO7zpwe05h87MwL1pYA
	8vSlGHEYiCuBArkfNXew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBee-0001nX-2e; Mon, 29 Jul 2019 19:49:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBeK-0001mX-Ew
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 19:49:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id az7so27888829plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 12:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5NojtXo1M1bHz7FDA/uGjVd2akv+puoc74cQZkeUVck=;
 b=LHEpxpQInuW/nICZqQ2IkUnMew3i42yGkzivaDAK3XbquMaPe1MhjI0Kh+p6aEd6jr
 5j5a0G0nlE+1qrlZx25mQbc7L7Wuz1p85SW/fh82LZCKerPJ4TCiBGMb188VUghkEvMV
 G85tlv4qSYcLEd+PdPUUTjh+TmaA7B6YF0RvKxHc1ydjIWdYyS4Mh82oo/ghGoelw9lF
 /LWVysyx1IPKIChrIRb8nzuQr7j4ztzvRTlxzPF6SoWsNtCQHolBBhyEx5pKaSAKHh/c
 acJk3KRHUyqrjmf5EoX42YaMloHE2oNJuu/SbSVpZZ805GCHXXlwoGcpNule4U5fuzRP
 VF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5NojtXo1M1bHz7FDA/uGjVd2akv+puoc74cQZkeUVck=;
 b=Nd8M8fq2045kzLwrsjUnOWeqrB5z8V6SXGEEdlMxTUxt6g+Ba8YVmn//ywt5uaesjd
 Npt7fv7wBAj3t2vfXBaYeLCjbPo6nQZiuCLOP/IdxTr2TPSA0wCPBs6Y8f+rJXmw8yUr
 i6nC2ZACI3vkMdMUZReO1wspSD01pTvbWkIS/WU9531B7U+1argycXb+6GXdZ/K4LqoG
 GDtLZ7BA72iii3Wc26zfHdogOMvGWB2giKkQ9rR6JNPRw4q5RSApz5xfDllDK5dvyTLL
 1gsTowb859RGVTT41X0bjt53XJUAarHHBMNgxPTFzpmNOXTGhTp7QB+lF+Cvym/hd6PE
 WlRw==
X-Gm-Message-State: APjAAAW2Q+WO2hotk9AvCH5BkjyPiLci8DwWH8tVwt8GACPYqxjXNF4p
 bMTw3J6Nvtchc1+EC3wWg0m9Rc/6mzk=
X-Google-Smtp-Source: APXvYqxuxN1A5z1+5UyjpCUMZl8HTX2oko/mRGbvBVumRUr76sxk3H+NOEmJjjIo/y5lsuxSSy5l2Q==
X-Received: by 2002:a17:902:9688:: with SMTP id
 n8mr109292625plp.227.1564429774663; 
 Mon, 29 Jul 2019 12:49:34 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s20sm70864774pfe.169.2019.07.29.12.49.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 12:49:34 -0700 (PDT)
Date: Mon, 29 Jul 2019 13:49:31 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 5/5] coresight: tmc-etr: Check if non-secure access is
 enabled
Message-ID: <20190729194931.GC26214@xps15>
References: <20190724114312.1024-1-suzuki.poulose@arm.com>
 <20190724114312.1024-6-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724114312.1024-6-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_124936_514969_C0DCF04B 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 12:43:12PM +0100, Suzuki K Poulose wrote:
> CoreSight TMC-ETR must have the non-secure invasive debug access
> enabled for use by self-hosted tracing. Without it, there is no
> point in enabling the ETR. So, let us check it in the TMC_AUTHSTATUS
> register and fail the probe if it is disabled.
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-tmc.c | 12 ++++++++++++
>  drivers/hwtracing/coresight/coresight-tmc.h |  3 +++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
> index be37aff573b4..3055bf8e2236 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> @@ -236,6 +236,7 @@ coresight_tmc_reg(ffcr, TMC_FFCR);
>  coresight_tmc_reg(mode, TMC_MODE);
>  coresight_tmc_reg(pscr, TMC_PSCR);
>  coresight_tmc_reg(axictl, TMC_AXICTL);
> +coresight_tmc_reg(authstatus, TMC_AUTHSTATUS);
>  coresight_tmc_reg(devid, CORESIGHT_DEVID);
>  coresight_tmc_reg64(rrp, TMC_RRP, TMC_RRPHI);
>  coresight_tmc_reg64(rwp, TMC_RWP, TMC_RWPHI);
> @@ -255,6 +256,7 @@ static struct attribute *coresight_tmc_mgmt_attrs[] = {
>  	&dev_attr_devid.attr,
>  	&dev_attr_dba.attr,
>  	&dev_attr_axictl.attr,
> +	&dev_attr_authstatus.attr,
>  	NULL,
>  };
>  
> @@ -342,6 +344,13 @@ static inline bool tmc_etr_can_use_sg(struct device *dev)
>  	return fwnode_property_present(dev->fwnode, "arm,scatter-gather");
>  }
>  
> +static inline bool tmc_etr_has_non_secure_access(struct tmc_drvdata *drvdata)
> +{
> +	u32 auth = readl_relaxed(drvdata->base + TMC_AUTHSTATUS);
> +
> +	return (auth & TMC_AUTH_NSID_MASK) == 0x3;
> +}
> +
>  /* Detect and initialise the capabilities of a TMC ETR */
>  static int tmc_etr_setup_caps(struct device *parent, u32 devid, void *dev_caps)
>  {
> @@ -349,6 +358,9 @@ static int tmc_etr_setup_caps(struct device *parent, u32 devid, void *dev_caps)
>  	u32 dma_mask = 0;
>  	struct tmc_drvdata *drvdata = dev_get_drvdata(parent);
>  
> +	if (!tmc_etr_has_non_secure_access(drvdata))
> +		return -EACCES;
> +
>  	/* Set the unadvertised capabilities */
>  	tmc_etr_init_caps(drvdata, (u32)(unsigned long)dev_caps);
>  
> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
> index 95d2e2747970..4c59f2a4ad0e 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc.h
> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
> @@ -39,6 +39,7 @@
>  #define TMC_ITATBCTR2		0xef0
>  #define TMC_ITATBCTR1		0xef4
>  #define TMC_ITATBCTR0		0xef8
> +#define TMC_AUTHSTATUS		0xfb8
>  
>  /* register description */
>  /* TMC_CTL - 0x020 */
> @@ -90,6 +91,8 @@
>  #define TMC_DEVID_AXIAW_SHIFT	17
>  #define TMC_DEVID_AXIAW_MASK	0x7f
>  
> +#define TMC_AUTH_NSID_MASK	GENMASK(1, 0)
> +
>  enum tmc_config_type {
>  	TMC_CONFIG_TYPE_ETB,
>  	TMC_CONFIG_TYPE_ETR,

I have also picked-up patches 3-5.

Thanks,
Mathieu

> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
