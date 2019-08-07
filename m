Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E533D8528B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 20:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIWqUSoMWsKVvePkJwytUDE5/QfWkNud3i6UlAGdjpU=; b=HGsMe9c05AU7hg
	CTMgwcPlYQgNLvzG4+r3qUIGcqbaLCz1yGFaJqEAIwXUaLz171B262xXiGuwqarYiCT8983lWvTBH
	MvT4y7qn4j+6yomrK9M7LMskWOJ8ihKqXsQr9qa2dtk8R6jNudgNCkrZVjFuTHgHnZ9PhwcTjD4P9
	NsAa2RjdnR0rRoTBp9ynZjRmsurrM/RRq/K1bzPCfX0Cg6cpqFAvn++oGJS6l6HTfEhmfLGopAHCC
	qq7tgITBpHPRO0Ont63poxvHnzMcNtRoCHVIbRWJlDLXm1AMYLPmPMicBIEYpnPCg/baAX5H+MR5F
	Ycgq+L2KNOYpREeWlG1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQEG-0001Sw-HC; Wed, 07 Aug 2019 18:00:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQDx-0001R7-EW; Wed, 07 Aug 2019 17:59:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id b7so41984256pls.6;
 Wed, 07 Aug 2019 10:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ng6xzoejdEmB6bEu6I8V9VsO/8EgPH3m7FsrYidIs9U=;
 b=PJUT3jDPkZBHoMReYOZ90wqru2WmbuqSeaiKUYBfJSzLLddji9y1+lo7MG3H/v3MHI
 X64701CtrJr9jGEFNXdJWD6zxWrrM6m77kSRt9xQhxI3AdzSCTpXE/ImRE8vUrmfDaTt
 vJmtJaMljNtGdVXtpratOJdIcUIhYbNJuziKN0R7Gp94W4Bk9Qqs96oPoR4/zgBP5/G3
 W4moh+AeYd1yecIbW5ZYxLsgYcdxqcvvELrdP6I/e/+LE6kw4+8j3SPcaOyl/b4mzYKD
 oNcm58YoLsd6gx+vD1Q64Pot5N5mYpeT3wTySLEGmSNvxaShEtaKCd3aTiUaNGKipee/
 mKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ng6xzoejdEmB6bEu6I8V9VsO/8EgPH3m7FsrYidIs9U=;
 b=BaXg/H51TASvvd2/tQ9K6k++KIKDzW9FBFbbD/i7AY0HqTfVpING0bNR5rWLJEM6ZG
 oIGsqg2jTbK6+l3L1/T3edS8rUpm1ViDiRTTLJQCJokUhLvXUOzITkbM61PVkSYWUU2t
 TmPqMNR/9nM4OHOGuZ59wnop2ntBriCDr4Zao6lL7iBGGQ2OO/TDoCre9wv7TJw9SpRP
 gubAbAp5kw2/yENKnZwpS9hmxGfwc7xT9wInj810aQrenuN1quvnc8b5XphB8Slk24cF
 okCAubNU9di+91Ey57c48T6AJjMjqqLkT6TSAeKOu8WyV1H9hZ9AAv//7fKZABUOi0af
 VFvw==
X-Gm-Message-State: APjAAAV0yaXJUbXuwwRJvH5nkWCuZjudpLFi8Tpe9G1b/xCCJ85oBBrx
 88HduIR2B9ztq+2bUPYaEZs=
X-Google-Smtp-Source: APXvYqw+aPcdft4eNHEsQckq4s+4Z5jgKpCx7EjtIxho9e8VbTKoeh7Lgrtix37xUJEpn6vv3crhWA==
X-Received: by 2002:a65:62d7:: with SMTP id m23mr8765206pgv.358.1565200784513; 
 Wed, 07 Aug 2019 10:59:44 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id w18sm120988761pfj.37.2019.08.07.10.59.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 10:59:43 -0700 (PDT)
Date: Wed, 7 Aug 2019 10:59:42 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [RFCv2 9/9] dt-bindings: watchdog: meson-gxbb-wdt: convert to yaml
Message-ID: <20190807175942.GA26331@roeck-us.net>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
 <20190805120320.32282-10-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805120320.32282-10-narmstrong@baylibre.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_105945_487985_C206640A 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-amlogic@lists.infradead.org, robh+dt@kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 02:03:20PM +0200, Neil Armstrong wrote:
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic GXBB Watchdog timer over to a YAML schemas.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  .../watchdog/amlogic,meson-gxbb-wdt.yaml      | 37 +++++++++++++++++++
>  .../bindings/watchdog/meson-gxbb-wdt.txt      | 16 --------
>  2 files changed, 37 insertions(+), 16 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
> new file mode 100644
> index 000000000000..d7352f709b37
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
> @@ -0,0 +1,37 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/watchdog/amlogic,meson-gxbb-wdt.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Meson GXBB SoCs Watchdog timer
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-gxbb-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description:
> +      A phandle to the clock of this PHY
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +examples:
> +  - |
> +    watchdog@98d0 {
> +          compatible = "amlogic,meson-gxbb-wdt";
> +          reg = <0x98d0 0x10>;
> +          clocks = <&xtal>;
> +    };
> diff --git a/Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt b/Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt
> deleted file mode 100644
> index c7fe36fa739c..000000000000
> --- a/Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -Meson GXBB SoCs Watchdog timer
> -
> -Required properties:
> -
> -- compatible : should be "amlogic,meson-gxbb-wdt"
> -- reg : Specifies base physical address and size of the registers.
> -- clocks : Should be a phandle to the Watchdog clock source, for GXBB the xtal
> -	   is the default clock source.
> -
> -Example:
> -
> -wdt: watchdog@98d0 {
> -	compatible = "amlogic,meson-gxbb-wdt";
> -	reg = <0 0x98d0 0x0 0x10>;
> -	clocks = <&xtal>;
> -};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
