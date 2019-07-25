Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AE775175
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2T/bjFPlYQTQdgUiXLEgOuIxulm2/Ojn+grnXlAbZmY=; b=i9W8nMVjI6yolh
	oKPbZCLO1nB5/M3e2xXTc6LYpGnuEEPm3M8zISI4OfvvSGN4mCsWEH3CXudOsTP5cGUuivpdreENF
	o3x637FspysR298soKQ/GVv7SFThC7GD7O5c6JDaHyyve1eP/zcaQfE6bHtn6Q6jDw8deiM5Y9Pdx
	3zwm9BKcNFfFxAVyXWT9NIyRJkqP/j6xevZHdm/EKf6voFlbr5ANgx+3ZUR30Z43dMIXKwU4dlAWB
	Bld5LoHHzuaU7XLG7STcNOYo8moQK3hptHqnm9o5nZ19YKM4ZXReK+DfsdxfGfZEt6/Dk21qiOkh6
	yDtUIY1k5bfw2evXIw4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqew9-0003E5-Me; Thu, 25 Jul 2019 14:41:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqevm-0003C2-Sx
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:41:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so51088436wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=afaFQV2+gmSxhIryTqlJume5dpsRUmNQp36xGyN5C8c=;
 b=Ury/kvRj+NiTLXBSM04pVrmFHM/wLxt6u/rgc/s5fuHi96rbi2u3sokiMds9/2p9vy
 kKNRDRgjlu9jCbJsEO1aD3mvta0FkTmy0YPyqb9rnbwzDSACsGZoWZDIAbwJFo1YBn8P
 YQ9MQXCXdW87VxyXUUk4wWZtXe6nMrXFSjsH+C73aDNT2pEft53bo1xCeON8XAazNq4V
 P58r7dQwNCCrs2/F6/1zD7ggMNcElPZT0wmDS4w19b/Z8H8eO9tEI6y17cwcjl7rf9nI
 COcPtjo0VIxFgwKJyYoHDmEZOMMnWSYcYfXnZAnhiLIpxVEzxBulGfurwIC1vTS2nNJ0
 jjDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=afaFQV2+gmSxhIryTqlJume5dpsRUmNQp36xGyN5C8c=;
 b=DQHEjehZZ9HNWaK1pzrst4HxraSjzWKuO98Y/C3zDQugAI4O1/qtqyinNQnue3XZl6
 GVofoq6XFRb1igsCBhM8Ei0WL+uYa8SoAXxVBpmtL/OtPareEPVRYPOlnQ9ZOOlDx7gG
 1MSSPlvlMgdTRu+q7OSkVEugH87XobSLtqx985OGutvLrBBluGlf28HSgEQV3+6RQvIa
 8yulGokpvUJaHgfNn7Z9C7ZGtatJyL8vtsPYt+YbQDFHy7sI/LcpwghsqaBFWkFs+zCH
 /2cWemwFxgzd8n0ObqrW5219qkr5PaOeqBtjJV7xXlmmsQzNnHaIkK8uUjIvj+iDO88f
 UN+Q==
X-Gm-Message-State: APjAAAVFHAoiBUKL1Ey3TEty46rFV63WJQT+RiMdEd8mLSIAjlvPtSDG
 XkS0crx2aDgC560zi+pEdSAKpA==
X-Google-Smtp-Source: APXvYqy2GHFBySWKMfAzGAvRpQ7QBGKW3FV/iX32ZBFt+sohr5Tc9Rcu6r1RKs+nXquFhZPtzZjVWg==
X-Received: by 2002:adf:afe7:: with SMTP id y39mr92710271wrd.350.1564065677169; 
 Thu, 25 Jul 2019 07:41:17 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a2sm50055474wmj.9.2019.07.25.07.41.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 07:41:16 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Alexandre Mergnat <amergnat@baylibre.com>
Subject: Re: [PATCH 2/4] clk: meson: gxbb-aoclk: migrate to the new parent
 description method
In-Reply-To: <20190722095053.14104-3-amergnat@baylibre.com>
References: <20190722095053.14104-1-amergnat@baylibre.com>
 <20190722095053.14104-3-amergnat@baylibre.com>
Date: Thu, 25 Jul 2019 16:41:15 +0200
Message-ID: <1ja7d2xjlg.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074118_933181_3AD46B74 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, khilman@baylibre.com,
 Alexandre Mergnat <amergnat@baylibre.com>, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 22 Jul 2019 at 11:50, Alexandre Mergnat <amergnat@baylibre.com> wrote:

> @@ -208,8 +216,10 @@ static struct clk_regmap ao_cts_cec = {
>  		 * Until CCF gets fixed, adding this fake parent that won't
>  		 * ever be registered should work around the problem
>  		 */
> -		.parent_names = (const char *[]){ "fixme",
> -						  "ao_cts_rtc_oscin" },
> +		.parent_data = (const struct clk_parent_data []) {
> +			{ .fw_name = "fixme", },

Hum, that would work I suppose but I'd prefer if used .name for this
work around. Remember to throw an '.index = -1' as well

> +			{ .hw = &ao_cts_rtc_oscin.hw },
> +		},
>  		.num_parents = 2,
>  		.flags = CLK_SET_RATE_PARENT,
>  	},

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
