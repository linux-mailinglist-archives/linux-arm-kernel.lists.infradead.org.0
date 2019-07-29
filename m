Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C34D79D24
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 01:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvmY4ikgts4lyglgKHWjZJZWCrESThKKpl0WH+r372A=; b=nICU7FL+QwJ1V/
	whcgOaH0stbyoNX8OR1jbkF8Xn8jxbOBBZgFS+PEOGcb7jmi80E9H46uhBJ4QkzoHOjbaUIzcOQ5B
	avjWlRm+dMqcXDHvwOeG7lXx1eCOFQwEmDjcjzGxLbSGhEshBmzp2eBbCPJCsGRl6s7sI06+3jemy
	zcjBZzzDOQ+ORWL9gmSitrsArO1NaH3NZkYy5Bryjnpd/cOdhVPq1IpiVVhHiX9GJcJRbfBjbNPhP
	v1oFAMhtqaNCVZ3+2sBGRQbBxr99qndofh6M3igUJEu1C3UtRnvVE6t9kY8BO605NCQjCm1aIBXwR
	xBQaQtvopSnwPPnlOZiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsFWZ-0003b2-O4; Mon, 29 Jul 2019 23:57:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsFWP-0003ai-8O
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 23:57:42 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1D66216C8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 23:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564444661;
 bh=dMiQ9UZlmg1wAHtxio42rSqa++EhjehVjqhzpIB6zHk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tKJEyXgGfBY7H7BKIxmTMYPwSAO/utvz0nwSAmkPn9BOCrT+8tPV6iDr3Y+a2MSYF
 krQwN/QZrnIeeM/nei5mKyMdM+b9GIqvxwm8PS5zSSyqjViHgY1xOxK1d0G/HGhYBl
 oFc+99SD6JCHllpal1bVJU1aigfRUCnJItPHlh3c=
Received: by mail-qt1-f179.google.com with SMTP id a15so61263068qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 16:57:40 -0700 (PDT)
X-Gm-Message-State: APjAAAUro2wAlbyC6ljaYnlwCZPWaSJnuwc9wyQURhcGhBukGt7iYz6Z
 NQxUCQfZqGHXGuEgFFXh1EZu44T/LA91sp6Yeg==
X-Google-Smtp-Source: APXvYqzqIx+OqBWGwJWFZkq/JHh6Bxb7CsxEjHR4Kg/yXnpoIkeGjg7iAKxv2ArGd8DHDR4pOnjB+vnRMW9wKJdyBN0=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr33747911qtb.224.1564444659990; 
 Mon, 29 Jul 2019 16:57:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190729172007.3275-1-krzk@kernel.org>
 <20190729172007.3275-2-krzk@kernel.org>
In-Reply-To: <20190729172007.3275-2-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 29 Jul 2019 17:57:28 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKzsWQoc_xYXxkWa2eUdVwvCvxH-8g-2F90-_YmfU5_fg@mail.gmail.com>
Message-ID: <CAL_JsqKzsWQoc_xYXxkWa2eUdVwvCvxH-8g-2F90-_YmfU5_fg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] ARM: dts: imx6ul-kontron-n6310: Add Kontron
 i.MX6UL N6310 SoM and boards
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_165741_332574_0934130E 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 11:20 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Add support for i.MX6UL modules from Kontron Electronics GmbH (before
> acquisition: Exceet Electronics) and evalkit boards based on it:
>
> 1. N6310 SOM: i.MX6 UL System-on-Module, a 25x25 mm solderable module
>    (LGA pads and pin castellations) with 256 MB RAM, 1 MB NOR-Flash,
>    256 MB NAND and other interfaces,
> 2. N6310 S: evalkit, w/wo eMMC, without display,
> 3. N6310 S 43: evalkit with 4.3" display,
> 4. N6310 S 50: evalkit with 5.0" display.
>
> This includes device nodes for unsupported displays (Admatec
> T043C004800272T2A and T070P133T0S301).
>
> The work is based on Exceet/Kontron source code (GPLv2) with numerous
> changes:
> 1. Reorganize files,
> 2. Rename Exceet -> Kontron,
> 3. Rename models/compatibles to match newest Kontron product naming,
> 4. Fix coding style errors and adjust to device tree coding guidelines,
> 5. Fix DTC warnings,
> 6. Extend compatibles so eval boards inherit the SoM compatible,
> 7. Use defines instead of GPIO and interrupt flag values,
> 8. Use proper vendor compatible for Macronix SPI NOR,
> 9. Sort nodes alphabetically.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v2, after Fabio's review:
> 1. Add "imx6ul" compatible to board name (that's what I understood from
>    review),
> 2. Add vendor/device prefix to eeprom and document the compatible,
> 3. Use "admatecde" as vendor compatible to avoid confusion with Admatec
>    AG in Switzerland (also making LCD panels),
> 4. Use generic names for nodes,
> 5. Use IRQ_TYPE_LEVEL_LOW,
> 6. Move iomux to the end of files,
> 7. Remove regulators node (include regulators in top level),
> 8. Remove cpu clock-frequency,
> 9. Other minor fixes pointed by Fabio.
>
> Changes since v1, after Frieder's review:
> 1. Remove unneeded license notes,
> 2. Add Kontron copyright (2018),
> 3. Rename the files/models/compatibles to new naming - N6310,
> 4. Remove unneeded CPU operating points override,
> 5. Switch regulator nodes into simple children nodes without addresses
>    (so not simple bus),
> 6. Use proper vendor compatible for Macronix SPI NOR.
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   4 +
>  .../devicetree/bindings/eeprom/at25.txt       |   1 +
>  arch/arm/boot/dts/Makefile                    |   3 +
>  .../boot/dts/imx6ul-kontron-n6310-s-43.dts    | 119 +++++
>  .../boot/dts/imx6ul-kontron-n6310-s-50.dts    | 119 +++++
>  arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts  | 420 ++++++++++++++++++
>  .../boot/dts/imx6ul-kontron-n6310-som.dtsi    | 134 ++++++
>  7 files changed, 800 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-s-50.dts
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
