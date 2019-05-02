Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3DF1231D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 22:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnjD0OoEOJMeL2MVP978co7C4u1zoZ3p4GuwOcFQ3tg=; b=Waj7+UNldhTDq4
	k02lUangdVIIog/Y6IeKDkxOQUs1KYtJhGlqwe2fMVu5D1pOi0o7jJHhKIgf8D5lBsr/uLvEAVxeS
	2JPASUSPjc+BBWcUi1Jv0auIk9hHxHvMeJQA4n6IuinCwrBZMwYwkzuxZ3IJYIMI1K/VO8eYMf3nT
	m9+4Pp3SWAdFRlcgUDevftatcWiOC+k4P6hAwewz7bFrU0ayLaf/eeHw3nyg/xXVU3I8aFvg4yeZN
	qFXgdFtXlD1VkQVjqXBeqQynnOrvCesjeOYq7psYQJWER+BrzCBv0CttBEZMqpgBr/3i6EtdKHlmP
	8xU9Vl0c7vFifKwTbJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMID0-0003Dg-9Z; Thu, 02 May 2019 20:21:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMICt-0003Cu-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 20:21:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id y13so1670300pfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 13:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RSVFzqBrNoAzGByRQNnOze9LicthP1Zxl3KzGO68CDM=;
 b=HWx4202fdM6hgHbbQQbOCTOFjQO3TLGOtDwId2KDBlfH30aSG/7brUcfjmpDaWYqT3
 eFlgZC4UaIEyH1W/TgpcMokl72eG7heORhYTf5hLq3ddjpfaKH3a4bA9cXPngFWefwbD
 URW+U2ak3/2ADVYe9ubwMHSaEQxkDOhNvKCaE8Cxb6qSVI8iibrMAU+Rp1Rxloc+12o8
 NCvWGlpklHsKLBmvGLQQkz5AVpU2fi/9Fj/ZClx+PCIIcS8eB5/aP4bherxMBuYxUvx5
 gZkTz7eOCUMwO5KoGiKkFOpSITwMrVFd3nfoIvWTp2NSBdRFqruHZu4vLWgGoccWkG14
 g3xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=RSVFzqBrNoAzGByRQNnOze9LicthP1Zxl3KzGO68CDM=;
 b=oHSXeKxOy1WqbocWfqRyvwBSilNR0GJQWHJaBtTVtTbBGdEWBWucKbFnT8uNyET0we
 FIelPWOcP1ilqfXuoR8T7GfQ9uchA+6InrBEnIvSdSpII0cJTzrlHfOxrWnm2QEeGvGw
 6Y904LRIgnQTJy2oTGShj3MdxJs+gG/hBE2i7BrA6Sp4ijcUNQ0mx5aG+fQuflU9SFSY
 A6BWeCK06gxBngLMmeM0CRtam7C5aoGMwdEZg2+1i7/RQC8DlPxii8NdvvGy/C3FlfrN
 YW/Bm6hMnhb6hOFbno31qA8/IOtjx/OyB52Wa6oH/gUDqvrZcXQsTqOlMakEua4MLnY9
 crEQ==
X-Gm-Message-State: APjAAAW++q8OM6Cq4IK1MezgEx7sfMM0hgXkI8Vs1aYwsJs1/0EtT/4r
 elhx0nj+a7q90KpU9eqPJgM=
X-Google-Smtp-Source: APXvYqyqxBdfissQiYlYy8sXzM14Kk6vmbI9ypGeaWGJkrP5xZhgv3S/pXhmaX20NrsLpXPiyu8UeQ==
X-Received: by 2002:a63:d908:: with SMTP id r8mr6061828pgg.268.1556828485710; 
 Thu, 02 May 2019 13:21:25 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 15sm20555pfy.88.2019.05.02.13.21.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 13:21:24 -0700 (PDT)
Date: Thu, 2 May 2019 13:21:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ludovic Barre <ludovic.Barre@st.com>
Subject: Re: [PATCH V2 1/3] watchdog: stm32: update to
 devm_watchdog_register_device
Message-ID: <20190502202122.GA27894@roeck-us.net>
References: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
 <1556806126-15890-2-git-send-email-ludovic.Barre@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556806126-15890-2-git-send-email-ludovic.Barre@st.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_132127_391069_7D7031C6 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 04:08:44PM +0200, Ludovic Barre wrote:
> From: Ludovic Barre <ludovic.barre@st.com>
> 
> This patch updates to devm_watchdog_register_device interface
> 
Not that easy. See below.

A more complete solution is at
https://patchwork.kernel.org/patch/10894355

I have a total of three patches for this driver pending for
the next kernel release. Maybe it would make sense to (re-)
start this series from there after the next commit window
closes.

Guenter

> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/watchdog/stm32_iwdg.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
> index e00e3b3..e191bd8 100644
> --- a/drivers/watchdog/stm32_iwdg.c
> +++ b/drivers/watchdog/stm32_iwdg.c
> @@ -243,7 +243,7 @@ static int stm32_iwdg_probe(struct platform_device *pdev)
>  		dev_warn(&pdev->dev,
>  			 "unable to set timeout value, using default\n");
>  
> -	ret = watchdog_register_device(wdd);
> +	ret = devm_watchdog_register_device(&pdev->dev, wdd);
>  	if (ret) {
>  		dev_err(&pdev->dev, "failed to register watchdog device\n");
>  		goto err;
> @@ -263,7 +263,6 @@ static int stm32_iwdg_remove(struct platform_device *pdev)
>  {
>  	struct stm32_iwdg *wdt = platform_get_drvdata(pdev);
>  
> -	watchdog_unregister_device(&wdt->wdd);
>  	clk_disable_unprepare(wdt->clk_lsi);
>  	clk_disable_unprepare(wdt->clk_pclk);

This disables the clock while the watchdog is still registered
and running. That is not a good idea.

>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
