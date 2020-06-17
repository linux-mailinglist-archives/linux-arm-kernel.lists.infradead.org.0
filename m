Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90061FCEDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 15:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3admDZyvDBmMvha8jEqM8o+cGyoM6gNWEAryY1G8hg=; b=F+gaptVNGTmrOB
	6v58NAXP6ID7jlIHzkn8agY3kGwjAzodquPqcNKjDYvx2Aji52AQHDLLNs2tqd3iCP96twCnCjsWZ
	c8O9Teb372r6yOD0lwXHVe0uJ7KAID+mfOu3TTQ3vMWA8Q084jUsocjgw6wVJSmCt7Cd+CJqbAWAD
	DNPMpGqpi5i82taBI0LxQs6mAXEgVBgFVGVFVhh7+rIuakhgivfI6bRgnT2tgQTh6S0CZMn2K+qMa
	JD6siGpKnmcXY4UkKS1CIeHYNLTQPqeOhpdTpf2wtpABEtqgsYWvZ02BWyLY4X2AqzTp9d9htb3CY
	AzMImwsNcIA9nJZBM+qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYUs-0003cb-HD; Wed, 17 Jun 2020 13:52:58 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYUe-0003bm-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:52:46 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05HDjXdd020968; Wed, 17 Jun 2020 09:52:39 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-00128a01.pphosted.com with ESMTP id 31q64v29re-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Jun 2020 09:52:39 -0400
Received: from m0167091.ppops.net (m0167091.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 05HDqdfJ028642;
 Wed, 17 Jun 2020 09:52:39 -0400
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
 by mx0b-00128a01.pphosted.com with ESMTP id 31q64v29ra-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Jun 2020 09:52:39 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eU00gBt7LOVgxhXPyoXwxHNrpKzosG+U5hXxMKOOWjEE7nKtQSr9+VZ3jwKzpkx5FNkDw/Zic8Lo7WwWU14mhDFGn9eGhqONmywBmyQp5aNfyPOZvQ+lbBe2IFgVMpXoUiQyS+F7FfTsdQ/8QQpJrDLLDXLaslVIb1OJ1I38k4b4qNJimAoKGHyT7MVHST0qbymBX8pxRSlinDKYAmed3AkXuv6rQW1JYVBl7+4vaOzCWjiH2Y6glWuZCag+og5tAgyzGA0/JUP7WTfiyKVuby5bSliz2UYsIRej1qtZ8uewy6r66NtGlExQUMNQUhEi4xhPnSKWzZ+FkAYfBips+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zxrlPdcZi9XB0ktRpTqucbfjtiSTKEgPyOV9Q3whs+k=;
 b=XmrLbeJfraoP0xVkpdAh/c8eYeKTFoKxwvi51AobNVlerPVOCWzkEno+MCN8MKAT37Z/6E0OctsCDbY0sGpRBTQ+jw4kw+lA3yzNeuS47zNBD7UTGojlZ4/oKad0LTyEMeXs0r6S4sc0YoDFOFC8ApXYXf6RhObptEE3qfX2vJjo77yT/r1hJsTypDSA0fsUdO0PR4XwqfEQD3FJkfOrnL7stzXY6UJoVpFKnb742KX643WMvhxiY3bZdqTTRLyb7T2wl82mQdEXIUJjEy5YFJ5WjfTYW7LkTfsMM6yp5Hfl5+/S2pY34uzJv5oEA+HGBV157DEdc2QLcSfVhBD9Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zxrlPdcZi9XB0ktRpTqucbfjtiSTKEgPyOV9Q3whs+k=;
 b=rfjEiE8HuMyWTs3oG5ahjddt4EjHa3MorpVHkA0pF21YVpaj8eZKgx/5ZfC6xvRLz96CO37EdzB4PKGaygqSMplXdorQatJ1hqknV4BLrXEowzqSDeCKHNpb+meXas9KKa4awxToKjQHCnO9a+EoKSn5e4RKchulm9g286JIqJo=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM5PR03MB2427.namprd03.prod.outlook.com (2603:10b6:3:6d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22; Wed, 17 Jun
 2020 13:52:37 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf%3]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 13:52:37 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "Jonathan.Cameron@Huawei.com" <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Thread-Topic: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Thread-Index: AQHWMosiebcsgWLmWUu0dbt01y27SqjCXn4AgAKhWwCAABHOAIAX4hsAgAAEbQA=
Date: Wed, 17 Jun 2020 13:52:37 +0000
Message-ID: <0eeae8e8c2c1a3f21e15c1931bacb197a8245104.camel@analog.com>
References: <20200525113855.178821-1-alexandru.ardelean@analog.com>
 <20200525113855.178821-3-alexandru.ardelean@analog.com>
 <20200531164020.765822dc@archlinux>
 <a0253d719a4390f65668789e5fc182ec19355f17.camel@analog.com>
 <20200602095406.00005add@Huawei.com>
 <37ef45f4-9330-86ea-77c1-3138bb88601b@microchip.com>
In-Reply-To: <37ef45f4-9330-86ea-77c1-3138bb88601b@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=analog.com;
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 27d821c3-8996-4626-e87f-08d812c5b1fa
x-ms-traffictypediagnostic: DM5PR03MB2427:
x-microsoft-antispam-prvs: <DM5PR03MB24273C5F91A52F8AA63BE08BF99A0@DM5PR03MB2427.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: keL2ccCBHfOu0mDkpE9KnSHxx5Zld/aoIaaQvlB8LZdCWgSusN4ySy1mhFbLgtedIyMeq5SJtEUuoVQAl1kq69DXuA6qbBa8nfIWKloX7kvF757zbOJb4shdhkbzYKQckwUQBd0GgZ1QTI/mdwDf8kM53yyLxMgFlgQshwoXbpY82P216FnoV4JmZuEQ0mR+VoZyAJYh6z5q0+PywAEPAQBuTFZrSKF8Hj2ZPFmMt2Lu5D0kY9RJo4sCF4HccU08Admx/WFt+oZjz4BwreR4dODXDd7BJ1jj1wYV4twydsnYNRl9XgjkDZC0lkgOhjgbPFkG5ayx/PGGzpnBn3YBzqLow0mPOT+UL3Sp/+EMifxXW+rmtCjMc0mCeeNd8XoAwjBb8GnbV7iA97aPx9Qhvw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(346002)(136003)(376002)(39860400002)(366004)(6486002)(8936002)(53546011)(6506007)(83380400001)(4326008)(86362001)(36756003)(316002)(8676002)(2906002)(76116006)(91956017)(26005)(186003)(66476007)(66446008)(64756008)(6512007)(2616005)(478600001)(7416002)(54906003)(66946007)(5660300002)(71200400001)(110136005)(66556008)(966005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: c4b98K1rkPENED0QAhd5k51XyWQaa7szKM+1anvo57NOKpiu5QkZ8FGkUeAAZilwPh9yORn6RS/tPmsMqaXaRl+ChBZiMLqBV58yCF6D8cs94Ws9aTF0ykU/xqO7VFM4j541VwtQveZ5iAl+kN/g+4cdMneQtz3YUEshN5dwgM5iC0miFt3ppq4fGRhQmOl2rlo6BumgCAZytNPVadN8AtAnOhZ4lx5Oozn8r3TxclFnmf2to8rjmAEphMyy/UchxCn8VDx1jvWOYYgAjSIx+WhxofEak25ErSxQY2rg4ej0gfkHTrAORPHEFcSrpCU74uce4VQTT5JyyVM+2Y1OPBPXioa9LW0F23aUaRNCa4ehOisQ9dt1oBAU9k0EpVLY31WMrkMVKGgwYLmNcFW0N0T1YH+AnpwubsCQG/lVi4IfNlBnB2MZ6OUoBSDmnxDZlTkzUgmGj2cJTTJ2Fv/6iFwR+CbJjNIxTMn0F01T6ZQ=
x-ms-exchange-transport-forked: True
Content-ID: <B22721042D510B4B8DEF4ECD8FF6481B@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d821c3-8996-4626-e87f-08d812c5b1fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 13:52:37.6043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gdLmnjTgdzZDAWhI2FwbuisxOQEulBK0+54UNSS6vtQAHOgUZ0Il1xr4HYg9W5IxH8WrwjPNR7L4syZygVo0Sg7L/fVSVPYivtMHHXjXJoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR03MB2427
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-17_04:2020-06-17,
 2020-06-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_065244_297117_8BF809A8 
X-CRM114-Status: GOOD (  35.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "lars@metafoo.de" <lars@metafoo.de>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "songqiang1304521@gmail.com" <songqiang1304521@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "lorenzo.bianconi83@gmail.com" <lorenzo.bianconi83@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-17 at 13:37 +0000, Eugen.Hristev@microchip.com wrote:
> [External]
> 
> On 02.06.2020 11:54, Jonathan Cameron wrote:
> > On Tue, 2 Jun 2020 07:50:23 +0000
> > "Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:
> > 
> > > On Sun, 2020-05-31 at 16:40 +0100, Jonathan Cameron wrote:
> > > > On Mon, 25 May 2020 14:38:55 +0300
> > > > Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> > > > 
> > > > > From: Lars-Peter Clausen <lars@metafoo.de>
> > > > > 
> > > > > This patch should be squashed into the first one, as the first one is
> > > > > breaking the build (intentionally) to make the IIO core files easier
> > > > > to
> > > > > review.
> > > > > 
> > > > > Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
> > > > > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> > > > > ---
> > > > 
> > > > Friend poke.  Version log?
> > > 
> > > Version log is in the first patch.
> > > I was wondering if I omitted it.
> > > Seems, this time I didn't. But I admit, it probably would have been better
> > > here.
> > Ah fair enough.  That works fine if there is a cover letter but not
> > so much just putting things in the first patch!
> > > > Other than the wistful comment below (which I'm not expecting you to
> > > > do anything about btw!) whole series looks good to me.
> > > > 
> > > > These are obviously no functional changes (I think) so it's only really
> > > > patch 2 that
> > > > could do with more eyes and acks.
> > > > 
> > > > Far as I can tell that case is fine as well because of the protections
> > > > on being in the right mode, but more eyes on that would be great.
> > > > 
> > > > So assuming that's fine, what commit message do you want me to use for
> > > > the fused single patch?
> > > 
> > > Commit message-wise: I think the message in the first commit would be
> > > mostly sufficient.
> > > No idea what other description would be needed.
> > > 
> > > So, maybe something like:
> > > 
> > > ----------------------------------------------------------------------
> > > All devices using a triggered buffer need to attach and detach the trigger
> > > to the device in order to properly work. Instead of doing this in each and
> > > every driver by hand move this into the core.
> > > 
> > > At this point in time, all drivers should have been resolved to
> > > attach/detach the poll-function in the same order.
> > > 
> > > This patch removes all explicit calls of iio_triggered_buffer_postenable()
> > > & iio_triggered_buffer_predisable() in all drivers, since the core handles
> > > now the pollfunc attach/detach.
> > > 
> > > The more peculiar change is for the 'at91-sama5d2_adc' driver, since it's
> > > not obvious that removing the hooks doesn't break anything**
> > > ----------------------------------------------------------------------
> > > 
> > 
> > Looks good.
> > 
> > > ** for the comment about 'at91-sama5d2_adc', we really do need to get some
> > > testing; otherwise this risks breaking it.
> 
> Hi,
> 
> I can test it, do we have any patchwork so I can easily download the 
> patches ?
> I have issues when applying them.

Is this good?

https://patchwork.kernel.org/patch/11568743/
Series:
https://patchwork.kernel.org/project/linux-iio/list/?series=293141

Many thanks
Alex

> 
> Thanks !
> 
> > Agreed.
> > 
> > > 
> > > > Thanks,
> > > > 
> > > > Jonathan
> > > > 
> > > > >   static const struct iio_trigger_ops atlas_interrupt_trigger_ops = {
> > > > > diff --git a/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > index 17606eca42b4..8e13c53d4360 100644
> > > > > --- a/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > +++ b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > @@ -99,20 +99,6 @@ static irqreturn_t iio_simple_dummy_trigger_h(int
> > > > > irq, void *p)
> > > > >   }
> > > > > 
> > > > >   static const struct iio_buffer_setup_ops
> > > > > iio_simple_dummy_buffer_setup_ops = {
> > > > > - /*
> > > > > -  * iio_triggered_buffer_postenable:
> > > > > -  * Generic function that simply attaches the pollfunc to the
> > > > > trigger.
> > > > > -  * Replace this to mess with hardware state before we attach the
> > > > > -  * trigger.
> > > > > -  */
> > > > > - .postenable = &iio_triggered_buffer_postenable,
> > > > > - /*
> > > > > -  * iio_triggered_buffer_predisable:
> > > > > -  * Generic function that simple detaches the pollfunc from the
> > > > > trigger.
> > > > > -  * Replace this to put hardware state back again after the trigger
> > > > > is
> > > > > -  * detached but before userspace knows we have disabled the ring.
> > > > > -  */
> > > > > - .predisable = &iio_triggered_buffer_predisable,
> > > > >   };
> > > > > 
> > > > Hmm. Guess we should probably 'invent' a reason to illustrate the bufer
> > > > ops in the dummy example.  Anyone feeling creative?
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/linux-arm-kernel__;!!A3Ni8CS0y2Y!ulH92S3o_JWLMQfg5VBrFknwc_-a0K5AHpJBrTEB-RtYEp7PnRJ9jA_EacOzFQmbNIKO-Q$ 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
