Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5493B1D70A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 08:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmpn39ChdiFDoo1JELVjsoqFeZIUUrPdEGLCfUvc758=; b=VUxIXmMMgAHCaR
	D84BwsG39571dMdQ0Bh+gpZs8S3legVFXpyZPmAG0i/W5JVMXJNS2Iw2WP8MAVXPcnug2iFRbCJ7Z
	ECU8JJPRyYbg/ry/33/C1y8YQ9EO9Szw3j1YX534Kz2r81cclIqTO2QqQNeBWCTUce9mCkyL7XU4t
	ynPNTLvJpl7rLMCosk+kuryy2l/90n7rvFs+Fs/nL6jtF5d1R1pI6dBd8L1eAEpSO41P7HEhq2rOq
	Hw8Rk7xsELAefbshPFEnC/tm93unzuTi35xhTZiRQ5amUP/f17LyW/xdMBE4Dh2a9XDPdaXZ0sjqp
	ai2Ts+QYPRULYEIR7meQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaYpC-00038O-R9; Mon, 18 May 2020 06:00:30 +0000
Received: from mail-vi1eur05on2059.outbound.protection.outlook.com
 ([40.107.21.59] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaYp2-0002RR-JG
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 06:00:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ALih7qk/of/HSqUNyzS+/T+JGBgK2F7P4HN8oaTym/Hg/wLFB21hrOjgHhxDcOaipDZfQMwROyyHC9/mb1rKC8KaLHgaDMH6H+YURboUriQk3FOC3XpMTz0OC1Q+siyNV1JXlNdd7uzvqhQr51mgJT0bBw4OBnQWBvZ0I9SUX7vAV7gwPe9qDW0JqlHfigs/QUO4y/FWu+rtAaNK8cttpRAd4+a2BTd5+MQsSOsR9E75V9dtKzAmBIheZFP33e5YhBxxFIAw6K1g9VpmphLDtpAbd5BJXxwzFBWoLqIsv3YNhFjqgnFvJX22CAeVpZpGpSC0NYeZ62sI3lkUHEEK+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w459gZb7u8EecEXO+l/6Jc+2YgIA8MpVGDoMaE1/fTU=;
 b=CJNwEq47SAcq49yLjOKSW9a460VHNEZ78CsIOmI7HpmmSkebGI9QgpOliYnwvj6vyJdTihJRs0oKGZwI6hy3K+9rLuf1n8LTHcLy93093gmgHGQAPp21BamH4pS1OewUxDi24tdJVMWrv4fegzw6exzwDg0pl8e1TRuCZZ13A2MQ8f6dhy0lr4tXBLyUMqURqllI0gzgW7gymdePqGvF2NdjwINS14Yn533oDbbz23/vgRkRYWFVbzL5XHgi52X3+mDHpDa698OVsydxKU+flB2IzJmI8Oy57+/sjSh7h2MEP4uQgK6JgRVrVor3IN1X4rLveUhMhp3xNk9QVxiDjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w459gZb7u8EecEXO+l/6Jc+2YgIA8MpVGDoMaE1/fTU=;
 b=Yla8Sx+FbjsKvzRvXq0q1bto3qvExWrHs8lBergISfEtYECUMueJPXpYudVT8xsJsHavj6qoVCkN4NG1TbRg3k4x1GCFztRMVwwMgVgi9yWpntj7X6byd8ST269rVMgg+Ve2L7+yt903BJxyD8UQEyIqstxG1DzJFTj/ppu4UnA=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6695.eurprd04.prod.outlook.com (2603:10a6:20b:d8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 06:00:17 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 06:00:17 +0000
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
Subject: RE: [PATCH 2/2] dt-bindings: pwm: Convert imx tpm pwm to json-schema
Thread-Topic: [PATCH 2/2] dt-bindings: pwm: Convert imx tpm pwm to json-schema
Thread-Index: AQHWKb4QQXKzdjGeTES9B6DZ1n/1y6itX0Xw
Date: Mon, 18 May 2020 06:00:17 +0000
Message-ID: <AM6PR04MB4966DD209B9A9C244427A75F80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
 <1589439259-28510-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589439259-28510-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d964508d-4c9d-46eb-791b-08d7faf0bda2
x-ms-traffictypediagnostic: AM6PR04MB6695:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB66953907F244C4096EF4BB4080B80@AM6PR04MB6695.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MKVH75+RF8J47QN6v+rU0aD8E8TdJdrxxfrK/aDJn1axLPzXjOGcYmMjeZ9iv4kSdB/DrCZXF63WI6UQTnbVnILgwxkP5dApMlPcw3mYs5RQ1vAJVVojebADLZnq51ByxrP6q1hYm8+Hc086RwlvQ24+MgnW0xNe/V7dCZM114MhTh+yPXzORCTJeRRrtactYzFCYlFIF2Vy359ykt9TYYcd5Kklmivv9u8kEJHgEFyo7Yk6ZeRva30/oj2VZb82d8gf2CVddYARXr8gs3CtNp6pQzktOjOp+qbx1y/W8vubAf9V9Qed1hKkB8xArlhHlX7c3wW5UgQrTiS/8oLF/4gsUKCKFIQyI6w8AMExx5vllwBKd8S7VAwZqx6SbaLvNHIIcmwrKPovbh6Q9Xfk3oYPIHupMpx0PJj76GZtnEFESB+I1ux+HNbLfW+FL2pRsXRIrznGkpWDnmIvvnOdPSOUgOsKG+yVIu+T2tfbfKsbsl8JveArgPVwsTDoml+T6FW9AQNAICrbuUr8goXUiLn8Q6uTpHktljWV5thhAksSjk5el5N24j4GY3VQk3w0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(366004)(39860400002)(136003)(55016002)(5660300002)(8936002)(4326008)(8676002)(45080400002)(478600001)(186003)(33656002)(9686003)(7416002)(2906002)(316002)(86362001)(110136005)(26005)(64756008)(7696005)(66476007)(66946007)(66556008)(76116006)(66446008)(71200400001)(83080400001)(44832011)(6506007)(52536014)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: njvIxFBirT4FV7s8yart0OHa5rx7F+1ldqVfA7ytsZOksqL5JT+aKh2KLGVz1JUkMxItVg8FMCAKQWiYHognc5f+IhS1AfWIBJyedqSshHhsg626R+O+M+TZtejSu4SPyYk7UXqo62G+nHaUoKvNa9zHe3a2070VqLeVWXzJT/XETuim4hOiPfyIZKlw2FcuxjKXXS5ixzqUHV8x65BMdqk+kY0KkTQCQKpV993X4rNdc4XCg6MTuDJ572uiz3uy1M1Z83wrKO8GT/9jkPjZXlEpQoFY5nZmQtIXodXAReRph91DqLqaTIme7wkWGWJDTsPlY6p+av1HVGDn984FzvgdXLfUfwNdrK5qK01a+zBVza1JQc6qRQYwiZt7W2tgxWibWufTafCW+BKashPjKAdR3iPvn6CNBTbH3/6vJ7v8O41P9TYOvS9PDMIVGMND394QQEBYN6lQTqq0+vTlSBDckQAGpOzaAe4wDpM3lOw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d964508d-4c9d-46eb-791b-08d7faf0bda2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 06:00:17.5631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Qe4TCs5uIXC5VqOSef+vyy/mQoGTsS/xQhDuUYOI8AxOdoC+pRzcyDTkwcWeJ0j4F0w15eUIFnIITDTbvDcgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_230020_649991_66884F64 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.59 listed in wl.mailspike.net]
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
> Convert the imx tpm pwm binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/pwm/imx-tpm-pwm.txt        | 22 ---------
>  .../devicetree/bindings/pwm/imx-tpm-pwm.yaml       | 55
> ++++++++++++++++++++++
>  2 files changed, 55 insertions(+), 22 deletions(-)  delete mode 100644
> Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
>  create mode 100644
> Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
> b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
> deleted file mode 100644
> index 5bf2095..0000000
> --- a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -Freescale i.MX TPM PWM controller
> -
> -Required properties:
> -- compatible : Should be "fsl,imx7ulp-pwm".
> -- reg: Physical base address and length of the controller's registers.
> -- #pwm-cells: Should be 3. See pwm.yaml in this directory for a description of
> the cells format.
> -- clocks : The clock provided by the SoC to drive the PWM.
> -- interrupts: The interrupt for the PWM controller.
> -
> -Note: The TPM counter and period counter are shared between multiple
> channels, so all channels -should use same period setting.
> -
> -Example:
> -
> -tpm4: pwm@40250000 {
> -	compatible = "fsl,imx7ulp-pwm";
> -	reg = <0x40250000 0x1000>;
> -	assigned-clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
> -	assigned-clock-parents = <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>;
> -	clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
> -	#pwm-cells = <3>;
> -};
> diff --git a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
> b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
> new file mode 100644
> index 0000000..fe9ef42
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> +---
> +$id:
> +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevice
> +tree.org%2Fschemas%2Fpwm%2Fimx-tpm-pwm.yaml%23&amp;data=02%7C
> 01%7Caishe
> +ng.dong%40nxp.com%7C8dba0c8c150b4885913008d7f7d5320d%7C686ea
> 1d3bc2b4c6f
> +a92cd99c5c301635%7C0%7C0%7C637250367345109522&amp;sdata=WT6
> kA9lpZMBYgS7
> +whY9rlVq5qDcGZYheOHoTR8nupOY%3D&amp;reserved=0
> +$schema:
> +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevice
> +tree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Caishen
> g.dong%
> +40nxp.com%7C8dba0c8c150b4885913008d7f7d5320d%7C686ea1d3bc2b4c
> 6fa92cd99c
> +5c301635%7C0%7C0%7C637250367345109522&amp;sdata=AlzT4bC3GZgV
> cDJn5svMqjt
> +5HN7Lj60Fc7m%2B3D0g0xQ%3D&amp;reserved=0
> +
> +title: Freescale i.MX TPM PWM controller
> +
> +maintainers:
> +  - Anson Huang <anson.huang@nxp.com>
> +
> +description: |
> +  The TPM counter and period counter are shared between multiple
> +  channels, so all channels should use same period setting.
> +
> +properties:
> +  "#pwm-cells":
> +    const: 3
> +

Same issue, missing the reference to pwm.yaml?


> +  compatible:
> +    enum:
> +      - fsl,imx7ulp-pwm
> +
> +  reg:
> +    maxItems: 1
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clock-parents:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - "#pwm-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx7ulp-clock.h>
> +
> +    pwm@40250000 {
> +        compatible = "fsl,imx7ulp-pwm";
> +        reg = <0x40250000 0x1000>;
> +        assigned-clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
> +        assigned-clock-parents = <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>;
> +        clocks = <&pcc2 IMX7ULP_CLK_LPTPM4>;
> +        #pwm-cells = <3>;
> +    };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
