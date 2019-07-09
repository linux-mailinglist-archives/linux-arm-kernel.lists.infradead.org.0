Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E798463C8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 22:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNHbjWkzRwUriNLjFdkeNw4SqdEBakFH3IywlGJ29wI=; b=HH5Ooeti8O4MWN
	DZoujg1yBfaH9FBAqkFutkDMkSSivvFd1a90oHlq5dtBeMOrC5pg2WeIEKe/5iZ04iqjleSPKk4pW
	53RmuADL+PrYtzJ0lStEffISd8sqW0CoQJGiirVU0CoPsODUlwonRhr42LQuYy3d8hL8azTTYjj43
	QcZ9qza3zuIzCsUiEeTeJZUFkGLNYrx+CkoPBHq2vtIxnMMB+ADSdXb9Lrtk9wGAlO6979G2APGvn
	iYB8ZzbwCEqETeMfqoQUGdKEWPbiSJUef76luMYoMsssXDTYgkG9nyypGAY1EQVlVsRTRJrEkCQn3
	LsSaDoUKTCLW+SB3leIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwS9-0000IQ-E8; Tue, 09 Jul 2019 20:11:05 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwRv-0000Hy-No
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 20:10:52 +0000
Received: by mail-io1-f68.google.com with SMTP id q22so24099237iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 13:10:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=luNJE8BvXARpab3XzCQ15FBQrWF1rNzC/iLJy1IUEEs=;
 b=GO+hxOP5WASumNSV2+1xH0kZbsIdzyczehD26DYLKkQss6dnNKEfyDJ9eOas/eodpq
 5lrC+HI6cWwqIRiCSaq8ssptkfqggIWYeVXy5QqDKaXL7gm9rxAhwgnJLmR+Hn192aFK
 PnxVulYcLgwYEdSPJJdOb1xXXqwPktRSTxLvVs+xDj9y87LD6YViV3B4k5KjeeJnvs9y
 bBZVS9pVWX2ijfWoN0sb9Rns2Ng75VFhRtjFIN3iEKfLukLWnfdAFenQa+fptXGuUnjb
 ElLi1P9/7aoRy4jLbOr8savafscVaffcQxM2I/UTwMjqGKz+tpr6xRr+rePLlgcf01jB
 dU9A==
X-Gm-Message-State: APjAAAUZ3Z6aH6/UG731Qc5kTJAN8hpnO/xr70w4ML2n5O55Oy8GM8J1
 VLtqv7LFKDzAllfgPO3f8w==
X-Google-Smtp-Source: APXvYqwF5+aQ/lNe/JZtahZEU+glNSOV421HouSJnPFiLSoCgOmuEapJp66+Clcdr1Iz0ijEWr4gKg==
X-Received: by 2002:a5e:cb43:: with SMTP id h3mr5766700iok.252.1562703051005; 
 Tue, 09 Jul 2019 13:10:51 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id t4sm17166284iop.0.2019.07.09.13.10.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 13:10:50 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:10:49 -0600
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH v6 1/6] dt-bindings: ap806: add the cluster clock node in
 the syscon file
Message-ID: <20190709201049.GA8692@bogus>
References: <20190619141539.16884-1-gregory.clement@bootlin.com>
 <20190619141539.16884-2-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619141539.16884-2-gregory.clement@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_131051_771951_E2CEC521 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?iso-8859-1?Q?Miqu=E8l?= Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 04:15:34PM +0200, Gregory CLEMENT wrote:
> Document the device tree binding for the cluster clock controllers found
> in the Armada 7K/8K SoCs.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  .../arm/marvell/ap806-system-controller.txt   | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt b/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
> index 7b8b8eb0191f..4a3bb9c12312 100644
> --- a/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
> +++ b/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
> @@ -143,3 +143,28 @@ ap_syscon1: system-controller@6f8000 {
>  		#thermal-sensor-cells = <1>;
>  	};
>  };
> +
> +Cluster clocks:
> +---------------
> +
> +Device Tree Clock bindings for cluster clock of AP806 Marvell. Each
> +cluster contain up to 2 CPUs running at the same frequency.
> +
> +Required properties:
> +- compatible: must be  "marvell,ap806-cpu-clock";
> +- #clock-cells : should be set to 1.
> +- clocks : shall be the input parents clock phandle for the clock.

How many clocks?

> +- reg: register range associated with the cluster clocks
> +
> +
> +ap_syscon1: system-controller@6f8000 {
> +	compatible = "marvell,armada-ap806-syscon1", "syscon", "simple-mfd";
> +	reg = <0x6f8000 0x1000>;
> +
> +	cpu_clk: clock-cpu@0 {

Should be '...@274'

> +		compatible = "marvell,ap806-cpu-clock";
> +		clocks = <&ap_clk 0>, <&ap_clk 1>;
> +		#clock-cells = <1>;
> +		reg = <0x274 0xa30>;
> +	};
> +};
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
