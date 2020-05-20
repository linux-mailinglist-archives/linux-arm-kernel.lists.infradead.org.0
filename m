Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAAF1DACD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:04:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ct1fsBhn80c2WRB02uVnxQQ/qAC3/z1ge3Un2zxXLGk=; b=pvWiQowxkKLfOZ
	RI2Bv0dX4WvXew3mF2b0/dZx2tDeQTOf6VVR/zb9EE5aND1oIPAFPLltJ1y3rsY8Xt+XN0oXk0b6l
	ekKFKydQPyOxEWiJpw1mE5sRJDBl0Gal7QLHBcLK2tGK6l51pEJrxpSTqQfPBvkbTfVs9UcnROkvb
	QsZdP2jXHiGy4bdYjiPOxoXfHgMYrnl6D7TGA85cBZPeP7ksGzdL099+glrkA3BepGjIV+jZo/hN9
	Kgg2jEFOhw7vUWRzUAa9/yBI9Sw29icn3dzLbT+POtqTCEGJWrYd9yE+mh8ZWdQ/QJ75wQ/HBR1h6
	wVDn4xr/zJFiM5UCFFyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJi1-0007WJ-F5; Wed, 20 May 2020 08:04:13 +0000
Received: from mail-eopbgr80085.outbound.protection.outlook.com ([40.107.8.85]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJhq-0007Ve-MW
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:04:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LqLs0R8aHFD0Z+Qp2p0lij3Keg0ABREXz/faUS4y9a/WqSXNPfqkc0JILTt3+xKzcr2SK2nMmyHXjbuh4pcbZgOWOj1//T0cGqm/mGFUwtOcPpGppdkXH2AYCto3zZC6rSZ8X16n8tDODrc6pxmbV2Wbynx1i9Yu0pPaPhONcUcGt7qHTXx1FAsiKo+T5Z91JkfY0twdwIoyD+wkj8wvqVk546JNGmuJvAbC2Tb5SWdBzB9UEpGavOD8Tx4uRvhLQHUHLHucr2ZuDjq8nvTfZjtlVqY0f60/I9y/kH+7m4dtPu7X5S2wEIUKF/PEgT8Sp4rurK2C4tt/bhOGKeiMfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=djm4ykrzIh685Ihgr1jovCY6GBt92z40W4Z1dgXLTA0=;
 b=DNlatJ/6PlPXvj5dIepaEHBWIAWm/21kxWqtCVTkBHJvxnTOm8dU4qbwhpSAGerrYAbSLnlaK8IhjbvJNFc2nIpKFuaUgAcLCyeMQiXa18h4/AezSa4FC+S1KqSdPgc51N8Im1MiINcAoougymlmR/0AkoF63VrfUOnv3sJbIY1HOTRPECANquBMxufjzH8HWNL85KHUVHFrWI5j+W7PVPQyaWqjkQhOzPa/q5euAQYR0cKkpmaVgabfrhtfDqd7PF7S2ffMJZyDqaZXMzZxGspjBufhbVMRwHqLpRzPxt8IqF017Czy27XkOVy21/hSm76h8pksMjaouf3m2kGyZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=djm4ykrzIh685Ihgr1jovCY6GBt92z40W4Z1dgXLTA0=;
 b=ldprSHueqUk82/1HnNWzTkQQfEYCZe+npYvPEqA0IaoQKx6lzNpHvovF7r4ZAcPJt9YY0BENFussw1vNH8SQClsWUidGbntzwHJ6bmKClRMunT667LwogrhbfGvoB2YoXCwDZru57Bf8kkRGpWW0pYfP8jQ1ryUNUsZgVRzIXQ0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3915.eurprd04.prod.outlook.com (2603:10a6:8:e::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Wed, 20 May
 2020 08:03:57 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 08:03:57 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "rui.zhang@intel.com"
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
Thread-Index: AQHWLm2mA+HT3r0LW0SOVkVMMBmKlqiwl6oAgAAEz2A=
Date: Wed, 20 May 2020 08:03:57 +0000
Message-ID: <DB3PR0402MB3916B45468AD8B69D6F318FDF5B60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1589954560-10810-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966F875F2E04D0F6FC3AE3A80B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966F875F2E04D0F6FC3AE3A80B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 648a8d58-57b9-45a8-d64d-08d7fc945918
x-ms-traffictypediagnostic: DB3PR0402MB3915:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3915AF9944B3370F89F6DE21F5B60@DB3PR0402MB3915.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:586;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VaI6P/am5P3RPjFyDIiPyHD9nOBDHcVz7/QXIyzJvCWUXW/FNmndzvYF6k72GN0jVKYen+HepSobEzllurSaAJsbMP9AoFTETNR5vauqYZgCn8Sklkul+P5KegI2Tdj66o1g9rvkrmpnjWVQReDiTGqOZ3UjgJVURi4bpbmlbxk+iRHjM7SbL2fGQfFXAFPGzklYmcFxKnfQv2vgd7bTlfjIMLKYjNze6bE1nLeYKGcFSpXCV2JAtfqNsEpreXWooapGRuHzZw8+zHYeq+4OKR0nYVJf5WBkz1mObkUto4+oDGSS6g9Gj3Mq32ZJnH35BOg9EGuQb1Wo0kkgpA0NI8yEFBX9BvVOIfD8y1Y6EKixrytPyn1IzP1dg4g89tC0hn4wIaleCuBMGaAFfLQrysH2uATNtwg0BUyI0H6DOLmWwLJBLbujCek8QmUc8LuRi8eXbMmt6veX1L08ObPCJsPDwM+EZa2HJRYuBea7s7M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(396003)(376002)(7696005)(8676002)(71200400001)(9686003)(55016002)(7416002)(478600001)(86362001)(5660300002)(33656002)(8936002)(52536014)(186003)(44832011)(26005)(2906002)(4326008)(6506007)(316002)(66446008)(66476007)(110136005)(66556008)(64756008)(66946007)(76116006)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: DemBxdYx0BqvVLntZz29OkGFlRBg8OBKp975Gmi0ZVmN56cgL9Ata7dQPrWrCea2m+eaaVplsZ1OktxYNM0wKp6pWcDZfH1z7rpTsfGxslEwdXmjaS9k7GFKDvb4OeqCM9AoXxsq7SKLTFe12BoHZQuBxIEkxTZYJBnLG1TJW9FUN5DpeKfKzqBD7KrHsHtgIjFx7rZwILuYSvZFCAKBDSBsZKUlvTl0xQHtGVqfRIX+wsnbmN1G4Y6KaM8FDN+BDj3WPkDXiaJblPVaZL/dRIHxZcW80XEWXxG+Cs+lqvz6zA977ecpYj5rLjVF8Xo/Dou3USCKt9B8D2TqPebeDUsMxmf6A5gYCABRZ4P22GFvpfiTRUqtfM5tOnFWcm4E+HfYzDs43f+EJKOeFRRV7JtVFUcqCnxxna+/5/HLEo1FW/n2Jc35dpg9Z/II3TFmmBBnJxwEB7tTeZNb39mxIg93ApOVUjHGe2LVzR9se3fbCYS1Ua/kaLBJPyHOOlXJ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 648a8d58-57b9-45a8-d64d-08d7fc945918
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 08:03:57.5444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tpn6d5SYV1SAfH2TNMmOXfICd44NwKJxhmkGaxaTUYn3lBgGAqImL4dkd4jOVf+G8OzVkD8BfUZUukWR14HkHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3915
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_010402_736547_C13A38A0 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.85 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.85 listed in list.dnswl.org]
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



> Subject: RE: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Wednesday, May 20, 2020 2:03 PM
> >
> > Convert the i.MX thermal binding to DT schema format using json-schema
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- move tempmon node into its parent node anatop in example;
> > 	- improve "fsl,tempmon" description.
> > ---
> >  .../devicetree/bindings/thermal/imx-thermal.txt    |  61 -------------
> >  .../devicetree/bindings/thermal/imx-thermal.yaml   | 100
> 
> [...]
> 
> > +title: NXP i.MX Thermal Binding
> > +
> > +maintainers:
> > +  - Shawn Guo <shawn.guo@linaro.org>
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> 
> Drop Unnecessary properties

Will use enum directly.

> 
> > +          - enum:
> > +              - fsl,imx6q-tempmon
> > +              - fsl,imx6sx-tempmon
> > +              - fsl,imx7d-tempmon
> > +
> > +  interrupts:
> > +    description: |
> > +      The interrupt output of the controller, the IRQ will be triggered
> > +      when temperature is higher than high threshold.
> > +    maxItems: 1
> 
> You'd better explain why interrupts number is changed in the new binding
> compared to the original one. Probably add in commit message if really
> needed.

There is ONLY 1 interrupt output from temperature to GIC, some platforms like
i.MX6SX/i.MX7D has 2 more secondary interrupts inside anatop which shares same output
interrupt to GIC, these 2 interrupts are NOT used for now, so from the high level
description of the interrupt, should be ONLY 1 interrupt item I think.

> 
> > +
> > +  nvmem-cells:
> > +    description: |
> > +      Phandle to the calibration cells provided by ocotp for calibration
> > +      data and temperature grade.
> 
> Better describe for each of them as you did for clocks

Will do in V3.

> 
> > +    maxItems: 2
> > +
> > +  nvmem-cell-names:
> > +    maxItems: 2
> > +    items:
> > +      - const: calib
> > +      - const: temp_grade
> > +
> > +  fsl,tempmon:
> > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> > +    description: Phandle to the register map node.
> 
> What register map? A bit ambiguous..

Temperature sensor registers, will add more detail in V3.

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
