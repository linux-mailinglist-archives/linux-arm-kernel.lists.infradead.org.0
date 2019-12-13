Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ECE11E4EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sBWJmZjGotN99WyYOlSA1FoeVa9a1O+IpvbA7LtxFcI=; b=CYZu24nJieOewcCPI7+OqN7pR
	hMEsATVkMGi8dAtYJXQQx7ANsqjinIIWOExNgT1SxEz0rIcMxf6EwHTCGfjhS8gVfB6mY9BM7hc52
	MBMlIERRVYaBfrdot/DhU4kquwmev9TI1eFdXadXNE7Y2KlnBlhxpifEILKLO9NmufdEpeEezrEDj
	NhqaixQoKv0pDGFSOgs8tpgC6ZoHDeZTqaa9ogzFx7mJMpFTKV3W02XTLs4vjM+nlGJIHGs02veku
	gQaLPxdBUSWs7OFKbT1nPxUhutSG7M+7Y6vohBmZ3hauKP9Lr25MgqE4yWpihd5TMw9u1ccDiHTVK
	vR7kydbOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iflMA-0008IF-3r; Fri, 13 Dec 2019 13:51:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iflLz-0008Hs-Tc
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:51:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id p14so1517500pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 05:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IkiWlzBXeVbd3pSPzmXC9ZHVKdjut2jmY51Fm29xZAs=;
 b=i/RYUMmYOGOZ/VZKkxvFNK+7sCFzdMrMs6TAwG7vkLPleEc1/ItLPOymgcWVSS5G/U
 iMTxLpR/JsuQAOk5Ca8XHmU+ijB8RhElFbU9PNj/sOkgaNdwhbIY7f0X89f/+5qWquZf
 OtkK3OnWpS1/K0bgqrJas+gJAr2HyAlg7i0aOZUrTqRBOXGHGfG2M0LgwRrQfoJbYLRt
 kuBrwTLuAk9JI6agmzxTGL1XXgDWpLVXQOMl38OUyMrqFLmKz8DqyrwHOjMfMelCqsLP
 uBvsHhpOLHDtp7Rp1yPzGUozjOK/VHm8n3vgIa1+3i5y7GvZGnUd5IRJPWFIvrHtY58R
 mylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IkiWlzBXeVbd3pSPzmXC9ZHVKdjut2jmY51Fm29xZAs=;
 b=EiIQUk87F/cq1Jfz0ASHFtST25vZTgVMSp5PrwLkpCvuoe3bfpvk4XXHhT1ytCQ1sz
 OEBPZra6Bh+JNAfb94vLP3pgrSkutkgq8eLHnuGivr7r7BsBNsIJYszJkFvc+5OqYSiX
 /PSCzoZu6J88e5NMHBV7IhSAE5iARqmg6T41wjit5LUEilc393Pyl8CuiODKpevUxCfF
 N3Ga6ZcJVrTraRq4cIt5ifKYfVT5jLhhRscK5FQFbC8g4wxF+kLuaDm39L3m9wHsrIkx
 oTKhHm4dtEvcJ5ucKgMTWMqR4oYAutas3UgOvDwD3unCCXyFKnMeoXc5PZu0ToYVTsoV
 fEKg==
X-Gm-Message-State: APjAAAUsPfmFoZqynm/d+N5KcpPQMwe7bZklg4FveWNG5Xhp+47I2Bfm
 bKQSpRd6KMIwkP5wyFgBYR0=
X-Google-Smtp-Source: APXvYqzZcDPfj1DX9SnGHIm18wsz2wIAlsgXAU/nTMByZURxs8UdspDbhjZ639wV1GPUt6rYXKjOjw==
X-Received: by 2002:a62:e40e:: with SMTP id r14mr15971357pfh.115.1576245095471; 
 Fri, 13 Dec 2019 05:51:35 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 f30sm11194840pga.20.2019.12.13.05.51.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Dec 2019 05:51:34 -0800 (PST)
Subject: Re: [PATCH] watchdog: qcom: Use platform_get_irq_optional() for bark
 irq
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Stephen Boyd <swboyd@chromium.org>,
 Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
References: <20191213064934.4112-1-saiprakash.ranjan@codeaurora.org>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <b5b1d073-832b-e7bf-90b0-0cd4167ca3dc@roeck-us.net>
Date: Fri, 13 Dec 2019 05:51:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191213064934.4112-1-saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_055135_981809_859334B2 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/19 10:49 PM, Sai Prakash Ranjan wrote:
> platform_get_irq() prints an error message when the interrupt
> is not available. So on platforms where bark interrupt is
> not specified, following error message is observed on SDM845.
> 
> [    2.975888] qcom_wdt 17980000.watchdog: IRQ index 0 not found
> 
> This is also seen on SC7180, SM8150 SoCs as well.
> Fix this by using platform_get_irq_optional() instead.
> 
> Fixes: 36375491a4395654 ("watchdog: qcom: support pre-timeout when the bark irq is available")
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   drivers/watchdog/qcom-wdt.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
> index a494543d3ae1..eb47fe5ed280 100644
> --- a/drivers/watchdog/qcom-wdt.c
> +++ b/drivers/watchdog/qcom-wdt.c
> @@ -246,7 +246,7 @@ static int qcom_wdt_probe(struct platform_device *pdev)
>   	}
>   
>   	/* check if there is pretimeout support */
> -	irq = platform_get_irq(pdev, 0);
> +	irq = platform_get_irq_optional(pdev, 0);
>   	if (irq > 0) {
>   		ret = devm_request_irq(dev, irq, qcom_wdt_isr,
>   				       IRQF_TRIGGER_RISING,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
