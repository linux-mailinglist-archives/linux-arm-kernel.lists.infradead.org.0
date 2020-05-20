Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD49B1DAED9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/LqHU9WkD3gXK1+H+NsRTWCcxzkH9xlsKXOTXmzv0Y=; b=CY3u7u7H737FPU
	o9EEq8Nh60wMbRk7bjXVFJzg4S0oWVwvPmd0/ZyeUwATlBL/zyedqLfYmo4iR+Q0xLdiydt13WUW+
	QkQa6T9y0IYaInxxut/Oy9nAAaaFDqEAws+/quHaWSCmVgX6UymIIfJ28wkmJiLeXvZWMR2oZIUWD
	Nf13p5ZQzt7/2+L9L/ljL97AAHjVzAGVe1PIhwL2CkrdarKStMgJVvofK/xwjWh7NIocry3AD13xc
	ysWi4xNVgjWEO804sVc9JLAOgtKHEkNRNu8owH7xADm13NStwl5I6DKfo3+VtFXB3E6LmSubNzBvh
	7aZTGuc7V1w4HqSb4ldw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbL4u-0000LB-Ph; Wed, 20 May 2020 09:31:56 +0000
Received: from mail-am6eur05on2072.outbound.protection.outlook.com
 ([40.107.22.72] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbL4P-00005m-0D
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:31:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=buwQdp6JVSC9E7A4IVzIEXxc5UBKFScuICzA4ZiuPLyfTJxB7druqfg//E/FZIDN8g4dpJ1CFwztGog4Nd9+ikaM4YimubL0U5PLum01AMyN6D4xsMw+DKxqabxtR2l42Q/MV5iHMai7EVadxHe16iy7WBc4Q4pQYdBdvLX7mZY+Onkdt3iJmY9VqtuCAN7q1G3bw6aFHOqwk2yHjiIhd5naIukyo7cLIy+tUt4yVvNlXBUGYAgAANmBJKBFx189BxJ7yuVzyNmp56pHHqrD53zReBq28pC2ir//96WkumoI9Gi9VnCCThyDjrEG4R815T2wvWz7kPwy0bnXNlxZEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6imZQd5QvjAsK/w75gZaIAn2ZBytQJWptr1GaODbNw4=;
 b=blMevY74mwOFQhn1T6i/JzZ8ROMlvpIKA60kQXoh5pURwOOvASV5JmP9D+2oqnxENySEVP4C32py+Rc1vw3A3/UVdmgD3nkQ0ba/Jd/PnpDndIgpI34nnj3ze/cw4ORsMoC+DD93T1mXgccb7KogflrUAh/sPX8+3WTR+m7wxPkCSjGY3Nq41OG8GTYxAJ1E2bujsoXkUFrzePPJn09kXhXjy9eLW0IA+VvclQbVVvsHLdYGFBBlogce+1lUj2SCyowNnC40oHZOuAjyhh6rmDY40V2sxIG2HUsH+bmz1ll/mkW8siPl9uQjKSYbXtFnhYaGO+PzRGetFGUtsvn+7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6imZQd5QvjAsK/w75gZaIAn2ZBytQJWptr1GaODbNw4=;
 b=H0fsjJc907yEUqmDryceLjduW1sHgky3FNfOi44xk4kx6+rZ9akJrdKng4hQ2LWzdfWVwHqisKVjoUfuz1ZJcp5lZVPut2QqmlmhrdphmcA86f2VL23sgzpUAkB+6HTRJspVLXn8MDFwM6Z6RSLV3ZFlPAka2LsICafikUCBosc=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5861.eurprd04.prod.outlook.com (2603:10a6:20b:a3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 09:31:22 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 09:31:22 +0000
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
Subject: RE: [PATCH V3] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Topic: [PATCH V3] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Index: AQHWLoBrEdWAFmuPzEipjWXU6EAydqiws/Ng
Date: Wed, 20 May 2020 09:31:22 +0000
Message-ID: <AM6PR04MB49663E19585FE55DE39DF46480B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589962619-28256-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589962619-28256-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d930f7bf-2eca-4646-c7e0-08d7fca08f25
x-ms-traffictypediagnostic: AM6PR04MB5861:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5861F15B37D835CFA5DC450E80B60@AM6PR04MB5861.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Igwjbn32o8dhos0HF0hKujL/1L0A914cOXWy0aWPHbYcFC5/cK1GR6iAAtZoEKZ0D9XLa6mekoMsldSx2EBV3S1v7RHhtSJx7cG1SpYOBFB4IFJuK4Tk7H5vDHyNc5ygB+GYkdltxmbBq0cO6JgT/HiHBmP9WIMMdgW/kQTGE/DUAQQE697xvKHYb6JCkSGncNM/rZDTp+aO2hIrfGpX4Q2EW9JsJV2Hsrl/jN0CmnsesRAiMidmwgtV3ddjHwQYk2ojW0aJR3rFocZgVrs37YG3GDCVz7NG0lZa09SCUJN0KcIlxF1urlln9tRbNGDkDYGx41u5RrD8LhRqK2VydgAyFOlIk03L/TU/MpasxH6o9YiGHM59iSP0392acq+oLjAoOdjT95qmkzqZ0c+EJaCrs9Y/2w09Iug5lL99hlDb+86RAJNTIO1y19vaar7RCjrN+CWl8jTUo7yMPEG+g1SDSJw6kLoqSqZINfROuA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(366004)(39860400002)(346002)(136003)(4326008)(26005)(71200400001)(478600001)(5660300002)(55016002)(186003)(44832011)(7696005)(33656002)(6506007)(7416002)(9686003)(66556008)(86362001)(8936002)(52536014)(2906002)(66476007)(8676002)(66446008)(66946007)(316002)(110136005)(76116006)(64756008)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: kPdP+wMFDZXeeTR0xlsdib/dQdKfXH2UAQwCOodndKS/YoyedxisWDJQu98w1o2oCz1eROd77w5Q/7PHOhv98/vDjdHbqMqlDSnQodryuMTvXdB9qr6AxN/vcks4vT6TORegQTZ83vh/iyWsGygPFX8K6DQOufAp/9BBPz0NObCL2o19+9kytXTHTb2DIc3nIVb0mxcymVHPUccLR1MIBe+FM2l5AoKWwYBTteeD0FpAV0XWB9GIFSYript7vTYRz6NnpjWK05TifClYPJ1LtLfSm6JqwdnKdgJb1vqdmPTxY4KqknsvHfd9z5VOGiTPIzMBTfPbt1b7XwJ04ZN/8eRfPONq2j1/3yPAxrRru8ZXVosfXGex2ouhpn/Jmezyo2l+9Nmmbw1pcl7F9gRmI+e9bfosCVwBGeeIzAp3JXu52PIx1x/BLZu4I/21taJeJFJLYfF49OlXjIgHA1SbABh94Dv6jxF2PlRolu+cdo3ew2iaIWYgmjrSvW9pgG3H
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d930f7bf-2eca-4646-c7e0-08d7fca08f25
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 09:31:22.1360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mw+lb+QwqA8fDLFsVMVB8NLKAyaJVeOTGYeX/xRakW3kGCyBtk0dg8JhrqvLCg4Yv9q1OEvV7j96lms2WBQShw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5861
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_023125_217831_471F5215 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.72 listed in wl.mailspike.net]
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
> Sent: Wednesday, May 20, 2020 4:17 PM
> 
> Convert the i.MX thermal binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- remove unnecessary property in compatible;
> 	- add detail description for interrupts;
> 	- add description for each item of nvmem-cells;
> 	- add more detail for "fsl,tempmon" description.

[...]

> +title: NXP i.MX Thermal Binding
> +
> +maintainers:
> +  - Shawn Guo <shawn.guo@linaro.org>
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx6q-tempmon
> +      - fsl,imx6sx-tempmon
> +      - fsl,imx7d-tempmon
> +
> +  interrupts:
> +    description: |
> +      The interrupt output of the controller, i.MX6Q has IRQ_HIGH which
> +      will be triggered when temperature is higher than high threshold,
> +      i.MX6SX and i.MX7S/D have two more IRQs than i.MX6Q, one is
> IRQ_LOW
> +      and the other is IRQ_PANIC, when temperature is lower than low
> +      threshold, IRQ_LOW will be triggered, when temperature is higher
> +      than panic threshold, IRQ_PANIC will be triggered, and system can
> +      be configured to auto reboot by SRC module for IRQ_PANIC. IRQ_HIGH,
> +      IRQ_LOW and IRQ_PANIC share same interrupt output of controller.
> +    maxItems: 1
> +
> +  nvmem-cells:
> +    items:
> +      - description: Phandle to the calibration data provided by ocotp
> +      - description: Phandle to the temperature grade provided by ocotp
> +
> +  nvmem-cell-names:
> +    items:
> +      - const: calib
> +      - const: temp_grade
> +
> +  fsl,tempmon:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: Phandle to the temperature sensor register map node.

This still looks vauge.
How about " Phandle to anatop system controller node"?

Otherwise, you can add my tag:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

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
