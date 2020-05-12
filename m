Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163391CEAE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liNqw+FwDIx0SCI61m1x2Ao001LkALleP4IKqpM8mUg=; b=ogf1nQxWtuJKcg
	4HUDf92IDuPOc2vriK3fwfRmD+iU3G3gCfuJvua3/EUt2ZKg5xyednlu904eEroSwxB3F8CAMlHT+
	IQFFLmX6jXOwAKtCHHrRRZckmUQcH/KNfluD8Oas9cR4aHXemP6hJ+KnUrCumdjLo/AkEYlvUYOvb
	wlgJ0vbffo3xI0x7cwBLsGuh2+ERptUAXQBb2B7qeuZ7JkfbULsj26Yxkq+wFHkq2Zyhzgnaf89aY
	mgVeU3qEVf/tMj7YBtF5ghXz1xUbTXdWBW1N0aa/uJj+lqII+T9bRzOgD490ps2zAqx3aUXPZSLfc
	fAaSsLKcHGYJRdf6TD8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKmJ-0007G3-Tb; Tue, 12 May 2020 02:36:19 +0000
Received: from mail-eopbgr140079.outbound.protection.outlook.com
 ([40.107.14.79] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKm6-0007Ef-St
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:36:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=igQkySrJVBkr4s1JF6TrRAHaxsgfQXuisnokC3GRGd3SUd5mjxJ/m8DC2AeVMi8AVF7zStheAMNzSF6/eCMR6I10nCn7s2zK7JJxCKlxZbxRACESuR7P80Gqkxjtc2xWv3XKR7dXThgmJBwbeLtDh4C5MoCtoqM5GyzE9Ck0FKC3F6l1WtuBSbAiGUzfW637EnrOugq11Pw3DG6hQ0Z14k1gc+dtp9Mo76brWs5T/uQ13aDRPNJN0QRIqM2OoR5/9cJaQFJwL/qIC36J47N04Yk29KmVTStqKIPWwydGP2dQ1pgfXmbz79mudUAgRxGgXD8T6P872PziGTlc2miHnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t4fnxoXxjG/c1cP7weVq002E8gWnrBGssBy/cw2ku2A=;
 b=iWSjot1PrDHqlxckcJV5JvWieVPBcmFwqsHX8K5dv7uHVT/5jflrKT2XUz1j7uIiAA2Kp+wERnkOsVJLxAQEsD2sOvcHHOYvYdvUHwot+OkOfHjZspfcKhdmX2NXGwhmSBDfBGKpuCw/phrn/iMk5IQ+8u9byzLbJkjf7pfZ+VqOYryoVP7gaNcLwzzxcM/YIOi98o9+thU8+enbFYClbBhnQMX/HArItY6DPC8btCgro/ufzmcpqJt/ShbaE7mE4lfYVKqfFnUuGhny2Q/n7Zrh6FH/+MnDLSd4QfDj0bcl0YT+NBI/OS1HeVUzG4DwmFos8FdttFHO+pDZGcr+wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t4fnxoXxjG/c1cP7weVq002E8gWnrBGssBy/cw2ku2A=;
 b=e1sVRcZ8M+SfeRCq//PdIzQ1p3TZ6rpm4biIw8rQIHPwLs9gQWMun6/rcBUAkL5emaBktqR0gZc5wefBnR/S32MDDx5xBx+0bcpuhpZxCJHzPhXWaMYBOQ6HAASI4KGWKrOxzvwlqs7+jWRrfKYPBn48jJWYKN80ttiUv7sS58A=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2757.eurprd04.prod.outlook.com (2603:10a6:4:94::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Tue, 12 May
 2020 02:36:00 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 02:36:00 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH V4 1/4] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Thread-Topic: [PATCH V4 1/4] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Thread-Index: AQHWEyRB6p299pXyrka3JlX8v+jW0aij5bXw
Date: Tue, 12 May 2020 02:36:00 +0000
Message-ID: <DB6PR0402MB276087B375F073FA6989076488BE0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
 <1586954449-17463-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1586954449-17463-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ea52583c-94da-4edb-0071-08d7f61d3552
x-ms-traffictypediagnostic: DB6PR0402MB2757:|DB6PR0402MB2757:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB27576970EC5E3A0AE944319D88BE0@DB6PR0402MB2757.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:605;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RED6GRc+VJ2K3mFiPTorTunniph9nvdF5IqGI6wk9qu8HBwhm3aMYc7ysezA8vH8CbNYxpy/awB9msooMrvcr+IAE7wYIwGaZGYWV7aHGQth90RyQuyygNbzOLNLLF3r0qheD1Krz7q0QIiYb3N7JEpXRvM46jn7uq0X2YWKf3+t3duBDSOIJiwrAukwEd2+CJgdpacqPhF3MmpWkQWBAsvYMnA0BTNk85AwSWSP6Bs50p1hdSx5LoPE+Cn8yjAKl3lHCkgDLox+OILoKkRvmF0BiDzu2Xmp8H/l1CTPwKgCykKaPCWEhwSEY/dTaXT2sN0DtLM3OzdN2Zdhm05bcB5Uh6FAih7sOfzRkiFwdVQOAe9p0KltY5njrdIxZMUrvsUGXwjAAoH7TrG5SfyU9HNpk5SOFt3F5pcgK3jJudzailMPbXCdUEmeXAkk7Rje7aZq7FKb+kZKD343WEoCJp4J2uRPGQjtN878ofKMr05fBEAXtSebQrtkBmVhzcB86LFt4shP2F9T9E19jMt++C4u7xcdirERLnp4d5o4Y3phL7ysYBMtLN0jqBk3+JJR0UBaH0WGA5Fnt8MnFayAKNQpBpunYOpU3ht3/9ZLnZI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(136003)(396003)(376002)(366004)(33430700001)(4326008)(966005)(5660300002)(33656002)(44832011)(9686003)(33440700001)(8676002)(55016002)(2906002)(8936002)(66476007)(66556008)(7696005)(66446008)(64756008)(478600001)(76116006)(71200400001)(316002)(86362001)(54906003)(110136005)(26005)(186003)(66946007)(6506007)(52536014);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 66l/1OnH6Ju80A1Ae0sQsSTHtvqsFB8C2sjTzroVwmHe1lOmWWl7NxFRue/XyTAoSEQ4KoGDQUvPirXC8QhgGGtPSnUC0ArurRm5KfB8aIf9gvIIj8g36ofljHZVSwpocD/a7fYzeCX9rL19cmFmeW465BPS+1cwCGINAmjG91Y0AshumL+0uycUKpb4Ztd/lcEFUrYTR7HF1OKp+RcMk9EVHg0sWDFdLm5mJYOlFo5Z/z0k6NrAq957fsmXdk9MbdzlRLtAuZKoKKLjPJ6oKeChPdqy4dn8EW7djHYY5If0/SY4XDkRPrL+zorxBQ+vtMjXbOx4RrvvWs78vCP4ihAw3i5lA9YIi3BrOSRIq7PqEFteeg9SIZCRkMQAJI0qIRfDlPQmwOt57vVeEkVkdBrqBJ3o93CnesaQv2GY3GuUdNgbRRe7LskL4DPQcaAkYmUvqxyUftRqvWtqeCq9wQAXGL/o/XKXS2Drp0aaUG/7u+pGTv1CjakhMmaW/k3S
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea52583c-94da-4edb-0071-08d7f61d3552
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 02:36:00.3866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AEVLbAWZ4r48BConsYGQtCO8VbKUKdZTWaTecqAWMyMZ3I/VU4UEFOsiy0ohCQDSjgAcr52HkCnYA4Lqd85NJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2757
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_193606_936355_51B9DD6D 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.79 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.79 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> Subject: [PATCH V4 1/4] dt-bindings: fsl: add i.MX7ULP PMC binding doc

Could I have your A-b for this patch?

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX7ULP Power Management Controller binding doc
> pmc0 is used by M4, pmc1 is used by A7, they have different register name
> and usage.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32
> ++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> 
> diff --git
> a/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> b/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> new file mode 100644
> index 000000000000..c60903039718
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/freescale/imx7ulp_pmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: i.MX7ULP Power Management Controller(PMC) Device Tree Bindings
> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - fsl,imx7ulp-pmc0
> +          - fsl,imx7ulp-pmc1
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    pmc0: pmc0@410a1000 {
> +        compatible = "fsl,imx7ulp-pmc0";
> +        reg = <0x410a1000 0x1000>;
> +    };
> +...
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
