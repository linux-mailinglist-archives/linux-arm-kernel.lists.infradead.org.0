Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05312F9D80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 23:52:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzVwVYSya+CyV+NVFSttjM5UAJ+pM3MD8h4/WLsa0uo=; b=KXobECYItVyua5
	Q7LW9Ojllzi0vdo6SgqNAzu/8kyQm0p1qW4hm4vxcavhrySunVyb3cz/6GyrS5cy4H66R5d1b+78N
	mcSWJbCJhIya6vNzesVF8QryDTUaqTcbyHtF0fXt2bKdYVjcRT/VM5jiiPVFjH1FGO5M/fGfxwPbN
	7FfCHu6uP9JYA8H/xWgJAvNGiwPsHzXV//2ZufFcqKLyT65RtHireOwhYnP+yivYdcZ47w14KhqFv
	p5wOs1KXMx2T7kQk+tvl+9fmRjXXJSmKpSoBPLJhlqeFXGO2st0RzBOZA0EycIY6adkr93RPJlZWe
	qxbWGPTfN1dEu+nKO9Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUf0v-00026H-K7; Tue, 12 Nov 2019 22:51:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUf0m-00025q-Oh
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 22:51:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E59D21783;
 Tue, 12 Nov 2019 22:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573599107;
 bh=Fvb/mXVl+l35yVh6GFoxh8HIEXMeuT21yKS6scDEvuE=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=wutODIcyfTnTRJBX9L/1YSqE+K/nXW/S5xy8DlXaib2Uh8FHE9K0vxgEFR/AKAGVC
 YGgb6J7Od/oj3v9K44i5Q7SS4bHPVCTfvH7NhmO9PujmMoNOEm9C1DsclPQjSPdFnE
 2pivyDLHR97BdOIO0aLfJ1XD4Wr/LIyLhjpHQ3OQ=
MIME-Version: 1.0
In-Reply-To: <1573564580-9006-2-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1573564580-9006-2-git-send-email-rajan.vaja@xilinx.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>, dan.carpenter@oracle.com,
 gustavo@embeddedor.com, jolly.shah@xilinx.com, m.tretter@pengutronix.de,
 mark.rutland@arm.com, michal.simek@xilinx.com, mturquette@baylibre.com,
 nava.manne@xilinx.com, ravi.patel@xilinx.com, robh+dt@kernel.org,
 tejas.patel@xilinx.com
Subject: Re: [PATCH 1/7] dt-bindings: clock: Add bindings for versal clock
 driver
User-Agent: alot/0.8.1
Date: Tue, 12 Nov 2019 14:51:46 -0800
Message-Id: <20191112225147.7E59D21783@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_145148_847529_3F3BA909 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rajan Vaja (2019-11-12 05:16:14)
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> new file mode 100644
> index 0000000..da82f6a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bindings/clock/xlnx,versal-clk.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx Versal clock controller
> +
> +maintainers:
> +  - Michal Simek <michal.simek@xilinx.com>
> +  - Jolly Shah <jolly.shah@xilinx.com>
> +  - Rajan Vaja <rajan.vaja@xilinx.com>
> +
> +description: |
> +  The clock controller is a h/w block of Xilinx versal clock tree. It reads

hardware instead of h/w

> +  required input clock frequencies from the devicetree and acts as clock
> +  provider for all clock consumers of PS clocks. See clock_bindings.txt
> +  for more information on the generic clock bindings.

Please drop this last sentence about clock_bindings.txt

> +
> +properties:
> +  compatible:
> +    const: xlnx,versal-clk
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  clocks:
> +    description: List of clock specifiers which are external input
> +      clocks to the given clock controller.
> +    minItems: 3
> +    maxItems: 3
> +    items:
> +      - description: ref clk
> +      - description: alternate ref clk
> +      - description: pl alternate ref clk

What is "pl"? Can you clarify?

> +
> +  clock-names:
> +    minItems: 3
> +    maxItems: 3
> +    items:
> +      - const: ref_clk
> +      - const: alt_ref_clk
> +      - const: pl_alt_ref_clk
> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    firmware {
> +      zynqmp_firmware: zynqmp-firmware {
> +        compatible = "xlnx,zynqmp-firmware";
> +        method = "smc";

Is there a way to say in the binding that this must be a child of a
xlnx,zynqmp-firmware node? That would be ideal so we can constrain this
to that location somehow.

> +        versal_clk: clock-controller {
> +          #clock-cells = <1>;
> +          compatible = "xlnx,versal-clk";
> +          clocks = <&ref_clk>, <&alt_ref_clk>, <&pl_alt_ref_clk>;
> +          clock-names = "ref_clk", "alt_ref_clk", "pl_alt_ref_clk";
> +        };
> +      };
> +    };
> +...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
