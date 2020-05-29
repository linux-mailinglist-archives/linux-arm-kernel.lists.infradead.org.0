Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCB41E840C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41W6Gbbi1CUH2h1LrpZHejx9oDw3MyzrTi09TPBF8vI=; b=hSHEbIb+OcZkEN
	kGVvYqwCqOXg0UUXzIUj6udndIBrmcw3Hl9Cyfz9IoODmzMgQKmglfK3EZanrCsXswEA4NQxFHPoK
	CvsAaHRgBZmWMc249JJpon9KeCtSMGxh6Ha7DU9CNDbXRhapbejotk3vnd3X1W0t3a/5fGRAXVjy4
	/j4vh88QL+m/MGynnB4/j/pL4Gsvh13tXyRZF0VbaQg7uVQpBZTE27hWQw6N6cKZ4RmfYAz4TiQNQ
	7spnKSdYq/2CoX2Mp08okYeeKNllWXIpT4CeqXsytkoFPbPuaQH2HlXARs52Zr3KG6KnsZG7HMbdD
	zMLZNp6Q4dwxlbbKYFiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeiEl-0000fZ-UF; Fri, 29 May 2020 16:52:03 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeiEf-0000ew-86
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:51:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id z15so3267445pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 09:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kfSoM50bsi50W+Hljgu8pBJiQuXE7V/1HKaCvRiBJRc=;
 b=OSgXKIrodlm5+jt03ufkUGcZy6oGxzcIqdCXbcHnu9KOMIQJB5IInxFXL4jRyZ7Jmu
 5Xc7IYEY7ot3T90+Dy6csIjLMqoGgBV6BqR4KYl27oApPlTmwPK7wzRd57LgcPjgNmMZ
 L+/3hN5jXD+eWTnrNCLmZMXr3IZlDec4zmx+SMK0M0Hpqx6BXebzukC91R0lhPghVhxa
 tX5iso1K6Q06yDhh/a4NC6WissDfCAcJJzanvC0HDEEH0/jHUzIU0mToybdmbd/5ifPU
 16f9thHZaFgasX6DgZPJpKKc0nAUm8ICTmciq6fDJ18YldDgRrxz7aO6/k+QJJ5SiuaR
 CZuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=kfSoM50bsi50W+Hljgu8pBJiQuXE7V/1HKaCvRiBJRc=;
 b=L/jK+pqXRKXG8uPEYChdf/QFH2e2AdQGhnOEyT1wkXE871cbzcBXzSxVBnCNUtxjYZ
 5N7KpAu9WPmmbjpvN+e7UiJuomnyMWJBau1PaXxjcQd8qcJl44uOTbg56P/4DCKrtov8
 2DxSQEMYPK0s6i9rJalN0Sp7ioP3iz1cPKELOpPNWeS9yZSVjdpuQ4beJagjIZa2mM23
 oRO9tIUf6O+avQRpbjLn+xnnPY0XVg907ixAi16kC87Z89iBKMGfN3XXPdxYOHzviMGW
 QmnLiwd0xW0BEFV5x5PGPKjkH24Ty4dWb1R/8CnirI9E6PkAqpXl+Wity23VVzqZwimg
 L0xw==
X-Gm-Message-State: AOAM532T/OUi5MDer/BGojPsRDC+AX/R6Tk/wOOztMP52RWsoDuZw330
 OsiAN3k75yGiTP4CaPegDCHy+aAK
X-Google-Smtp-Source: ABdhPJxXElgnK8hmEudbTIucGJZtMnTDmD5Yl74J745kEl/J8MFngTs56nYPxqt37wZQkwshOsXs7g==
X-Received: by 2002:a17:902:7288:: with SMTP id
 d8mr9034813pll.231.1590771116542; 
 Fri, 29 May 2020 09:51:56 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id nl5sm13448pjb.36.2020.05.29.09.51.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 29 May 2020 09:51:55 -0700 (PDT)
Date: Fri, 29 May 2020 09:51:53 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Frank Lee <frank@allwinnertech.com>
Subject: Re: [PATCH] watchdog: sunxi_wdt: fix improper error exit code
Message-ID: <20200529165153.GA162777@roeck-us.net>
References: <20200529094514.26374-1-frank@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529094514.26374-1-frank@allwinnertech.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_095157_288482_2415797E 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-watchdog@vger.kernel.org, tiny.windzz@gmail.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 wuyan@allwinnertech.com, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 05:45:14PM +0800, Frank Lee wrote:
> From: Martin Wu <wuyan@allwinnertech.com>
> 
> sunxi_wdt_probe() should return -ENOMEM when devm_kzalloc() fails.
> 
> Signed-off-by: Martin Wu <wuyan@allwinnertech.com>
> Signed-off-by: Frank Lee <frank@allwinnertech.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/sunxi_wdt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/sunxi_wdt.c b/drivers/watchdog/sunxi_wdt.c
> index 5f05a45ac187..b50757882a98 100644
> --- a/drivers/watchdog/sunxi_wdt.c
> +++ b/drivers/watchdog/sunxi_wdt.c
> @@ -235,7 +235,7 @@ static int sunxi_wdt_probe(struct platform_device *pdev)
>  
>  	sunxi_wdt = devm_kzalloc(dev, sizeof(*sunxi_wdt), GFP_KERNEL);
>  	if (!sunxi_wdt)
> -		return -EINVAL;
> +		return -ENOMEM;
>  
>  	sunxi_wdt->wdt_regs = of_device_get_match_data(dev);
>  	if (!sunxi_wdt->wdt_regs)
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
