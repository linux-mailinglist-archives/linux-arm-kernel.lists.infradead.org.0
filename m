Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F78418DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 01:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hY2qhK1luN2UwvKv4df5xAh0LX3fP6ynRBEcebHQtVI=; b=mUXhtxvWX0CyYk
	wi5DGB/0PtWiTQu+VVvw6pdVU1KnPOadDRqRkUePW1W75r76r/8XGddTFIhp9+9dSg4V4fXqUDIH3
	wyivulaF6n3e7F3RQpXccNl1Fqi+8/hvKpaZgpChGnYNfOefTb6fUq6hY4hspq6RKy9vDQTsJPLwB
	twv92PAcDU5umfZG02Sr6HPb+a0JyL0J41vTCeYdE8VJ6VKcKVNcUh98wK/4RLFZNcrQWXJhssqSC
	bpOdQH1Fgrwi7ICQrsSDFM+Bf3fw1/QwC2dnl1sf8DQ+u6V3FxvTmCsLePaCBDzsKXMD3Ga3PjLfM
	kRjVwy11Kmg02q4x/9gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haq8W-0007NT-S8; Tue, 11 Jun 2019 23:25:04 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haq8I-0007MZ-4O
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 23:24:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id f21so1792457pgi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 16:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=pzZQijjYh2lq3MqwPAxsWI0diaePNWtLIjQJaO7lucU=;
 b=caXhb4JrKoL25WULlmBoyErRhTzl+Qlefw5zmfGbW45Q82gCsvakwZwKbdppzTmYHq
 wRtcEW9aBQjqtEnLBq7mdWutGGxaFThaxGaUrr6hxvw5WNwWKm/gOkg4F0fSjhpYU+jo
 UhKHDTsgIbt5HjMWbJmawF8TeUU/Hy1WjGBhjBAXjssbkfrEeKUaiqm8lJEgEsRrAAIn
 n4a6MQE9jdlTIiTsWxACww5EdRlH4vZyS8zy8itKUIjOB4AdOLbgdvxTVa0pYQqcCu6c
 PPn5HgnY7WyNT70n8RmIMIC3HhTaR4x6iNx15v4683bc2S0IIr/nfO8ayq1TU8Ok6nse
 kqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=pzZQijjYh2lq3MqwPAxsWI0diaePNWtLIjQJaO7lucU=;
 b=fMoel3fDc6PTEsl0Gma1I0b+k5IfrVEZ3FXx8AiRt4Ut6+XbypcloKjPpwuTuzCkNF
 jGAL0ONA+gpfHgGh8cwjSwEDA1JgKktpaHCpUUxYBAUgEHMagc/IwDffvMTlBERWPSO9
 L9KCiTYkQn92hfx2DFNV6wtMUMoj4FjJ2xs71bxFUrNFjuKTf3mE76uTSAjSzhmQ4KAk
 LBEs1uMT5Path6M9pXWcLQXifLJm9gcKMdaXNLyi8mxUYEkWkgWCcdzubKG8hoJpfU8X
 zBCIC34ZgLhNpNIqIfzQhSR3mqdiNc/qVNkU3oFKUrDk+b1SmASTV0KvkcbaWFbuvEqL
 Ifqw==
X-Gm-Message-State: APjAAAXt/LT5jG5pNd31tbRvqb8m7S/uR40uJeO81nW6jWRDUguTEoTJ
 LKC4cqypz3VlY8qYnJ0ZSJX+Vg==
X-Google-Smtp-Source: APXvYqynJgfnRKT9jxHr/rkFxt5cW774++TFNZRQTm5JTkX+8RQKfGhmIHYDuLE+xibLa/Xh3lHYeQ==
X-Received: by 2002:a65:514a:: with SMTP id g10mr22250270pgq.328.1560295489184; 
 Tue, 11 Jun 2019 16:24:49 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id y7sm8141090pja.26.2019.06.11.16.24.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 Jun 2019 16:24:48 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/2] ARM: multi_v7_defconfig: add Panfrost driver
In-Reply-To: <71c929a0-d42e-7519-df43-100a474a63d4@baylibre.com>
References: <20190604112003.31813-1-tomeu.vizoso@collabora.com>
 <71c929a0-d42e-7519-df43-100a474a63d4@baylibre.com>
Date: Tue, 11 Jun 2019 16:24:47 -0700
Message-ID: <7h4l4v4se8.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_162450_178203_8176926F 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Tony Lindgren <tony@atomide.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Yannick =?utf-8?Q?Fertr=C3=A9?= <yannick.fertre@st.com>, arm@kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 04/06/2019 13:20, Tomeu Vizoso wrote:
>> With the goal of making it easier for CI services such as KernelCI to
>> run tests for it.
>> 
>> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
>> ---
>>  arch/arm/configs/multi_v7_defconfig | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
>> index 6b748f214eae..952dff9d39f2 100644
>> --- a/arch/arm/configs/multi_v7_defconfig
>> +++ b/arch/arm/configs/multi_v7_defconfig
>> @@ -656,6 +656,7 @@ CONFIG_DRM_VC4=m
>>  CONFIG_DRM_ETNAVIV=m
>>  CONFIG_DRM_MXSFB=m
>>  CONFIG_DRM_PL111=m
>> +CONFIG_DRM_PANFROST=m
>>  CONFIG_FB_EFI=y
>>  CONFIG_FB_WM8505=y
>>  CONFIG_FB_SH_MOBILE_LCDC=y
>> 
>
> Hi Kevin,
>
> Could you apply this changeset on the linux-amlogic tree ?

No, this needs to go via arm-soc (already cc'd)

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
