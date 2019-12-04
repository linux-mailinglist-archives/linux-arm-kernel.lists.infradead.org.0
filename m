Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB4D112679
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGq+nLIjqxtHsT9OIJ2Z8QqANCqh88q2NvCvlMFIkPA=; b=ZQIrRdybSwO1yo
	fO5nvMTYa2yQtP00vOv3orWax4NBmxFEc9GtIEa5e8s6oDKOmI1sHvp1xa5bNH0Gcct4OYmZnBBx1
	BW8zbEW9EQy9P4/E+d6NklXj7/W/WyOmvpjBPDjqxZ8IPh2QSMSl/W93LLOEJn1UR1aBlg1espTQg
	80vo02g4JsBne517/SQCx+F1MXV0d2gJ0xacHAnKdeeReH6P7iMxg1G7OVuB289mfRAgXut++2WF7
	xAUzdVxtcrhNsc4tJOosJi1RrbwxY++iMdFQvVahfGJhwzF00rFbdgptYAsaEcStSmsrXaGhPD3Ma
	RZ9bQNe7t11jJz4+Stkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQcQ-0007bU-PL; Wed, 04 Dec 2019 09:06:46 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQcH-0007b1-CY
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:06:39 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB4939Ti032113; Wed, 4 Dec 2019 04:06:28 -0500
Received: from nam01-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam01lp2054.outbound.protection.outlook.com [104.47.32.54])
 by mx0a-00128a01.pphosted.com with ESMTP id 2wkk57u3cf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Dec 2019 04:06:28 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pgct75UIRVCvu/KvApPWmJ4608vYEXy1zBoxwoox2S0ep0dOrZXK9RBZSoHr/WVXZMMwJffZCjyCudRCLR81e8MSfxPwwKOE/1nED1G4h1DRMW1W4aC+NuwRqJGnUb9TZzGdhtcnjnhQyNx2ZF0xwQzVFDBN87Z1ScduAWmQdsxG0KmemyVuRPT1PRpIN5CpTZXwTI++KdU4wla6t7uET2wepgmjGkdOTOGgZu6Odx3se9alX6tFSPGKlQX7Vyxeeo8j+5Q0SoRjzH1mrdX/LLHtoGANHz3mTvjbC2e4FzlxRb+SGl1o8RJcMYKanuQ7Y2lxRvfa14vV/7nXusOuxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nGr3oRWPu/4kZ724nk6qUkdGwV6WaG1aynfbORa1E58=;
 b=B8+/UKQZj6ljkGjrTSMS9+UYP4+EleFLYVK9l0nYp351rVP9/CQxFTsbrmde4K4GlxO1dGS6jBKBD7GTwi56UofLsZ+b2dIn6pf6lb1ip00EkbG4+eZ6FQyjvDInalMR+bcgiRBzlSjL1ac/xauSJTu3O5jbr1N0b34RWNIGWZADO5/JWUSE2rl2NA2XCyPjGCez/Pvr7aJxvj7fFuoBpX+FcyiJA8e1h+bD47WdVPYgAhbhXMcKG4eydgObeR/qI88JsednLVfENi5cN25zG5GD9ZBBHvsrRJlGsHK6NLakQyJX3cw70SHMixOFZUUhw/N+W540hB7lb0qt7ha78w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nGr3oRWPu/4kZ724nk6qUkdGwV6WaG1aynfbORa1E58=;
 b=49cgcOnfxPNf0q953dM3DR6bzQE0x92h84gE5Op/Hlj5BuMgM5V9VDejuZ5A5PCGs3Jp6i25FD2CM1ZoWVaaGk3A1crIoO/evLhPOC9yFi2Jip3B1gU9BSCBL0SnyLCjtvnB1/K9hEhrdpX4l+8qJF3oscvFt6drt1SQkc2Gj1g=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5320.namprd03.prod.outlook.com (20.180.15.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Wed, 4 Dec 2019 09:06:26 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 09:06:26 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Index: AQHViXtdnDhd99DyyUetPzMU9xg88KecMFeAgARKfgCAAHDLAIABB6mAgAZ3zACAACXqAIAAA1AAgAAXjYCAAT+ogIAABhWA
Date: Wed, 4 Dec 2019 09:06:26 +0000
Message-ID: <3a1572b8d3411488da81292d33f7eb12d7ef42be.camel@analog.com>
References: <20191023082508.17583-1-alexandru.ardelean@analog.com>
 <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
 <9df3d999-0ec6-a282-d24b-8f7df5f14f6d@microchip.com>
 <e43bf58f-223c-0b12-2912-6f353d866ec3@microchip.com>
 <74aabb41107ab162660f21e726c88a9dd40ecc5e.camel@analog.com>
 <60ce6ff9-ba06-2522-e9a0-55e6fd2731ec@microchip.com>
 <0075d7fc890b0986f2113664c664ff46931de432.camel@analog.com>
 <3a8ea46b-14d4-30d8-5766-02538cab8394@microchip.com>
 <b01afcee62e82e6965115a8a0ec7246f71488df1.camel@analog.com>
 <20191204084555.7gjyh23oywhruy7g@M43218.corp.atmel.com>
In-Reply-To: <20191204084555.7gjyh23oywhruy7g@M43218.corp.atmel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 19b63c1d-4808-4f58-d04e-08d778993e40
x-ms-traffictypediagnostic: CH2PR03MB5320:
x-microsoft-antispam-prvs: <CH2PR03MB532012E5A1A10E84573F0106F95D0@CH2PR03MB5320.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(376002)(39860400002)(136003)(199004)(189003)(51914003)(71190400001)(6116002)(81166006)(11346002)(8676002)(25786009)(6916009)(4001150100001)(2616005)(8936002)(3846002)(81156014)(71200400001)(86362001)(446003)(305945005)(2906002)(7416002)(7736002)(2351001)(54906003)(316002)(14454004)(966005)(4326008)(478600001)(66556008)(99286004)(66946007)(5660300002)(36756003)(66446008)(30864003)(2501003)(76176011)(66476007)(6512007)(64756008)(6306002)(186003)(102836004)(76116006)(53546011)(6506007)(91956017)(118296001)(14444005)(229853002)(5024004)(6436002)(6486002)(26005)(5640700003)(256004)(6246003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5320;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +6pCUMNzRG/aRzWskiam9XWgJmbyvH8baxZTSUIoBWCYtLhnnrDPqNDkrBZg1P2xMEOa4WoWxgy0pFO5xtV9Qvg+XWd/K3Hv5jxCtH4+0N/LZDq9a85TnCHXZIeou/02ITzZGvEXMgTFLulDvkoWCV2YtC3t8c31T74PvkgIjxGyszr9Loeb0m6c2kGTC1367DoYDCnmpbcs2TXmL7N5flcWHrTGl7N/ALllNK2ZK9ndI7MQ/1CTdiEchflE8LhQuxhhTbSq50A8ptlaqSlOGbs2a93CdX4N/UGXaedjbJ5YNAJV8cWg3vi7P9cxFKBDVxLmlb2m8oY+/iMzIxLbMOS1H5DELLskA+QqTSXXISRXRybuuNhtaXLPZzNc7r6junPXDJXG2zrG8lEbsNeIa4/XAkZBrzTYV5MrcC6ih5P6kbVT/IzMEfXa+2MFOKucI7oPKZMlHgdw2QJeievY37Hwx2LBCm/jRxIicL9PuYQVWGIaeqQEPZYW6ND87ZzgHXSAyX8XXwxCRk+ey4iYhxzcnRlyVH39vKSJa0h/AO1E6Xm+P8jo1nsTspgA/mmn
x-ms-exchange-transport-forked: True
Content-ID: <B6419E4C94B85E44A08AFBA714881AD6@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19b63c1d-4808-4f58-d04e-08d778993e40
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 09:06:26.4515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h+nFlob5rj5yXwgAaNPePpuEFCWLtoDUqLio0ZDATOjyCfDaBF129y1TyA3SQcrWYJ5xyDROLvvAAre5Z/cHfI2VUfeVo0PXKj9Ct7SyIiI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5320
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-04_02:2019-12-04,2019-12-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912040068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_010637_504652_D180AA7B 
X-CRM114-Status: GOOD (  34.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-12-04 at 09:45 +0100, Ludovic Desroches wrote:
> On Tue, Dec 03, 2019 at 01:40:34PM +0000, Ardelean, Alexandru wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know
> > the content is safe
> > 
> > On Tue, 2019-12-03 at 12:17 +0000, Eugen.Hristev@microchip.com wrote:
> > > On 03.12.2019 14:04, Ardelean, Alexandru wrote:
> > > 
> > > > On Tue, 2019-12-03 at 09:49 +0000, Eugen.Hristev@microchip.com
> > > > wrote:
> > > > > [External]
> > > > > 
> > > > > 
> > > > > 
> > > > > On 29.11.2019 09:02, Ardelean, Alexandru wrote:
> > > > > 
> > > > > > On Thu, 2019-11-28 at 15:19 +0000, Eugen.Hristev@microchip.com
> > > > > > wrote:
> > > > > > 
> > > > > > Hey,
> > > > > > 
> > > > > > Sorry for the late reply.
> > > > > > I'm also juggling a few things.
> > > > > > 
> > > > > > > On 28.11.2019 10:36, Eugen.Hristev@microchip.com wrote:
> > > > > > > 
> > > > > > > > On 25.11.2019 17:03, Ardelean, Alexandru wrote:
> > > > > > > > > On Wed, 2019-10-23 at 11:25 +0300, Alexandru Ardelean
> > > > > > > > > wrote:
> > > > > > > > > > The iio_triggered_buffer_{predisable,postenable}
> > > > > > > > > > functions
> > > > > > > > > > attach/detach
> > > > > > > > > > poll functions.
> > > > > > > > > > 
> > > > > > > > > > The iio_triggered_buffer_postenable() should be called
> > > > > > > > > > first to
> > > > > > > > > > attach
> > > > > > > > > > the
> > > > > > > > > > poll function, and then the driver can init the data to
> > > > > > > > > > be
> > > > > > > > > > triggered.
> > > > > > > > > > 
> > > > > > > > > > Similarly, iio_triggered_buffer_predisable() should be
> > > > > > > > > > called
> > > > > > > > > > last
> > > > > > > > > > to
> > > > > > > > > > first
> > > > > > > > > > disable the data (to be triggered) and then the poll
> > > > > > > > > > function
> > > > > > > > > > should be
> > > > > > > > > > detached.
> > > > > > > > 
> > > > > > > > Hi Alexandru,
> > > > > > > > 
> > > > > > > > Sorry for this late reply,
> > > > > > > > 
> > > > > > > > I remember that by adding specific at91_adc code for
> > > > > > > > predisable/postenable , I was replacing the existing
> > > > > > > > standard
> > > > > > > > callback
> > > > > > > > with my own, and have my specific at91 code before
> > > > > > > > postenable
> > > > > > > > and
> > > > > > > > then
> > > > > > > > calling the subsystem postenable,
> > > > > > > > and in similar way, for predisable, first call the
> > > > > > > > subsystem
> > > > > > > > predisable
> > > > > > > > then doing my predisable code (in reverse order as in
> > > > > > > > postenable)
> > > > > > > > 
> > > > > > > > If you say the order should be reversed (basically have the
> > > > > > > > pollfunction
> > > > > > > > first), how is current code working ?
> > > > > > > > Should current code fail if the poll function is not
> > > > > > > > attached
> > > > > > > > in
> > > > > > > > time ?
> > > > > > > > Or there is a race between triggered data and the
> > > > > > > > attachment of
> > > > > > > > the
> > > > > > > > pollfunc ?
> > > > > > > > 
> > > > > > > > I am thinking that attaching the pollfunc later makes it
> > > > > > > > work
> > > > > > > > because
> > > > > > > > the DMA is not started yet. What happens if we have the
> > > > > > > > pollfunc
> > > > > > > > attached but DMA is not started (basically the trigger is
> > > > > > > > not
> > > > > > > > started)
> > > > > > > > ,
> > > > > > > > can this lead to unexpected behavior ? Like the pollfunc
> > > > > > > > polling
> > > > > > > > but no
> > > > > > > > trigger started/no DMA started.
> > > > > > > 
> > > > > > > I looked a bit more into the code and in DMA case, using
> > > > > > > postenable
> > > > > > > first will lead to calling attach pollfunc, which will also
> > > > > > > enable
> > > > > > > the
> > > > > > > trigger, but the DMA is not yet started.
> > > > > > > Is this the desired effect ?
> > > > > > 
> > > > > > Yes.
> > > > > 
> > > > > How is this correct ? We start the trigger but have no buffer to
> > > > > carry
> > > > > to... what happens with the data ? -> I think we both have an
> > > > > answer
> > > > > to
> > > > > that, as you state below
> > > > > 
> > > > > > > Normally when using DMA I would say we
> > > > > > > would need to enable DMA first to be ready to carry data (and
> > > > > > > coherent
> > > > > > > area etc.) and then enable the trigger.
> > > > > > 
> > > > > > So, there is a change in our tree [from some time ago].
> > > > > > See here:
> > > > > > https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8
> > > > > > 
> > > > > > Particularly, what's interesting is around line:
> > > > > > https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8#diff-0a87744ce945d2c1c89ea19f21fb35bbR722
> > > > > > And you may need to expand some stuff to see more of the
> > > > > > function-
> > > > > > body.
> > > > > > And some things may have changed in upstream IIO since that
> > > > > > change.
> > > > > > 
> > > > > > The change is to make the pollfunc attach/detach become part of
> > > > > > the
> > > > > > IIO
> > > > > > framework, because plenty of drivers just call
> > > > > > iio_triggered_buffer_postenable() &
> > > > > > iio_triggered_buffer_predisable()
> > > > > > to
> > > > > > manually attach/detach the pollfunc for triggered buffers.
> > > > > 
> > > > > Okay, I understand this. at91-sama5d2_adc does not manually
> > > > > attach/detach the pollfunc. So why do we need to change anything
> > > > > here
> > > > > ?
> > > > > 
> > > > > 
> > > > > > That change is from 2015, and since then, some drivers were
> > > > > > added
> > > > > > that
> > > > > > just
> > > > > > manually attach/detach the pollfunc [and do nothing more with
> > > > > > the
> > > > > > postenable/predisable hooks].
> > > > > > 
> > > > > > I tried to upstream a more complete version of that patch a
> > > > > > while
> > > > > > ago
> > > > > > [u1].
> > > > > > https://patchwork.kernel.org/patch/10482167/
> > > > > > https://patchwork.kernel.org/patch/10737291/
> > > > > > 
> > > > > > The conclusion was to first fix the attach/detach pollfunc
> > > > > > order in
> > > > > > all
> > > > > > IIO
> > > > > > drivers, so that when patch [u1] is applied, there is no more
> > > > > > discussion
> > > > > > about the correct order for attach/detach pollfunc.
> > > > > 
> > > > > Allright, what is required to be fixed regarding the order, in
> > > > > this
> > > > > specific case? We enable the DMA, and then we do the normal
> > > > > 'postenable'
> > > > > that was called anyway if we did not override the 'postenable' in
> > > > > the
> > > > > ops. Do you want to move this code to 'preenable' and keep
> > > > > 'postenable'
> > > > > to the standard subsystem one ?
> > > > > 
> > > > > The same applies to the predisable, we first call the subsystem
> > > > > 'predisable' then do the specific at91 stuff. You want to move
> > > > > this
> > > > > to
> > > > > the 'postdisable' ?
> > > > > 
> > > > > I think reverting the order inside the functions themselves is
> > > > > not
> > > > > good
> > > > > as we replace the order of starting trigger/DMA setup.
> > > > > So, coming to your question below...
> > > > > 
> > > > > > Coming back here [and to your question], my answer is: I don't
> > > > > > know
> > > > > > if
> > > > > > the
> > > > > > at91 DMA needs to be enabled/disabled before/after the pollfunc
> > > > > > attach/detach.
> > > > > > This sounds like specific stuff for at91 [which is fine].
> > > > > > 
> > > > > > It could be that some other hooks may need to used to enable
> > > > > > DMA
> > > > > > before/after the attach/detach pollfunc. Maybe
> > > > > > preenable()/postdisable() ?
> > > > > > 
> > > > > > In any case, what I would like [with this discussion], is to
> > > > > > resolve a
> > > > > > situation where we can get closer to moving the attach/pollfunc
> > > > > > code to
> > > > > > IIO
> > > > > > core. So, if AT91 requires a different ordering, I think you
> > > > > > would
> > > > > > be
> > > > > > more
> > > > > > appropriate to tell me, and propose an alternative to this
> > > > > > patch.
> > > > > 
> > > > > ... yes, this looks more appropriate, to move things to
> > > > > 'preenable/postdisable', if you feel like 'postenable/predisable'
> > > > > is
> > > > > not
> > > > > the proper place to put them.
> > > > > But the order itself, first enable DMA then trigger, and disable
> > > > > in
> > > > > reverse order, I do not think there is anything wrong with that?
> > > > > Am I
> > > > > misunderstanding ?
> > > > 
> > > > Should be good.
> > > > 
> > > > > If Jonathan or Ludovic have a different idea, please let me know.
> > > > 
> > > > There is an alternative here [to this].
> > > > Maybe using the IIO Buffer DMA[Engine] integration that Lars wrote
> > > > [1].
> > > > This would avoid calling dmaengine_terminate_sync() and similar
> > > > hooks
> > > > in
> > > > the AT91 driver. That also preserves the correct order (start DMA
> > > > first,
> > > > then attach pollfunc ; and reverse on disable).
> > > > But that is more work; not on the patch itself, but more on the
> > > > testing.
> > > 
> > > Initially, when I implemented the DMA part for this driver, this was
> > > the
> > > idea. However the DMA engine was not used at that time by anyone ,
> > > and I
> > > could not make it work properly. Jonathan advised at that moment to
> > > use
> > > this current framework.
> > > 
> > > > [1] Upstreaming more parts for the IIO Buffer DMA[Engine]
> > > > integration
> > > > is on
> > > > my to-do-list as well. I think there are still some patches that we
> > > > use,
> > > > but are not upstreamed yet.
> > > > 
> > > > I'll come-up a with a V2 for this with preenable()/postdisable()
> > > > alternative here.
> > > 
> > > Ok, I will test it .
> > > 
> > > What I do not understand completely is why it bothers you to have
> > > at91
> > > specific code in postenable / predisable.
> > > The same thing will happen will happen with preenable/postdisable:
> > > specific at91 code will be called after subsystem preenable and
> > > before
> > > subsystem postdisable.
> > 
> > Because I am preparing a framework change to IIO core and all IIO
> > drivers
> > in mainline need to be resolved when that change happens.
> > I am not sure if the change will break any driver, but at least we can
> > minimalize breakage.
> > 
> 
> Ok re-reading the thread I see what you want to achieve. It should be
> better to
> have your framework change (code factorization if I have well understood)
> in the
> patch serie or as an RFC:
> - it helps people to understand why you do these changes
> - if it's rejected or has to be rework, you have uselessly change the
>   drivers and introduce a potential breakage.
> 
> If it has already been discussed on the mailing list, forget what I am
> saying.

It was discussed [well, somewhat; not a lot of people replied to it
initially].

RFC was 
https://patchwork.kernel.org/patch/10482167/

Then a follow-up:
https://patchwork.kernel.org/patch/10737291/


I don't mind re-discussing it :)

Thanks
Alex

> 
> Regards
> 
> Ludovic
> 
> > > > Thanks
> > > > Alex
> > > > 
> > > > > Also, I can test your patch to see if everything is fine.
> > > > > 
> > > > > Thanks,
> > > > > Eugen
> > > > > 
> > > > > > Thanks :)
> > > > > > Alex
> > > > > > 
> > > > > > > > > > For this driver, the predisable & postenable hooks are
> > > > > > > > > > also
> > > > > > > > > > need to
> > > > > > > > > > take
> > > > > > > > > > into consideration the touchscreen, so the hooks need
> > > > > > > > > > to be
> > > > > > > > > > put
> > > > > > > > > > in
> > > > > > > > > > places
> > > > > > > > > > that avoid the code for that cares about it.
> > > > > > > > > > 
> > > > > > > > > 
> > > > > > > > > ping here
> > > > > > > > > 
> > > > > > > > > > Signed-off-by: Alexandru Ardelean <
> > > > > > > > > > alexandru.ardelean@analog.com>
> > > > > > > > > > ---
> > > > > > > > > >      drivers/iio/adc/at91-sama5d2_adc.c | 19
> > > > > > > > > > ++++++++++--
> > > > > > > > > > -------
> > > > > > > > > >      1 file changed, 10 insertions(+), 9 deletions(-)
> > > > > > > > > > 
> > > > > > > > > > diff --git a/drivers/iio/adc/at91-sama5d2_adc.c
> > > > > > > > > > b/drivers/iio/adc/at91-
> > > > > > > > > > sama5d2_adc.c
> > > > > > > > > > index e1850f3d5cf3..ac3e5c4c9840 100644
> > > > > > > > > > --- a/drivers/iio/adc/at91-sama5d2_adc.c
> > > > > > > > > > +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> > > > > > > > > > @@ -889,20 +889,24 @@ static int
> > > > > > > > > > at91_adc_buffer_postenable(struct
> > > > > > > > > > iio_dev *indio_dev)
> > > > > > > > > >           if (!(indio_dev->currentmode &
> > > > > > > > > > INDIO_ALL_TRIGGERED_MODES))
> > > > > > > > > >                   return -EINVAL;
> > > > > > > > > > 
> > > > > > > > > > +     ret = iio_triggered_buffer_postenable(indio_dev);
> > > > > > > > > > +     if (ret)
> > > > > > > > > > +             return ret;
> > > > > > > > > > +
> > > > > > > > > >           /* we continue with the triggered buffer */
> > > > > > > > > >           ret = at91_adc_dma_start(indio_dev);
> > > > > > > > > >           if (ret) {
> > > > > > > > > >                   dev_err(&indio_dev->dev, "buffer
> > > > > > > > > > postenable
> > > > > > > > > > failed\n");
> > > > > > > > > > +             iio_triggered_buffer_predisable(indio_dev
> > > > > > > > > > );
> > > > > > > > > >                   return ret;
> > > > > > > > > >           }
> > > > > > > > > > 
> > > > > > > > > > -     return
> > > > > > > > > > iio_triggered_buffer_postenable(indio_dev);
> > > > > > > > > > +     return 0;
> > > > > > > > > >      }
> > > > > > > > > > 
> > > > > > > > > >      static int at91_adc_buffer_predisable(struct
> > > > > > > > > > iio_dev
> > > > > > > > > > *indio_dev)
> > > > > > > > > >      {
> > > > > > > > > >           struct at91_adc_state *st =
> > > > > > > > > > iio_priv(indio_dev);
> > > > > > > > > > -     int ret;
> > > > > > > > > >           u8 bit;
> > > > > > > > > > 
> > > > > > > > > >           /* check if we are disabling triggered buffer
> > > > > > > > > > or
> > > > > > > > > > the
> > > > > > > > > > touchscreen */
> > > > > > > > > > @@ -916,13 +920,8 @@ static int
> > > > > > > > > > at91_adc_buffer_predisable(struct
> > > > > > > > > > iio_dev
> > > > > > > > > > *indio_dev)
> > > > > > > > > >           if (!(indio_dev->currentmode &
> > > > > > > > > > INDIO_ALL_TRIGGERED_MODES))
> > > > > > > > > >                   return -EINVAL;
> > > > > > > > > > 
> > > > > > > > > > -     /* continue with the triggered buffer */
> > > > > > > > > > -     ret = iio_triggered_buffer_predisable(indio_dev);
> > > > > > > > > > -     if (ret < 0)
> > > > > > > > > > -             dev_err(&indio_dev->dev, "buffer
> > > > > > > > > > predisable
> > > > > > > > > > failed\n");
> > > > > > > > > > -
> > > > > > > > > >           if (!st->dma_st.dma_chan)
> > > > > > > > > > -             return ret;
> > > > > > > > > > +             goto out;
> > > > > > > > > > 
> > > > > > > > > >           /* if we are using DMA we must clear
> > > > > > > > > > registers
> > > > > > > > > > and end
> > > > > > > > > > DMA
> > > > > > > > > > */
> > > > > > > > > >           dmaengine_terminate_sync(st-
> > > > > > > > > > >dma_st.dma_chan);
> > > > > > > > > > @@ -949,7 +948,9 @@ static int
> > > > > > > > > > at91_adc_buffer_predisable(struct
> > > > > > > > > > iio_dev
> > > > > > > > > > *indio_dev)
> > > > > > > > > > 
> > > > > > > > > >           /* read overflow register to clear possible
> > > > > > > > > > overflow
> > > > > > > > > > status
> > > > > > > > > > */
> > > > > > > > > >           at91_adc_readl(st, AT91_SAMA5D2_OVER);
> > > > > > > > > > -     return ret;
> > > > > > > > > > +
> > > > > > > > > > +out:
> > > > > > > > 
> > > > > > > > I would prefer if this label is named with a function name
> > > > > > > > prefix,
> > > > > > > > otherwise 'out' is pretty generic and can collide with
> > > > > > > > other
> > > > > > > > things
> > > > > > > > in
> > > > > > > > the file... I want to avoid having an out2 , out3 later if
> > > > > > > > code
> > > > > > > > changes.
> > > > > > > > 
> > > > > > 
> > > > > > Sure.
> > > > > > Will do that.
> > > > > > 
> > > > > > I did not bother much with these labels, because after applying
> > > > > > [u1],
> > > > > > some
> > > > > > of them [maybe all] should go away.
> > > > > > 
> > > > > > 
> > > > > > > > Thanks for the patch,
> > > > > > > > Eugen
> > > > > > > > 
> > > > > > > > > > +     return
> > > > > > > > > > iio_triggered_buffer_predisable(indio_dev);
> > > > > > > > > >      }
> > > > > > > > > > 
> > > > > > > > > >      static const struct iio_buffer_setup_ops
> > > > > > > > > > at91_buffer_setup_ops =
> > > > > > > > > > {
> > > > > > > > > _______________________________________________
> > > > > > > > > linux-arm-kernel mailing list
> > > > > > > > > linux-arm-kernel@lists.infradead.org
> > > > > > > > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > > > > > > > > 
> > > > > > _______________________________________________
> > > > > > linux-arm-kernel mailing list
> > > > > > linux-arm-kernel@lists.infradead.org
> > > > > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > > > > > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
