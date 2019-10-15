Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D1D801F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsy1sd453mlJpy/+rd/0ltnu6Tq4gd4Q1EIRBh7x3gM=; b=u0VSkeSSk/8QFN
	WMj2l10Vxs35nNX+f9igYww/NPmgfx7gGZ5FJ4f9OijqRdjzum3SHRz/zre/0Q8MSnZzOQ7xcB2Vt
	zuAbpHY4bESEUkgqoBgrc/CAlxg7SmYzk9n4OqNpCJ3OaXngKW9TyAQ2uRaAqc9613DEoiE96sdd3
	vpXsVUrONLnLmHaAR90Of039waHwphZr48XwJ+1D6AqBMPLTye7COs7U8XNNm2o9CncG0YrH8zCCw
	DZQQIi9VmpDjgP4NmTQv3ruorM5Ud3YRtWqUafAIRrUzFMFAswGbdkU3yDU2Qq5Dsv3RWl3bn3jmS
	tK6xRsRDO1EbHDYBkdGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSQ5-000417-Ri; Tue, 15 Oct 2019 19:23:45 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSPr-00040m-4C
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 19:23:32 +0000
Received: by mail-oi1-f194.google.com with SMTP id k9so17864706oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 12:23:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H0OMnipU3yZwO8kSIOH3gQiSnrV8gK6RMoDMYF6Q6mc=;
 b=Kyt+8k+n6GsENO8FzT5YZ52MmSqV5Q5+MUFI/CgaXCNLGCaPVs9l9Jj6L27l4/Q5jE
 BfIpmmD67MPDn2e2BO/yN/CzGv7DNH5chblsnFcQ716IYAiHyD2P53TmlRsomvfKDBIh
 rQL5WXig0OaAuHluSLlyoDU7S/jSLQpcRxkkDhR+wP9ulyWy62eI3Mgnjct7Vz81Km76
 RAuI2blC3/jZwHHn2UR7pP/VAAbTf+mF1AuXRTdI+qRev7aF/0bEcFcX1AHCi1yw8JeI
 8lQfvdBI03Z+PuI/FiJt1Eul8yQ1AlO2ynmP1Ezthx7Yvh0C7HkRoOL6js77VjRanqRZ
 bbow==
X-Gm-Message-State: APjAAAXRGR09CFefz+0bENaD3g8omlQZ8UQfh6xgBrGWqrALpef5zzZO
 PBt43ot3p+VcDDxLwaLv6g==
X-Google-Smtp-Source: APXvYqzE/Pe9qiNzdDA7q6NFwpwrP4q0K1yle0GZw4+iqWkBcdbOEV1cxKDZyPI4BY1GtsDAdEQwBw==
X-Received: by 2002:a54:4481:: with SMTP id v1mr141057oiv.152.1571167410301;
 Tue, 15 Oct 2019 12:23:30 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k34sm6865815otk.51.2019.10.15.12.23.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:23:29 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:23:28 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
Message-ID: <20191015192328.GA26346@bogus>
References: <20191004012525.26647-1-chris.packham@alliedtelesis.co.nz>
 <20191004012525.26647-2-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004012525.26647-2-chris.packham@alliedtelesis.co.nz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_122331_165027_BEA4F022 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, linux-gpio@vger.kernel.org, rjui@broadcom.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 richard.laing@alliedtelesis.co.nz, bgolaszewski@baylibre.com,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 02:25:24PM +1300, Chris Packham wrote:
> This GPIO controller is present on a number of Broadcom switch ASICs
> with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
> blocks but different enough to require a separate driver.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>  .../bindings/gpio/brcm,xgs-iproc.txt          | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.txt

Please make this a DT schema.

> 
> diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.txt b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.txt
> new file mode 100644
> index 000000000000..328b844c82dc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.txt
> @@ -0,0 +1,41 @@
> +Broadcom XGS iProc GPIO controller
> +
> +This controller is the Chip Common A GPIO present on a number of Broadcom
> +switch ASICs with integrated SoCs.
> +
> +Required properties:
> +- compatible:
> +    Must be "brcm,iproc-gpio-cca"
> +
> +- reg:
> +    The first region defines the base I/O address containing
> +    the GPIO controller registers. The second region defines
> +    the I/O address containing the Chip Common A interrupt
> +    registers.
> +
> +Optional properties:
> +
> +- interrupts:
> +    The interrupt shared by all GPIO lines for this controller.
> +
> +- #interrupt-cells:
> +    Should be <2>.  The first cell is the GPIO number, the second should specify
> +    flags.
> +
> +    See also Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
> +
> +- interrupt-controller:
> +    Marks the device node as an interrupt controller
> +
> +Example:
> +	gpioa: gpio@18000060 {
> +		compatible = "brcm,iproc-gpio-cca";
> +		#gpio-cells = <2>;

Not documented...

> +		reg = <0x18000060 0x50>,
> +		      <0x18000000 0x50>;
> +		ngpios = <12>;

Not documented. 

> +		gpio-controller;

Not documented.

> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
