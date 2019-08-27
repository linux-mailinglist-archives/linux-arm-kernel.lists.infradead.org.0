Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49E89F605
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 00:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkM8v0+LsCPKQ06KqjljbkiiJxsTSjzcgk8DjfBAvd4=; b=BZx+GHQayuFDhu
	Rnz9zMSXj7TXfQqEUcHV7UwP1E7eUzmAb6XYTAkd4OLTly7+1DqfsN92xgMxKgkWgYEmhmK3zal0N
	8dk4C4tY6HtKbjkDQt2nR3ue7N1Jilt5nix6B/NdASovWZlJ88Vg4MTsTJunNkkhQ3yXhAdiqCng5
	3pF7VWgDb2/4CoV/XgZ2vvOqPLI0M1XE6JSXo7tBSbhDDH0k1Cc54fbKy7fQbwH2eQOQI7CX2pHLi
	KQKTOmR5qIYCAFwQ7yzODYICHyXU7Uzz5GmOPS4vEnP0U+UjDNt3gjWqkPf6HzQKOF1gz+b4LaiTy
	oj9Q1+P751onV+qp87yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jrp-0007b7-3X; Tue, 27 Aug 2019 22:23:09 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jrZ-0007a2-Qx; Tue, 27 Aug 2019 22:22:57 +0000
Received: by mail-ot1-f67.google.com with SMTP id 100so790936otn.2;
 Tue, 27 Aug 2019 15:22:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=/f04tIn5dv2BqiWtl+8rS9yAZ1i1dMhiBr7VR2zkjdA=;
 b=Zjh+oXMu1Dh7Ye1Cli6R8tj3PYBL+NWWLi8/WpAbzwJQflqfzdEgk0wi6nWai+Rzm8
 piNRiHATNWiR2lAiJGzkVQZgdS+cOq5ImrXB2PYytW6GGa/fy5WBUu2WkHGSIW7dBheL
 GQtUlpuflqK26r3qEpYt11J4D8lpAvGAX2+K+VG4SCS1wuRGPOczZoJEyx4LihGZWDJy
 GnEA3Ln31Dd1zTmiPReppLcc5I0kcORzleecR5tiH7d+4EWtQPhhTCBi9jzSySxnbR1A
 1WmCxnlFPozdcDISg9UhmHXTdF88KTycDhZRHpOnot+PwQ17/Dm273mVIhqgN3K2HCgg
 bDSw==
X-Gm-Message-State: APjAAAVIl4joSsMFZ/zI72vn1oZqQH50gXcP8dmkm4DYSqybWoDHpopW
 yhoEMK/QzrSY/dL42xmHIA==
X-Google-Smtp-Source: APXvYqyDWDcwoGu4GXcRZQPI12Q/xb1BMkv3c7WcYIGJYvNtN0YVCgQvRwOlnUG4wUHAERWjdAPGsQ==
X-Received: by 2002:a9d:6754:: with SMTP id w20mr766330otm.82.1566944572658;
 Tue, 27 Aug 2019 15:22:52 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 11sm261076otc.45.2019.08.27.15.22.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 15:22:52 -0700 (PDT)
Date: Tue, 27 Aug 2019 17:22:51 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v2 2/3] dt-bindings: net: dsa: mt7530: Add
 support for port 5
Message-ID: <20190827222251.GA30507@bogus>
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190821144547.15113-3-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821144547.15113-3-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_152255_630135_91ED2797 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:45:46PM +0200, Ren=E9 van Dorst wrote:
> MT7530 port 5 has many modes/configurations.
> Update the documentation how to use port 5.
> =

> Signed-off-by: Ren=E9 van Dorst <opensource@vdorst.com>
> Cc: devicetree@vger.kernel.org
> Cc: Rob Herring <robh@kernel.org>

> v1->v2:
> * Adding extra note about RGMII2 and gpio use.
> rfc->v1:
> * No change

The changelog goes below the '---'

> ---
>  .../devicetree/bindings/net/dsa/mt7530.txt    | 218 ++++++++++++++++++
>  1 file changed, 218 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/net/dsa/mt7530.txt b/Docum=
entation/devicetree/bindings/net/dsa/mt7530.txt
> index 47aa205ee0bd..43993aae3f9c 100644
> --- a/Documentation/devicetree/bindings/net/dsa/mt7530.txt
> +++ b/Documentation/devicetree/bindings/net/dsa/mt7530.txt
> @@ -35,6 +35,42 @@ Required properties for the child nodes within ports c=
ontainer:
>  - phy-mode: String, must be either "trgmii" or "rgmii" for port labeled
>  	 "cpu".
>  =

> +Port 5 of the switch is muxed between:
> +1. GMAC5: GMAC5 can interface with another external MAC or PHY.
> +2. PHY of port 0 or port 4: PHY interfaces with an external MAC like 2nd=
 GMAC
> +   of the SOC. Used in many setups where port 0/4 becomes the WAN port.
> +   Note: On a MT7621 SOC with integrated switch: 2nd GMAC can only conne=
cted to
> +	 GMAC5 when the gpios for RGMII2 (GPIO 22-33) are not used and not
> +	 connected to external component!
> +
> +Port 5 modes/configurations:
> +1. Port 5 is disabled and isolated: An external phy can interface to the=
 2nd
> +   GMAC of the SOC.
> +   In the case of a build-in MT7530 switch, port 5 shares the RGMII bus =
with 2nd
> +   GMAC and an optional external phy. Mind the GPIO/pinctl settings of t=
he SOC!
> +2. Port 5 is muxed to PHY of port 0/4: Port 0/4 interfaces with 2nd GMAC.
> +   It is a simple MAC to PHY interface, port 5 needs to be setup for xMI=
I mode
> +   and RGMII delay.
> +3. Port 5 is muxed to GMAC5 and can interface to an external phy.
> +   Port 5 becomes an extra switch port.
> +   Only works on platform where external phy TX<->RX lines are swapped.
> +   Like in the Ubiquiti ER-X-SFP.
> +4. Port 5 is muxed to GMAC5 and interfaces with the 2nd GAMC as 2nd CPU =
port.
> +   Currently a 2nd CPU port is not supported by DSA code.
> +
> +Depending on how the external PHY is wired:
> +1. normal: The PHY can only connect to 2nd GMAC but not to the switch
> +2. swapped: RGMII TX, RX are swapped; external phy interface with the sw=
itch as
> +   a ethernet port. But can't interface to the 2nd GMAC.
> +
> +Based on the DT the port 5 mode is configured.
> +
> +Driver tries to lookup the phy-handle of the 2nd GMAC of the master devi=
ce.
> +When phy-handle matches PHY of port 0 or 4 then port 5 set-up as mode 2.
> +phy-mode must be set, see also example 2 below!
> + * mt7621: phy-mode =3D "rgmii-txid";
> + * mt7623: phy-mode =3D "rgmii";
> +
>  See Documentation/devicetree/bindings/net/dsa/dsa.txt for a list of addi=
tional
>  required, optional properties and how the integrated switch subnodes must
>  be specified.
> @@ -94,3 +130,185 @@ Example:
>  			};
>  		};
>  	};
> +
> +Example 2: MT7621: Port 4 is WAN port: 2nd GMAC -> Port 5 -> PHY port 4.
> +
> +&eth {
> +	status =3D "okay";

Don't show status in examples.

This should show the complete node.

> +
> +	gmac0: mac@0 {
> +		compatible =3D "mediatek,eth-mac";
> +		reg =3D <0>;
> +		phy-mode =3D "rgmii";
> +
> +		fixed-link {
> +			speed =3D <1000>;
> +			full-duplex;
> +			pause;
> +		};
> +	};
> +
> +	gmac1: mac@1 {
> +		compatible =3D "mediatek,eth-mac";
> +		reg =3D <1>;
> +		phy-mode =3D "rgmii-txid";
> +		phy-handle =3D <&phy4>;
> +	};
> +
> +	mdio: mdio-bus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		/* Internal phy */
> +		phy4: ethernet-phy@4 {
> +			reg =3D <4>;
> +		};
> +
> +		mt7530: switch@1f {
> +			compatible =3D "mediatek,mt7621";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			reg =3D <0x1f>;
> +			pinctrl-names =3D "default";
> +			mediatek,mcm;
> +
> +			resets =3D <&rstctrl 2>;
> +			reset-names =3D "mcm";
> +
> +			ports {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +
> +				port@0 {
> +					reg =3D <0>;
> +					label =3D "lan0";
> +				};
> +
> +				port@1 {
> +					reg =3D <1>;
> +					label =3D "lan1";
> +				};
> +
> +				port@2 {
> +					reg =3D <2>;
> +					label =3D "lan2";
> +				};
> +
> +				port@3 {
> +					reg =3D <3>;
> +					label =3D "lan3";
> +				};
> +
> +/* Commented out. Port 4 is handled by 2nd GMAC.
> +				port@4 {
> +					reg =3D <4>;
> +					label =3D "lan4";
> +				};
> +*/
> +
> +				cpu_port0: port@6 {
> +					reg =3D <6>;
> +					label =3D "cpu";
> +					ethernet =3D <&gmac0>;
> +					phy-mode =3D "rgmii";
> +
> +					fixed-link {
> +						speed =3D <1000>;
> +						full-duplex;
> +						pause;
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +Example 3: MT7621: Port 5 is connected to external PHY: Port 5 -> extern=
al PHY.
> +
> +&eth {
> +	status =3D "okay";
> +
> +	gmac0: mac@0 {
> +		compatible =3D "mediatek,eth-mac";
> +		reg =3D <0>;
> +		phy-mode =3D "rgmii";
> +
> +		fixed-link {
> +			speed =3D <1000>;
> +			full-duplex;
> +			pause;
> +		};
> +	};
> +
> +	mdio: mdio-bus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		/* External phy */
> +		ephy5: ethernet-phy@7 {
> +			reg =3D <7>;
> +		};
> +
> +		mt7530: switch@1f {
> +			compatible =3D "mediatek,mt7621";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			reg =3D <0x1f>;
> +			pinctrl-names =3D "default";
> +			mediatek,mcm;
> +
> +			resets =3D <&rstctrl 2>;
> +			reset-names =3D "mcm";
> +
> +			ports {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +
> +				port@0 {
> +					reg =3D <0>;
> +					label =3D "lan0";
> +				};
> +
> +				port@1 {
> +					reg =3D <1>;
> +					label =3D "lan1";
> +				};
> +
> +				port@2 {
> +					reg =3D <2>;
> +					label =3D "lan2";
> +				};
> +
> +				port@3 {
> +					reg =3D <3>;
> +					label =3D "lan3";
> +				};
> +
> +				port@4 {
> +					reg =3D <4>;
> +					label =3D "lan4";
> +				};
> +
> +				port@5 {
> +					reg =3D <5>;
> +					label =3D "lan5";
> +					phy-mode =3D "rgmii";
> +					phy-handle =3D <&ephy5>;
> +				};
> +
> +				cpu_port0: port@6 {
> +					reg =3D <6>;
> +					label =3D "cpu";
> +					ethernet =3D <&gmac0>;
> +					phy-mode =3D "rgmii";
> +
> +					fixed-link {
> +						speed =3D <1000>;
> +						full-duplex;
> +						pause;
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
