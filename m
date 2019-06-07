Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781F7384AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 08:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmkucPJZnOV30N7fv4c9xTu5BrLDJHKDkXAgS2Htph4=; b=C2LVKkAoZjAP6H
	dsFvxvOk2Cle2LNvD5OZv0pnCMiYlBHnpIjfsLxz4Fl2YvEUwsv70hkkK/Y1fkxMjHpQ/wae462oH
	9vv3Yphi2+imZysZQSrtxjd/yRANrZpkDf8QF77uzt9iF8Xe2/6okErNC0vfwNOm4JS2LmpiObgEC
	br5ek05OLAlgHpMYLCRJVkHeneVSd4c07AV83J3s73xAZGjrEYC2AgopRgFjHmCxEeiIc4TeAkW+K
	bmjE36y5U0GbUGof15mLQW8sqcvijkfiflHW74eNrAYT8lpvbe7n99KnabmJxo74ICUj7FX5SuvG+
	u4yQpieINsMHjyNDCLsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ8pi-0002jz-8i; Fri, 07 Jun 2019 06:58:38 +0000
Received: from mail-eopbgr740089.outbound.protection.outlook.com
 ([40.107.74.89] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8pT-0002jK-UD
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 06:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pKjBHGhH/wJcjTXje/fojuz6JzyLJn0zVl1WKgrfH28=;
 b=wHjUglFNVpFmsKJWNPNifaA5vP6o1Zen/jseIuZ7XctbkvLlgz89/0A70KW5d3E/8lqUe44PTc77Qa9rLuVD7gix2qZOKjNvE9bag2IahPe7CoeNvKct/RP7JU0ySzhQu0WigxA1NZ6Vs3cSQXkHh5etLPCLKjtLxIGHPdhSGI4=
Received: from MN2PR02MB6400.namprd02.prod.outlook.com (52.132.175.209) by
 MN2PR02MB6333.namprd02.prod.outlook.com (52.132.175.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Fri, 7 Jun 2019 06:58:15 +0000
Received: from MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::6001:ad1f:d548:2b71]) by MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::6001:ad1f:d548:2b71%6]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 06:58:14 +0000
From: Appana Durga Kedareswara Rao <appanad@xilinx.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, "wg@grandegger.com"
 <wg@grandegger.com>, "davem@davemloft.net" <davem@davemloft.net>, Michal
 Simek <michals@xilinx.com>
Subject: RE: [PATCH 0/6] net: can: xilinx_can: Bug fixes and Enhancements
Thread-Topic: [PATCH 0/6] net: can: xilinx_can: Bug fixes and Enhancements
Thread-Index: AQHU3X5pxtrhGyT8f0y/0R8BjEz816YUgSyAgAEkNOCAM9QFwIBGxw/Q
Date: Fri, 7 Jun 2019 06:58:14 +0000
Message-ID: <MN2PR02MB64007451AEE68134E7B304A1DC100@MN2PR02MB6400.namprd02.prod.outlook.com>
References: <1552908766-26753-1-git-send-email-appana.durga.rao@xilinx.com>
 <d1cd73cc-e200-7c06-dd6e-3c5e2e35709c@pengutronix.de>
 <DM5PR02MB21875918C65EF8757E34C574DC420@DM5PR02MB2187.namprd02.prod.outlook.com>
 <DM5PR02MB2187137A63481B2BB2E12920DC230@DM5PR02MB2187.namprd02.prod.outlook.com>
In-Reply-To: <DM5PR02MB2187137A63481B2BB2E12920DC230@DM5PR02MB2187.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=appanad@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba809c67-1da0-45b5-4162-08d6eb158354
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB6333; 
x-ms-traffictypediagnostic: MN2PR02MB6333:
x-ms-exchange-purlcount: 2
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-microsoft-antispam-prvs: <MN2PR02MB6333F21B56A7142C46C027E2DC100@MN2PR02MB6333.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(136003)(346002)(39860400002)(199004)(189003)(13464003)(256004)(66066001)(2906002)(71200400001)(53936002)(107886003)(4326008)(53386004)(74316002)(6116002)(3846002)(76116006)(2501003)(73956011)(71190400001)(66446008)(66946007)(5660300002)(64756008)(76176011)(102836004)(52536014)(8936002)(8676002)(81156014)(81166006)(99286004)(7696005)(66476007)(53546011)(6506007)(6436002)(55016002)(186003)(446003)(229853002)(7736002)(6306002)(305945005)(9686003)(476003)(66556008)(478600001)(26005)(14444005)(316002)(86362001)(14454004)(966005)(68736007)(6246003)(11346002)(6636002)(110136005)(2201001)(25786009)(486006)(54906003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6333;
 H:MN2PR02MB6400.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KjCwsLk52Xuuxjt/qA+rHs7hF4ZGFQCRk/jDgGmV9XDYG/d0HyrtdYPaKOcHwsYsgJqIXkAarERGhbFNNuIliSQeJwTGOkoO4zWjF8D1CoPL/OWZPSOG+Atxv6eXUYA+EFW6ZuK75rP1XMl+VmYl+UxNeZMmm+ugS9LcArYtHesQxDnIurdPBWCodCvyeie4QHPkGmDTEQWL84I8vS+JIvoFKO/iBvQDNVMoeyrwvjkxtf/H605dm8A/8WbtjOUZo7OssNfAMui60UTbu2BBGw06SoYAoefTDLcvsXyxw1gXoWXHAEJ03xZZV4RCb939Yq46vBa6hrXlqSNqmFWORDZ4X7JRklc8xuMbdeNPrFVDyIDGYlXx+4MXPfzlFr7lsfFGGC7BTxWd+t4aeYuLfl09sb3OlGwnFcYi0+4cGZs=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba809c67-1da0-45b5-4162-08d6eb158354
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 06:58:14.7872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: appanad@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6333
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_235823_984669_8DACAA3D 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.89 listed in list.dnswl.org]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.74.89 listed in wl.mailspike.net]
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Srinivas Neeli <sneeli@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

Friendly ping !!

> -----Original Message-----
> From: Appana Durga Kedareswara Rao
> Sent: Tuesday, April 23, 2019 12:08 PM
> To: 'Marc Kleine-Budde' <mkl@pengutronix.de>; 'wg@grandegger.com'
> <wg@grandegger.com>; 'davem@davemloft.net' <davem@davemloft.net>;
> Michal Simek <michals@xilinx.com>
> Cc: 'linux-can@vger.kernel.org' <linux-can@vger.kernel.org>;
> 'netdev@vger.kernel.org' <netdev@vger.kernel.org>; 'linux-arm-
> kernel@lists.infradead.org' <linux-arm-kernel@lists.infradead.org>; 'linux-
> kernel@vger.kernel.org' <linux-kernel@vger.kernel.org>
> Subject: RE: [PATCH 0/6] net: can: xilinx_can: Bug fixes and Enhancements
> 
> Hi Marc,
> 
> > -----Original Message-----
> > From: Appana Durga Kedareswara Rao
> > Sent: Thursday, March 21, 2019 12:06 PM
> > To: 'Marc Kleine-Budde' <mkl@pengutronix.de>; wg@grandegger.com;
> > davem@davemloft.net; Michal Simek <michals@xilinx.com>
> > Cc: linux-can@vger.kernel.org; netdev@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > Subject: RE: [PATCH 0/6] net: can: xilinx_can: Bug fixes and
> > Enhancements
> >
> > Hi Marc,
> >
> > > -----Original Message-----
> > > From: Marc Kleine-Budde <mkl@pengutronix.de>
> > > Sent: Wednesday, March 20, 2019 6:39 PM
> > > To: Appana Durga Kedareswara Rao <appanad@xilinx.com>;
> > > wg@grandegger.com; davem@davemloft.net; Michal Simek
> > > <michals@xilinx.com>
> > > Cc: linux-can@vger.kernel.org; netdev@vger.kernel.org; linux-arm-
> > > kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > > Subject: Re: [PATCH 0/6] net: can: xilinx_can: Bug fixes and
> > > Enhancements
> > >
> > > On 3/18/19 12:32 PM, Appana Durga Kedareswara rao wrote:
> > > > This patch series does the below
> > > > --> Added support for CANFD FD frames Fix Checkpatch reported
> > > > --> warnings and checks
> > > >
> > > > Appana Durga Kedareswara rao (6):
> > > >   net: can: xilinx_can: Fix style issues
> > > >   net: can: xilinx_can: Fix flags field initialization for axi can and
> > > >     canps
> > > >   net: can: xilinx_can: Add cantype parameter in xcan_devtype_data
> > > >     struct
> > > >   net: can: xilinx_can: Add support for CANFD FD frames
> > > >   net: can: xilinx_can: Add SPDX license
> > > >   net: can: xilinx_can: Fix kernel doc warnings
> > > >
> > > >  drivers/net/can/xilinx_can.c | 303
> > > > ++++++++++++++++++++++++++++++++++++-------
> > > >  1 file changed, 257 insertions(+), 46 deletions(-)
> > >
> > > Applied to linux-can-next/testing, but in order. First fixes than
> > > enhancements:
> >
> > Thanks...
> > I couldn't find the patches here
> > https://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-
> > next.git/log/drivers/net/can/xilinx_can.c?h=testing
> > Am I referring wrong repo/branch??
> 
> There are a couple of bug fixes available for this driver on top of this patch
> series.
> Please let me know the branch where this patch series got applied, will send
> the bug fixes on top of that branch.
> 

Regards,
Kedar.

> Regards,
> Kedar.
> >
> > Regards,
> > Kedar.
> > >
> > > > 241826302854 net: can: xilinx_can: Fix style issues
> > > > 70fb26fadc27 net: can: xilinx_can: Fix kernel doc warnings
> > > > 7beb64351ff1 net: can: xilinx_can: Add SPDX license dd94910bceae net:
> > > > can: xilinx_can: Fix flags field initialization for axi can and
> > > > canps
> > > > 6bd05cece567 net: can: xilinx_can: Add cantype parameter in
> > > > xcan_devtype_data struct
> > > > 34e280170736 net: can: xilinx_can: Add support for CANFD FD frames
> > >
> > > Marc
> > >
> > > --
> > > Pengutronix e.K.                  | Marc Kleine-Budde           |
> > > Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> > > Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> > > Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
