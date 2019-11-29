Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B6010D1AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 08:03:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmLCN5mqhCW3cDBdwK+o7ByIMH6YKtDXxYSBe8iPD8A=; b=iyKHWAhjkEsbyy
	gELOMZ0E5tU3MkqhGwl/uYtJL/EqzUNS9pkERmaVMJ9zDJ3qWTlq1/ptFodsIRMbudJ7WpTXeyIGg
	xhU6nhMxllskErG9ts3T84W8P8UaBiPL74bbaWLmjXWkSPySk07By0+vFQBT9wElDtN1ti+EDPyHx
	FQKkOGxVQSELRDdUCGHx/qgbrH4Q1GIwtUN5xBIROC3DlIca6frxD45ayWp3KDNtAlCxDsGTakeQY
	3OEKYTBNWLxMiyqAZZum+AoNI5/jw+IvJI4tTpxrQSHnFb+Ou9WYpOgVYpu8hn+IrnBqwB9+QWuMC
	JotihNTPlNnt0NnfKLjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaaIp-0000Ek-57; Fri, 29 Nov 2019 07:02:55 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaaIc-0000Dh-W1
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 07:02:45 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAT6w9BQ025192; Fri, 29 Nov 2019 02:02:32 -0500
Received: from nam03-co1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2059.outbound.protection.outlook.com [104.47.40.59])
 by mx0b-00128a01.pphosted.com with ESMTP id 2whux8crq7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Nov 2019 02:02:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ip9SPWrMOD1ap9Pvpy+6JTIFPbrn3fXkgXWS+KtGVA0k6jpF6+PYJybyNT/Ez7ocdI2DWOPujOoiPOlME9w1WUwpg215nQNE9uqGogPXrqWQFaaDZx4N/NKIAFVk6st+jXAtNm9r22Eo136MCBcnqe5jcKR12URbpft8WKDMSMza7eKtBdjKr6rlh2n7cPWfL7sfLImsVi3tSW6ILtxIZhlLUpmIJixeKES5QOSGsfxjuE8ihAdCB7DViLy+4IGjQqkKQlJY2i8GAzhiVlQJhnExtc2IhyG3neLPRSpSqecQLgDjRh0zXQMekdE3S6FRyz1VEsDAsl98qQNHF5HdoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fov7JQlMW1wP5Tuida+tdKgd0tCCrrS/cvvKjKP6iMw=;
 b=GvsbnI0FvcHS70LwsLhnAWIZGLyEAdIMn3CWFnC/bQmZs1ubcKxsBSmCNAmxZ5JUht/9hZHo8dSiVjBIn7m8w+feiWlcGKNArpAJ0RtSB+FJqisG2aOLNv3/kdyvvcgfV/88rwUoYL+3RVZgxy3PsIg9Lo9ar2W8SW+M2IRUlZZgsNdoQiS5qAKlt8PUj8xDZk5zTY9usoyZBNGuHAetjWDYbHUsqABvRecTcZDXfyg+6pujx0oJpfVKt4epIDDPJ7xshfbFtC4kEt2jWIVwolu898CvyPVCojgRMQbQOdWafzA5kEQY2sf8bfGmSE1QMhHqEao9pGj1B103YrNY7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fov7JQlMW1wP5Tuida+tdKgd0tCCrrS/cvvKjKP6iMw=;
 b=J6svKUf/Frrm38Bo/fAXWT4lulgF0BDIktNkQ6qS9DdBThwzYghiKkeL6NVLMmUv5Tz44Vlf8D4VQ9xDUT4PIcJ+LKlKjexbezRH38zW9Og/mtWmZk3iauEX0EgODGyvgKNPdimAVu5tN1njh7JJ6oWDxQ26lvaCLs1sw2DkM1Y=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5190.namprd03.prod.outlook.com (20.180.12.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Fri, 29 Nov 2019 07:02:30 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2495.014; Fri, 29 Nov 2019
 07:02:30 +0000
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
Thread-Index: AQHViXtdnDhd99DyyUetPzMU9xg88KecMFeAgARKfgCAAHDLAIABB6mA
Date: Fri, 29 Nov 2019 07:02:29 +0000
Message-ID: <74aabb41107ab162660f21e726c88a9dd40ecc5e.camel@analog.com>
References: <20191023082508.17583-1-alexandru.ardelean@analog.com>
 <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
 <9df3d999-0ec6-a282-d24b-8f7df5f14f6d@microchip.com>
 <e43bf58f-223c-0b12-2912-6f353d866ec3@microchip.com>
In-Reply-To: <e43bf58f-223c-0b12-2912-6f353d866ec3@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 37f99650-3ae2-4422-db8b-08d7749a19c4
x-ms-traffictypediagnostic: CH2PR03MB5190:
x-microsoft-antispam-prvs: <CH2PR03MB51904EFF61B10624D519BD4FF9460@CH2PR03MB5190.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0236114672
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(51914003)(189003)(199004)(14454004)(4326008)(7416002)(7736002)(305945005)(966005)(6246003)(6306002)(81166006)(81156014)(8676002)(8936002)(6116002)(478600001)(4001150100001)(3846002)(25786009)(229853002)(66066001)(110136005)(99286004)(2906002)(54906003)(316002)(86362001)(2201001)(5660300002)(6436002)(256004)(14444005)(5024004)(76176011)(11346002)(26005)(53546011)(2501003)(186003)(6486002)(6506007)(2616005)(71190400001)(71200400001)(446003)(102836004)(91956017)(76116006)(66476007)(66556008)(64756008)(66446008)(36756003)(6512007)(66946007)(118296001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5190;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SdUFwf2FVdWOyhXJ6uX1xJEHb3SMyKaf3jWTSsb1QDg7a6hhq5vbhpyK1s8rpcq4OMlCqZXe6HNzkYJdssU3IqntgMaTAI1P+qxxbQt75jcxQwzNYCS7g7fFGwjr2mrrHTY5nxgWS2F0+foeVz2+QpKn5y3s8M6Fq3mxBsTOWVq4t7wUoUQOHq3w2qIdttGFwnOs0xjQscVCD/oDbkowaE/rp0sTg996T4nJATQPz8belydOZDAjwdoMXUnngN1bKbIid1DQmOj5LFhEyipfkudDSo9RdqjzJ/PNSa2NDMvkbLyzMcnJ+SgU1sSpLSvYyTwpz55stNdHyP6qho8jxoAY7/Q/VuCckl9t3XVsIO9OTRt/urASOr1VS27N1H+6LLDVBcloTz6SQylE9CkRfnrrYHJjBZKVUHa1USXVsIRATppW8K1hQy9AhgRuy0N9RCl/K9pirpThDTRP5hmgJ7JaYRlVogl6tcOXHxD079U=
x-ms-exchange-transport-forked: True
Content-ID: <18A5E31AD40D4D40B9A7CED31D886954@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37f99650-3ae2-4422-db8b-08d7749a19c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2019 07:02:30.1405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +9bhz2tHBq77U/Jx65NqPcQhFZER4fIyO9cGxi8tcgQoSJO72yFFTBOaFTM/VUotqWYB7vBHwv99HC3lW+6iv926sJhUFEgcGy+5VBHl5a0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5190
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-29_01:2019-11-29,2019-11-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999
 adultscore=0 spamscore=0 suspectscore=0 priorityscore=1501 clxscore=1011
 lowpriorityscore=0 bulkscore=0 impostorscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1911290059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_230243_211267_F5738D4D 
X-CRM114-Status: GOOD (  39.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "Ludovic.Desroches@microchip.com" <Ludovic.Desroches@microchip.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-11-28 at 15:19 +0000, Eugen.Hristev@microchip.com wrote:
> 

Hey,

Sorry for the late reply.
I'm also juggling a few things.

> 
> On 28.11.2019 10:36, Eugen.Hristev@microchip.com wrote:
> 
> > On 25.11.2019 17:03, Ardelean, Alexandru wrote:
> > > On Wed, 2019-10-23 at 11:25 +0300, Alexandru Ardelean wrote:
> > > > The iio_triggered_buffer_{predisable,postenable} functions
> > > > attach/detach
> > > > poll functions.
> > > > 
> > > > The iio_triggered_buffer_postenable() should be called first to
> > > > attach
> > > > the
> > > > poll function, and then the driver can init the data to be
> > > > triggered.
> > > > 
> > > > Similarly, iio_triggered_buffer_predisable() should be called last
> > > > to
> > > > first
> > > > disable the data (to be triggered) and then the poll function
> > > > should be
> > > > detached.
> > 
> > Hi Alexandru,
> > 
> > Sorry for this late reply,
> > 
> > I remember that by adding specific at91_adc code for
> > predisable/postenable , I was replacing the existing standard callback
> > with my own, and have my specific at91 code before postenable and then
> > calling the subsystem postenable,
> > and in similar way, for predisable, first call the subsystem predisable
> > then doing my predisable code (in reverse order as in postenable)
> > 
> > If you say the order should be reversed (basically have the
> > pollfunction
> > first), how is current code working ?
> > Should current code fail if the poll function is not attached in time ?
> > Or there is a race between triggered data and the attachment of the
> > pollfunc ?
> > 
> > I am thinking that attaching the pollfunc later makes it work because
> > the DMA is not started yet. What happens if we have the pollfunc
> > attached but DMA is not started (basically the trigger is not started)
> > ,
> > can this lead to unexpected behavior ? Like the pollfunc polling but no
> > trigger started/no DMA started.
> 
> I looked a bit more into the code and in DMA case, using postenable 
> first will lead to calling attach pollfunc, which will also enable the 
> trigger, but the DMA is not yet started.
> Is this the desired effect ? 

Yes.

> Normally when using DMA I would say we 
> would need to enable DMA first to be ready to carry data (and coherent 
> area etc.) and then enable the trigger.

So, there is a change in our tree [from some time ago].
See here:
https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8

Particularly, what's interesting is around line:
https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8#diff-0a87744ce945d2c1c89ea19f21fb35bbR722
And you may need to expand some stuff to see more of the function-body.
And some things may have changed in upstream IIO since that change.

The change is to make the pollfunc attach/detach become part of the IIO
framework, because plenty of drivers just call
iio_triggered_buffer_postenable() & iio_triggered_buffer_predisable() to
manually attach/detach the pollfunc for triggered buffers.

That change is from 2015, and since then, some drivers were added that just
manually attach/detach the pollfunc [and do nothing more with the
postenable/predisable hooks].

I tried to upstream a more complete version of that patch a while ago [u1].
https://patchwork.kernel.org/patch/10482167/
https://patchwork.kernel.org/patch/10737291/

The conclusion was to first fix the attach/detach pollfunc order in all IIO
drivers, so that when patch [u1] is applied, there is no more discussion
about the correct order for attach/detach pollfunc.

Coming back here [and to your question], my answer is: I don't know if the
at91 DMA needs to be enabled/disabled before/after the pollfunc
attach/detach.
This sounds like specific stuff for at91 [which is fine].

It could be that some other hooks may need to used to enable DMA
before/after the attach/detach pollfunc. Maybe preenable()/postdisable() ?

In any case, what I would like [with this discussion], is to resolve a
situation where we can get closer to moving the attach/pollfunc code to IIO
core. So, if AT91 requires a different ordering, I think you would be more
appropriate to tell me, and propose an alternative to this patch.

Thanks :)
Alex

> 
> > > > For this driver, the predisable & postenable hooks are also need to
> > > > take
> > > > into consideration the touchscreen, so the hooks need to be put in
> > > > places
> > > > that avoid the code for that cares about it.
> > > > 
> > > 
> > > ping here
> > > 
> > > > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> > > > ---
> > > >    drivers/iio/adc/at91-sama5d2_adc.c | 19 ++++++++++---------
> > > >    1 file changed, 10 insertions(+), 9 deletions(-)
> > > > 
> > > > diff --git a/drivers/iio/adc/at91-sama5d2_adc.c
> > > > b/drivers/iio/adc/at91-
> > > > sama5d2_adc.c
> > > > index e1850f3d5cf3..ac3e5c4c9840 100644
> > > > --- a/drivers/iio/adc/at91-sama5d2_adc.c
> > > > +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> > > > @@ -889,20 +889,24 @@ static int at91_adc_buffer_postenable(struct
> > > > iio_dev *indio_dev)
> > > >         if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
> > > >                 return -EINVAL;
> > > > 
> > > > +     ret = iio_triggered_buffer_postenable(indio_dev);
> > > > +     if (ret)
> > > > +             return ret;
> > > > +
> > > >         /* we continue with the triggered buffer */
> > > >         ret = at91_adc_dma_start(indio_dev);
> > > >         if (ret) {
> > > >                 dev_err(&indio_dev->dev, "buffer postenable
> > > > failed\n");
> > > > +             iio_triggered_buffer_predisable(indio_dev);
> > > >                 return ret;
> > > >         }
> > > > 
> > > > -     return iio_triggered_buffer_postenable(indio_dev);
> > > > +     return 0;
> > > >    }
> > > > 
> > > >    static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
> > > >    {
> > > >         struct at91_adc_state *st = iio_priv(indio_dev);
> > > > -     int ret;
> > > >         u8 bit;
> > > > 
> > > >         /* check if we are disabling triggered buffer or the
> > > > touchscreen */
> > > > @@ -916,13 +920,8 @@ static int at91_adc_buffer_predisable(struct
> > > > iio_dev
> > > > *indio_dev)
> > > >         if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
> > > >                 return -EINVAL;
> > > > 
> > > > -     /* continue with the triggered buffer */
> > > > -     ret = iio_triggered_buffer_predisable(indio_dev);
> > > > -     if (ret < 0)
> > > > -             dev_err(&indio_dev->dev, "buffer predisable
> > > > failed\n");
> > > > -
> > > >         if (!st->dma_st.dma_chan)
> > > > -             return ret;
> > > > +             goto out;
> > > > 
> > > >         /* if we are using DMA we must clear registers and end DMA
> > > > */
> > > >         dmaengine_terminate_sync(st->dma_st.dma_chan);
> > > > @@ -949,7 +948,9 @@ static int at91_adc_buffer_predisable(struct
> > > > iio_dev
> > > > *indio_dev)
> > > > 
> > > >         /* read overflow register to clear possible overflow status
> > > > */
> > > >         at91_adc_readl(st, AT91_SAMA5D2_OVER);
> > > > -     return ret;
> > > > +
> > > > +out:
> > 
> > I would prefer if this label is named with a function name prefix,
> > otherwise 'out' is pretty generic and can collide with other things in
> > the file... I want to avoid having an out2 , out3 later if code
> > changes.
> > 

Sure.
Will do that.

I did not bother much with these labels, because after applying [u1], some
of them [maybe all] should go away.


> > Thanks for the patch,
> > Eugen
> > 
> > > > +     return iio_triggered_buffer_predisable(indio_dev);
> > > >    }
> > > > 
> > > >    static const struct iio_buffer_setup_ops at91_buffer_setup_ops =
> > > > {
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
