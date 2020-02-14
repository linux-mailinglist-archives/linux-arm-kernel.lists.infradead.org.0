Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F7515F6B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 20:18:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8mw34wXsusTaPbgHCqQ2Bo0RwC9OkcA2c4tXDehK8A=; b=Dx0/stxArU6MVN
	LroDZ0XNiuxCjcbRfwpsnNu+s7fN76HzqKyREjNNatryS0OKwpKDvzbdxTWPq/fdRSTIhib+UoerU
	AkHhE9uSpukZpPEQweTNUUUb8kqUH4YjhJ0/VX/8SgRT3BgRq88o6gtToAyIYDI7/KX4ZoQKLCWN3
	+25NkZ4L/iV7jEZoBM3hVUH9YByzWrPeSTNS8BlPiaKaWsIwVentfiSZ4kwx9PQdrvet+kpYjQl4Y
	CL2Dyq5N9GeV3eEj4tI/kS/CRBHgUlWJKg1Fl52NBOy5HXZuDLC3ZXYyvJOPojNoaUHIzsJnQstnF
	1SrBq3dipph50PSIoqtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2gTi-0005gN-4y; Fri, 14 Feb 2020 19:18:18 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2gTb-0005fT-Af
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 19:18:12 +0000
Received: by mail-wm1-x344.google.com with SMTP id g1so11076198wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 11:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=alfJFtHKJM/Uyz0gLDfPfrM5tSB9dNPsAfTb3Z88wWA=;
 b=LJSwO27g2GKc2awVc8VpB/xF0Y1TAHxkCB4lDDP5c+PfqZJYx6jpTfHi5IdhIIoBXj
 oDxysBiJQlYIG4LVMpFi32QleK68KJw7uIvfB7WADBx5So/a68VG/D9GkxVu7gLulsl7
 ky/fP98MM+iOVubCw6s0W7wXuPWuX5/TTMHCZaoSq2eULAY6A8ytrfdkM1dH7uaSJVw8
 NLHfP8Dl+U3cQuQKfUjuk5VfFRf0uL3ZbyyzIm9MfzpXLBFmqVLKUS+DJCrM7HCRupBi
 rN9uchVRidbMX9t+Z9QMvjJNZMGDAdwNZzpy54SjraFBCj31MjiFOVjQKOpfm4W+DchM
 K0pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=alfJFtHKJM/Uyz0gLDfPfrM5tSB9dNPsAfTb3Z88wWA=;
 b=m+36msIvWPBuhj5mzsHPLzrZhAPx0QI3LYeKo0KWfdlgu0O6YZcaDLwOtIdApGwBmz
 XXjhTAcfmQ1Y+soT/XzjYppIzBdeij77qKybZ6cXl0LOWj2T8wi0eUtGk3U+q9Nzrufj
 O9GehlDJd/bZG/A6Bpwp/qivAvE6OfsYvHE7NBBBpQsRHVY0L9/GGDfSpD9jKtPeqGYo
 K7oH0HY7xuKjsgIx1mFOpMT3g5laGSZXFHnmUyO07CdgHGmrIv18Wu1vaaB4lJubEWiP
 /fGswQ8nvD46s71GcBtG2lpEnkB6UNeiamDsWdQsJHj2IqnHA9iQzdyOO+54Jg0x/dTf
 yCGQ==
X-Gm-Message-State: APjAAAVTKaRa4lXlkg+k00ItEjCNw6BtFsrQskTiR22YG+J1cOpKwyYD
 dP9i+f9x6S/ioo0A7WrFHaRQZg==
X-Google-Smtp-Source: APXvYqzyucT7GHVeUgi+5TIyBryVhiWXBuXBSMxGy6Ld77Vtz6UEawy6ZwoJS89byCYQ4btqYCjn0g==
X-Received: by 2002:a1c:3d46:: with SMTP id k67mr6370811wma.171.1581707890051; 
 Fri, 14 Feb 2020 11:18:10 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id c9sm8045588wrq.44.2020.02.14.11.18.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Feb 2020 11:18:09 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Guillaume La Roque <glaroque@baylibre.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson-sm1-sei610: add missing interrupt-names
In-Reply-To: <42e82841-067d-245b-6196-183503da389b@baylibre.com>
References: <20200117133423.22602-1-glaroque@baylibre.com>
 <42e82841-067d-245b-6196-183503da389b@baylibre.com>
Date: Fri, 14 Feb 2020 11:18:06 -0800
Message-ID: <7h8sl5asgh.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_111811_372097_7717304B 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 17/01/2020 14:34, Guillaume La Roque wrote:
>> add missing "host-wakeup interrupt names
>> 
>> Fixes: 30388cc07572 ("arm64: dts: meson-sm1-sei610: add gpio bluetooth interrupt")
>> 
>> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
>> ---
>>  arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
>> index a8bb3fa9fec9..cb1b48f5b8b1 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
>> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
>> @@ -593,6 +593,7 @@
>>  		compatible = "brcm,bcm43438-bt";
>>  		interrupt-parent = <&gpio_intc>;
>>  		interrupts = <95 IRQ_TYPE_LEVEL_HIGH>;
>> +		interrupt-names = "host-wakeup";
>>  		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
>>  		max-speed = <2000000>;
>>  		clocks = <&wifi32k>;
>> 
>
> Acked-by: Neil Armstrong <narmstrong@baylibre.com>

Queued as a fix for v5.6-rc1.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
