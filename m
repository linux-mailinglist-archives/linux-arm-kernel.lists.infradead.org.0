Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44B61B7C60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 19:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixxYtCvR+UtdDtN/BXY/WRZ0OWRmIwigdUs8Fgw0Cfo=; b=DlD0rtbFuRElsQ
	R+JjU7eMP6CZ7RIf+R/wPVdJEu2YK5a+ktBIJdFNmJN9IoVE78xh8ZLujTYGejVJm1DsWyS+ZaHmW
	qR/8IjmGecApgg6LmuH868L/MHWSBXYz9fAh9rSWdVDPpL9XKSci3P1LQSs49xWgBy+IDICY2ZR0X
	pfZXem2cWC1mYjstMN7K955xReEZAAxt/9sc3ieQPz9preg2fT0jaojxzVKMRDB11vRNOJ9P4P0Zp
	rTiYTC8fupBJ8kU04N6USS/ubAhvZexK4lfZSL0vfZLk7wbm5urD30UWIFlPlumV42DPquE94FSjA
	PJjVVXYEllHdC5Kvg6KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1nh-0000dS-GE; Fri, 24 Apr 2020 17:07:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1nY-0000ce-7Y; Fri, 24 Apr 2020 17:07:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id 188so11325008wmc.2;
 Fri, 24 Apr 2020 10:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pNg7ONatcx0tvdnMJvHWn8buU8bELK0ZoEzKLC3RkrU=;
 b=Z4mN1LorXe2GM36jqQm7NtzdCnaRpU0Csh+HAxCuycpzXjsiwupEy003zAW9zlNzoa
 BSUR6yFaScZlsGXZiHvScU7mokPg6cjonkYIKU+ZIiEjk2p5/jhsHI0V2wgPYFhSnO9S
 ORcIVXU5RUAc9mhFXNFqhyoyaayDRvufCJhY2mX1mEduR66TBnM4FPwh+GladDpJGbMo
 7qcrn9+35jo2iACZBEnpZhDY8RJIzJRrArtYlmXjZesr0y/rs9vc9Q7rBGdq02+OYvPm
 P3R/Ki/haSJ/igYDSTxMtaj/PPz4qsBuWi2+t1qJoibNTQfrz5LhmTHeVVGUPqMACYb6
 s0JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pNg7ONatcx0tvdnMJvHWn8buU8bELK0ZoEzKLC3RkrU=;
 b=ImWYHFTFrfnHRzUneSa6o58fev+qDvUVC0z76hKcEhW/PsUq3ca4zAr5OG5ZKE6MeX
 KOENJxRH7/zpyaD9/cvKjv4Q02O7pBOvj0pmOCjPcnu/8cVQDne4qNmqKJ38tU1ium9Y
 xH8Hq/ui5CdzoGKE8PSyTnQ39tKi3uHtzF/ZFY4I524cGU5hiCIdE1VizoVO4t+UjzMk
 UJPrMaVHEyRYB1LAR8DUqsexhVfJGtZNKRwDm+rMiRdUoX/T+t1MCQiRFEBY/Z0md4iZ
 Q9f6C8fzmKZLqAgY0Q6mOMFZG2l4UrQ4CxuvGbSF+aaZz18ONEYUzYwF2PrfCP0jmLx1
 w4qA==
X-Gm-Message-State: AGi0PuYQwsD/qpy+AV/ggXeqi9yMk/NNFcJfm99yYoGAjdRaLaRljVWS
 RCMWjZA/ckXghNqFERPoynQ=
X-Google-Smtp-Source: APiQypLZO4MExFdKMNKjUrrFilmlGS8Q/GGA4PlaU3k8a0ak1a7T/J3DeClcdV59/IjrALJ7MYYFkA==
X-Received: by 2002:a7b:c390:: with SMTP id s16mr10817388wmj.14.1587748049944; 
 Fri, 24 Apr 2020 10:07:29 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g69sm3827549wmg.17.2020.04.24.10.07.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 10:07:29 -0700 (PDT)
Subject: Re: [PATCH v2 01/91] i2c: brcmstb: Allow to compile it on BCM2835
To: Wolfram Sang <wsa@the-dreams.de>, Maxime Ripard <maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <c8c666eb5c82dcb73621930b3fedf5814792bf1a.1587742492.git-series.maxime@cerno.tech>
 <20200424161353.GA4487@kunai>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <bedfe073-6ff4-69ee-fe39-d5802cc3ecfd@gmail.com>
Date: Fri, 24 Apr 2020 10:07:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424161353.GA4487@kunai>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_100732_272933_BE1C004D 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/24/2020 9:13 AM, Wolfram Sang wrote:
> 
>>  config I2C_BRCMSTB
>>  	tristate "BRCM Settop/DSL I2C controller"
>> -	depends on ARCH_BRCMSTB || BMIPS_GENERIC || ARCH_BCM_63XX || \
>> -		   COMPILE_TEST
>> +	depends on ARCH_BCM2835 || ARCH_BRCMSTB || BMIPS_GENERIC || \
>> +		   ARCH_BCM_63XX || COMPILE_TEST
> 
> Isn't there something like ARCH_BROADCOM which we could use here instead
> of adding each and every SoC?

If you are worried about this list growing bigger, I do not think this
is going to happen beyond this changeset (famous last words).

There is no ARCH_BROADCOM because there is typically very little
commonality between SoC architectures within various Broadcom business
units (left hand is not supposed to talk to the right hand) with the
exception of a few peripherals that have been historically shared (NAND,
SPI, XHCI, Ethernet PHYs/switches, etc. etc. This I2C controller
historically came from the STB business unit, which given the market
space has also engineered its own HDMI core and naturally incorporated
the I2C core it already had into the HDMI core. Up until 2711, that HDMI
core was not used by the 283x family at all.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
