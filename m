Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E574DE1B42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjSuFBH2HLngExo0AEn0toPMEMBj9kwdu6tpxiewefg=; b=sHL56lwcbwtFt+
	KOS8xxi5oPeLiZBCRJYKhZMbrb9fWfUsdunCY/oCtKew1XtoSMGY6nEMxUP5X5nAtTogQz6ROEZMo
	yYqpGWbEj6TpsVVuEQTjlhKhkmCUjr92pl7zZXhw3AS82E40OqxDSn4R3dSU0hHoAIjABvTePc6Ex
	0py8fUFZvUJxAVdjtNqpGuoxHzxFJ22ateWaorA4v2cMshBNQk3XxsVsMGIx43TYX93SSveXGJDVh
	hpVeygx5HQDfhGoKfQYFPq2YW0e+zG21Cp4kr9in8Todj0YfjNYp+DdPeibPLdMQqu1h6QMSGVOGS
	6HJrrTdy/RcynIW8+ofA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNG6c-0003b7-Kr; Wed, 23 Oct 2019 12:51:14 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNG6L-0003am-NZ
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:50:59 +0000
Received: by mail-ed1-f65.google.com with SMTP id l25so4408639edt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:50:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oT2q812vkwR6lQz5u4dP7bLM7jh35Rq8yHei8+lOv9w=;
 b=mWeMxW49vOvUp8/fJ4zQ1xWUO35Wim3Ow0KmvBs0sOiSLbmlXP2t/eB23mwa2kx5oK
 0sWZOi/ZrFFc3aa19an9MyfX49bXiMaiO+leDtZU9h6UgyT1NMgQpTkq9o1CaEWHCRVd
 hbl6Ya9bt0n9n/7i0bPlAE8Yz7h9OSwsXf9T9wFPGQLdQp9UHLmwrwJcRRhf0duciNPT
 GcRDl0/8VVpn2KTPYCiQE6pk8RRU4YJDDb1/3w9KGQJ7QTNzvknCyTRWLyiIailMqQ3a
 zreJEJuzIHEdJ1FNtKIm9Ey4XzA2z9MSt3kv/Hxvu5cLcK8Ra3s+RMdOJVOa47XcjVHV
 T0QQ==
X-Gm-Message-State: APjAAAUXoIs5tS4L3fGGCs5mZxA8BVCx5bxsotcphQHvVc0O/YIHGBS0
 2incetrkhbAxPPJSBN0yKvk=
X-Google-Smtp-Source: APXvYqzLq1IwwtENOWtlyqBj9T2iqCV94L/4HoNoJFxSLjEVDtlX9NMAHQ1sSA9Bd3uXFYj6DR034w==
X-Received: by 2002:a05:6402:88c:: with SMTP id
 e12mr23305215edy.170.1571835056324; 
 Wed, 23 Oct 2019 05:50:56 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id i63sm780337edi.65.2019.10.23.05.50.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 05:50:55 -0700 (PDT)
Date: Wed, 23 Oct 2019 14:50:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 21/36] ARM: s3c: move iis pinctrl config into boards
Message-ID: <20191023125053.GF11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-21-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-21-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_055057_772753_3299D318 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-samsung-soc@vger.kernel.org,
 alsa-devel@alsa-project.org, Sangbeom Kim <sbkim73@samsung.com>,
 linux-kernel@vger.kernel.org, linus.walleij@linaro.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:30:05PM +0200, Arnd Bergmann wrote:
> The s3c_gpio_cfgall_range() function is an internal interface of
> the samsung gpio driver and should not be called directly by drivers,
> so move the iis pin initialization into the boards.
> 
> Note that the s3c2412-i2s driver has no boards using it in
> mainline linux, the driver gets selected for the jive machine
> but is never instantiated.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c24xx/mach-gta02.c    | 4 ++++
>  arch/arm/mach-s3c24xx/mach-h1940.c    | 3 +++
>  arch/arm/mach-s3c24xx/mach-mini2440.c | 5 +++++
>  arch/arm/mach-s3c24xx/mach-n30.c      | 5 +++++
>  arch/arm/mach-s3c24xx/mach-nexcoder.c | 5 +++++
>  arch/arm/mach-s3c24xx/mach-otom.c     | 6 ++++++
>  arch/arm/mach-s3c24xx/mach-qt2410.c   | 3 +++
>  arch/arm/mach-s3c24xx/mach-rx1950.c   | 3 +++
>  arch/arm/mach-s3c24xx/mach-rx3715.c   | 4 ++++
>  arch/arm/mach-s3c24xx/mach-smdk2410.c | 5 +++++
>  arch/arm/mach-s3c24xx/mach-smdk2413.c | 4 ++++
>  arch/arm/mach-s3c24xx/mach-smdk2440.c | 6 +++++-
>  arch/arm/mach-s3c24xx/mach-vstms.c    | 6 +++++-
>  arch/arm/mach-s3c24xx/simtec-audio.c  | 6 ++++++
>  sound/soc/samsung/s3c2412-i2s.c       | 7 -------
>  sound/soc/samsung/s3c24xx-i2s.c       | 7 -------
>  16 files changed, 63 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c24xx/mach-gta02.c
> index 526fd0933289..1ca0460d82f4 100644
> --- a/arch/arm/mach-s3c24xx/mach-gta02.c
> +++ b/arch/arm/mach-s3c24xx/mach-gta02.c
> @@ -540,6 +540,10 @@ static void __init gta02_machine_init(void)
>  
>  	i2c_register_board_info(0, gta02_i2c_devs, ARRAY_SIZE(gta02_i2c_devs));
>  
> +	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
> +	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
> +			      S3C_GPIO_PULL_NONE);

This is not entirely equivalent move as before this was probe (so being
executed also on rebinds) and now it is init. I guess it should not make
any difference so let it be.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
