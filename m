Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A672A1D709F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 07:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQuBXXIiqVAFxnIAwzmMVpW9NrU8pht301lmCCmV6mY=; b=rA+uLBf2mmjlN2
	7IxQPTWMZZGOAAj2SBahJcuWkaQldYCz50+uNlCW+sWuuzY9fuegQ4ZnLKWCQ1lsuU1GPjGKSzuSW
	mM1BpAhEAoRJ3QI4JUkU7z9vAfKYEJM/6AN0AHl63N9tQ+ThFpzx9RT+9ONwcSuzZkMK8B3h4BNjK
	Kn/LcW5HWoO/oHWvOhDIXxLz9waaYIYMtLEbJdIsSRUYUyokoU3FYokwHxG1uA7rdpKjZnGp2rCcd
	x6kDLbSJOwWDDR090J/DxbH49ZWskliBqfJX/fIlL0Kof8FYrVB66HffUKvQzuOcAh+HA1+fIURGC
	g92cj/bB7rCi0FpJhkKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaYnf-0000Fl-AL; Mon, 18 May 2020 05:58:55 +0000
Received: from mail-vi1eur05on2046.outbound.protection.outlook.com
 ([40.107.21.46] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaYnV-0000FO-S0
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 05:58:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NUe5cazUTcM+RLf3FiGAZQqMlId1bFg30a1gPDSrDKW15+PdmGSRtxR5gwayJg+MEdwC3NSqGTyPAX4bzPWmKu+hzo02Y2nczmuAQlcRSFKQYaQM/FW5R5VDkASL4OlBmXue+mWZPA078qsuCITRJwIgFMifd1wbaP2YlIqQn5KHtcZW53EPyrl0ksSd4CLeLTOrCM8qRtK45r6CQ0TOhJUSgIUeChVmoYvazUkXNz5rfPDVs4BSqHhozlfJnqs+kSnJ9xcOyrPHhySlK05ASpDYbdNudSPl3nkhHRZ6Mcc0RLCeMbaI9ag1dvEvZJZhFejMpNWzl7cC72vvi8JqlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJZIY/Rjm/TYK27OSIKn4TjYU1agnKvXvjV2qQoQuOk=;
 b=D/n0u7VEM+Y34wuaHdgM2c0Qbg3ywRxuTgLQNNoEAxX7kNP+hR41BnWrxauQx/k+nROieyXPCerR++NLfehsdNWgXu+15ySBRnyeenFTslYJ3xwMoYn7Kx7oYcTYBpYzoa06U06dOGWLo0gJMAQ8xV52gMCeM0ty3II7FiaHSfv+JL4ZfYJHGkrLUwEq0CA7tZN2hl9fuUZzqDxPL1Ub+lRdJeXpkeQ440j+hTV4ASXjOoE8NFEydtgpT19T6fyKICH2JLF0RCVL09dok5SMzHFzD2+x3EjNA4rIhPiQluQu9PUb3vq3B1+AgB1okveh4HZn8ep9wN2kfjbIreW/uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJZIY/Rjm/TYK27OSIKn4TjYU1agnKvXvjV2qQoQuOk=;
 b=MVHq3nPCBLR3K5pLD7a+BUPYegGUDfGb6mJ10f9Y66gv0TS2wI/F9Gj+CIt/nQc0Jz61+/Gc5u4SwPwNX+NLGI94iQXp81f0uOZugm7P/rwki/vqhnxBV/CQ8UpLWjhvHMM9IJ0BH9O00TLbw53nMMSCpYxufP4SmZBM1vAETMk=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6695.eurprd04.prod.outlook.com (2603:10a6:20b:d8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 05:58:42 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 05:58:42 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "p.zabel@pengutronix.de"
 <p.zabel@pengutronix.de>, "linux-pwm@vger.kernel.org"
 <linux-pwm@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: pwm: Convert imx pwm to json-schema
Thread-Topic: [PATCH 1/2] dt-bindings: pwm: Convert imx pwm to json-schema
Thread-Index: AQHWKb3TVkIQx8/F2EitnEjJu59w0aitXsSg
Date: Mon, 18 May 2020 05:58:42 +0000
Message-ID: <AM6PR04MB4966EC7122B2BFB9FEEDD74280B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 10d899b3-57e2-420b-8853-08d7faf084f1
x-ms-traffictypediagnostic: AM6PR04MB6695:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB66954585DC137D45E44C5DB880B80@AM6PR04MB6695.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pc75P+qcqR+TU9CE6xvpv3oCLFZyuKlhP8jOCi7rpcKIyRPWd/Zgix7oAEGuzNLnoZpfFvY9IDRxPAnQoCipVV8rnfIIy5qPeb8g6nnsCvNLO63gFHAle+Nkwr/IpBgKavLMfBff5B8RR1WpwvYgUEcbVVs/umg6AKOxn4oUPB5LeYO0yyAw0YTs/medIfb5dK69ACVDszyFeYM9+44pWtZz8pro9mCb+pWnxnJCsclZzUUNvk+Gpi8UUzLiN+UBL8aMrIlpXvbc2gI1kLevu85UVTp4/+/xK7ELKRHNcaa7RTTclrGFnuU/EfsfKZRYXceBiaSnesd/1EZ7WTWVEXdNrOVTgb67yL0ipxMLSfYHA/MZtqAWQkj92B8bHrXO1dA2E+4mBMZn2b9Uxag+PxRNt+GM6NmKoCTYlEX8XnTUlThkI6LZEtef3rFNWyHv6epJPkoCc93y4hwiKr5Crx/HF/k69kB5FsEwre90HgcJjeFk3/2rp410e32Q2uzDvYvDrSBvGav6kvaKscYqkrRQ4kqZKmd0YmaAXc4kLSmNRNCg7We9/mO4kBkBYlME
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(366004)(39860400002)(136003)(55016002)(5660300002)(8936002)(4326008)(8676002)(45080400002)(478600001)(186003)(33656002)(9686003)(7416002)(2906002)(316002)(86362001)(110136005)(26005)(64756008)(7696005)(66476007)(66946007)(66556008)(76116006)(66446008)(71200400001)(83080400001)(44832011)(6506007)(52536014)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ozbQHlUI6rg1IaJYeVodMmu1rIps8SbJrKc3nk7zGa89hLxB9k9NMc/h3ohihpxifWRZ0OVaU0ucfrgClJdG/kEglMG1N2NKfJ3Feg4WbSnCn6lGGQPZi7Sz5g+1/mHbPnYjhijAh/OT8B58m7+2HsvfYTHd8myAzVQO7Baz4IZaplZTMhT+VBaeIGqs5Ie3vVzdZ0MLdbsytVrDGktPEbtZrjDV2auAZiia4hkCpuOaEtuQYLCEBM/U8TKWsnp4jhbqVmBofAfIu1jNdkTYEcimLNLJyn0irepGQB6sVoX2IiVhpHDUk7Q4RXInG3aLMTEekDeD/fuoNLJMtW12pLFx8MKR3hjNxvAlnhUFhBzJLbyyZsImIPfjxPsQLQehs6a33OhWKY0SjLftvompec+0rmyoaX2i+YDO5lMZFXjjawoTazl6e71S+faB4RkRn9PLq2dV9Xps0Z2hjKlDNaBPxYQFiCekrlgnNAIEe1w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10d899b3-57e2-420b-8853-08d7faf084f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 05:58:42.4281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EKUbqVivu7B7RU3yU7lvJbIrB74eXER47Xq6OP7vQG/07PtWrlMNZstHQJxvygpNZiTsXXlPVlYIyHTQLZ5JaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_225845_909427_301185A1 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.46 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Thursday, May 14, 2020 2:54 PM
> 
> Convert the imx pwm binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/pwm/imx-pwm.txt  | 27 ---------
> Documentation/devicetree/bindings/pwm/imx-pwm.yaml | 66
> ++++++++++++++++++++++
>  2 files changed, 66 insertions(+), 27 deletions(-)  delete mode 100644
> Documentation/devicetree/bindings/pwm/imx-pwm.txt
>  create mode 100644
> Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.txt
> b/Documentation/devicetree/bindings/pwm/imx-pwm.txt
> deleted file mode 100644
> index 22f1c3d..0000000
> --- a/Documentation/devicetree/bindings/pwm/imx-pwm.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -Freescale i.MX PWM controller
> -
> -Required properties:
> -- compatible : should be "fsl,<soc>-pwm" and one of the following
> -   compatible strings:
> -  - "fsl,imx1-pwm" for PWM compatible with the one integrated on i.MX1
> -  - "fsl,imx27-pwm" for PWM compatible with the one integrated on i.MX27
> -- reg: physical base address and length of the controller's registers
> -- #pwm-cells: 2 for i.MX1 and 3 for i.MX27 and newer SoCs. See pwm.yaml
> -  in this directory for a description of the cells format.
> -- clocks : Clock specifiers for both ipg and per clocks.
> -- clock-names : Clock names should include both "ipg" and "per"
> -See the clock consumer binding,
> -	Documentation/devicetree/bindings/clock/clock-bindings.txt
> -- interrupts: The interrupt for the pwm controller
> -
> -Example:
> -
> -pwm1: pwm@53fb4000 {
> -	#pwm-cells = <3>;
> -	compatible = "fsl,imx53-pwm", "fsl,imx27-pwm";
> -	reg = <0x53fb4000 0x4000>;
> -	clocks = <&clks IMX5_CLK_PWM1_IPG_GATE>,
> -		 <&clks IMX5_CLK_PWM1_HF_GATE>;
> -	clock-names = "ipg", "per";
> -	interrupts = <61>;
> -};
> diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> new file mode 100644
> index 0000000..4b62af2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> +---
> +$id:
> +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevice
> +tree.org%2Fschemas%2Fpwm%2Fimx-pwm.yaml%23&amp;data=02%7C01%
> 7Caisheng.d
> +ong%40nxp.com%7C9b5cc1814a4b47d1cb0d08d7f7d4f594%7C686ea1d3bc
> 2b4c6fa92c
> +d99c5c301635%7C0%7C0%7C637250366331627865&amp;sdata=M2RPcty
> wz61WZrpAW6S
> +O3NJbr2wj2qXwnMMmBwCbInk%3D&amp;reserved=0
> +$schema:
> +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevice
> +tree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Caishen
> g.dong%
> +40nxp.com%7C9b5cc1814a4b47d1cb0d08d7f7d4f594%7C686ea1d3bc2b4c
> 6fa92cd99c
> +5c301635%7C0%7C0%7C637250366331627865&amp;sdata=UxgYSClanyOjt
> BmlyNrMZyF
> +3%2F5awD%2FM3yaVPqgNKgxs%3D&amp;reserved=0
> +
> +title: Freescale i.MX PWM controller
> +
> +maintainers:
> +  - Philipp Zabel <p.zabel@pengutronix.de>
> +
> +properties:
> +  "#pwm-cells":
> +    description: |
> +      Should be 2 for i.MX1 and 3 for i.MX27 and newer SoCs. See pwm.yaml
> +      in this directory for a description of the cells format.

Should we add the reference to pwm.yaml?
BTW, strange, I didn't see format description in pwm.yaml.

> +    enum:
> +      - 2
> +      - 3
> +
> +  compatible:
> +    enum:
> +      - fsl,imx1-pwm
> +      - fsl,imx27-pwm
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: SoC PWM ipg clock
> +      - description: SoC PWM per clock
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: ipg
> +      - const: per
> +    maxItems: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - "#pwm-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx5-clock.h>
> +
> +    pwm@53fb4000 {
> +        #pwm-cells = <3>;
> +        compatible = "fsl,imx27-pwm";
> +        reg = <0x53fb4000 0x4000>;
> +        clocks = <&clks IMX5_CLK_PWM1_IPG_GATE>,
> +                 <&clks IMX5_CLK_PWM1_HF_GATE>;
> +        clock-names = "ipg", "per";
> +        interrupts = <61>;
> +    };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
