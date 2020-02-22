Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD9D169010
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 16:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSQXcXk+er7Pj1tyTj4BajiYHkBTbS49mCzXVEnfhcY=; b=Bo0Hy831BR4pzh
	myZlUUa5J22pVz9H473blQ/BAXBrkvbI+i9AuKPJ1TNw9zfYwS5yp3EL60ZQ3irFYrgqv/6kyK/+s
	UbSyFdsC9kHL5o/ZE1FHyXvjNL0KulKLynQDSCUEo3Ho6TcWUOl8kR+jnJgsUz7hLVtN29lrrnDdg
	LjssL6ASXRZKOoDMFR6lBIGBTF259iNHBRBlhGJFpcNFIfG/KhFW4FVt7zetmL+iK+uCgQah1oF1k
	vG+VwLz65f9XaRXvN62SuwTHFV3jVOje5l87b/j/J2qy+2rhdzv4x4vxRQGltZsV/SsiD3XRYXUAk
	dkKvrQmSh4z6K1RGxcrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5XBd-0006KW-G0; Sat, 22 Feb 2020 15:59:25 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5XBV-0006KA-DV
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 15:59:18 +0000
Received: by mail-pg1-x542.google.com with SMTP id u12so2602063pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 07:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MzYWJC/9BXD1WcJiZNbRJwvggXBjntBidP31oxmGeNg=;
 b=PaHUwJq4K+HFLDXfO1Z5bZEh6kWOpxogv6v8ULD2S1gYcatBK4xjBjfhgxRW+lWmqM
 xIu9zYryFs3MJn1ZLGXsL4yEp+Dkc/FrgW7rNHm7w4OodydaijO7nCbiFVMk3ZpXUesK
 65xbP2OsaiKj0EwwAVahvaiAEodZWw/a3bufhxv8AUko8rozxIMvUfPDQd1FoR/X7o59
 q/teE6He2C8m10p1jizA87XD2wL2OTiSH6eYCDpGJTSsBroq6tK/H7wCgmLpC837TwM1
 4PDFzjjBbbANNlg+8aixTwKVp/CnvDsehTmfQpQMeC8Ro6FNAaXdX+bMuUDQye0phbfw
 0qYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=MzYWJC/9BXD1WcJiZNbRJwvggXBjntBidP31oxmGeNg=;
 b=Xv2cdLRCOKWKbhlcja2ixSxJi4lR1S4g38dCzrcR+g4VDAgObdL4cm+qiozCbNtmEE
 HNV8/2XlmC5tZpsZtLMNcNoh3CbMryIKDemNmCX7q68NcKC6tbpOB6gp9SiI6IIZsVBf
 NluOnNIPuzQDKqQjv0HdFWX0RhJRX7S6XbQUpmEyRV0DLEi7Fpjk18UR0wUFip9YsnrV
 PTsLno4T0GL6HVIrxIqs0AXe7ykfQnmyO07cFtlMH2NywU2rFTEkLm5w9DAYCPPX/B8z
 BUmAdou7n9Pwl+nQ3e6PgZ+te16pAipOdJsgapcm2CYGiUOuafgGFt8qblZQbJiB05S5
 tikA==
X-Gm-Message-State: APjAAAUp4g7jlVMFFmCwQR1qnPlT900oKs00nsyfcEvoxQXF5/JXdmG2
 L2PTmxdOG3cRbQsS3HUyfu8=
X-Google-Smtp-Source: APXvYqyEz+GN8PLo+6IySOzOQPgQjSYLrs/jV2UQ9LMFOVV5+CRwabU8szMuA3LDBxz7UTR79PczgQ==
X-Received: by 2002:aa7:979a:: with SMTP id o26mr43663603pfp.257.1582387155023; 
 Sat, 22 Feb 2020 07:59:15 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id z16sm6747504pff.125.2020.02.22.07.59.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 22 Feb 2020 07:59:14 -0800 (PST)
Date: Sat, 22 Feb 2020 07:59:13 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/3] watchdog: imx7ulp: Remove unused include of init.h
Message-ID: <20200222155913.GA12613@roeck-us.net>
References: <1582250430-8872-1-git-send-email-Anson.Huang@nxp.com>
 <1582250430-8872-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582250430-8872-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_075917_482219_21733BB5 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-watchdog@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 wim@linux-watchdog.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:00:29AM +0800, Anson Huang wrote:
> There is nothing in use from init.h, remove it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/imx7ulp_wdt.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/watchdog/imx7ulp_wdt.c b/drivers/watchdog/imx7ulp_wdt.c
> index 11b9e7c..7993c8c 100644
> --- a/drivers/watchdog/imx7ulp_wdt.c
> +++ b/drivers/watchdog/imx7ulp_wdt.c
> @@ -4,7 +4,6 @@
>   */
>  
>  #include <linux/clk.h>
> -#include <linux/init.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
