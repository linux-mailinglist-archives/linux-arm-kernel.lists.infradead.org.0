Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEC51C3751
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 12:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpRzJorluG82EQcliGWGt8dgJMlBFMYfQcUYEStJKEs=; b=sbTS0CPYLHcA26
	4eukz0UMONW9Qv9KCnyi9zBYO9385BfckIP3nf1yDN5OZXtXfGhCKY5IZtjGBDNbqdQgxQ3YVtjVu
	fuzKi1frUI4FUoOf0H2ZBS3AM0BvakCQUFfAR58wQ6DR4fA8VwjpsaADP12vsASpPMHZpW9j/t29r
	uJluywsIyHLPFINHrpXg/u9pZZD8gJTOpnJ8aMA4JnCYiCK/aeXrCp/ZfI47UsnCNa8RBUCq8rFLX
	ViiOLKZe09HlQqMP6UzV45aaDBR1S0FG0oqDWQC7vJeQHf0aimi0Fe8OSDZiY9IGjsheoyLI0m79L
	nEc8+zPN5s7N3PDoxQcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYlS-0008WH-7k; Mon, 04 May 2020 10:55:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYlG-0008Uj-QM; Mon, 04 May 2020 10:55:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id v4so15234790wme.1;
 Mon, 04 May 2020 03:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MQzZFCIobcGRmD/3+2nuvnxHv+aNaXAHRF5s3/10ij8=;
 b=m/PZmuLtPqcrVYqQd8qj0jK+TnpKJK5MX7Eozj10EZs/2HHL50KGQbVzu8gMp02gQJ
 6F9pbqJxSIP5cyRweFxpWJmvEjHRO8iYRZ7uJtUkgDOuGJdz6ddKmppLGZR3e5PZRy8p
 lscDnAenUEC22uEp+XgYw32aZ+HkLVSqsvC75MSuht8EuPG6ScVjIjvMEFV9pdkEkkcf
 OArBZA9Q1sjFRuzpgxMJe/LVC99w/wnQt0E3X/QvpCR24OL4Clof6mIPLcYdTz1iOWT0
 IgmiGmXOguP6TDTfqbTQZvpTCTiMEWCPmXlM5UOvtimIP+GKpRwOyklM3Lsq6jw5VEvG
 JW4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MQzZFCIobcGRmD/3+2nuvnxHv+aNaXAHRF5s3/10ij8=;
 b=I8Fr7WFGX54ttDuzIX+mtbn2UERGj3LhvRib9q/YDEUIsw655gBkJGdFBxJgvu/pQa
 +pbNDIsIiLlLz8pIJjksjzgyhvY2M6RIEEjm2zxxKPS6YVMUJYoSMlbqN3RWDs2IZKQ5
 pgexBM91myK3o+OvZKhUdR5TeTJ+fmVAM22MtzGVm0jRGfFPR8lJAEQgLTPbRCQVOu0i
 Lu3Gn+DDaoXjvPTs7KglD5dUur0ywNRNsZ1n969cLdzphNdDGrwcF25OJcc0Xx+2JV+F
 FdDESzrTCDw6bYDB7kITsZ+kAmgHxJlbxY+0/s4YVnoSJI+Mb3vu1rqSigVP7M/A0b9J
 YvCg==
X-Gm-Message-State: AGi0Pualh9mzDei2I8hoTcrxy6SIgQ3udXhWIYcAl8xWEp1EHs9A0cw+
 eXfdkm2XruLl4UyflNHE7jifiU/ST9WP75DX+GY=
X-Google-Smtp-Source: APiQypIYRxd9Jarg4XaVun2QaTdEW4Ftk+7SlWd5NIBX1wOKIWiArNVS6La7qmbqT0diARP8mRcyXHfJL2xmf4cg4Io=
X-Received: by 2002:a7b:c0c5:: with SMTP id s5mr13769191wmh.134.1588589744849; 
 Mon, 04 May 2020 03:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
 <20200502114752.1048500-2-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200502114752.1048500-2-martin.blumenstingl@googlemail.com>
From: hex dump <hexdump0815@gmail.com>
Date: Mon, 4 May 2020 12:55:30 +0200
Message-ID: <CAKTihDVy6oSuQe4eP87hWO17tBu3=XZ-PM41YOqLVOtXJ8+YeQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: meson8b-usb2: Convert to json-schema
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_035546_880670_AEE0AD52 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hexdump0815[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hexdump0815[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 2, 2020 at 1:48 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device
> tree bindings for the Amlogic Meson8, Meson8b, Meson8m2 and GXBB USB2
> PHY over to a YAML schema.
>
> While here, also add the fallback compatible string
> "amlogic,meson-gxbb-usb2-phy" which is already used in
> arch/arm/boot/dts/meson{,8,8b}.dtsi.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Tested-by: hexdump <hexdump0815@googlemail.com>

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
> -- compatible:  Depending on the platform this should be one of:
> -       "amlogic,meson8-usb2-phy"
> -       "amlogic,meson8b-usb2-phy"
> -       "amlogic,meson-gxbb-usb2-phy"
> -- reg:         The base address and length of the registers
> -- #phys-cells: should be 0 (see phy-bindings.txt in this directory)
> -- clocks:      phandle and clock identifier for the phy clocks
> -- clock-names: "usb_general" and "usb"
> -
> -Optional properties:
> -- resets:      reference to the reset controller
> -- phy-supply:  see phy-bindings.txt in this directory
> -
> -
> -Example:
> -
> -usb0_phy: usb-phy@c0000000 {
> -       compatible = "amlogic,meson-gxbb-usb2-phy";
> -       #phy-cells = <0>;
> -       reg = <0x0 0xc0000000 0x0 0x20>;
> -       resets = <&reset RESET_USB_OTG>;
> -       clocks = <&clkc CLKID_USB>, <&clkc CLKID_USB0>;
> -       clock-names = "usb_general", "usb";
> -       phy-supply = <&usb_vbus>;
> -};
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
