Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7DFD106F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BEZYIH2DLHcqWrSakwbBadbL8ixxBJ2G4hFaIvNVPrw=; b=fhUuMnMJFzrd6Vtgauz4JhO73
	AYUSfE4gSql6T/mQSQXeXlo10r3lq7YYDPSiTi+DCnTs25zuLl3hSuZzgvinoqiaA3DzLwxRzfGC0
	i4NzljAR6Nh7bfyLQ3oiGzNc/cEJ3EQZ7z3C5mGSRKIQnCtQz6ZMEiWz0pSl75DoXSIQunlUYT9Zd
	p0ww2d79SJw8rvIatN0Z+Rn2qlats/sgPOO8pgTqj4oakSuPpmVogOk2SHMl7LwmcF4TcxBlDrrR9
	YVm9OtiE7zFVYREmqWTI3ZuTjj+S0Ij8j9D/fPJdX7Ww0GaZoith0jiPzqewUC6cAf2hezM/8RWYs
	kZDNcueQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICFB-0001AY-Ko; Wed, 09 Oct 2019 13:43:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICF3-00019Y-QQ
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:43:03 +0000
Received: by mail-pl1-x642.google.com with SMTP id d22so1096203pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 06:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4Edus/v7OUgnZTtV64pllzP4xpuDmz162zPn+6vHICQ=;
 b=cQBXV3QOipArjfvZb00WHn16UzyYvh6jngj8uALWcOjMYAGuNVXzGSqLjAdnjKZgRc
 77esMF5OqeMlqTlSItkzaLVdUZ+t5i5AxCReElLu3LUcnXQwbB1//fD4xSewcNGd5nJZ
 DGXKLyR9Dv10AFGxdk5CKKowOqoZ3NqPy2yBDye4sl9+7CcqgDGtKyGc2Kyln8/Uve8W
 Jf8nFktHv5+egEbVpEVpu3Pu4VKBdnGeF//UdKwN8fzU/amY4hNEGufCxPiPp6Kr/xKU
 UGRGG0swDhlMsuv2tHFj9VSLMQq6wT5Xiv7s0eQid2cDgGryRbsLkuxq7I5T3ZZf422F
 RHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4Edus/v7OUgnZTtV64pllzP4xpuDmz162zPn+6vHICQ=;
 b=JcjVZSEvKZDqJ3E3i3HGQKUronoDdZdzCC2pauKZ7vLLqqImqMKFAdaCABTwkjc2lk
 Gux7VTXXfOMo6Khyndk3iJHyW84vhUdF6bqbVB8oGlSlZm6xjEOIlUr+hjSLSDL/2vDV
 VP/1fj3qD+0hk6Bwl6kdnKCEgt7puqcjwV0waUVkBC541msDfo/ON7YJaOZlYL5ugnmu
 PFJakLqYD6fh9y3Me2zSthGKSHtCdU2C8U7QM4aK5wrxdiziR4Hz3Hl956tmjaJRgM1w
 PgPOPICcVxYH5Otv4xs/SooH1jri1sp6hReVscX/EqDMyA5oepnk7SzUcvZfmR2JLnsI
 nUsA==
X-Gm-Message-State: APjAAAWNfswuVTBkuEHxjFZVJYkdi8qzRZzEQOwMqy2tos7wAG2056sC
 b3rnkMPaVWk6FBtWG63b77s=
X-Google-Smtp-Source: APXvYqygUQnSCIshs8yBxJ1/wLFZjClbo1d/vkB6BHYgR00wYGq6lQcP6f2RjgwCoTyL9yixqiYMDg==
X-Received: by 2002:a17:902:8a96:: with SMTP id
 p22mr3129837plo.272.1570628580824; 
 Wed, 09 Oct 2019 06:43:00 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 ep10sm7566436pjb.2.2019.10.09.06.42.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 09 Oct 2019 06:42:59 -0700 (PDT)
Subject: Re: [PATCH] watchdog: imx_sc_wdt: Pretimeout should follow SCU
 firmware format
To: Anson Huang <Anson.Huang@nxp.com>, wim@linux-watchdog.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1570606667-16729-1-git-send-email-Anson.Huang@nxp.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <de796993-a973-1b49-05fb-303541da0a77@roeck-us.net>
Date: Wed, 9 Oct 2019 06:42:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570606667-16729-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_064301_861790_8CE8006B 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 10/9/19 12:37 AM, Anson Huang wrote:
> SCU firmware calculates pretimeout based on current time stamp
> instead of watchdog timeout stamp, need to convert the pretimeout
> to SCU firmware's timeout value.
> 
> Fixes: 15f7d7fc5542 ("watchdog: imx_sc: Add pretimeout support")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   drivers/watchdog/imx_sc_wdt.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
> index 7ea5cf5..8ed89f0 100644
> --- a/drivers/watchdog/imx_sc_wdt.c
> +++ b/drivers/watchdog/imx_sc_wdt.c
> @@ -99,8 +99,14 @@ static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
>   {
>   	struct arm_smccc_res res;
>   
> +	/*
> +	 * SCU firmware calculates pretimeout based on current time
> +	 * stamp instead of watchdog timeout stamp, need to convert
> +	 * the pretimeout to SCU firmware's timeout value.
> +	 */
>   	arm_smccc_smc(IMX_SIP_TIMER, IMX_SIP_TIMER_SET_PRETIME_WDOG,
> -		      pretimeout * 1000, 0, 0, 0, 0, 0, &res);
> +		      (wdog->timeout - pretimeout) * 1000, 0, 0, 0,
> +		      0, 0, &res);
>   	if (res.a0)
>   		return -EACCES;
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
