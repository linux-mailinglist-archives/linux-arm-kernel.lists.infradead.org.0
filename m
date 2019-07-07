Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E7D61644
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 21:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zl0pVNrhJesFZom3rXpcUVdI+iZg0cOqhjjcQ+VlulQ=; b=tdBSSt9EzAh3Dk
	lIJHYeXlEHGVg6ARLkOVUPOf6IIinrHgRt36FTLI+IJLKXn5zgX43dpUkfhH0FQ6Kq1Yykw9BZO1t
	OkzbruOB0zYse9bso3S1CaCxWs+GPI+adwIyt5W7poWQ1DweKvbvR4Wl/6vnFigyJbXir6YB7pd/7
	oSX7KfKX6i330ZsaCVpzoQ8rMiK4oVRYdW1JitiSAtZpJmW/y57pjjdBGTx8CU2BDN9r8bZI6Ge68
	bCkRekA4YGBH/jx77BMTTvk+ZMdAMRhW0DPdT33gQGUuGK18wqUYiywGYTsJQNgTrH0eQc6+VMYjJ
	PMEMwqAdTOy1gp2q5DOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkCZI-0003l5-6i; Sun, 07 Jul 2019 19:11:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkCZ6-0003kD-DA
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 19:11:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13DCD360;
 Sun,  7 Jul 2019 12:11:09 -0700 (PDT)
Received: from why (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FA503F738;
 Sun,  7 Jul 2019 12:11:07 -0700 (PDT)
Date: Sun, 7 Jul 2019 20:10:59 +0100
From: Marc Zyngier <marc.zyngier@arm.com>
To: Aleix Roca Nonell <kernelrocks@gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: interrupt-controller: Document RTD129x
Message-ID: <20190707201059.0e86dc71@why>
In-Reply-To: <20190707132246.GB13340@arks.localdomain>
References: <20190707132246.GB13340@arks.localdomain>
Organization: ARM Ltd
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_121112_491382_C3130CC8 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 7 Jul 2019 15:22:46 +0200
Aleix Roca Nonell <kernelrocks@gmail.com> wrote:

> Add binding for Realtek RTD129x interrupt controller.
> 
> Signed-off-by: Aleix Roca Nonell <kernelrocks@gmail.com>
> ---
>  .../realtek,rtd129x-intc.txt                  | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt
> new file mode 100644
> index 000000000000..3ebb7c02afe5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt
> @@ -0,0 +1,24 @@
> +Realtek RTD129x IRQ Interrupt Controller
> +=======================================
> +
> +Required properties:
> +
> +- compatible           :  Should be one of the following:
> +                          - "realtek,rtd129x-intc-misc"
> +                          - "realtek,rtd129x-intc-iso"

What does 'iso' mean in this context?

> +- reg                  :  Specifies the address of the ISR, IER and Unmask
> +                          register in couples of "address length".

Are these registers actually interleaved with other stuff? What else it
in between?

> +- interrupts           :  Specifies the interrupt line which is mux'ed.
> +- interrupt-controller :  Presence indicates the node as interrupt controller.
> +- #interrupt-cells     :  Shall be 1. See common bindings in interrupt.txt.

So I guess this is level only, with an unspecified polarity? No edge
interrupts?

> +
> +
> +Example:
> +
> +	interrupt-controller@98007000 {
> +		compatible = "realtek,rtd129x-iso-irq-mux";

It'd be good if the the example matched the rest of the documentation.

> +		reg = <0x98007000 0x4 0x98007040 0x4 0x98007004 0x4>;
> +		interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +	};

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
