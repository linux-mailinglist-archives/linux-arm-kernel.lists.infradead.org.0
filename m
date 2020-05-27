Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F4E1E35D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 04:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFPgG5BkQ579M8uXELpdEkUhcdeb3GzI4IBZJfXyZH4=; b=DTLF47GkPKNqor
	bpCjudUbPowaX4JImPe9FAMHk83VjNfvBKCC532HRkY3VT5La2vSqmK9JELcor681FveTYuq43VAT
	Vi/QRQdwpX5DKMPjpdl1liFKcFDsefMbiG83ujf+WbAhXrlyMUPEkYzFDGXG6m0Hutq0ItWwXNjBR
	GK/GuBgqWqQXgcsPZA8IZYVccr1LpIN/wE+E6EhD+JolHWuxW/Wpil2oyVnvsY1GfQITx4fMObnzc
	4+5Vy/bliMnl7ej2lMfW+Q1t0LByKtYcjIG+izu4yAgPUIq1cG5tKAnjVJkBU7yjE4DDlCTPYatHt
	MqUa5b2PH+O5sbW0tt6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdm5h-0006en-Jv; Wed, 27 May 2020 02:46:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdm5Z-0006eU-9A
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 02:46:42 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80C6E20787;
 Wed, 27 May 2020 02:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590547600;
 bh=J6xB3KpfZdxjHzbIiPIfYxAAWQcw5CP9/8Sjpji0odM=;
 h=In-Reply-To:References:Subject:From:Cc:List-Id:To:Date:From;
 b=WCGacig81SEKiBlXLyBmHVMGUfpBJIxn/GStg+yPoDAlbQvzh/PCURRWjn4yzlE4y
 OGu7rMh41si7VDTx78nMi2HK+GLDeERQu6lqfkszzeDl2hCdJGo0NW+TYrru0RaCfT
 d8xdBwr5ec0Qf5obtCJRxZqIcfVMjA+QFye1guNY=
MIME-Version: 1.0
In-Reply-To: <20200513125532.24585-11-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-11-lars.povlsen@microchip.com>
Subject: Re: [PATCH 10/14] dt-bindings: clock: sparx5: Add Sparx5 SoC DPLL
 clock
From: Stephen Boyd <sboyd@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>, Lars Povlsen <lars.povlsen@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 SoC Team <soc@kernel.org>
Date: Tue, 26 May 2020 19:46:39 -0700
Message-ID: <159054759981.88029.2630901114208720574@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_194641_342088_52844880 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael Turquette <mturquette@baylibre.com>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lars Povlsen (2020-05-13 05:55:28)
> diff --git a/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
> new file mode 100644
> index 0000000000000..594007d8fc59a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/microchip,sparx5-dpll.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip Sparx5 DPLL Clock
> +
> +maintainers:
> +  - Lars Povlsen <lars.povlsen@microchip.com>
> +
> +description: |
> +  The Sparx5 DPLL clock controller generates and supplies clock to
> +  various peripherals within the SoC.
> +
> +  This binding uses common clock bindings
> +  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt

I don't think we need this sentence. Please drop it.

> +
> +properties:
> +  compatible:
> +    const: microchip,sparx5-dpll
> +
> +  reg:
> +    items:
> +      - description: dpll registers
> +
> +  '#clock-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  # Clock provider for eMMC:
> +  - |
> +    clks: clks@61110000c {

Node name should be clock-controller@61110000c

> +         compatible = "microchip,sparx5-dpll";
> +         #clock-cells = <1>;
> +         reg = <0x1110000c 0x24>;

Does it consume any clks itself? I'd expect to see some sort of 'clocks'
property in this node.

> +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
