Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCDA1CD77A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ME3SrJ8idRegHlYMYf/9s0mLZD6/pln+BWBJsAv4Ic=; b=giU0+boAUunCfg
	0sacJkrRB1d8PQeZdmfHAOuVh2WoVo9tgSzaPG81DLM976wrVY1kwK0sNOF5vZ+VUIS6lLTwODAXN
	2jsVOFINVVr6eAGi/6Px1Zcqq8rWuc27UcsaX016Yf3vxs+eH+ov7VeMLSR7X2nW/m4u3MstyvI+g
	FIk5Sl7nqtsVWaBKBCgZB9P3jL0oZDnwJAZZYBYGbgcorwSVSvmBPvlbO6Cs8LH/6XaLsBL0Iwu0U
	qiqK185j1tk/d0v1okuO1FxG3gCdBXp9lD34Hzx08BvGYma77g9j9di3hYPtbUMFiZgOf4uLa0Ol4
	aOfjqqJf4WniLQnVgycQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6QG-0003uO-0v; Mon, 11 May 2020 11:16:36 +0000
Received: from mail-eopbgr30062.outbound.protection.outlook.com ([40.107.3.62]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Q8-0003tX-Ce
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:16:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l9NZ5UaD+p+aVKsDd0of3Wpquf8N7Ma5LCwQ6qgcy6RJd4iHX0/q6+5ugS4S56Iia7yD4jCRyANEPyTzdryxOtLUmlXL9ZtizbQqdJuoYxgsHGxAqB4ZoV95RcNbJYvRCKIPUXeN3hH1wxF/XT2jCCkco48bvt/FTkfjUjDE158Gc16IY1v+cxJC3Xfvwr6nUqPMGTqFMuEeQ9pm76ACEPMh2Rt133yEg8LvuJiuI590nR25ODJPhJzTFkxCiUUvukA+xtnPiFjmy9bilLPpV2MmCm6Lug4QBS85NoMNZqx3zMBkgHI+2/kd4voIIhptFKoaVttw7UBedME6bhfoxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qenBc9Pexn/0UqftHkM+2gP6cZ7+lEhBohMfn9bK1Uw=;
 b=lMidS5ZVHSTF5yDiTrCni0p/FhONnRedjug+wpiV582kHxs7OueLdSKqDSf8/Ca1THHnbFxic/IUFvcSNNxqRkqfOezJR4TZ0wCZyC2Tuo7/P68jokb0jP+Nl1diCtvQMB4ldcXmt6mvdDTJGUwB0BC1L5nei8qlq/8AKUyEwmSyq3hgn3YnOiR/VvJWZiswpAIAsxnyHx0gvyRnhSjrzMOnm4NU4pop8lIvz5rJK2MNUgorLikRuFSK41GMm83tAvWUFdrnnTqv94UTaAaX4NeQ+oLHcNPG/wh2cuKM47pIK+0c8h9wtvWIjPp9omlJJx9GSp84YL/Up4NoluX88Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qenBc9Pexn/0UqftHkM+2gP6cZ7+lEhBohMfn9bK1Uw=;
 b=e3vzpO9LV0B92Ii1z/UuoUqthXrl98c0rMYQcOvqSNZ7s2Ub5fhR179qVs5qcGgaeTqdbQU/z8NBONBCcqbSlyO7H2ZPaYAkh3JVSJs0vcIHDXgmQqO2jk9o1m6MFFXBv1PCFwW4vt4RDvhEbSWnCUzL6k0nx+AgbssdD8TV7fs=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4150.eurprd04.prod.outlook.com (2603:10a6:209:43::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Mon, 11 May
 2020 11:16:24 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 11:16:24 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "p.zabel@pengutronix.de"
 <p.zabel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] dt-bindings: reset: Convert i.MX7 reset to json-schema
Thread-Topic: [PATCH] dt-bindings: reset: Convert i.MX7 reset to json-schema
Thread-Index: AQHWJdsuI+RtHYyd5EydI3B2US1zJqiivf5g
Date: Mon, 11 May 2020 11:16:24 +0000
Message-ID: <AM6PR04MB4966E5E547A29199B84936A180A10@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589012077-12088-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589012077-12088-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f0e341fb-e3b6-4077-6baf-08d7f59cbe0e
x-ms-traffictypediagnostic: AM6PR04MB4150:|AM6PR04MB4150:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB41508C4B20CDD982029632AF80A10@AM6PR04MB4150.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qgFKjBeVLR8RXnbzE6hBBeA9Ap05a4mRxXOiketvjcooKe7ctWhiAY7pQjzySdXrhRvjhq9ZpxOJYL8bTHda6NEWdrdFfuDQwnc8gAP/JfFeRI7w04K/wGk9V9HFLq4Gur3R8TAPU9umguq3mdN7YsleTAgiatEerrrk94KTB8uskUT7zlknXN4Wv+QoptKt/R8GdSmu5woLXHKGfcm527/kcxnX57SAdu900C0NWVKa9i5OZBu9pC7uvejNYIVdMLjwHZXWdGM/ph8rlo6CHmy2Yi/1wYiTGh0sEvJwHA2myUBh/lSfMfymqJLG6agApuHLLJiBfSmIuECsGTwZmIkC052xNc9Fy1v/kDZ+pCQ7dVZ6j+INbieE3r62EMfzw6gif6dkcQXDFpoE6g4sLCflJkVNtvvoibAC8VdhL8n9Rb15VzW7+YE8o3tumDzaa5yZG1wR+4pmcVcFbbsvVkZkhMA4nXxUkPPsLbf86Dt5VUO0YLuyuIJHXBju3GBi2a586LikKom8eUcQdkR13+cqyq75ZtTpxrpduO+EZ40=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(366004)(376002)(39860400002)(136003)(33430700001)(55016002)(4326008)(5660300002)(52536014)(8936002)(478600001)(76116006)(66476007)(66946007)(33440700001)(64756008)(66556008)(66446008)(33656002)(71200400001)(110136005)(9686003)(86362001)(6506007)(316002)(44832011)(2906002)(8676002)(26005)(7696005)(186003)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: r6J9uiNRwfJH9UMHMtCtPDt76iOVxq5NF2MV/mbQ6k/nsoWYWTtvNn/D4OjJzY0dkeEttXfiT0v2vNARsWXbStEJi/DklVhkX+Cb4V/hX9o8NvUw3C6oKf2n6t0b36tdRiMS/+ai3IO3kXxB6bIAy5cj8ovPyexs8Xj01teV2h+7KxH1k8HK705dn1ueZqyHDuc4G59/XgFHhQy3ELFM6JjzzbmiNhwIA+24LBK/+eYIbwCdHXi+zwLtM5FKrkO2pOwDtwobUJGOnTxLThjp0unvKAxUVj5Ke/pR//a87+EG90k9Bl1GJSkanthR+U0eMf79sTSPh/79mjEAlsDA/ljwqSiwoXxbiMme248Qzjq/x5kvYo8JdACW1OteQABIA2ZxSK9+Qju8ZK6EJ+glgdgTXrCOSIklTcQZNK9e+KsrAGYkNnCbXe5OnW48olVPe6W2gHo/7CrSQmKZW45FsG4JYTw122go71nzN75uz9c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0e341fb-e3b6-4077-6baf-08d7f59cbe0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 11:16:24.7844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wAuQ2TFp5+vzmDyHbK5ITZ6zLSoq4zUXS1IMSysSAvx8z2b4jO/+OZnD4yeDdSXAcN1RYTCzOZ8lXi5EcTuu7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_041628_428267_629B3C50 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.62 listed in wl.mailspike.net]
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

[...]

> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description: |
> +  The system reset controller can be used to reset various set of
> +  peripherals. Device nodes that need access to reset lines should
> +  specify them as a reset phandle in their corresponding node as
> +  specified in reset.txt.
> +
> +  For list of all valid reset indices see
> +    <dt-bindings/reset/imx7-reset.h> for i.MX7,
> +    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
> +    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MM and
> +    <dt-bindings/reset/imx8mq-reset.h> for i.MX8MN and

How about combine above three items?

> +    <dt-bindings/reset/imx8mp-reset.h> for i.MX8MP
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +        - fsl,imx7d-src
> +        - fsl,imx8mq-src
> +        - fsl,imx8mm-src
> +        - fsl,imx8mn-src
> +        - fsl,imx8mp-src
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#reset-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - '#reset-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    reset-controller@30390000 {
> +        compatible = "fsl,imx7d-src", "syscon";
> +        reg = <0x30390000 0x2000>;
> +        interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> +        #reset-cells = <1>;
> +    };
> +
> +...

Is this required?

Regards
Aisheng

> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
