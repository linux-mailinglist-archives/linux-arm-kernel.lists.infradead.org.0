Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7650E4635
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TzOZdV+aywOSwo0pmiFATJyfWl6uwepSs3zhWM4CLA=; b=jAMT8qzTOvmyoG
	zjKuNMk8DXqVCHGlaUshO4xDRnxeqzlF8lD2gSFkwySU0uanRuV6GS5RBDVbMLouPtM/Q+MIsVhDo
	x5DJnVrMBpW9WdjOKAvOMtzwGPXfbqXgSLPuZAU8zbHmSIsvtpASCsLZVgkN2tSubW4I+NAOaTpil
	gWaGRQ81kbi8GU0VOwdzl0jsfZK4+2NGhrEjf94AKTItpCsjKPuViDEwGmJeH54LgD4OBRei8bggm
	7It2yqbxaP+Jdwh3uK1lOrZ2qi3ty8wz5RpPyQK8YuPk4uyy4FEpdLeEpe6qQLB26dFYrrjGgUhBM
	2XZZRFRv4bZi27sy0ALg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvJL-0000Cy-2B; Fri, 25 Oct 2019 08:51:07 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvJ8-0000CQ-Lg
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:50:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id o28so1338020wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 01:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mU3F3IzQsPzzpNMBmUrZ0k4gyWNr/xsuP+XBZgHlZiI=;
 b=p9ySKPlS9CNE3I642lywwJwYWHSeWJ9DGHcyQdi7nLgOCastK730EcWtbWLXygr+fm
 9eQHwbWqdxVvm2DOqrL7oMHN51DUgMFxM+cRVifrC01I0s7k58M3dGxNkJ0+lGYD56zj
 frJ0Dgtwniy4hA1wY07UrYK2VcTBbRpzatr1t/3VvRbb0MqBCZ/YqqtJg1H7boP7oagn
 Bj199e/JrmyTrpSL0oYa29LqOM+Csdk+KjptXRXjCORcNGHFDvTWZ5RUHpmSy/TAqkaj
 F/1oHtQdEYq6ZhmDArWWdh5yGn8khR/6P/HBErqDYUfCYFSN7IL7XX0eBoVlbMVo+X/T
 gnEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mU3F3IzQsPzzpNMBmUrZ0k4gyWNr/xsuP+XBZgHlZiI=;
 b=HnLydzVVq6nio5QeBPVc/squ3ohKEyhIllnuP9fwHRZg7F7mfGOoNHYNv6/fZNHTg0
 TLvUiLpSi+7yZg69LyRtZdNI1d5TeLio2SqzaU+Kz7REWe0ntXfg7arqLmYxvwmvrn/m
 mhDFe+l9eC24fPR9q7EBxYZRsFBvPSufa9LMkaQfFcf/P4BV/fibWm5Xs/hWMEl2BpbV
 OWCfkvru4hcrx43P39JBTfssyMBRUAvZDKLeeW9gMAosBbq5O2IOmBQ2NeOyvlYnWMJ6
 RS8oRnozmMZOInVEK+piHdcHihgknmFx+VXwE7Tick3qi+/eHLbKdjfO1N1L/aMwZnEh
 fKxg==
X-Gm-Message-State: APjAAAWePDUDVpt6sunb81Cd35f6rO4Br5YTo1jpwdbs8MzrXcYq/fI3
 u2dKyxCmj28/zSwn1rb0GTQSjA==
X-Google-Smtp-Source: APXvYqwQWWDw+ev8qSt1hiQb9lllvs7w8XNgT6hvwO+lq09EWS1MIQJ+LfOcBj9V8FxR0ij3fVCxOQ==
X-Received: by 2002:a5d:4341:: with SMTP id u1mr1880473wrr.306.1571993453132; 
 Fri, 25 Oct 2019 01:50:53 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id p5sm1924303wmi.4.2019.10.25.01.50.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:50:52 -0700 (PDT)
Date: Fri, 25 Oct 2019 09:50:50 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 04/10] mfd: cs5535-mfd: Register clients using their
 own dedicated MFD cell entries
Message-ID: <20191025085050.lwrhdwccof5vleie@holly.lan>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-5-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024163832.31326-5-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_015054_712055_43F4CE8F 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Thu, Oct 24, 2019 at 05:38:26PM +0100, Lee Jones wrote:
> CS5535 is the only user of mfd_clone_cell().  It makes more sense to
> register child devices in the traditional way and remove the quite
> bespoke mfd_clone_cell() call from the MFD API.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


> ---
>  drivers/mfd/cs5535-mfd.c | 25 ++++++++++++++++---------
>  1 file changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index 27fa8fa1ec9b..4c034c9f2303 100644
> --- a/drivers/mfd/cs5535-mfd.c
> +++ b/drivers/mfd/cs5535-mfd.c
> @@ -50,16 +50,19 @@ static struct mfd_cell cs5535_mfd_cells[] = {
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[PMS_BAR],
>  	},
> +};
> +
> +static struct mfd_cell cs5535_olpc_mfd_cells[] = {
>  	{
> -		.name = "cs5535-acpi",
> +		.name = "olpc-xo1-pm-acpi",
> +		.num_resources = 1,
> +		.resources = &cs5535_mfd_resources[ACPI_BAR],
> +	},
> +	{
> +		.name = "olpc-xo1-sci-acpi",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[ACPI_BAR],
>  	},
> -};
> -
> -static const char *olpc_acpi_clones[] = {
> -	"olpc-xo1-pm-acpi",
> -	"olpc-xo1-sci-acpi"
>  };
>  
>  static int cs5535_mfd_probe(struct pci_dev *pdev,
> @@ -101,10 +104,14 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
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
> +				"Failed to add CS5535 OLPC sub-devices: %d\n",
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
