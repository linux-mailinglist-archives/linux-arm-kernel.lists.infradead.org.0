Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427F3200329
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dq4zQRHOOwVEd7NbNhzITgVeARi8fc2BMgVXM6+khfI=; b=GbicRIkowu/CHI
	svPz0TZ4hBb3A5YE8UPxnkZnmIU8pSfXg/g1a1y4EaWBVOOGmScd36GmuQAHp2KszDjjC5evkr2VB
	z5wKL2D+Us4Onpk6487MU2j/5+YuDmVfU0tDkywqOMPgCHii0n2Px+P3QUGg0SRFW4WJkVGBnIMMC
	4U/QxTg5gQUfxqKvdh7ZNwy7Oi7e3BXQ5DlIV4RFMUYaaKsYFM1ZzkaKb9jmTSM9iY/Ior/bkNNDo
	wNWaZm2rBs8lmUpMmfnK/LCZ4HYaCYe0qOFLYL4mfOdOpayO4jjaEOTE13A9GwsgkGtfqAGSbDH7d
	Aqev8LM3W7bIV8Xds20A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBzc-0004rS-NR; Fri, 19 Jun 2020 08:03:20 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBzK-0004mt-5D
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:03:04 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05J80OYC010258; Fri, 19 Jun 2020 04:02:57 -0400
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
 by mx0a-00128a01.pphosted.com with ESMTP id 31q670haqp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 19 Jun 2020 04:02:57 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KEJ4gdmL+QHNFpQH+7yCN/yuEfG4HZ80rAwhyfUouD1NjgrQdh+LsulSST9J9xwof/OsEetoPb7B5ov+GxLXXxif9YtgugO0L7DdlLIMEYzWt01007ZrBvXBM0OAG+a5ZfHxbuoBm4GKDH53JOxX69liuISvEOJ6SG2lBxwIixs1bRNPusc+BtKjSiQSOAwH0MTgBvT0prn87g8Lkl3esx1QBZMx83BcqGttEMFIuinprBkf17RWzsZdy3fIwXdsZShcWjJC0UZI0oMDd7JgAMfYmI76NBclxoXZQ+orLFgT4kNOQyL5XcrkYPr2Jbe33kjPtgBrm7RXAbrSUYOBCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TsWogUIjrXwccX6knFYZj6v9YW+TyQQjwR/WvYVcYY0=;
 b=O5oD7hd0QDQKIf+F+4fXNuGlEjJ9fBSMcJ+ddmNfy1VdHviDzZ7V2Oxggocx+hFYuBFTzqu/SpiD8Tx3t90e2eDftXXh9Pi+9WGCl3bUY2COLZAUaaVOAs7GXuJZKYNivgu6Ao5g53gR58FeBejPjOtPgG1IMBUlIrp4BN0n0itutEQiIbYnIi0mMGaNiwgWeefN/vs2VN97ls+1/H5J3tvPuaQaEwFGEIYMYsz4BpG/VkPzZ8SHDK3GchiTN+GHRqU6XnuTndM8bzXXbUseKv4MqlYyxCzxEkMJPHnKufxGMMFC/feB4zWUgMEp6suLRGuGiZzB492XkqUZRvZZlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TsWogUIjrXwccX6knFYZj6v9YW+TyQQjwR/WvYVcYY0=;
 b=0S9cQHoLYv/ha9SFh2zMwElDUtyBdg3d7sbLxmwczRiK4g2vZgXYk51OWlIRSiBvNPR+YUKDbRQdoZXsjZXLGLpNl3fQMcQxT1LnC4fuKB4yeiie3CVoRXnz5l0n15aEhFqYod4KZn25rbv+drzZWuBCLtJt5LCESAFsyLql5hM=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB5004.namprd03.prod.outlook.com (2603:10b6:5:1f1::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Fri, 19 Jun
 2020 08:02:56 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf%3]) with mapi id 15.20.3109.021; Fri, 19 Jun 2020
 08:02:56 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH] iio: at91_adc: remove usage of iio_priv_to_dev() helper
Thread-Topic: [PATCH] iio: at91_adc: remove usage of iio_priv_to_dev() helper
Thread-Index: AQHWMn7K4yTlHQlmxkeIus5AucCcIKjCTl0AgB1suIA=
Date: Fri, 19 Jun 2020 08:02:55 +0000
Message-ID: <4b07863e8312e2abd0169a456f230a025621419c.camel@analog.com>
References: <20200525102513.130664-1-alexandru.ardelean@analog.com>
 <20200531154216.361285c6@archlinux>
In-Reply-To: <20200531154216.361285c6@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=analog.com;
x-originating-ip: [188.27.128.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: eb42468c-5d19-4871-77db-08d814272ce2
x-ms-traffictypediagnostic: DM6PR03MB5004:
x-microsoft-antispam-prvs: <DM6PR03MB5004DB19DE9CB9C463910EFAF9980@DM6PR03MB5004.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0439571D1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yoC21om3eedLsc8WN5N7r9kRHGoN/w80O/4xiv8TWf78YxVPEtrMR+Y4pknnHj+OgNdyF5dkSSoxvieGdfj2HRHb063d5soYzZW1bEfRGMj1RH9B0N2veF72s5EGyLBWeYe/a+K8bLU0VxaioosTj6LYbAj/41TEiuni+7VrMk5VMVXStd7gkqr/p/SCsimp4NshWMaFxKjsJNKw+y7Dlk48Wg9a6iwQMdSZ3LoDdEg2xZqsc6sRkusWwdSYrWeDUnwlF9/idkEVzO4kmqul6x9jVBCiavpNhYdWyANfWuegmv5LldZF7qBLe8aWfQ/DCwDAL0x/s41Nd90ZKfBCxQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(136003)(346002)(39860400002)(396003)(6506007)(5660300002)(2616005)(76116006)(91956017)(66476007)(66556008)(66446008)(66946007)(64756008)(26005)(71200400001)(316002)(54906003)(36756003)(4326008)(186003)(83380400001)(8936002)(6486002)(6916009)(2906002)(86362001)(8676002)(6512007)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: PXWzzyrvemSFBeJg0i7ZKnCY8F1dGF3GCNRB9wZNkg7fEsTG/h7RiQczKVg7SJfwaem/Qn90n6ejjvTa7hfzbGQyTV6+C8kMAH8p+QCkzlZmoYh53BvRllecu5M+M7INXeTXRWC8Fi3zhH5tUdgEJOdSakZ00gittbJXNMr4ZkZBfw5B6MRhbKsTolbpLGfV8PdDDPH5xCccZ1rZfMqs1/WkXqNKRFDSye2XAFQr9Sn8X7wHt5M6tmg9WIUPzSWfVCO9ICjBxJqQxcwBmB1pDzG/3o8zP9MP/VUSwb6DAzS7GtW5ZcYcKflrEcDIA2UEbM68y1RftmqfOWOft6X0S+DphV7g+Gj2uYV0+38DnCnEdh4JXuWZXTAUVsjgIDtJ2B61HOZ1HBZdJMZl5LM6TgkUxGcUQ23cqrFCYZiRDwqSrETyDEqCm01mivntyvJVQPh7XhkQ5v1wxzhirKfaSXsPprRlHZ0SS8cqvKblM18=
x-ms-exchange-transport-forked: True
Content-ID: <E1335B1FAF2624478991F36E522360E5@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb42468c-5d19-4871-77db-08d814272ce2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2020 08:02:56.1265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tLr0l+zLN/zM/MAMHasJlm/J3neOWjmDcKUsQ0mvsgzFTgQbD////sh/QFKteLILC0mAEORo4c6cs/qlwJ5ZS+grPyDeC07TxS06eBhD02I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5004
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-19_04:2020-06-18,
 2020-06-19 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=999
 clxscore=1015 cotscore=-2147483648 spamscore=0 malwarescore=0
 impostorscore=0 priorityscore=1501 phishscore=0 mlxscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006190058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_010302_227933_8280B566 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [148.163.135.77 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2020-05-31 at 15:42 +0100, Jonathan Cameron wrote:
> [External]
> 
> On Mon, 25 May 2020 13:25:13 +0300
> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> 
> > We may want to get rid of the iio_priv_to_dev() helper. The reason is
> > that
> > we will hide some of the members of the iio_dev structure (to prevent
> > drivers from accessing them directly), and that will also mean hiding
> > the
> > implementation of the iio_priv_to_dev() helper inside the IIO core.
> > 
> > Hiding the implementation of iio_priv_to_dev() implies that some fast-
> > paths
> > may not be fast anymore, so a general idea is to try to get rid of the
> > iio_priv_to_dev() altogether.
> > The iio_priv() helper won't be affected by the rework, as the iio_dev
> > struct will keep a reference to the private information.
> > 
> > For this driver, not using iio_priv_to_dev(), means reworking some
> > paths to
> > pass the iio device and using iio_priv() to access the private
> > information.
> > 
> > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> Looks good to me.  Will leave it a bit longer though to potentially
> get some people more familiar with the driver to sanity check it.
> 
> Poke me after the usual couple of weeks if I seem to have lost it
> down the back of the sofa.
> 

ping on this

> Thanks,
> 
> Jonathan
> 
> > ---
> >  drivers/iio/adc/at91_adc.c | 30 +++++++++++++++---------------
> >  1 file changed, 15 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
> > index 0368b6dc6d60..896af58e88bc 100644
> > --- a/drivers/iio/adc/at91_adc.c
> > +++ b/drivers/iio/adc/at91_adc.c
> > @@ -287,13 +287,13 @@ static void handle_adc_eoc_trigger(int irq,
> > struct iio_dev *idev)
> >  	}
> >  }
> >  
> > -static int at91_ts_sample(struct at91_adc_state *st)
> > +static int at91_ts_sample(struct iio_dev *idev)
> >  {
> > +	struct at91_adc_state *st = iio_priv(idev);
> >  	unsigned int xscale, yscale, reg, z1, z2;
> >  	unsigned int x, y, pres, xpos, ypos;
> >  	unsigned int rxp = 1;
> >  	unsigned int factor = 1000;
> > -	struct iio_dev *idev = iio_priv_to_dev(st);
> >  
> >  	unsigned int xyz_mask_bits = st->res;
> >  	unsigned int xyz_mask = (1 << xyz_mask_bits) - 1;
> > @@ -449,7 +449,7 @@ static irqreturn_t at91_adc_9x5_interrupt(int irq,
> > void *private)
> >  
> >  		if (status & AT91_ADC_ISR_PENS) {
> >  			/* validate data by pen contact */
> > -			at91_ts_sample(st);
> > +			at91_ts_sample(idev);
> >  		} else {
> >  			/* triggered by event that is no pen contact, just
> > read
> >  			 * them to clean the interrupt and discard all.
> > @@ -737,10 +737,10 @@ static int at91_adc_read_raw(struct iio_dev
> > *idev,
> >  	return -EINVAL;
> >  }
> >  
> > -static int at91_adc_of_get_resolution(struct at91_adc_state *st,
> > +static int at91_adc_of_get_resolution(struct iio_dev *idev,
> >  				      struct platform_device *pdev)
> >  {
> > -	struct iio_dev *idev = iio_priv_to_dev(st);
> > +	struct at91_adc_state *st = iio_priv(idev);
> >  	struct device_node *np = pdev->dev.of_node;
> >  	int count, i, ret = 0;
> >  	char *res_name, *s;
> > @@ -866,10 +866,10 @@ static int at91_adc_probe_dt_ts(struct
> > device_node *node,
> >  	}
> >  }
> >  
> > -static int at91_adc_probe_dt(struct at91_adc_state *st,
> > +static int at91_adc_probe_dt(struct iio_dev *idev,
> >  			     struct platform_device *pdev)
> >  {
> > -	struct iio_dev *idev = iio_priv_to_dev(st);
> > +	struct at91_adc_state *st = iio_priv(idev);
> >  	struct device_node *node = pdev->dev.of_node;
> >  	struct device_node *trig_node;
> >  	int i = 0, ret;
> > @@ -910,7 +910,7 @@ static int at91_adc_probe_dt(struct at91_adc_state
> > *st,
> >  	}
> >  	st->vref_mv = prop;
> >  
> > -	ret = at91_adc_of_get_resolution(st, pdev);
> > +	ret = at91_adc_of_get_resolution(idev, pdev);
> >  	if (ret)
> >  		goto error_ret;
> >  
> > @@ -1010,9 +1010,9 @@ static void atmel_ts_close(struct input_dev *dev)
> >  		at91_adc_writel(st, AT91_ADC_IDR, AT91RL_ADC_IER_PEN);
> >  }
> >  
> > -static int at91_ts_hw_init(struct at91_adc_state *st, u32 adc_clk_khz)
> > +static int at91_ts_hw_init(struct iio_dev *idev, u32 adc_clk_khz)
> >  {
> > -	struct iio_dev *idev = iio_priv_to_dev(st);
> > +	struct at91_adc_state *st = iio_priv(idev);
> >  	u32 reg = 0;
> >  	u32 tssctim = 0;
> >  	int i = 0;
> > @@ -1085,11 +1085,11 @@ static int at91_ts_hw_init(struct
> > at91_adc_state *st, u32 adc_clk_khz)
> >  	return 0;
> >  }
> >  
> > -static int at91_ts_register(struct at91_adc_state *st,
> > +static int at91_ts_register(struct iio_dev *idev,
> >  		struct platform_device *pdev)
> >  {
> > +	struct at91_adc_state *st = iio_priv(idev);
> >  	struct input_dev *input;
> > -	struct iio_dev *idev = iio_priv_to_dev(st);
> >  	int ret;
> >  
> >  	input = input_allocate_device();
> > @@ -1161,7 +1161,7 @@ static int at91_adc_probe(struct platform_device
> > *pdev)
> >  	st = iio_priv(idev);
> >  
> >  	if (pdev->dev.of_node)
> > -		ret = at91_adc_probe_dt(st, pdev);
> > +		ret = at91_adc_probe_dt(idev, pdev);
> >  	else
> >  		ret = at91_adc_probe_pdata(st, pdev);
> >  
> > @@ -1301,11 +1301,11 @@ static int at91_adc_probe(struct
> > platform_device *pdev)
> >  			goto error_disable_adc_clk;
> >  		}
> >  	} else {
> > -		ret = at91_ts_register(st, pdev);
> > +		ret = at91_ts_register(idev, pdev);
> >  		if (ret)
> >  			goto error_disable_adc_clk;
> >  
> > -		at91_ts_hw_init(st, adc_clk_khz);
> > +		at91_ts_hw_init(idev, adc_clk_khz);
> >  	}
> >  
> >  	ret = iio_device_register(idev);
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
