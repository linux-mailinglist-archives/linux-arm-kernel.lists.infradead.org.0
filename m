Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE221A5F25
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 16:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKmSSb6nf98Ii37orUcI+JFEVAdigbR3Hs6mOLFi94s=; b=JmOqVH5IM2mfLt
	iyjntrHjAaPXo45qHXH7jGv6D/7F0vgOVIB+VksJWNmOIp62GJfsbOcYZuHJIlWl2S0dS1tlNGNVc
	Ud/bxbpddPJ5uCAD7vmTQOBip+3zI5Tq1GBAmguKh4EeIj2aBz6sMMMtoeCnQiL5cCscpii4USplA
	KCki5InpPEuKbpcrIyejsyA6QVq+XRg0guZjQ+9smB1NgSuHMr8n1qlk6s1XQcoJFoxsQ3e6dL6xd
	Eq4W5uGeazR7He8gWYUJWWSSQXrULICoSkO5c6ZEoMN5O4bdFp9EiwhWTEhKeZYC/wKOoV1IdZwWz
	NWtCPPyFyEypakaZbVUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNe46-0007Wd-Cl; Sun, 12 Apr 2020 14:58:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNe3x-0007VS-UX
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 14:58:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id c23so3395255pgj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 07:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rTIEU+1p57JM86oUR8vky9xhTGUDdAwAfZ33tlMYcsg=;
 b=q9OvvwnOaWHDNLWYzu2LsXXiB4ftLPKQ2afugtXjVzh6NDksIIV6u7I2UwUBEspwwk
 n66W6vK7wDSjuQ7T/t+clqMQa7gUyJjgtCeKVK6PSViX96D/vYZwiuJ3CJd+kT/ruDkc
 mZBZSMe+bc6AwLI3rUovgNAbsdpVOXp1nB6tEfbETSkh926wHm1JGwzNBHLtu3c/T2Ku
 jTcJJb2TK8chEc/rTVM9jzXSwvGcKPwEROiWz0RKIgwJ+DvbNS/lCeSUzfueuH+aD206
 dEB4CbbklGKaSu4yJalOzoby644Oez02zYAcXcCaBAMOgQf01m5N3mbb94jFQECYaKgo
 Nc2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rTIEU+1p57JM86oUR8vky9xhTGUDdAwAfZ33tlMYcsg=;
 b=KztzuV/1aGaB/uhpaOpGd4ylWkAoM1r27pPRO5ZdUxyJ0ADli33BGizN/riRKLLLDj
 WwyjdBpdpASimu+wXKv2wf9wmASFB00Yg9UpLd1+wukhj5qzl9E5V3oBL9xElYWl00Ph
 PUGLKfaRUBTVa0ZIrmYhVlcMwBfNBnyDz/bN5xG4P1wDFfZ05EHXUMgK6RhY64V3lxO1
 GZFTkqNr/OXqO1lxQys8RPGszRPWVWvPnVCCphnCvNGzZSTH7sgIHMmbpTbrzWXbUHaH
 LYw5SJZXCfKFdqiV0Ua02gBTLK0cQPnWG9nz1n8VAGIACrsFUGF05fB5fGlAwR6muxAF
 B3nQ==
X-Gm-Message-State: AGi0PuYnxvIBuvoycYqQuTcDYym6s07NgcD0hZWZyztafxaB45qIEACO
 HGl+B6dULpTZVyDP9I0uv+rr
X-Google-Smtp-Source: APiQypJNdy9YTjk5GB9lpiOXNesua8+VB5uyx8Q7MdwmHOFPyFoR3/iQDjMrQg8yGNKsXVtGXmbpvA==
X-Received: by 2002:a63:5fc5:: with SMTP id
 t188mr12852920pgb.291.1586703500250; 
 Sun, 12 Apr 2020 07:58:20 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:71d:af15:192:edd2:f211:80bc])
 by smtp.gmail.com with ESMTPSA id iq23sm6850656pjb.18.2020.04.12.07.58.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 Apr 2020 07:58:19 -0700 (PDT)
Date: Sun, 12 Apr 2020 20:28:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Amit Singh Tomar <amittomer25@gmail.com>
Subject: Re: [PATCH] pinctrl: actions: fix function group name for i2c0_group
Message-ID: <20200412145812.GA14305@Mani-XPS-13-9360>
References: <1586702060-3769-1-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586702060-3769-1-git-send-email-amittomer25@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_075822_512152_0AFD7399 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: matheus@castello.eng.br, andre.przywara@arm.com, linus.walleij@linaro.org,
 linux-actions@lists.infradead.org, linux-gpio@vger.kernel.org,
 afaerber@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 08:04:20PM +0530, Amit Singh Tomar wrote:
> After commit 6f87359e8bcaf88381b9c9c038929e0e6872d308("pinctrl: actions: Fix
> functions groups names for S700 SoC") following error has been observed
> while booting Linux on Cubieboard7-lite(based on S700 SoC).
> 
> [    1.206245] pinctrl-s700 e01b0000.pinctrl: invalid group "i2c0_mfp" for function "i2c0"
> 
> This commit fixes it by using correct name for i2c0_group.
> 

Another one ;)

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> Fixes: 6f87359 ("pinctrl: actions: Fix functions groups names for S700 SoC")
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
>  drivers/pinctrl/actions/pinctrl-s700.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/actions/pinctrl-s700.c b/drivers/pinctrl/actions/pinctrl-s700.c
> index 47a4ccd..f579a65 100644
> --- a/drivers/pinctrl/actions/pinctrl-s700.c
> +++ b/drivers/pinctrl/actions/pinctrl-s700.c
> @@ -1435,7 +1435,7 @@ static const char * const sd2_groups[] = {
>  static const char * const i2c0_groups[] = {
>  	"uart0_rx_mfp",
>  	"uart0_tx_mfp",
> -	"i2c0_mfp_mfp",
> +	"i2c0_mfp",
>  };
>  
>  static const char * const i2c1_groups[] = {
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
