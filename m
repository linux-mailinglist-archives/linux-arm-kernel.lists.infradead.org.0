Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AFE90597
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ii7LRQ1FqtXhgGeTxBtZxIj62QJTSiqULYP0DG47uHI=; b=N2DZCRt5wua5jo
	k//nRLUriPal0isVSVsPpkEIuSZxRq5VH9RouJCpzVCmHEkdAxuI07PDLHnthLhnWbtdmBIBGgncB
	DUT3GM/iivbGMXhyAMZEwCWASvQ09HePyQ98WldHMIPwCE8OK2NC6HjvkO0QJjmFCF3LHvYeFn8yj
	d2Uw9FqEyt+b0ZjdxzUWtwl5Y2AVJwALGNMAVFgD2AgzD0de5y1XMKSQb6/OdwztviZ9oHIpf+NO3
	NK7hjnTaKQ0xDh2VuntRr6vn9ij7VCpnFmdWIC4oHvlEqLcMCHUrOLPRXO5lTt0OC5yn3YPzWOfyN
	km9b6uw4J0aGUOhWi5qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyetO-0000QP-Cl; Fri, 16 Aug 2019 16:15:54 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyesv-0000EZ-9j
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:15:26 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so2626852plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 09:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hCoByiGuId6oRoUOKH9JltqEdAI/w+EDZR7ajwPu6Eg=;
 b=cEY+U4e9trgXyTjSEt9vrxrwlEj6etSwe8plNjb5q28w+Wxur+kCTmIF226UIgzk75
 dvPoTVJMRci3+YUoOFEBhnmPFKJWKXWQYi78uuYCC4gO3XWUoBq8L8m3OJF0iSy0z/0b
 fOrNu1ZIeDNAgu/++i71X8rIk6UWS7hrAmik3Fb1VfxRK6qRFS8/LBHOcLADPdHqmDBf
 nUSpPGyXinAFNpx+NMt59xxGH/sP9TBP+3a0nrez4KxiHw0nv8OGC3gcSBL63R41w7M0
 j4yynVIgTUUGsAl3YjT0hVhsXLDfXJ+9hX3K5lKIL7hCg4CvT94Ujts5O2T+YVPMdLqk
 ZyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=hCoByiGuId6oRoUOKH9JltqEdAI/w+EDZR7ajwPu6Eg=;
 b=SIYNRIiCxdxPH9zotft0FgnDdgpCV3QIT6Lwr6/6yeX3UFGtKfN1bSpUXd/eGonX4h
 /9JBUVcaqbB6hFV711FKEgn5UjxSuFThVgvDCsNO8QrjhaegD7MsTVTGgz0EyRKQYkry
 FhlGkbLczrFxG7wwokBHQtTUN8ll1fcJRpfrmrlBP6teyk/n40ersGsvNXmVt3cvG8iV
 Urct3nhECwPuw7AoJO4xsJduj+g4Q91m0qH6gjCnN72xzisRIoz1sQIxoXN0lAKbYYkg
 lmtxcwgRfhMo44xLw14qQCzLtCpmmhpXjWht3t2B6+tlSFGqDZ9OXBnz0bFnhNCqFep1
 9V7g==
X-Gm-Message-State: APjAAAVgGk1EUqnmGWRX1Tg4gThJ2c4sJu0hRxO16UPZEiW18hh2nlS+
 lC5qc53OLnLEP0nTZpHGUic=
X-Google-Smtp-Source: APXvYqw+LolKRAdIcj6iyMrq3orXbq1VOEpKjI2WhIQf3CZL5CeFaTHUCj2rnQbX09fALyYKmfk+xg==
X-Received: by 2002:a17:902:b110:: with SMTP id
 q16mr155147plr.273.1565972124591; 
 Fri, 16 Aug 2019 09:15:24 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id u69sm5262143pgu.77.2019.08.16.09.15.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 09:15:24 -0700 (PDT)
Date: Fri, 16 Aug 2019 09:15:23 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH 2/2] watchdog: aspeed: Add support for AST2600
Message-ID: <20190816161523.GB5396@roeck-us.net>
References: <20190816160347.23393-1-joel@jms.id.au>
 <20190816160347.23393-3-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816160347.23393-3-joel@jms.id.au>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_091525_388693_23BC3529 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sat, Aug 17, 2019 at 01:33:47AM +0930, Joel Stanley wrote:
> From: Ryan Chen <ryan_chen@aspeedtech.com>
> 
> The ast2600 can be supported by the same code as the ast2500.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  drivers/watchdog/aspeed_wdt.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
> index cc71861e033a..94f73796ba9d 100644
> --- a/drivers/watchdog/aspeed_wdt.c
> +++ b/drivers/watchdog/aspeed_wdt.c
> @@ -31,9 +31,14 @@ static const struct aspeed_wdt_config ast2500_config = {
>  	.ext_pulse_width_mask = 0xfffff,
>  };
>  
> +static const struct aspeed_wdt_config ast2600_config = {
> +	.ext_pulse_width_mask = 0xfffff,
> +};
> +

Why not just reuse ast2500_config ?

Guenter

>  static const struct of_device_id aspeed_wdt_of_table[] = {
>  	{ .compatible = "aspeed,ast2400-wdt", .data = &ast2400_config },
>  	{ .compatible = "aspeed,ast2500-wdt", .data = &ast2500_config },
> +	{ .compatible = "aspeed,ast2600-wdt", .data = &ast2600_config },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, aspeed_wdt_of_table);
> @@ -259,7 +264,8 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
>  		set_bit(WDOG_HW_RUNNING, &wdt->wdd.status);
>  	}
>  
> -	if (of_device_is_compatible(np, "aspeed,ast2500-wdt")) {
> +	if ((of_device_is_compatible(np, "aspeed,ast2500-wdt")) ||
> +		(of_device_is_compatible(np, "aspeed,ast2600-wdt"))) {
>  		u32 reg = readl(wdt->base + WDT_RESET_WIDTH);
>  
>  		reg &= config->ext_pulse_width_mask;
> -- 
> 2.23.0.rc1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
