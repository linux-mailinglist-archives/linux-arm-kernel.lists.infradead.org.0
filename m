Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8822AEBED4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8D3rf+gBC8gvGEbF+dq7nQMZW9hhjWgiYjfXYasPmek=; b=Z0IjeZqr/oaZVn
	k5JvvBpVU8q5lt+UusT60LA8xdpYI3Hrosa8dESig1h8DwNyaqQPFo8CllFsvAaRP4HX4gk1n1gqQ
	nkzuA1Vh7ZI9aP9K7SRSUqJJo9//Tp8rbfgVEhb65/36nSVuDWPQaSCudT3Wt0xvXy/3KUIcpCRGJ
	/8bxt54rzs4FGMHR6Ob8eVtZ1gdVFdq0CvfMlSb98Df6X8Ti+LdkwsaVNKYmvT3mHGtmujxbHxhJb
	TKLrxEygcFAC9aSxYY8JCKNnQ4DsSEMi1kVanLswseh+gshYk6MovwCIlIiaV5JXMwf1XhfJr7+F0
	K76J+YrbJSrR9paOiLGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRso-0007Uq-GL; Fri, 01 Nov 2019 08:02:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRsf-0007Tt-Cw
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:02:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id z19so4111691wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 01:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WwG4RNOHvFkOsKEQAuSUlL4bFdysEsHDNGpaWR/Pat0=;
 b=S/symlXrnyXbV1Hv4N/GknnDwdxNxfdAmVeZAKQWJn34mc1nhmrnlQs85nwSBGvkwL
 YNMZGZ7N5SDuQkQb/7Y6V+470SFCP6zuBobyPpjFUYuHhi6PueWQaPseVM/0KJRYl4Ds
 OSRSiJZxTu0xp0XE3ITDXvUYdhd/G2eMC6OjgyLR5BgPenPusZfTZw9q7p1z6tjTiT17
 2HTp89XVF1SlvEY0u+iMvSXmyFNTyjwRYxCs/Fw4r5pDG3aWT/nsxWIvsq3EhIap8PmK
 IjfT0GEo9rkv8elPYVLbO22e46RHYghbr0Frz7Zdlbxxh9YXvwIm5Zkd/QPQ/KWbo2u0
 a18Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WwG4RNOHvFkOsKEQAuSUlL4bFdysEsHDNGpaWR/Pat0=;
 b=kOTYd3GO51zx+rM4XFxEibJXZstM3Y0XoXoCIFnS7Kmzml+LqAG6ntIJ5GFa+ODIqv
 DF/Nbdfp5HooovRyXKJIrrmlNQ8zNLit3ACLvLdGpf6a/STp4zM+5dIXx9hxZVPN5pVb
 6JetK5tmkkRZ+Eyor4QzT78S5NQhHDbH+A/ktdU307dsWTibgd/ZByoksK8AOHynTk5K
 dX65wPdkkl0HeQmWSKeMigc5QCUCc8bMlTpwYN8Ok+NNIO4HcZDhV8V3w/hYc48dP33R
 uUtaeS/O7Yc6uBdbqyjkV+yYNGCGrT0pr5RNyTnzeMJavNWMpuUmzz9ZHkfN9SRQUIAw
 TukA==
X-Gm-Message-State: APjAAAWcv1NvjZfTR+vW5dz05sNj2tmgD8QTtyMiTJrCZbnh5Ho1sGWW
 Qs9SfHi8oN/n4isiDo3iHKd+AA==
X-Google-Smtp-Source: APXvYqzAu9rjXRQJt17v4CuXCsldu15N/gdJvnPJsgnG1YrRx55OmuZHRv1YBOicGoG7XtVA35wNIQ==
X-Received: by 2002:a05:600c:22cf:: with SMTP id
 15mr8235809wmg.148.1572595319436; 
 Fri, 01 Nov 2019 01:01:59 -0700 (PDT)
Received: from pine ([185.204.209.109])
 by smtp.gmail.com with ESMTPSA id u1sm4977950wrp.56.2019.11.01.01.01.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Nov 2019 01:01:58 -0700 (PDT)
Date: Fri, 1 Nov 2019 09:01:53 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 03/10] mfd: cs5535-mfd: Request shared IO regions
 centrally
Message-ID: <20191101080153.bvws43z2n6gsjnym@pine>
References: <20191101074518.26228-1-lee.jones@linaro.org>
 <20191101074518.26228-4-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101074518.26228-4-lee.jones@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_010201_443955_D0EEB1C5 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 07:45:11AM +0000, Lee Jones wrote:
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

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

> ---
>  drivers/mfd/cs5535-mfd.c | 74 ++++++++++++++++++----------------------
>  1 file changed, 33 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index b35f1efa01f6..3b569b231510 100644
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
>  	{
>  		.name = "cs5535-acpi",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[ACPI_BAR],
> -
> -		.enable = cs5535_mfd_res_enable,
> -		.disable = cs5535_mfd_res_disable,
>  	},
>  };
>  
> @@ -117,22 +79,47 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  		r->end = pci_resource_end(pdev, bar);
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
>  			"Failed to add CS5535 sub-devices: %d\n", err);
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
> @@ -141,6 +128,11 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  static void cs5535_mfd_remove(struct pci_dev *pdev)
>  {
>  	mfd_remove_devices(&pdev->dev);
> +
> +	if (machine_is_olpc())
> +		pci_release_region(pdev, ACPI_BAR);
> +
> +	pci_release_region(pdev, PMS_BAR);
>  	pci_disable_device(pdev);
>  }
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
