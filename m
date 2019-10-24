Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B68E3CAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 21:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MI4/bj7vgSfAEUq+4mkNFtZ16Yr4al3ugGvbFSRvC/A=; b=dqv5hxcBSYc6uP
	/LJzPFPFymWWD1Xk3U1j8hcaPh+2NM5vrgFRs/NdJfS9yM+eWqhQvnWmK67emBVglVnRO/K0Wav+5
	dN2mjvfHiijuoL82T9VHnHl2X0PKLvDapvgvQVnPcvZyOCtm7ZQ/17sBtB3noSLxcsfnJnziHauiT
	wSuWxWU1u3BgcJryVTKhHz4D3BqJEg2gtDnb87yqTMGj5jP5YUgGYwcJPDPJpvmoXLmW4gYMuyO+b
	/4faAVzx5xeUC6ZT3kDouaDATJAa6zQAWmsBDZmluXISN4iTHq/Cvesj/3aYc6QXVpROenIp5mO6e
	v6x8QxrTE7o6ZmcGWOBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjGo-0001eJ-3W; Thu, 24 Oct 2019 19:59:42 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjGb-0001ce-MP; Thu, 24 Oct 2019 19:59:31 +0000
Received: by mail-ot1-x342.google.com with SMTP id c7so106927otm.3;
 Thu, 24 Oct 2019 12:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x0F8kOEXNZOfO+KIT0hQfdKv4yLZvQqLGUo1yR7k0NA=;
 b=snuxE3aHoCZdXiCfya3k+KjX1hRdlD81yjj5m/zXuf5AkSmy4EOBjVolf3jlV5YW9D
 Fjjr3kLr3wloPS2UonX0HIUFkETx2i5bJ/JX6BKqwshEBRgw2BVj0qGwvZgMPqGRRY3g
 TxBw8H6kjqwMKbYCQYhiB0uXC4la7Rfu8uoD9LCHXKAvZeNloqkQnej4z7VrR/YbhY6i
 0zeggDxB2WzPZqRZxlZ3lnORVRDURl7L8gC9WUYD2udicNGwo5g1QFsiLq3uR7Hgbtdv
 U2x36BuSqPfEeybobiQOJG9I5OfV1Zu/u1cOaAuqqvo2XIb7kF1mrYudZ0TjtwZtZLwR
 3CyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x0F8kOEXNZOfO+KIT0hQfdKv4yLZvQqLGUo1yR7k0NA=;
 b=tUpQv5makIQ98EaK5VRvvQND8IgdJat43CxkaGcnT9U5/YGBCLFbURSRdKqPyiKG1/
 BwMnjP4R0cLzSS75LxMe+OYslhgMWpNqcq3r0ZC9fk38dDc+1VjGmK9oLEhe360mqzOY
 4oewSSHgh7o1o3CIy/UrtFP2SmQEQh9ygftDxphHg7qXJRxMudmu1kl4RRGuJK5ohUV1
 dfnnrwxLutNA2JA4Q82snTxtQ5/pqo0eKvC+hIZ0ClBvfGDw0hFgyInqkLjqNolSHdXo
 Uc3hI/ewOLMFYpo8Koh84R83kSC3Ehfz9U3gFTGW7q7fFvx9WKzRZOVV6ePFYTTcn3Tq
 9+Nw==
X-Gm-Message-State: APjAAAU0PWdPio8nSAey0IQ+AdwN7tXfLgqEnRzunHZfBcT6pdlfk257
 5oSx3qKjtSNkmJ8rbWucGn//a7mMy0ej4/7kGIw=
X-Google-Smtp-Source: APXvYqwfrFMeaEKve/AdMM1rYLh7RtVdW3+WPD9G7iO/wQWEsl/rRNnNoOdK2OWQnig+oY+jXCbIZdvOKxvVAdAvS30=
X-Received: by 2002:a05:6830:13d8:: with SMTP id
 e24mr5940324otq.42.1571947168180; 
 Thu, 24 Oct 2019 12:59:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191021132322.25256-1-narmstrong@baylibre.com>
In-Reply-To: <20191021132322.25256-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 24 Oct 2019 21:59:17 +0200
Message-ID: <CAFBinCAv7fVBbZaUW-5unjcuOAWtEbDsjZFa=WeSRff7_Zrf2A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: dwc3: Move Amlogic G12A DWC3 Glue
 Bindings to YAML schemas
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_125929_757210_17724BD7 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, Oct 21, 2019 at 3:23 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> diff --git a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> new file mode 100644
> index 000000000000..45bcc98ee9a4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> @@ -0,0 +1,132 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/usb/amlogic,meson-g12a-usb-ctrl.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson G12A DWC3 USB SoC Controller Glue
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +description: |
> +  The Amlogic G12A embeds a DWC3 USB IP Core configured for USB2 and USB3
> +  in host-only mode, and a DWC2 IP Core configured for USB2 peripheral mode
> +  only.
> +
> +  A glue connects the DWC3 core to USB2 PHYs and optionnaly to an USB3 PHY.
optionnaly -> optionally

> +
> +  One of the USB2 PHY can be re-routed in peripheral mode to a DWC2 USB IP.
One of the USB2 PHYs...

with these two fixed:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> +  phy-names:
> +    items:
> +      - const: usb2-phy0 # USB2 PHY0 if USBHOST_A port is used
> +      - const: usb2-phy1 # USB2 PHY1 if USBOTG_B port is used
> +      - const: usb3-phy0 # USB3 PHY if USB3_0 is used
> +
> +  phys:
> +    minItems: 1
> +    maxItems: 3
(off-topic and probably a question for Rob: do you know the validation
mechanism knows that phys and phy-names belong together. so if one phy
is omitted then phy-names can be shorter than 3 entries?)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
