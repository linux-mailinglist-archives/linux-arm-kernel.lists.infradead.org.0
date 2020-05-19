Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 540AA1D8DDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZ2RrlxnnNKXuHYBeuv3FW7KAfHpa1DGds32eNMd/qI=; b=ERMAALAhEHUubZ
	AyQVz6yU0QmC5vLCilnBURyiI2Kb+V5z59tgJf2bdcodYbJYif1ZDAAe8rl2BzEPZPxNgGdqtiaor
	b9MH3x/5C0g4Zonyf5baCINbmSPUVMkcRLX1WcMHqW94u8jadHwoahIz9yLgalzs8WahlaqijKeaO
	sgd8CeAYlaiDXO46DQwI5p8Xl66+XFzZhnjcPc9GNtpFWiJwPqvG2mpDaLCUiBALsvk1eBUp4rZOG
	X/MegPtN4sFSqEO6mSvFSzv07wiUv8guJHpj1hVK3fQVH+KxvnZLQFmjMCFUZItFxY7nOKHB0aKfO
	/vkMAoipHdYO0LQyHLAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasPo-0000Bl-Tj; Tue, 19 May 2020 02:55:36 +0000
Received: from mail-eopbgr10050.outbound.protection.outlook.com ([40.107.1.50]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasPJ-0006Dz-9E
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 02:55:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FOfP6QPyJQMwOqUqVhkt7J7JHcZCG/FakX4p/wuocbQGWRe7WYOvMIhribLYfKJbzfO7Asbz5BWsXAErLSFuWkTI002y6rMzP82xE/9iaqMKZI0qucmIw660morla2lw1aFCmvBSczh1fIikxaKHtTR2CsmUJP4nSbri095l52saGAHIuFCM9iQydp6yIGmvMfATb5+wmo1Jqa7zgfuJTDzTrbJKd3QMLJb5CwymmfPBRl929WF8ccGxIup1ExgWRa1ponQQVAEiu0KXMT/WqJJhiyaL+vt1nnmkwFDs6RhafgGFs0Hfm3xsItoA/DmjblXpyNmO1cSxuecAULe20A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i33KtpjnNfq1RbGjHVQQma49QPXY9IBR5GCgfAsZ3Ms=;
 b=UeIOsPGRGp3UEYCbgxkxWE0wRSdgr9kbWVRCCzkFZnYHHyiu2DOfzDZG0QWYgqApIiU5fvTfC1gmnIX+hGOUUxpJTqxeTE9DNj2yoW4WS04L1o0igowHANtM3NtT0x0aFAi1xXJgOkME1+ioMSV3QpwAZEFMySW3neDL013ecc+jizimORo57cL8c8aFqqL0uq6fvNTu8LZO+DKgKFZtvdgX/g9Apeg6ugZAnQKpTPOQf9J0wAatienG86WsWANQepaNUNMLCzJAOEinSkLyaCHMyUQ/+4nvSPkbaef91kp0QTyYTl0Hz1oTqFAtHF1y1+8iuxC+7t2GaH4Pv/zNDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i33KtpjnNfq1RbGjHVQQma49QPXY9IBR5GCgfAsZ3Ms=;
 b=dXHkny3lhJxlx97VMlfITzfkoBcnQqZdPqsGh/7R04cei/SiAyS3Lzug33PV5qIsU+UIynmUzpC+zs2mA8URvSNgftRrnvr0wIHRMy2PCn4Oz0uno55EbccoqZfmPmJ3Braf2/PDyRIes4Qy0IPggzTKgGyKw3vtqGfYPD+4wyk=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4150.eurprd04.prod.outlook.com (2603:10a6:209:43::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Tue, 19 May
 2020 02:55:02 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 02:55:01 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "p.zabel@pengutronix.de"
 <p.zabel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V2] dt-bindings: reset: Convert i.MX reset to json-schema
Thread-Topic: [PATCH V2] dt-bindings: reset: Convert i.MX reset to json-schema
Thread-Index: AQHWLPzyLOeUPwdr6kC7CajWkJ7yjqiutw7Q
Date: Tue, 19 May 2020 02:55:01 +0000
Message-ID: <AM6PR04MB4966CEA2116B3BF13CADE70880B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589796212-9993-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589796212-9993-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cc4d6417-e03a-490a-6b15-08d7fba00693
x-ms-traffictypediagnostic: AM6PR04MB4150:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB41506EFB42A2B59419D3852680B90@AM6PR04MB4150.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pUeps2QJKD/bbe108i4Ms7uC8zWGdCP+fbxxiFmvQNBOg+RZ0HuBGiQM0YYdiJB7TVIWy9x3X/Eh7WuFCPB76IKFRjIGwF8imV5B82nWt63hL1lbkh01S15WXYloh9Z7Xc80OR1FQdp4/rGMuD7YhPnWyxyelsSSRQaJOyhkEMCWbZyBW662rX/8nEtWSzLh3YbS7X3A0f4TBoj7N90KE6WhXEgiwuKb6PPbaQssAlr4Ea9G8hIoX+JX0wSvn7STYaFiBYV/2sw+qIibB8nAV6yOn+yH9JNah+IGqhxhIDhkqM95tI7uqJGWHoqYRLyrw7tVaomxtl3QZYJp21gGWoQE2nE7qaxFIVbu6wyezmuHUwhRIJs274wGDhpWhooptl7rzSQWYDH7VkH35JqndgY6qchrS55K9W7nNIKuSVH7DCEqpAEmAF28Z5bi5wb1W34MBc5Xek0NmXg7WnEro6ijZrMauqSoIetibbq9lvw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(316002)(66446008)(110136005)(52536014)(86362001)(9686003)(6506007)(4326008)(8676002)(64756008)(478600001)(71200400001)(186003)(5660300002)(26005)(76116006)(66556008)(66476007)(66946007)(2906002)(44832011)(55016002)(8936002)(7696005)(33656002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: t2DxwYewJWPwa8pRhXqJzPu3/wQexIOyM6HwkFwGVQs0QhyapwVj3adE9A51egEMwAycBWa5CglRK/Yv72mess8U+yZkVo3twWIzhvqxJWnvlh7q37IYBHjL6JWg/pt4HFsImqF1d+BIskVyMBLk4zFHK1r6rYvrY2+DNKgex6Tbzhiq+jKd2PbpUWJ7HPwUbCkm1q29hEKJniZgP6+UBRFzX86lRMBxPWMLboS44Ih8mnemv2E6utefjGb7lihAAIwv2x5VZ0PfgtgbVLozjGpycNBgPPe8XmBY7NeRa4utbI1opglrhF3Op8zK2YIJg4fT8K1bRaDP0FmQM1f9EU2jPbqpR8Y6uo/EAbrwRS9Vo9NkaM/3QXhypM8ODQLHbTG+QuLAuDG3VfXrMhk0AKO62gchWIQox5b8cjNcw7sIsbyCENt95JqbEdeLEp3oAIkXG9SV1f0HoL4xJuSLguEpQ4xQZvBgkGGwm+A2dHBJZ/TiecAsollcrZcweTeM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc4d6417-e03a-490a-6b15-08d7fba00693
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 02:55:01.9328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LioajL3hkRwfBj3tNYCWIOQX7Th9AhYQiYaqXpavxcYevH8pxuRE1rOesdlTWRryZSfDz5XE1Eo6AcwLN7lXQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_195505_403367_F886ED6D 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.50 listed in wl.mailspike.net]
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
> Sent: Monday, May 18, 2020 6:04 PM
> 
> Convert the i.MX reset binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add the compatible strings per SoC;
> 	- use "reset-controller" as node name instead of src;
> 	- add interrupt items description.
> ---
>  .../devicetree/bindings/reset/fsl,imx-src.txt      | 49 -----------
>  .../devicetree/bindings/reset/fsl,imx-src.yaml     | 98
> ++++++++++++++++++++++
>  2 files changed, 98 insertions(+), 49 deletions(-)  delete mode 100644
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
> index 0000000..7cd6095
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> +---

[...]

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
> +    oneOf:
> +      - description: on i.MX51 the following compatible must be specified

Unnecessary description

Otherwise:

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> +        items:
> +          - const: "fsl,imx51-src"
> +
> +      - description: on i.MX50 the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx50-src"
> +          - const: "fsl,imx51-src"
> +
> +      - description: on i.MX53 the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx53-src"
> +          - const: "fsl,imx51-src"
> +
> +      - description: on i.MX6Q the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx6q-src"
> +          - const: "fsl,imx51-src"
> +
> +      - description: on i.MX6SX the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx6sx-src"
> +          - const: "fsl,imx51-src"
> +
> +      - description: on i.MX6SL the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx6sl-src"
> +          - const: "fsl,imx51-src"
> +
> +      - description: on i.MX6UL the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx6ul-src"
> +          - const: "fsl,imx51-src"
> +
> +      - description: on i.MX6SLL the following compatibles must be specified
> +        items:
> +          - const: "fsl,imx6sll-src"
> +          - const: "fsl,imx51-src"
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: SRC interrupt
> +      - description: CPU WDOG interrupts out of SRC
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
> +    reset-controller@73fd0000 {
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
