Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF72F092D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 23:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzEzBL+mZV5AVJSQh+vDrAh57erpp1bNdR6gK3sux88=; b=j3rf7yDr60dJ0M
	P/7q7yB9D+wbwDuJuiVuKkMmDSNV3yEJJg72NcH2TGw99hofQeYWCUjHNj3pV2LzXk1O6atACkjbU
	O4lSXD3PhXsUuyZ4cVZE7rvTGgUodILz4Pgw1nCVjDB5iDvvwwma9VWrI78/FIL6yY5KoqRClFJ06
	srByG8diU2aL4OfKtI8wxiL2imeENp8lsnbHo81uBAan2Eg8G16vslTiBdGrpjlz+WT7LRtlFqopc
	/QMl0NbZ0LMdWsJbTBVCzPA2lkfssrYUsSe0YGy+anr3m67dk7xdMhcUjarFNYu3ps7SIVo2wZdBR
	Wm+E4n7B479SHisy10MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS79K-0007UJ-Th; Tue, 05 Nov 2019 22:18:06 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS79D-0007TE-8j
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 22:18:00 +0000
Received: by mail-ot1-f68.google.com with SMTP id u13so19118454ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 14:17:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dlDa37MatdZAoZEVtVb/vuu5xcyJ2yd9PLghK+7oV+Y=;
 b=rGQZrvqjjom4WF0FHNnDQGbIDG0CCJ+QL9QGdTKcN0UJZajf8Sg2EIAdn6F4r0FURV
 T7/tPCk2A++0h28GPditfuq5CbxrOra/MskEzdq+4TSjGUbdwspABig6vVC/SFqPr4G6
 mzDCU1EUD5fBX/avS6p05SjGJ+ww3OXo50FRPE1iBLo3V3T1QrkKH8pJ3v3kjEF5VyIB
 3wPm3zNsa8iwcL+s8h3CMj4J6fzRTcCO8mgBKyCX3ml5P/WhBcztXPKvm6D8i3BIYq6d
 eMD2XATjRjk+nVtrj1f4npi+/u7oHz0DkN8F+4Ky9VJWa56mKJta/spFGGBVPoeADuDS
 eW2g==
X-Gm-Message-State: APjAAAWGm9bYkCVtCLRsv2N/UF8r9dunXxASRctE1b62oufiAoGQX+Tz
 tkvjOQFS1yyCxi7CG7MgiN07g4U=
X-Google-Smtp-Source: APXvYqxTL385Ync46f4camw5ZMSBXIBOCu372UJEtS5dlHGGyIWdJUwQw9+KaXqIlLLooSfcbtIaSA==
X-Received: by 2002:a05:6830:1d52:: with SMTP id
 p18mr25309538oth.130.1572992278135; 
 Tue, 05 Nov 2019 14:17:58 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e62sm914612oif.12.2019.11.05.14.17.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 14:17:57 -0800 (PST)
Date: Tue, 5 Nov 2019 16:17:56 -0600
From: Rob Herring <robh@kernel.org>
To: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: net: bluetooth: add DT binding for
 Realtek controllers
Message-ID: <20191105221756.GA15425@bogus>
References: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
 <20191030224333.70241-2-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030224333.70241-2-bonstra@bonstra.fr.eu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_141759_307908_D3796486 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 Maxime Ripard <mripard@kernel.org>, linux-bluetooth@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 11:43:31PM +0100, Hugo Grostabussiat wrote:
> The rtl_bt driver already supports some Realtek controllers on ACPI
> platforms.
> This commit adds bindings for DT-only platforms.
> 
> Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
> ---
>  .../bindings/net/realtek-bluetooth.txt        | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.txt
> 
> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.txt b/Documentation/devicetree/bindings/net/realtek-bluetooth.txt
> new file mode 100644
> index 000000000000..01d4ed146705
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.txt
> @@ -0,0 +1,25 @@
> +Realtek Bluetooth controllers
> +=============================
> +
> +This documents the binding structure and properties for the serial
> +attached Bluetooth controllers from Realtek.
> +
> +Required properties:
> +- compatible: currently, only "realtek,rt8723bs-bt" is supported
> +
> +Optional properties:
> +- enable-gpio: gpio line controlling the power down (BT_DIS#) signal

enable-gpios

Though based on the pin name, powerdown-gpios may be more appropriate. 

> +- device-wake: gpio line controlling the device wakeup (BT_WAKE) signal

device-wake-gpios

> +- config-name: postfix added to the name of the firmware file
> +  containing the chip configuration

'firmware-name' is the common property for this. It's the full filename 
which is more flexible. 

What's the default name?

> +
> +Example:
> +
> +&uart1 {
> +	bluetooth {
> +		compatible = "realtek,rtl8723bs-bt";
> +		enable-gpio = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
> +		device-wake-gpio = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */

PL4 and PL6 aren't meaningful in this context.

> +		config-name = "teres_a64_i";
> +	};
> +};
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
