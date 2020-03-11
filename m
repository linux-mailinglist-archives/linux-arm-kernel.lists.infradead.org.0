Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3D5181FC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 18:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DRDkB5sYuIJUqU/TyWTXU13mwUrXQcC+2UbwDKsvJ5k=; b=lBYaO+rStAkeVn6/r103H1mEo
	NuxSdJ9OidLNGfvVHS9WAtRfYrKQHSd2huDdaW/poqQmsOWqxq4Pfnjz7bSBVQs5XqDtPfsFXN56a
	vNsPBg4FtCLjFEemYzGDKxDRJw4n81EZLK7Bn4gQLO5DJRnLWvIHAgpl7xT6pR8Cw1PDMHxBQbPb6
	HRGiXCtbc9kgEqjGaiJ/1uW6p2KBrRjRW1IZTJfJ9bwGBrWnvEhGEZi1PNPMe/9n++BHli1viEYJU
	eAzHwS9oBN7oJ7RDouDCUn73Pw4FZXVS2hQh3QobnxoYqzBACRf0GIYYtagijtwjwSVWXWHR9UP/5
	Em95RiGlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5Nw-0006hB-NA; Wed, 11 Mar 2020 17:43:12 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5NZ-0006cx-81
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 17:42:51 +0000
Received: by mail-pj1-x1043.google.com with SMTP id mj6so1183065pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 10:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QBqZBgo8j8oxlP5EJ9nLRo0e2YIhm4fAQzuidAy5ELQ=;
 b=YB9p4P04JhICAYpotgqrabR2R1qaDP/IZTgVPCdW3Ivu0MsWyDqBk5EOm059bqBp7C
 DUpNyQWPOGAc8nz/+zr8qmeLNXJC15b6KmDa5D6JiwU0XZi/fRI34WbUqThr++VGp9rC
 bTTGSUBGTRI9glazBJgA/YhKafS5fAq9FniMS/Wm2q17BIwliMWcIRCxPvAu8eLUCDDO
 PQWjQcLdgkHjk6PJE9sYcpE8jIH6cCRnZe9SX97aVDXBeXxJ6WmnM9vHrWzY7gyiywEB
 gx56cB7aKJ8D3LKo4TNpYyfLvm/PHSH8OJNOfNsRV6qyHpTVGlr47FqKdikQcWgFXGKL
 YylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QBqZBgo8j8oxlP5EJ9nLRo0e2YIhm4fAQzuidAy5ELQ=;
 b=Jt/FMfS4A21042wEnAboHnxxo9ML3iJ2D1u5OBip/WWLlh4PjRFL0C6iMXvfe7cBrD
 yLw/PVgINr5N48QRw9cnhRp1knIXRwTsbFEAHZT8i3JWvem34+hbgvGDRDknRmsClzAy
 1fSwzrnIxwqiZybCfowmyzocz8y4OMWUVSqAcvnyu3wYuq2K9HLDlpu59j/zL8m+gB1K
 qN2h5r0yNBH7qGtdU0MkmzIVaLOpgsMgEZIPoW1d5qABX09bidUCk1KX9vOY7A1h7bn8
 BJdFLAYv1XWx/0jBfFz7pk9abmZbN1sPqZcqz3JeCPQVmC09iuzRJAic2+6vjSp0Denv
 Kg6g==
X-Gm-Message-State: ANhLgQ3Ol4oANKhmKc774e5MqXt7Jws6fZnLl/A7AG4S5t0h2ZIsLtpj
 +gIMQg2QLCL6cUF3PAOofFx1hg==
X-Google-Smtp-Source: ADFU+vuDCT42JUZJEoKa/xP/dHirK/GQnZ/cISd0wGnVBbBq91RtTpYw3HYqUDLHCE57zy7nw74v8g==
X-Received: by 2002:a17:90a:d988:: with SMTP id
 d8mr2923510pjv.179.1583948564499; 
 Wed, 11 Mar 2020 10:42:44 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:bc61:d85d:eb16:9036])
 by smtp.gmail.com with ESMTPSA id t6sm20435037pfb.172.2020.03.11.10.42.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 10:42:43 -0700 (PDT)
Date: Wed, 11 Mar 2020 10:42:38 -0700
From: Benson Leung <bleung@google.com>
To: Prashant Malani <pmalani@chromium.org>
Subject: Re: [PATCH v3] dt-bindings: Convert usb-connector to YAML format.
Message-ID: <20200311174238.GA155346@google.com>
References: <20200305222732.133047-1-pmalani@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20200305222732.133047-1-pmalani@chromium.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_104249_296554_FD80BEAE 
X-CRM114-Status: GOOD (  29.69  )
X-Spam-Score: -14.0 (--------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-14.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 1.7 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 heikki.krogerus@linux.intel.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, swboyd@chromium.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, enric.balletbo@collabora.com,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, bleung@chromium.org,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3455760462913499224=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3455760462913499224==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Prashant,

On Thu, Mar 05, 2020 at 02:27:28PM -0800, Prashant Malani wrote:
> Convert the usb-connector.txt bindings file to YAML format. This allows
> it to be used in dt_bindings_check verification. This patch was
> born out of a patch series for the addition of a Type C connector
> class port driver[1].
>=20
> An attempt has been made to maintain the same documentation text and
> example structure as was in the .txt file, but wherever needed
> modifications have been made to satisfy dt_bindings_check.
>=20
> Also, update all references to usb-connector.txt to now use
> usb-connector.yaml.
>=20
> [1]: https://lkml.org/lkml/2020/2/19/1232
>=20
> Signed-off-by: Prashant Malani <pmalani@chromium.org>

Reviewed-by: Benson Leung <bleung@chromium.org>


> ---
>=20
> Changes in v3:
> - Updated maintainer list.
> - Fixed grammatical errors in descriptions.
> - Reworded "type" description based on review comments.
> - Added more info to OF graph binding for port@2.
> - Removed address from DT nodes in examples.
>=20
> Changes in v2:
> - Added type references for some properties.
> - Removed pinctrl properties.
> - Updated power-role, try-power-role and data-role properties to be in
>   valid schema format.
> - Added OF graph data bus binding property according to reviewer
>   suggestions.
>=20
>  .../connector/samsung,usb-connector-11pin.txt |   2 +-
>  .../bindings/connector/usb-connector.txt      | 135 ------------
>  .../bindings/connector/usb-connector.yaml     | 206 ++++++++++++++++++
>  .../devicetree/bindings/usb/fcs,fusb302.txt   |   2 +-
>  .../devicetree/bindings/usb/generic.txt       |   2 +-
>  .../devicetree/bindings/usb/mediatek,mtu3.txt |   2 +-
>  .../devicetree/bindings/usb/mediatek,musb.txt |   2 +-
>  .../bindings/usb/richtek,rt1711h.txt          |   2 +-
>  .../devicetree/bindings/usb/ti,hd3ss3220.txt  |   2 +-
>  .../devicetree/bindings/usb/typec-tcpci.txt   |   2 +-
>  .../devicetree/bindings/usb/usb-conn-gpio.txt |   4 +-
>  11 files changed, 216 insertions(+), 145 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/connector/usb-conne=
ctor.txt
>  create mode 100644 Documentation/devicetree/bindings/connector/usb-conne=
ctor.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/connector/samsung,usb-conn=
ector-11pin.txt b/Documentation/devicetree/bindings/connector/samsung,usb-c=
onnector-11pin.txt
> index 22256e295a7a1..3dd8961154abf 100644
> --- a/Documentation/devicetree/bindings/connector/samsung,usb-connector-1=
1pin.txt
> +++ b/Documentation/devicetree/bindings/connector/samsung,usb-connector-1=
1pin.txt
> @@ -19,7 +19,7 @@ Required nodes:
>      0: High Speed (HS),
>      3: Mobile High-Definition Link (MHL), specific to 11-pin Samsung mic=
ro-USB.
> =20
> -[1]: bindings/connector/usb-connector.txt
> +[1]: bindings/connector/usb-connector.yaml
> =20
>  Example
>  -------
> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.tx=
t b/Documentation/devicetree/bindings/connector/usb-connector.txt
> deleted file mode 100644
> index 88578ac1a8a76..0000000000000
> --- a/Documentation/devicetree/bindings/connector/usb-connector.txt
> +++ /dev/null
> @@ -1,135 +0,0 @@
> -USB Connector
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> -
> -A USB connector node represents a physical USB connector. It should be
> -a child of a USB interface controller.
> -
> -Required properties:
> -- compatible: describes type of the connector, must be one of:
> -    "usb-a-connector",
> -    "usb-b-connector",
> -    "usb-c-connector".
> -
> -Optional properties:
> -- label: symbolic name for the connector,
> -- type: size of the connector, should be specified in case of USB-A, USB=
-B
> -  non-fullsize connectors: "mini", "micro".
> -- self-powered: Set this property if the usb device that has its own pow=
er
> -  source.
> -
> -Optional properties for usb-b-connector:
> -- id-gpios: an input gpio for USB ID pin.
> -- vbus-gpios: an input gpio for USB VBUS pin, used to detect presence of
> -  VBUS 5V.
> -  see gpio/gpio.txt.
> -- vbus-supply: a phandle to the regulator for USB VBUS if needed when ho=
st
> -  mode or dual role mode is supported.
> -  Particularly, if use an output GPIO to control a VBUS regulator, should
> -  model it as a regulator.
> -  see regulator/fixed-regulator.yaml
> -- pinctrl-names : a pinctrl state named "default" is optional
> -- pinctrl-0 : pin control group
> -  see pinctrl/pinctrl-bindings.txt
> -
> -Optional properties for usb-c-connector:
> -- power-role: should be one of "source", "sink" or "dual"(DRP) if typec
> -  connector has power support.
> -- try-power-role: preferred power role if "dual"(DRP) can support Try.SNK
> -  or Try.SRC, should be "sink" for Try.SNK or "source" for Try.SRC.
> -- data-role: should be one of "host", "device", "dual"(DRD) if typec
> -  connector supports USB data.
> -
> -Required properties for usb-c-connector with power delivery support:
> -- source-pdos: An array of u32 with each entry providing supported power
> -  source data object(PDO), the detailed bit definitions of PDO can be fo=
und
> -  in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.2
> -  Source_Capabilities Message, the order of each entry(PDO) should follow
> -  the PD spec chapter 6.4.1. Required for power source and power dual ro=
le.
> -  User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_APDO()
> -  defined in dt-bindings/usb/pd.h.
> -- sink-pdos: An array of u32 with each entry providing supported power
> -  sink data object(PDO), the detailed bit definitions of PDO can be found
> -  in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
> -  Sink Capabilities Message, the order of each entry(PDO) should follow
> -  the PD spec chapter 6.4.1. Required for power sink and power dual role.
> -  User can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() =
defined
> -  in dt-bindings/usb/pd.h.
> -- op-sink-microwatt: Sink required operating power in microwatt, if sour=
ce
> -  can't offer the power, Capability Mismatch is set. Required for power
> -  sink and power dual role.
> -
> -Required nodes:
> -- any data bus to the connector should be modeled using the OF graph bin=
dings
> -  specified in bindings/graph.txt, unless the bus is between parent node=
 and
> -  the connector. Since single connector can have multiple data buses eve=
ry bus
> -  has assigned OF graph port number as follows:
> -    0: High Speed (HS), present in all connectors,
> -    1: Super Speed (SS), present in SS capable connectors,
> -    2: Sideband use (SBU), present in USB-C.
> -
> -Examples
> ---------
> -
> -1. Micro-USB connector with HS lines routed via controller (MUIC):
> -
> -muic-max77843@66 {
> -	...
> -	usb_con: connector {
> -		compatible =3D "usb-b-connector";
> -		label =3D "micro-USB";
> -		type =3D "micro";
> -	};
> -};
> -
> -2. USB-C connector attached to CC controller (s2mm005), HS lines routed
> -to companion PMIC (max77865), SS lines to USB3 PHY and SBU to DisplayPor=
t.
> -DisplayPort video lines are routed to the connector via SS mux in USB3 P=
HY.
> -
> -ccic: s2mm005@33 {
> -	...
> -	usb_con: connector {
> -		compatible =3D "usb-c-connector";
> -		label =3D "USB-C";
> -
> -		ports {
> -			#address-cells =3D <1>;
> -			#size-cells =3D <0>;
> -
> -			port@0 {
> -				reg =3D <0>;
> -				usb_con_hs: endpoint {
> -					remote-endpoint =3D <&max77865_usbc_hs>;
> -				};
> -			};
> -			port@1 {
> -				reg =3D <1>;
> -				usb_con_ss: endpoint {
> -					remote-endpoint =3D <&usbdrd_phy_ss>;
> -				};
> -			};
> -			port@2 {
> -				reg =3D <2>;
> -				usb_con_sbu: endpoint {
> -					remote-endpoint =3D <&dp_aux>;
> -				};
> -			};
> -		};
> -	};
> -};
> -
> -3. USB-C connector attached to a typec port controller(ptn5110), which h=
as
> -power delivery support and enables drp.
> -
> -typec: ptn5110@50 {
> -	...
> -	usb_con: connector {
> -		compatible =3D "usb-c-connector";
> -		label =3D "USB-C";
> -		power-role =3D "dual";
> -		try-power-role =3D "sink";
> -		source-pdos =3D <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
> -		sink-pdos =3D <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)
> -			     PDO_VAR(5000, 12000, 2000)>;
> -		op-sink-microwatt =3D <10000000>;
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.ya=
ml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> new file mode 100644
> index 0000000000000..4638d7adb806a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> @@ -0,0 +1,206 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/connector/usb-connector.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: USB Connector
> +
> +maintainers:
> +  - Rob Herring <robh@kernel.org>
> +
> +description:
> +  A USB connector node represents a physical USB connector. It should be=
 a child
> +  of a USB interface controller.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - usb-a-connector
> +      - usb-b-connector
> +      - usb-c-connector
> +
> +  label:
> +    description: Symbolic name for the connector.
> +
> +  type:
> +    description: Size of the connector, should be specified in case of
> +      non-fullsize 'usb-a-connector' or 'usb-b-connector' compatible
> +      connectors.
> +    allOf:
> +      - $ref: /schemas/types.yaml#definitions/string
> +    enum:
> +      - mini
> +      - micro
> +
> +  self-powered:
> +    description: Set this property if the USB device has its own power s=
ource.
> +    type: boolean
> +
> +  # The following are optional properties for "usb-b-connector".
> +  id-gpios:
> +    description: An input gpio for USB ID pin.
> +    maxItems: 1
> +
> +  vbus-gpios:
> +    description: An input gpio for USB VBus pin, used to detect presence=
 of
> +      VBUS 5V.
> +    maxItems: 1
> +
> +  vbus-supply:
> +    description: A phandle to the regulator for USB VBUS if needed when =
host
> +      mode or dual role mode is supported.
> +      Particularly, if use an output GPIO to control a VBUS regulator, s=
hould
> +      model it as a regulator. See bindings/regulator/fixed-regulator.ya=
ml
> +
> +  # The following are optional properties for "usb-c-connector".
> +  power-role:
> +    description: Determines the power role that the Type C connector will
> +      support. "dual" refers to Dual Role Port (DRP).
> +    allOf:
> +      - $ref: /schemas/types.yaml#definitions/string
> +    enum:
> +      - source
> +      - sink
> +      - dual
> +
> +  try-power-role:
> +    description: Preferred power role.
> +    allOf:
> +      - $ref: /schemas/types.yaml#definitions/string
> +    enum:
> +     - source
> +     - sink
> +     - dual
> +
> +  data-role:
> +    description: Data role if Type C connector supports USB data. "dual"=
 refers
> +      Dual Role Device (DRD).
> +    allOf:
> +      - $ref: /schemas/types.yaml#definitions/string
> +    enum:
> +      - host
> +      - device
> +      - dual
> +
> +  # The following are optional properties for "usb-c-connector" with pow=
er
> +  # delivery support.
> +  source-pdos:
> +    description: An array of u32 with each entry providing supported pow=
er
> +      source data object(PDO), the detailed bit definitions of PDO can b=
e found
> +      in "Universal Serial Bus Power Delivery Specification" chapter 6.4=
=2E1.2
> +      Source_Capabilities Message, the order of each entry(PDO) should f=
ollow
> +      the PD spec chapter 6.4.1. Required for power source and power dua=
l role.
> +      User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_A=
PDO()
> +      defined in dt-bindings/usb/pd.h.
> +    minItems: 1
> +    maxItems: 7
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  sink-pdos:
> +    description: An array of u32 with each entry providing supported pow=
er sink
> +      data object(PDO), the detailed bit definitions of PDO can be found=
 in
> +      "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
> +      Sink Capabilities Message, the order of each entry(PDO) should fol=
low the
> +      PD spec chapter 6.4.1. Required for power sink and power dual role=
=2E User
> +      can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() d=
efined
> +      in dt-bindings/usb/pd.h.
> +    minItems: 1
> +    maxItems: 7
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  op-sink-microwatt:
> +    description: Sink required operating power in microwatt, if source c=
an't
> +      offer the power, Capability Mismatch is set. Required for power si=
nk and
> +      power dual role.
> +
> +  ports:
> +    description: OF graph bindings (specified in bindings/graph.txt) tha=
t model
> +      any data bus to the connector unless the bus is between parent nod=
e and
> +      the connector. Since a single connector can have multiple data bus=
es every
> +      bus has an assigned OF graph port number as described below.
> +    type: object
> +    properties:
> +      port@0:
> +        type: object
> +        description: High Speed (HS), present in all connectors.
> +
> +      port@1:
> +        type: object
> +        description: Super Speed (SS), present in SS capable connectors.
> +
> +      port@2:
> +        type: object
> +        description: Sideband Use (SBU), present in USB-C. This describe=
s the
> +          alternate mode connection of which SBU is a part.
> +
> +    required:
> +      - port@0
> +
> +required:
> +  - compatible
> +
> +examples:
> +  # Micro-USB connector with HS lines routed via controller (MUIC).
> +  - |+
> +    muic-max77843 {
> +      usb_con1: connector {
> +        compatible =3D "usb-b-connector";
> +        label =3D "micro-USB";
> +        type =3D "micro";
> +      };
> +    };
> +
> +  # USB-C connector attached to CC controller (s2mm005), HS lines routed
> +  # to companion PMIC (max77865), SS lines to USB3 PHY and SBU to Displa=
yPort.
> +  # DisplayPort video lines are routed to the connector via SS mux in US=
B3 PHY.
> +  - |+
> +    ccic: s2mm005 {
> +      usb_con2: connector {
> +        compatible =3D "usb-c-connector";
> +        label =3D "USB-C";
> +
> +        ports {
> +          #address-cells =3D <1>;
> +          #size-cells =3D <0>;
> +
> +          port@0 {
> +            reg =3D <0>;
> +            usb_con_hs: endpoint {
> +              remote-endpoint =3D <&max77865_usbc_hs>;
> +            };
> +          };
> +          port@1 {
> +            reg =3D <1>;
> +            usb_con_ss: endpoint {
> +              remote-endpoint =3D <&usbdrd_phy_ss>;
> +            };
> +          };
> +          port@2 {
> +            reg =3D <2>;
> +            usb_con_sbu: endpoint {
> +              remote-endpoint =3D <&dp_aux>;
> +            };
> +          };
> +        };
> +      };
> +    };
> +
> +  # USB-C connector attached to a typec port controller(ptn5110), which =
has
> +  # power delivery support and enables drp.
> +  - |+
> +    #include <dt-bindings/usb/pd.h>
> +    typec: ptn5110 {
> +      usb_con3: connector {
> +        compatible =3D "usb-c-connector";
> +        label =3D "USB-C";
> +        power-role =3D "dual";
> +        try-power-role =3D "sink";
> +        source-pdos =3D <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
> +        sink-pdos =3D <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)
> +                     PDO_VAR(5000, 12000, 2000)>;
> +        op-sink-microwatt =3D <10000000>;
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/usb/fcs,fusb302.txt b/Docu=
mentation/devicetree/bindings/usb/fcs,fusb302.txt
> index ba2e32d500c02..60e4654297af7 100644
> --- a/Documentation/devicetree/bindings/usb/fcs,fusb302.txt
> +++ b/Documentation/devicetree/bindings/usb/fcs,fusb302.txt
> @@ -9,7 +9,7 @@ Required sub-node:
>  - connector : The "usb-c-connector" attached to the FUSB302 IC. The bind=
ings
>    of the connector node are specified in:
> =20
> -	Documentation/devicetree/bindings/connector/usb-connector.txt
> +	Documentation/devicetree/bindings/connector/usb-connector.yaml
> =20
> =20
>  Example:
> diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Document=
ation/devicetree/bindings/usb/generic.txt
> index e6790d2a4da9b..474e74c06522d 100644
> --- a/Documentation/devicetree/bindings/usb/generic.txt
> +++ b/Documentation/devicetree/bindings/usb/generic.txt
> @@ -34,7 +34,7 @@ Optional properties:
>   - usb-role-switch: boolean, indicates that the device is capable of ass=
igning
>  			the USB data role (USB host or USB device) for a given
>  			USB connector, such as Type-C, Type-B(micro).
> -			see connector/usb-connector.txt.
> +			see connector/usb-connector.yaml.
> =20
>  This is an attribute to a USB controller such as:
> =20
> diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt b/Do=
cumentation/devicetree/bindings/usb/mediatek,mtu3.txt
> index e0ae6096f7ac8..a82ca438aec1f 100644
> --- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
> +++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
> @@ -34,7 +34,7 @@ Optional properties:
>  	dual-role mode.
>  	it's considered valid for compatibility reasons, not allowed for
>  	new bindings, and put into a usb-connector node.
> -	see connector/usb-connector.txt.
> +	see connector/usb-connector.yaml.
>   - pinctrl-names : a pinctrl state named "default" is optional, and need=
 be
>  	defined if auto drd switch is enabled, that means the property dr_mode
>  	is set as "otg", and meanwhile the property "mediatek,enable-manual-drd"
> diff --git a/Documentation/devicetree/bindings/usb/mediatek,musb.txt b/Do=
cumentation/devicetree/bindings/usb/mediatek,musb.txt
> index 2b8a87c90d9ea..5eedb02965622 100644
> --- a/Documentation/devicetree/bindings/usb/mediatek,musb.txt
> +++ b/Documentation/devicetree/bindings/usb/mediatek,musb.txt
> @@ -23,7 +23,7 @@ Optional properties:
>                       MTCMOS
> =20
>  Required child nodes:
> - usb connector node as defined in bindings/connector/usb-connector.txt
> + usb connector node as defined in bindings/connector/usb-connector.yaml
>  Optional properties:
>   - id-gpios        : input GPIO for USB ID pin.
>   - vbus-gpios      : input GPIO for USB VBUS pin.
> diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.txt b/=
Documentation/devicetree/bindings/usb/richtek,rt1711h.txt
> index e3fc57e605ed6..6f8115db2ea9b 100644
> --- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.txt
> +++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.txt
> @@ -9,7 +9,7 @@ Required properties:
>  Required sub-node:
>  - connector: The "usb-c-connector" attached to the tcpci chip, the bindi=
ngs
>    of connector node are specified in
> -  Documentation/devicetree/bindings/connector/usb-connector.txt
> +  Documentation/devicetree/bindings/connector/usb-connector.yaml
> =20
>  Example :
>  rt1711h@4e {
> diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.txt b/Doc=
umentation/devicetree/bindings/usb/ti,hd3ss3220.txt
> index 25780e945b154..2bd21b22ce95b 100644
> --- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.txt
> +++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.txt
> @@ -9,7 +9,7 @@ Required sub-node:
>   - connector: The "usb-c-connector" attached to the hd3ss3220 chip. The
>     bindings of the connector node are specified in:
> =20
> -	Documentation/devicetree/bindings/connector/usb-connector.txt
> +	Documentation/devicetree/bindings/connector/usb-connector.yaml
> =20
>  Example:
>  hd3ss3220@47 {
> diff --git a/Documentation/devicetree/bindings/usb/typec-tcpci.txt b/Docu=
mentation/devicetree/bindings/usb/typec-tcpci.txt
> index 0dd1469e73180..2082522b1c326 100644
> --- a/Documentation/devicetree/bindings/usb/typec-tcpci.txt
> +++ b/Documentation/devicetree/bindings/usb/typec-tcpci.txt
> @@ -13,7 +13,7 @@ Required properties:
>  Required sub-node:
>  - connector: The "usb-c-connector" attached to the tcpci chip, the bindi=
ngs
>    of connector node are specified in
> -  Documentation/devicetree/bindings/connector/usb-connector.txt
> +  Documentation/devicetree/bindings/connector/usb-connector.yaml
> =20
>  Example:
> =20
> diff --git a/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt b/Do=
cumentation/devicetree/bindings/usb/usb-conn-gpio.txt
> index 3d05ae56cb0dc..ec80641208a53 100644
> --- a/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
> +++ b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
> @@ -8,11 +8,11 @@ Required properties:
>  - compatible : should include "gpio-usb-b-connector" and "usb-b-connecto=
r".
>  - id-gpios, vbus-gpios : input gpios, either one of them must be present,
>  	and both can be present as well.
> -	see connector/usb-connector.txt
> +	see connector/usb-connector.yaml
> =20
>  Optional properties:
>  - vbus-supply : can be present if needed when supports dual role mode.
> -	see connector/usb-connector.txt
> +	see connector/usb-connector.yaml
> =20
>  - Sub-nodes:
>  	- port : can be present.
> --=20
> 2.25.0.265.gbab2e86ba0-goog
>=20

--=20
Benson Leung
Staff Software Engineer
Chrome OS Kernel
Google Inc.
bleung@google.com
Chromium OS Project
bleung@chromium.org

--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCXmkjDgAKCRBzbaomhzOw
wroIAQDRCl4ySzBeGZJPa5rvzAV5PUCqQaOga6Q0EockG1XEmAD/U9xut3eFITRi
Vr5Dw+WT/3nNdJc3ddMOpU4jLghV7go=
=X4eD
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--


--===============3455760462913499224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3455760462913499224==--

