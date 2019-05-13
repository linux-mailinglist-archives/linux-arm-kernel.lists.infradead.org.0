Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F331B375
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 11:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNYxC/oqpbY2jHP7CKoCMYoLVw/Xd1IejOe8sm+wAf0=; b=n6L65BgKPRIhhl
	L5QsJFI07dt6Ykb5200fJ2Ok4vLpnVX/GEv67Vx+vTBh3UQ+aFPsKC1HkCUBE5LJClhhPgni3SrRc
	pksi4yWVAJ1y+/MFc5hrbiCr4+HKAZNksthRlxQYej5hO4Jzhck42hwb1+Rx4yAL2fkm+F4+Uss15
	FXnqGE3Ln4yBYpGEs9oJngkKczQ9EhF4Dy5eo55OmrN6HcQ3EFehssDuMkwdJrBRKObZloN2oyzMn
	6d9wM9QwIbqrAEVhwFeVgYsU9jfLhcsR5+yQdDa+OLDUllhaauAOgp4UDulkDu5FKgBytiJrWJO2C
	1d1lfagCgFWjRLTPxKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ7jT-0005P1-Bd; Mon, 13 May 2019 09:58:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ7jK-0005No-Nk
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 09:58:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id o189so13205740wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 02:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=7fofqNxbQms2+HwADe45aBmqLLu1PHLRYhgcawTMF5w=;
 b=rQAsUxmbSNHpYELYa3AtXHTF6H7uSGcX5KB+iChn/ZAVb0g/ZeOTsHlGShNFrlLZCe
 MsGrQZSIoDohYhzAiN9zHefJuQ5UgARlg4i7PumliY2Ge/B+uuz2yxm4lx+2PH1nPhFd
 kz0upbi1NVh8VVQR8YwOl1lPPbTijccu4HH8iqIcIFEOO4EqbwOzIWHP8adzzInNZXn/
 kuAX1Q5CaEfBLhfUEaQ52E3Np48thKKulmTGe1LYKuWltClc9Orvk4xYcSD5R3NMxUmx
 y6aenVmacBl2X1KO/9TB2i9lVBm8KpUU2ffcGwU/Gd6pzJoVfpOvfp1ivTELyYNTXI1H
 e4XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=7fofqNxbQms2+HwADe45aBmqLLu1PHLRYhgcawTMF5w=;
 b=uW05JWjlzBXzq9j6Jjy4X7SmeWBADnUAb5evTWh3UTYcqaTym9UFq4tcRLsv9T6Z3d
 2gKCd7ewKruiCo0yZ1Rr/JwvQhsHx2WlxuuOYttuaNLDWK1QP6V6KZlh5bVX4ACEbp5I
 eK+x7DjL8ZmiZtm4FF9jjke64RUB3XoVAGLzCJM8zZG0oBlAQMcfUMKxbERzEwBrmuTq
 MjAm4z6jwt3G5bg4CEEsCHAmBLB/2CLLg727dgrkxKq1I9oyUEc0XO75F1mS9Z3af0Y2
 GmTk0S+Y6nPiVWX+NW9eZEMse3PPLteWr9LoY2SrvMeUP/zgOfymbKBJmnPGCkBwnQxB
 QKhA==
X-Gm-Message-State: APjAAAUGaN6CPkC1N5mqYiAqO0psLwOsbqoszZ5Jp2awXDTEj8N26pxa
 8+gEPGqpRTnEGdmSFzg2I9S4Ag==
X-Google-Smtp-Source: APXvYqyYDFbeqT3rRqew9EDTgcLF2uXw3708KjlbLJNd9je1Y3K8HdRrkDcoqgCgDXK3+kEnUnabKw==
X-Received: by 2002:a1c:f205:: with SMTP id s5mr14236365wmc.131.1557741525070; 
 Mon, 13 May 2019 02:58:45 -0700 (PDT)
Received: from boomer.baylibre.com
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c130sm29316546wmf.47.2019.05.13.02.58.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 13 May 2019 02:58:44 -0700 (PDT)
Message-ID: <24b8cd2eb2879378ca0cac6ddfd9c5cae68699bc.camel@baylibre.com>
Subject: Re: [PATCH 0/3] mmc: meson-gx: add ddr-access-quirk support
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, ulf.hansson@linaro.org, 
 khilman@baylibre.com
Date: Mon, 13 May 2019 11:58:43 +0200
In-Reply-To: <20190513091548.16674-1-narmstrong@baylibre.com>
References: <20190513091548.16674-1-narmstrong@baylibre.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_025846_774077_743949EE 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-05-13 at 11:15 +0200, Neil Armstrong wrote:
> On the Amlogic G12A SoC family, (only) the SDIO controller fails to access
> the data from DDR, leading to a broken controller.
> 
> Add the amlogic,ddr-access-quirk property so signal this particular
> controller has this bug and needs a quirk to work properly.
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
> at 50MHz clock. It gave around 170 Mbits/sec as SDR104 and 200MHz clock.

These numbers looks to be limited by the MMC bandwidth of the related modes.
So, if the SRAM quirk introduce a penalty for the controller, it does not appear
to be a limiting factor, AFAICT.

> 
> Neil Armstrong (3):
>   dt-bindings: mmc: meson-gx: add ddr-access-quirk property
>   mmc: meson-gx: add ddr-access-quirk
>   arm64: dts: meson-g12a: add ddr-access-quirk property to SDIO
>     controller
> 
>  .../bindings/mmc/amlogic,meson-gx.txt         |  4 ++
>  arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  1 +
>  drivers/mmc/host/meson-gx-mmc.c               | 65 +++++++++++++++----
>  3 files changed, 57 insertions(+), 13 deletions(-)
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
