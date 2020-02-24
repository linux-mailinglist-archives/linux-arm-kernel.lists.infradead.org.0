Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB12169CDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 05:04:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lXWnXS6cA2mkItaSjaYFz4Yx/S+e7ZUSI+NcOG7YV/A=; b=hRhCl29/MyPeVwjpud+thnFwM
	w79dihpM/pFgbfUEO3pId0Bsy3/0iPqexaMyA/dxJZNI3UqnxNOnfWoLp8m4DTJuexGujGgE+dL1L
	Kt15VF+j9q6okIKGC2zt2I+F66MEnTTc5wNmnwVeIiQ+09/PXhsQGB96+HXvf1QoyDWdeRPOD+uMD
	4ulvOBGg7zBHhfCUICXSsqVbJ2G4X+0j8fh4UKMnhNMrOvdxecIbZGgHu98OWWuKFey458shhkpdS
	gbD9Rxt8ubtfc1v/MKMZKRESRjf3LPHj2URdr7U+o5iqx26bYYBinZGERApJt9ogdVENs/C5vtS4B
	NSv1cpxiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j64zC-0008UM-7I; Mon, 24 Feb 2020 04:04:50 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j64z2-0008Ta-87
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 04:04:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so3499160plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 20:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pCSYBBOwT+fM6P/sllrr2JTwBl3qxoctfKfCeZ8ANVo=;
 b=MXwEtF0NnFJ836tt6ik56UlRufY7+qvx4HKXebaqTBIZGGIniU8oKZ7XKVGLvli3Xa
 zKbs1k8Ezqz+u0VQuOb6EDcHxLPATsf6xKxeHtBmRZ5e7Sc9p5/P4ES522WuKh1LM/+H
 G0JZBF39WCgbj+3y9HwpIsTvABCXcZ4nKgbdUXyUFrGjpGF59/2sE/hu9+JCXcSpE0l8
 9DCOX489rimBU0THzjGfxsZAhIR8HBGZ2EEIigYmVquqSDArErjwcsPyrg91G26N1twm
 pMNk9M1qxh7d2bJWlnyMS/kkjoImcTjMrFa8M9XgDxkkd3tdT3Yel1K2JFQ6cOnsWs0q
 28PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pCSYBBOwT+fM6P/sllrr2JTwBl3qxoctfKfCeZ8ANVo=;
 b=H633NOvd8R46JK2kUY7IUzyApm5l6nYQ/B5GO7wmzQrgP7z+tTd4QLoSxea/cDQh09
 3AtbWdNixAldb9WpXc7UeyeNgFM/iArONycWl3AEutCyQxeDPhALXUH6VTeWIOEBdcDH
 ym5elbLqWFScUYENTWmCRFKj1jVSHGVz6M2E8K7ma4RDx3sT6xUJCyPSNsaZZHK1TXYr
 KhltG1WjKUBuKrKnlPPuFqOukcpT3Kf/i7W8tCMbkK4O7MoGOfWr6z6voMtiNOV/kyDU
 n6s/XbkbdPS6kp8G7iK4GUo+QQr2VaLiODItafdVpwU9IuOxmNIRVHsny7MTB5D51/cQ
 6X3A==
X-Gm-Message-State: APjAAAXlMdvy9/s20swG0EVURY0t4GW0vi5sHdx5ci0yenCM65MVCGAL
 KNYcF3HN+tvSufNhy04g1USFlRkF
X-Google-Smtp-Source: APXvYqzm5v7u9jGJAuBoo8Ra2wrfZ43pgyQPxXoH0WQUF3JOVLIgK3hktuxAFaB+uatphbCwIYK1AQ==
X-Received: by 2002:a17:902:6a88:: with SMTP id
 n8mr47670525plk.265.1582517075508; 
 Sun, 23 Feb 2020 20:04:35 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 188sm10321695pgf.24.2020.02.23.20.04.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 23 Feb 2020 20:04:34 -0800 (PST)
Subject: Re: [PATCH] watchdog: imx2_wdt: Drop .remove callback
To: Anson Huang <Anson.Huang@nxp.com>, wim@linux-watchdog.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1582512687-13312-1-git-send-email-Anson.Huang@nxp.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <968aab4e-50ed-83d2-cac1-d0a216060628@roeck-us.net>
Date: Sun, 23 Feb 2020 20:04:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1582512687-13312-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_200440_316255_C5E8658F 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/23/20 6:51 PM, Anson Huang wrote:
> .remove callback implementation doesn' call clk_disable_unprepare() which
> is buggy, actually, we can just use devm_watchdog_register_device() and
> devm_add_action_or_reset() to handle all necessary operations for remove
> action, then .remove callback can be dropped.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   drivers/watchdog/imx2_wdt.c | 37 ++++++++++---------------------------
>   1 file changed, 10 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
> index f8d58bf..1fe472f 100644
> --- a/drivers/watchdog/imx2_wdt.c
> +++ b/drivers/watchdog/imx2_wdt.c
> @@ -244,6 +244,11 @@ static const struct regmap_config imx2_wdt_regmap_config = {
>   	.max_register = 0x8,
>   };
>   
> +static void imx2_wdt_action(void *data)
> +{
> +	clk_disable_unprepare(data);
> +}
> +
>   static int __init imx2_wdt_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
> @@ -292,6 +297,10 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
>   	if (ret)
>   		return ret;
>   
> +	ret = devm_add_action_or_reset(dev, imx2_wdt_action, wdev->clk);
> +	if (ret)
> +		return ret;
> +
>   	regmap_read(wdev->regmap, IMX2_WDT_WRSR, &val);
>   	wdog->bootstatus = val & IMX2_WDT_WRSR_TOUT ? WDIOF_CARDRESET : 0;
>   
> @@ -315,32 +324,7 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
>   	 */
>   	regmap_write(wdev->regmap, IMX2_WDT_WMCR, 0);
>   
> -	ret = watchdog_register_device(wdog);
> -	if (ret)
> -		goto disable_clk;
> -
> -	dev_info(dev, "timeout %d sec (nowayout=%d)\n",
> -		 wdog->timeout, nowayout);
> -
> -	return 0;
> -
> -disable_clk:
> -	clk_disable_unprepare(wdev->clk);
> -	return ret;
> -}
> -
> -static int __exit imx2_wdt_remove(struct platform_device *pdev)
> -{
> -	struct watchdog_device *wdog = platform_get_drvdata(pdev);
> -	struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
> -
> -	watchdog_unregister_device(wdog);
> -
> -	if (imx2_wdt_is_running(wdev)) {
> -		imx2_wdt_ping(wdog);
> -		dev_crit(&pdev->dev, "Device removed: Expect reboot!\n");
> -	}
> -	return 0;
> +	return devm_watchdog_register_device(dev, wdog);
>   }
>   
>   static void imx2_wdt_shutdown(struct platform_device *pdev)
> @@ -417,7 +401,6 @@ static const struct of_device_id imx2_wdt_dt_ids[] = {
>   MODULE_DEVICE_TABLE(of, imx2_wdt_dt_ids);
>   
>   static struct platform_driver imx2_wdt_driver = {
> -	.remove		= __exit_p(imx2_wdt_remove),
>   	.shutdown	= imx2_wdt_shutdown,
>   	.driver		= {
>   		.name	= DRIVER_NAME,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
