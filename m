Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2D31D7050
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 07:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGzQpZYr3VButaEXOdB2tSgtYp1j6CwCNkJ8SR2J5eU=; b=PGGsM7GBkZPpfQ
	exMXldR20DDCUlaaUNgJMPP/3AqyndYZpHXGNe11K/J9z2sv7S+K2yVzWoaJIVWumlK7JKXkKrPS2
	XWnVRhOqVaZoO9KgiJeIjeM9zNOPounupoo8tmtcfYGVTetKE9w1S++b3/kqDJirlpHWltSHj8cSP
	VDuxVkpJrr38nI6Qz4lh0sGD+NIcAth/7G+uWNKKTvVAor3MAVIa//WN+Y/U5JUDzJaCIYGLQg5I+
	gFPt/Q5FzQW9Rq95hXhf1WcEGZ1hrLfdEELaR6SxYslPVOG73Atu7EEHqr/zYZ0d7IJx+cfFp34Eo
	CIQrlN5R5s2jBzbUg/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaYDo-00059v-Jc; Mon, 18 May 2020 05:21:52 +0000
Received: from mail-vi1eur05on2051.outbound.protection.outlook.com
 ([40.107.21.51] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaYDg-00059B-C1
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 05:21:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BRcU9Xt8GqkC9WLWoCbkX8WZ0T0zFQnyDENxEpHCGY/7S1/Kj4bIQCoZDXCsASGtGTgr9PVXtCcPA1iuFqKxy+Ocz3nMVLvQ6TWeilEPm7eRR/zTBqkIoOMW7+4xX2IO6RMUprr6JjsJV2sCU/dA6fz98vUnKcMHQ4lqcD+INorTbTcvK8WxG/OUeKC1+XStMiGp2BFD6wt5/XMYbFvy9nLL+R1san/aPfVXI3uBfcnNXfZCfYWyMfR0yxY0SvtoZHA+0/AOM1P1egLu+JHYPRgKjYZ5DGTUybiieFjy69HagSg7UnLBFymYpN8gONdHS7gzKOyDATW8hAXTIV9n9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Oc6qIUXHz5IOosWzRmHZ6tUmHdy6uSb0rhM345nEyVI=;
 b=oK+GCbMuJesfuJdEq2LH/RsyFslZcWBtDUbETTEHtd63xIzs0wbyU2eYRMapK2w12leIl92SCsY2Ic28NUAgW9mVtxrJWEtASwRw2fp0Dqvq2c+2nCRehcMbPG+erkEh9BLI9DK4jq9FhOgRYgQqLX+miCYuDClLT3eF+9JM0/QrR9LJKyu9ywoO5p7dsTH4y+yc3Lch6mzXEi9MZmL5Pe9Hv7eA2/aqH7g3CUfmRLgY7NUhJRK4ZPN+18FUNteBzjDhc9FvCD0+BRRCr/Xjlxb2+Op82jVWc18Vo4hI+xTtLDY/2ZYCzrW3H4mEEnBiv6MWwO4xfS1V3In+l3ZUbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Oc6qIUXHz5IOosWzRmHZ6tUmHdy6uSb0rhM345nEyVI=;
 b=R9WyFrIS31IffWf7D2iChOB03xOwb2HdK3Tde0GQP4QHSSlqUbEvVFJGnj/F/DwPMwpG3m6lwmZ5ktMxVAS+IyT2E9ZLUxTHCQ2eQXOOjCUQ8tamXlVc3OYacsnBZUnULCaNZYC6R7gbXaKua0VddBg38mH5VG7qNUsmVFerAHw=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5687.eurprd04.prod.outlook.com (2603:10a6:20b:a2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 05:21:39 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 05:21:39 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-pwm@vger.kernel.org"
 <linux-pwm@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
Thread-Topic: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
Thread-Index: AQHWKeXny41UDiiW/0yEHY+vY7fj6qitPUug
Date: Mon, 18 May 2020 05:21:38 +0000
Message-ID: <AM6PR04MB4966B92CFFA23DD77748C77680B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589456470-2658-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589456470-2658-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e29da2b0-9a82-4d0c-3c5f-08d7faeb57b4
x-ms-traffictypediagnostic: AM6PR04MB5687:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5687A428288EA2E84E3EAD4880B80@AM6PR04MB5687.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hcHSH6zlbJBkCbeXQXL8I4GkuwMuPxw1OsB16bniWkhrJzcd+kKtdJomQXmquMsHotO+k00Z8VF8m+BVpmpMqcND6RH6AywDXOk1sIaoQe5pdNGmDKJlT0ZmFciFcb6OdAwAOKhW73mTBMLQhPvVt1L8jvMrF9+/W7dq8y5mbVlq7KFezEXPxDFG+FtqU8WBL1D9IkUAQVdQybJr+88aZERyNKO+4eua6sRWJ7rRXCxCY4oArH3U8t2hFlRUZRAultNmLrwSH4AH1ZgzbrbQxNkba1EsauQEyNTfHX6MAS3C8E+iOdrzljLDIHYVUZn2PgZuEi1DxVtWBn7TWhe+N7tkvfEpYmwn25fIVXeY2rCLRMJac5WCM1/rr2YmHxqIWY0bDUHJ6NKZ4KLXB2k8S8WwCyPpvuZcwdqWrPpijaZ+Ik9+Zhu8+PZv8AHnMC+xHamfqYs1LgMjArEMbiv0TW5s7H1SOvDt5N8BCBt7xVI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(39860400002)(396003)(366004)(8936002)(44832011)(71200400001)(8676002)(7416002)(7696005)(4744005)(186003)(26005)(5660300002)(33656002)(6506007)(86362001)(110136005)(55016002)(316002)(9686003)(66446008)(64756008)(478600001)(76116006)(66946007)(66476007)(66556008)(4326008)(52536014)(2906002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: o4yrkKHSYK6pSpfr9uIV+UuFx9kkMyZ/l+aUjtG3oZXj+y9/fdhZ7dJL4ei7g30oi23mb5u6v/oqK8gze4KobC1PyZfZTzv1aEwLtC9RpyROL9vu2yn7qmKH6UuaQ+l9a9ZaJbCpPP87isfO8qGnKapzGt1p+Sv5eW2dYfeAktGWQCfGb0vLTjSCE96qdrFEgiCFB4zW9lPNvhTF4BV8TlKpHVBvrHXP3lRITFEgaBlUG+U20gcAQOZFHZwMyQOIoeiVAIAsZMGJPZB6m/1rLDA9WEw37Yy2ZWbo4+sf5Dr6Ef2N3GcWZylyaCEYGOnosNRuRaDmykE+e1hQbTadQbDUddhvrtnsKCrkRx96bUugHDrkfCgeTZBpDwNB7gsKLNIhwZJ+l6Y6YLDKnP73bDFVUtgx4qc/taPgycPUwCpY0BIGE+tOzIuHkEu+UhKTck2l6jNY1kLO8Tu+KGAI0OGQfeD/CQ/7QT5N93ANAys=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e29da2b0-9a82-4d0c-3c5f-08d7faeb57b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 05:21:38.7595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FRJm/gm3TQMINLWoUx9CsH/SnLfBhZSIbFKXcPI0s/qQtc9yBYMTqLQ/l0pZrew08p153rLe+yCrg22xcMgOdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5687
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_222144_411841_FCAE2A70 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.51 listed in wl.mailspike.net]
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

> +title: Freescale MXS PWM controller
> +
> +maintainers:
> +  - Shawn Guo <shawn.guo@linaro.org>
> +  - Anson Huang <anson.huang@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx23-pwm
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#pwm-cells":
> +    const: 3

Seems you missed the reference to pwm.yaml.

Regards
Aisheng

> +
> +  fsl,pwm-number:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    description: u32 value representing the number of PWM devices
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#pwm-cells"
> +  - fsl,pwm-number
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pwm@80064000 {
> +        compatible = "fsl,imx23-pwm";
> +        reg = <0x80064000 0x2000>;
> +        #pwm-cells = <3>;
> +        fsl,pwm-number = <8>;
> +    };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
