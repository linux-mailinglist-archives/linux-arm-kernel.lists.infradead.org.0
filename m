Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B571A3603
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U87NpmQ/C5dhL+uGbY0xX4IufbqrvLYIbIZ+G4flzlg=; b=ba9AnbFEBVWGa1
	9EJgly2jKzX0UxQrt4FKPP9uKybrvxIQvxTzjAnnkLsLB0gN4ecWfkZMPuyccJiePwwPUb64xtDLU
	Y20y75Ua24PjlWSEhI+G+dmmj3UOgKAo97cDOy/ZbWkDvy0vCUXVO4D6b4zti2SEjNEqFAitnUp4B
	qfVuKBcQLQzx1Kf4nJkqnGjxga0rRZFdCMbNMzAMIPHaaS3VFPtQJfN5vbcDDKTuUeefQIoDdQ6JB
	Klm7QlvdqYZmqaIfyy87MhEQlZ5vVlmDDoa1RQ/tMVA1l9m16POMF/Pxu8Ue45ZCDc8av0rzqIyce
	nkCmq66aiVmpvkqFCzLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYGI-0000CN-J1; Thu, 09 Apr 2020 14:34:34 +0000
Received: from mail-eopbgr60086.outbound.protection.outlook.com ([40.107.6.86]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYG9-0000Bs-TN
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:34:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQ+lOZikE5Bk1dE6R1GbvEgb4Jl4o48cJnwzSTASD4Ncbljtw87Fk982nRX+lrGZV8kFmF+Cx9QD6fGxsFnzZQWYuOiuRBvfmpAwjAnQ/bLx4sT5r6qAnlyFmVLEB0C/bt2ic/iPvMSjWVfvENEori/0iDRwu2Ui9GeN3gq0Mk5ik6NacfNAAC5r5S7lTzoTtvZsCx6torxwASXfpjpKF3cUeLK9hi7UFI65KLilRJIL7mRO6FoNC2c5ZZNQ9k76kRo11JUjAVTJN8gnjPFsPi5/g3kYG+F/BOZAHlYgX4H0MAZd/+VRIUa+iyEvKovbSaBqryl+rvN3zcHq31iAPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sbxFBM3q6AggP7jzj2h1Lr/XBoftt6xbZTf9G5NDZM0=;
 b=HEBffpuBEo2aiNVn9+eooygBsBCIIZloBWrwHAn3pa1bQlxq4PULulWwYW2ksFCnSOE6ri0I8sy43flEl/dUYk/zrJnOfTHG/+Us7b7tTBUhjUnxS50cj+Jdue+sbhiohe3O1dR+uEP74fOvy0hX9skEr1htSnGZ2NqvgorXwH79njLBUuUr3rffD3FArs5hfxNrY+/w/0cB7Y50iLEnV1QuMOwFrtf+EMpU69KyqSSIhHKkJS8hawoy4XsUF9Bek65cY7evWD7OTjbCKwTzW4tTlAtVfPJFGdnxDjebWpVuoAorN7a6HJUd+AGrtRJI7fOkOBdwsDZBw/+hzkfLIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sbxFBM3q6AggP7jzj2h1Lr/XBoftt6xbZTf9G5NDZM0=;
 b=O1vm9jnob/Drviw1WsUftd/465DQBcaOkZwUueEpd2FC5y60x9vNyYRqZE4Bf3swvvHiiGrfri/3bGxonvKp2hhkHklMlg5WMYkvvb6705V89uoBlHtP92Kmdrw3wTieZCodRLNGq/3xfnP+70mF6bwxOPCZ1dMHvXIYLtJmgHk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3690.eurprd04.prod.outlook.com (2603:10a6:8:c::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.21; Thu, 9 Apr
 2020 14:34:21 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2878.017; Thu, 9 Apr 2020
 14:34:21 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: RE: [PATCH] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Topic: [PATCH] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Index: AQHWDiuxzN1tABlsX0ym+KN40NJHh6hwzuIAgAALCHA=
Date: Thu, 9 Apr 2020 14:34:21 +0000
Message-ID: <DB3PR0402MB3916F4F4BD5B0DC083E76183F5C10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1586407908-27139-1-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerPi36z4z4DLmP9czEp8aw8yQq7EHAtHdCFLO2ZVYBZsRA@mail.gmail.com>
In-Reply-To: <CAHLCerPi36z4z4DLmP9czEp8aw8yQq7EHAtHdCFLO2ZVYBZsRA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 832ffcf9-aefd-48c9-436b-08d7dc931824
x-ms-traffictypediagnostic: DB3PR0402MB3690:|DB3PR0402MB3690:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36901A6DC8B786C37DE62A76F5C10@DB3PR0402MB3690.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(366004)(396003)(376002)(5660300002)(66556008)(478600001)(8936002)(76116006)(55016002)(52536014)(64756008)(6916009)(83080400001)(66446008)(66476007)(7416002)(81166007)(9686003)(71200400001)(66946007)(8676002)(26005)(81156014)(44832011)(33656002)(6506007)(54906003)(45080400002)(53546011)(186003)(7696005)(86362001)(2906002)(4326008)(316002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vx8oF+PWYaEYx4gyqOHPUVjc9J4Q0VH74xx25wKuqqDQuLcEQz/sDTeTG5u1OjTfR6OI+nBqhGwFAcO7GerPV0Hw5PRqfbLEtTYzyAZfBywzOYVzwyYyaNtzmTGFt3EGO2dTvzaC7SNy0uyP1J1DBxJB3rs4oIoyJWc8Zi77CI7XlbXMZGOs1+ZIArfJx2oXQnkZAUMbjXmWBCjZdAZwuRXAIClcbR+ilpwM4sTT/Jz/I5omQTAzisCb7wLfBHSnFogCyXrkqrlO9SZc+FuMJOff/tMB70UAvAjmYEcgfTo1joKfGG14yI4draiavVA7TR+RsarJj9kwjWV2s9Fj1ootOE0q7ackIplmkQ5+Yga+KWMuhUL9SaF4lwSQgqZwujwOmuYTtzs3miOhMJMNb4bnBr5aJZJzfhCMocet5/A/0qkxHoUxk+UW+pN9Up87PkipcKjxlri0p1aZRb9yXnALw8duGJfB7dRGLAZa9F0U7uTj/87TGxCZcULig+8mSkvhFfxgB4i7bnPVAIlCGw==
x-ms-exchange-antispam-messagedata: V3hOX6wmDXjVRPuyGy7ZUiiUX+LJHyNv808aWuRIpnBlV34JnMxrO2rp7f+117OPt4FWK0zE3kfmbTWZZQCvXzbiBV3ibIewX6EYy7fREx5WggKvgZpGWxD//LCKJ295+CXihzJ3zFzoFPV37vDdrw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 832ffcf9-aefd-48c9-436b-08d7dc931824
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 14:34:21.8508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pTBero+aWl2A3WTSI4nKJpc4jQ2Fb15cGkIBdy0f+NLfNYcdhsmQJ4HpKoDFyd3vAXsh/e+iKSFnbEYGdZICMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3690
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_073426_086101_6B42D51A 
X-CRM114-Status: GOOD (  26.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.86 listed in list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Amit

> Subject: Re: [PATCH] dt-bindings: thermal: Convert i.MX to json-schema
> 
> Hi Anson,
> 
> On Thu, Apr 9, 2020 at 10:29 AM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> >
> > Convert the i.MX thermal binding to DT schema format using json-schema
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  .../devicetree/bindings/thermal/imx-thermal.txt    | 61 --------------
> >  .../devicetree/bindings/thermal/imx-thermal.yaml   | 97
> ++++++++++++++++++++++
> >  2 files changed, 97 insertions(+), 61 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/thermal/imx-thermal.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > b/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > deleted file mode 100644
> > index 823e417..0000000
> > --- a/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > +++ /dev/null
> > @@ -1,61 +0,0 @@
> > -* Temperature Monitor (TEMPMON) on Freescale i.MX SoCs
> > -
> > -Required properties:
> > -- compatible : must be one of following:
> > -  - "fsl,imx6q-tempmon" for i.MX6Q,
> > -  - "fsl,imx6sx-tempmon" for i.MX6SX,
> > -  - "fsl,imx7d-tempmon" for i.MX7S/D.
> > -- interrupts : the interrupt output of the controller:
> > -  i.MX6Q has one IRQ which will be triggered when temperature is
> > higher than high threshold,
> > -  i.MX6SX and i.MX7S/D have two more IRQs than i.MX6Q, one is IRQ_LOW
> > and the other is IRQ_PANIC,
> > -  when temperature is below than low threshold, IRQ_LOW will be
> > triggered, when temperature
> > -  is higher than panic threshold, system will auto reboot by SRC module.
> > -- fsl,tempmon : phandle pointer to system controller that contains
> > TEMPMON
> > -  control registers, e.g. ANATOP on imx6q.
> > -- nvmem-cells: A phandle to the calibration cells provided by ocotp.
> > -- nvmem-cell-names: Should be "calib", "temp_grade".
> > -
> > -Deprecated properties:
> > -- fsl,tempmon-data : phandle pointer to fuse controller that contains
> > TEMPMON
> > -  calibration data, e.g. OCOTP on imx6q.  The details about
> > calibration data
> > -  can be found in SoC Reference Manual.
> > -
> > -Direct access to OCOTP via fsl,tempmon-data is incorrect on some
> > newer chips -because it does not handle OCOTP clock requirements.
> > -
> > -Optional properties:
> > -- clocks : thermal sensor's clock source.
> > -
> > -Example:
> > -ocotp: ocotp@21bc000 {
> > -       #address-cells = <1>;
> > -       #size-cells = <1>;
> > -       compatible = "fsl,imx6sx-ocotp", "syscon";
> > -       reg = <0x021bc000 0x4000>;
> > -       clocks = <&clks IMX6SX_CLK_OCOTP>;
> > -
> > -       tempmon_calib: calib@38 {
> > -               reg = <0x38 4>;
> > -       };
> > -
> > -       tempmon_temp_grade: temp-grade@20 {
> > -               reg = <0x20 4>;
> > -       };
> > -};
> > -
> > -tempmon: tempmon {
> > -       compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
> > -       interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> > -       fsl,tempmon = <&anatop>;
> > -       nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> > -       nvmem-cell-names = "calib", "temp_grade";
> > -       clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> > -};
> > -
> > -Legacy method (Deprecated):
> > -tempmon {
> > -       compatible = "fsl,imx6q-tempmon";
> > -       fsl,tempmon = <&anatop>;
> > -       fsl,tempmon-data = <&ocotp>;
> > -       clocks = <&clks 172>;
> > -};
> > diff --git
> > a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> > b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> > new file mode 100644
> > index 0000000..ad12622
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> > @@ -0,0 +1,97 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fschemas%2Fthermal%2Fimx-thermal.yaml%23&amp;data=02%
> 7C01
> >
> +%7Canson.huang%40nxp.com%7C408494436dca450abb5d08d7dc8cc727%7
> C686ea1d
> >
> +3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637220369539115517&amp;s
> data=e3R5
> > +q1YhIRLSOVdLYJWVlbOdqdjxYHNJMcXz%2Bxb1kjc%3D&amp;reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> >
> +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cans
> on.hua
> >
> +ng%40nxp.com%7C408494436dca450abb5d08d7dc8cc727%7C686ea1d3bc
> 2b4c6fa92
> >
> +cd99c5c301635%7C0%7C1%7C637220369539125508&amp;sdata=VjZ%2FPJ
> BVQc9jpc
> > +H3Hvvc2fYy70B%2Fmun0mxdvSHHktEU%3D&amp;reserved=0
> > +
> > +title: NXP i.MX Thermal Binding
> > +
> > +maintainers:
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - fsl,imx6q-tempmon
> > +              - fsl,imx6sx-tempmon
> > +              - fsl,imx7d-tempmon
> > +
> 
> > +  interrupts:
> > +    description: |
> > +      The interrupt output of the controller, the IRQ will be triggered
> > +      when temperature is higher than high threshold.
> > +    maxItems: 1
> > +
> 
> imx6sx and imx7d have 3 interrupts each. So you need an if clause to change
> the interrupt number based on what compatible is provided. See
> qcom-tsens.yaml for an example.

I noticed this, yes, i.MX6SX/7D has 3 interrupts, but the driver actually ONLY uses
the high irq, low and panic irq are NOT used. So for such scenario, binding doc should
still mention all of them?

> 
> > +  nvmem-cells:
> > +    description: |
> > +      Phandle to the calibration cells provided by ocotp for calibration
> > +      data and temperature grade.
> > +    maxItems: 2
> > +
> > +  nvmem-cell-names:
> > +    maxItems: 2
> > +    items:
> > +      - const: calib
> > +      - const: temp_grade
> > +
> > +  fsl,tempmon:
> > +    description: |
> > +      Phandle pointer to system controller that contains TEMPMON
> control
> > +      registers, e.g. ANATOP on imx6q.
> > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> 
> Nit: move $ref line above description. IMO it makes the binding easier to read.

OK.

> 
> > +
> > +  fsl,tempmon-data:
> > +    description: |
> > +      Deprecated property, phandle pointer to fuse controller that
> contains
> > +      TEMPMON calibration data, e.g. OCOTP on imx6q. The details about
> > +      calibration data can be found in SoC Reference Manual.
> > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> 
> Nit: move $ref line above description. IMO it makes the binding easier to read.

OK.

> 
> > +
> > +  clocks:
> > +    description: |
> > +      Thermal sensor's clock source.
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - interrupts
> > +  - fsl,tempmon
> > +  - clocks
> 
> Clocks was an optional property before, are you sure?

I misunderstand the 'optional', the clock is always necessary, ONLY for those SoCs have
no thermal clock available, then it is unnecessary. Now I see, I will make it as optional.

I will add example for #thermal-sensor-cells property you mentioned in the other mail.

Thanks,
Anson

> 
> > +  - nvmem-cells
> > +  - nvmem-cell-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/imx6sx-clock.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    ocotp: ocotp@21bc000 {
> > +         #address-cells = <1>;
> > +         #size-cells = <1>;
> > +         compatible = "fsl,imx6sx-ocotp", "syscon";
> > +         reg = <0x021bc000 0x4000>;
> > +         clocks = <&clks IMX6SX_CLK_OCOTP>;
> > +
> > +         tempmon_calib: calib@38 {
> > +             reg = <0x38 4>;
> > +         };
> > +
> > +         tempmon_temp_grade: temp-grade@20 {
> > +             reg = <0x20 4>;
> > +         };
> > +    };
> > +
> > +    tempmon: tempmon {
> > +         compatible = "fsl,imx6sx-tempmon";
> > +         interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> > +         fsl,tempmon = <&anatop>;
> > +         nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> > +         nvmem-cell-names = "calib", "temp_grade";
> > +         clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> > +    };
> > +
> > +...
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
