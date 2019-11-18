Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C279CFFD82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 04:56:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jxD/Mn5gY/lpzbomAS4fsVMePdFHbm7xt+qc7A4vio=; b=F/xrG++1nBtuz8
	3iFgfeISKkIw6zFmmoUTUBpo/75JL2mbb4dqd2yWycqG6UkKP/BTXhiVF5dEHRlp0XK9CA53PjADK
	0g2STqQ2gGQ0YnpUhRyEVHBc0YjwJTfqdNbjV8GkPhJqx1IH1CTvMb6xQq/yqJqTYuEv4SCXS27tm
	U2Jd2JX+NGOxgQ7sOPvmz2b0DtbfhNvLLQF/HbA5ktK7efPZ69KlQb4k5peZLvj/E1MtkSGe9WfAE
	rhyrSoZ0LOpqYrdNFS6HrwM359xssjRsi9D5IhBvnzfpO7ed0D5Wub55+38DP+XiKqbbnlcD/QFpk
	rLS/7KU529Zdhzdm1NKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWY95-0006gV-GW; Mon, 18 Nov 2019 03:56:11 +0000
Received: from mail-eopbgr730056.outbound.protection.outlook.com
 ([40.107.73.56] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWY8w-0006g4-0Z
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 03:56:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uwr0eiW6B7BtiupCkDrEQwr5DXoZUWCz8Z4a4/Hq8Cix7RVVcQJzCxi60IkZymM0zPCP2HwWb1xblwDvqkO+LwODwr/zl2H3wGPYvnkvifdIOMjvLCa6B2nLvcRVwJE1/GkjZ0jrgiLUicMylpkA+2/AgeVHBNbnn+9aqxOsQQJ/2Lwr/z/iJoEYidnzaVaHkEFS6cOtVrv6TQH08kQHfP5q/H+rZ+JONDnq7/JgRhH4MOERlGhF2biDFMJJKAzOORwr1+N0hKNo0v8eXKZewaxrrTCVFUmgVu7tSQYVsONcb4ZbhKr4xJVtlK4Pcsl21TmIHgZdQiwFBsAlmeqEWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9eYL9Ao6QqC25nNrr33sI+SvhtxEGKhQ3MotCVBhsvA=;
 b=Zz6u4aTyWra0LlO1cyD2JdBEHd4dXJJP2pyOpiMBn8glcL5/N13UpNTCoGznUGDA5sbUVa+LeoAYpbTNzyXg0eR2zRgwrbZkowd3jLoWZxoZCAN8jjxJtBq2wpEuMtVqFbzRp/FK8NFpwZfJPUdeL/GaTNNPaJGfRKlqIOCeNUhoFCVnI9C9+NIQ1kSwFtwAkh2vVotBD4VsMATvznen/jWjQCetzN1ex3z0c0vrR8IS0X2ccjXvain/wUnxLGgs9zZ1x09uw082KEuybk5NWsJ+rCZsK9F0NxBkQvW7yezJKV3v8P6EijS2H9bi32w+JCwlUJIgbHrJNkQafVbqxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9eYL9Ao6QqC25nNrr33sI+SvhtxEGKhQ3MotCVBhsvA=;
 b=PVa0I+65e52z52KAYfq/8gJ+ZvYpBaNKNhpdjYF3YP0laSY5sgkAuBYpsTuB9hFKJgQx+cvJxl9yJX4EhvFvxfL5Jczn7OpfIXzgwzmLn9/WffaU1xUeT0yZO0sgUoWlkKazfneOjh2SOIrXza6vdReK9Pw9d8RIlzQoDMjJyQo=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (52.132.174.207) by
 MN2PR02MB6687.namprd02.prod.outlook.com (52.135.50.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Mon, 18 Nov 2019 03:55:56 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::7c98:7d3:f15a:27f]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::7c98:7d3:f15a:27f%3]) with mapi id 15.20.2451.029; Mon, 18 Nov 2019
 03:55:56 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic properties
 for mmc
Thread-Topic: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic properties
 for mmc
Thread-Index: AQHVkHqBcCBapDuL00GCzGyd3h/hfad7qj+AgAojF2CACplXgA==
Date: Mon, 18 Nov 2019 03:55:56 +0000
Message-ID: <MN2PR02MB6029D9F42B920927DF7813EEC14D0@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
 <1572588353-110682-5-git-send-email-manish.narani@xilinx.com>
 <20191104231427.GA7606@bogus>
 <MN2PR02MB6029D371F580123CB32BE148C1740@MN2PR02MB6029.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB6029D371F580123CB32BE148C1740@MN2PR02MB6029.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [183.83.139.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fc92a5c6-cadb-4a87-2462-08d76bdb3721
x-ms-traffictypediagnostic: MN2PR02MB6687:|MN2PR02MB6687:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB6687B6E12F14DB9B21834866C14D0@MN2PR02MB6687.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0225B0D5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(136003)(366004)(396003)(376002)(189003)(199004)(13464003)(305945005)(8676002)(81156014)(81166006)(33656002)(8936002)(66556008)(64756008)(66446008)(66946007)(9686003)(66476007)(107886003)(55016002)(486006)(6436002)(229853002)(26005)(71190400001)(478600001)(14454004)(6506007)(446003)(76176011)(7696005)(186003)(53546011)(2906002)(476003)(11346002)(256004)(14444005)(99286004)(316002)(54906003)(71200400001)(86362001)(3846002)(6116002)(102836004)(6246003)(25786009)(7736002)(74316002)(7416002)(66066001)(5660300002)(4326008)(6916009)(76116006)(52536014)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6687;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rOZrp0mVJmr7AF7YHnfNrC2O9Ve2tHtyaAxPlMS+RwFeAIQYu+OCEEY1FwJY9Famof+/gNizlcLoN8VBEk0AHu7RtnWQ6Vw/Spi/CJoPdFlMg6bXqWrAZjLfL9opEKQaUWGtkTTH5N/Gpg90Q75wZicXCqnvcMwTZk7u/gXWzeSvYfKPvxx8E2M/1NGZer76UG2nc6SnRN5sPySvXIRCxQ3AkuWj8Bvu4BUJpOiYRDomhyPpWw8KY/rqeOeH10v0nQs3mCKhy6peiYDBocua3g4Hc6ERGSs7G/OJTPb0evbk0KUulu9aQ1z09Sup64cAhTIQVenfefhZ3if94fOg6AgmVLVSVUqM9WqQphYyDBD8Ta99Hm1lQ/ZVxzTFNHb2RKFFiKhXKkmyblr5bStEEa1AYLNXZMLkal7sEvhzTeMf7nY4LwcAx9tGZwS8+/Lb
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc92a5c6-cadb-4a87-2462-08d76bdb3721
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 03:55:56.1394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PHLkQiB/6Omxrs/SOYjfYtWaBt5NOwAdj1VP7xBvqPuYXFMlVIjAnqoC4guvtRA9qjaI8CsJX9GGUjahXxLfyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6687
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_195602_062796_3B8581A8 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Michal Simek <michals@xilinx.com>, git <git@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> -----Original Message-----
> From: Manish Narani
> Sent: Monday, November 11, 2019 3:38 PM
> To: Rob Herring <robh@kernel.org>
> Cc: ulf.hansson@linaro.org; mark.rutland@arm.com;
> adrian.hunter@intel.com; Michal Simek <michals@xilinx.com>; Jolly Shah
> <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Rajan Vaja
> <RAJANV@xilinx.com>; linux-mmc@vger.kernel.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; git <git@xilinx.com>
> Subject: RE: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic properties
> for mmc
> 
> Hi Rob,
> 
> 
> > -----Original Message-----
> > From: Rob Herring <robh@kernel.org>
> > Sent: Tuesday, November 5, 2019 4:44 AM
> > To: Manish Narani <MNARANI@xilinx.com>
> > Cc: ulf.hansson@linaro.org; mark.rutland@arm.com;
> > adrian.hunter@intel.com; Michal Simek <michals@xilinx.com>; Jolly Shah
> > <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Rajan
> Vaja
> > <RAJANV@xilinx.com>; linux-mmc@vger.kernel.org;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; git <git@xilinx.com>
> > Subject: Re: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic
> > properties for mmc
> >
> > On Fri, Nov 01, 2019 at 11:35:49AM +0530, Manish Narani wrote:
> > > Add optional properties for mmc hosts which are used to set clk delays
> > > for different speed modes in the controller.
> > >
> > > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > > ---
> > >  .../bindings/mmc/mmc-controller.yaml          | 92 +++++++++++++++++++
> > >  1 file changed, 92 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/mmc/mmc-
> controller.yaml
> > b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > > index 080754e0ef35..87a83d966851 100644
> > > --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > > +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > > @@ -212,6 +212,98 @@ properties:
> > >      description:
> > >        eMMC HS400 enhanced strobe mode is supported
> > >
> > > +  # Below mentioned are the clock (phase) delays which are to be
> > configured
> > > +  # in the controller while switching to particular speed mode. The range
> > > +  # of values are 0 to 359 degrees.
> > > +
> > > +  clk-phase-legacy:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for Legacy Mode.
> > > +
> > > +  clk-phase-mmc-hs:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair degrees for MMC HS.
> > > +
> > > +  clk-phase-sd-hs:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SD HS.
> > > +
> > > +  clk-phase-uhs-sdr12:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SDR12.
> > > +
> > > +  clk-phase-uhs-sdr25:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SDR25.
> > > +
> > > +  clk-phase-uhs-sdr50:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SDR50.
> > > +
> > > +  clk-phase-uhs-sdr104:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SDR104.
> > > +
> > > +  clk-phase-uhs-ddr50:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SD DDR50.
> > > +
> > > +  clk-phase-mmc-ddr52:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for MMC DDR52.
> > > +
> > > +  clk-phase-mmc-hs200:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for MMC HS200.
> > > +
> > > +  clk-phase-mmc-hs400:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for MMC HS400.
> >
> > This can be condensed into:
> >
> > patternProperties:
> >
> > "^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-
> > (sdr(12|25|50|104)|ddr50))$":
> >
> > Or if you want to divide them between SD and MMC ones, that would be
> > fine for me.
> 
> Below change should work? Please review.
> 
> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -333,6 +333,16 @@ patternProperties:
>      required:
>        - reg
> 
> +  "^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-
> (sdr(12|25|50|104)|ddr50))$":
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359
> +    description:
> +      Set the clock (phase) delays which are to be configured in the
> +      controller while switching to particular speed mode. These values
> +      are in pair of degrees.
> +
>  dependencies:
>    cd-debounce-delay-ms: [ cd-gpios ]
>    fixed-emmc-driver-type: [ non-removable ]
> @@ -351,6 +361,7 @@ examples:
>          keep-power-in-suspend;
>          wakeup-source;
>          mmc-pwrseq = <&sdhci0_pwrseq>;
> +        clk-phase-sd-hs = <63>, <72>;
>      };
> 
>    - |


Any comment on above change?

Thanks,
Manish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
