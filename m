Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6AC2475E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 07:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYyUZSe9Ds8gOAX/MNdsoisPanjGCh/PunYKwKjUXiU=; b=iOyBZheBNtl/hG
	ta3R3vgzW06wmL/XO3NwEhph6MIVmHkrUST9OvIKk/kOu6Rc9ZIHYQVQCUxHR7oJBUFbhpFQwD5qX
	6iXd6EgTMgIX3dfpeqaKrOe4YFLkBJo31dTC+4asI1OUJNVSP7EQ/zvI2ylsJfCjI+EaYi9lk2t8/
	jEOpLDYhdc0KLKy1Z/BFfwxbGsF4NUgArRjlBCIEiCTl39TeKUanb2wCIQ5oWcW+xaP+cqmkxjtp0
	R7dLCUF+06hvAY0ZmNoKif4TTBKhnnROY//PyLyTO4gH192Qyql9t6AagH9IZMa7AXfZ2PNcKpEYe
	i+/9kLLDJviPwBvTvWWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSx4Z-0002P9-1L; Tue, 21 May 2019 05:12:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSx4Q-0002OT-R8
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 05:12:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id a23so305271pff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 22:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gx1SGYrwI5mUah9I2zR6Xi9lfYNImzIgSdYOU50e3g0=;
 b=X8hqHhpVX91ECKMpYxn9UyAxoKe6DubrkYuZHBUt7IDGEMweYJdYDuVB8iXkSYNi6o
 S2qAuCC2UhKAX62G+6IjbpFhchp82cVvNyiWhHswcjnM06t2c5TfU3LWP7mvZACw/NuD
 MhVH2nImlw2wdu4RlmBfX16PXvQCaI561tJpnRSIqrwDjocXsXo6BqBnPnn+EEaDLbCh
 5WU9A1fDIG9yGcXgy1Wm2ooGX8aoTZQIJcUaZ0CiYzriyzC90Nd0qUXps6X8e3elp1Yo
 UAxJuDKI8e1AXd3sfbLwYyi9SNPBR0Z+7VYqXQ3lGcjn/GOQpOpjsRWUDoJU5SzHTRwu
 SViw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gx1SGYrwI5mUah9I2zR6Xi9lfYNImzIgSdYOU50e3g0=;
 b=tUuu4Q73pCOTKyT3iSlAEai7ragheurdu7CGvtJk6/Gw2eF1RMxOxaPxjTqj333bcV
 jq11s6r88GQnx0AE+qe6R1YHs36mkXe7raamQLdPk6SO1z7ToURA1FqhvTWvuNqlfMcR
 aYMVm3SQPpd8ZiCmz09ux1OjymYaqRbOINcR3ddL4Clg4OSmfOskGhQGzrDOiHJYux0O
 LoOxYAbZCM84lMkAH2fVBCOyrJHqDzZjpl4/sin9Qr11ztZ+yOJ550kbxFm/yLtx0mba
 sV32fXMPg3ASP7TBFrUG4tA/6/RLXNXiRWGGWEaHbI6MpG9K5Gb6P0H4V3jdMADuquuA
 /tZg==
X-Gm-Message-State: APjAAAW/trLu9PQzmMECIyyOCxoRwyocRTSjq9jU9ovbnWGm706LWIiU
 hil1DqJMHxFHRGesgOkSuI0=
X-Google-Smtp-Source: APXvYqy8qZ7QGjsCRN/daY3QWR7dhQEfZRv/GlKgGzo/A+tGnJz0D77W13N04M7ertbBlK0xOUeMSg==
X-Received: by 2002:aa7:80d9:: with SMTP id a25mr25762332pfn.50.1558415533314; 
 Mon, 20 May 2019 22:12:13 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id s66sm22056701pfb.37.2019.05.20.22.12.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 22:12:12 -0700 (PDT)
Date: Mon, 20 May 2019 22:12:10 -0700
From: "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] input: keyboard: imx: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190521051210.GE183429@dtor-ws>
References: <1554096209-17870-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554096209-17870-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_221214_893048_7186B4B4 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 01, 2019 at 05:28:12AM +0000, Anson Huang wrote:
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to
> simplify the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thank you.

> ---
>  drivers/input/keyboard/imx_keypad.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/input/keyboard/imx_keypad.c b/drivers/input/keyboard/imx_keypad.c
> index 539cb67..cf08f4a 100644
> --- a/drivers/input/keyboard/imx_keypad.c
> +++ b/drivers/input/keyboard/imx_keypad.c
> @@ -422,7 +422,6 @@ static int imx_keypad_probe(struct platform_device *pdev)
>  			dev_get_platdata(&pdev->dev);
>  	struct imx_keypad *keypad;
>  	struct input_dev *input_dev;
> -	struct resource *res;
>  	int irq, error, i, row, col;
>  
>  	if (!keymap_data && !pdev->dev.of_node) {
> @@ -455,8 +454,7 @@ static int imx_keypad_probe(struct platform_device *pdev)
>  	timer_setup(&keypad->check_matrix_timer,
>  		    imx_keypad_check_for_events, 0);
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	keypad->mmio_base = devm_ioremap_resource(&pdev->dev, res);
> +	keypad->mmio_base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(keypad->mmio_base))
>  		return PTR_ERR(keypad->mmio_base);
>  
> -- 
> 2.7.4
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
