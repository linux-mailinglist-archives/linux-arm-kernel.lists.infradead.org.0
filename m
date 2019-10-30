Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48446E9A33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nqHYWPLfgh+aUxQoVeDhBVsT7QsBYtmhSKhuYt2N7dQ=; b=To/QFV7+iQi+GiqV+fJRYWbkL
	58k5wlGiEpt6bOwln/utQq6DqcDlMtvnyNXzihs96yrecY6TyvVGqMA8KEYMMnaH5br7u0JysbdEg
	nHRgR/5qGOidxmb0jTM5fy3GvW0BtxjiPAG+g2E818wsCt/EOVvlZAoezCblj/4vMaV5fLN/+c53p
	hEVybOEKOpUlM5yfAWXhM/W15V7EbsxXAupEhFo7sGLfNsYBP6De24rP70EBjPkG5u+VbL2J5SMDu
	D3OzxOUm2dSZuuos31l4L52r6j3fX05hlmnDEzf0tElvIFjX11GNV+21HcXaczFc8mFis/GGrvV/7
	e3TzkRJ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlPJ-0007Ud-N2; Wed, 30 Oct 2019 10:40:53 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlOi-00070A-NI
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:40:18 +0000
Received: from [172.20.50.122] ([91.217.168.176])
 by smtp-cloud9.xs4all.net with ESMTPA
 id PlOaiZF6psBskPlOdiLsfs; Wed, 30 Oct 2019 11:40:12 +0100
Subject: Re: [PATCH v3] dt-bindings: media: Convert stm32 cec bindings to
 json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>, mchehab@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com, alexandre.torgue@st.com,
 yannick.fertre@st.com, philippe.cornu@st.com, hugues.fruchet@st.com
References: <20191014092021.24020-1-benjamin.gaignard@st.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <e6655a20-5d87-7dc1-14e3-844f12096f0e@xs4all.nl>
Date: Wed, 30 Oct 2019 11:40:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191014092021.24020-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfDQzby7iJi2ukFJgU8JHUeC09xVN/QRQKmGaOzCliVJkkKMZFTdmOnJyl8HqCfm0V2sLtB6hU6a8WD57eHRd4e5QptFvRANT17/vxFEteIhxRqmWlxup
 yb6FF0YqO7vKcKT4RG1fHevWR/4xpUhkU3Nl0alXpEnwvsA39svrlvWADD+PNIf+RlT5UjSQ697/L9g0WIfEADln+HoYUtv/vGAQD6V+8+zHFnn4bghuqDFo
 iC3yKvFv2A2bmLAJx65S702UAHYb0ofwwXOCkVWvZgbBoeass0tdrPNA24ThvBhi5vPsAYKvdAClQO4+qxFjJ9Y8ih9N5vkyp95mETisdI85XEghoy6iJDPt
 rQrNQbHhZR2TFSZTf10mF+ZSgTAvZm3bsc7UWfbBgdd/uvnlRYo9aqrEjo5f5Nr25FPnKDDc4AaS7urPt+VECDT83IcrRXWBoG15fduxWlhtaM2yXVm2Lzbz
 /+XykNPENAoFFRhLmDcLoLW6tNPVJ5rLsCWMcSjaDdO+Z2E4gAk5dUz2bBVqu4jyfwb0joC4VtW49RNsOYPyVt9tgi9GsZO6TwjyMJ7355BQWo1k2pkXK4R/
 s00JGiNgf1Ej0c0VzZSaci2Hi6O9Q+xHZ/plQAWZVrQb7F6/pEquzv7qhj9hWO0uW+4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_034016_927970_F11794FE 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/14/19 11:20 AM, Benjamin Gaignard wrote:
> Convert the STM32 cec binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

There doesn't seem to be a MAINTAINERS entry for this driver. Can you add
one?

	Hans

> ---
> changes in v3:
> - use (GPL-2.0-only OR BSD-2-Clause) license
> 
> changes in v2:
> - use BSD-2-Clause license
> - add additionalProperties: false
> - remove pinctrl-names and pinctrl-[0-9]
> 
>   .../devicetree/bindings/media/st,stm32-cec.txt     | 19 --------
>   .../devicetree/bindings/media/st,stm32-cec.yaml    | 54 ++++++++++++++++++++++
>   2 files changed, 54 insertions(+), 19 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/media/st,stm32-cec.txt
>   create mode 100644 Documentation/devicetree/bindings/media/st,stm32-cec.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-cec.txt b/Documentation/devicetree/bindings/media/st,stm32-cec.txt
> deleted file mode 100644
> index 6be2381c180d..000000000000
> --- a/Documentation/devicetree/bindings/media/st,stm32-cec.txt
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -STMicroelectronics STM32 CEC driver
> -
> -Required properties:
> - - compatible : value should be "st,stm32-cec"
> - - reg : Physical base address of the IP registers and length of memory
> -	 mapped region.
> - - clocks : from common clock binding: handle to CEC clocks
> - - clock-names : from common clock binding: must be "cec" and "hdmi-cec".
> - - interrupts : CEC interrupt number to the CPU.
> -
> -Example for stm32f746:
> -
> -cec: cec@40006c00 {
> -	compatible = "st,stm32-cec";
> -	reg = <0x40006C00 0x400>;
> -	interrupts = <94>;
> -	clocks = <&rcc 0 STM32F7_APB1_CLOCK(CEC)>, <&rcc 1 CLK_HDMI_CEC>;
> -	clock-names = "cec", "hdmi-cec";
> -};
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-cec.yaml b/Documentation/devicetree/bindings/media/st,stm32-cec.yaml
> new file mode 100644
> index 000000000000..d75019c093a4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/st,stm32-cec.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/st,stm32-cec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 CEC bindings
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> +  - Yannick Fertre <yannick.fertre@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32-cec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Module Clock
> +      - description: Bus Clock
> +
> +  clock-names:
> +    items:
> +      - const: cec
> +      - const: hdmi-cec
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    cec: cec@40006c00 {
> +        compatible = "st,stm32-cec";
> +        reg = <0x40006c00 0x400>;
> +        interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&rcc CEC_K>, <&clk_lse>;
> +        clock-names = "cec", "hdmi-cec";
> +    };
> +
> +...
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
