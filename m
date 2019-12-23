Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E9C1295C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bbIkWfViFfJjpVKmK84eyGS3YGDsxnI2lbtdtCF3+o=; b=hI83typlbrT+0M
	ICe+e7TL1EmzcgxtoVg1X9YkfpJYIQubiDa2aPUxpxjOXMaQK8vO0HcujJ+S2EbAIz4xhihDGiKM+
	qNWmPQT/+0K5vtpOWvyG9xqGbQ2fB4yT/idZkZ9uu5Q1epwikJBKBlgHHW6epkzIPZmuMR3OdrurH
	Jh5rLL/M+2eI+FzeJeAofA3lym4+AiruW6An+ooc4LVRXI0eE5WJNF9btCjvVJXixsbysDWdhQaZU
	rxXlWmTYbIefn4QXGDkJKd8ZuZnXvZycdeQJ7+Zf0tX0UbJZhEKE24XRo5EImrnZwBfS1c0rs96IR
	2POmtSNI8lApQaOSoqAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMPM-0004C6-LA; Mon, 23 Dec 2019 12:01:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMPA-0004At-JT
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:01:46 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43B3F20709;
 Mon, 23 Dec 2019 12:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577102504;
 bh=d1XHN84mIpC2WXkedmTZRyzHrAdPTzEjVBsv9ilL3eQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AWSgqV1tfgltZkoaQo7tvfGClXEg/YBvCCIwImwZXzCgnC4OYTFGLi3U81XZZ914f
 0FTZnPBCXhQGVSXh1Eq+ViGhQTAGedHaUdu+JB4pR848N/WxNtQVETImFl7GfnAAR8
 nJ/qLxlRL/hO9leeHauXQTjqTQOh4mALTyOwYLGw=
Date: Mon, 23 Dec 2019 12:01:39 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH 03/10] dt-bindings: iio: trigger: at91-rtc-trigger: add
 bindings
Message-ID: <20191223120139.557416b8@archlinux>
In-Reply-To: <1576686157-11939-4-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-4-git-send-email-eugen.hristev@microchip.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_040144_662745_71C4A626 
X-CRM114-Status: GOOD (  16.92  )
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, a.zummo@towertech.it, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 16:23:59 +0000
<Eugen.Hristev@microchip.com> wrote:

> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add bindings for AT91 RTC ADC Trigger hardware node.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
If this does make sense (under discussion) I think it should be in
the rtc binding doc.  This doesn't make it explicit that this particular
block is a child node of that block as far as I can see...

Jonathan

> ---
>  .../bindings/iio/trigger/at91-rtc-trigger.yaml     | 44 ++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 040000 Documentation/devicetree/bindings/iio/trigger
>  create mode 100644 Documentation/devicetree/bindings/iio/trigger/at91-rtc-trigger.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/trigger/at91-rtc-trigger.yaml b/Documentation/devicetree/bindings/iio/trigger/at91-rtc-trigger.yaml
> new file mode 100644
> index 0000000..c8c5886
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/trigger/at91-rtc-trigger.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# Copyright 2019 Eugen Hristev <eugen.hristev@gmail.com>
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/bindings/iio/trigger/microchip,rtc-adc-trigger.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Microchip AT91 RTC ADC Trigger (Real Time Clock to Analog to Digital Converter)
> +
> +maintainers:
> +  - Eugen Hristev <eugen.hristev@microchip.com>
> +
> +description: |
> +  Bindings for the Microchip AT91 RTC ADC Trigger.
> +  The Real Time Clock block inside AT91 SoCs can be connected with a direct
> +  hardware line to the ADC. This line can be raised at a specific time
> +  interval in order to trigger the ADC to perform conversions.
> +  Datasheet can be found here: http://ww1.microchip.com/downloads/en/devicedoc/ds60001476b.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - microchip,rtc-adc-trigger
> +
> +  reg:
> +    description: |
> +      Register map address (start address, size).
> +    maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    {
> +      #address_cells = <1>;
> +      #size-cells = <1>;
> +
> +      rtc_adc_trigger: rtc-adc-trigger {
> +        reg = <0x0 0x10>;
> +        compatible = "microchip,rtc-adc-trigger";
> +      };
> +    };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
