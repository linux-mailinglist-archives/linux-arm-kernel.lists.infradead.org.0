Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6143A1DAC79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZqL6lpNGP5GEcQQ4gAjdHoIB2w1/RrJy/lopb/+Xoo=; b=ZoTLl6y9FSWspG
	QLvhN9bhENeoNxG14fpHa29cHT+X/m8APs4NwDXoPOytFuaEBtTMikOrBJW8xbFEDmg6QKvrZoNmx
	nAUE/TC4DGYsu9uTzPs7s8TAmcxCM+G+WkDtSKF5vv/7UIsPYUPVXgFOZ9RYnR7jukyYYG2WNyF6m
	OBXF9yhc1xWgdj0zfiMKqSBbtl6wNL5QKnM2GpaEJmWnpAaAS/4h+Hp0LcRMq/0gPvbFMKQDthvCR
	AnWDzK0m+GidMVW9Rq0nBngujMi2a498F1+OY5L7B+wmjRK2lkdSEVyGQbcnEPGZxb3J15ZtJEo/b
	ujXw4YIA/z56YpND7vpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJNc-0001WS-0i; Wed, 20 May 2020 07:43:08 +0000
Received: from mail-eopbgr60084.outbound.protection.outlook.com ([40.107.6.84]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJNO-0001M8-QW
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 07:42:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ug2NoFfAwd0mGYInWzRrPu67Eo+8lG5h6na2BzTWr3cOdrfVc4hSts206Q2/sjwRfTB2ppcj+3Gu0XXocoE7pxXf0m0fAMueHnB7Qd0j3aDNYUJnshGNxIxIVMLCK/ofVKK81ddYkReR3ripJ0N4cxnBLk/0INBG5JcyXN/zZQfKfJTfT+GeRd26OQ9U/Y7lRrE/PZsGUcpft0VVw7FnjTPQ0Cv6ORDs2gHcXoAZTo5QI/f/Smvpp1/ImpVTXdbkNkbphRFUVSkkyfC1bWuUfB7xzyUnEbeoZlGH0j7ujpiMXmMwkdR1kHF7yeeY5WhptAYGgVvocK+RsXUgA1dPgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iSRZPCDbufUmrgsnWbTbxZb7wFvANVs0jaOrNKGtgZI=;
 b=CF0e5c+r2euFrM6HoXIp6y35xSFO0b9uMtcn7yTeMDBB2XuoERMtBYCUZqAuBntLXxvnpbOYxi59AyMA3F1vrWNgPNBkTiclc2taQch933fCLmD+wUCrra2Gy/89Ca5bC2Enh4t/BF+0flcJFIQcJM434p+hqP6jSoCbgTHA7hE4ai9oRo+uAGipY8W4ZQdS9Go79I4IPlEsu5vzQu6nho8cC4crk5zwX2L1jVKhVUkjFUk6XkWL08sklBuGrx+xRrC1KQcn+yNDLMSJ+Iw9m9Ye21tr4uXAy5xyR66A6I6th0EzY4UaxrAOfg1Brhy/F/Zw4y4jXK3Hq1FfDbwVYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iSRZPCDbufUmrgsnWbTbxZb7wFvANVs0jaOrNKGtgZI=;
 b=QksjmZXwvVI0U/EYPsJ7AiZr+7I+1/SgDA+S4pmtP9GSH98VQzhpudzzi+oYrQvulVGqaWyRn4yKo/zYxb+SUjRuoezH0eaft40fA/CMYfVklYX5GrfG1o3oe60rZb5UWo1GiidiTQ75tHBXUYcTVcnfEZPCROHPYT5qz9vvRjk=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6166.eurprd04.prod.outlook.com (2603:10a6:20b:b6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Wed, 20 May
 2020 07:42:50 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 07:42:50 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Topic: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Index: AQHWLm2m6ex6T4CMsEaus6xk71vL56iwk9PQ
Date: Wed, 20 May 2020 07:42:50 +0000
Message-ID: <AM6PR04MB4966F875F2E04D0F6FC3AE3A80B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589954560-10810-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589954560-10810-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 78aac862-b1ac-4c6a-6394-08d7fc916618
x-ms-traffictypediagnostic: AM6PR04MB6166:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB61660E81F655D01B1112CF8E80B60@AM6PR04MB6166.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:635;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qDoalGnqg1eKaubOet3u+6z/YDc/rNd0dudept8v+9dSH/J7HsrJ0kiZu58QP6XJK7LMseR7Yw773EIpOL9/LmyhOxfQrnWtYqR8iTvApJaBA+EvQskrLGWcmsfo0m/WKX2HQSja24ntvTrdIk9smlFjiSMrKy0AMm1I82TH8Y5NzpkqE0qUt7V4LGGM2ZLeW0T+v8+Oj0yk8u37SP0gzBIcdu06+246z95KFtbFXN+SngJyUZrmfEVI1eOfLB7FnbcJdcTuiPjx4yo5oxsonR08KShWqw2DJjgIYxwntwJ+CgMV/uimYraxlM2g+D9XcSrEK4GTxkrluPbAH9t7ZJwM9TxKGFqLhMqhCY6XFeZLeE6FU6uCQscFDJ1cWMQIlWk2qYYgtvfvJXOcqq6f73PyqWniz0QkkftpBjcdywjvTC1exnGJgbJ6lsvlELnfObh9nZAJQZaSho74IrtdY8VK+GYMMc+kjcNlhpeMTCQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(366004)(396003)(136003)(39860400002)(9686003)(7416002)(2906002)(26005)(5660300002)(52536014)(4326008)(186003)(33656002)(110136005)(66946007)(478600001)(8936002)(7696005)(71200400001)(66556008)(55016002)(6506007)(44832011)(66476007)(86362001)(64756008)(76116006)(66446008)(316002)(8676002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Fo1D9B+xq0mOIiBPfJSgd006kDJT2ZML1WT0utDnwoTmY9jGnfiWcCV4xuMMIghZ45/PakGx7FPdqT5NMVkupBzMLYo33krSM+TiIGWTvgXU3rYCHax8C/jvuIXagnDknusCcWs2gp9UbVyg1WCrDxkULQQK6q8nyXAKY39v5dGfgzLOX17yVGOvHcl0LA4cBtFvDPapX95udljR4IdnYnA7sjtixYuO+nRnfXF+asW+Ec2FkBkq2EWB/smXrv1INp9sfJ7EC41eGX3K4FZ6SZRaQDhX5ldDjg1KhiAp80e07p4wa4Eyz7eMxaL23FpLoGXfxg/wOwfqQ0/ezkE+bqMhbr8Zzx00MKmoTjDDhga1ZAiNpxNPCoqAQKT7o//vVQPNizo5+H+mo0Gz64kpKo7HlPulm6MO4b5aeSY1Fen8dfyncmWoL6jZe9kvPTotGqZi0tn84YWIBVUopV9AiiCduZSoRH3WiWHielVrfsFNd4Dxs3yH0i+fNnkU+YWl
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78aac862-b1ac-4c6a-6394-08d7fc916618
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 07:42:50.9006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pElSNhcAj+BNq4DELE9OuqCHbml1RdjrTsv9GRrMuj7+SEacX4DsQqmNJNDzMZmX4vQ6akRfJjuUl1rh1Lcf9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_004254_913366_1A6324C9 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.84 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> Sent: Wednesday, May 20, 2020 2:03 PM
> 
> Convert the i.MX thermal binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- move tempmon node into its parent node anatop in example;
> 	- improve "fsl,tempmon" description.
> ---
>  .../devicetree/bindings/thermal/imx-thermal.txt    |  61 -------------
>  .../devicetree/bindings/thermal/imx-thermal.yaml   | 100

[...]

> +title: NXP i.MX Thermal Binding
> +
> +maintainers:
> +  - Shawn Guo <shawn.guo@linaro.org>
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:

Drop Unnecessary properties

> +          - enum:
> +              - fsl,imx6q-tempmon
> +              - fsl,imx6sx-tempmon
> +              - fsl,imx7d-tempmon
> +
> +  interrupts:
> +    description: |
> +      The interrupt output of the controller, the IRQ will be triggered
> +      when temperature is higher than high threshold.
> +    maxItems: 1

You'd better explain why interrupts number is changed in the new binding compared to
the original one. Probably add in commit message if really needed.

> +
> +  nvmem-cells:
> +    description: |
> +      Phandle to the calibration cells provided by ocotp for calibration
> +      data and temperature grade.

Better describe for each of them as you did for clocks

> +    maxItems: 2
> +
> +  nvmem-cell-names:
> +    maxItems: 2
> +    items:
> +      - const: calib
> +      - const: temp_grade
> +
> +  fsl,tempmon:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: Phandle to the register map node.

What register map? A bit ambiguous..

Regards
Aisheng

> +
> +  fsl,tempmon-data:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: |
> +      Deprecated property, phandle pointer to fuse controller that contains
> +      TEMPMON calibration data, e.g. OCOTP on imx6q. The details about
> +      calibration data can be found in SoC Reference Manual.
> +    deprecated: true
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - fsl,tempmon
> +  - nvmem-cells
> +  - nvmem-cell-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx6sx-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    efuse@21bc000 {
> +         #address-cells = <1>;
> +         #size-cells = <1>;
> +         compatible = "fsl,imx6sx-ocotp", "syscon";
> +         reg = <0x021bc000 0x4000>;
> +         clocks = <&clks IMX6SX_CLK_OCOTP>;
> +
> +         tempmon_calib: calib@38 {
> +             reg = <0x38 4>;
> +         };
> +
> +         tempmon_temp_grade: temp-grade@20 {
> +             reg = <0x20 4>;
> +         };
> +    };
> +
> +    anatop@20c8000 {
> +        compatible = "fsl,imx6q-anatop", "syscon", "simple-mfd";
> +        reg = <0x020c8000 0x1000>;
> +        interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>,
> +                     <0 54 IRQ_TYPE_LEVEL_HIGH>,
> +                     <0 127 IRQ_TYPE_LEVEL_HIGH>;
> +
> +        tempmon {
> +             compatible = "fsl,imx6sx-tempmon";
> +             interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +             fsl,tempmon = <&anatop>;
> +             nvmem-cells = <&tempmon_calib>,
> <&tempmon_temp_grade>;
> +             nvmem-cell-names = "calib", "temp_grade";
> +             clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> +        };
> +    };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
