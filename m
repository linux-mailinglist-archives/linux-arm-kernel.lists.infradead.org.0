Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2964305B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 02:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i1VBff6P6i38Pms92K/y1JlAz6itceFB0XYB6b586Ro=; b=jkxJDN4fXLa+MQ86WWNmG6OUHq
	xR6O3gP1YusQAgk7xwbEMLLfXesd+ZNAzC9PEowA0AvyjRf/9pBIVQaNjlPt4LW7tXsWamYn/ho4x
	8eGrRQwTfLPWVwHZkVOE6mapLHTIczw2PMxTbSKxX6gQ9DJT/jxGm72ohYp1zOk0rOLW2IBV47P2x
	C07G75Ut934no1nFx+y3WDiXVvs3T7I0+MBS0PHD3uLsUnKZfYaPpZFbQm2Hi4zKhHXnT8ALVYtpV
	Nx4EWsc8+91E2L1dfFw3IoakaG39jE3L3kMeNx5blYaOjF4yDdK/MfbIdSEKmNEWvw29dIM45p9Iv
	bo1WFFMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWVEs-0003vf-Li; Fri, 31 May 2019 00:17:42 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWVEm-0003vI-A6
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 00:17:37 +0000
Received: by mail-ed1-x544.google.com with SMTP id n12so3757410edt.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 17:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=KilQgTmnb5nYWh7a+i+EYwFVHm8qNkHvjaIrcsYy+bQ=;
 b=UYD6a11T0faxUH6FuHYRubUy66uwhxQIFEQHBDNi6Hm0rsKXch8bTe4qbEogjYXF12
 +tAXmYQJ2h0kxzyQiD4t336y85hpXCAo42Kpxvof+f9lePbWvaCcWzpiUJcAHGhnIRYb
 0uJU5TwEMlTC8awpUo4J5raGlGPbw6sNU0C0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KilQgTmnb5nYWh7a+i+EYwFVHm8qNkHvjaIrcsYy+bQ=;
 b=gTBpcu7W7y52LzfLYDlDJEHpiCrtH1aTxSZ0YTZ+vKd3hStiFUVZerRRu2dgmdExq3
 9oDscATwitc20AO93oT3mRZQZsb56xZ84ECKnuyQ9fc1jPCnrbMc684AM3Km+n6m1aAh
 Hb90jioGfJ+UYiIHASbc1j4oO6ZAPSeBOAbg5Dlsmq0cyMdplkopiQBok9KZpY6FzFmE
 57PDx4xl9rVK0ny5+SgOtwMFGO1WkiA0qk8+FZwo3xA66EY2Cpz/RrDMLYmTu1HWEaO0
 DpD36ihZgQ9jYIwUJhQlg3uoO0llBplQ2EyEJj4w45rfB7Vit5+8LvU+pMRJdWamVBaY
 3HuA==
X-Gm-Message-State: APjAAAWwVXtz3jAV9E8P/s5FO5hasWBzhhe6QquISnhfzwDHx8SW9TZ/
 UECI0LCU8rr4qmXWpofcwy8Zag==
X-Google-Smtp-Source: APXvYqxpHaDuapqKKB2H8FRfUx2YJNboFSFW9NVWgRnsRiE5ANLJDWfQM9va4NxyzqJDXI1k3Rd8FQ==
X-Received: by 2002:a17:906:843:: with SMTP id f3mr6346472ejd.70.1559261853687; 
 Thu, 30 May 2019 17:17:33 -0700 (PDT)
Received: from [10.136.8.252] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id o2sm684618ejz.22.2019.05.30.17.17.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 17:17:32 -0700 (PDT)
Subject: Re: [PATCH] pinctrl: ns2: Fix potential NULL dereference
To: Young Xiao <92siuyang@gmail.com>, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1559097838-26070-1-git-send-email-92siuyang@gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <ace57d13-6194-df8e-d2e8-fbc85d9ce21a@broadcom.com>
Date: Thu, 30 May 2019 17:17:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559097838-26070-1-git-send-email-92siuyang@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_171736_355833_57375D94 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/28/2019 7:43 PM, Young Xiao wrote:
> platform_get_resource() may fail and return NULL, so we should
> better check it's return value to avoid a NULL pointer dereference
> a bit later in the code.
> 
> Signed-off-by: Young Xiao <92siuyang@gmail.com>
> ---
>  drivers/pinctrl/bcm/pinctrl-ns2-mux.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/pinctrl/bcm/pinctrl-ns2-mux.c b/drivers/pinctrl/bcm/pinctrl-ns2-mux.c
> index 4b5cf0e..2bf6af7 100644
> --- a/drivers/pinctrl/bcm/pinctrl-ns2-mux.c
> +++ b/drivers/pinctrl/bcm/pinctrl-ns2-mux.c
> @@ -1048,6 +1048,8 @@ static int ns2_pinmux_probe(struct platform_device *pdev)
>  		return PTR_ERR(pinctrl->base0);
>  
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> +	if (!res)
> +		return -EINVAL;

Right, usually not needed if devm_ioremap_resource is used since it was
checked there. But in this case, I do think it needs to be checked. This
change looks good to me. Thanks.

>  	pinctrl->base1 = devm_ioremap_nocache(&pdev->dev, res->start,
>  					resource_size(res));
>  	if (!pinctrl->base1) {
> 

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
