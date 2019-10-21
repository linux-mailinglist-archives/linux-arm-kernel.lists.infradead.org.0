Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4929DEC36
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2YQKXmOpB5zDlL+QZAHrGHehpyQmnwOF/p3dUbKLPE=; b=f0e+Vrzme4uKG8
	GyIAdshBhIpjklZPVSLVF45mOre8C8sqrB5wgCt/21xJY4P5PJSmcCOWW3W9iglpb4D79XBQqnWEV
	jORRpMpFPzOfecxmbCVfrvyAQ66b0a+WjAGNoxOwb3AJ+UzYDTYtxqkddS4WtqPOh2bWMD9UtHjS9
	ojjU3qyPoTIpyaUeZddif49Scd3wVr8Ebk4jfxrafeaIeW7mLClLmR2RsUwuUm63tUgBbKSIOW46d
	IaGS155FlOrbZzTMAgxut6NCJRr2bFGdMG15AzdqKU4c4lzNPnmDn+AOFXxLPMEr0qB96gP89+J43
	Nhw16J6RvCWYNeJk8jFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWod-0003MX-9K; Mon, 21 Oct 2019 12:29:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWoS-0003Lv-MD
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:29:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id r19so13138310wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0Bp8/Rt3sh+Dp54MmRulppkSlI3E35h5lLEu1NL/66s=;
 b=fg+EZ8rR6zQ3vBZkhEVTMSJIkRWVW81aPPY4whM0f85iUyAYYOdFB/Zlwa2IAdEeCe
 ab0iT+Taos9nYLyyrI3j3p3A269hUMedsQAmi/WkWVNLNbF+ovtsmMOFJdM7oPG0kX44
 HoLGCvc36n6D1UzBl1e4+EVcvtdF82Kic5pDSs7TKv+UWhax298piQMnJAKjdhPSNpNt
 u1yVwqWGzJxwNRSARVsdpIihgIJd6biiBL0XhfgL0Q6ofRhTIRPEt34P7v1GrImyAAPD
 IHEx0dd7OIBt7XB3pH05mvDopQ1vK3+bFG1NQr7+IO2/IUFlfHjo7NcDyJ1pkgSz+NDN
 RZ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0Bp8/Rt3sh+Dp54MmRulppkSlI3E35h5lLEu1NL/66s=;
 b=S6a/lz7t0lCB3bgmeyVVwefAkZvA6x3NGMdtAqTCl4z1TVHtVFSrqsBRGhBhqfOquA
 8Qoifhk/SADmOtX6l5aFEvo6RRMofA06ELPKXeUBcZGRb0KDvr8hiYD9t8eAWAF7FyLt
 ThH12Y1KRCrX2Ih76dHvU0FIc32fb57lGAZ7Jxkz96iNO/wWfR8GEEZs0ri7snUB4sov
 lEduOA0IFlc48o2qduNN3UfZ9dDjCDqVluzbbjyQrmvH+kzRJxaljC65fWsS9grfU+Hw
 jtRPBrPHV4FslY0embWPZFL63My/k5X7USqVSqZWNRPWxrSZWdZsxHawrrkYBH3sbykd
 MDAA==
X-Gm-Message-State: APjAAAXcGp9elpIFc84xyWgM2c03WF2osJR+rAProfNW1XCa7ZLkULcJ
 JHNW/3xLWf2EaztsCTpBL1Q3ug==
X-Google-Smtp-Source: APXvYqzINJ2+DBcQWI5LwLEFqSjji3k+FiqUhAU7wr8KOGRZc9tTARTg8q11xDs6VViDPVgwQwaOHA==
X-Received: by 2002:a1c:9894:: with SMTP id a142mr18467038wme.70.1571660966800; 
 Mon, 21 Oct 2019 05:29:26 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id p20sm9987618wmc.23.2019.10.21.05.29.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:29:26 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:29:24 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 4/9] mfd: cs5535-mfd: Register clients using their own
 dedicated MFD cell entries
Message-ID: <20191021122924.qmaio5oe5j66tfdj@holly.lan>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-5-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021105822.20271-5-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_052928_732494_ACF8330A 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On Mon, Oct 21, 2019 at 11:58:17AM +0100, Lee Jones wrote:
> CS5535 is the only user of mfd_clone_cell().  It makes more sense to
> register child devices in the traditional way and remove the quite
> bespoke mfd_clone_cell() call from the MFD API.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/mfd/cs5535-mfd.c | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index 053e33447808..96a99ac13384 100644
> --- a/drivers/mfd/cs5535-mfd.c
> +++ b/drivers/mfd/cs5535-mfd.c
> @@ -57,9 +57,17 @@ static struct mfd_cell cs5535_mfd_cells[] = {
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
> +	},
> +	{
> +		.name = "olpc-xo1-sci-acpi",
> +		.num_resources = 1,
> +		.resources = &cs5535_mfd_resources[ACPI_BAR],
> +	},

Is the cs5535-acpi cell actually used by anything? I think it was only
ever used as a template and can be removed; I didn't spot any driver that
uses it.

PS If the cell were removed then my review comment on the previous patch
   becomes moot ;-)


>  };
>  
>  static int cs5535_mfd_probe(struct pci_dev *pdev,
> @@ -105,10 +113,14 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  			goto err_remove_devices;
>  		}
>  
> -		err = mfd_clone_cell("cs5535-acpi", olpc_acpi_clones,
> -				     ARRAY_SIZE(olpc_acpi_clones));
> +		err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
> +				      cs5535_olpc_mfd_cells,
> +				      ARRAY_SIZE(cs5535_olpc_mfd_cells),
> +				      NULL, 0, NULL);
>  		if (err) {
> -			dev_err(&pdev->dev, "Failed to clone MFD cell\n");
> +			dev_err(&pdev->dev,
> +				"Failed to add CS5532 OLPC sub-devices: %d\n",
> +				err);
>  			goto err_release_acpi;
>  		}
>  	}
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
