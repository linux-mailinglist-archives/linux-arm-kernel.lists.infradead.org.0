Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161B81D8DB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRvuoSz58ufLLljnso2Nku4HluMiMt/v+TT4rqrob0Y=; b=RDoM8kEZNfAr10
	sjLnOw5/UpCQIEwXBQ7OBwFfDDnZx3PJGhZnZxSVpyAUIB1CT2jCjJrJRM3odP+Wu8rao7/qVJgNL
	eZIchQiz22/d20Hi76bTExobhCUgZWL4uVg2kf524GfY44MFLk+7WGJun+SkQSqg2sD4BxeOqhjjY
	XF2N46EoH0uaD1vkooJM0n9wROTpHXDRfMEdA7lgmB9XXphZUDAUq2Rn1T67DJuhHI9PXhHoeHovh
	L7aqUhPLV6bJIxCmVz9CadK7IxcL42EljC0ciR1tOoYv7RY1RnXHSWXzJYmmUaKGTzPEeuVov18Tj
	kNSqrLC0PzvSMIoIbHbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasH4-0001mt-VW; Tue, 19 May 2020 02:46:35 +0000
Received: from mail-eopbgr30062.outbound.protection.outlook.com ([40.107.3.62]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasGv-0001lt-Ry
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 02:46:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZsWsC1ggtDhLlLuuUaU9S3DWRCDL3VKZ3AemLwL6EhkB6tuQAbU3uog2GjTdpFhNQ/Bp4qZFBOnjdUtstAmZ9jNLKrNqzMVE/aiGauVQ8ZVaPT1lNkO+ZU/2z5XG3r1d+cNdr6+Ji8qiMrsr8iA8Lt5fHtPn7AXF/C/NcPPHtjivTOlzL+T1UiKaCJGrj/iqC64RqfsCzuG6UevkbWsGExnpuoo+wHmCddv8aoezfWqw3xi+nC33apTjo840n+GUFWw2YCmjc3qgiQwRXwyjB9vuxbgV5RIFSTqmZc8ChWEZMyUNVoTFUEPJicMhKxv5gaUcidlXLFgGyBdWCUb+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cUJPPye1T7oHq0tzhGOmONo49TzbTxO/dYPleWC4r9g=;
 b=RFg9yXTAMUZm5vgCvZRjFL1uJRSoqlz6ukKmS93o9soShbziRzD6Y7eucKCSVm4Z5/q/WtxLkqQiqCXmpQLS/dudghOm7/cpOgPdJgWx5VIz3rziMKnJYUiQ2/UE8WjDOXBJv0VL7PFpCRi/tcRU/JfHHY1IfnYvSNHu5fmEYyCLT3xqmtgG01A77Wi1oBcRAi0CnZ2v6ukCMJd1qvNhEJ/ym5Zmx6RpgW06O+E76rrN9acrdXTt5u4QaOcx5c6fxhRKbVi3jgO1wT0R0sd/Fp8FD5TxjAWy2YlknsiNrKNVu+sZlA+EV1zU8KV2L9GCBq69o0sFdjGzS7AppcFVQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cUJPPye1T7oHq0tzhGOmONo49TzbTxO/dYPleWC4r9g=;
 b=NRz23eUw6sdEolwYRhYmQlzVhyOBUbmFJXkZvjST2WdeObxnJMGKjmb6hkAD6YV2f8+BPms4vMsC23M/IDk1g/jHbSGECjM3x384xuPIbZyXnpKeDMIWEPLsMCLd0WgXCpHyQ5Nz5VpzgcMjlBFWhYE8X41E2NmxY1Ggs7AA8Co=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5863.eurprd04.prod.outlook.com (2603:10a6:20b:a5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Tue, 19 May
 2020 02:46:21 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 02:46:21 +0000
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
Subject: RE: [PATCH 1/3] dt-bindings: timer: Convert i.MX GPT to json-schema
Thread-Topic: [PATCH 1/3] dt-bindings: timer: Convert i.MX GPT to json-schema
Thread-Index: AQHWLSSmpbYMtM446EG0c6gnhRlcxaius5QA
Date: Tue, 19 May 2020 02:46:21 +0000
Message-ID: <AM6PR04MB49669345E21DC28009C486E680B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589813260-20036-1-git-send-email-Anson.Huang@nxp.com>
 <1589813260-20036-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589813260-20036-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 88366295-949c-4719-0309-08d7fb9ed06c
x-ms-traffictypediagnostic: AM6PR04MB5863:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5863781C0DE5F8DE7825E89880B90@AM6PR04MB5863.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9S8Dl2avePaJRf1rT7dqrAQbeVokHg86EJzNMi3rvOCpF91CjbaLQ4jC3zPUIHAbkd7kxVUg20wA7Eeu+bYUbmuIENIAWFmBTPDSCJFV96aewDVSfAnKOl+0iXtZT4+6QlXWGIEGHND0hyIJm7qbs9TyFPHw1Yg3O+6QZbuNv0RMczKCmZhLtW2cDbiWcSo6P1W0V8zm5kH4pEgv9zvKV2LbRlAMZMo56BJAQ4sKGsz4DSMj57EgdC838pjZ5zx5OLc6p/RQcfv9UwLyBab0uwvJ/gkvq9HXWRFrGh4uu6jRXWtvmsXyOcchq/j4FJAESQ0UQrMCxAz3nnzTTpFbOQu/DKy9E/PoJ76Bn+9uH2uVN9TEGO6LemIqrOhEgEzTyzmhilmY8F8eikmxbzwv2ggxMnwFOmjymi83eq2hidPpcsR3vk1aeVHNmf7hXDJmhu6+PmeKA7ueoYbXBvBeV8m9TxOgThrN2UvqqpoHFGI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(346002)(366004)(136003)(39860400002)(26005)(86362001)(8676002)(186003)(7416002)(2906002)(44832011)(5660300002)(33656002)(316002)(478600001)(8936002)(6506007)(7696005)(71200400001)(4326008)(110136005)(9686003)(52536014)(66446008)(64756008)(76116006)(66946007)(66476007)(55016002)(66556008)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: TX9us50lLYwwnxYyhGVEhXWsGUSe7Brte1E9FyAdLMydnOSWgkUdW/v3cIU0qxw6mIovPnR0hRQxr0qE5Wyuc6cDWtla8Ed7vaHR0DMgkVUklEhjRiDFXOIRUZ0IJQKr94uvkmYdfeeuMblBdI1igXvfGMD7dHbyw9EI+5VN5MRfcDn4/dlBGU8wHOVG+l5S6rIcLH63qnUeSVygMFLZZ4XgQBbGeAo1cBmwq90N3fdDzw1yLh6Q0NXt+mg8J7uhmm3SY41HFeJbA9MXkMkMYXEXTwHIfWVJu5o3eWqLvHwldtzPnO0kNDvQNCaNFSelM0kzunZfk9Thx4u29upYgKiH7L8zOdJH9AQXXeIkh8LoF/TKljI9BP8aXnH0ZjofxacQotdDFqS4B9N1oBXMDOYnaKaGwbWacfJohY8IHWZ5R326hv77S6TDAzotu3ceOrUwATr+UmlTUTpcP4fLdH/B0bACMh9VdxSVXGd6XMBhiRhKzMngU/ghCE0jVtVs
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88366295-949c-4719-0309-08d7fb9ed06c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 02:46:21.1231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VGPaTQcohMlkDbJ4IPNLgdwFRGBlwr9mkBJyo2gVSCNnFQ1BYZErhL4HDP/krSVDprS2Q+rTFfQIWId5MzKd7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5863
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_194625_906940_C0EE0197 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.62 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.62 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
> Convert the i.MX GPT binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/timer/fsl,imxgpt.txt       |  45 ---------
>  .../devicetree/bindings/timer/fsl,imxgpt.yaml      | 109
> +++++++++++++++++++++
>  2 files changed, 109 insertions(+), 45 deletions(-)  delete mode 100644
> Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
>  create mode 100644
> Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> deleted file mode 100644
> index 5d8fd5b..0000000
> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
> +++ /dev/null
> @@ -1,45 +0,0 @@
> -Freescale i.MX General Purpose Timer (GPT)
> -
> -Required properties:
> -
> -- compatible : should be one of following:
> -  for i.MX1:
> -  - "fsl,imx1-gpt";
> -  for i.MX21:
> -  - "fsl,imx21-gpt";
> -  for i.MX27:
> -  - "fsl,imx27-gpt", "fsl,imx21-gpt";
> -  for i.MX31:
> -  - "fsl,imx31-gpt";
> -  for i.MX25:
> -  - "fsl,imx25-gpt", "fsl,imx31-gpt";
> -  for i.MX50:
> -  - "fsl,imx50-gpt", "fsl,imx31-gpt";
> -  for i.MX51:
> -  - "fsl,imx51-gpt", "fsl,imx31-gpt";
> -  for i.MX53:
> -  - "fsl,imx53-gpt", "fsl,imx31-gpt";
> -  for i.MX6Q:
> -  - "fsl,imx6q-gpt", "fsl,imx31-gpt";
> -  for i.MX6DL:
> -  - "fsl,imx6dl-gpt";
> -  for i.MX6SL:
> -  - "fsl,imx6sl-gpt", "fsl,imx6dl-gpt";
> -  for i.MX6SX:
> -  - "fsl,imx6sx-gpt", "fsl,imx6dl-gpt";
> -- reg : specifies base physical address and size of the registers.
> -- interrupts : should be the gpt interrupt.
> -- clocks : the clocks provided by the SoC to drive the timer, must contain
> -           an entry for each entry in clock-names.
> -- clock-names : must include "ipg" entry first, then "per" entry.
> -
> -Example:
> -
> -gpt1: timer@10003000 {
> -	compatible = "fsl,imx27-gpt", "fsl,imx21-gpt";
> -	reg = <0x10003000 0x1000>;
> -	interrupts = <26>;
> -	clocks = <&clks IMX27_CLK_GPT1_IPG_GATE>,
> -		 <&clks IMX27_CLK_PER1_GATE>;
> -	clock-names = "ipg", "per";
> -};
> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> new file mode 100644
> index 0000000..5c7186b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> @@ -0,0 +1,109 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> +---
> +
> +title: Freescale i.MX General Purpose Timer (GPT)
> +
> +maintainers:
> +  - Sascha Hauer <s.hauer@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - description: on i.MX1 the following compatible must be specified

Such a description seems not necessary in order to make the doc more clean

> +        items:
> +          - const: "fsl,imx1-gpt"
> +
> +      - description: on i.MX21 the following compatible must be specified
> +        items:
> +          - const: "fsl,imx21-gpt"
> +
> +      - description: on i.MX27 the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx27-gpt"
> +          - const: "fsl,imx21-gpt"
> +
> +      - description: on i.MX31 the following compatible must be specified
> +        items:
> +          - const: "fsl,imx31-gpt"
> +
> +      - description: on i.MX25 the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx25-gpt"
> +          - const: "fsl,imx31-gpt"
> +
> +      - description: on i.MX50 the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx50-gpt"
> +          - const: "fsl,imx31-gpt"
> +
> +      - description: on i.MX51 the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx51-gpt"
> +          - const: "fsl,imx31-gpt"
> +
> +      - description: on i.MX53 the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx53-gpt"
> +          - const: "fsl,imx31-gpt"
> +
> +      - description: on i.MX6Q the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx6q-gpt"
> +          - const: "fsl,imx31-gpt"
> +
> +      - description: on i.MX6DL the following compatible must be specified
> +        items:
> +          - const: "fsl,imx6dl-gpt"
> +
> +      - description: on i.MX6SL the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx6sl-gpt"
> +          - const: "fsl,imx6dl-gpt"
> +
> +      - description: on i.MX6SX the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx6sx-gpt"
> +          - const: "fsl,imx6dl-gpt"
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: SoC GPT ipg clock
> +      - description: SoC GPT per clock
> +    maxItems: 2

maxItems is not needed

> +
> +  clock-names:
> +    items:
> +      - const: ipg
> +      - const: per
> +    maxItems: 2

Ditto 

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
> +    #include <dt-bindings/clock/imx27-clock.h>
> +
> +    timer@10003000 {
> +        compatible = "fsl,imx27-gpt", "fsl,imx21-gpt";
> +        reg = <0x10003000 0x1000>;
> +        interrupts = <26>;
> +        clocks = <&clks IMX27_CLK_GPT1_IPG_GATE>,
> +                 <&clks IMX27_CLK_PER1_GATE>;
> +        clock-names = "ipg", "per";
> +    };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
