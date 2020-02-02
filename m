Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894AE14FF68
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtkhbTntFvIAOzTb0S1k1LRJKEUXocqy91gbutfHBDw=; b=Jww+wzBgs4uWbN
	cfr5hfn59ro34NMR1knFgQyQ/2C1U5xSN0DEgu5+jj6K0FYUEOD/Qkr9titK5LAuA81WaOlsE2EaP
	V8HN69YNqJghczczBWG9ehSWwFnIbDCuw7dAjzlQpnFXfeYwz/g9ghXIx0Z7t6DnAM4NkDjP7HGbH
	EammXP4esrlQitMW+/h3iK2py7+8nXYjzuq5NJ26nKaJnvtGIGNfOJvgNKOHWtufwQt2tazZcdCPN
	/DAhRiusBfXqmYwFu18hwPoV4keozFC7V1GklwZ1duKAYZMXS4vm5k2xcCZZaSKnnvD3IoCBoGXjZ
	QYLHUFd+nD/x9h8QdNgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMpH-0000tu-17; Sun, 02 Feb 2020 21:30:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMpA-0000t5-Gg; Sun, 02 Feb 2020 21:30:37 +0000
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
 [209.85.219.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7CF020838;
 Sun,  2 Feb 2020 21:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580679035;
 bh=VdLRZqk+H3Imny+gDyGky1KRiuixaXactoYWKmUoh0k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=l8A0C0boYECZuWi3ryOaAWOo7tY5wsYjR1HQs2PalQtNLCujhArePN57Z8RR9tOkN
 mLMCmWNaNoPwSmPHXDSX52r3b6biDPr0+IuIStzPAaN9bhCGiTEgqTTruf1yFA94+C
 Dv6pJCnrS/Wx+KZG9gpN1Fw/jbiLh9gi3sef5IH8=
Received: by mail-qv1-f51.google.com with SMTP id n8so5896889qvg.11;
 Sun, 02 Feb 2020 13:30:34 -0800 (PST)
X-Gm-Message-State: APjAAAVQhfsL7j8nnq/MhygZcDJAcd+Db4IqfXBiNCDo7jcZrNx1WDZE
 rLspf3g3ZNtOateAqeb0F7/oiEIE4BJFjkv6yQ==
X-Google-Smtp-Source: APXvYqx1g5mqdVF98VrntlFMyPTLWRw5bRqj5c9aFp97VOvISBeqahu7q9Dw2HqrEwhBmqSByPbrJtBbgAmwZhOSOrs=
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr19826919qvn.79.1580679033968; 
 Sun, 02 Feb 2020 13:30:33 -0800 (PST)
MIME-Version: 1.0
References: <20200202211827.27682-1-f.fainelli@gmail.com>
 <20200202211827.27682-11-f.fainelli@gmail.com>
In-Reply-To: <20200202211827.27682-11-f.fainelli@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Sun, 2 Feb 2020 21:30:20 +0000
X-Gmail-Original-Message-ID: <CAL_JsqJDoOFQTRDAeugcv6vPaM6qRbJ5B3-pjZZC+nn=q-ex6Q@mail.gmail.com>
Message-ID: <CAL_JsqJDoOFQTRDAeugcv6vPaM6qRbJ5B3-pjZZC+nn=q-ex6Q@mail.gmail.com>
Subject: Re: [PATCH 10/12] dt-bindings: arm: bcm: Convert Vulcan to YAML
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_133036_600262_D167A7CD 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Scott Branden <sbranden@broadcom.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@vger.kernel.org,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 2, 2020 at 9:19 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> Update Vulcan SoC family binding document for boards/SoCs to use YAML.
> Verified with dt_binding_check and dtbs_check.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../bindings/arm/bcm/brcm,vulcan-soc.txt      | 10 --------
>  .../bindings/arm/bcm/brcm,vulcan-soc.yaml     | 24 +++++++++++++++++++
>  2 files changed, 24 insertions(+), 10 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt
> deleted file mode 100644
> index 223ed3471c08..000000000000
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -Broadcom Vulcan device tree bindings
> -------------------------------------
> -
> -Boards with Broadcom Vulcan shall have the following root property:
> -
> -Broadcom Vulcan Evaluation Board:
> -  compatible = "brcm,vulcan-eval", "brcm,vulcan-soc";
> -
> -Generic Vulcan board:
> -  compatible = "brcm,vulcan-soc";
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
> new file mode 100644
> index 000000000000..0bfb45457150
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
> @@ -0,0 +1,24 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/bcm/brcm,vulcan-soc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom Vulcan device tree bindings
> +
> +maintainers:
> +  - Robert Richter <rrichter@marvell.com>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: Northstar2 based boards

Copy-n-paste?

> +        items:
> +          - enum:
> +              - brcm,vulcan-eval
> +              - cavium,thunderx2-cn9900
> +          - const: brcm,vulcan-soc
> +
> +...
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
