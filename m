Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 682CAE4631
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKawbfLv/+bTaRjQCS56jubNHvVfYoa0tshgAuOFlw4=; b=fCAPkrTfwwBfrx
	5F6g1ENZ6PZctla/0ewmAYIJRWdLoDjEP00bjESi7kQ7e3Vgz0W3Pj2tZ27u7yi/DDVzRbZJK2xlP
	+IG8ZOd3xuq6fdmJHjQnP7krnecgd2y6q+FNg2K3nlZUr6tXYhNsf7W6ea7edhgHY9So+qZ2kMEzn
	tJPE8zPbaFoUK05sLYjdrtOLjFBU8orZp+TZUkAYVNcjDVFBMTBIyJ+cxoRna/fmRqfQ84FpV/aVp
	IPXG+ueaYF4P44hp9YBP6RKc2lE1lVfeqhcghcnIiaw+cINBXHJO9FyeQ+mdnc7WsyG4DDtfCJ6ig
	M/hqZ/RHStTJ9bv+ajXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvIm-0008NJ-MT; Fri, 25 Oct 2019 08:50:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvIb-0008Mw-BI
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:50:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id p21so1169228wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 01:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lRw/HB9cs0P4tEenIW1OQJEsVhGUoZlMNerElFOWtvc=;
 b=sMzj0MJ9/h1HCNuIsf7Rz6+lrrL0m4lFXm8/9rU9bydl0zwMq0ka2eToPYJumIYt41
 kH46+4jayoge4n3So13+aPBWLad3P8wt8qF20bx3WR2GaUrQ2HWy0/Ux6gY89YE/iJCs
 Nbcx0WiYZthyflzw79Ps7ISbGS+UsqPpfJW4dybIookg6K/mYmPywjPYb6ZUqu+d5YXD
 vlCi8jSBK06+hHFYroazF17Fsoenpc0TCDxc5Bk79IYaD59BMVSvl9SFNnvN30WfBqN0
 Zc8Ki1M00LMpSec+ZGL9Lbobi3+5oLupSvxMcy8Sueu7D4pUFaTudee+8UwVjYrz9tTI
 dC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lRw/HB9cs0P4tEenIW1OQJEsVhGUoZlMNerElFOWtvc=;
 b=GfWHgvCYPzFwrOQ1xC7DuNRPffiGfAR3ZElnWpu0MY85Rdq1ufBMWeOzKFtqNiEzVP
 JI31oIV7jYLwVvI4WPbhJ2e0zf6YvtDOeoZa22lIfxVjDS2n2M2h4G5Knbr9wpS4JJMr
 bjJJRVdi4kpIFStH3C0E0naw0o7VssSPgOb5B9ILzsEyD7+0fTL9idmkGz29UO41pQJ9
 9gHKye3IYu6rgWvk7QKp1CpNmHtLZ5pRqh3i0RJCj3aF+OGYUROcKACz/zFxTTUmaw/a
 0DJ5C0fQholH+jG001U770mwGCR7ZcXACliy47MPtCunmzu2CXUT8SwAQkBp8wxehRyz
 mdjg==
X-Gm-Message-State: APjAAAWMHuTBWARZ8tMRLxXJDYYWtH7G+cHcQbq8U1ho+vxjSBJRWLk8
 Y1nABHczHcDGw1EwhkfJO+ZAQw==
X-Google-Smtp-Source: APXvYqyVNCUwL+zbMIQYijH0nGElvkNZYDgn3r2MdehDdUtgyhppVljV36JwyibkLIy+VZvozzobaw==
X-Received: by 2002:a1c:6702:: with SMTP id b2mr2287107wmc.107.1571993419746; 
 Fri, 25 Oct 2019 01:50:19 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id f8sm1339404wmb.37.2019.10.25.01.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:50:19 -0700 (PDT)
Date: Fri, 25 Oct 2019 09:50:17 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 03/10] mfd: cs5535-mfd: Request shared IO regions
 centrally
Message-ID: <20191025085017.46bdt6kc6zfoda4g@holly.lan>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-4-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024163832.31326-4-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_015021_393306_3B1389D1 
X-CRM114-Status: GOOD (  22.44  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 05:38:25PM +0100, Lee Jones wrote:
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
>  drivers/mfd/cs5535-mfd.c | 71 +++++++++++++++++-----------------------
>  1 file changed, 30 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index b35f1efa01f6..27fa8fa1ec9b 100644
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

I agree cs5535-acpi isn't used is the kernel but I think it stills
fails a w.t.f. per minute test to have a mismatch between when
a device is added and when it requests resources.

Especially since I don't think this is transient within the patch
series.


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
> @@ -141,6 +128,8 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  static void cs5535_mfd_remove(struct pci_dev *pdev)
>  {
>  	mfd_remove_devices(&pdev->dev);
> +	pci_release_region(pdev, ACPI_BAR);

This will issue a warning if !machine_is_olpc() .

For the release region family of calls "the described resource region
must match a currently busy region."


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
