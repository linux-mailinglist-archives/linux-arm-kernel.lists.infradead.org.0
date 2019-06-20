Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 982524C955
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9sVfO7KlGCvZlWAk86qjTOL504uc+IGk6i0ybUffec=; b=MSDhG5VIbppTk9
	QHayp2EJ462WJ7RnjX9FDhJvwkeaPE5aj8XYj1hV4+gzsbz+DtHkIHHNVlI9oQzeqBjHhYD4+uNbq
	kP8OkAtYegKquFGl3eXSwpnaIhGcEqBjrlTD9YFQFu+eoaq8TBOJacjGmrjCv9XHQS7hDpS6ElQuL
	2VWNhsfgZ0eWwXFPJyyamEy/FWh3Lu+t0XVjy3akd0kb7hfrEKywU6dqvdMXfh/tq9rK8dQRdvkbl
	obv2lHCFyZ3pHFF5HwJ1smsmGHcLkoGjjjq/4rJtWS0ay4vXZEyAOzAW8c3PmIPVv0IRdTor99Db4
	d19wxRjnrC2p2GWJUQaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsIp-0001l8-07; Thu, 20 Jun 2019 08:20:15 +0000
Received: from mail-eopbgr790074.outbound.protection.outlook.com
 ([40.107.79.74] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsIL-0001h6-0L
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:19:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DxFLcLXTH3avGmzL0qDla75pWUlBsAhIzMnBQJy0aFg=;
 b=NXxnl1vcPo8H6RKEl6nP2DhhJliI+ZVjSiNZmvU4gh9Ld1Gs7MidJI3j2X5gm9VU5FAFTRYuCT0qkj9l80pvXLmNSgbx4GiQH4o0awtc1E0CRAY7xBbPnJTnnJxehUCJgYMumSK8kogZYcXCyrLh7lt9DDx4LIhmS6TdqDhenYw=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (10.255.7.10) by
 MN2PR02MB5917.namprd02.prod.outlook.com (20.179.87.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Thu, 20 Jun 2019 08:19:38 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e55a:e2d1:953f:ed3b]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e55a:e2d1:953f:ed3b%4]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 08:19:38 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: RE: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
Thread-Topic: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
 Platform Tap Delays Setup
Thread-Index: AQHVIDwWKZKZdF95gUaFGq/oqBvspKafu1mAgAADioCAAA8FAIAAIhYAgAAJ3oCAAOY6IIACOVsAgAEmWkA=
Date: Thu, 20 Jun 2019 08:19:38 +0000
Message-ID: <MN2PR02MB6029D633F47B3B0DDF77D841C1E40@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
 <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
 <948514a0-e310-75fd-e8a8-6ef8bb14e41f@xilinx.com>
 <CAPDyKFp6O8rPZDZS4iKJam2+tXeen_ZMOXKw=WVzJNpBXcSc9g@mail.gmail.com>
 <MN2PR02MB60296837F9D1B3088667BE59C1EA0@MN2PR02MB6029.namprd02.prod.outlook.com>
 <CAPDyKFqC7aGX+BSP7U162Viq8qoL_df+N=zP_6P9xbzSZseipw@mail.gmail.com>
In-Reply-To: <CAPDyKFqC7aGX+BSP7U162Viq8qoL_df+N=zP_6P9xbzSZseipw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e4b6462-fa33-4251-c521-08d6f5580972
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB5917; 
x-ms-traffictypediagnostic: MN2PR02MB5917:
x-microsoft-antispam-prvs: <MN2PR02MB5917D40104C78CC9F3653074C1E40@MN2PR02MB5917.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(376002)(136003)(39860400002)(51914003)(199004)(13464003)(189003)(186003)(6436002)(76116006)(86362001)(66946007)(476003)(66556008)(66476007)(81156014)(486006)(2906002)(7736002)(64756008)(6916009)(6116002)(3846002)(71190400001)(55016002)(81166006)(71200400001)(7696005)(66446008)(9686003)(66066001)(8676002)(8936002)(68736007)(33656002)(316002)(76176011)(73956011)(52536014)(305945005)(53936002)(6246003)(25786009)(54906003)(229853002)(99286004)(102836004)(74316002)(6506007)(14454004)(53546011)(5660300002)(26005)(11346002)(446003)(72206003)(4326008)(256004)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB5917;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2VR0q9Hp+svW2sMD+E3V49XuUCy32IUIL0sIdInb2zhO2O/LNuzDBhk9eDLsODFDv40xFNK7H9pCR7YrowZ+AwBH7j6nWD7E9Dtfa8co6opj+/VjSh+4AYjsNSNyNt1bNwJO58kgbeNgnJdhAn3upxYP8d1SXUKk5i+Kce9WvoN7heVpBCliyM3VzmuQxEBLrq+Xsr5hwWuvCM4MEy5puk+iKEM7garaIhY1x64ACfohB4uzxXpgZHFSuAUYVF2hkg1Tr76ALdTDUih6dr1/t5xiuRQFN3CUe/o6gCB8XpRQkOx6JWq7s5D6kJOYlZ5Ppp3EskIM/7OuoF4knuavlJt28WP05MXU5jDXlXxeIqQ7pYhnK/+Biuu/TO03FRvzEEhJUsuIK03VD5FQmGK58tykwIa/GG5MQ9OZ4B2aQ/U=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e4b6462-fa33-4251-c521-08d6f5580972
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 08:19:38.2028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnarani@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5917
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_011945_379737_01C85FF4 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.74 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uffe,


> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Wednesday, June 19, 2019 8:11 PM
> To: Manish Narani <MNARANI@xilinx.com>
> Cc: Michal Simek <michals@xilinx.com>; Rob Herring <robh+dt@kernel.org>;
> Mark Rutland <mark.rutland@arm.com>; Adrian Hunter
> <adrian.hunter@intel.com>; Rajan Vaja <RAJANV@xilinx.com>; Jolly Shah
> <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Olof
> Johansson <olof@lixom.net>; linux-mmc@vger.kernel.org; DTML
> <devicetree@vger.kernel.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>
> Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
> Platform Tap Delays Setup
> 
> On Tue, 18 Jun 2019 at 06:59, Manish Narani <MNARANI@xilinx.com> wrote:
> >
> > Hi Uffe,
> >
> > Thanks for the review. Please find my comments below.
> >
> > > -----Original Message-----
> > > From: Ulf Hansson <ulf.hansson@linaro.org>
> > > Sent: Monday, June 17, 2019 8:29 PM
> > > To: Michal Simek <michals@xilinx.com>
> > > Cc: Manish Narani <MNARANI@xilinx.com>; Rob Herring
> > > <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Adrian
> > > Hunter <adrian.hunter@intel.com>; Rajan Vaja <RAJANV@xilinx.com>; Jolly
> > > Shah <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>;
> Olof
> > > Johansson <olof@lixom.net>; linux-mmc@vger.kernel.org; DTML
> > > <devicetree@vger.kernel.org>; Linux Kernel Mailing List <linux-
> > > kernel@vger.kernel.org>; Linux ARM <linux-arm-
> kernel@lists.infradead.org>
> > > Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
> > > Platform Tap Delays Setup
> > >
> > > [...]
> > >
> > > > >>
> > > > >>
> > > > >>> In regards to the mmc data part, I suggest to drop the
> > > > >>> ->set_tap_delay() callback, but rather use a boolean flag to indicate
> > > > >>> whether clock phases needs to be changed for the variant. Potentially
> > > > >>> that could even be skipped and instead call clk_set_phase()
> > > > >>> unconditionally, as the clock core deals fine with clock providers
> > > > >>> that doesn't support the ->set_phase() callback.
> >
> > In the current implementation, I am taking care of both the input and
> > output clock delays with the single clock (which is output clock) registration
> > and differentiating these tap delays based on their values
> > (<256 then input delay and  >= 256 then output delay), because that is
> > zynqmp specific. If we want to make this generic, we may need to
> > register 'another' clock which will be there as an input (sampling) clock
> > and then we can make this 'clk_set_phase()' be called unconditionally
> > each for both the clocks and let the platforms handle their clock part.
> > What's your take on this?
> 
> Not sure exactly what you are suggesting, but my gut feeling says it
> sounds good.
> 
> How is tap delays managed for both the input clock and the output
> clock? Is some managed by the clock provider (which is probably
> firmware in your case) and some managed by the MMC controller?

Yes, for the existing "xlnx,zynqmp-8.9a" controller, the tap delays will be managed by the firmware, however in the upcoming "xlnx,versal-8.9a" variant the tap delays will be managed by the MMC controller itself.
I will include the Versal one in the next series of patches.

Thanks,
Manish
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
