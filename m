Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F888713E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t36PLIOnt2AyQVv5h/HvQgRBRwTpoer0nFgxHIE7LC8=; b=jwEDljATtVntP6
	4GmvrFo6OhbgcbUgX1BgtqXtW0MzexjOKLneIXz8AyvurnI5heqCUBCeZO9dxWKfN3Gvw1d6GQnuo
	EvZ75XJa0J9bwnHrzleyPqIJFVOLOHr1MxkDKpQsfAIhZ/nq7/HLVliTjzO8dwpPXzyYBV2BC4kJG
	xDlBSlZFaZw2s8l3QV6tpVCIEwdCRTrf0cwVL0gDaBNUpMMS+cbV+JarZE14xduYC6Nf9b+52NzMe
	8CWN/CLkWNLc6KMOTWia0GClV2l0RsZ8aOhGPEL39qGa2khCtYJQO2v2622KebFJXBqx4A6p+sBvf
	gjHoV+edgBkJbPgDgbYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpq5J-0006Cw-HE; Tue, 23 Jul 2019 08:23:45 +0000
Received: from mail-eopbgr760054.outbound.protection.outlook.com
 ([40.107.76.54] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpq53-0006C3-Jc; Tue, 23 Jul 2019 08:23:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FKxMxGK3ziLTEZsCjNtYxzEUmEzzed/s7ETcI/9mCaG+U8NvMbB78/4tWxf1F+goHkzXjSEZUwFt65Yq9+05VtKSnY6a1N+x2xY2fCDQaPVzSZ5g8nu/tDblmMDycE6JvQYvfmg3sq7/xyoLJEJm5TXwgbWRrJBRRBm+2xyuWddj8Q33S5cWWjjq9p2qSNrd+IodaoVVZaCDHgV8qJIogp122Cmp+Ao+RFnpzm7WX48t5skdh+XEVri7Vw0YibF9wideInM1YMJNcoWtiie3zosfcCooga5vfh/tDJiIvpQR+8kAXJt7CKAUnMumX6IHVLrlh6QyPxFy//GifkdZdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YPX6JcgOBidVMQHV2VmehgH5dRVwd521AxNmx5EhSus=;
 b=L9ZEe+bdAOQogNW7aRkmBJAhVN6ZzzpO4nZdpEW5jx1zHkGx3NSEzcPoOz7Itebrom/bFBaWY3aYn+8f5x57HvV8tDTA07bQb8COf9Qxxkn0KXX8FPuFZ/AMgtmb3kR5v4fXljWWWx7AmxiP5DK5ThZJshnw4GBHXbLlpongNh2ZBB9Hzd0cuWZcLrakf3jtCkLs2GukwZAibM5cNCivl6PkHd2FaGhYPRIvF+SwDmxCQIt6fI/OLwuW/jgXqCV/OTu0bq3YHdiQULHCJfWZGpSDBEWqq0vtOZ3ZmOGgUH7vQShXufJ8dbph6y094Tgdq89iSsRTyX4GQ+KY1ZQaMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=xilinx.com;dmarc=pass action=none
 header.from=xilinx.com;dkim=pass header.d=xilinx.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YPX6JcgOBidVMQHV2VmehgH5dRVwd521AxNmx5EhSus=;
 b=T5VeRDGa+2KYg+0SlgfvPtITiBpDddgtaQ98PacxW35+kPIM3zJrGbv/gxmnYseFWfw0dSXdh1lyjGS6twa/c3mcgT2MC+V3ww6K8up32xp5fH1qdOc+MZNG3F4SLHUE7OWCsj+2oyTZYTK1SzaW9XalEt76Z0r2UP2NGjJMu7c=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (10.255.7.10) by
 MN2PR02MB6399.namprd02.prod.outlook.com (52.132.175.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.15; Tue, 23 Jul 2019 08:23:26 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e880:6205:6aac:21a3]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e880:6205:6aac:21a3%7]) with mapi id 15.20.2094.017; Tue, 23 Jul 2019
 08:23:26 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Rob Herring <robh@kernel.org>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>
Subject: RE: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update documentation
 for SD Card Clock
Thread-Topic: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update documentation
 for SD Card Clock
Thread-Index: AQHVL84QKtDrcydqmkObCTy1mFTFVabXUFgAgAB7vdA=
Date: Tue, 23 Jul 2019 08:23:25 +0000
Message-ID: <MN2PR02MB602907616249FF19C1A737D8C1C70@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-2-git-send-email-manish.narani@xilinx.com>
 <20190722215404.GA28292@bogus>
In-Reply-To: <20190722215404.GA28292@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9b81b681-6c0e-4204-0aac-08d70f4708c3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB6399; 
x-ms-traffictypediagnostic: MN2PR02MB6399:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR02MB63990D20E3F604676B97052EC1C70@MN2PR02MB6399.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(39860400002)(136003)(346002)(13464003)(199004)(189003)(9686003)(110136005)(99286004)(54906003)(316002)(33656002)(55016002)(478600001)(6306002)(2501003)(4326008)(5660300002)(6116002)(6246003)(3846002)(52536014)(15650500001)(66066001)(7416002)(53936002)(486006)(2906002)(305945005)(68736007)(71190400001)(66556008)(14444005)(25786009)(256004)(71200400001)(102836004)(53546011)(76176011)(86362001)(14454004)(6506007)(229853002)(26005)(7696005)(11346002)(81166006)(81156014)(186003)(8676002)(446003)(7736002)(74316002)(66946007)(66476007)(64756008)(66446008)(6436002)(8936002)(476003)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6399;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5hNUdacevXvJyNj59HWRjwZmfixe5W4Nl1FQQhafMnfnHE7YMP54ghIqi7neXYPjXrIqY41xKwVamSZslWCQSOjRGj3eEarQwHUWZbLfvZXQIqevUB8qbgq92z4HtCHhxC7M9a6RT/3LUN2j7etfPjI8BuRjOHvC7Qz3nFN5xL2h5rmHay/bkCBsVS7aNs59lsRFO7qyrilIuv/1PN9hYQNAdeZZJwd9p8/NlbeTtj3iuKb9ns9LUUiMEbMLvBIeZ7lfDL7cZqHESpuME3DMgdKyz89N2dV25S+jmFCu7YMDSUEuhPH12ojbFyz7lfpi3VNcjqmvaf2iJRW+ItFog9fttv8ONQt5bcONoWwh52bqiuKUhEz6ZZyWyvbaQOW6NkJhKMVKodUF9CUMjnPP2bcHzmxrWADgbkn8f7GIc6o=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b81b681-6c0e-4204-0aac-08d70f4708c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 08:23:25.7260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnarani@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_012329_644195_315ED825 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "kernel@esmil.dk" <kernel@esmil.dk>, "heiko@sntech.de" <heiko@sntech.de>,
 "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "ayaka@soulik.info" <ayaka@soulik.info>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 "tony.xie@rock-chips.com" <tony.xie@rock-chips.com>,
 Michal Simek <michals@xilinx.com>, "mdf@kernel.org" <mdf@kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "philipp.tomsich@theobroma-systems.com"
 <philipp.tomsich@theobroma-systems.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thanks a lot for the review!


> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Tuesday, July 23, 2019 3:24 AM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: ulf.hansson@linaro.org; mark.rutland@arm.com; heiko@sntech.de; Michal
> Simek <michals@xilinx.com>; adrian.hunter@intel.com;
> christoph.muellner@theobroma-systems.com; philipp.tomsich@theobroma-
> systems.com; viresh.kumar@linaro.org; scott.branden@broadcom.com;
> ayaka@soulik.info; kernel@esmil.dk; tony.xie@rock-chips.com; Rajan Vaja
> <RAJANV@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>; Nava kishore Manne
> <navam@xilinx.com>; mdf@kernel.org; olof@lixom.net; linux-
> mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> rockchip@lists.infradead.org
> Subject: Re: [PATCH v2 01/11] dt-bindings: mmc: arasan: Update
> documentation for SD Card Clock
> 
> On Mon, Jul 01, 2019 at 10:59:41AM +0530, Manish Narani wrote:
> > The clock handling is to be updated in the Arasan SDHCI. As the
> > 'devm_clk_register' is deprecated in the clock framework, this needs to
> > specify one more clock named 'clk_sdcard' to get the clock in the driver
> > via 'devm_clk_get()'. This clock represents the clock from controller to
> > the card.
> 
> Please explain why in terms of the binding, not some driver calls.
Okay.

> 
> 
> > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > ---
> >  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 15 ++++++++++-
> ----
> >  1 file changed, 10 insertions(+), 5 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > index 1edbb04..15c6397 100644
> > --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > @@ -23,6 +23,10 @@ Required Properties:
> >    - reg: From mmc bindings: Register location and length.
> >    - clocks: From clock bindings: Handles to clock inputs.
> >    - clock-names: From clock bindings: Tuple including "clk_xin" and "clk_ahb"
> > +		 Apart from these two there is one more optional clock which
> > +		 is "clk_sdcard". This clock represents output clock from
> > +		 controller and card. This must be specified when #clock-cells
> > +		 is specified.
> >    - interrupts: Interrupt specifier
> >
> >  Required Properties for "arasan,sdhci-5.1":
> > @@ -36,9 +40,10 @@ Optional Properties:
> >    - clock-output-names: If specified, this will be the name of the card clock
> >      which will be exposed by this device.  Required if #clock-cells is
> >      specified.
> > -  - #clock-cells: If specified this should be the value <0>.  With this property
> > -    in place we will export a clock representing the Card Clock.  This clock
> > -    is expected to be consumed by our PHY.  You must also specify
> > +  - #clock-cells: If specified this should be the value <0>. With this
> > +    property in place we will export one clock representing the Card
> > +    Clock. This clock is expected to be consumed by our PHY. You must also
> > +    specify
> 
> specify what?
I think this line was already there, I missed to correct it, Will update in v3.

> 
> The 3rd clock input I assume? This statement means any existing users
> with 2 clock inputs and #clock-cells are in error now. Is that correct?
Yes, this is correct. So far there was only one vendor using '#clock-cells'  which is Rockchip. I have sent DT patch (02/11) for that also.
Here this is needed as earlier implementation isn't correct as suggested by Uffe. (https://lkml.org/lkml/2019/6/20/486) .

Thanks,
Manish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
