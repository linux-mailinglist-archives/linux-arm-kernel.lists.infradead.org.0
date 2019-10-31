Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74DCEABE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:54:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wm5TmaSxJM6fqjxi1IttBWThb5HGaMZ69o0KmiYrAaM=; b=DvdNUxIRod0sNu
	LDcbWHBQD7rEkXUTekVQwKAcszA2No9NhYGR847RcQDkUwVpxYSHAK/zZWeoC0ZuKEbTlijPYOyPN
	9cw7H2AdFIGGJx0lWnsErJVKqpB8sQXuWi8/GO1lFQ31rY4MH2/VN0EnGNX7OJnifmL+Za7Bh7Isb
	pY7EYTy+jhVRpEewOhPxaZCPm00sY9tAGlBcA2N/qhvvisNzIgdFh6FLnHpLGjFmJ1DOn0TIbQ7na
	UdDffx7/zHWsHvUTKOkoWoT5o40AggyM4viJ70QkOzJTOTWrpEkKH3fTvN0CAyOPGQmAvvnK4tLeM
	iC/mLVcHUtVvNoxQ13nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6E7-0005NF-R5; Thu, 31 Oct 2019 08:54:43 +0000
Received: from mail-eopbgr720083.outbound.protection.outlook.com
 ([40.107.72.83] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6Dv-0005Ms-QM
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:54:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BhE8rDXktJoGtjvoWoKZ1Tw88OKqcUDXiGyxwvhOw392UchQj4ucXgpkB1eNkX+Oa+rsvWIS4W1Z049dsI9fxdhg9Ek2ryDAm595XHyymg1zyHwPGNvs0gzvfPCYSAc9wqKmNBUtZQIDiHxxEk8u02bz/hMXA4hcOqgjnrxx5KQvk76ACM64YSX7ef57e1Hb0TUQDzAYwYuG4RNgoQiIObn7N4I8Z44vStptDPUlZB1ZJPxlHzym/iWG3XDCn0+4ovlsCfbNxsNshCHqVBZYEorpYZUChJstTC0JbV4pJ+cO+nooA8Bu60cmnGd2nq+TzCwYG78UGOX2KuZYiD0few==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3iAdrVSZ0w1Lv0YwTulegCXbSbcN8fVpQABmRwr3vP4=;
 b=HjeUI47hMWVZ4vz/3CWwEBnSPLo3qUR5Qjw57IR0pZT3Q6XRqi4j9VI4MesYRumyUHdz4O6XmP53OJaqD5Xo0UyB6U+XHXjlcRRd9pP7965HiMyOzcngkq8pCgjy6cBA7SwvlYuO5xCXoJJl3wBREBPL0n4Mg+RDsDkZPeRDDiUoo7C6KjzDbS1Hw8gsiyJLKItrIz/iekWZflUDvZ4CU31GQ4d9tLSDAuQpuZyoVzwWxe7pVV96FlkFCZu6gJkVvVGtqSaACoLJqWbpBMPruCpNJ1pJyOzubXtfGgmIsMU9Inkws38cHE3M9ZHHtYL70+tvNUZnyeZ4JLDFKyEi5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3iAdrVSZ0w1Lv0YwTulegCXbSbcN8fVpQABmRwr3vP4=;
 b=IQNpmM8TQya9Y+OHrHDZzYKT0UgpPm9pHPFAtaYBJvu6wIH3CkCbxm0b+yxS9RU9KlT3UPrixs6VM8/IZmanVNwucbM4xDCce3kLcJ6MBdpgQcSLxchtIOKa1uk+wuA4XXwtb34DruWTlYS80uZ/cYJ3kGuKrhmDUf/+/QJBjxo=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (52.132.174.207) by
 MN2PR02MB6144.namprd02.prod.outlook.com (52.132.175.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.18; Thu, 31 Oct 2019 08:54:28 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::60f4:2360:4c7d:cad6]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::60f4:2360:4c7d:cad6%5]) with mapi id 15.20.2387.028; Thu, 31 Oct 2019
 08:54:28 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: RE: [PATCH v4 4/8] dt-bindings: mmc: arasan: Add optional properties
 for Arasan SDHCI
Thread-Topic: [PATCH v4 4/8] dt-bindings: mmc: arasan: Add optional properties
 for Arasan SDHCI
Thread-Index: AQHVjkQMPZqKO+Pc1k66gPgz7rOXfKdzSCqAgAEsgNA=
Date: Thu, 31 Oct 2019 08:54:28 +0000
Message-ID: <MN2PR02MB60299A66F6E18111D34983E6C1630@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
 <1572345042-101207-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFqRmFPaiM=AoiWvy5xhYj=fHTt+S1wu8o0W67Nc5ZZ1kA@mail.gmail.com>
In-Reply-To: <CAPDyKFqRmFPaiM=AoiWvy5xhYj=fHTt+S1wu8o0W67Nc5ZZ1kA@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 724239a6-cb55-4773-fb6f-08d75ddff00e
x-ms-traffictypediagnostic: MN2PR02MB6144:|MN2PR02MB6144:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB61443F0EF09A2C28AC9703E9C1630@MN2PR02MB6144.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02070414A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(396003)(376002)(136003)(13464003)(189003)(199004)(26005)(7416002)(11346002)(74316002)(7696005)(229853002)(71190400001)(52536014)(486006)(478600001)(102836004)(6246003)(305945005)(99286004)(6916009)(476003)(66066001)(86362001)(446003)(7736002)(6436002)(9686003)(186003)(53546011)(107886003)(76176011)(5660300002)(55016002)(6506007)(81166006)(54906003)(3846002)(33656002)(8936002)(81156014)(256004)(2906002)(8676002)(6116002)(4326008)(316002)(25786009)(64756008)(66946007)(66476007)(76116006)(66446008)(14454004)(71200400001)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6144;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7hpqiFuHBhn4CSvOUrkryG6PvYjQzN7uJ5/DNWT6E+KhUFSC6INXrV17V89bA0yUtRQ+YAcl16kbkHOAqUIvckWCZAolafUdOnU5d5JkaZ7Jtrc83bdMtrx3i2C83magmENVhwWWN4sM4VMP5t3AlIOreVcpWEcixajKGthu4ad3nULqgO6qOh3ACByxvCewdO3k4/hQFpX8Ys043CzvzxP2wDKZIslTGZtGqzsrjHCIpqX5Qf994TlvaHV27lIhTgricOo84JYSZL/emSTAFpb0NhBwl5sN5WwHdFrJ90xibzo5YLC32sUFvKBOulNidFrm62GToiz/hDa9vGfv1jC3tTUcuh0JUHJVy2Pcy+gThfyE5N4y0Vw2K1ogLFckKbY1hWSzUGSzxkEwbMQN9TuKOgsVfRrixVntYaccvwhUD93VtuXK2p5SxljUlIk8
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 724239a6-cb55-4773-fb6f-08d75ddff00e
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2019 08:54:28.1559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Oe3k0ebyiPztMHk8MINnpXYKnHThzPLuszq+MiXYFmI4Yy410NUO5mSGLbm5VbTa+Olps/A1nFltmjeTm+Rng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_015431_862426_71A1FAFC 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.83 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 git <git@xilinx.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uffe,

Thanks for your comments. Please see below inline.

> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Wednesday, October 30, 2019 8:27 PM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; Adrian Hunter <adrian.hunter@intel.com>;
> Michal Simek <michals@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>; Nava
> kishore Manne <navam@xilinx.com>; Rajan Vaja <RAJANV@xilinx.com>;
> linux-mmc@vger.kernel.org; DTML <devicetree@vger.kernel.org>; Linux
> Kernel Mailing List <linux-kernel@vger.kernel.org>; Linux ARM <linux-arm-
> kernel@lists.infradead.org>; git <git@xilinx.com>
> Subject: Re: [PATCH v4 4/8] dt-bindings: mmc: arasan: Add optional
> properties for Arasan SDHCI
> 
> On Tue, 29 Oct 2019 at 11:30, Manish Narani <manish.narani@xilinx.com>
> wrote:
> >
> > Add optional properties for Arasan SDHCI which are used to set clk delays
> > for different speed modes in the controller.
> >
> > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > ---
> >  .../devicetree/bindings/mmc/arasan,sdhci.txt     | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > index b51e40b2e0c5..c0f505b6cab5 100644
> > --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> > @@ -46,6 +46,22 @@ Optional Properties:
> >      properly. Test mode can be used to force the controller to function.
> >    - xlnx,int-clock-stable-broken: when present, the controller always
> reports
> >      that the internal clock is stable even when it is not.
> > +  - arasan-clk-phase-legacy: Input/Output Clock Delay pair in degrees for
> Legacy Mode.
> > +  - arasan-clk-phase-mmc-hs: Input/Output Clock Delay pair degrees for
> MMC HS.
> > +  - arasan-clk-phase-sd-hs: Input/Output Clock Delay pair in degrees for SD
> HS.
> > +  - arasan-clk-phase-uhs-sdr12: Input/Output Clock Delay pair in degrees
> for SDR12.
> > +  - arasan-clk-phase-uhs-sdr25: Input/Output Clock Delay pair in degrees
> for SDR25.
> > +  - arasan-clk-phase-uhs-sdr50: Input/Output Clock Delay pair in degrees
> for SDR50.
> > +  - arasan-clk-phase-uhs-sdr104: Input/Output Clock Delay pair in degrees
> for SDR104.
> > +  - arasan-clk-phase-uhs-ddr50: Input/Output Clock Delay pair in degrees
> for SD DDR50.
> > +  - arasan-clk-phase-mmc-ddr52: Input/Output Clock Delay pair in degrees
> for MMC DDR52.
> > +  - arasan-clk-phase-mmc-hs200: Input/Output Clock Delay pair in degrees
> for MMC HS200.
> > +  - arasan-clk-phase-mmc-hs400: Input/Output Clock Delay pair in degrees
> for MMC HS400.
> 
> I don't mind if you convert these to common mmc bindings.
> 
> I think other controllers/platforms may find them useful, at least at
> some point, if not already.

That will be a good thing to do indeed. Will send v5 with making these properties as common.

Thanks,
Manish

> 
> > +
> > +  Above mentioned are the clock (phase) delays which are to be
> configured in the
> > +  controller while switching to particular speed mode. The range of values
> are
> > +  0 to 359 degrees. If not specified, driver will configure the default value
> > +  defined for particular mode in it.
> >
> >  Example:
> >         sdhci@e0100000 {
> > --
> > 2.17.1
> >
> 
> Kind regards
> Uffe
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
