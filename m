Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A079F1D0919
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 08:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfRe3a1B4Z89TZzall94ry9tMkBllRv/KV9UHQ+5L98=; b=QgHV0PG+aZriL8
	Fmpje8Tae83KepLKjF+68P3X9IlfGTMXcDXOCQYTxOBXp9PK2w+ee8+1S9/jOqQvzceYYkLxWLKHU
	n2do/dQ23hUAsRWDrNRwB8B38RufVnWGrLgxMzGhMWXgHVC3CNpj5xBOj3tQzALjK55Tq4IwApWBE
	K/rLMEEArGwIZHIxw/d8WLIaKB4OIxB5CJvHFcBaweGYPWN5X9n9Goh5LlnzGdNNHJEJf/wiRBPld
	fHDnftOFntXui0qpnl8kRkjvvx0hQ5YgPuSoUz3MFyNl4QZkU5ZkrJdlp32wOnfimc2amUorrfi/X
	gKQHCI8ocRIs6hIyxO8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYlIy-0003D5-Mr; Wed, 13 May 2020 06:55:48 +0000
Received: from mail-eopbgr10085.outbound.protection.outlook.com ([40.107.1.85]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYlIq-0003C8-P2
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 06:55:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RrXyYq3/ceNKiRxD8ZV9eFMh7VwrKsCDfRapuDwbBroGXk8p9s8/mqDHuQ054/NNsYWpytMHiWg55yrk7vb6OidU3hm0Gd6N7LK2EkR5f0UQ2AVGG2XWRFkHBWsiaLS3gNuovgQcuY+2EueUwszl5r7Pk7acMwQlflwPduDutVG4PvH86UrZLx9+a55GJYbRpHmmSLf0pHuSfgl8hceQFF1KjmL39X2H2A9V/KiKZd//uZp/PAdioai3OMvFLht1/zEK9WtZ6xjenN1tNNZEZlyUlMMdn65NCmgfDL9FgOzz5+eRDTdoGdkuj4hZzrKlxmqMGxWLdgzWxooQUynrIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5c2Yzw4kRMjBQ8JYRZ1YuBfjY8Idal0B9Izj7kqlOUg=;
 b=dATQjH8kthuGhaTrSeDdWEh0UeYwjmGG/8YUHoK99To7OljumtRc2E+FvpdjnXphjVnX1EoWeuNz4m4SCsV5ItTc11B/0ux6iToUpMiK7Zem3iyMGNdDSpjkKqd7Wj4gVJryRJBQCsbIQ1Hx5ScJQkWhwLkgf+iFNMvTS+jm4smcYAj9ydau3vzMwc8KIqXXsq3tUaKl9pOHnTLntb9Wiim6aKvso06Jb/rH12uCl3WWRLQuwV+P0MVO+BTYAjasqNGRXUd4TCMe4PQEGxKc/58mwtjv/J73cqZf9THVM1lwAFglpqpxAv0br8lZSG+zjZHN6qbDs3B0CyuP4N8yng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5c2Yzw4kRMjBQ8JYRZ1YuBfjY8Idal0B9Izj7kqlOUg=;
 b=H3f4+nIZtY0G5u+KWvyBL1t6P5juPTq+ODIhvhycnCQA3mTQOOGYTgtQWD5kHT/9ti0iUjaV7TBwDrJqdh6QwTtbInpuRyWuVuFV2jEJjL7E7RiHCdmIBNxGruERzuariKOsM3hQqAw2VzqYzfYGo35QjCvs3h/vjcKNLLv7e6A=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3769.eurprd04.prod.outlook.com (2603:10a6:8:f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Wed, 13 May
 2020 06:55:35 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.2979.033; Wed, 13 May 2020
 06:55:35 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Topic: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
Thread-Index: AQHWDtWuHhuFKGSv1ECuhQdSmjVzK6iCZy4AgAFNxdCAIhNSMA==
Date: Wed, 13 May 2020 06:55:34 +0000
Message-ID: <DB3PR0402MB39167476CE5FA107505A78C5F5BF0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1586480844-19227-1-git-send-email-Anson.Huang@nxp.com>
 <20200420183512.GA5483@bogus>
 <DB3PR0402MB3916B60832507A72F39750EAF5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916B60832507A72F39750EAF5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e591871a-57d0-427b-c039-08d7f70aa2ee
x-ms-traffictypediagnostic: DB3PR0402MB3769:|DB3PR0402MB3769:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3769A305ED54C1760B2B2C1FF5BF0@DB3PR0402MB3769.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q9XtqJBZ0j4IBcYfJEbBmotp6dKCj7EjRMQJLbbGEfT1jD2Rn/7k04G2Ud0iubX3xldSwWM1P72aDpSWsp+fMcZiQcqDKf4cVaUTOOtBPAKNMFYRBNw560TrjJRMa+fPDOXkJP8MyDtSJ+Xo4ZW88RN7csIfdhJ/y1UgnYjU0liqdbzAlzACR0ChDbpOW1jUhKTNdgo0VsVjOnW/FivD8l3rofYeDdsUF2Hm0txlL5mNLX9KbFzyjt7h+d6UQd6TDM0H5EYHxn9uRQn6qF9q7BwBv9J/ZOXGAMr6L0hb46bU2qOOd3SHr+g8E4Cpa6m3P38hZlQk8KoDcItGZflnoTKpXuUzs836h2akacZm4gpuAQ3IEFSMwflN3iUs/p/EAdChtAO3rQSRSF6HxfGAoUI5ooNYvOKkdpTaV4Ow0/df86EupI+6MWeoi8NoT9o/YYw+HI8XzO1D5w5h2TYVjLOGgTlyMbmc4D37vasbMoI33tDrCXgYlhX+3/3EjFIWKal3gpz1ryAGyVxqthBkWw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(346002)(39860400002)(376002)(136003)(33430700001)(6916009)(55016002)(4326008)(8936002)(52536014)(5660300002)(66476007)(66946007)(478600001)(66556008)(66446008)(33440700001)(76116006)(33656002)(64756008)(54906003)(316002)(9686003)(71200400001)(7696005)(186003)(26005)(86362001)(8676002)(7416002)(2906002)(44832011)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: LW4c1UDqc6VBmvvTnwL+FTUtMrVAQvf3LNO+iehSQhrpig8uc/lyINhccsdaERLmzFh+9XLR63msbPcPel5Csd81wDPix4Myvi0QBhJ27gH0T/iRJ3GnOuemVfysAEqMEmiuBwr3zUetMWFoOoLc5g4aDt68lvXqzseg9sLW/gvUtflS5Aswtr1U13sKIvvbi0QEUkcZ75u1VBtPw0w7fyGxOdAj8PacxH5F/uNxJSYPEQnrg1RbD6Rxbfx7apdmQ7n68LZ0dBmFYHuW+Rk8Xj23BlW7EQYoB5g79vtQkzzop0YPGRevFWcXYzE1TOkC0Ytu/wxu1TPR2hXEQIllxKM+bWnjUVzoLXs3kEuXofXb4Hl+6ITcg0KwGOPlj2CjiihDDki2KXYf+S0AZD8vOJ0PvCI2Sgc8gFFIVdAGZC+E6D7agXdroxcQVyPH8IBeJuO1XJ8Dul+QvSiGOK2Js+ux/m05pXzb2ZMq4wC7iu4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e591871a-57d0-427b-c039-08d7f70aa2ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 06:55:35.0464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FZNozB8sYIG2UzAi6yIQ3dYvBNBmddacCaP9p+Lab+NuAnFRUBG/OqCiRPOyAA2u81jhqvjQ9P0KdwiZFjFkhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_235540_815215_E07DFB68 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.85 listed in wl.mailspike.net]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob

> Subject: RE: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
> 
> Hi, Rob
> 
> 
> > Subject: Re: [PATCH V2] dt-bindings: thermal: Convert i.MX to
> > json-schema
> >
> > On Fri, Apr 10, 2020 at 09:07:24AM +0800, Anson Huang wrote:
> > > Convert the i.MX thermal binding to DT schema format using
> > > json-schema
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > Changes since V1:
> > > 	- make clock property optional.
> > > ---
> > >  .../devicetree/bindings/thermal/imx-thermal.txt    | 61 --------------
> > >  .../devicetree/bindings/thermal/imx-thermal.yaml   | 96
> > ++++++++++++++++++++++
> > >  2 files changed, 96 insertions(+), 61 deletions(-)  delete mode
> > > 100644 Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > >  create mode 100644
> > > Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > > b/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > > deleted file mode 100644
> > > index 823e417..0000000
> > > +
> > > +title: NXP i.MX Thermal Binding
> > > +
> > > +maintainers:
> > > +  - Anson Huang <Anson.Huang@nxp.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> > > +          - enum:
> > > +              - fsl,imx6q-tempmon
> > > +              - fsl,imx6sx-tempmon
> > > +              - fsl,imx7d-tempmon
> > > +
> > > +  interrupts:
> > > +    description: |
> > > +      The interrupt output of the controller, the IRQ will be triggered
> > > +      when temperature is higher than high threshold.
> > > +    maxItems: 1
> > > +
> > > +  nvmem-cells:
> > > +    description: |
> > > +      Phandle to the calibration cells provided by ocotp for calibration
> > > +      data and temperature grade.
> > > +    maxItems: 2
> > > +
> > > +  nvmem-cell-names:
> > > +    maxItems: 2
> > > +    items:
> > > +      - const: calib
> > > +      - const: temp_grade
> > > +
> > > +  fsl,tempmon:
> > > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> > > +    description: |
> > > +      Phandle pointer to system controller that contains TEMPMON
> > control
> > > +      registers, e.g. ANATOP on imx6q.
> >
> > Really, this should have been a child of the system controller. Not
> > too late to do that, but you'd need to keep this for compatibility.
> 
> Sorry, I don't quite get your point, can you provide more details or example,
> thanks.

I guess you meant the tempmon node should be put inside anatop node? Then
DT files also needs to be changed? Right? 

 anatop: anatop@20c8000 {
         compatible = "fsl,imx6sx-anatop", "fsl,imx6q-anatop",
         "syscon", "simple-mfd";
         reg = <0x020c8000 0x1000>;
         interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
                   <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>,
                   <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
 ...
 };

 tempmon: tempmon {
         compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
         interrupt-parent = <&gpc>;
         interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
         fsl,tempmon = <&anatop>;
         nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
         nvmem-cell-names = "calib", "temp_grade";
         clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
  };

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
