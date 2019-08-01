Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD6F7DE71
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thGleT3xLYxH7VPaBWPnZLNJhpPYiuKfxxCADJ6mP48=; b=DaWtCDO2vlloi7
	o+AnwMnEfFzdjiu4qkigrHRCQx3jkgPYouK6s30x48ucFrfT+DnLlFVNkhE3EIEaUgGaluwEgyJhK
	Y2VDPAJ6uHYzVLk3SgPauJFqz/QEGSD6Vj1bNGtJ+Yhan94eAPBtPnhijwx/cevG0KExUygx6rerQ
	x8rc45i6SiQHSuzk046zdwMzG3KH+L3HnIGaQF0u5dwe6cN4GF/YFs3J86IjizKg8Pc2RT1pr2vR+
	Iia17poGQGFzLmvmFg5fEhZ79FHhUjqNAmmYsM5nhwcxBPbogoxRUd0gQCkiteHTWwmXyI8JpNYyU
	j/lAJYsjV21hKF0DYmxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCgL-0002Cb-Qg; Thu, 01 Aug 2019 15:07:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCgC-0002BS-H0; Thu, 01 Aug 2019 15:07:46 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E672F216C8;
 Thu,  1 Aug 2019 15:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564672064;
 bh=iSl6ok6B2SROLYHTwlF9Rt9vwiSJ20o3/syGoRjvS4k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gwPTDBqSBdwKa7yeRMuwVfg3mJvvuhisdPYP1JnpirCoSUXWvBLGj+YvmKnoOLAWO
 SEMLFTYKzvNxJ9AShvtkVCIEhmy/WLWSD9Y5OwRQX8fhhoaUyS0HorXz0AtNbmA1SQ
 zIzhJQ5lx2n8XBdwrhIk4iciJE4J11QnvRUPvoQY=
Received: by mail-qt1-f172.google.com with SMTP id l9so70504538qtu.6;
 Thu, 01 Aug 2019 08:07:43 -0700 (PDT)
X-Gm-Message-State: APjAAAU4rhDa363MLF9YjwkPjEVDzw3JVSYaYUe/ZITumubMsVu2772L
 tR+MjjXKPoXf8EARBQSB+tf5TOciNbk/1FXHgQ==
X-Google-Smtp-Source: APXvYqy7Pqe/EM1KT5Xeue0nhWEZlvbnoGusFTQHCOXMTlxdphxp7CGKAsGtOykYhiSsvQo3hQWcwNukIZ5EHYeeHME=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr94377748qve.72.1564672063061; 
 Thu, 01 Aug 2019 08:07:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190801135644.12843-1-narmstrong@baylibre.com>
 <20190801135644.12843-7-narmstrong@baylibre.com>
In-Reply-To: <20190801135644.12843-7-narmstrong@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 1 Aug 2019 09:07:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJbt=rzDrD8+Py0EcGx8ZiaqEupv5Rq+tCMk1ZcxKaOcg@mail.gmail.com>
Message-ID: <CAL_JsqJbt=rzDrD8+Py0EcGx8ZiaqEupv5Rq+tCMk1ZcxKaOcg@mail.gmail.com>
Subject: Re: [RFC 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_080744_611572_BF2AAA64 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-amlogic@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 7:56 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../bindings/phy/meson-g12a-usb2-phy.txt      | 22 ------
>  .../bindings/phy/meson-g12a-usb2-phy.yaml     | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
> deleted file mode 100644
> index a6ebc3dea159..000000000000
> --- a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -* Amlogic G12A USB2 PHY binding
> -
> -Required properties:
> -- compatible:  Should be "amlogic,meson-g12a-usb2-phy"
> -- reg:         The base address and length of the registers
> -- #phys-cells: must be 0 (see phy-bindings.txt in this directory)
> -- clocks:      a phandle to the clock of this PHY
> -- clock-names: must be "xtal"
> -- resets:      a phandle to the reset line of this PHY
> -- reset-names: must be "phy"
> -- phy-supply:  see phy-bindings.txt in this directory
> -
> -Example:
> -       usb2_phy0: phy@36000 {
> -               compatible = "amlogic,g12a-usb2-phy";
> -               reg = <0x0 0x36000 0x0 0x2000>;
> -               clocks = <&xtal>;
> -               clock-names = "xtal";
> -               resets = <&reset RESET_USB_PHY21>;
> -               reset-names = "phy";
> -               #phy-cells = <0>;
> -       };
> diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
> new file mode 100644
> index 000000000000..4cd5ba97d469
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/meson-g12a-usb2-phy.yaml#"

For this and the filename, use the compatible string (i.e. add 'amlogic,').

> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic G12A USB2 PHY
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-g12a-usb2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description:
> +      A phandle to the clock of this PHY

As mentioned elsewhere, this description can be dropped.

> +
> +  clock-names:
> +    items:
> +      - const: xtal
> +
> +  resets:
> +    maxItems: 1
> +    description:
> +      A phandle to the reset line of this PHY
> +
> +  reset-names:
> +    items:
> +      - const: phy
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  phy-supply:
> +     maxItems: 1
> +     description:
> +       Phandle to a regulator that provides power to the PHY. This
> +       regulator will be managed during the PHY power on/off sequence.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"

phy-supply was required in the old doc though the example disagrees.
If dropping required is desired, just mention so in the commit
message.

> +
> +examples:
> +  - |
> +    phy@36000 {
> +          compatible = "amlogic,meson-g12a-usb2-phy";
> +          reg = <0x36000 0x2000>;
> +          clocks = <&xtal>;
> +          clock-names = "xtal";
> +          resets = <&phy_reset>;
> +          reset-names = "phy";
> +          #phy-cells = <0>;
> +    };
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
