Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F003473BE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 10:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ua23TxhHABBkSL6roXeoL+JcapsdAX3jwgNowsECRHM=; b=fdfGMAdGbQrMtP
	Ch35I9FiT3UKbo3PK44H1FbbQjpyTE+25PibXhp+DFZef//2NiNOuehbVmPsrOzuYBuprz7e9Zhxt
	Lg+n2Qjtb8qzko9whmAuGZKkkeMics1W1+QNdh0OViUiXu8SR/9w7UsbdI7oh9VyiZ9ccRGqcTkR1
	V65QXQVP9HK8NGLNvSMiOfCEleqhfxavvL9Op8YcSfnDLPEafaqNndbDdyX8F6vL6L+sQ0RUP1xBs
	bTIoiT52UVxBrG8IN6iPplv+zECbZR9StPpdKKf7w/Riw9+94uQE/V4LcyvKmbSeHAy32R5aR9Yt/
	Lzw1ZZ7qUtPaDnppeNnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcQKp-0000l8-Ka; Sun, 16 Jun 2019 08:16:19 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcQKY-0000kV-TP
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 08:16:04 +0000
Received: by mail-wr1-f65.google.com with SMTP id n4so6587197wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 01:16:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=01Gsa3Id8CMAcrAm2eou8d6m+tKtF0p1DTjOg5KEKlc=;
 b=t3pOe6rt9akfrGrmVnd1ma8ThKPfUapmvrxZkyuZjsWlxMQ7WDyVX1W91Z5Nii4Iju
 wZTrmjoL9VwIzr09gogVJoK6NPtvpwuwaFED35zcD3mUVzqJTbNaHhM1yHW/zZ+ynMcY
 sFZzpg5gw3O11l//e+pSBS8IMmQknMDJfxP5AjsfLPgToB3UbFt+lwTGoj+s8xO+9K7l
 0UwNjPzlUoVajJq/wwTJHG93siUin+DEULw0uW2IyocAIsbxFbSw0aY4pdodenqSnuFe
 CStdQuMLKTY5Ra6p8lBddbo9Ruj8l+d2rl9tC0U9zlM1gLe1exUcPwDgnr82G6fCqFfa
 IJ0A==
X-Gm-Message-State: APjAAAU1RTfFuDHsKbiu5izz2VlpOZiVVaB9W19r7ZiTDVaDhCA/zuD/
 p/cOe7mrZ5ggCXlEVxLwJdo=
X-Google-Smtp-Source: APXvYqxATaOreJ64gZqKr1ZADSyl6aWSJgWFB9oHlNrQXSSjWVT8raTQwwJaAcjxe+B8VCxFKoLukw==
X-Received: by 2002:a05:6000:112:: with SMTP id
 o18mr5271656wrx.153.1560672960065; 
 Sun, 16 Jun 2019 01:16:00 -0700 (PDT)
Received: from kozik-lap ([194.230.155.186])
 by smtp.googlemail.com with ESMTPSA id z5sm6781677wrh.16.2019.06.16.01.15.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 16 Jun 2019 01:15:59 -0700 (PDT)
Date: Sun, 16 Jun 2019 10:15:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joseph Kogut <joseph.kogut@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpu: add Exynos Mali vendor specifics
Message-ID: <20190616081557.GA3826@kozik-lap>
References: <20190614203144.3850-1-joseph.kogut@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614203144.3850-1-joseph.kogut@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_011602_951398_A3653515 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, kgene@kernel.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 01:31:43PM -0700, Joseph Kogut wrote:
> Document vendor specific compatible string for Mali gpus on Exynos SoCs.
> 
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> index 1b1a74129141..a9704c736d07 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> @@ -18,6 +18,7 @@ Required properties:
>      + "amlogic,meson-gxm-mali"
>      + "rockchip,rk3288-mali"
>      + "rockchip,rk3399-mali"
> +    + "samsung,exynos-mali"

Are there any driver differences for Exynos? If not then why adding
another compatible?

Best regards,
Krzysztof

>  
>  - reg : Physical base address of the device and length of the register area.
>  
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
