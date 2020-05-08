Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02721CBAB7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 00:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z220KrUNOLRxSXkPKnHj6sWXk5Swe6NJjzQHk8hkN/I=; b=tAPDPG/CeX8cKZ
	Z0idwvQIr56Q/rsJmzGYpfJlwy7BoNHPMkmYnv03JdcMwNIDYrLXFznfLuCmZmFMIYv8bL/Hyjw7I
	my7Kbd2u7QnR+CP5A1f56vm8V8ZagIac1CieA0BpcANMaNYqUUQ1imyhvayQjsKkamICCGPYJPU1x
	4tg0ovjfBYr26MLUZomDRVd8BlLvfp85x2XAUfDQPyv7okP872KfxoGbY/yS0+BGG9FSmcQRL+7FU
	7q3wcWKjxvHRHQ2cgFoiqBT0FEiW0EAexqvdNXEUjWthK8JGZpPM9AVthWMLTCqurk2hlPQFeq2Bp
	qRy703ituwBuye2jvmkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXBTH-0002XM-Fp; Fri, 08 May 2020 22:27:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXBT7-0002WI-HG; Fri, 08 May 2020 22:27:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id j5so3720387wrq.2;
 Fri, 08 May 2020 15:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:dmarc-filter:dkim-signature:dkim-signature:in-reply-to
 :references:mime-version:precedence:list-id:list-unsubscribe
 :list-archive:list-post:list-help:list-subscribe:errors-to
 :archived-at:list-archive:content-transfer-encoding;
 bh=oJY2tXB3h0jgTTxYsPIJ64qPRYc6VY1czEgCBA/cBOs=;
 b=Oy0DLQoRf5S8ozJ8EBS6KK4sFTj7giBqabsC8wGmwuQXJrOlJcZyOBpeA3cjnGlPUv
 a8zXOVDC7RrCePGsqyJCg4EnSFJVQYZoOA8Fi65W6fbFaWUrG2OqZEbYRCHE/NACmebu
 pQOxB2SNzxbLQ6OHY+0C7KYcQpkgm5EgsUYb6tOm25+sgMr7uFEi7TuiDKVh8zst8fHq
 Bi6j48c0m3vTZDQuVU8goxtaNnYtQfBnMftKP1d23iFp3K7+oppOuqZUrYTyr4+Xts2O
 d8fSF20U/9SvGdILp2RuOaGF0ZHbs5GNRevOuR5iuAHeGXAJ17MV2PvKZyYtD1J35fTF
 Smkw==
X-Gm-Message-State: AGi0PubDT/ph5Cis1A2pFGmZy2kE2xMdneChSTaDOwCUXcprVNUx0CYk
 RBBlzwHPan9usutkti/DQV4=
X-Google-Smtp-Source: APiQypJ/tHXFNl2aDE+ldylgI+C5KhtJolAD/ilG/HX28NkBMw8dXbr36eeu4B+zMOiTEmaXBZQs9Q==
X-Received: by 2002:adf:f845:: with SMTP id d5mr5448345wrq.239.1588976862281; 
 Fri, 08 May 2020 15:27:42 -0700 (PDT)
Received: from localhost (i577BC173.versanet.de. [87.123.193.115])
 by smtp.gmail.com with ESMTPSA id y3sm5020750wrm.64.2020.05.08.15.27.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 08 May 2020 15:27:41 -0700 (PDT)
From: thomas graichen <thomas.graichen@googlemail.com>
X-Google-Original-From: thomas graichen <thomas.graichen@gmail.com>
To: martin.blumenstingl@googlemail.com, kishon@ti.com, robh+dt@kernel.org,
 vkoul@kernel.org, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH 1/6] dt-bindings: phy: meson8b-usb2: Convert to json-schema
Date: Sat,  9 May 2020 00:25:24 +0200
Message-Id: <20200502114752.1048500-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200502114752.1048500-2-martin.blumenstingl@googlemail.com>
References: <20200502114752.1048500-2-martin.blumenstingl@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Status: No, score=-9.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
 DKIM_SIGNED, DKIM_VALID, FREEMAIL_FORGED_FROMDOMAIN, FREEMAIL_FROM,
 HEADER_FROM_DIFFERENT_DOMAINS, INCLUDES_PATCH, MAILING_LIST_MULTI,
 SIGNED_OFF_BY, SPF_HELO_NONE, SPF_PASS, URIBL_BLOCKED,
 USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99]) by
 smtp.lore.kernel.org (Postfix) with ESMTP id D2799C47254 for
 <linux-amlogic@archiver.kernel.org>; Sat,  2 May 2020 11:48:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133]) (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384
 (256/256 bits)) (No client certificate requested) by mail.kernel.org
 (Postfix) with ESMTPS id A962D2137B for <linux-amlogic@archiver.kernel.org>;
 Sat,  2 May 2020 11:48:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
 dkim=pass (2048-bit key) header.d=lists.infradead.org
 header.i=@lists.infradead.org header.b="TRLX2qyG";
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=googlemail.com header.i=@googlemail.com header.b="oQM9HI5Y"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A962D2137B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none)
 header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none
 smtp.mailfrom=linux-amlogic-bounces+linux-amlogic=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209;
 h=Sender: Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=LlW1ruu91jD6bCtxOoyDFXSQfkgAj+gmVCSR8ubB/ys=;
 b=TRLX2qyGB+RbAL
 wN60LIV869hKMHBmO4um8k9dkDQjuI+LT1fsk9SJJ5V+GP1aZWGiKtFHs9Nyklzpsodq/fqOp9FLF
 ido5Hj2kkGFVm/pAh3B8LyutkX7ypqSG6IXnUrGBdYJaIUlZ0xCMMvjti387Z0SkuceSr4HeZqlF4
 AzZOg1HbXkZyERnJxhhBZU5cdqEVjreN7Aa+7y5tqvQ0kYjPFphkaDcNYS5jjQm0LlEcDewm++slx
 WsKEpyZOYn+1f79YP0ZwaUGqHs2JtxSgWwxUl43z2u7VbFJTUQ/b5hJDOjvXQoBOwK+O1OO54x7Bu
 6EzELTsRg/YEVv0eNhHg==; 
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org) by
 bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux)) id
 1jUqdW-00084F-Vx; Sat, 02 May 2020 11:48:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441]) by
 bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux)) id
 1jUqdC-0007d8-Kx; Sat, 02 May 2020 11:48:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id x17so14968984wrt.5;
 Sat, 02 May 2020 04:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=googlemail.com;
 s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=98yd6/MjdfkYVYK6lpue8l8KyVR5I9cjkaTH2AGGuE8=;
 b=oQM9HI5YKF9AIc22557RWgfMXw189lprQTDWh3/TkJNwafueJi6rEJ+MLbh1sCtDEu
 fwTxkLF9lABWq8K74S8CepWTreXt46oNYy0lTL7yxXCTGXvQeZFZVWjij+rD6uIJ1yt1
 qcnY8JljC4/tTbDqXNVA9riGb0b40m9NuuwinG9pk+cekjW5lXzAg6MQUX0o7oD9qTGz
 Y0nTLoAPSST6/0pYZWxMBxUnz1ORSlyPx72hZEI6IF/XfzvYNbPBwyt02yA++1YkZ1VE
 J2/UECV/BR0GA/ONA/s2yZfDSK4dQRqYkipAgYEwiPhFk98jVs1uZmzFapjZaSnIhJWi 5plg==
X-Received: by 2002:a5d:6850:: with SMTP id o16mr8668993wrw.309.1588420108230;
 Sat, 02 May 2020 04:48:28 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8]) by smtp.googlemail.com with ESMTPSA
 id s17sm3801599wmc.48.2020.05.02.04.48.27 (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 04:48:27 -0700 (PDT)
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-BeenThere: linux-amlogic@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
Archived-At: <https://lore.kernel.org/linux-amlogic/20200502114752.1048500-2-martin.blumenstingl@googlemail.com/>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_152745_574282_2F436A3C 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thomas.graichen[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-BeenThere: linux-arm-kernel@lists.infradead.org
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: hexdump0815@googlemail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Martin Blumenstingl <martin.blumenstingl at googlemail.com> wrote:
> Now that we have the DT validation in place, let's convert the device
> tree bindings for the Amlogic Meson8, Meson8b, Meson8m2 and GXBB USB2
> PHY over to a YAML schema.
> 
> While here, also add the fallback compatible string
> "amlogic,meson-gxbb-usb2-phy" which is already used in
> arch/arm/boot/dts/meson{,8,8b}.dtsi.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Tested-by: thomas graichen <thomas.graichen@gmail.com>

> ---
>  .../phy/amlogic,meson8b-usb2-phy.yaml         | 61 +++++++++++++++++++
>  .../bindings/phy/meson8b-usb2-phy.txt         | 28 ---------
>  2 files changed, 61 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
> new file mode 100644
> index 000000000000..c2fe8c08d99e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/amlogic,meson8b-usb2-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson8, Meson8b, Meson8m2 and GXBB USB2 PHY
> +
> +maintainers:
> +  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +            - amlogic,meson8-usb2-phy
> +            - amlogic,meson8b-usb2-phy
> +          - const: amlogic,meson-mx-usb2-phy
> +      - const: amlogic,meson-gxbb-usb2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: usb_general
> +      - const: usb
> +
> +  resets:
> +    minItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  phy-supply:
> +     description:
> +       Phandle to a regulator that provides power to the PHY. This
> +       regulator will be managed during the PHY power on/off sequence.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#phy-cells"
> +
> +examples:
> +  - |
> +    usb-phy@c0000000 {
> +      compatible = "amlogic,meson-gxbb-usb2-phy";
> +      reg = <0xc0000000 0x20>;
> +      resets = <&reset_usb_phy>;
> +      clocks = <&clk_usb_general>, <&reset_usb>;
> +      clock-names = "usb_general", "usb";
> +      phy-supply = <&usb_vbus>;
> +      #phy-cells = <0>;
> +    };
> diff --git a/Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt b/Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt
> deleted file mode 100644
> index d81d73aea608..000000000000
> --- a/Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -* Amlogic Meson8, Meson8b and GXBB USB2 PHY
> -
> -Required properties:
> -- compatible:	Depending on the platform this should be one of:
> -	"amlogic,meson8-usb2-phy"
> -	"amlogic,meson8b-usb2-phy"
> -	"amlogic,meson-gxbb-usb2-phy"
> -- reg:		The base address and length of the registers
> -- #phys-cells:	should be 0 (see phy-bindings.txt in this directory)
> -- clocks:	phandle and clock identifier for the phy clocks
> -- clock-names:	"usb_general" and "usb"
> -
> -Optional properties:
> -- resets:	reference to the reset controller
> -- phy-supply:	see phy-bindings.txt in this directory
> -
> -
> -Example:
> -
> -usb0_phy: usb-phy@c0000000 {
> -	compatible = "amlogic,meson-gxbb-usb2-phy";
> -	#phy-cells = <0>;
> -	reg = <0x0 0xc0000000 0x0 0x20>;
> -	resets = <&reset RESET_USB_OTG>;
> -	clocks = <&clkc CLKID_USB>, <&clkc CLKID_USB0>;
> -	clock-names = "usb_general", "usb";
> -	phy-supply = <&usb_vbus>;
> -};
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
