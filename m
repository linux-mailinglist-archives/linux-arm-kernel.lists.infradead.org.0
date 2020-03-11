Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964E918120F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WC1iKYTbtzHc8eevAc+xOuU8baPvLAlDQfMaC3kkrMw=; b=Ju6ILglIIj/vpC
	06xZvhBGz6mqEH1Nq+EuHWHHKyAr0TSqDApVmLrgOXa1D1pEBPQIttZ9J06+Pv5aDj7NaVEO86GF9
	wlZHrTPNWxM4slSN1z18+fN1xVsW2FGWP6G/oLJCMLfWUFIn4jYbwFUM4IdyRy/+zoYPRn0nUN28/
	3G2ryohN1ZzuZp0lMInmPNaeoUslZ3mGW0rpsoKPz3++cQX2ZWfJ4HVLS99tXl7eeeAzrN1Z6wliy
	tl6AfKrNyKl+uGQ7lk/DMNeJotGYmcl1QAgX9IJVamu7yBNGGab+mBEddnwQ7n7Xnf4vaHTJVzGgW
	Vn3m84jM6ejL6uky9iWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvxd-0001R9-U5; Wed, 11 Mar 2020 07:39:25 +0000
Received: from mail-db8eur05on2056.outbound.protection.outlook.com
 ([40.107.20.56] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvxV-0001Qc-Gy
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:39:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mpNJ34XLPBoZ33wnZ4woWHzV5c65lwqO29voRV4lD2NT/5OmrtGefupWwBB0CGFORjPlX5Ea5RRf6/NoYINvFski3uigp/P15YmgdomVvXf8UjGSnUQQ1kgfC+A01zikPmdUWn16lAClpsJVJlqZRvsuHglfsIWW4OmPj3Rt3sduMJa6J+ksTkAogg4lYNQjPklC8S94h/v4bB0QP63Ck11CiEgHkwtqoVTQCnl9jVsdDpUU+NesafKrelE+rk5BZXi4z8ndnCOzvHhdevwVmktt3m939MQUxHBmuFTmFOzh95Ky6t2uOIueMgyvXpjTanmov7tvXRGAz/CXsL6qQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8X3dSggdw2zV0k3YqLvekqhW3g/nXy7gqCOhy4khT0c=;
 b=f6qHSeT7+H7Bnq7sm1GAqeOtesX5NZJ5kJu4ktC3gMRusi21mIWmgP+VAgug7ciKjoIPuxMuVlawVxyNJuOnXnlRPYoAHrnfeTIbkr8FZ52QzCtkBizD7ZDMMCPo8fqN1qDb7Ff64li6O93WYoJE9o9b8N11HHKFVsOfMMnGHFyuTrj+NjeqQ1pjfoDZVa6Ktt8zGfB/zJm7rbA5p4uZTD3YEiYuDU0awBhmi8bng9IAyhlck02UdX3CTRJNjYXFWLo5/kaOByv2hYmTd4ddlNvlyLNyph5ca7mnQTaZDH0VMC4L+OTuyTaCk4+PuC8fdQp/L2+vLQddSKslgYerMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8X3dSggdw2zV0k3YqLvekqhW3g/nXy7gqCOhy4khT0c=;
 b=oZIP3sJ6/mwJYlmyzerSlQCUdBx9hQXk+VoB/8uE2Vq4YR/P1tPjSE/J7QSMUGpufV8DvyXOVboXxfc8Ghgk9VOY4/3BJyzoulFDGgCLf41Q6CEZeOh2MU2i6NOFfjyHo2jwz5f3Qx/zEp+6alckY88oH+vnRTCGbrnbOseL6ZE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6961.eurprd04.prod.outlook.com (52.132.212.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Wed, 11 Mar 2020 07:39:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 07:39:14 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH v2 01/14] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Thread-Topic: [PATCH v2 01/14] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Thread-Index: AQHV5vtwRU1Nn7bH00qi32AibjM/SahDIicQ
Date: Wed, 11 Mar 2020 07:39:14 +0000
Message-ID: <AM0PR04MB4481494EE01E944F7000BA1288FC0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1582099197-20327-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 75c7569a-3e20-4550-3361-08d7c58f4c60
x-ms-traffictypediagnostic: AM0PR04MB6961:|AM0PR04MB6961:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB69615BE7313D4B4F93DF62E388FC0@AM0PR04MB6961.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:254;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(199004)(186003)(2906002)(54906003)(66556008)(33656002)(7416002)(66946007)(66476007)(66446008)(76116006)(64756008)(8936002)(71200400001)(5660300002)(9686003)(316002)(966005)(4326008)(55016002)(478600001)(7696005)(8676002)(6506007)(44832011)(52536014)(86362001)(81156014)(81166006)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6961;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sB1trWY+/25YY6EsknvGP14hrR2SUYhTHszhwZ8jc+gCqmkT0bIc8n9XsUqtmvuqp0OYlM2R35EMN8loZEQGgWudOI7Jb2XBGSI30101Arso6he+7LzHDNnwHZly13++meeUwM2gx9Ue9ifUH2ElJABf11mtuwnOoUrLU2XChg9tBChtgwGKzljJUliHfJ8IvmNQHk4IHlaaSjw4NJcOBptthtbRvrs/tDS3+KTvuSnNBn9SCF/pMEouWG/Ti7rZowDmAhLf7/Gk2dDQw7rO7+ej6AoXmAUtDGASWGzeAAlbkb18Iy893xYB8dzdvT4XbP2jH3zJstNtYvPreT7BwjIlUeB+UHvUpwe9SihXF9bDBRIEhcGMBWJ7YK0Mkbe5Kcgh+CeDEF4/JRLWhpxvzEeSRXvyALurpxAFVNJVAxt5dCd8WZGLoO2MIG9Of040X7ZECTNefDfRBB56iYQxl+AXcZXP5655YCXZrmreeyhpD6ld184k1Vks8rQNpMcHx52bwB7DHojOW3FiraWzlQ==
x-ms-exchange-antispam-messagedata: rRfBg8bmYxzz5PKYGIgQkrlmF808YMramVV9uvge7BIhSNEyijszIqIfEQzwvsUX9UGHZ0vfxMzFCN+rknVF/ZxXjcbPzObVS2pY+7rK2yocKOC+dEf1+wPW5/4S1A9FjeWaRKe5bKC18T6KG7odwg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75c7569a-3e20-4550-3361-08d7c58f4c60
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 07:39:14.7113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AIM0wHb0DEbWjB/Afr7DPHgflaubCnLjZsHsRee+AHZfdzQl/ihGs27leLiG+6sfUWAo/GpfjdXX7Cr2ZDv2Fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_003917_564623_C62A3D96 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> Subject: [PATCH v2 01/14] dt-bindings: fsl: add i.MX7ULP PMC binding doc

Would you help Ack if you are fine with this patch?

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX7ULP Power Management Controller binding doc
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
> index 000000000000..992a5ea29d39
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id:
> http://devicetree.org/schemas/bindings/arm/freescale/imx7ulp_pmc.yaml#
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
