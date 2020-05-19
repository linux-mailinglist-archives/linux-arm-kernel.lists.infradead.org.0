Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09441D8DBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axkITp/w3r4MefNxKZMmoG44tTb8JBfEyhJWia6XlUk=; b=FamXdatELh4L1x
	T/7TnIlBAn/wDADXVCrHvHHNgoUnodujsBppA9Z9mIf8l6bQodEHgjhSKgfJUoxVPnzhPTaUpx1nC
	F6fcMzqXbJ0R4dlYcCNMbaUsLZQh8K7jak8J/WyT/F7Ml8MfN0kOr4UQ8GMHH+t8y/4ClgItbVHL5
	/Ny5UKYBSn5mNFC+A0iXHZnzsHtRJaZQARHEOULNXvr7DxJcUgQQjqc097WXrleEMgidxPisr2Up7
	oi9xzyMw3T4BPlPaLoNwoZ8g4FFaIzRyREuZdUhhUZWSXxTBRqiHQTYftmxEwWm7LW0UdHZe52Hy/
	m4cg6oQfpCjQxyBuwQeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasKW-0002Hz-V7; Tue, 19 May 2020 02:50:08 +0000
Received: from mail-db8eur05on2076.outbound.protection.outlook.com
 ([40.107.20.76] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasKI-0002HX-Vy
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 02:49:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kTF4p+6hibFv6oHrFULdsvuNgxf5Z12PVUytnOoiIReayqzvXmOW93dRSBl6tKHKkg5IE8WbDA6ureSVv+60bmEDkfPONEsyqtpJy8/cDrZetT42TWEnlcS/vsTEriJ9ol6e3Xzfzq1IJvL52EJ1QoQConi4XZAMraRr++/P7l/XuJhirmZeO0PzUX1bP9PWsfGMEJpQHgfvhcgOiXSzrVS/6eqjeY0JfZeDxO8zq4hm1YfHTzeOFhCJL9lLSfa/PnoZKrEvppYR5Tl/50mC3M6vAOGnf3kF9DXUYi+IkIeDOlRokvDyvzvJJ+qQaf0elD6pGeV20oqqPGRGU4zNIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sGPcUiRJ0CW6YzTZqDrxG55/AfOzeV8hebde2afFCJE=;
 b=bswwKqQPm0cjWUsQnctO4V6fu64S25NeZsVUJ9T+PL/mZH24oWInonFy8TaliAkr/Ah6Jx4vFJqX+Ces6WHj3BGxwndIrE1Vdwnw+szIVPCjlKaKnGkQsFKOGEqEQJ5cMTgkTf1AdmDxOTLAvQOrf0sV71NKjL5rPzwbv8s2q0VyFXEdr3NLnwkGyVieduLrftsWQvJCqYRaGKunEtQx1qyZI/5ftz+AUBZVGfRX1xbkn6UZnCdR6kumIERB6Q5YFIb0dsW9/neitf+OeornS1V3q6cQ6ctx+bxdPto5rEzCe944WyUm8Wda7288WeBhrrE1wkqWEDomDLtrg6Z9rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sGPcUiRJ0CW6YzTZqDrxG55/AfOzeV8hebde2afFCJE=;
 b=nYb2JpgPG0nFsj9yqi+Jfi8err0UaPcEETbzHEe73UMWatudAlzfoIXisgzNVLWFI0j/DnosM/gkd4AefQ0eroNSl2vO68J+yM14jgXkHD/kviN6LApHl/PNSt12vCh4CU6XcJSj2+VHTa4FChkuYnc0BkZeUa8Ikk8wXDfN3aA=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4150.eurprd04.prod.outlook.com (2603:10a6:209:43::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Tue, 19 May
 2020 02:49:51 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 02:49:51 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 2/3] dt-bindings: timer: Convert i.MX TPM to json-schema
Thread-Topic: [PATCH 2/3] dt-bindings: timer: Convert i.MX TPM to json-schema
Thread-Index: AQHWLSSm2/1WAPgK0U6sOtqNceGFLKiutSNw
Date: Tue, 19 May 2020 02:49:51 +0000
Message-ID: <AM6PR04MB49661ACB965C762C30E39AF680B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589813260-20036-1-git-send-email-Anson.Huang@nxp.com>
 <1589813260-20036-3-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589813260-20036-3-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b88891f4-4c89-4cf9-dfe5-08d7fb9f4d7a
x-ms-traffictypediagnostic: AM6PR04MB4150:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4150294BE7DED975CDDE358580B90@AM6PR04MB4150.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 89f/1xmP6O9Jh7KIR+4XMYPSMo0jN6YnPIElHXRAM46anK1yMgNZUpI6ZpQXjbrY2Ja3SvR/7y1lWq4JEoDw5CBaBVOkgYfF7nOyxtLmMCyWsZYAmw3RQ1L53ssCgEUeMd53W9xBFIhfmrrQDdBrKHzkH71gHY+HdtsPGAOu0jw5Aa5J4ERdHRHXZBlSsKB+HiDzGRDJJjdm1LFvErD7uGxIg+g+Udl9ozzbPpEuY28mrStenhewH8MWwfgGZx6CHisrMYYIP24EMAb+1WoQG9Iddxme9qLP+RmNeIkUhKnTHBzVN1jgtdv/Y+5QJIXjrMkj2pNnp6m7A/Zz7gHvwGUt+SknZ3D0iQgcwBUP2G9I8Pg8d5PsmyDvFyWuL+Rhq/T2bjsee+W/CdTAX8Di5zpC7IXgNWb72XvLzkVb/N4QynKiqn7iMdiDDzGthEZJ9iAnPsYwUsD+vrh4HRu7kly1beFQ05yvCrikNvE59zw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(376002)(136003)(366004)(39860400002)(5660300002)(26005)(71200400001)(186003)(7696005)(8936002)(44832011)(55016002)(33656002)(76116006)(66556008)(66476007)(66946007)(2906002)(52536014)(7416002)(86362001)(316002)(66446008)(110136005)(4326008)(6506007)(478600001)(8676002)(64756008)(9686003)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: NoVWvZHtUvRY7Y29COiIdGOTAQJPwKO0WlY0407/wFITZdf5LJdr5kTx33cpxhWw1h0e/ZAfhrV4eK1Z0t+cYB5LqJC1a2//0lHcL/pZ1xEOHXDPSPrDASC6Fhl5rf5ANWE+gzVmmk6IA9iEBYyyz7itV+nqFZxUO0I8HYWBJykvfGH6DhJZJBiSzTHR+KrPpnJPGYJ02yNEcdLaqX3naa5h/ToUyJorNpSLZSszpfLp+xG8WXnnkA5xhQtdTm4E5O+27FCCUBI4LA2OJsdFud7nMKY1FRbJU5WAIl7r0Fx4YTIuP+uop+UbI2ntGFKqzpGi2VgsqifsZt96jkO/8I6KYQ9G53UvkfZRBLXQoNe9MKvAHmUZwquOr6P+K7PAdE3gdOwrQUgIjqzBMAxh/A9irGqWZ2CNCy9OuIO62INT/g5+didUCF5OYH8nxv9V3Jui8ag9fDUvjyv5hsn8YrfRJih8Qv5dxhHebfCujwYOnHFGjpR0T9IKBXGpU0wW
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b88891f4-4c89-4cf9-dfe5-08d7fb9f4d7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 02:49:51.2935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ukTilocx3wR/E2PTV/3M9gRjsyuIZz6BwHnWLqsqF4uqdhGuyTloe3oqomxMNbR3IYVeQMrpkz9P+GZsMEntEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_194955_029672_C7FBBB43 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.76 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> Sent: Monday, May 18, 2020 10:48 PM
> 
> Convert the i.MX TPM binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/timer/nxp,tpm-timer.txt    | 28 ----------
>  .../devicetree/bindings/timer/nxp,tpm-timer.yaml   | 63
> ++++++++++++++++++++++
>  2 files changed, 63 insertions(+), 28 deletions(-)  delete mode 100644
> Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt
>  create mode 100644
> Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt
> b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt
> deleted file mode 100644
> index f82087b..0000000
> --- a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -NXP Low Power Timer/Pulse Width Modulation Module (TPM)
> -
> -The Timer/PWM Module (TPM) supports input capture, output compare, -and
> the generation of PWM signals to control electric motor and power
> -management applications. The counter, compare and capture registers -are
> clocked by an asynchronous clock that can remain enabled in low -power modes.
> TPM can support global counter bus where one TPM drives -the counter bus for
> the others, provided bit width is the same.
> -
> -Required properties:
> -
> -- compatible :	should be "fsl,imx7ulp-tpm"
> -- reg :		Specifies base physical address and size of the register sets
> -		for the clock event device and clock source device.
> -- interrupts :	Should be the clock event device interrupt.
> -- clocks :	The clocks provided by the SoC to drive the timer, must contain
> -		an entry for each entry in clock-names.
> -- clock-names : Must include the following entries: "ipg" and "per".
> -
> -Example:
> -tpm5: tpm@40260000 {
> -	compatible = "fsl,imx7ulp-tpm";
> -	reg = <0x40260000 0x1000>;
> -	interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
> -	clocks = <&clks IMX7ULP_CLK_NIC1_BUS_DIV>,
> -		 <&clks IMX7ULP_CLK_LPTPM5>;
> -	clock-names = "ipg", "per";
> -};
> diff --git a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
> b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
> new file mode 100644
> index 0000000..0d34610
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2

[...]

> +
> +title: NXP Low Power Timer/Pulse Width Modulation Module (TPM)
> +
> +maintainers:
> +  - Dong Aisheng <aisheng.dong@nxp.com>
> +
> +description: |
> +  The Timer/PWM Module (TPM) supports input capture, output compare,
> +  and the generation of PWM signals to control electric motor and power
> +  management applications. The counter, compare and capture registers
> +  are clocked by an asynchronous clock that can remain enabled in low
> +  power modes. TPM can support global counter bus where one TPM drives
> +  the counter bus for the others, provided bit width is the same.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx7ulp-tpm
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: SoC TPM ipg clock
> +      - description: SoC TPM per clock

> +    maxItems: 2

Unneeded line

> +
> +  clock-names:
> +    items:
> +      - const: ipg
> +      - const: per

> +    maxItems: 2

Ditto

Otherwise:

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx7ulp-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    timer@40260000 {
> +        compatible = "fsl,imx7ulp-tpm";
> +        reg = <0x40260000 0x1000>;
> +        interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
> +                 <&pcc2 IMX7ULP_CLK_LPTPM5>;
> +        clock-names = "ipg", "per";
> +    };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
