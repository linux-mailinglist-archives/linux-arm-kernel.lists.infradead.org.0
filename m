Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DB4D979D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Swqcqfmv0INXo/FtU9wEuUZi2vRrn3sdpmMpryuhmYE=; b=Y5fsY1Sj0WTDLI
	pBXBdb2ZfXMa5X4g/U9aKuLl8V8GUleB8J8fTfnv1wMEVmf0az9QlfNknyJHiHDwi90GV0prz/6/E
	YQKS5Y09FdS1DNNbr+Cwu3kJ2wmXAgDqSLpBZ4Le3V2v8HOgQudXDZJkpDMqyJf0lqfuybGXlShnb
	HchIA/u8GnkwsKArcPPfGeFZ7HeSu3EDVDx9c8RlUskw58mSuhXfrB0c2d2sBOfwXvPnTo7ErA9EN
	ThdhSTKMR0efgkhaNs63rJLBBKXLnqiIijSbmSzAeq6hh3MqeC7xhb5zfNsCIKG7ByCAMfPHm6hs1
	qChQ+B+RtTtm0iOleSVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmKZ-0005eS-Om; Wed, 16 Oct 2019 16:39:23 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmKF-0005Tl-Rr
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:39:06 +0000
Received: by mail-pg1-x530.google.com with SMTP id i76so14619966pgc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=uj62At7arnilFOJJbl5N7a5EkMRk8gmjDj29tsswWIE=;
 b=rBya5PBO6sZHChGDQpT99l/deboFxP1XaW8i/9Ff0L5lelkWO7f2RuzRS3/wLiXWVb
 XjdRwrYeSFsiAoPnxaDseJgPW0UZlbFWO5u33OaphuTGKfM2k7rEFGs8wPKGYjYIE49h
 dORi5YyWTorA+d6D6zuQRS+tX15uEph0kH8P5A2mxeJLAIjUm3w6yQJ6yGrHKsH+OVDE
 TlP3iEvahZXKpwACmvuRDomjXkvEREPVhWSABCM+nEe2wRs+zIvkicRGDPQep9OMWLF9
 YI3u2S5W/FmHu/LpjWTcKfjs+P2CCCQ4Hqi4PYUuRYqGerDiMmRFcFHJDVsMeWEGscu6
 C3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=uj62At7arnilFOJJbl5N7a5EkMRk8gmjDj29tsswWIE=;
 b=kyD/t5s73ctW2edOyLiuWcjxi0lGnLzCa6Bg/TRiOMdn5tJFrM5dL8bYRCX9B9/jzb
 FSn5m4f4lIRB2loq7TmTxqTMzUdLvZEoVzLpU9M0Wc4cuzrG6+qtKLMsp7oY9HiK+ygT
 K7Hvys26klpjmDLjZ8nyzjRHJtNXBmJgkPh7wHvwNpzUd8Fp5+PsElH5UUV6p6Tu5y6x
 mXWYYCu++luO52FUqR1U7oc50/5MEwTR9APKO3rLmgzdjUSlOuqY8F6njy/336sfgFsc
 iOVaAl0Xz0zcxGfJ2KBd21R/Ml4ADmfIS4p0sFXYon2fkA+5am9yQEzFx/dc7xBmZU8+
 IAxw==
X-Gm-Message-State: APjAAAULFtSW38ujds+ho3dAcEzps2T13rMjdjzcddBZTy6SIeZLbFWF
 ifZ9h+IBy5+10zVH3kh50bTOdA==
X-Google-Smtp-Source: APXvYqy7cm/gQHTfBaihNUxg/kpuNUjJHhY1iUPuIbJzt/XJ4Le3qA+lNeFhKinPwgh0xJasS1A49w==
X-Received: by 2002:a17:90a:2ec5:: with SMTP id
 h5mr6266957pjs.87.1571243941981; 
 Wed, 16 Oct 2019 09:39:01 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id z4sm29661708pfn.45.2019.10.16.09.39.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 09:39:01 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: edubezval@gmail.com
Subject: Re: [PATCH v7 0/7] Add support of New Amlogic temperature sensor for
 G12 SoCs
In-Reply-To: <20191004090114.30694-1-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com>
Date: Wed, 16 Oct 2019 09:39:00 -0700
Message-ID: <7hwod4fxwb.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_093904_088253_2A8E41E3 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, Guillaume La Roque <glaroque@baylibre.com>,
 linux-amlogic@lists.infradead.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Eduardo,

Guillaume La Roque <glaroque@baylibre.com> writes:

> This patchs series add support of New Amlogic temperature sensor and minimal
> thermal zone for SEI510 and ODROID-N2 boards.

[...]

> Guillaume La Roque (7):
>   dt-bindings: thermal: Add DT bindings documentation for Amlogic
>     Thermal
>   thermal: amlogic: Add thermal driver to support G12 SoCs
>   arm64: dts: amlogic: g12: add temperature sensor
>   arm64: dts: meson: g12: Add minimal thermal zone
>   arm64: dts: amlogic: g12a: add cooling properties
>   arm64: dts: amlogic: g12b: add cooling properties
>   MAINTAINERS: add entry for Amlogic Thermal driver

This has now been thorougly reviewed/tested.

I've queued all the "arm64: dts:" patches via my amlogic tree for v5.5.
Can you please queue up the driver, bindings and MAINTAINERS patch?

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
