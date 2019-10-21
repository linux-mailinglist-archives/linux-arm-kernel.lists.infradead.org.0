Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09142DEA9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bi48joRtnydsTCYi+nI1SEfo6tmcGSNX/LdRteBS7/8=; b=AExy+1Fro1hb92
	Mtn9BgN1+ZnOVIALNcPGZGmvkQDxKDum5y81Y9RaMGNqPFZFiTAL59lRMpne36LZzwjTiQ86I9DqH
	QDh030y2wcyM4l2KU3fV6zCUo2YSOH5tQT8oafqAtwbaGzjBo2rUaHXqYKVcc0phic0oeIJuC6pYX
	F6jnxYdF+TLK8MiT/6eOpuKeMC3otEhJ8JdSmf9KYJTiAGMzxtOuwI/lJ8ZsXcGblQfk1m5JBGYxD
	Pkx7NhJM3rDuhC90HzscQqAvmfzzmvfC+DEJx3s4uUwuz5N3d6IaOZ0GA7T8DtoZwmsg4LbcQ+4xD
	Qji9/FZfeQOOLZXKZTmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVfV-0002lF-D7; Mon, 21 Oct 2019 11:16:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVfK-0002kw-Q9
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:16:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id s1so4723536wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2kG9pHnFeA6PHcYxK5XIBWye1413OVWPwWivEHaEPxA=;
 b=sHFpCGNpZUr9EgW9RnN3TQG6R2f+xIbwosYwqG+ENfBMv8io6y7yM2d9N6vNuloJF2
 HxsM8JQVm/hKyxFPDvsUQXGaHY4ROjy6Fj89QD433kPOxXfb/7rEwMCPth7/2gUXQ8Bm
 YkJv5oF17JlBd3p9iUSwU+GFDhPdypJMfwxdW2dPs+kk1Run6TuZGTlGR9/p7QxX+jdE
 exlPcYrTvQt2yTfO//swSHyZZxG6MI/vqlJkUa1nLGYxLW/oHJ10IzKJdv3UdoJm8apA
 +rxORZO4/MH8sNtfmnCnRjhVXHqmIJr0pCJZtqE0HhllafHa9gmWQSqv4DQf+nBmwPfA
 oowA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2kG9pHnFeA6PHcYxK5XIBWye1413OVWPwWivEHaEPxA=;
 b=uCwmG6Umozk4ccRy6Z9CqF79A9z2qmDk3n7lOLNDvTg9ZufHdjWteXURUxl+wdNmk0
 GDFYybZ00F1bpAI7AYUWNyI4FyJ1Ez9jedivUJ2U+2GyCyTjWTVa8LCkHba+uoz8N4rk
 uV9XP7YlfpkmGjQIdWaFlV/vilu27ArT2C9foUEcceDp0GHBpzakm9lz4SFBCoazO4C7
 rCFOrUE2Fxgif9MCUdsd9O0nrLsxsqPKaVgYKz0B+uRQn2nfVCuEQ6kmnrl83Kl8G/qR
 hoWntt7QQLw6ZjU6IoLwNjVqdyL05Lx3Czeew7TXEG9sP3A2XKXF5PEDlDh6MhICS8ng
 L4kA==
X-Gm-Message-State: APjAAAULbqbyM5m4tBwvkk3y9caxSehLGBvGE2QkSul5L/cPZtoA7W4A
 XjLGNH13NY/WENobViCLS6WchQ==
X-Google-Smtp-Source: APXvYqxYf6uO9WVXoizzlTpKAqfTaa9EpMyq3rZnnJ4hcxgDGEwowxOByM3u5FsqQHn2e4sOGazs9A==
X-Received: by 2002:adf:eed2:: with SMTP id a18mr4241896wrp.273.1571656557502; 
 Mon, 21 Oct 2019 04:15:57 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id v6sm17556789wru.72.2019.10.21.04.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 04:15:56 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:15:55 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 1/9] mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and
 tidy error message
Message-ID: <20191021111555.zsvvdfun3gqhrurw@holly.lan>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-2-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021105822.20271-2-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_041558_855690_D5B31316 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Mon, Oct 21, 2019 at 11:58:14AM +0100, Lee Jones wrote:
> In most contexts '-1' doesn't really mean much to the casual observer.
> In almost all cases, it's better to use a human readable define.  In
> this case PLATFORM_DEVID_* defines have already been provided for this
> purpose.
> 
> While we're here, let's be specific about the 'MFD devices' which
> failed.  It will help when trying to distinguish which of the 2 sets
> of sub-devices we actually failed to register.

No objections... but won't the tag added by dev_err() already
disambiguate?
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/mfd/cs5535-mfd.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index f1825c0ccbd0..2c47afc22d24 100644
> --- a/drivers/mfd/cs5535-mfd.c
> +++ b/drivers/mfd/cs5535-mfd.c
> @@ -127,10 +127,11 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
>  		cs5535_mfd_cells[i].id = 0;
>  	}
>  
> -	err = mfd_add_devices(&pdev->dev, -1, cs5535_mfd_cells,
> +	err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, cs5535_mfd_cells,
>  			      ARRAY_SIZE(cs5535_mfd_cells), NULL, 0, NULL);
>  	if (err) {
> -		dev_err(&pdev->dev, "MFD add devices failed: %d\n", err);
> +		dev_err(&pdev->dev,
> +			"Failed to add CS5532 sub-devices: %d\n", err);

                                           ^^^

Typo (and MODULE_DESCRIPTION() says this is a driver for CS5536 too).
Once that is fixed:
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
