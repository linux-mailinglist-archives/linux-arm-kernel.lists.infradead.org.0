Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CCE1D7379
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8H6IUTt17Ow3hwDRVjHNx9g179kBIymx78VufpKC08Y=; b=V6rtE0M8dFoYGF
	LqfTxYmmg2vACXgm+JzQ5Wu8yHNdboiCjrh/waXqBg48L5h0ztaO4eKHbFw3X9TPK/TurFrfQLIaI
	1hZ3i255xiS5C1/J+MNlLzmRnjq5ZDdw0Av3B8euoWJqqPnFbJPOp3O7SYv0SjHYJzTa0VpD3p/ic
	79hR6YUaaQ2wdBraAk5AOCji/xiaBi6Eo402pAo9/vyKMf+g6e2t9TkkhsoXM9oVh1XOhAy/bx492
	SIsBBzog69yqTUIzvCVrFMaJ9Wu2cgKvOeKwm8DFSXzudWaZ3SwTJVYruKEMwd4nI39Lkf56V50nG
	ThmYbMk2jnlaiu0H88AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabkj-0001qL-II; Mon, 18 May 2020 09:08:05 +0000
Received: from mail-eopbgr140074.outbound.protection.outlook.com
 ([40.107.14.74] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabkb-0001oc-Hw
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:07:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oU++r14XubQkYwMuZPE9y8da2DG0KxBEKcwUYS4h6cTZIuELiIyM60/JVV6TyfGfa0qR+YbPigqSVNzx6+S65r7GeevWcGRmC/4+1EcV1L33An7EDk9vGhXrOK4tds6FNl4+df2irOJ9cn5Jza493bk+gd7bu+x63JtuWUBUaqgoJz6wWPtukcxlvpPlDc5yRdVwKpuUkQytLniypEOvJopDZbf8XqxTRRtbDrk7rzUp49GA5Dlgj7acrUMgokzyg3iXjG7vawCFwRMzkcMWDu0YJD2xTiPgT3r8FhAhP7gcqWQep3JnZvsK/y2ew986girKeq5pNZZF8dkYWqdtlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4yrspS6BHbGlcu6SEQQN/tejSfrrVW2kdTkJ2wGqF0s=;
 b=ZFjcRJ4OHqCw3+2pMN20ci0cxVnmmzxKqH81ZOiPldqxphLr+fGcsEutjLqqQk9Oy0jwomjeMyGRX5X+6HMGmf19CQ0HuiCnbprN/oEcXsZ5Z1gl46rpjkSn6LzO8dQ5U5OvKAriL1ez7fX/4wk+CzjFgIfmgRTalXnaBYw92yDOIMUP6dGd3BFg+QHJwkGZsV2/iypwA3pzkA1a9a2J8QmpZF7/i72p7IU93kHU+OMwZ/ytNZLhyBmUPLGvCgpsPTb9Eqg1Ctb8zib8fhBcV6n2GFLKwL7L5OySJ4mL3YLBZL1mRZZuQbhhy9hmEH8iI/Gt0hAjfRL3A1uD3i7S6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4yrspS6BHbGlcu6SEQQN/tejSfrrVW2kdTkJ2wGqF0s=;
 b=kXhry4K3jaBg5AZCIucc9IAlCbBBJYJ9iA+QGKanNriSsrHj+PkXoNn1R5Lfq2Wqcuzj/FEF3lq7S1OERBJ5yMy1ZQfHvvsOB098kW9gNAsLXeOGwudUuLIaVzjjtsE+cY7WYuKkLh6AzdJ1xrc6XJ7/aq0+LuyoNPCZn/PlRLo=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5509.eurprd04.prod.outlook.com (2603:10a6:20b:28::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Mon, 18 May
 2020 09:07:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 09:07:53 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "p.zabel@pengutronix.de"
 <p.zabel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
Thread-Topic: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
Thread-Index: AQHWKAWetFMEXJN0LUKOAmAiqHSdWqitlORg
Date: Mon, 18 May 2020 09:07:53 +0000
Message-ID: <AM6PR04MB496643088C27DB303166ED0D80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589250194-29441-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589250194-29441-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: abade521-3b81-43d0-fc0e-08d7fb0af2ea
x-ms-traffictypediagnostic: AM6PR04MB5509:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5509F8E2226C8605DD34DA9D80B80@AM6PR04MB5509.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i8IvH1LXLxUdpjmyP8Vnqf10IxFec6sLnJ++sHF80q49xZjxUTrG4XRBV2tNCKZhLSxXvsOrLsvgpGwMoQg7wmt6gdB4EKqg3S/GRl6/1961+7Ptc7XQnxZ8Xh/9cpych1P/M+U9CosgDgiDqrRv1oBv3v6sxMfIAr5XfL7WnmGPUE9OoQlE8xxa0D2hGMlWoP90CkSQ96WhqHhyKw4TkjRXwfvZTsq/Q74R5chjN1vgNCanYUU4VSnoQrilJjHjBdta1i6bS40yFQxU+9s3Alcwe1KnDZ0mN5UigOXSCJYafup+4qo3xWBmlxvxtUcTDQZTG9g2zN6cPViffE4jcEQJ04yyyzZQhnKVbktY3wKgEpvibk6SlaZYUR1ZpW7DFScLYLPqwH+iI1JqpoSYBcvrF13lGClQCzMoMjtz5Qh1rqvshKanhF6pg5tU16wv3KVttcd3aGu7P005vN4j/lMAOAyMK3mkCf6jWxBe62k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(366004)(376002)(346002)(39860400002)(5660300002)(55016002)(8936002)(8676002)(26005)(186003)(71200400001)(6506007)(9686003)(4326008)(478600001)(7696005)(316002)(110136005)(86362001)(44832011)(66476007)(33656002)(64756008)(2906002)(76116006)(66446008)(52536014)(66946007)(66556008)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: h5hTpmDHEVZctztSUIeuIbj4lOQQFHnqhOe8OSKyC5UDprNnbsSuAQskX4A4mpXLKtRHRh2WPHt8iQ7hRozULXYnt3rPo1DedpEAxWmhnT+QQISNXHt2FrFKilT8CdK+njkz37Jg3Dv5bKpVp5X5BFJpm8yohdb7uCsvIMAkhH4ay1JQSZP/CqQ7Im0TSJqwfQBE9FLeTNhGwGr4jW40FdTP8Fy/S04n5BC/PJ1yLPAuA4l5cPL3jA8Ah3h+Z7C0jqZ1J7SjwVzkH2QaqdyZTNgQeTG4fwjrpamMKNgCO9uyqhPg/YgOaKP/ijSO7tgv9AlQVFmRWgaSO/TXVc1SrYi1qGoRD3YQ2AgS2Erm/TBLql0WDy5al2CoBOKdNqUA6NRZDHeK+BzOXI1jDMIsd0MA5dKvu2pN2HNzx61mrwGl2whFxa5qp3dvo8zexXAmETsYEdC6GjEZO7RdHMcehvJNR68h8CRoHwryRzed3rM3DToXrVYj1gKpyJnVUWiq
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abade521-3b81-43d0-fc0e-08d7fb0af2ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 09:07:53.9385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G9NL1yR1c7RwbWdqAwMMRS+W6QM+7SvaxkkL8XMdfYTiNxQI/Y/ecQ1NHZLnPwX38SX7TmB3c5DL8Ad3C08KtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5509
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_020757_732285_6E21572A 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.74 listed in wl.mailspike.net]
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
> Sent: Tuesday, May 12, 2020 10:23 AM
> 
> Convert the i.MX reset binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/reset/fsl,imx-src.txt      | 49 ------------------
>  .../devicetree/bindings/reset/fsl,imx-src.yaml     | 58
> ++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 49 deletions(-)  delete mode 100644
> Documentation/devicetree/bindings/reset/fsl,imx-src.txt
>  create mode 100644
> Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
> b/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
> deleted file mode 100644
> index 6ed79e6..0000000
> --- a/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
> +++ /dev/null
> @@ -1,49 +0,0 @@
> -Freescale i.MX System Reset Controller
> -======================================
> -
> -Please also refer to reset.txt in this directory for common reset -controller
> binding usage.
> -
> -Required properties:
> -- compatible: Should be "fsl,<chip>-src"
> -- reg: should be register base and length as documented in the
> -  datasheet
> -- interrupts: Should contain SRC interrupt and CPU WDOG interrupt,
> -  in this order.
> -- #reset-cells: 1, see below
> -
> -example:
> -
> -src: src@20d8000 {
> -        compatible = "fsl,imx6q-src";
> -        reg = <0x020d8000 0x4000>;
> -        interrupts = <0 91 0x04 0 96 0x04>;
> -        #reset-cells = <1>;
> -};
> -
> -Specifying reset lines connected to IP modules
> -==============================================
> -
> -The system reset controller can be used to reset the GPU, VPU, -IPU, and
> OpenVG IP modules on i.MX5 and i.MX6 ICs. Those device -nodes should
> specify the reset line on the SRC in their resets -property, containing a phandle
> to the SRC device node and a -RESET_INDEX specifying which module to reset,
> as described in -reset.txt
> -
> -example:
> -
> -        ipu1: ipu@2400000 {
> -                resets = <&src 2>;
> -        };
> -        ipu2: ipu@2800000 {
> -                resets = <&src 4>;
> -        };
> -
> -The following RESET_INDEX values are valid for i.MX5:
> -GPU_RESET     0
> -VPU_RESET     1
> -IPU1_RESET    2
> -OPEN_VG_RESET 3
> -The following additional RESET_INDEX value is valid for i.MX6:
> -IPU2_RESET    4
> diff --git a/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> new file mode 100644
> index 0000000..276a533
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> +---
> +title: Freescale i.MX System Reset Controller
> +
> +maintainers:
> +  - Philipp Zabel <p.zabel@pengutronix.de>
> +
> +description: |
> +  The system reset controller can be used to reset the GPU, VPU,
> +  IPU, and OpenVG IP modules on i.MX5 and i.MX6 ICs. Those device
> +  nodes should specify the reset line on the SRC in their resets
> +  property, containing a phandle to the SRC device node and a
> +  RESET_INDEX specifying which module to reset, as described in
> +  reset.txt
> +
> +  The following RESET_INDEX values are valid for i.MX5:
> +    GPU_RESET     0
> +    VPU_RESET     1
> +    IPU1_RESET    2
> +    OPEN_VG_RESET 3
> +  The following additional RESET_INDEX value is valid for i.MX6:
> +    IPU2_RESET    4
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: "fsl,imx51-src"

What about mx6?

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:

Need description here

> +    minItems: 1
> +    maxItems: 2
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
> +    src@73fd0000 {

s/src/reset-controller

Regards
Aisheng

> +        compatible = "fsl,imx51-src";
> +        reg = <0x73fd0000 0x4000>;
> +        interrupts = <75>;
> +        #reset-cells = <1>;
> +    };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
