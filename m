Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598871D7301
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 10:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8hb4FVRIdSNIhTn+Ccc/MOM7J7CgmHmg/I/zl4FYU4=; b=AQOWhHH/txwT2Y
	1Qchx3Ljvi6+dtn08GvHp2+T8jk5xUQlYZinkunhOU0fg81cPYIt6NlWCHjUeQghOFTl2tYwC+kTo
	zjUuaaN8trpotlNXIK+OpV5f+QOd4R2EpvAXpEHT+C5/wyKOdEKh7G5w0HNXd5y3FInRYdUcRq0HW
	79G4fR7zKsD6RVS7D7bGOOZorUsITgHH2URMMP9tcnMrXW35mGIG1kxmdl4G6yFisQhS8DD+ESGmi
	I1arJYJNyAvznKy1iwYTGu/YFNr2Fvm+OoL+nylKi97lHuEpmKcVa59HNoNQcnAh810jxskEFNxx3
	I0+aJM93DtjgGzZYKsXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabCJ-00068F-M7; Mon, 18 May 2020 08:32:31 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabC9-00067Y-Oe
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 08:32:24 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04I8Tc9Z014680; Mon, 18 May 2020 04:32:14 -0400
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2176.outbound.protection.outlook.com [104.47.58.176])
 by mx0b-00128a01.pphosted.com with ESMTP id 313ca0h7wt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 04:32:14 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c79YWHvnB51Vr3X8l9gUqHk/PLCf4XAAGMTcDBKbWJXNbps4I65u3GH0R7MhQTdQgyg+BrOFV59IQyXICZl8wqT6qen5fcXqrhIv8HUFpkMskaB9weN0pQgv34A57cykCR0DU+NXiZrWz5MD8KbnwQ7txuUqVhHbEePxtRGsDs33TAGBflzPjmCeqyoENcgplHH8t80EUOvhhQrVIxwv/FEAMiQ8e5HJe7+jnmd8dOTTi+vGkcW6ntwGABkPfFSZMSjk2vghLqDQwGKRd+DoGwPcLX2Ggeb2vwd4s8lJflNaLAZcPTb4w8rra8gZ4Ra03jhYch7wBRuaRmwzBulU0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1OWym3pZhKX9DjO94+9ky8/RS5aMQBt3sCj1e4fXWDI=;
 b=lzOkB3fT0dyTe95YR7u1PT7Yz17OHHL+wZteCL3EVn7zoiNFKeD2vZ32WBqmQ3R115YAX4pqrwAHCKfcp56sUlWXamcCukRTSBRH2wS8YLxpW2efGZOP9wl+vqAlWm1qFpLCJiMONtN+rTqotMvDkIi/Itf8SdHlKWy4LPqZ395fMJ2CTVlNw5a+QxT75Wj4dSM7mWmHe2Jd1JjxyjM+iFH+I5LCbSErhwE5kbNBmTLs3hKVR4KrBj5K3FsVgwJINK+FiCI9GXDNdDSmt82yesE1kc9QfrW1nwXKw2mQi5ClXJHdvDy9T3ro2vwLs/UuOgs/y3KVQVmyr0i5z8fe4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1OWym3pZhKX9DjO94+9ky8/RS5aMQBt3sCj1e4fXWDI=;
 b=lg548RzVrE/UY81LZJ6mOT4UAEbPliuDeZDkCPQ41cKIGoabzCjXSbJgyD/eSPxBYEOumSfjq+4heR0cnBm7YscOkut1UvJy6yBfzyWfkwvUBrAcc95VlJDR+fZ6KHNFvBkM4N5dL1/j4DKoUXii+1Ehb0YSor2+VX9PGBWZpG0=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB4635.namprd03.prod.outlook.com (2603:10b6:5:15d::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Mon, 18 May
 2020 08:32:12 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf%3]) with mapi id 15.20.3000.034; Mon, 18 May 2020
 08:32:12 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH v2 3/8] iio: at91_adc: pass ref to IIO device via param
 for int function
Thread-Topic: [PATCH v2 3/8] iio: at91_adc: pass ref to IIO device via param
 for int function
Thread-Index: AQHWKfIbMZtFzYSRw02DR0rPoi4Ajqiq9/SAgAKRzAA=
Date: Mon, 18 May 2020 08:32:11 +0000
Message-ID: <99993df0dce7f7561e9659985265d6c1f5839208.camel@analog.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
 <20200514131710.84201-4-alexandru.ardelean@analog.com>
 <20200516181749.243c9515@archlinux>
In-Reply-To: <20200516181749.243c9515@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=analog.com;
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9c72f8cf-48f5-4a6d-755c-08d7fb05f63d
x-ms-traffictypediagnostic: DM6PR03MB4635:
x-microsoft-antispam-prvs: <DM6PR03MB4635111A0019A8DA1DC71A0AF9B80@DM6PR03MB4635.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IbhnqQWfpQvncB9jOW4KEAQaG9Nu6zlIbP8L6sn5wwc0J8vcZqPSVWk9m8LKdUeBj5KKrPLK2OcWP773wreRJ3bXyduNGvdQog2gyWf3f9EJbGFK4vWPJJGb641H43y7L0LEfXeRl8IG4QLRqWidfETs0cIHbJZL5IBAtkoHTElpF6zbqfJsrx5DxOUd19Bwioz+fEfswhKWawE0OqtCQaySopKrv5O9r3OTmcj76TEdjo1FyowmItLB1w1IP8JhD0hFXBq8PTLukpk+DAwguXCYLga1dFN5MMYSABrJ60CUDGB6FlMFQ+r52uuDDjNkXDd0C043pMHf5B47Jl4saEBP/cSctpxnwzUhbjS/AQowBMLtEhzkZ1upNX/rKRoDfDIpfPxgbIsmGqeM9IIUCaQiqe1GlB3fwLANdbVrn24LL5t3NIkBjwXWjbNeiNom
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(366004)(39860400002)(346002)(376002)(8676002)(478600001)(6506007)(186003)(6512007)(66446008)(64756008)(66556008)(8936002)(6916009)(26005)(66476007)(86362001)(36756003)(66946007)(5660300002)(54906003)(2906002)(2616005)(4326008)(91956017)(7416002)(71200400001)(76116006)(316002)(6486002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 87A/NcRrfy54lXDV0O4VuMevKjtUJqF8Xq9n0aSod9XMoMKpoZFXzd4f3C/b+dCZIB9Zd7NoELMQjDn4wm6pbZkl0XjNoBAwXg4jwf1X5PyE2WmBsYKrblxwd9RhdudScTFh/c6PzhiNL2nmx5AbucwjjGjCKn6DcuXTt7MXbN2hfTfMniArV0Ot+n1ASjZlo9mTkuGkBlvCSwAS60SEYAD+UpwwKlvLaEYgN/ZZtB+UhTcQZ2B5SpKPOlMrChVx3ORmZdCsseEnOWkyZEAmbEqRLhTcY4J1POes7SQEbLGj242+KVSDxPwHViX9nzYFZgSaYyTK48bbQWtikeh/LtkPYkzV1Nwx6d4b/HfUBdv8rrTs71WEF+BkJyNB87BBwW+c11gD6q1NfFQlri6AEMERC4V3FkdZpEG/U17EkC76JOYTLYmh1MK05Fn/zp+OV5x6df2s3BEqqOwu04sxlu3pnUJc4CEAYRlSQJ66IB8=
x-ms-exchange-transport-forked: True
Content-ID: <6EB7D248FB59784192EBA145EDAE02D5@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c72f8cf-48f5-4a6d-755c-08d7fb05f63d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 08:32:11.9216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nj+rH+bwdNhlERhnmz9wNQ4vBRVXEAYf8Nid+g409qo/ka2stilLyH/nQuzML6b4Ll5yRWhf/f1udd3SEb3JEez8KpEEcBA6PgxJFZAyfv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4635
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-18_03:2020-05-15,
 2020-05-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=999
 mlxscore=0 cotscore=-2147483648 clxscore=1015 priorityscore=1501
 phishscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 malwarescore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005180078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_013221_922804_12E69A2B 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "ak@it-klinger.de" <ak@it-klinger.de>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "eugen.hristev@microchip.com" <eugen.hristev@microchip.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2020-05-16 at 18:17 +0100, Jonathan Cameron wrote:
> [External]
> 
> On Thu, 14 May 2020 16:17:05 +0300
> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> 
> > Since there will be some changes to how iio_priv_to_dev() is implemented,
> > it could be that the helper becomes a bit slower, as it will be hidden away
> > in the IIO core.
> > 
> > For this driver, the IIO device can be passed directly as a parameter to
> > the at91_ts_sample() function, thus making it immune to the change of
> > iio_priv_to_dev().
> > The function gets called in an interrupt context.
> > 
> > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> I wonder. Should we just pass the struct device?  It's only used for
> error printing I think, so we could make that explicit.

I was also thinking that for this series, [for some drivers] it would make sense
to put a reference to indio_dev on the state-struct; and just return it.
I'll see about it.
I am feeling that sometimes these IIO core cleanups end up being more than I
want to do. But I'll try to see about it. Maybe I can make time or delegate some
of this.

My personal interest with them, is to reduce my complaints during reviews.
People starting to write IIO drivers: well, I can see their frustration [on
their faces] when I complain that they shouldn't use something, and they copied
it from somewhere.


> 
> I'm not that bothered either way though.
> 
> Jonathan
> 
> > ---
> >  drivers/iio/adc/at91_adc.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
> > index 0368b6dc6d60..5999defe47cd 100644
> > --- a/drivers/iio/adc/at91_adc.c
> > +++ b/drivers/iio/adc/at91_adc.c
> > @@ -287,13 +287,12 @@ static void handle_adc_eoc_trigger(int irq, struct
> > iio_dev *idev)
> >  	}
> >  }
> >  
> > -static int at91_ts_sample(struct at91_adc_state *st)
> > +static int at91_ts_sample(struct iio_dev *idev, struct at91_adc_state *st)
> >  {
> >  	unsigned int xscale, yscale, reg, z1, z2;
> >  	unsigned int x, y, pres, xpos, ypos;
> >  	unsigned int rxp = 1;
> >  	unsigned int factor = 1000;
> > -	struct iio_dev *idev = iio_priv_to_dev(st);
> >  
> >  	unsigned int xyz_mask_bits = st->res;
> >  	unsigned int xyz_mask = (1 << xyz_mask_bits) - 1;
> > @@ -449,7 +448,7 @@ static irqreturn_t at91_adc_9x5_interrupt(int irq, void
> > *private)
> >  
> >  		if (status & AT91_ADC_ISR_PENS) {
> >  			/* validate data by pen contact */
> > -			at91_ts_sample(st);
> > +			at91_ts_sample(idev, st);
> >  		} else {
> >  			/* triggered by event that is no pen contact, just read
> >  			 * them to clean the interrupt and discard all.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
