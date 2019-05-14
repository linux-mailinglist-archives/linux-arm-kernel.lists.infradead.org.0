Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3853E1D083
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8fqPmlOXYg7KVnLcCiVEGtweAJuECafgybhAvqnMMI=; b=qAzIFS651aLweT
	UKZdmjVaw3DiNFFH8hOGYgiGaeSM2oKJjRCm2WhNOxCQo0LLltetUQwBMrtMEGq07DMxoZ83XAdr2
	xu1DM2KzAorOV1AA2GimheIm3BwR3yqg6wsta8TkUPP1OecUJwfzI+9dVZ9rUnGon0qm9gA315YXw
	t8ygczoYcCI3irNRBOfE+Mkmi1zouuV36D7QNF8vuZscEdv4GYOHiDbGLl8cKrlWcrqKPEp2N/l0a
	JsZjj5xMa3JTfvZmks1Z9ZkJPKCLOEqFB2P7ssU8k/1diZ13UtAdMgxUtdt3no/FI8F9nWXq7nM0T
	e0jSNtBBxr7iYM8e/pcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdwY-0005Qz-SA; Tue, 14 May 2019 20:22:34 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdwP-0005Pj-Nt; Tue, 14 May 2019 20:22:27 +0000
Received: by mail-oi1-f195.google.com with SMTP id v10so131230oib.1;
 Tue, 14 May 2019 13:22:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ymvdHlHfw00uLHLYb3t7giCfY/eJ/lnfaeGdckEMHZM=;
 b=MXjbc85EUgCOk5pM/8HYHbKx/p1FVzVubOcMc9E1rC/X1Jzz9S2y2gKEbdP/iAlwd8
 kNHXOMhUpl5Wg9U8HQZQy1QtvGmNeNDl/5Q0LUdsuKDpFhuVsdCqkg4RlUdAQG3TfoQW
 n38yAuoUguZsXAaH8Mx00dS1V2gYsQy1y9tc7SCI9FTewxXKVQDqWiXDbUXZxM2y+Nxn
 RBZtjGVvGDTzpBS/w1q96enwk1/KY8foptn3qqW3IJIUCzxjJzus4LHuDNev5xsc5r3J
 qcTkRggfUPdHGUhrAEu4X4FtJ+YET6rQY5A9s2RJCXKc2IV5l4OI8VXypr2ThO207jlv
 pQ7Q==
X-Gm-Message-State: APjAAAV6YldiV0JDrOqvZPYLchiOq/EU5siivQsas7QRqdqwihnuvxhf
 MbvACquEEtxU52FhF5FjQg==
X-Google-Smtp-Source: APXvYqxRbCfJIqlMfGCxeng6SX1wiH/xr3XTuLXQ9tJMpceSgQdh0TskQpjAuRFQJ03BEqxY6HlrFQ==
X-Received: by 2002:aca:ac43:: with SMTP id v64mr4379156oie.40.1557865344704; 
 Tue, 14 May 2019 13:22:24 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l17sm3825518otp.29.2019.05.14.13.22.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:22:23 -0700 (PDT)
Date: Tue, 14 May 2019 15:22:23 -0500
From: Rob Herring <robh@kernel.org>
To: Louis Kuo <louis.kuo@mediatek.com>
Subject: Re: [RFC PATCH V2 3/4] dt-bindings: mt8183: Add sensor interface
 dt-bindings
Message-ID: <20190514202223.GA2963@bogus>
References: <20190512060005.5444-1-louis.kuo@mediatek.com>
 <20190512060005.5444-4-louis.kuo@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512060005.5444-4-louis.kuo@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_132225_779803_B0C25D0A 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, Jerry-ch.Chen@mediatek.com, tfiga@chromium.org,
 keiichiw@chromium.org, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, hans.verkuil@cisco.com, zwisler@chromium.org,
 frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 02:00:04PM +0800, Louis Kuo wrote:
> This patch adds the DT binding documentation for the sensor interface
> module in Mediatek SoCs.
> 
> Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> ---
>  .../bindings/media/mediatek-seninf.txt        | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-seninf.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek-seninf.txt b/Documentation/devicetree/bindings/media/mediatek-seninf.txt
> new file mode 100644
> index 000000000000..5c84a777acbd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek-seninf.txt
> @@ -0,0 +1,52 @@
> +* Mediatek seninf MIPI-CSI2 host driver

Bindings are for h/w blocks, not drivers...

How does this relate to the other series for Mediatek MIPI CSI2?

> +
> +Seninf MIPI-CSI2 host driver is a HW camera interface controller. It support a widely adopted,
> +simple, high-speed protocol primarily intended for point-to-point image and video
> +transmission between cameras and host devices.
> +
> +Required properties:
> +  - compatible: "mediatek,mt8183-seninf"
> +  - reg: Must contain an entry for each entry in reg-names.
> +  - reg-names: Must include the following entries:
> +    "base_reg": seninf registers base
> +    "rx_reg": Rx analog registers base

'_reg' part is redundant.

> +  - interrupts: interrupt number to the cpu.
> +  - clocks : clock name from clock manager
> +  - clock-names: must be CLK_CAM_SENINF and CLK_TOP_MUX_SENINF.
> +    It is the clocks of seninf
> +  - port : port for camera sensor

port is not a property

> +  - port reg : must be '0' for camera 0, '1' for camera 1
> +  - endpoint : config mipi-csi2 port setting for each camera

endpoint is not a property

> +  - data-lanes : the number of the data lane
> +
> +Example:
> +    seninf: seninf@1a040000 {
> +       compatible = "mediatek,mt8183_seninf";
> +		reg = <0 0x1a040000 0 0x8000>,
> +		      <0 0x11C80000 0 0x6000>;
> +		reg-names = "base_reg", "ana_reg";
> +		interrupts = <GIC_SPI 251 IRQ_TYPE_LEVEL_LOW>;
> +		power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
> +	    clocks =

The indentation is all wrong.

> +			<&camsys CLK_CAM_SENINF>, <&topckgen CLK_TOP_MUX_SENINF>;
> +		clock-names =
> +			"CLK_CAM_SENINF", "CLK_TOP_MUX_SENINF";
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			port@0 {
> +				reg = <0>;
> +				mipi_in_cam0: endpoint@0 {
> +					reg = <0>;
> +					data-lanes = <1 3>;
> +				};
> +			};
> +			port@1 {
> +				reg = <1>;
> +				mipi_in_cam1: endpoint@0 {
> +					reg = <1>;
> +					data-lanes = <1 3>;
> +				};
> +			};
> +		};
> +	}
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
