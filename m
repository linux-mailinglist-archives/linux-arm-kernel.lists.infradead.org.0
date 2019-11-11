Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72004F715E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:08:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyDSKjIgAnmqf6kaE1m23UQd/8xsgevdC2xKIX6LRp8=; b=tzIQYE2qD4U1k1
	31NEyE1tS9Y66GDOS/vs+qo1rQbmfFtEb1lRbFokdOgnul8tcEoodOXCNSetIRvFiprHCydJAcMFJ
	931AYhxMowEW1yncYs8Ma0rkzB0yxF0pPFQDlPW4Csj/A+fEHXOQ504FMaEWVN4mGO+3IbYXuGedG
	ZzJLP96cJ8QUM1C8LTGu88YByknVfxozBCuYn8PDWweM8nM6yaJ6zYL359gGfhRjp8S8m8WPSPBQ+
	IpbgvLF3HITrS15Zo0U/88mgppzdHKbBs9FbTd51kcMxZg62P9VnmvR9bahF5k8bip9DcOU9oL8oL
	qUtLgCyO/W2v56y4BJkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6c2-0002LC-56; Mon, 11 Nov 2019 10:07:58 +0000
Received: from mail-eopbgr700056.outbound.protection.outlook.com
 ([40.107.70.56] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6bo-0002KV-Kb
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:07:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/mdbG3lwq0t7a4SRYLm4RFbeSbMdRJXQeMvzUR8EvnIz/QldQjfNiByUTpJ0hwVueJ8areDDfjKV991eqkShoWErOMwICFUsj+y8X3xgjY1bN7XA6Fjs18uMm+fC6rUUrDr4AxfMO6JwrYcC9EFeC1VaI10u4MN/d18nYS+mU6oJw+1cAEa8RjZP2Ft/gjCnQrNcYh0J81CnT7cPmjKHbtiyVdmXrFwh7jrctI02ieElFLzYcozvfg+Ea9KzC0Nvmn6nOFGKY5OCz6IIx+dT/Pa1cQginaDsKJh8uUek7DWJQDC8pcvBDm4mp95Fe5vfCTsSldHEgYpNAfSe3dxZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P1tzBBQdTc0VJTTTfMcMbtrx8bQpf4qsqBt3In9OZ+0=;
 b=HO7Hpzg3AnfWacY5Euw//WcKqh5mHepZF8Lb8GwfDR6UcXi72OjQpxnOwDDA+3J+15SnyGUvR8S8Wxx30cDUpiZVmbG3ZJquFV/1UohnZQFeuz+aJMnmItvpMTBdLsj57DDkthu2yoVjhx2Fn1P0l+Ianatf6kk+Q51efODRfglxtjZPKRu6YMVKZqIu+zHRAV5WgI4Bi7ttkfzXT5lYmqzN5kvH9Vhixv51sSfMydafm9nR79oaHW9Gdlph1H1NFVWUqrF6wDnM3iLStupbMc3dDeNl6cgFwNCtsdFOOOL5iPP3T4ZVn6JIbhsJ6whYrTMy7jJ/BNbKmSR82YcJYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P1tzBBQdTc0VJTTTfMcMbtrx8bQpf4qsqBt3In9OZ+0=;
 b=e9oC1zTs6pre5uvCz0khZgyWRjKwqoioZF0be6yx4SSM0Rler18txT57pZC5QW31WCNaawM3ulU4jjS2T0oMVRcGkg+2RTQN1ckNpITyaEtEsbeWmnwsDoyCwcnHrYUa96V49xBGRLihhbHaJHu1Me/3GpWSzqNLxYQT4XqHWDk=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (52.132.174.207) by
 MN2PR02MB6429.namprd02.prod.outlook.com (52.132.172.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Mon, 11 Nov 2019 10:07:38 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::7c98:7d3:f15a:27f]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::7c98:7d3:f15a:27f%3]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 10:07:38 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic properties
 for mmc
Thread-Topic: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic properties
 for mmc
Thread-Index: AQHVkHqBcCBapDuL00GCzGyd3h/hfad7qj+AgAojF2A=
Date: Mon, 11 Nov 2019 10:07:37 +0000
Message-ID: <MN2PR02MB6029D371F580123CB32BE148C1740@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
 <1572588353-110682-5-git-send-email-manish.narani@xilinx.com>
 <20191104231427.GA7606@bogus>
In-Reply-To: <20191104231427.GA7606@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2f62a6d2-f43d-4488-2fb0-08d7668efb4b
x-ms-traffictypediagnostic: MN2PR02MB6429:|MN2PR02MB6429:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB642999F18C15BAFE91305F36C1740@MN2PR02MB6429.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(376002)(39860400002)(136003)(13464003)(199004)(189003)(6436002)(186003)(54906003)(107886003)(86362001)(66446008)(74316002)(6116002)(305945005)(55016002)(66066001)(66946007)(66476007)(66556008)(76116006)(64756008)(102836004)(14444005)(256004)(316002)(53546011)(6246003)(71200400001)(71190400001)(229853002)(478600001)(81156014)(7736002)(6506007)(6916009)(76176011)(7696005)(9686003)(81166006)(25786009)(14454004)(26005)(33656002)(99286004)(11346002)(7416002)(2906002)(4326008)(476003)(8936002)(5660300002)(8676002)(52536014)(486006)(3846002)(446003)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6429;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0PqwUlr9GQ42Ws9EGD4hMSvyHYfcOAo1uJWtFo2a+ooWPa+LIeumfOKIQbSrw8mWrPPbFkqtn3xSyj+O8BJhW1yxjUIM01fXOmnLm07woIeeGZSg/hpauWfhnenQDEsnr6yva6Wnkz2B4H/wFoivLJFqPAlSTC0KPlY3qwx3szTzAv8XF6C9GPq7kwX+ziKMl5nN8J6BGrqUO4AmrT+966u+8sQTejBZwnmhlmvpyB1SF6dQXlV3vSim2yoxfoLCTIYfDhkIoaW56Hv7z9bD9bjUbagGTgQcYNNNi4hRuSz+FXuti9Gq/2ASFS3a35MGYu7kJ/oO3TTpCK+Ox39tLHYzFMjwva8m5Pfq9Qksxz+UhGpRlaXnMONYXXkFRqP1jJgNK4RO84OCR15yEU30HRZQTfZbBo2K0uWd7f7i5PspHsQ9+2z+ES41erd93DbD
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f62a6d2-f43d-4488-2fb0-08d7668efb4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 10:07:38.0534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QgazfYqm8otzNZT4mDmCUqlfu4qugG2BMVsEExGigG6ZHxVMnzBlkwggtihVthqxgDiv2DOc5XrJ26TK8VdK9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6429
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_020744_680414_E2D21770 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
> From: Rob Herring <robh@kernel.org>
> Sent: Tuesday, November 5, 2019 4:44 AM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: ulf.hansson@linaro.org; mark.rutland@arm.com;
> adrian.hunter@intel.com; Michal Simek <michals@xilinx.com>; Jolly Shah
> <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Rajan Vaja
> <RAJANV@xilinx.com>; linux-mmc@vger.kernel.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; git <git@xilinx.com>
> Subject: Re: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic
> properties for mmc
> 
> On Fri, Nov 01, 2019 at 11:35:49AM +0530, Manish Narani wrote:
> > Add optional properties for mmc hosts which are used to set clk delays
> > for different speed modes in the controller.
> >
> > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > ---
> >  .../bindings/mmc/mmc-controller.yaml          | 92 +++++++++++++++++++
> >  1 file changed, 92 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > index 080754e0ef35..87a83d966851 100644
> > --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > @@ -212,6 +212,98 @@ properties:
> >      description:
> >        eMMC HS400 enhanced strobe mode is supported
> >
> > +  # Below mentioned are the clock (phase) delays which are to be
> configured
> > +  # in the controller while switching to particular speed mode. The range
> > +  # of values are 0 to 359 degrees.
> > +
> > +  clk-phase-legacy:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for Legacy Mode.
> > +
> > +  clk-phase-mmc-hs:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair degrees for MMC HS.
> > +
> > +  clk-phase-sd-hs:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for SD HS.
> > +
> > +  clk-phase-uhs-sdr12:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for SDR12.
> > +
> > +  clk-phase-uhs-sdr25:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for SDR25.
> > +
> > +  clk-phase-uhs-sdr50:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for SDR50.
> > +
> > +  clk-phase-uhs-sdr104:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for SDR104.
> > +
> > +  clk-phase-uhs-ddr50:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for SD DDR50.
> > +
> > +  clk-phase-mmc-ddr52:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for MMC DDR52.
> > +
> > +  clk-phase-mmc-hs200:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for MMC HS200.
> > +
> > +  clk-phase-mmc-hs400:
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - minimum: 0
> > +      - maximum: 359
> > +    description:
> > +      Input/Output Clock Delay pair in degrees for MMC HS400.
> 
> This can be condensed into:
> 
> patternProperties:
> 
> "^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-
> (sdr(12|25|50|104)|ddr50))$":
> 
> Or if you want to divide them between SD and MMC ones, that would be
> fine for me.

Below change should work? Please review.

--- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
@@ -333,6 +333,16 @@ patternProperties:
     required:
       - reg

+  "^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-(sdr(12|25|50|104)|ddr50))$":
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Set the clock (phase) delays which are to be configured in the
+      controller while switching to particular speed mode. These values
+      are in pair of degrees.
+
 dependencies:
   cd-debounce-delay-ms: [ cd-gpios ]
   fixed-emmc-driver-type: [ non-removable ]
@@ -351,6 +361,7 @@ examples:
         keep-power-in-suspend;
         wakeup-source;
         mmc-pwrseq = <&sdhci0_pwrseq>;
+        clk-phase-sd-hs = <63>, <72>;
     };

   - |

Thanks,
Manish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
