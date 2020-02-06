Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FAE154D7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xl+VTe2lT9R85DU6800uHoMwGdck4eL8NMwRUUwLHSg=; b=aWoPc/CiNel7DZ
	MtXDzm5CZqAKUAvit5rITpsHhODTdpHX9Uki1u3wocVvax/zagpShhEP056/ebwUqcbU/tvZIJ5By
	/63Nx6zLRTHB8KOByuv5Hx0hDWxX/aENyaU8m605Nf2i1C4vzu5PqEKfZgDorZxHRnw8A4C9tCHeX
	i5mQVQFGcNmXEK9Qo9Z05UtYS8GUGiUormESSF6uiO3kz14FPIcjduCLZsVf7zLJyLLF60SMitRpo
	Wc/cmDpwhzDoTiQjzGgVL7vGDfcl89O76JaoAs06RyxxJIXEIua9vU0VdapGth4xUUeXlVkOkFH0t
	+sf6PETKWKLb0uvnwt7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo3r-0000uG-5y; Thu, 06 Feb 2020 20:47:43 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo2T-00089B-SV; Thu, 06 Feb 2020 20:46:20 +0000
Received: by mail-pj1-f67.google.com with SMTP id ep11so494140pjb.2;
 Thu, 06 Feb 2020 12:46:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=t7+ZXb374SG+32aNab2QK6gIc/sbbSVu/ejEJ9J5R0o=;
 b=XF7OBejv6MnnhM1VfQHeBRud+gvCtTnvG/lF7LzJfC5zgitfSo5D0k4uQxe7lEdZ4Y
 KRYd9Qc5+shRbVHxuDYeT88bbePuxMQX7+x9oKQU6FqF2buNRMF7sgr0nLGjG5B4VBqN
 pZrgOtWuvd7MiEoyoFWDwrxFrFPDoK1wyrG0IebH783gf9+WIqe7OHODhU2PgsjVKmei
 U28qGcv8gi8uqB7oL1vjbBEYDDeNWZkoFaOk49v1s3XThrPfRDDApg0sIOF7FPATlDGF
 cZDbnB1FzZMRV6AYvw6uAu3JHnaZy+UBN+vy5DoH0MoF8RAlqxHTMtUhsiT0NdetLqb9
 JWSA==
X-Gm-Message-State: APjAAAUdQwHHZ1t7ELJ1R2S0kCJkdkB5gg/wKidjgkZEG8+QaXDc7tDb
 L3S2xZeU8vXnDZdKxpvx7Q==
X-Google-Smtp-Source: APXvYqyFvEEIkfC7yPNsqX45LR6kQ8NZVIQRMQRf2zMe2y9dA9KwI/+6lD3tz0xOPw3xszid6QubfA==
X-Received: by 2002:a17:902:694c:: with SMTP id
 k12mr5736906plt.329.1581021976639; 
 Thu, 06 Feb 2020 12:46:16 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id r14sm288920pfh.10.2020.02.06.12.46.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:46:16 -0800 (PST)
Received: (nullmailer pid 11394 invoked by uid 1000);
 Thu, 06 Feb 2020 19:23:34 -0000
Date: Thu, 6 Feb 2020 19:23:34 +0000
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 12/12] dt-bindings: arm: bcm: Convert BCM2835 firmware
 binding to YAML
Message-ID: <20200206192333.GA30325@bogus>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
 <20200204235552.7466-13-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204235552.7466-13-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124618_070049_70B22455 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, "james.tai" <james.tai@realtek.com>,
 Arnd Bergmann <arnd@arndb.de>, Scott Branden <sbranden@broadcom.com>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Vinod Koul <vkoul@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 03:55:52PM -0800, Florian Fainelli wrote:
> Convert the Raspberry Pi BCM2835 firmware binding document to YAML.
> Verified with dt_binding_check and dtbs_check.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 --------
>  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 33 +++++++++++++++++++
>  2 files changed, 33 insertions(+), 14 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
> deleted file mode 100644
> index 6824b3180ffb..000000000000
> --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -Raspberry Pi VideoCore firmware driver
> -
> -Required properties:
> -
> -- compatible:		Should be "raspberrypi,bcm2835-firmware"
> -- mboxes:		Phandle to the firmware device's Mailbox.
> -			  (See: ../mailbox/mailbox.txt for more information)
> -
> -Example:
> -
> -firmware {
> -	compatible = "raspberrypi,bcm2835-firmware";
> -	mboxes = <&mailbox>;
> -};
> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> new file mode 100644
> index 000000000000..db355d970f2b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> @@ -0,0 +1,33 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Raspberry Pi VideoCore firmware driver
> +
> +maintainers:
> +  - Eric Anholt <eric@anholt.net>
> +  - Stefan Wahren <wahrenst@gmx.net>
> +
> +properties:
> +  compatible:
> +    const: raspberrypi,bcm2835-firmware simple-bus
                                          ^

I need to check for spaces with the meta-schema...

> +
> +  mboxes:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'

Already has a type, just need to define how many items and what they are 
if more than one.

> +    description: |
> +      Phandle to the firmware device's Mailbox.
> +      (See: ../mailbox/mailbox.txt for more information)

Drop this. That's every 'mboxes'.

> +
> +required:
> +  - compatible
> +  - mboxes
> +
> +examples:
> +  - |
> +    firmware {
> +        compatible = "raspberrypi,bcm2835-firmware";
> +        mboxes = <&mailbox>;
> +    };
> +...
> -- 
> 2.19.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
