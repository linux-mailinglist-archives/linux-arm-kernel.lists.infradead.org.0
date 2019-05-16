Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E74A20C8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihKzjDSmmkQoL9W9hP4Wz8MFpG3PEkry827sjA8BD+s=; b=f3jr2xgNvMWyW6
	Vcvdhake8KXHA/zq1sXV+JwYfAyJ3NhdN5kQ5tPDudAgDSlMt1CZ6khFJbfo44ehn/kVz1Lawx+Te
	HJzdk8qDrZLFl7+UhuqrCy6c3Z4rbJrt97vQDLW/4S9QiNqi9vGwnRCE97kUl/FcxvJEsDet+dhnB
	WIYKVhKjIhlgbhcPW7Mm2f8K5c3qOVL7ZLr5LjJKhIVPoHvvcMX86JldkULXca3mjO+pMpVQ/fjL7
	x79cGadUwWGmGVVT9BjlpveTt/kB1ZDyMqRtsTi5ylbgn7YCRGxMHPFQAB2+Lszdt/VrGjO1Jv6xo
	tj06IxjM+aXjokAAGM6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRItl-0007T5-Mb; Thu, 16 May 2019 16:06:25 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIte-0007Sg-Dv
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:06:19 +0000
Received: by mail-io1-xd44.google.com with SMTP id a17so3010248iot.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l76NcH5cHUwJAvvJuChpqeFUnjGCgPi9xk7n4++L00s=;
 b=uGmXrzUW+1z24r3t/lx9WvPQtGQKfUL5O7qK4ZKBDmyu0QMU6bFsIFj5qmsv9n5koS
 FiIRVmp4KwjQTutO6UtIcB9bKoBbLORMhxm3N81dzF8uQTLYLLcz92FnrH694/y0dzeN
 h12emR7V2Sq0LI7beZ3NgfS1jsZ2d/A93HoMwuwoGRVPJrqkCciQzzfkH6Y9gclEFfe+
 sEtzp8clgBF9jV+QyG2BBN0i7z7PMBkiqhQScCAoEqo+VHKzsQoGZCvqAupIxcqdKA6U
 jq5gioNo+E9a7vNQkHGd2UyoyfMuq9M7QiBiaYKNVVx0vExuBJ0VprcNYc/MhFTERhla
 xRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l76NcH5cHUwJAvvJuChpqeFUnjGCgPi9xk7n4++L00s=;
 b=eTRptwV15fRCHnwkJLkPF7QMg/YtF+GAH1jnUDQbxuVRTj0dpwAB5bUC2MNoEMxydP
 MVysoPJrVRppLuisXTwOeI8dkAjrBoAq5JDsCq6fQXJy+GFtFUNnxr0aotk8ogc0anCF
 Q/sYqrwd5cWJRxfi1H2GduJlso3TKB2nP+fswP7KYKxPgsnsjsCpxgOqYGJKlgXwrapL
 T2fThl68132i1eWAJfjrZwZvOY4KQrrwq+os8RwUQj6u3N4cUoVpK7Mch8hN0IsNiK/L
 9TqfHsOQPt774XX1H/3yxgx6FkbSLpXJhyYAlMy5vtXnM9cwaumFyYQeBbETCosnF7+S
 2kIw==
X-Gm-Message-State: APjAAAWKqy9ayrrWEXAMFmqvi7PsYMkuLBrSuIYerjdBVLNQpCo7GvQU
 dPVTiNw7CQl305xgN7QWRUVKySJQBMw7sGDkRaL9zQ==
X-Google-Smtp-Source: APXvYqywh4ufDRQ+1VM/1bI1+KBx9S5ksORHmCsmKaGMWGPjQBu+uCNciI4ja4dIz8R0VSXRXWrpYJAT//cO1DLrJUU=
X-Received: by 2002:a6b:ea12:: with SMTP id m18mr28822415ioc.173.1558022777062; 
 Thu, 16 May 2019 09:06:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
 <20190430162910.16771-6-ard.biesheuvel@linaro.org>
In-Reply-To: <20190430162910.16771-6-ard.biesheuvel@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 16 May 2019 18:06:05 +0200
Message-ID: <CAKv+Gu96ZVOXSp+3nHrPOoQUJRNgW5MG8wOv_Refyo8yL54RjA@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: add Atmel SHA204A I2C crypto processor
To: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, 
 Devicetree List <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_090618_470594_321FF4CE 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Joakim Bech <joakim.bech@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(+ devicetree list)

On Tue, 30 Apr 2019 at 18:29, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> Add a compatible string for the Atmel SHA204A I2C crypto processor.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  Documentation/devicetree/bindings/crypto/atmel-crypto.txt | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> index 6b458bb2440d..a93d4b024d0e 100644
> --- a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> +++ b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> @@ -79,3 +79,16 @@ atecc508a@c0 {
>         compatible = "atmel,atecc508a";
>         reg = <0xC0>;
>  };
> +
> +* Symmetric Cryptography (I2C)
> +
> +Required properties:
> +- compatible : must be "atmel,atsha204a".
> +- reg: I2C bus address of the device.
> +- clock-frequency: must be present in the i2c controller node.
> +
> +Example:
> +atsha204a@c0 {
> +       compatible = "atmel,atsha204a";
> +       reg = <0xC0>;
> +};
> --
> 2.20.1
>

If there are no objections to this patch, may I please have an ack?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
