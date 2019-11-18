Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64D9100106
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1uWCH0l3e5gtjXhu9UmD4QqMKm/9unNx3qLEL6Jn90E=; b=Nzhj8HdXV30Wq6HrfC0P5YWgj
	XG8MxvYZwd58b7ioUdwhhoDoDHuxTMop08EYlLuNrlnGVswhrVtM6bpIU9+Dl85AesF+GtqYzca4t
	478LyP3O6W4cQfBeGXsBfdneYtod7sJ/FwLGpHSPXZ24gUMSwS+UBDOtrpXErd+S+oo3zkuNmdjyV
	WdZDsVH5BTFvuG1vunvQUSBoe4K7kpwY2+r6P6vIE0W/vi3hyA//kyrr6T8oshbARm3YdyQFWxrTJ
	iSM96uz/Rq/kUna26fbFcAzK+tJzhjZNfaUDPNDp+NQBr8CrqOwlICNrTSpchtNf2+IhAfkbKV8Pd
	VhFXtqmhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdAJ-0005OV-7A; Mon, 18 Nov 2019 09:17:47 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdA8-0005KL-Gr
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:17:38 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAI98AaL017764; Mon, 18 Nov 2019 10:17:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=tqobyadLeAxpEq1ZLIJ+JS/D2nGNCMa0KHm8m0SjMUo=;
 b=pODaG8n7/O3DyohIF7W4b4wbC2jktE3yI0ppa8+LZ/NH8BlRCDcBEDaK0zzy9MKSL7MI
 ycuzcyFdGFStGQ2t66U28H0urlSoBTMD9w9Xz5pev+dkXrlZ+1u2eZ4sjS6xnl1D3LwF
 5bD1YxTSI4nkpQkM8i4LcYGu2urFtyxiV4YFJY06/8osZ3hbiymguD7xLrMGUl6hrBl+
 yR+Uh+uxpSzaTQLAomUyAlSdzSOYHigEShwN1F3KhhBzdQ7dZzmjEP9RuhcEhMk3R17O
 ykkOf2Ylbj25Cy7LO34pC0Vw04asJNmCdxGGdTRQCPPu69oUBG5IBFDE2yVy8gJClUHr BQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9uv0f78-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 Nov 2019 10:17:28 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id ADF4C100034;
 Mon, 18 Nov 2019 10:17:27 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7BFB72BC119;
 Mon, 18 Nov 2019 10:17:27 +0100 (CET)
Received: from lmecxl0889.lme.st.com (10.75.127.48) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 Nov
 2019 10:17:26 +0100
Subject: Re: [PATCH] dt-bindings: mailbox: convert stm32-ipcc to json-schema
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Jassi Brar
 <jassisinghbrar@gmail.com>
References: <20191115145915.6887-1-arnaud.pouliquen@st.com>
From: Arnaud POULIQUEN <arnaud.pouliquen@st.com>
Message-ID: <f0fc3a1f-69f6-be73-ed24-b3111cf59ee0@st.com>
Date: Mon, 18 Nov 2019 10:17:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191115145915.6887-1-arnaud.pouliquen@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-18_01:2019-11-15,2019-11-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_011736_913247_7B889DB1 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabien Dessenne <fabien.dessenne@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/15/19 3:59 PM, Arnaud Pouliquen wrote:
> Convert the STM32 IPCC bindings to DT schema format using
> json-schema
>
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
>   .../bindings/mailbox/st,stm32-ipcc.yaml       | 91 +++++++++++++++++++
>   .../bindings/mailbox/stm32-ipcc.txt           | 47 ----------
>   2 files changed, 91 insertions(+), 47 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
>   delete mode 100644 Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt
>
> diff --git a/Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
> new file mode 100644
> index 000000000000..6843d51d96da
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/mailbox/st,stm32-ipcc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: STM32 GPIO and Pin Mux/Config controller
oops stupid copy/past, V2 coming soon
> +
> +description: |
> +  The IPCC block provides a non blocking signaling mechanism to post and
> +  retrieve messages in an atomic way between two processors.
> +  It provides the signaling for N bidirectionnal channels. The number of
> +  channels (N) can be read from a dedicated register.
> +
> +maintainers:
> +  - Fabien Dessenne <fabien.dessenne@st.com>
> +  - Arnaud Pouliquen <arnaud.pouliquen@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp1-ipcc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +     maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: rx channel occupied
> +      - description: tx channel free
> +      - description: wakeup source
> +    minItems: 2
> +    maxItems: 3
> +
> +  interrupt-names:
> +    items:
> +      enums: [ rx, tx, wakeup ]
> +    minItems: 2
> +    maxItems: 3
> +
> +  wakeup-source:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Enables wake up of host system on wakeup IRQ assertion.
> +
> +  "#mbox-cells":
> +    const: 1
> +
> +  st,proc-id:
> +    description: Processor id using the mailbox (0 or 1)
> +    allOf:
> +      - minimum: 0
> +      - maximum: 1
> +      - default: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - st,proc-id
> +  - clocks
> +  - interrupt-names
> +  - "#mbox-cells"
> +
> +oneOf:
> +  - required:
> +      - interrupts
> +  - required:
> +      - interrupts-extended
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    ipcc: mailbox@4c001000 {
> +      compatible = "st,stm32mp1-ipcc";
> +      #mbox-cells = <1>;
> +      reg = <0x4c001000 0x400>;
> +      st,proc-id = <0>;
> +      interrupts-extended = <&intc GIC_SPI 100 IRQ_TYPE_NONE>,
> +      		      <&intc GIC_SPI 101 IRQ_TYPE_NONE>,
> +      		      <&aiec 62 1>;
> +      interrupt-names = "rx", "tx", "wakeup";
> +      clocks = <&rcc_clk IPCC>;
> +      wakeup-source;
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt b/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt
> deleted file mode 100644
> index 1d2b7fee7b85..000000000000
> --- a/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt
> +++ /dev/null
> @@ -1,47 +0,0 @@
> -* STMicroelectronics STM32 IPCC (Inter-Processor Communication Controller)
> -
> -The IPCC block provides a non blocking signaling mechanism to post and
> -retrieve messages in an atomic way between two processors.
> -It provides the signaling for N bidirectionnal channels. The number of channels
> -(N) can be read from a dedicated register.
> -
> -Required properties:
> -- compatible:   Must be "st,stm32mp1-ipcc"
> -- reg:          Register address range (base address and length)
> -- st,proc-id:   Processor id using the mailbox (0 or 1)
> -- clocks:       Input clock
> -- interrupt-names: List of names for the interrupts described by the interrupt
> -                   property. Must contain the following entries:
> -                   - "rx"
> -                   - "tx"
> -                   - "wakeup"
> -- interrupts:   Interrupt specifiers for "rx channel occupied", "tx channel
> -                free" and "system wakeup".
> -- #mbox-cells:  Number of cells required for the mailbox specifier. Must be 1.
> -                The data contained in the mbox specifier of the "mboxes"
> -                property in the client node is the mailbox channel index.
> -
> -Optional properties:
> -- wakeup-source: Flag to indicate whether this device can wake up the system
> -
> -
> -
> -Example:
> -	ipcc: mailbox@4c001000 {
> -		compatible = "st,stm32mp1-ipcc";
> -		#mbox-cells = <1>;
> -		reg = <0x4c001000 0x400>;
> -		st,proc-id = <0>;
> -		interrupts-extended = <&intc GIC_SPI 100 IRQ_TYPE_NONE>,
> -				      <&intc GIC_SPI 101 IRQ_TYPE_NONE>,
> -				      <&aiec 62 1>;
> -		interrupt-names = "rx", "tx", "wakeup";
> -		clocks = <&rcc_clk IPCC>;
> -		wakeup-source;
> -	}
> -
> -Client:
> -	mbox_test {
> -		...
> -		mboxes = <&ipcc 0>, <&ipcc 1>;
> -	};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
