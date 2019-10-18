Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AE4DC081
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yglN4k5y7CFNf658BCQH2uaRmU8Oh98tBoB3LmTFshE=; b=qu4bZKQ/UMdaE0
	7ddX1EsIN4LyQAfgcFVF9SIMVp7zRLd5Lbmb/no353C+PFp/QuP7cBiaHijVQWhiSPktiwaROUI9u
	FqglJs2qOaHbs17nK6mTZVjKVEPG2D2aPvaQ4Cn8f4Ct3jNgeNkeFPd0Y+nwiULxUj22igS7r8B/J
	Pam3OUoOnp9D8/ndRpUJmWO4SgveJVpBAVI3stfcMi0iEWo4ssVQOFVqfzToaau6nMSVjnb3x177c
	ToWSdOrGTkEzs5ekrcBgehYv9SXBwrrasNfS8QJTLyw73Th3hZNHotamLfOCcau3e8lkaAt7dujeB
	hxb6plnwQ78t+Z/4BTpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOCK-00069n-5U; Fri, 18 Oct 2019 09:05:24 +0000
Received: from mail-eopbgr820080.outbound.protection.outlook.com
 ([40.107.82.80] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOC7-0005bC-Tt
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 09:05:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWE6u6r6/YjcpHd3pzIEpSxk1g34kgxVXZtv9SkYIGo6bwsj2b7akDec0BEP60Op/lxaFVnYE2nlcH1eTJJWbqMy8aRU33dkcNyfvo/pxYNbuFLjAtlV80U23YdZaoRD7ZlM2m2hFInXwfnIT8zHkabbJ8sVDAbSoeVxfRdh8NuqQ3SJq3AsJ9Bz4SBlJ6egEt5sqWNhpQ7v7DD6dTa9vP7EvnWOWTtOBOV/DRy5cFuF+ZCbz+OnQVX8vjYvX16HulylwZUQuFzsCHjTsrbDIOJQwXREgmReO8uTzK4SdiqnpNmBq+b5FLVb1DR48QWYuNTTM2LpGEoWqr3jItLiaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vdDGdfhKK4DumTJ5T0x8DdxN4eMF0rmum9BgfEUCWM4=;
 b=OztUOh7AS//PkWahUHQsitmxhoW96murHqYLpyFr2t9+iinEgZZm7rskzkzp/HtH1qYX5Z8ACQOp9NID7CnvFznuor8RjkpzHZGZRDA9m/CuL1AmXz7RcbUDIOAK/JH25/h8isZEc3Oo1EPnuYIrbXGSVTmrq40jI5BzTQquSkXoF2sH4niSYhuBQnM5U9NFmw1o/b9OP2qosU9ikOYBakDmUCs6uy1tcPeimv0Gq0TItXiWwPK0qPw0e6S0yfIRmxi5gBcq/kq7pbWFAEj9w7Lmu/mq3GIzaJKUyWRLf2iQUmj33rUbx3UrqqB4OTPvRcsjvfsHawKgRcv+WTqK/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vdDGdfhKK4DumTJ5T0x8DdxN4eMF0rmum9BgfEUCWM4=;
 b=ITsGvMKUSBI4EZmDB84VE4kVK/QRNQFTkE6IhyzEwcpH5anm+YFY7rKexEwWzqBhOWXulFKm7UlRFbG//0cvKjjA9bWeTFSY26687Gvl9hznhYZc6f0maO5oPAvEFR66KgcZhy3NkrepD8JCTmPosxFgElL2WZqCitmF/KdG3Zs=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (52.132.174.207) by
 MN2PR02MB6173.namprd02.prod.outlook.com (52.132.174.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Fri, 18 Oct 2019 09:05:07 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::7830:9d9a:b79a:40e7]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::7830:9d9a:b79a:40e7%6]) with mapi id 15.20.2347.026; Fri, 18 Oct 2019
 09:05:07 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH v3 4/8] dt-bindings: mmc: arasan: Add optional properties
 for Arasan SDHCI
Thread-Topic: [PATCH v3 4/8] dt-bindings: mmc: arasan: Add optional properties
 for Arasan SDHCI
Thread-Index: AQHVhLNB61L4BxlTxk+rSkpwaMUAS6dfJmOAgAD1W5A=
Date: Fri, 18 Oct 2019 09:05:07 +0000
Message-ID: <MN2PR02MB602959AB68B4C88B81359F2EC16C0@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
 <1571293310-92563-5-git-send-email-manish.narani@xilinx.com>
 <20191017182255.GA7053@bogus>
In-Reply-To: <20191017182255.GA7053@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e21799c4-1848-4b8c-7597-08d753aa45ab
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR02MB6173:|MN2PR02MB6173:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB6173A51B5BFC033749BE7F0FC16C0@MN2PR02MB6173.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(366004)(376002)(136003)(199004)(189003)(13464003)(33656002)(6916009)(11346002)(446003)(186003)(66946007)(486006)(476003)(52536014)(66476007)(66556008)(64756008)(66446008)(76116006)(6116002)(3846002)(2906002)(86362001)(256004)(4326008)(6246003)(107886003)(55016002)(6436002)(9686003)(7696005)(99286004)(102836004)(53546011)(6506007)(26005)(76176011)(7736002)(54906003)(229853002)(316002)(71190400001)(14454004)(305945005)(8936002)(71200400001)(66066001)(8676002)(81166006)(5660300002)(81156014)(7416002)(74316002)(25786009)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6173;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VxHAmmWdjgRIP2EZitAtde07idnY7U5xD2BAYbnXwlqwfbvS3dTmakzXk3fWXWjzXkNmrzWR+8Fdn74t8ZbzGiy2XfC6Sy8LIUN92ScWwQXue+WXe6iBeXjtTGNvx9hgh3PuGjcZRlh3umpAOUCJ3pO3Cy9JWZWy+p2LRejdIBwSrkOqdj+GMgtvfUebSjipiUJ7F3p2JMgqzfqgZBPidysOKUBs//JkIboYmS09aHz2VB9M/agIQZ1vAE8fbe4gLWdG8CuxV+XH1pBFjQcQyOVbcJ9rO8QNwd1Si3Ky0C4yIbZeVhbO7wcbEuJSwPvdJhX+jGmZJ5Kwjyx7ep0ijEecXot2yrRk+hU5uVGdsMYWdVMJ/UIjLIiVVtHLuPVmmQxaQxRhBc8X95U9NcO/kuU0Mq6WLSHx75DvbhTlh3E=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e21799c4-1848-4b8c-7597-08d753aa45ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 09:05:07.1916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uk9fl15d0lIRvfHgGexfRRXwH7giT1ypAZe6qjKJr/Qa6wzAtnU5naj8haBlROYCeYlJjapj4SY9izDIB/eJxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_020511_982469_46B1FD19 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "mdf@kernel.org" <mdf@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thank you so much for the review.
Please find my comments inline below.

Thanks,
Manish

> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Thursday, October 17, 2019 11:53 PM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: ulf.hansson@linaro.org; mark.rutland@arm.com; adrian.hunter@intel.com;
> Michal Simek <michals@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>; Rajan
> Vaja <RAJANV@xilinx.com>; Nava kishore Manne <navam@xilinx.com>;
> mdf@kernel.org; linux-mmc@vger.kernel.org; devicetree@vger.kernel.org;
> linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; git
> <git@xilinx.com>
> Subject: Re: [PATCH v3 4/8] dt-bindings: mmc: arasan: Add optional properties
> for Arasan SDHCI
> 
> On Thu, Oct 17, 2019 at 11:51:46AM +0530, Manish Narani wrote:
> > Add optional propeties for Arasan SDHCI which are used to set clk delays
> 
> properties
> 
> > for different speed modes in the controller.
> >
> > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > ---
> >  .../devicetree/bindings/mmc/arasan,sdhci.txt      | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > index b51e40b2e0c5..e0369dd7fb18 100644
> > --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > @@ -46,6 +46,21 @@ Optional Properties:
> >      properly. Test mode can be used to force the controller to function.
> >    - xlnx,int-clock-stable-broken: when present, the controller always reports
> >      that the internal clock is stable even when it is not.
> > +  - clk-phase-legacy: Input/Output Clock Delay pair in degrees for Legacy
> Mode.
> > +  - clk-phase-mmc-hs: Input/Output Clock Delay pair degrees for MMC HS.
> > +  - clk-phase-sd-hs: Input/Output Clock Delay pair in degrees for SD HS.
> > +  - clk-phase-uhs-sdr12: Input/Output Clock Delay pair in degrees for SDR12.
> > +  - clk-phase-uhs-sdr25: Input/Output Clock Delay pair in degrees for SDR25.
> > +  - clk-phase-uhs-sdr50: Input/Output Clock Delay pair in degrees for SDR50.
> > +  - clk-phase-uhs-sdr104: Input/Output Clock Delay pair in degrees for
> SDR104.
> > +  - clk-phase-uhs-ddr50: Input/Output Clock Delay pair in degrees for SD
> DDR50.
> > +  - clk-phase-mmc-ddr52: Input/Output Clock Delay pair in degrees for MMC
> DDR52.
> > +  - clk-phase-mmc-hs200: Input/Output Clock Delay pair in degrees for MMC
> HS200.
> > +  - clk-phase-mmc-hs400: Input/Output Clock Delay pair in degrees for MMC
> HS400.
> 
> Should be common?
Yes, these properties should be common.

> 
> Range of values?
As these values are in degrees, the range of values is 0 to 359 degrees.

Thanks,
Manish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
