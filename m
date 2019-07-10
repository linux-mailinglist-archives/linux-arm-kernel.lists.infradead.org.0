Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59A664C56
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 20:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9pihl0LuXbI8TRr1HC3flQ0soweQpb4LEucKkbReUM=; b=Z9XiBbyJ6ZeCBP
	+iGZJD+tEAk+WBSBIS3beRQZThlKHbIxJvX2gemX32J90D9F4JG4zEek1iNcVA+SDtKZ0NLTzm6KM
	IDwqLKbzrv0Tvi+n3udRWDHqOZvmkQaBD0sJW1YlCq0Z9Tbl14vZyVOMjxNuqwJzodSToUm6ljUCJ
	FvzuD/hPKSk7ruSfO9+lAAmqnlAUDvYqzyYDzlYn4/AmOjwtA/rIvDjKzDaReBfc0n/QuWl9F5z6F
	LVIFA67PP5OsOHD9dz1crhPq90Z7EsEH78ZG/2JAoaI8idmaaVN/jqVlisXInehQ8wDJ7RR7NqoMb
	96t6wBiyZpfExztjhZ8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlHYl-0001Er-5f; Wed, 10 Jul 2019 18:43:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlHYX-0001E7-DW
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 18:43:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id z75so1651196pgz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 11:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0Hm/9BlG2vs6dalxd4Lxl0B723YTAQ0cgyoNTbJ0CW4=;
 b=ViG9maV71yomRUGX8jU5hhY5FVev8TYVmQqF/yL4Rt2nkfJS0UWVtCUg0F8uGgMBQ0
 v/h4zXJ5uYVk9Lr7XNnNzUJ2wI3XITjx8HyNTX7cOlA40N/JZ2eaJueAfF6grg3NssY+
 lYVhizviWNbIZJNhSF53wq+A1xp/iulzeBsQLuy52pT3IcXFo56Pw2x1AK6TiNAUlmJT
 GQNg3uTrhUyo9ArPgFz5HHAqpjf08fPU6NgJaKrPVxxdf+z5zBLa7a3hGLhdwcDB2MOi
 NMmszQVoEOlBa2oLL4zDYSxTpRCtCw9QQtbaoEXMQA9JwfW6S//mHLQKy51BLSFgHYFN
 EFVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=0Hm/9BlG2vs6dalxd4Lxl0B723YTAQ0cgyoNTbJ0CW4=;
 b=SHP/tLTmBW10uMQ2Fy3UJHk4576qtsImoz5b05tw8w7d1rDg1BDMWA22SCL25UTXRo
 KO2hGfrZ+FUzMiFQWvJfBFl8mQNI2MPpjrJ/rvTYLceXqIUGLnLhiY30Q3tef83t9HOF
 b+Ja+DTknTpQFZlejilxBuWSCBzOZ1cOxVLOLKarvkfw82uNV4m+uPPg4qgXjIARXx4A
 uYDoIAEhKpYdRzlDjbClT4uOrHcQNSoX0FZleZR4lVwjwAVPXHFCKg65aqzrquTGwZnQ
 2ksbxHWTLXVAtH9mbJAHXYbmly1KnzwUjgoPYsfdrjBhfAZ11YiYBFzCFgHMpz4VGtwH
 y7Gg==
X-Gm-Message-State: APjAAAWkZ89/e71/X7lZKJmP988MV2FFad1yiO7+MQDVR5HjDYSvxkpd
 lTBY2xlVotc2wT+ejzpz9zA=
X-Google-Smtp-Source: APXvYqwEY9f/6Aqc9JPG54Pxy9aLQuyajI9Ihr11NbBTwvDbuIOfGWIMRv1meOxBcIUf0FABfqdSog==
X-Received: by 2002:a63:e1e:: with SMTP id d30mr38588995pgl.100.1562784183684; 
 Wed, 10 Jul 2019 11:43:03 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id m4sm5238919pgs.71.2019.07.10.11.43.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 11:43:02 -0700 (PDT)
Date: Wed, 10 Jul 2019 11:43:01 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] watchdog: digicolor_wdt: drop unused variable
Message-ID: <20190710184301.GA2961@roeck-us.net>
References: <20190710080904.317599-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710080904.317599-1-arnd@arndb.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_114305_483656_D13B7AC6 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-watchdog@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 10:08:57AM +0200, Arnd Bergmann wrote:
> The last cleanup patch left behind an unused variable
> that should have been removed as well:
> 
> drivers/watchdog/digicolor_wdt.c:121:6: error: unused variable 'ret' [-Werror,-Wunused-variable]
> 
> Fixes: cdad26977e3f ("watchdog: digicolor_wdt: drop warning after registering device")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Already submitted as https://patchwork.kernel.org/patch/11037487/ ...

Guenter

> ---
>  drivers/watchdog/digicolor_wdt.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/watchdog/digicolor_wdt.c b/drivers/watchdog/digicolor_wdt.c
> index 33cda95bd238..073d37867f47 100644
> --- a/drivers/watchdog/digicolor_wdt.c
> +++ b/drivers/watchdog/digicolor_wdt.c
> @@ -118,7 +118,6 @@ static int dc_wdt_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct dc_wdt *wdt;
> -	int ret;
>  
>  	wdt = devm_kzalloc(dev, sizeof(struct dc_wdt), GFP_KERNEL);
>  	if (!wdt)
> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
