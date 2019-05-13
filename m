Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C266B1BC2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCRuwj1eJlYBrHdlewzCGHsmOa5VLNCsWWeGLzd6dEg=; b=Jp+LfeAzZdgI8t
	q4vEAhUPjb1AD5LBblqTKDedGwHPuqyLXKR1iUFGrj3jpNJleBt3Lx/nhk2q9WwrBrWSkR4kVc/iJ
	9g3BWo35zCkWuViX7tV8zaaxp6Mog5vqMAEm9E315xHVrsRXIc4CyaOgCcZ4JMFXESrDhdwcP3EgG
	iOyhSY6A9X/jmzSyNKFObbdzr28gNau12M7VXI8zfJFHjFP8zQaSQILQuK+cTL1a7MF/4NpN5uYCk
	DjsNbezI7rpES0U4LibbkM2XNa/vVvHzcLRpW+qx4+gakAEhx+NZWOP610gTGMMjsO45KxyAgvkT0
	qGcVg+VNGVAeW5UsWpuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQF3N-00069i-W2; Mon, 13 May 2019 17:47:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQF3E-00067b-Kl
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:47:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id f12so4809642plt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 10:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=7ftcbU8JnQmvm8sGh32+gWVqyGisGkp05zvI/Os1BUA=;
 b=aG5v8TAA+1qIp67dGGOJ7ud6fKmC9NYGNER2ymFATsKxSw7VEJIAcZr2RhZ15fOE+B
 xM9aXfO+Ft7I1MfUm4KhUZu+IaQTsAEf0ZUgfzyXoJqmDOKfJe66+f8zw4AuubJ+or27
 ufNo6pYKwNT8Q2CQZo2VhJrv8HJ0BChKp1IwSD51GT5N3nyfqhziSRmyrdLi7fiCHqsO
 j3XOAMVG4Yp4wboAfnQSKvQq9UFhKNB3o2DaThW4zr3zp8xLy/YYiycKAQjGpm/IhWaZ
 ofn9Dn3m2QyeTutPItizv/1Me+LzhsVv7veUC9Qx4hrZZ1nCfKt/wt9RPLbvy6vlzNwK
 N55Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=7ftcbU8JnQmvm8sGh32+gWVqyGisGkp05zvI/Os1BUA=;
 b=L3qxh8Epe8rO7rZl45bpLQ9cZB7cKbaDzWUgvKb1PpO+qg11o7yQILJKVVNTSzPqiM
 qqHzUX8BGpdOJu3AKmVgMN19oc/TNPJfqxZK8ONcViiogBpeLRB3HWAIrIgWIgzs9Ix5
 6o/SweX5sFm2fKwrB2ywdbIUNtrSE8dYRosbNED2ckzUErXigKnl23WVS8L0QLZ6rB17
 CMaCBLuKcRrYG8VFrYq2MLbmtbKp2LrNUT1nputq3vQl0+mtZw8yPwsm94KGKcD5eUqb
 L3mEKhEJ1ZotFTtfyjXSvLFGvaN0vQSMhNI2Qu4p/ED55jtgRd2Txem2SMP55ibwnc6/
 qEig==
X-Gm-Message-State: APjAAAUZCzV70Dz2NpjAF8dIsxbZKGPqUNySUPg2GJKXx6T2mQagT+jr
 KGy1ZAv6i8kZfeUKvQ8yO7ROEA==
X-Google-Smtp-Source: APXvYqykzOc6H2gQfaH2tmKL5VMylfiYXvxqcBKK0+ieVzRpKiH1CsSkvAVqvM2zkJDtRZ1QN5T4tw==
X-Received: by 2002:a17:902:e708:: with SMTP id
 co8mr32206427plb.141.1557769667349; 
 Mon, 13 May 2019 10:47:47 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
 by smtp.googlemail.com with ESMTPSA id w12sm14856903pgp.51.2019.05.13.10.47.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:47:46 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, ulf.hansson@linaro.org
Subject: Re: [PATCH 2/3] mmc: meson-gx: add ddr-access-quirk
In-Reply-To: <20190513091548.16674-3-narmstrong@baylibre.com>
References: <20190513091548.16674-1-narmstrong@baylibre.com>
 <20190513091548.16674-3-narmstrong@baylibre.com>
Date: Mon, 13 May 2019 10:47:45 -0700
Message-ID: <7hd0kmckla.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_104748_828855_BFB79C84 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, baylibre-upstreaming@groups.io,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On the Amlogic G12A SoC family, (only) the SDIO controller fails to access
> the data from DDR, leading to a broken controller.
>
> But each MMC controller has 1,5KiB of SRAM after the registers, that can
> be used as bounce buffer to avoid direct DDR access from the integrated
> DMAs (this SRAM may be used by the boot ROM when DDR is not yet initialized).
>
> The quirk is to disable the chained descriptor for this controller, and
> use this SRAM memory zone as buffer for the bounce buffer fallback mode.
>
> The performance hit hasn't been evaluated, but the fix has been tested
> using a WiFi AP6398S SDIO module, and the iperf3 Bandwidth measurement gave
> 55.2 Mbits/sec over a 63 Hours long test, with the SDIO ios set as High-Speed
> at 50MHz clock. It gave 170 Mbits/sec as SDR104 and 200MHz clock.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
