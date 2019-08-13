Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD4E8C3B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fz/ibC7kg/T45Qc9noyt8F2/Ho8fKc1uvhV3fgUTjfY=; b=F/INHtkypINfd4
	yXSIBB7Ku5IvZkZgUUVmh2LNJRbzz+z21zc4JRBP8faCL77bRPa80ts6c32+MvsIOD7wi7EQYIwDm
	Y+g2OVYmDjijksCr3ab5XE6bBGk/wThHChdS9U0tKu9gpVEMKIHLlkTEa7i7zjzjkOuuNyCMAbGGi
	lzxwpRAhdIlCUCQLDvc5t/Eb7dy7rIMa84KWJtpYGiZ0OxKnOgKof57/J6v9WdlYI4H7OrIj0XYut
	OlF43BvCEZY292W15y/FdEkh292zmC/+4Xwn+V+Pu86+18sPZj9TlIwW8c5yvdmSLtK3Vx87iA2bq
	v6IrksKYbIzqp1KSghSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeNv-0000n6-PF; Tue, 13 Aug 2019 21:31:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeNk-0000iq-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:31:06 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1034B21721
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565731864;
 bh=XkpRbJVll+516C+jJvJAyZYjkbPpLw3esxFYVJy/wTM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BhKlEJ07K2sEEE5X4BQU8lEPMxeIpf0FdTFhXiajh0LjFw8bDbY3WzB2dNJ4vcMn3
 UGtMwQUP93jw9omyNyPFpXjzVk9Hl234h1a8jhcbZevW85Qxd1ii4y5Fu06AyWI7Am
 GHJYOHU67WvA4jTB6oS6YDAOleQ99BlwEqc6fckY=
Received: by mail-qt1-f178.google.com with SMTP id b11so8169084qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:31:04 -0700 (PDT)
X-Gm-Message-State: APjAAAUcmKOWt+CHLF7ExtwcPy6pXxdmiYcI88ImyxFxHZcW/XUpeOy+
 4w+7oBue53dzUuuARa0bYGWbA8QGHGNBUUsXxg==
X-Google-Smtp-Source: APXvYqxokdujfBE8cDSjy43/2Jcz08YFXVAXNp4Cx5lVzoxujubkxGKCo14iNFpW20deuL9aWMxvPVwsHCwUEklSXXc=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr27868839qtq.136.1565731863171; 
 Tue, 13 Aug 2019 14:31:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190813124744.32614-1-mripard@kernel.org>
 <20190813124744.32614-2-mripard@kernel.org>
In-Reply-To: <20190813124744.32614-2-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 15:30:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJa-_x+QKkuQ2ZTt+tOtJWJ0NhywZMKomQhtShYr7WbTA@mail.gmail.com>
Message-ID: <CAL_JsqJa-_x+QKkuQ2ZTt+tOtJWJ0NhywZMKomQhtShYr7WbTA@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: watchdog: Convert Allwinner watchdog to
 a schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_143104_696180_603BD853 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Frank Rowand <frowand.list@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 6:47 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner SoCs have a watchdog supported in Linux, with a matching
> Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../watchdog/allwinner,sun4i-a10-wdt.yaml     | 50 +++++++++++++++++++
>  .../bindings/watchdog/sunxi-wdt.txt           | 22 --------
>  2 files changed, 50 insertions(+), 22 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
>
> diff --git a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> new file mode 100644
> index 000000000000..93df27ec1664
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/allwinner,sun4i-a10-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 Watchdog Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun4i-a10-wdt
> +      - const: allwinner,sun6i-a31-wdt
> +      - items:
> +          - const: allwinner,sun50i-a64-wdt
> +          - const: allwinner,sun6i-a31-wdt
> +      - items:
> +          - const: allwinner,sun50i-h6-wdt
> +          - const: allwinner,sun6i-a31-wdt
> +      - items:
> +          - const: allwinner,suniv-f1c100s-wdt
> +          - const: allwinner,sun4i-a10-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +  timeout-sec:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Contains the watchdog timeout in seconds.

Can you do a common watchdog schema to include with this and the node
name at least.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
