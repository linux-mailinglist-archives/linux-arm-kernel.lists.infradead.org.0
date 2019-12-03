Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A1310FEF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmyUKxU/682nMMAS1d+OukTjT1QA4PYZFyQIbau+GJw=; b=AJd6mm+UvxWcug
	K2185VPn469j0b1DpWpWVQ5iizpze0vDJamPZOnMPoeZK9qGBNtQnuBe7XdaiZL5ckGOBzsZq8UFc
	On+diEl7DAtGIVWF8vh7PHAiaC5/1iTIWk/KCtU1DrFHX3DzmunOpOjeviDfWQcYqx/so0bcuW7jh
	5ZwENWiR8Qip+ohxPF9p/+w1uNyt1vzlKQJbvysheJbTzbtsVxGuqvYW8D0L3QhOSvD8THP5T102G
	fp/mFUDFk1Zr3btkpJe1XgDjhy9SVJEBpQecDQbTA/VwAIn28wjD/anlTTKsNbDDst+4MULGgXf+j
	yVXrmBtUDiReOOduCwlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8QC-0005ro-21; Tue, 03 Dec 2019 13:40:56 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8Pz-0005o2-6X
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:40:46 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB3DcC3Z006011; Tue, 3 Dec 2019 08:40:37 -0500
Received: from nam04-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2052.outbound.protection.outlook.com [104.47.46.52])
 by mx0a-00128a01.pphosted.com with ESMTP id 2wkk57rpjg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 Dec 2019 08:40:36 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wbojf+8esmmgylBHPcInIOe4s+iv0mbm2axMoZ1CPnApb77lbLlDsae6GxbGjPiMAbQHPIU1J1uWnLfGbCgxi0o4GYl5886KZenCXbwJ+sIX/lTVJA/f/BcFmGGdhaZKC5Oy7vmO2EfFMurxVq/AVLf5yzs2VUIG2d/tsQA02Mgy4ahJv+xJbjQMLsKyDmP/WejyG76Cjiaeb9amvQzutXwEr+J6XuiMloEH+phtWpo4+gcJk3mR1TFjES1Mtat/oUwzkWdQSCPvFMOFcNHEOQSApCqfCJCp4hJr6VCamxHbYomFMmu2+AuZp9EQxzkhrSTJENLiiDZKahsPh420lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LygGGH6GQPPZi+xV0o18xnIkEk/5RytvSgJqB5NCbTg=;
 b=lMr7qd7BPsP+8rZV+FVyV/4Yf8i2rhC0LD1LEUYruZbGD6KjwizJNiufK3r8wKrcxcFL7EgPqIJEBFVoWsNjQznx7H+unSQCnG2f0XycFfd0BsHKtwFKZGGuADBavrYebSTKy0eMh/K+ZSJgu1fFOtFDWFs0Mvr5Fzip0YyNifU/tSalndGyHs/UGlALWiV5JHj2InLErghx+ZOTPMREAq3q7rXaGpzR6KfvtlEZvHhaUAHmt293T7VF1Ckt3uiyskR+OBFCN5Y6HSos/epzSGCdae4QUauXAxuFJGrJ96dzt/5i9g5DYUHKlLot96rnKO4m4bz4dE/zHgU5+dtA/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LygGGH6GQPPZi+xV0o18xnIkEk/5RytvSgJqB5NCbTg=;
 b=QEQrAOx0je3S/1XRndCQWk6yCe/UJ7UVK03HGzeQK2sv8F8+9LOLqp/1Od30SrngOlSDvWL6n8lWDlZlYMbU0gbc5m0ZKmZCTQ/ZSj9XY3RTShmSteOErkfVwR9Frfg0hSPZr7CbkAoVpIU4AAURQKzhD7yY16L8po+steqeyjU=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5335.namprd03.prod.outlook.com (20.180.12.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Tue, 3 Dec 2019 13:40:34 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 13:40:34 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>
Subject: Re: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Topic: [PATCH] iio: at91-sama5d2_adc: fix
 iio_triggered_buffer_{predisable,postenable} positions
Thread-Index: AQHViXtdnDhd99DyyUetPzMU9xg88KecMFeAgARKfgCAAHDLAIABB6mAgAZ3zACAACXqAIAAA1AAgAAXjYA=
Date: Tue, 3 Dec 2019 13:40:34 +0000
Message-ID: <b01afcee62e82e6965115a8a0ec7246f71488df1.camel@analog.com>
References: <20191023082508.17583-1-alexandru.ardelean@analog.com>
 <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
 <9df3d999-0ec6-a282-d24b-8f7df5f14f6d@microchip.com>
 <e43bf58f-223c-0b12-2912-6f353d866ec3@microchip.com>
 <74aabb41107ab162660f21e726c88a9dd40ecc5e.camel@analog.com>
 <60ce6ff9-ba06-2522-e9a0-55e6fd2731ec@microchip.com>
 <0075d7fc890b0986f2113664c664ff46931de432.camel@analog.com>
 <3a8ea46b-14d4-30d8-5766-02538cab8394@microchip.com>
In-Reply-To: <3a8ea46b-14d4-30d8-5766-02538cab8394@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 503af563-6dd5-4bed-9f4e-08d777f65fbb
x-ms-traffictypediagnostic: CH2PR03MB5335:
x-microsoft-antispam-prvs: <CH2PR03MB53355B5F6B2C8DF149195074F9420@CH2PR03MB5335.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(396003)(366004)(376002)(136003)(189003)(199004)(51914003)(26005)(5024004)(118296001)(6506007)(53546011)(4001150100001)(54906003)(110136005)(316002)(8936002)(186003)(81166006)(14444005)(8676002)(81156014)(256004)(2201001)(66446008)(66476007)(86362001)(66556008)(64756008)(66946007)(76116006)(71200400001)(71190400001)(446003)(4326008)(6246003)(102836004)(11346002)(36756003)(30864003)(2616005)(5660300002)(14454004)(229853002)(966005)(6512007)(6306002)(6116002)(76176011)(6486002)(3846002)(6436002)(478600001)(25786009)(2906002)(7416002)(7736002)(305945005)(2501003)(99286004)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5335;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NmTR1yd7+xDY+7MmnUAUnch6s4RZkeMWHfN9Jvelfe4KE5olpU8xoVrVSmCP5IWpPzUIeRzTonFEARHwcTyRNF04izy3jVpKaMzQrdocNMXYnOjPSLJ7FVVCJAMZaHSAe1+6Kg5qBwcQBY3u4Np8DX/XC1BAGkBTRaNnvI27FW6bZGteDOgFkHx0WMI9onfMhAyGtH7LioHy8wlBZlhKV4C3TtaxdeOWKLOSAviXlHGoMPLOWH3dsl9R1qB8sEHf5zUAIgA45f1J3Bx0dyL+HU17B5+qxlzZCVL3LcmLwFe6OmAma/Bm3K3O3HQPErznE+mdyn7NJ9+0joc/g2vSCHjRRFZv0vXWAQLkDSTgPJWPeKYi0n8fpXStMj6xcs0Ja7KJlMMGx/DiUvEiDMEetXPfs601TtsQMph0HOxexPJRqnlf7zJV2XyIunmJkuHTL5B4Hrn9FaesfKfSo6k4SbJ9RiTAQ8/OExDRBMlIl5M=
x-ms-exchange-transport-forked: True
Content-ID: <DAB51FFA0023724BAAC7754D508E5152@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 503af563-6dd5-4bed-9f4e-08d777f65fbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 13:40:34.6602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TzFNWyjINeXHoEjY6NwxX0v+a4x0GdJk/vQuhvwojhR4uz30+L3q1mqBJkK1MCiexVpg6TlA80EEXpQTcejNIIXVhfor2E5W10d8uzgFuCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5335
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-03_03:2019-12-02,2019-12-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912030107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054043_390572_893251A2 
X-CRM114-Status: GOOD (  39.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "Ludovic.Desroches@microchip.com" <Ludovic.Desroches@microchip.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-12-03 at 12:17 +0000, Eugen.Hristev@microchip.com wrote:
> 
> On 03.12.2019 14:04, Ardelean, Alexandru wrote:
> 
> > On Tue, 2019-12-03 at 09:49 +0000, Eugen.Hristev@microchip.com wrote:
> > > [External]
> > > 
> > > 
> > > 
> > > On 29.11.2019 09:02, Ardelean, Alexandru wrote:
> > > 
> > > > On Thu, 2019-11-28 at 15:19 +0000, Eugen.Hristev@microchip.com
> > > > wrote:
> > > > 
> > > > Hey,
> > > > 
> > > > Sorry for the late reply.
> > > > I'm also juggling a few things.
> > > > 
> > > > > On 28.11.2019 10:36, Eugen.Hristev@microchip.com wrote:
> > > > > 
> > > > > > On 25.11.2019 17:03, Ardelean, Alexandru wrote:
> > > > > > > On Wed, 2019-10-23 at 11:25 +0300, Alexandru Ardelean wrote:
> > > > > > > > The iio_triggered_buffer_{predisable,postenable} functions
> > > > > > > > attach/detach
> > > > > > > > poll functions.
> > > > > > > > 
> > > > > > > > The iio_triggered_buffer_postenable() should be called
> > > > > > > > first to
> > > > > > > > attach
> > > > > > > > the
> > > > > > > > poll function, and then the driver can init the data to be
> > > > > > > > triggered.
> > > > > > > > 
> > > > > > > > Similarly, iio_triggered_buffer_predisable() should be
> > > > > > > > called
> > > > > > > > last
> > > > > > > > to
> > > > > > > > first
> > > > > > > > disable the data (to be triggered) and then the poll
> > > > > > > > function
> > > > > > > > should be
> > > > > > > > detached.
> > > > > > 
> > > > > > Hi Alexandru,
> > > > > > 
> > > > > > Sorry for this late reply,
> > > > > > 
> > > > > > I remember that by adding specific at91_adc code for
> > > > > > predisable/postenable , I was replacing the existing standard
> > > > > > callback
> > > > > > with my own, and have my specific at91 code before postenable
> > > > > > and
> > > > > > then
> > > > > > calling the subsystem postenable,
> > > > > > and in similar way, for predisable, first call the subsystem
> > > > > > predisable
> > > > > > then doing my predisable code (in reverse order as in
> > > > > > postenable)
> > > > > > 
> > > > > > If you say the order should be reversed (basically have the
> > > > > > pollfunction
> > > > > > first), how is current code working ?
> > > > > > Should current code fail if the poll function is not attached
> > > > > > in
> > > > > > time ?
> > > > > > Or there is a race between triggered data and the attachment of
> > > > > > the
> > > > > > pollfunc ?
> > > > > > 
> > > > > > I am thinking that attaching the pollfunc later makes it work
> > > > > > because
> > > > > > the DMA is not started yet. What happens if we have the
> > > > > > pollfunc
> > > > > > attached but DMA is not started (basically the trigger is not
> > > > > > started)
> > > > > > ,
> > > > > > can this lead to unexpected behavior ? Like the pollfunc
> > > > > > polling
> > > > > > but no
> > > > > > trigger started/no DMA started.
> > > > > 
> > > > > I looked a bit more into the code and in DMA case, using
> > > > > postenable
> > > > > first will lead to calling attach pollfunc, which will also
> > > > > enable
> > > > > the
> > > > > trigger, but the DMA is not yet started.
> > > > > Is this the desired effect ?
> > > > 
> > > > Yes.
> > > 
> > > How is this correct ? We start the trigger but have no buffer to
> > > carry
> > > to... what happens with the data ? -> I think we both have an answer
> > > to
> > > that, as you state below
> > > 
> > > > > Normally when using DMA I would say we
> > > > > would need to enable DMA first to be ready to carry data (and
> > > > > coherent
> > > > > area etc.) and then enable the trigger.
> > > > 
> > > > So, there is a change in our tree [from some time ago].
> > > > See here:
> > > > https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8
> > > > 
> > > > Particularly, what's interesting is around line:
> > > > https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8#diff-0a87744ce945d2c1c89ea19f21fb35bbR722
> > > > And you may need to expand some stuff to see more of the function-
> > > > body.
> > > > And some things may have changed in upstream IIO since that change.
> > > > 
> > > > The change is to make the pollfunc attach/detach become part of the
> > > > IIO
> > > > framework, because plenty of drivers just call
> > > > iio_triggered_buffer_postenable() &
> > > > iio_triggered_buffer_predisable()
> > > > to
> > > > manually attach/detach the pollfunc for triggered buffers.
> > > 
> > > Okay, I understand this. at91-sama5d2_adc does not manually
> > > attach/detach the pollfunc. So why do we need to change anything here
> > > ?
> > > 
> > > 
> > > > That change is from 2015, and since then, some drivers were added
> > > > that
> > > > just
> > > > manually attach/detach the pollfunc [and do nothing more with the
> > > > postenable/predisable hooks].
> > > > 
> > > > I tried to upstream a more complete version of that patch a while
> > > > ago
> > > > [u1].
> > > > https://patchwork.kernel.org/patch/10482167/
> > > > https://patchwork.kernel.org/patch/10737291/
> > > > 
> > > > The conclusion was to first fix the attach/detach pollfunc order in
> > > > all
> > > > IIO
> > > > drivers, so that when patch [u1] is applied, there is no more
> > > > discussion
> > > > about the correct order for attach/detach pollfunc.
> > > 
> > > Allright, what is required to be fixed regarding the order, in this
> > > specific case? We enable the DMA, and then we do the normal
> > > 'postenable'
> > > that was called anyway if we did not override the 'postenable' in the
> > > ops. Do you want to move this code to 'preenable' and keep
> > > 'postenable'
> > > to the standard subsystem one ?
> > > 
> > > The same applies to the predisable, we first call the subsystem
> > > 'predisable' then do the specific at91 stuff. You want to move this
> > > to
> > > the 'postdisable' ?
> > > 
> > > I think reverting the order inside the functions themselves is not
> > > good
> > > as we replace the order of starting trigger/DMA setup.
> > > So, coming to your question below...
> > > 
> > > > Coming back here [and to your question], my answer is: I don't know
> > > > if
> > > > the
> > > > at91 DMA needs to be enabled/disabled before/after the pollfunc
> > > > attach/detach.
> > > > This sounds like specific stuff for at91 [which is fine].
> > > > 
> > > > It could be that some other hooks may need to used to enable DMA
> > > > before/after the attach/detach pollfunc. Maybe
> > > > preenable()/postdisable() ?
> > > > 
> > > > In any case, what I would like [with this discussion], is to
> > > > resolve a
> > > > situation where we can get closer to moving the attach/pollfunc
> > > > code to
> > > > IIO
> > > > core. So, if AT91 requires a different ordering, I think you would
> > > > be
> > > > more
> > > > appropriate to tell me, and propose an alternative to this patch.
> > > 
> > > ... yes, this looks more appropriate, to move things to
> > > 'preenable/postdisable', if you feel like 'postenable/predisable' is
> > > not
> > > the proper place to put them.
> > > But the order itself, first enable DMA then trigger, and disable in
> > > reverse order, I do not think there is anything wrong with that? Am I
> > > misunderstanding ?
> > 
> > Should be good.
> > 
> > > If Jonathan or Ludovic have a different idea, please let me know.
> > 
> > There is an alternative here [to this].
> > Maybe using the IIO Buffer DMA[Engine] integration that Lars wrote [1].
> > This would avoid calling dmaengine_terminate_sync() and similar hooks
> > in
> > the AT91 driver. That also preserves the correct order (start DMA
> > first,
> > then attach pollfunc ; and reverse on disable).
> > But that is more work; not on the patch itself, but more on the
> > testing.
> 
> Initially, when I implemented the DMA part for this driver, this was the 
> idea. However the DMA engine was not used at that time by anyone , and I 
> could not make it work properly. Jonathan advised at that moment to use 
> this current framework.
> 
> > [1] Upstreaming more parts for the IIO Buffer DMA[Engine] integration
> > is on
> > my to-do-list as well. I think there are still some patches that we
> > use,
> > but are not upstreamed yet.
> > 
> > I'll come-up a with a V2 for this with preenable()/postdisable()
> > alternative here.
> 
> Ok, I will test it .
> 
> What I do not understand completely is why it bothers you to have at91 
> specific code in postenable / predisable.
> The same thing will happen will happen with preenable/postdisable: 
> specific at91 code will be called after subsystem preenable and before 
> subsystem postdisable.

Because I am preparing a framework change to IIO core and all IIO drivers
in mainline need to be resolved when that change happens.
I am not sure if the change will break any driver, but at least we can
minimalize breakage.

> 
> > Thanks
> > Alex
> > 
> > > Also, I can test your patch to see if everything is fine.
> > > 
> > > Thanks,
> > > Eugen
> > > 
> > > > Thanks :)
> > > > Alex
> > > > 
> > > > > > > > For this driver, the predisable & postenable hooks are also
> > > > > > > > need to
> > > > > > > > take
> > > > > > > > into consideration the touchscreen, so the hooks need to be
> > > > > > > > put
> > > > > > > > in
> > > > > > > > places
> > > > > > > > that avoid the code for that cares about it.
> > > > > > > > 
> > > > > > > 
> > > > > > > ping here
> > > > > > > 
> > > > > > > > Signed-off-by: Alexandru Ardelean <
> > > > > > > > alexandru.ardelean@analog.com>
> > > > > > > > ---
> > > > > > > >      drivers/iio/adc/at91-sama5d2_adc.c | 19 ++++++++++--
> > > > > > > > -------
> > > > > > > >      1 file changed, 10 insertions(+), 9 deletions(-)
> > > > > > > > 
> > > > > > > > diff --git a/drivers/iio/adc/at91-sama5d2_adc.c
> > > > > > > > b/drivers/iio/adc/at91-
> > > > > > > > sama5d2_adc.c
> > > > > > > > index e1850f3d5cf3..ac3e5c4c9840 100644
> > > > > > > > --- a/drivers/iio/adc/at91-sama5d2_adc.c
> > > > > > > > +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> > > > > > > > @@ -889,20 +889,24 @@ static int
> > > > > > > > at91_adc_buffer_postenable(struct
> > > > > > > > iio_dev *indio_dev)
> > > > > > > >           if (!(indio_dev->currentmode &
> > > > > > > > INDIO_ALL_TRIGGERED_MODES))
> > > > > > > >                   return -EINVAL;
> > > > > > > > 
> > > > > > > > +     ret = iio_triggered_buffer_postenable(indio_dev);
> > > > > > > > +     if (ret)
> > > > > > > > +             return ret;
> > > > > > > > +
> > > > > > > >           /* we continue with the triggered buffer */
> > > > > > > >           ret = at91_adc_dma_start(indio_dev);
> > > > > > > >           if (ret) {
> > > > > > > >                   dev_err(&indio_dev->dev, "buffer
> > > > > > > > postenable
> > > > > > > > failed\n");
> > > > > > > > +             iio_triggered_buffer_predisable(indio_dev);
> > > > > > > >                   return ret;
> > > > > > > >           }
> > > > > > > > 
> > > > > > > > -     return iio_triggered_buffer_postenable(indio_dev);
> > > > > > > > +     return 0;
> > > > > > > >      }
> > > > > > > > 
> > > > > > > >      static int at91_adc_buffer_predisable(struct iio_dev
> > > > > > > > *indio_dev)
> > > > > > > >      {
> > > > > > > >           struct at91_adc_state *st = iio_priv(indio_dev);
> > > > > > > > -     int ret;
> > > > > > > >           u8 bit;
> > > > > > > > 
> > > > > > > >           /* check if we are disabling triggered buffer or
> > > > > > > > the
> > > > > > > > touchscreen */
> > > > > > > > @@ -916,13 +920,8 @@ static int
> > > > > > > > at91_adc_buffer_predisable(struct
> > > > > > > > iio_dev
> > > > > > > > *indio_dev)
> > > > > > > >           if (!(indio_dev->currentmode &
> > > > > > > > INDIO_ALL_TRIGGERED_MODES))
> > > > > > > >                   return -EINVAL;
> > > > > > > > 
> > > > > > > > -     /* continue with the triggered buffer */
> > > > > > > > -     ret = iio_triggered_buffer_predisable(indio_dev);
> > > > > > > > -     if (ret < 0)
> > > > > > > > -             dev_err(&indio_dev->dev, "buffer predisable
> > > > > > > > failed\n");
> > > > > > > > -
> > > > > > > >           if (!st->dma_st.dma_chan)
> > > > > > > > -             return ret;
> > > > > > > > +             goto out;
> > > > > > > > 
> > > > > > > >           /* if we are using DMA we must clear registers
> > > > > > > > and end
> > > > > > > > DMA
> > > > > > > > */
> > > > > > > >           dmaengine_terminate_sync(st->dma_st.dma_chan);
> > > > > > > > @@ -949,7 +948,9 @@ static int
> > > > > > > > at91_adc_buffer_predisable(struct
> > > > > > > > iio_dev
> > > > > > > > *indio_dev)
> > > > > > > > 
> > > > > > > >           /* read overflow register to clear possible
> > > > > > > > overflow
> > > > > > > > status
> > > > > > > > */
> > > > > > > >           at91_adc_readl(st, AT91_SAMA5D2_OVER);
> > > > > > > > -     return ret;
> > > > > > > > +
> > > > > > > > +out:
> > > > > > 
> > > > > > I would prefer if this label is named with a function name
> > > > > > prefix,
> > > > > > otherwise 'out' is pretty generic and can collide with other
> > > > > > things
> > > > > > in
> > > > > > the file... I want to avoid having an out2 , out3 later if code
> > > > > > changes.
> > > > > > 
> > > > 
> > > > Sure.
> > > > Will do that.
> > > > 
> > > > I did not bother much with these labels, because after applying
> > > > [u1],
> > > > some
> > > > of them [maybe all] should go away.
> > > > 
> > > > 
> > > > > > Thanks for the patch,
> > > > > > Eugen
> > > > > > 
> > > > > > > > +     return iio_triggered_buffer_predisable(indio_dev);
> > > > > > > >      }
> > > > > > > > 
> > > > > > > >      static const struct iio_buffer_setup_ops
> > > > > > > > at91_buffer_setup_ops =
> > > > > > > > {
> > > > > > > _______________________________________________
> > > > > > > linux-arm-kernel mailing list
> > > > > > > linux-arm-kernel@lists.infradead.org
> > > > > > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > > > > > > 
> > > > _______________________________________________
> > > > linux-arm-kernel mailing list
> > > > linux-arm-kernel@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > > > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
