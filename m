Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 340271CD86F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bo6060BW2HQz8zHi3pX0R+v98i5Kb+XFsMpV7gjoTz8=; b=r9xgfR/bJtAFso
	54KAPN1EpyrcL+Y17ePwVec9xxve2kZktRDPqX00VHPyWjw4tbMPwn5QTEcl8kCc6jbhZkA7mhcMi
	cr5IBCyuDVkT2EbMAe2CZjb7uRl8asU6NQASc7784BkJh75somUEQBwt5p09dtY8cmVE1PUoUf9jR
	U/GvZc3/pQDOaVjcs2eIG4LysCnNUlUcpgp5/0UFToph7Kgzq/TDkeILioerZD0rw1Ldm6BN6UBys
	slB074jIzVsfmhKMqrtIhVzJWSAJbVywtpXdiVPtQ3rI1zKfVA4SjgiEnTv5tfTZRBfOLyRaInzd9
	ZFOL22Z/4HsFCVeCgqWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6dW-00019v-Ao; Mon, 11 May 2020 11:30:18 +0000
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6dA-000198-6g
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:29:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrB7az6Se4vnY1hDos44bcWB4DUlXJhzFzavv5rRkrLW6NSJ6ByvW3UybqyhXpWq+cMP58F0muKWFZNmD1k7ZRVoRPwPXL45PH2/dLA0V7DYUnt4KREhjhqWAuD2j2JqWwqrphkCqVgLBFXsUnhT+l60DUX/z0TDin5t3mKBYGjPyR7NN1KZC1Wblj5B1dgxKNmUr+KyFl4geRF++M9OTxCM3DcjzDeMS5RdfNAQObgq07CT2FowG/l3UVo3zcR8djqBPoNLmIMULZwfu17ksD0EYeolShqXoS77wDhMhun9oepRcUkf6m61i4s4FjgT4tAR4/prg+ww9H+hjbopYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObWcEOpEpFfJVPvHgm43Z5lZ0yWMZH7Kj09ih2sUlqQ=;
 b=IDBG96fDVjQZ1NGxR1M8jeiaCR3Ujq0EmXr/QAy0pp+Edby54+DncpPnHqM0MlTMJd+1E8goS4MNxhaC49GdcIFF9iEcdx0pGb4hFMVPGyJ3W6CleKkY5XA8cMbBJ7PnToqSGlYTj08TrHzi/DRJm2/p4Ff+F9VhYJ9IhnPJ5ri1ULj6UHksVP4Tg0sE7BJ/68MGG2d29mxX12hcrJhJlbPC8MLK5LsDVhOaBCP5oHTGbzUoUt2J2Fghl2uzUgp9B82Xv6OxnHg89/wzVqtZYHPZamVZGelzJTwATvSriEFEPgKSXu4cw29jB6nIvclffF5tqq6LZLEb/Luz3fZpJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ObWcEOpEpFfJVPvHgm43Z5lZ0yWMZH7Kj09ih2sUlqQ=;
 b=Xn1SEQKb1oeEJdB7xERLdkIW1EySQMDwhZpiIxp2fMOJpmXeXmoqPJbj47IyKXM00+f5jyptaFu83jzJN8OrMcSftGGpnRqDSqTeqTHqKkIGfoXme9P0nvLPxlIL8U//e+W4Ovpov/2pimrD3NzSfNDxPogPsH6krIwuz/cx+Ps=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 (2603:10a6:209:1c::10) by AM6PR0402MB3320.eurprd04.prod.outlook.com
 (2603:10a6:209:5::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Mon, 11 May
 2020 11:29:52 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::a5f9:57c:97d3:491f]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::a5f9:57c:97d3:491f%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 11:29:52 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "p.zabel@pengutronix.de"
 <p.zabel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] dt-bindings: reset: Convert i.MX7 reset to json-schema
Thread-Topic: [PATCH] dt-bindings: reset: Convert i.MX7 reset to json-schema
Thread-Index: AQHWJds0OPSvvSW4KEe8q/kgqrzEB6iiv38AgAADi5A=
Date: Mon, 11 May 2020 11:29:51 +0000
Message-ID: <AM6PR0402MB3911ED577118BB1A0B12E3FFF5A10@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1589012077-12088-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966E5E547A29199B84936A180A10@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966E5E547A29199B84936A180A10@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: be39db33-fe36-404c-4006-08d7f59e9f43
x-ms-traffictypediagnostic: AM6PR0402MB3320:|AM6PR0402MB3320:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB332048A2B623866A8D4C164CF5A10@AM6PR0402MB3320.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xYB+wtYYdCwsSvxypFWVqeNLvXQSYwpzevM27Gg5UN03woSc6OcvR3ZctX4sR5lnsw4BfFUx+hgT129ULu2qvA0K8dvOEQLVIPsh8JWWNH+aB4nzO6lPnW+Q3pJLqsxxIB/UAU43i9ghBHmfvnGhZp1XLGhZUtxGsJ9QMuAqpHxuFvV225YWZ44oh0BwEEm9f34BMr8ic4mF9h0dgfvioxdgdYlruL7cZLGeo9oDJLZ2SoRPm56pgLJ/eMbMpMQ8EFac0Z6mvR2Ay431Bxrwqexw0I12je8x82dTnNJrmuSlXvQdw/i7gLgI2Hc68gIALBhCiesDz8Ty5jlaigGMWrRgEgn33M8fvGfcndq8JvuntnlxlQ6HAizFfTH9NndbrrZl90v7OJzC4wnzDiDvO6Wai8JDxVUhnwbO/UjxYzra6TViNVuIpEyifw7qSZGpnzB7/CBtpUjManL7DxjafWyZDWGJv+6EOUodo4PMvHIE6tpUPF1+LIOnljPpYIyZDwz+258qA+8TI9eZWOl4viXfJXUUu6MmMn1TQOYkNxQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3911.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(33430700001)(478600001)(86362001)(44832011)(33440700001)(186003)(26005)(110136005)(6506007)(2906002)(316002)(66476007)(66556008)(64756008)(66446008)(8676002)(52536014)(5660300002)(66946007)(33656002)(8936002)(76116006)(4326008)(7696005)(9686003)(55016002)(71200400001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: E03Wi1iyO2PB4lkv+3nKoaQSN7q8BMSVoOe89Lr3TFkQ3L0rvmojv/PpdpKPVYU79CBGIv4pU6zlfzeIVTfrpxnWNjlmNYx1zH+iEBLxG8nmqpgbSPRH+4qKzlbZkuMX+pQ5Lul0lc9NVp0DHtoVKCTQH1Ez5sM+Kv7BHl23kH+dbgxCKqSAobg7Rid4tufrAtiTjd0VQi96++3YUZi4KgNO98mymKcFH4DC7vPXDYdAwpkxowcscrIB+SfKnvulXmicer0y8JEOua9Zv/XTXV3gWJCj+QMoU5R0n2W0/iWXwcv6yIUjoKQd7SwKW7RKQyi6wYoAUSaAjMpZ0ctntRod6eKpQjPVkcKW7I1mDU2Zk0G/3lcb/0wzZdu/O3oBABXRDtiL4tb2HKu379EEtaqSYmVParyvC6yr4IbLPlzcFCpcC/ti+5lwspkCviE9EeKzIFgjZjYF5K+CCqQdJRTGNymQ0GyJf9ciEQQCYLs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be39db33-fe36-404c-4006-08d7f59e9f43
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 11:29:52.1027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pd5HphrPJQcB420keX35oDsRZix6VaVA2SVS5nFeMrNMcawxK4Av6myvJpvv62NnRtn/3wW9Qpq2CzKwG/PT+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3320
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042956_247235_8452CDD1 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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



> Subject: RE: [PATCH] dt-bindings: reset: Convert i.MX7 reset to json-schema
> 
> [...]
> 
> > +
> > +maintainers:
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +description: |
> > +  The system reset controller can be used to reset various set of
> > +  peripherals. Device nodes that need access to reset lines should
> > +  specify them as a reset phandle in their corresponding node as
> > +  specified in reset.txt.
> > +
> > +  For list of all valid reset indices see
> > +    <dt-bindings/reset/imx7-reset.h> for i.MX7,
> > +    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
> > +    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MM and
> > +    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MN and
> 
> How about combine above three items?

Will do.

> 
> > +    <dt-bindings/reset/imx8mp-reset.h> for i.MX8MP
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +        - fsl,imx7d-src
> > +        - fsl,imx8mq-src
> > +        - fsl,imx8mm-src
> > +        - fsl,imx8mn-src
> > +        - fsl,imx8mp-src
> > +      - const: syscon
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#reset-cells':
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - '#reset-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    reset-controller@30390000 {
> > +        compatible = "fsl,imx7d-src", "syscon";
> > +        reg = <0x30390000 0x2000>;
> > +        interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > +        #reset-cells = <1>;
> > +    };
> > +
> > +...
> 
> Is this required?

It can be removed, will remove it in next version.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
