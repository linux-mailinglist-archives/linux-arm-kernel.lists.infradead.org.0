Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D912D1CEB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPl2V7u24CDYW8HLiezyowwPDTihJMbChTlPYLz/7qI=; b=nVzKeUnKMNQSkx
	AewBNQlBqwHsX8EXlR3B8wLZgLWB4loh5iDK7CANPqU/YZqy35MRhmo7zkuFkj75ktJE55t6A6mfw
	is0CzlgWJtvEbS42W1TeUEcUxLqEPNe1dy7YdhVkIYYmYwKuMZcgtry4gehkiEy1ocka0629lZMAe
	HPQ4O/PMW0bKhvnPZbHm+l6usBzwMAn+0UjWaeh7oqTGVJ2K1UnSYK7uP7Cj8Xsk0sWuDAoB2ywRA
	Ovw2VY1eKWP9teosv23Jr1EQv4k3C/BgAr4E4jQSaiA3Lhxo7nWiij2ot4j7LXRa2ncmhlLeHtTHV
	g644czO+a97r14RRZY1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQbuj-0005Zq-QC; Tue, 14 May 2019 18:12:33 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQbuc-0005Yu-5T; Tue, 14 May 2019 18:12:27 +0000
Received: by mail-oi1-f194.google.com with SMTP id w144so7341182oie.12;
 Tue, 14 May 2019 11:12:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7MKXOx72GnJK4OThTbg/Yq9n8A27D1pwO48w3mZxGik=;
 b=bsjX3qmZCqxun82DSBfzFC+DVY/yiWI1RjI+Fi14mbr+BkyCV1ILxYR0B6tS+wuluY
 q4F9FUv95N8b0XScGNRr6rD/5SdxNpr9FxTc9NX547JftTBsINhAUQP6zT3yWnMnQudD
 twW3cOMtJ96OYjU/G3m5PXL0GZ/dR4XMO1mamdYhgYOVugTBF2NozfqGeZhBr8+rEQV1
 fraKfB2LWYTT75ollopHqj6nmhCJRUxDQjgOQxOZLZTo0PixBJUdSYaK4sHO+YtWm+hd
 Ljfpf6gdxK9yknUl9ocV7mEYqbrfOquBSW9VjTe2iDfYfI/OXvozeGl6yziL5MNEY/2J
 7utg==
X-Gm-Message-State: APjAAAV/JDdumaIdo5SV52hDclZEmgHbyCkGPo9CZkK86+rMKVpjiPoz
 HdZIp+ZRrFDCk+UKSsQfDSJdbLM=
X-Google-Smtp-Source: APXvYqy19Xjq9sGP3TMfrsYa+PbNh1BafjhPi5bE6IL4JiP7WIz0dF4SnI69FmgshwGuUtHZQI4Byg==
X-Received: by 2002:aca:5d86:: with SMTP id r128mr3690918oib.135.1557857542852; 
 Tue, 14 May 2019 11:12:22 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q25sm6355192otl.60.2019.05.14.11.12.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 11:12:22 -0700 (PDT)
Date: Tue, 14 May 2019 13:12:04 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v5 2/6] dt-bindings: usb: add binding for Type-B GPIO
 connector driver
Message-ID: <20190514181204.GA13949@bogus>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-3-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557823643-8616-3-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_111226_222365_64D2870B 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 04:47:19PM +0800, Chunfeng Yun wrote:
> It's used to support dual role switch via GPIO when use Type-B
> receptacle, typically the USB ID pin is connected to an input
> GPIO pin
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v5 changes:
>  1. treat type-B connector as child device of USB controller's, but not
>     as a separate virtual device, suggested by Rob
>  2. put connector's port node under connector node, suggested by Rob
> 
> v4 no changes
> 
> v3 changes:
>  1. treat type-B connector as a virtual device, but not child device of
>     USB controller's
> 
> v2 changes:
>   1. new patch to make binding clear suggested by Hans
> ---
>  .../bindings/usb/typeb-conn-gpio.txt          | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
> 
> diff --git a/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt b/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
> new file mode 100644
> index 000000000000..20dd3499a348
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
> @@ -0,0 +1,42 @@
> +USB Type-B GPIO Connector
> +
> +This is used to switch dual role mode from the USB ID pin connected to
> +an input GPIO pin.
> +
> +Required properties:
> +- compatible : should include "linux,typeb-conn-gpio" and "usb-b-connector".

I don't think we need "linux,typeb-conn-gpio". A driver can decide to 
handle GPIO lines if they present or we assume the parent device handles 
ID and/or Vbus if they are not present.

> +- id-gpios, vbus-gpios : either one of them must be present, and both
> +	can be present as well.

Please clarify that vbus-gpios is an input to sense Vbus presence as an 
output it should be modelled as a regulator only.

These should be added to usb-connector.txt.

The result of all this is you don't need this file. Just additions to 
usb-connector.txt.

> +- vbus-supply : can be present if needed when supports dual role mode or
> +	host mode.
> +	see connector/usb-connector.txt
> +
> +Sub-nodes:
> +- port : should be present.
> +	see graph.txt
> +
> +Example:
> +
> +&mtu3 {
> +	status = "okay";

Don't show status in examples.

> +
> +	connector {
> +		compatible = "linux,typeb-conn-gpio", "usb-b-connector";
> +		label = "micro-USB";
> +		type = "micro";
> +		id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
> +		vbus-supply = <&usb_p0_vbus>;
> +
> +		port {
> +			bconn_ep: endpoint@0 {
> +				remote-endpoint = <&usb_role_sw>;
> +			};
> +		};
> +	};
> +
> +	port {
> +		usb_role_sw: endpoint@0 {
> +			remote-endpoint = <&bconn_ep>;
> +		};
> +	};

When the host controller is the parent of the connector, you don't need 
the graph unless you're describing the alternate modes in Type-C.

> +};
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
