Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F461FCA3C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpDEcDqp3JYP5Mrs5mb+vzia0Yktf/nyJoaKmfKkDFM=; b=eNvihNusBELj5e
	h5uHKhxcDrdVmjPdtJmsmQe9Eb2EQH/YyifDJg4wPljKreFytnbuRYYSZggz9ekRpaVAVpyX5PaBe
	r5HtH4buoK8F8FEH72OkrzMaS5/TH8C2V+7m53XE4Gaca0NQ5jQbZc8PNqO2kbnpKUr6eUVrMyj7b
	yZQCTjdb74cb6NOY97x2M9IEFQUjvdwoPZpBO3D+uOW9zQmh6NVeAu+TAFwK76wppcXyXdWxIoNa7
	+I84toT18CZrmmXcTI3ZpAkD2t2NHt59prNDTbvdP8Yz+cZ/HmUVNs82FvjuMa1dgOTOVrOSJvI6n
	W6gCtDeikSQGc4jU315Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUnA-00087I-PZ; Wed, 17 Jun 2020 09:55:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUn3-00086G-9I
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:55:30 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlUn0-0003fS-7d; Wed, 17 Jun 2020 11:55:26 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlUmx-0004Mo-Be; Wed, 17 Jun 2020 11:55:23 +0200
Message-ID: <babff895a0b5e2cd63082bd38f087bd1bc345671.camel@pengutronix.de>
Subject: Re: [PATCH v3 1/9] dt-bindings: reset: Add a binding for the RPi
 Firmware reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com, 
 gregkh@linuxfoundation.org, wahrenst@gmx.net, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
Date: Wed, 17 Jun 2020 11:55:23 +0200
In-Reply-To: <20200612171334.26385-2-nsaenzjulienne@suse.de>
References: <20200612171334.26385-1-nsaenzjulienne@suse.de>
 <20200612171334.26385-2-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_025529_328191_D701D92F 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Fri, 2020-06-12 at 19:13 +0200, Nicolas Saenz Julienne wrote:
> The firmware running on the RPi VideoCore can be used to reset and
> initialize HW controlled by the firmware.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> ---
> Changes since v2:
>  - Add include file for reset IDs
> 
> Changes since v1:
>  - Correct cells binding as per Florian's comment
>  - Change compatible string to be more generic
> 
>  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 21 +++++++++++++++++++
>  .../reset/raspberrypi,firmware-reset.h        | 13 ++++++++++++
>  2 files changed, 34 insertions(+)
>  create mode 100644 include/dt-bindings/reset/raspberrypi,firmware-reset.h
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> index b48ed875eb8e..23a885af3a28 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> @@ -39,6 +39,22 @@ properties:
>        - compatible
>        - "#clock-cells"
>  
> +  reset:
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: raspberrypi,firmware-reset
> +
> +      "#reset-cells":
> +        const: 1
> +        description: >
> +          The argument is the ID of the firmware reset line to affect.
> +
> +    required:
> +      - compatible
> +      - "#reset-cells"
> +
>      additionalProperties: false
>  
>  required:
> @@ -55,5 +71,10 @@ examples:
>              compatible = "raspberrypi,firmware-clocks";
>              #clock-cells = <1>;
>          };
> +
> +        reset: reset {
> +            compatible = "raspberrypi,firmware-reset";
> +            #reset-cells = <1>;
> +        };
>      };
>  ...
> diff --git a/include/dt-bindings/reset/raspberrypi,firmware-reset.h b/include/dt-bindings/reset/raspberrypi,firmware-reset.h
> new file mode 100644
> index 000000000000..1a4f4c792723
> --- /dev/null
> +++ b/include/dt-bindings/reset/raspberrypi,firmware-reset.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2020 Nicolas Saenz Julienne
> + * Author: Nicolas Saenz Julienne <nsaenzjulienne@suse.com>
> + */
> +
> +#ifndef _DT_BINDINGS_RASPBERRYPI_FIRMWARE_RESET_H
> +#define _DT_BINDINGS_RASPBERRYPI_FIRMWARE_RESET_H
> +
> +#define RASPBERRYPI_FIRMWARE_RESET_ID_USB	0
> +#define RASPBERRYPI_FIRMWARE_RESET_NUM_IDS	1
> +
> +#endif

Are there going to be any more firmware controlled resets in the future?

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
