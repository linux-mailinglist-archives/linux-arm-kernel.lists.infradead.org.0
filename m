Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3ECDCA46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gi0/XYcDI97ANnLCjWeIxyosqQnuK8X1P5bFE2WhOw=; b=m71+IHSBAf2T/w
	UkoMPiTdSo5aM2iUPjvdQeJZNE2r2bmVygFbVOu1tDldlonj4Bv3Iqj77FAixbYaPurEnEZgRGj3U
	VXISD4SQtQNN+E5zdnpoK10G5R8AfFw9etpdPKxVegFVDZX9LGGx1EJhrZ3o8AyxswNtAiXH1KMqG
	igYdTfkyWGMZsvF6A8Ilpvy8CBLzNn/fYCUNun8y7WTu/JkRvn12wsaSbNVijqrKvvFUCjjsjp12b
	bnezBURIvSoqi902vElaE8eBUNJhQ23lOlN6iZclZfvHHfh2rmkPnm4WN/f+dRh0/4CD7W6Loc456
	pqidjCK/NwCxzIhJ/LrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUmA-00061F-EW; Fri, 18 Oct 2019 16:06:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUm2-00060W-4S
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:06:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id v17so6615338wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oHAE10EktnPOoE/+c84l9YTUjXRghji4T7W4SFCNp1E=;
 b=SpHNFF6AuB9nbvorwHz1NPDQGPyA5QEAi+SaVBWB/ZEM8nCNIUC1b1kw74uVYZPj1r
 RAeHyDYh19zzMHflkvWMWRIuJ5slQapPu10XslSLSqVtsthQGRCuIzORgk2DamDFgRnP
 huXopPO79qkWyBvwCGydLsRA6xfRxfqb7nmAWw1zbD4yv8jmu9zLQB8kOT/BRmL6x63y
 vxGi8st5rytavEcUBYR+Ylp2TRzLFTUwti9KR10q+YLbbSunzKNTsnt0ePUR4QTdjdIE
 iAJXNjHqgF8qhL1/ESTCDoOfWodoWGxV9FIe7LG9jBkWq05mN58EJCVlSFTWUq5wrnAo
 gpjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oHAE10EktnPOoE/+c84l9YTUjXRghji4T7W4SFCNp1E=;
 b=QgtkSs3GSD20vTyqZQHnD5kDILRYtD3dZxU1zieFm771FqKvdNHnjUOzb+DlvjzweH
 ppo9R4J4W7J6F2seba2al4gpUSukbkR3GuPIUZxdNLHUkztqxNxRy8uhCP4AkeWKcY0z
 KjltuAe8D8d7Aa1vExqmnyY8xEHGE/ZKd5uRDtQ7Q1DrDrUU2Y5NtqQSOW7CVNjl3KCx
 4pdIEO7d5L3wNVe79Gap8Jfoyf/ZGrs1rdf3kgOOjAXj5dU1ykx5h19bO/V3kA7BEntI
 8OrubrYAKCwjDUe9gRMP5k8DzPCtQLEXGU8Lcv3spS3xdTmuiRpDJKxHInOUKW01KgM+
 4F5w==
X-Gm-Message-State: APjAAAVdrE8QC+C2ZL3iN4vB58gcvIj2LviMiseFaSH75AnEOgtHNLU2
 0VNqvS4UiOjOpqQWRHiapqdmMg==
X-Google-Smtp-Source: APXvYqxRumX3eY6AHsUEC/o5rl4dqf9DY80FPCLCWDYduYYilpMUolht6vRsw3UkTL3A4wl0iUD4zg==
X-Received: by 2002:a1c:7418:: with SMTP id p24mr7895964wmc.132.1571414799007; 
 Fri, 18 Oct 2019 09:06:39 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id s9sm6622703wme.36.2019.10.18.09.06.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 09:06:37 -0700 (PDT)
Date: Fri, 18 Oct 2019 17:06:36 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 3/4] mfd: cs5535-mfd: Register clients using their own
 dedicated MFD cell entries
Message-ID: <20191018160636.pt4im3m3hlruobms@holly.lan>
References: <20191018125608.5362-1-lee.jones@linaro.org>
 <20191018125608.5362-4-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018125608.5362-4-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_090642_190993_C22B7022 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: arnd@arndb.de, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 broonie@kernel.org, dilinger@queued.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 01:56:07PM +0100, Lee Jones wrote:
> CS5535 is the only user of mfd_clone_cell().  It makes more sense to
> register child devices in the traditional way and remove the quite
> bespoke mfd_clone_cell() call from the MFD API.

Like the other thread... this looks like it takes a shared (cloned)
reference counter and creates two independant ones instead.


Daniel.

> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/mfd/cs5535-mfd.c | 34 +++++++++++++++++++++++++++++-----
>  1 file changed, 29 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index b01e5bb4ed03..2711e6e42742 100644
> --- a/drivers/mfd/cs5535-mfd.c
> +++ b/drivers/mfd/cs5535-mfd.c
> @@ -95,9 +95,23 @@ static struct mfd_cell cs5535_mfd_cells[] = {
>  	},
>  };
>  
> -static const char *olpc_acpi_clones[] = {
> -	"olpc-xo1-pm-acpi",
> -	"olpc-xo1-sci-acpi"
> +static struct mfd_cell cs5535_olpc_mfd_cells[] = {
> +	{
> +		.name = "olpc-xo1-pm-acpi",
> +		.num_resources = 1,
> +		.resources = &cs5535_mfd_resources[ACPI_BAR],
> +
> +		.enable = cs5535_mfd_res_enable,
> +		.disable = cs5535_mfd_res_disable,
> +	},
> +	{
> +		.name = "olpc-xo1-sci-acpi",
> +		.num_resources = 1,
> +		.resources = &cs5535_mfd_resources[ACPI_BAR],
> +
> +		.enable = cs5535_mfd_res_enable,
> +		.disable = cs5535_mfd_res_disable,
> +	},
>  };
>  
>  static int cs5535_mfd_probe(struct pci_dev *pdev,
> @@ -130,8 +144,18 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  		goto err_disable;
>  	}
>  
> -	if (machine_is_olpc())
> -		mfd_clone_cell("cs5535-acpi", olpc_acpi_clones, ARRAY_SIZE(olpc_acpi_clones));
> +	if (machine_is_olpc()) {
> +		err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> +				      cs5535_olpc_mfd_cells,
> +				      ARRAY_SIZE(cs5535_olpc_mfd_cells),
> +				      NULL, 0, NULL);
> +		if (err) {
> +			dev_err(&pdev->dev,
> +				"Failed to add CS5532 OLPC sub-devices: %d\n",
> +				err);
> +			goto err_disable;
> +		}
> +	}
>  
>  	dev_info(&pdev->dev, "%zu devices registered.\n",
>  			ARRAY_SIZE(cs5535_mfd_cells));
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
