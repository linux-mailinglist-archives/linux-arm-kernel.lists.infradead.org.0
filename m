Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AC514D07A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 19:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpDELpgupxEpg8jOZGv6IkyP9t3EZaUPa1qFiU1eiro=; b=BPtHXLbDCMocOS
	w7L6s04U+nBsSD7vPS39JFFQGRzZJULYBtk9UC3JEhY2ZIKubOaKXdJlKNl2iOYbsPZQ7UresqqVw
	WMbua9NTQsSUIMCs64htVg0RZeHJwOmkmOUS8vP6iV25olTckvVzVbAifX/gIH/njzMwmfpEz6oTz
	2qxY9R1pCLibVNc+7z4YsYzUWA3LVJG1a2CNGewpZ0flZ+w0brkoNt9B9U/ZeoFdrrr1XgD5mcprB
	emJ6xj6V+vP6kL08nRFSxTJBl1ZsvIwDp2q1y2xhqdYuVsk7mD4fRSHECfhmBx9LDTkRf0RQoVsN4
	+844vzdYgbFZRpsnDf2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iws5l-0003z8-7Y; Wed, 29 Jan 2020 18:29:33 +0000
Received: from mail-ed1-f43.google.com ([209.85.208.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iws5c-0003yj-CD
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 18:29:25 +0000
Received: by mail-ed1-f43.google.com with SMTP id e10so782397edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 10:29:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4qkJva2WsjlzXbLrXwOCyzngWVPfhRPEm+QIF0TxRCs=;
 b=gIgUQecfyBor0MIG5EHXDJQ+ZXt2KzwZzLulpbmAoHFR9X8bsROVBQo8mPqtEm38oI
 BVdN6eemvZ7hmpC3ezZgmN/vot0PJgOQA2KJ118XZrm6ySUSixIWNPUBUCpaTk3nS9A+
 KPsIZ9X+9paW65atXB8ySuViLSeiCrA5DZDQTW9TjWHhHFePxLK9cMKxFLj9ddxylkE4
 XZF8fuBjQ8/t8N9/DF4SeeDBccmmgqHyeeKAyfX2eeK2j9T0JD/Mwjw8zpwilv6aaVgY
 SaihvT2ue+c4E1ZdHfOijMmdfLW7MD8XpOYMDmERdYZyLrZQBrHORDGR3ek3mN0T92w1
 p2Nw==
X-Gm-Message-State: APjAAAUVf5ypYHwQMnNr3C7YkWAzDst6uU9oIsqRGhF4s3JFyjo8Fj5i
 dnM4mbONKsS6il/GoOBzqk64CxwD
X-Google-Smtp-Source: APXvYqz1/cdG+k42XUqB4QSIVvZhpddvdczacL56EyIVANpjoiUGIhsZmLCd2Gpp1rr/aNnryIFmnw==
X-Received: by 2002:a17:906:3cea:: with SMTP id
 d10mr719187ejh.32.1580322561227; 
 Wed, 29 Jan 2020 10:29:21 -0800 (PST)
Received: from kozik-lap ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id x2sm311343edi.95.2020.01.29.10.29.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Jan 2020 10:29:20 -0800 (PST)
Date: Wed, 29 Jan 2020 19:29:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 148 boots: 10 failed, 136 passed with 2
 untried/unknown (next-20200129)
Message-ID: <20200129182918.GA13626@kozik-lap>
References: <5e31aaaa.1c69fb81.a7667.f187@mx.google.com>
 <20200129161113.GE3928@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129161113.GE3928@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_102924_416654_FBBF34A0 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.43 listed in wl.mailspike.net]
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 kernel-build-reports@lists.linaro.org, Sangbeom Kim <sbkim73@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 29, 2020 at 04:11:13PM +0000, Mark Brown wrote:
> On Wed, Jan 29, 2020 at 07:54:18AM -0800, kernelci.org bot wrote:
> 
> Today's -next fails to boot on Odroid X2 and XU3 with exynos_defconfig
> or multi_v7_defconfig with SMP=n.  It appears to get stuck in a loop
> probing the I2S secondary DAI for some reason:
> 
> 12:07:05.997409  <6>[    6.421596] exynos-bus: new bus device registered: soc:bus_mscl ( 84000 KHz ~ 666000 KHz)
> 12:07:05.997653  <4>[    6.429763] samsung-i2s 3830000.i2s-sec: DMA channels sourced from device 3830000.i2s
> 12:07:06.006838  <4>[    6.439652] samsung-i2s 3830000.i2s-sec: DMA channels sourced from device 3830000.i2s
> 12:07:06.015764  <4>[    6.448666] samsung-i2s 3830000.i2s-sec: DMA channels sourced from device 3830000.i2s
> 
> and so on ad infinitum.  Vanilla multi_v7_defconfig is fine and just
> displays a saingle copy of that log message.  Full logs and other
> details here:
> 
> 	https://kernelci.org/boot/id/5e3176467f121dbdef2824fc/
> 	https://kernelci.org/boot/id/5e317b7322dcdaa3e5282500/
> 	https://kernelci.org/boot/id/5e317c0f6bfd765fb42824f1/
> 	https://kernelci.org/boot/id/5e317517be8559c7542824f1/
> 
> I don't *think* it's an audio issue as mainline seems fine and all the
> ASoC changes have already landed in mainline for this merge window.

Thanks for the report.

Marek spotted it as well and sent a patch

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
