Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1919910FD3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DYc5HapFIlYYavOmqjzgBOcsetcQ/PvKzZs6WOi4mg=; b=Z3dZJSWdZdqJIU
	/rAz8Ryqyfh+dGHWpiBZjxgYqp/phnKhDseTnM1txmS1np4GmgK3o83cO8+fnFzGprymfywUQAIUV
	aV6hlKOXCUiBfvFOPRga0MI5wYX5pb51zUbZfiDT/Sip/bRLoukqyqIJNEkH9NwDZUYCSEEEqjjWm
	7kqhJ8dap7c1ym50ShlRjp3BlL4fAKU7DQ8LQdbujEK0F81aLhNU2g5r2iYUgD4OzlaJa+dfv2pr6
	c5NWHV2Q0UkphjrOhWFL+xNjL4218mzFXnkvPUJV/GIXzbl+9UpF79eLhJfTgEMkizyPlMDrPWh8h
	SCqBCIIqpRNGY+7ioWXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6xm-0005lG-Sv; Tue, 03 Dec 2019 12:07:30 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6v0-0002Et-9s
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:04:41 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB3BrC8K031855; Tue, 3 Dec 2019 07:04:26 -0500
Received: from nam01-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam01lp2051.outbound.protection.outlook.com [104.47.32.51])
 by mx0a-00128a01.pphosted.com with ESMTP id 2wkp76g3pq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 Dec 2019 07:04:26 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fP9MR3TMoWrDfzfQSVtDT7Clx4y1Fr8DXJIV7pwTpLko1lwGioo95FmNTgxR9zXOtQrVdS54JWqYZ/KP270FoOWFYfXrcoDTwu4w5nX4KQcrnKHP+vFuzvxFLUXf/oL/mDvRund70GZg0RdtB8/JdHz+Hyefvtd/T2TICecgYIRcW3YkQ9oPEuJ8+fb6mXzvwuWcHfdafJJegGHq+bfBm1ICrgOo+9uybXZHrogPEnunIPBHMAOwH4GFkKaNTVNTY/YfHg9TxE48cJoj+2S7AiITksjF3QbTHTq0h65tifiUWDnzwAZ4cO4oqGcahTRyk+cxL8pouqTAS8FtrW4gZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UKXhCvGS60qMJSTyCKiV/6T6neAdUI9qcGViE9kKxBY=;
 b=CSlGrEmxU9/SN4WzzFVJhHGsrafPHbdzJuPTKeJYvyed5wRJ6sDl6DNeI0wglmPFZX+5E367b4WzKybXxBOP1Vt0/vFNmaztmawalN05B+itS2gg6eFSr0RKGX+tsKloVXv1lmuHSioHR5gg5MqnmsFk2eN5BG42plOmzhZMnwcYSgMSuSY9RI4vWemmGWkEsXw1S5/KB3zposM090BoUTB31j0YCe0YknPW1+WNs5FdR3Tnj+J4gOkSqxYmYFfqhBC5qdskz3voow4ggjMPD0WqH0OVa1kTJzFQuofO4zppAJ20tg75Qf09mqlWAPE44itrY2s6+FlHCXcw1MxWAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UKXhCvGS60qMJSTyCKiV/6T6neAdUI9qcGViE9kKxBY=;
 b=soT/0ML3r5twHDkthUhEG/U4MlExrflridlVWqYNkwxEmmOlxuLb4aIzvwc2eckI1ky1xL+2Lghpwseh35JyIb5tdLTaWg5zTOrlRbifiJmToZHQbKnyp/3lIB0f3g2rExtOih/kiXn5n/7R3z+3Mwb7RFiL5XiEvaYwmaJeIo4=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5336.namprd03.prod.outlook.com (20.180.13.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Tue, 3 Dec 2019 12:04:25 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 12:04:25 +0000
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
Thread-Index: AQHViXtdnDhd99DyyUetPzMU9xg88KecMFeAgARKfgCAAHDLAIABB6mAgAZ3zACAACXqAA==
Date: Tue, 3 Dec 2019 12:04:24 +0000
Message-ID: <0075d7fc890b0986f2113664c664ff46931de432.camel@analog.com>
References: <20191023082508.17583-1-alexandru.ardelean@analog.com>
 <17cf55869cc418795d0013c0594ed8fc04381d46.camel@analog.com>
 <9df3d999-0ec6-a282-d24b-8f7df5f14f6d@microchip.com>
 <e43bf58f-223c-0b12-2912-6f353d866ec3@microchip.com>
 <74aabb41107ab162660f21e726c88a9dd40ecc5e.camel@analog.com>
 <60ce6ff9-ba06-2522-e9a0-55e6fd2731ec@microchip.com>
In-Reply-To: <60ce6ff9-ba06-2522-e9a0-55e6fd2731ec@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 72537645-ff0a-4a53-8e75-08d777e8f0bc
x-ms-traffictypediagnostic: CH2PR03MB5336:
x-microsoft-antispam-prvs: <CH2PR03MB533668B0C0624CA41AAFA495F9420@CH2PR03MB5336.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(136003)(396003)(39860400002)(376002)(189003)(199004)(51914003)(118296001)(305945005)(2906002)(14454004)(5660300002)(7416002)(54906003)(7736002)(110136005)(6512007)(86362001)(6116002)(6486002)(2201001)(6246003)(3846002)(446003)(26005)(2616005)(53546011)(6436002)(11346002)(186003)(6506007)(76176011)(102836004)(6306002)(4326008)(229853002)(66446008)(64756008)(66946007)(66556008)(316002)(66476007)(2501003)(71190400001)(8676002)(14444005)(71200400001)(256004)(36756003)(81166006)(81156014)(25786009)(99286004)(966005)(5024004)(8936002)(4001150100001)(478600001)(76116006)(30864003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5336;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J0D8xDifPvVH2zlNEpdJj5Tf94QMHgKUr1dMhg+Gz+kpOYdrZkywqR4N2UMVKodIuQqabmP216qdogutD/IOSGwt94ZQNK9KDjBqcM5vYeOsifXhSDIk0OrGzOhNRixO900sIRyRTAtrmn+seXYHhuJkbFpXSZxBPZgk+ih6QolOeG+gklQ+AlobcGS8x5AGFCIt50IbwRtLTfKXDukrLdxH1Xs/BV7tOljsl7uZiABCDfiNkpjf5KbfTsfgL3o18JlU2zP606xK+yZNgorDusZF6JryrOm0wNZKdsDllWtbqv3lrDylYxqrN2S+EY38DV+2TiTz/taI7C2xlXM0rK6fdcLS9CVyEgfE0VXrdFN67gKI7zdLcFbphzLvj2anPkB8QUz4LWT8JYtJwPeJETDIpEeea8dFerZdbBfLwcuHtjihK5RUykIVpJhfs3xcpvnYHX6Xe4Zo0DkQEIvq/fYn+THTG9y+MG7R/I1uoFA=
x-ms-exchange-transport-forked: True
Content-ID: <44D64A5D4EFCA441A12BA3641CE33178@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72537645-ff0a-4a53-8e75-08d777e8f0bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 12:04:24.9319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1l16As2QhNkQv70XfLeDeR+uPS7xm+qPCulduGwzBW8cgbJPIGO5mrbioxQYKlynA6ofJV2xunpdxgq+85IuhmPghLqczklsCPI+m8XWDnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5336
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-03_02:2019-12-02,2019-12-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 adultscore=0 priorityscore=1501 clxscore=1015
 mlxlogscore=999 suspectscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1912030096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040438_434915_A75B1355 
X-CRM114-Status: GOOD (  42.46  )
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

On Tue, 2019-12-03 at 09:49 +0000, Eugen.Hristev@microchip.com wrote:
> [External]
> 
> 
> 
> On 29.11.2019 09:02, Ardelean, Alexandru wrote:
> 
> > On Thu, 2019-11-28 at 15:19 +0000, Eugen.Hristev@microchip.com wrote:
> > 
> > Hey,
> > 
> > Sorry for the late reply.
> > I'm also juggling a few things.
> > 
> > > On 28.11.2019 10:36, Eugen.Hristev@microchip.com wrote:
> > > 
> > > > On 25.11.2019 17:03, Ardelean, Alexandru wrote:
> > > > > On Wed, 2019-10-23 at 11:25 +0300, Alexandru Ardelean wrote:
> > > > > > The iio_triggered_buffer_{predisable,postenable} functions
> > > > > > attach/detach
> > > > > > poll functions.
> > > > > > 
> > > > > > The iio_triggered_buffer_postenable() should be called first to
> > > > > > attach
> > > > > > the
> > > > > > poll function, and then the driver can init the data to be
> > > > > > triggered.
> > > > > > 
> > > > > > Similarly, iio_triggered_buffer_predisable() should be called
> > > > > > last
> > > > > > to
> > > > > > first
> > > > > > disable the data (to be triggered) and then the poll function
> > > > > > should be
> > > > > > detached.
> > > > 
> > > > Hi Alexandru,
> > > > 
> > > > Sorry for this late reply,
> > > > 
> > > > I remember that by adding specific at91_adc code for
> > > > predisable/postenable , I was replacing the existing standard
> > > > callback
> > > > with my own, and have my specific at91 code before postenable and
> > > > then
> > > > calling the subsystem postenable,
> > > > and in similar way, for predisable, first call the subsystem
> > > > predisable
> > > > then doing my predisable code (in reverse order as in postenable)
> > > > 
> > > > If you say the order should be reversed (basically have the
> > > > pollfunction
> > > > first), how is current code working ?
> > > > Should current code fail if the poll function is not attached in
> > > > time ?
> > > > Or there is a race between triggered data and the attachment of the
> > > > pollfunc ?
> > > > 
> > > > I am thinking that attaching the pollfunc later makes it work
> > > > because
> > > > the DMA is not started yet. What happens if we have the pollfunc
> > > > attached but DMA is not started (basically the trigger is not
> > > > started)
> > > > ,
> > > > can this lead to unexpected behavior ? Like the pollfunc polling
> > > > but no
> > > > trigger started/no DMA started.
> > > 
> > > I looked a bit more into the code and in DMA case, using postenable
> > > first will lead to calling attach pollfunc, which will also enable
> > > the
> > > trigger, but the DMA is not yet started.
> > > Is this the desired effect ?
> > 
> > Yes.
> 
> How is this correct ? We start the trigger but have no buffer to carry 
> to... what happens with the data ? -> I think we both have an answer to 
> that, as you state below
> 
> > > Normally when using DMA I would say we
> > > would need to enable DMA first to be ready to carry data (and
> > > coherent
> > > area etc.) and then enable the trigger.
> > 
> > So, there is a change in our tree [from some time ago].
> > See here:
> > https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8
> > 
> > Particularly, what's interesting is around line:
> > https://github.com/analogdevicesinc/linux/commit/eee97d12665fef8cf429a1e5035b23ae969705b8#diff-0a87744ce945d2c1c89ea19f21fb35bbR722
> > And you may need to expand some stuff to see more of the function-body.
> > And some things may have changed in upstream IIO since that change.
> > 
> > The change is to make the pollfunc attach/detach become part of the IIO
> > framework, because plenty of drivers just call
> > iio_triggered_buffer_postenable() & iio_triggered_buffer_predisable()
> > to
> > manually attach/detach the pollfunc for triggered buffers.
> 
> Okay, I understand this. at91-sama5d2_adc does not manually 
> attach/detach the pollfunc. So why do we need to change anything here ?
> 
> 
> > That change is from 2015, and since then, some drivers were added that
> > just
> > manually attach/detach the pollfunc [and do nothing more with the
> > postenable/predisable hooks].
> > 
> > I tried to upstream a more complete version of that patch a while ago
> > [u1].
> > https://patchwork.kernel.org/patch/10482167/
> > https://patchwork.kernel.org/patch/10737291/
> > 
> > The conclusion was to first fix the attach/detach pollfunc order in all
> > IIO
> > drivers, so that when patch [u1] is applied, there is no more
> > discussion
> > about the correct order for attach/detach pollfunc.
> 
> Allright, what is required to be fixed regarding the order, in this 
> specific case? We enable the DMA, and then we do the normal 'postenable' 
> that was called anyway if we did not override the 'postenable' in the 
> ops. Do you want to move this code to 'preenable' and keep 'postenable' 
> to the standard subsystem one ?
> 
> The same applies to the predisable, we first call the subsystem 
> 'predisable' then do the specific at91 stuff. You want to move this to 
> the 'postdisable' ?
> 
> I think reverting the order inside the functions themselves is not good 
> as we replace the order of starting trigger/DMA setup.
> So, coming to your question below...
> 
> > Coming back here [and to your question], my answer is: I don't know if
> > the
> > at91 DMA needs to be enabled/disabled before/after the pollfunc
> > attach/detach.
> > This sounds like specific stuff for at91 [which is fine].
> > 
> > It could be that some other hooks may need to used to enable DMA
> > before/after the attach/detach pollfunc. Maybe
> > preenable()/postdisable() ?
> > 
> > In any case, what I would like [with this discussion], is to resolve a
> > situation where we can get closer to moving the attach/pollfunc code to
> > IIO
> > core. So, if AT91 requires a different ordering, I think you would be
> > more
> > appropriate to tell me, and propose an alternative to this patch.
> 
> ... yes, this looks more appropriate, to move things to 
> 'preenable/postdisable', if you feel like 'postenable/predisable' is not 
> the proper place to put them.
> But the order itself, first enable DMA then trigger, and disable in 
> reverse order, I do not think there is anything wrong with that? Am I 
> misunderstanding ?

Should be good.

> 
> If Jonathan or Ludovic have a different idea, please let me know.

There is an alternative here [to this].
Maybe using the IIO Buffer DMA[Engine] integration that Lars wrote [1].
This would avoid calling dmaengine_terminate_sync() and similar hooks in
the AT91 driver. That also preserves the correct order (start DMA first,
then attach pollfunc ; and reverse on disable).
But that is more work; not on the patch itself, but more on the testing.

[1] Upstreaming more parts for the IIO Buffer DMA[Engine] integration is on
my to-do-list as well. I think there are still some patches that we use,
but are not upstreamed yet.

I'll come-up a with a V2 for this with preenable()/postdisable()
alternative here.

Thanks
Alex

> 
> Also, I can test your patch to see if everything is fine.
> 
> Thanks,
> Eugen
> 
> > Thanks :)
> > Alex
> > 
> > > > > > For this driver, the predisable & postenable hooks are also
> > > > > > need to
> > > > > > take
> > > > > > into consideration the touchscreen, so the hooks need to be put
> > > > > > in
> > > > > > places
> > > > > > that avoid the code for that cares about it.
> > > > > > 
> > > > > 
> > > > > ping here
> > > > > 
> > > > > > Signed-off-by: Alexandru Ardelean <
> > > > > > alexandru.ardelean@analog.com>
> > > > > > ---
> > > > > >     drivers/iio/adc/at91-sama5d2_adc.c | 19 ++++++++++---------
> > > > > >     1 file changed, 10 insertions(+), 9 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/iio/adc/at91-sama5d2_adc.c
> > > > > > b/drivers/iio/adc/at91-
> > > > > > sama5d2_adc.c
> > > > > > index e1850f3d5cf3..ac3e5c4c9840 100644
> > > > > > --- a/drivers/iio/adc/at91-sama5d2_adc.c
> > > > > > +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> > > > > > @@ -889,20 +889,24 @@ static int
> > > > > > at91_adc_buffer_postenable(struct
> > > > > > iio_dev *indio_dev)
> > > > > >          if (!(indio_dev->currentmode &
> > > > > > INDIO_ALL_TRIGGERED_MODES))
> > > > > >                  return -EINVAL;
> > > > > > 
> > > > > > +     ret = iio_triggered_buffer_postenable(indio_dev);
> > > > > > +     if (ret)
> > > > > > +             return ret;
> > > > > > +
> > > > > >          /* we continue with the triggered buffer */
> > > > > >          ret = at91_adc_dma_start(indio_dev);
> > > > > >          if (ret) {
> > > > > >                  dev_err(&indio_dev->dev, "buffer postenable
> > > > > > failed\n");
> > > > > > +             iio_triggered_buffer_predisable(indio_dev);
> > > > > >                  return ret;
> > > > > >          }
> > > > > > 
> > > > > > -     return iio_triggered_buffer_postenable(indio_dev);
> > > > > > +     return 0;
> > > > > >     }
> > > > > > 
> > > > > >     static int at91_adc_buffer_predisable(struct iio_dev
> > > > > > *indio_dev)
> > > > > >     {
> > > > > >          struct at91_adc_state *st = iio_priv(indio_dev);
> > > > > > -     int ret;
> > > > > >          u8 bit;
> > > > > > 
> > > > > >          /* check if we are disabling triggered buffer or the
> > > > > > touchscreen */
> > > > > > @@ -916,13 +920,8 @@ static int
> > > > > > at91_adc_buffer_predisable(struct
> > > > > > iio_dev
> > > > > > *indio_dev)
> > > > > >          if (!(indio_dev->currentmode &
> > > > > > INDIO_ALL_TRIGGERED_MODES))
> > > > > >                  return -EINVAL;
> > > > > > 
> > > > > > -     /* continue with the triggered buffer */
> > > > > > -     ret = iio_triggered_buffer_predisable(indio_dev);
> > > > > > -     if (ret < 0)
> > > > > > -             dev_err(&indio_dev->dev, "buffer predisable
> > > > > > failed\n");
> > > > > > -
> > > > > >          if (!st->dma_st.dma_chan)
> > > > > > -             return ret;
> > > > > > +             goto out;
> > > > > > 
> > > > > >          /* if we are using DMA we must clear registers and end
> > > > > > DMA
> > > > > > */
> > > > > >          dmaengine_terminate_sync(st->dma_st.dma_chan);
> > > > > > @@ -949,7 +948,9 @@ static int
> > > > > > at91_adc_buffer_predisable(struct
> > > > > > iio_dev
> > > > > > *indio_dev)
> > > > > > 
> > > > > >          /* read overflow register to clear possible overflow
> > > > > > status
> > > > > > */
> > > > > >          at91_adc_readl(st, AT91_SAMA5D2_OVER);
> > > > > > -     return ret;
> > > > > > +
> > > > > > +out:
> > > > 
> > > > I would prefer if this label is named with a function name prefix,
> > > > otherwise 'out' is pretty generic and can collide with other things
> > > > in
> > > > the file... I want to avoid having an out2 , out3 later if code
> > > > changes.
> > > > 
> > 
> > Sure.
> > Will do that.
> > 
> > I did not bother much with these labels, because after applying [u1],
> > some
> > of them [maybe all] should go away.
> > 
> > 
> > > > Thanks for the patch,
> > > > Eugen
> > > > 
> > > > > > +     return iio_triggered_buffer_predisable(indio_dev);
> > > > > >     }
> > > > > > 
> > > > > >     static const struct iio_buffer_setup_ops
> > > > > > at91_buffer_setup_ops =
> > > > > > {
> > > > > _______________________________________________
> > > > > linux-arm-kernel mailing list
> > > > > linux-arm-kernel@lists.infradead.org
> > > > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > > > > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
