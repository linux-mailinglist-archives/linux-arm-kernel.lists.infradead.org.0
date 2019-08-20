Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464DC96578
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yuRHvgJS1PWbtxkIgOcabb59PL5urvAbLJHU4fTVQfw=; b=TDBsYwEo/EuqMi
	VoskFywKwlV/dgmGWRhUcbqlSWUTv40HtpwXjUuL+LPvI4jVO0jO0wcRAUMqo6mTlXO/DrkRrUx/u
	mV+BlcAIiVV4GzZ03ajkSo8WKk3xQsAaKnnXHm5S/LDypLpKWFHblM5pDmFAM+JQQajDCF0i9D7hH
	4vp38t9N1cQM7ZejCeiCwj6nskFGDqJyC/fdvEZuADbikQp5ZWObCAxH+5TpncfjBi5ZXhmXAeJzS
	Q1fcuSIiSVRiUpy5uBySG5OYWcD7AL/01+EvQ3Z1zvjRNihtn6rHbgTrmaQhxRpz3lW8sY0xW0xh7
	oMVeLs3I3PGcaOQEbZqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06PB-0003e1-Cu; Tue, 20 Aug 2019 15:50:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06Oj-0003I7-2D
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:50:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id b24so3640682pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 08:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lYiV05ocruj81X/Vth9fboH+MCkm6RCCkzLgC1xVrmw=;
 b=fNasBHccmJLzP/62U4MV9sBWbQm7OW+UP4o3L47p/QOfrEwB12oFGN1SUeDNxTesTG
 oFVXAGPB/0yKLhB93KvtK39OGt91m5yjXxqiOI+Ne/g4PgiHtP6CnP+emNtm0S5AvRms
 wgLB3LlUTYNcu+oBWwl0mANSxbB8JPDz87T+ueLDw0vAvDTOpKYRKCXog9R0fmkLFIPi
 xzQou+UdcpRw5UdaAiachGeHx8UiMO5DSO/+NrOHHqD3BqcTTUABMqZt3SgFTXKwTSba
 S8dz/yisSiv/DmwTMJJoBD3YdQ0WsmL+fLh8i0MgTfW7wG4rpT5ju3QIDkhGNtSNHAG1
 7vmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=lYiV05ocruj81X/Vth9fboH+MCkm6RCCkzLgC1xVrmw=;
 b=I0wqNDRmBH4rJuqo5GYYQv3INXF1lQCAYBfdlQ5mj6hAts9Oc7pucTEmyEoD2nxtAW
 s0mNfkIR9Tl7tQ0CaJjtUDSh7fccptL1AosnAfmPjKK4IixRK5kfvo0hIi+FApsOx4+l
 tit9MYdt3ZLIqjghWaMej6LXMwHU/SAe9weWsBSExswvvgMtJ+QtX9eSSbbZfKziHdRN
 nwSoF3o68sn3+S+JFy2qPHDfeFLSTpO3P5zUmWCWVBDj8qy5wq/PVb1La9bq8zlYhGjl
 WgDmeCCyyU1lQDwV3nhzOgfC5D8brVTreX12A6bXbS4btivykIwbsxw72DREDdFh/PV0
 u/uQ==
X-Gm-Message-State: APjAAAVM/7Cvs9MVY4dHNigHY8WmVt3rQLUIlCwuJaWMRahp/m55+CVr
 g8frne48ASKAG/jvxhzppSM=
X-Google-Smtp-Source: APXvYqzcVZHhyB9DOXrMXzkr2BAV66JOb9oS1kaW6MbhIGd5s+OPyrNHhQiJmgISgBG2USF+eV4rvg==
X-Received: by 2002:a62:f204:: with SMTP id m4mr31653953pfh.7.1566316212404;
 Tue, 20 Aug 2019 08:50:12 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id a6sm399723pjv.30.2019.08.20.08.50.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 08:50:11 -0700 (PDT)
Date: Tue, 20 Aug 2019 08:50:10 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2 2/2] watchdog: aspeed: Add support for AST2600
Message-ID: <20190820155010.GA20408@roeck-us.net>
References: <20190819051738.17370-1-joel@jms.id.au>
 <20190819051738.17370-3-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819051738.17370-3-joel@jms.id.au>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_085013_386364_334ACBF1 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 02:47:38PM +0930, Joel Stanley wrote:
> From: Ryan Chen <ryan_chen@aspeedtech.com>
> 
> The ast2600 can be supported by the same code as the ast2500.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> v2:
>  Reuse ast2500 config structure
> ---
>  drivers/watchdog/aspeed_wdt.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
> index cc71861e033a..5b64bc2e8788 100644
> --- a/drivers/watchdog/aspeed_wdt.c
> +++ b/drivers/watchdog/aspeed_wdt.c
> @@ -34,6 +34,7 @@ static const struct aspeed_wdt_config ast2500_config = {
>  static const struct of_device_id aspeed_wdt_of_table[] = {
>  	{ .compatible = "aspeed,ast2400-wdt", .data = &ast2400_config },
>  	{ .compatible = "aspeed,ast2500-wdt", .data = &ast2500_config },
> +	{ .compatible = "aspeed,ast2600-wdt", .data = &ast2500_config },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, aspeed_wdt_of_table);
> @@ -259,7 +260,8 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
>  		set_bit(WDOG_HW_RUNNING, &wdt->wdd.status);
>  	}
>  
> -	if (of_device_is_compatible(np, "aspeed,ast2500-wdt")) {
> +	if ((of_device_is_compatible(np, "aspeed,ast2500-wdt")) ||
> +		(of_device_is_compatible(np, "aspeed,ast2600-wdt"))) {
>  		u32 reg = readl(wdt->base + WDT_RESET_WIDTH);
>  
>  		reg &= config->ext_pulse_width_mask;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
