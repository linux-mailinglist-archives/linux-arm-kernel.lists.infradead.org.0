Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD8BDEC22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnC5osC7/GpfZV4FTgg0HXi73fs5VErlx8I7OfcmxAw=; b=fxDmTsm5slLtm/
	kvXtz+oyIRc3Jt8UgeL+Bk1YEct95zVlqdGDjNpkYEvHF6vuEwxmyZp6EF9x6B8AP3a2EzAktW3u0
	FuPXNJjkgtpf+DpZMyC8pZfRDgw5KWmSp7vEmZRF9emgsmLunwthGFCl3pWAp9AQSBXkibNrQNQaw
	K5Z1Hnl9tc0zBBtMH4NqR9cp+udfE8DAUD8sbKNahZQp8uzBPOpO/IWFHviVtg/vXy3JNZk7ji57X
	63Ucu1T+AAmlv1fbC/rzMZ4oJTzFik1WBjJFDf0pU0a6G6QnpndpUuSTTFPPZ2y9jAhhftNBd69at
	TlSPysNqBE36ceT/HV+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWlP-0002hN-49; Mon, 21 Oct 2019 12:26:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWlG-0002h4-Nt
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:26:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id v9so2495760wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qHVBYXsOO6hKuBWHsZEA4hqDK5PM7Cy9mG1hG95G+Fo=;
 b=YzSgG/7cGg5JlIO32eJye07LN/sVpd2NLEKr455bPImBsMOgQeP7sD0kkGc330R5hV
 jBwtzVRPQ3GWUGUNAxtaFO1uDNKdwUHhj00jIcbKxdjIQevX4RoKWf8JMqt9v7DtQyMF
 PTnrV8GfhzXM2ivArGXzKOXgctwP+cwNFvDxqvwJO/NLmknme0vvhaL0aFmv8730fsDk
 +Gi0UjX2OvA3cUOWlqTTeK3vADkdRv60eWE+mWp5QIKeIweJebdcmbU28oQRnvPVCIMq
 cid3PRPyq8uIjntF5zNf9alIUKoRszqZpdnVOFR6qjhcHfPyzCH3ndKGZFm/TtAFP+25
 UCeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qHVBYXsOO6hKuBWHsZEA4hqDK5PM7Cy9mG1hG95G+Fo=;
 b=o99vEDFeipZd9d4NKIx+kW9qlIj1qpLiPgg1pCNpzUnu2LdVhm6Yn6dRLAGZlca/y6
 PbuZ0SywTA0S41jSR4E841eiN2h/nSaR6/caESosrMOqSLgLMm0qsG3RfeWCEcqhOeeP
 wcIY+T9+X5Kxq/3Y4mda4ZLj33ZMdC4oj/ezl4rnKNpItwpzy+nIupfCgSVVM1N+OQQm
 fujochRIRJfulcXI3Nut2mjKq+6Bn6c7gghD2/FpRF/R1XN5V55hvRQBxxbJh9xmq0DI
 J6SqTPQbJ6DU1iMVIyzmfl/r/qk5jy4rdhGZuYyesZfSr+56S70VsUBd4NvX5t2fqgWg
 RvaA==
X-Gm-Message-State: APjAAAVF/3xl1lePBkx+8T5Jp0gwiwctCueSWRzM7d1g/kYXD1YIXepi
 MZ4xvdHp27rLYyo7J5S1AslcBw==
X-Google-Smtp-Source: APXvYqznawhtnnwpuBdog7pKe5gZ4rlqUbhqGD143d++D+Qqgj93ohS2ObHSBqr409thEWRRKDYxtw==
X-Received: by 2002:adf:e64f:: with SMTP id b15mr6699855wrn.372.1571660769331; 
 Mon, 21 Oct 2019 05:26:09 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id z1sm14789929wrn.57.2019.10.21.05.26.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:26:08 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:26:06 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 3/9] mfd: cs5535-mfd: Request shared IO regions
 centrally
Message-ID: <20191021122606.5q22j6wtyslwljco@holly.lan>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-4-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021105822.20271-4-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_052610_783402_03ADA141 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 11:58:16AM +0100, Lee Jones wrote:
> Prior to this patch, IO regions were requested via an MFD subsytem-level
> .enable() call-back and similarly released by a .disable() call-back.
> Double requests/releases were avoided by a centrally handled usage count
> mechanism.
> 
> This complexity can all be avoided by handling IO regions only once during
> .probe() and .remove() of the parent device.  Since this is the only
> legitimate user of the aforementioned usage count mechanism, this patch
> will allow it to be removed from MFD core in subsequent steps.
> 
> Suggested-by: Daniel Thompson <daniel.thompson@linaro.org>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/mfd/cs5535-mfd.c | 72 +++++++++++++++++-----------------------
>  1 file changed, 30 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index 9ce6bbcdbda1..053e33447808 100644
> --- a/drivers/mfd/cs5535-mfd.c
> +++ b/drivers/mfd/cs5535-mfd.c
> @@ -27,38 +27,6 @@ enum cs5535_mfd_bars {
>  	NR_BARS,
>  };
>  
> -static int cs5535_mfd_res_enable(struct platform_device *pdev)
> -{
> -	struct resource *res;
> -
> -	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
> -	if (!res) {
> -		dev_err(&pdev->dev, "can't fetch device resource info\n");
> -		return -EIO;
> -	}
> -
> -	if (!request_region(res->start, resource_size(res), DRV_NAME)) {
> -		dev_err(&pdev->dev, "can't request region\n");
> -		return -EIO;
> -	}
> -
> -	return 0;
> -}
> -
> -static int cs5535_mfd_res_disable(struct platform_device *pdev)
> -{
> -	struct resource *res;
> -
> -	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
> -	if (!res) {
> -		dev_err(&pdev->dev, "can't fetch device resource info\n");
> -		return -EIO;
> -	}
> -
> -	release_region(res->start, resource_size(res));
> -	return 0;
> -}
> -
>  static struct resource cs5535_mfd_resources[NR_BARS];
>  
>  static struct mfd_cell cs5535_mfd_cells[] = {
> @@ -81,17 +49,11 @@ static struct mfd_cell cs5535_mfd_cells[] = {
>  		.name = "cs5535-pms",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[PMS_BAR],
> -
> -		.enable = cs5535_mfd_res_enable,
> -		.disable = cs5535_mfd_res_disable,
>  	},
>  	[ACPI_BAR] = {
>  		.name = "cs5535-acpi",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[ACPI_BAR],
> -
> -		.enable = cs5535_mfd_res_enable,
> -		.disable = cs5535_mfd_res_disable,
>  	},
>  };
>  
> @@ -109,7 +71,6 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  	if (err)
>  		return err;
>  
> -	/* fill in IO range for each cell; subdrivers handle the region */
>  	for (i = 0; i < NR_BARS; i++) {
>  		struct mfd_cell *cell = &cs5535_mfd_cells[i];
>  		struct resource *r = &cs5535_mfd_resources[i];
> @@ -122,22 +83,47 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  		r->end = pci_resource_end(pdev, i);
>  	}
>  
> +	err = pci_request_region(pdev, PMS_BAR, DRV_NAME);
> +	if (err) {
> +		dev_err(&pdev->dev, "Failed to request PMS_BAR's IO region\n");
> +		goto err_disable;
> +	}
> +
>  	err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, cs5535_mfd_cells,
>  			      ARRAY_SIZE(cs5535_mfd_cells), NULL, 0, NULL);
>  	if (err) {
>  		dev_err(&pdev->dev,
>  			"Failed to add CS5532 sub-devices: %d\n", err);
> -		goto err_disable;
> +		goto err_release_pms;
>  	}
>  
> -	if (machine_is_olpc())
> -		mfd_clone_cell("cs5535-acpi", olpc_acpi_clones, ARRAY_SIZE(olpc_acpi_clones));
> +	if (machine_is_olpc()) {
> +		err = pci_request_region(pdev, ACPI_BAR, DRV_NAME);
> +		if (err) {
> +			dev_err(&pdev->dev,
> +				"Failed to request ACPI_BAR's IO region\n");
> +			goto err_remove_devices;
> +		}
> +
> +		err = mfd_clone_cell("cs5535-acpi", olpc_acpi_clones,
> +				     ARRAY_SIZE(olpc_acpi_clones));
> +		if (err) {
> +			dev_err(&pdev->dev, "Failed to clone MFD cell\n");
> +			goto err_release_acpi;
> +		}
> +	}

Making the request_region() conditional on machine_is_olpc() seems to be
best on the assumption that the cs5535-acpi is not otherwise used.

I suspect the assumption is true but you have to combine knowledge from
several bits of code to figure that out.


Daniel.


>  
>  	dev_info(&pdev->dev, "%zu devices registered.\n",
>  			ARRAY_SIZE(cs5535_mfd_cells));
>  
>  	return 0;
>  
> +err_release_acpi:
> +	pci_release_region(pdev, ACPI_BAR);
> +err_remove_devices:
> +	mfd_remove_devices(&pdev->dev);
> +err_release_pms:
> +	pci_release_region(pdev, PMS_BAR);
>  err_disable:
>  	pci_disable_device(pdev);
>  	return err;
> @@ -145,6 +131,8 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  
>  static void cs5535_mfd_remove(struct pci_dev *pdev)
>  {
> +	pci_release_region(pdev, PMS_BAR);
> +	pci_release_region(pdev, ACPI_BAR);
>  	mfd_remove_devices(&pdev->dev);
>  	pci_disable_device(pdev);
>  }
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
