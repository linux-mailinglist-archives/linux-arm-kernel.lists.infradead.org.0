Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C367B64D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CE86C8irU2/OzxsfeYV2eyB7YM/IsVP7aju8jQiM0po=; b=RCSHuw1Vz7BN/Z
	3hlgMg3hZIhv82qW6jNnLHk/H2o+xTjPnD5llLpohJk+u4C1pn7ZvdDXA4K1pJ8vd0pPR2VS443wP
	1uL+cetS76t0F0+gqbp3vUJZj51o8wz+s8XVBSMKD1mrawOqHTTWurQ2DHdvbaERaVXfMBxH3HbaP
	TbiSpmeB+/W8N+L2f9Q4m8FeJyJkg3vALgdszXDD/KNynZEw6Slg5MKQUl3h8hbjbpL+HGxTFgana
	NgqaLTSM+6hxpMX++yv01jhf+oxYU4fiYbyLK1MIhc1Mtnby80KJTrVVUj0MenOOPG47S85HHsthy
	bCIdozXBnmCs2AGBOouA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaB6-0005N7-76; Wed, 18 Sep 2019 13:39:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaAt-0005Ld-2f
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:39:16 +0000
Received: by mail-pl1-x644.google.com with SMTP id q24so3180957plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 06:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3coPOKz829YesHs8WeDQ/ai4YhjPoVLGbSy497MH0Io=;
 b=qS7h3ZDAoTFnRgGv1UvQCSos0CEKYa1Ol1rQOd4jzD/JiSP6N5vVOwdF3Z8RuVSoZr
 1mDJJ7fYVFpPwIN02QXU82nX1V+QV9KrobEe4wkD83KdWXbj43Yh4BTcbIURV2Napwuy
 IgdbW27UiEIT0qhx5u4WUTm62RgWNpl+ewghEdfF28M0X8pHIJn5YRfGbPLFERi2EzQh
 uW5DYqh/4bV9ON4D8XGmAcLmkChMCsh/jlDakaMQu2SgxvoiopdjqpLss1xB9NPiOefk
 2VRAUUDEYjHdTJ8B2l6jpzLuUONFWHhdDDGzYQSKQr8A3J3URqnCeq/KL0chK7/u1pRV
 g+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=3coPOKz829YesHs8WeDQ/ai4YhjPoVLGbSy497MH0Io=;
 b=SfQAA2dDh3BD1mca/kqkTKGQKxsoKZxT1FRs3/etcwBHMdgRk9exxzBtLL7eT9VuRF
 VPFz2i6PcwienocTp1gZlW3TZwlwehcA9MihNyviGQaEHZ5v9ePqB8loM3ktMRvDtC0o
 HsvSwTTSqoFD8mSDbt/2KLG2W32M8KRQctffsnFS9Q/HwWHhh7rJ0Qo4739ILe8PXT2W
 p+qOpzmKxnMDt4sNDqP1SKUG2sunimzpb5rIDOTccFTEblc9KpvZjEfzoP5jYupRb6mK
 +nUY8FGLTAVxIAzv2EXUYaTtyHdqSSNaDWYDOn5cotfqGeN0IHt1CrYyAGfzjIuClkI6
 /QMg==
X-Gm-Message-State: APjAAAUSrsBNxrc7ROWQ60peZjFWfRxJ5fnCRHUl29jm9nhBP/n607qo
 UJPOeT9ms68+69Ceokq+SdA=
X-Google-Smtp-Source: APXvYqx81mSybzdQj0FZPyN7+YBbDAJ170gLkLCt6Wq3XQvIapP6vM/UArMpEQXp4CHtzTBTBTmctA==
X-Received: by 2002:a17:902:8f90:: with SMTP id
 z16mr4266870plo.138.1568813953713; 
 Wed, 18 Sep 2019 06:39:13 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 197sm18396233pge.39.2019.09.18.06.39.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 18 Sep 2019 06:39:13 -0700 (PDT)
Date: Wed, 18 Sep 2019 06:39:12 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] hwmon: (aspeed-pwm-tacho) Use
 devm_platform_ioremap_resource() in aspeed_pwm_tacho_probe()
Message-ID: <20190918133912.GA14788@roeck-us.net>
References: <cd5bab7b-9333-2a43-bcf0-a47bbbe719eb@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd5bab7b-9333-2a43-bcf0-a47bbbe719eb@web.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_063915_131819_3FF95B35 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org,
 Himanshu Jha <himanshujha199640@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 10:20:09AM +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 18 Sep 2019 10:12:31 +0200
> 
> Simplify this function implementation by using a known wrapper function.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Applied to hwmon-next.

Thanks,
Guenter

> ---
>  drivers/hwmon/aspeed-pwm-tacho.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> --
> 2.23.0
> 
> diff --git a/drivers/hwmon/aspeed-pwm-tacho.c b/drivers/hwmon/aspeed-pwm-tacho.c
> index 40c489be62ea..33fb54845bf6 100644
> --- a/drivers/hwmon/aspeed-pwm-tacho.c
> +++ b/drivers/hwmon/aspeed-pwm-tacho.c
> @@ -891,17 +891,12 @@ static int aspeed_pwm_tacho_probe(struct platform_device *pdev)
>  	struct device_node *np, *child;
>  	struct aspeed_pwm_tacho_data *priv;
>  	void __iomem *regs;
> -	struct resource *res;
>  	struct device *hwmon;
>  	struct clk *clk;
>  	int ret;
> 
>  	np = dev->of_node;
> -
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!res)
> -		return -ENOENT;
> -	regs = devm_ioremap_resource(dev, res);
> +	regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(regs))
>  		return PTR_ERR(regs);
>  	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
