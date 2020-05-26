Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8721E22A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QObCt69pOLd9Ogl6mUoZY3e3/wsh5iVKNGZ6wC6EXt8=; b=eQvQjLLEeZUp4J
	fQjHkU+wGXUJPUrjDjPfIbVbffH1U0YHn6f47frHpTH29IjZh6WhdYe83+6NjyJGqa7ej3UD2yh/G
	VYajHStXb1jWIR13tfiJqX8kXF9WzwRR6aXr9JkOyahSddk0x3LSMy2iMJXQ6RwxUt990oNrPNDJ5
	/b/CDYTh7nxH2xCdrpJf0j3/nXvPwfTPLV3A8bUxfBFcac5mk8wy4oD8E2TBeMmUZ/ZTX0xGwOb+E
	1H0AtnSDemd1EB74sYq/KJIh4ietkpEDhv9F4HAwHXHHqB26ijn+sxvxUTLCa8RJT52NM2uJAzJpJ
	4pg26Vnx29HeZXyBI/1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZHV-0006OD-9T; Tue, 26 May 2020 13:06:09 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZHM-0006Nr-Cl
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:06:02 +0000
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QD0TdQ021641; Tue, 26 May 2020 09:05:56 -0400
Received: from nam02-cy1-obe.outbound.protection.outlook.com
 (mail-cys01nam02lp2056.outbound.protection.outlook.com [104.47.37.56])
 by mx0b-00128a01.pphosted.com with ESMTP id 3170f7ynxx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 09:05:56 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lYq39Svc3yZQmS5F25LzZTcL7Rw5wbvFiyuXPoW9HlW8ZhWMOFB3cdnduTRYxp4G4e8xkybiA0wGucRNvizl3uXzimPcpIfFK5LUUL1/rhDcmgA/w1myhKekQZJKEdQxyLJarKlFUobUIRgvrr8tikawXY/xVEuACG+20MZhHLOw96ptWw0L7gzLQkrVe5aKhbMacXLwvluIFjK8agDGNyd/dgaJlB95gzIsWdB45CiMX8cswC0qp1M56JrRpQNiQizKEmdAwCVnBuI6HW2SLZZHnbQ5cZbHTYK7YRBcy3ygqYVNKzqTYUm9KYv9xxZmDr2a1zUcjmAnhipydnmCWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8vEshS6PXhaSpORFoPHHQ4fMjlJhcdfV+kW9gghfP2k=;
 b=XrgXo7AJ0AB5hArELQxuKns278ixz87SjHgD7pa9Cr/EtWuIT6eMyvJ91/oL1i+isA/dvIgOWGsIkfFt+BH0dMgFIDTd7nb8wsJ5ba0C01cfWPDfhnWMk5SzQ1UtXEDv6AQnfj4pwiGt4Te8Au3NPzBJ4WH+x3moAdU5iV6MuXKtsEdT/JtW1aqpgD0nEqxKXXhc4mrrTFaalcUfe3wc9ZaTOa4OoqqxP1oc0nU0m5At+tEeAh2b8M4XoCoZtHy1PawOa3e3vyLPg0YluA65OSqIhOypmfXOy9ya1UJoG5qA3qfezbDhJHo0zPiY7T9ROgMmq1L11QkYmW73xxKP2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8vEshS6PXhaSpORFoPHHQ4fMjlJhcdfV+kW9gghfP2k=;
 b=w9mLqfvMemj68GzYRnSuexBob0KXVNx4v4Q8X5RIDO2AtBTwFuxRF/8ofpbzJSj68rCfsWbel8WpA0qiu4+d/GNjHykklaq07IRd3oKO+0XHZfDaYa1Q+cZSbAm6LWvDrTTFLpuWB881g3U3Ty2m4AbHtR7REtX+cWEQx2mSjKY=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB5066.namprd03.prod.outlook.com (2603:10b6:5:1e7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Tue, 26 May
 2020 13:05:54 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf%3]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 13:05:54 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "fabrice.gasnier@st.com"
 <fabrice.gasnier@st.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>
Subject: Re: [PATCH v2] iio: stm32-adc: remove usage of iio_priv_to_dev()
 helper
Thread-Topic: [PATCH v2] iio: stm32-adc: remove usage of iio_priv_to_dev()
 helper
Thread-Index: AQHWMrFtJcu1getlvU+iqjcc3GVBS6i6V2KA
Date: Tue, 26 May 2020 13:05:54 +0000
Message-ID: <1915a3a8035791855abbe4feb97a4abced31d20b.camel@analog.com>
References: <20200522130719.630714-1-alexandru.ardelean@analog.com>
 <20200525090720.72696-1-alexandru.ardelean@analog.com>
 <447a0db3-0c20-859c-b5f2-7716c57a7e0e@st.com>
In-Reply-To: <447a0db3-0c20-859c-b5f2-7716c57a7e0e@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: st-md-mailman.stormreply.com; dkim=none (message not
 signed) header.d=none;st-md-mailman.stormreply.com; dmarc=none action=none
 header.from=analog.com;
x-originating-ip: [188.27.130.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2a8b680a-b85c-4f08-2c89-08d80175863f
x-ms-traffictypediagnostic: DM6PR03MB5066:
x-microsoft-antispam-prvs: <DM6PR03MB506619DF6811DFD6ABA75AB0F9B00@DM6PR03MB5066.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1QJoObbg/RF58IUWwNJK7tbBaAmzHE9uKw2h3lGzXzPJzmniZkFL2DTCkolfWqEY23V97LOEeCAo5wB2La4ggg2hn24zwFoqGkUOWWSH6vMpmshum59nHtQKjGtO9iVwaakZSJ4vJSdh1xjSjp8Gg/QT9+CFKBnwE/58k3VfUiTyOqPOkoImmIfk7+ZyYLh4z5/3+YhXRfJv3QoduV/hnHidpkKxXMWHF/oslPDrDrC6D5AKQIknqRx2hO/cZ8TlajpUY3+qhq7yQWnDGjnHpCJSFqdH1KJh5LIBArHsudlYJk+M1tiw1vbOmoj0ZMLlqzTYyziwnNwPK+woXMQMyEs4DrObP7Zf2I4lFiX+5rl/1whrnqvzQWVWBnCm3rEf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(396003)(39850400004)(366004)(346002)(26005)(66476007)(110136005)(186003)(66556008)(64756008)(91956017)(8676002)(66946007)(53546011)(30864003)(86362001)(478600001)(66446008)(8936002)(76116006)(316002)(6506007)(2906002)(54906003)(2616005)(6486002)(4326008)(6512007)(71200400001)(36756003)(5660300002)(309714004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: cLZmXydIRkj5AWGpBEbKKYaDUUzatKNgnQFtT6xwM1i3bEx/kiTbx1q2apmF4JSDpgumgq/zm2brSmqPTpY3GEi9yDCBSJ8DZLPiJX364O1nnrVdI8rbnF9F8kvmYOgkieMRSmXQ/3cPQXy7qMe/eyW4GGz+hmUJBXeiZl3/0rGkFYwhtc0Sd2yxajHnHB5aOfjWZj7ALSjmFSHiYg/+iF0fpeMCPnCmqHVOeMmP2JxQ4cc5gYFwk2irJ5aFeml9KaKM/5Q3SUtQ4EBdGR93L1K6SM/KAGLOXEjBXTohGyl6NjvilN/yEvXk/JvbR6jcPuiRgM505c9h9XCEogc09NvN+JwZ1NMKc72AOtXwsgIjzcZxdTBdAChjNz2vLQ8CVjZwAaTk8au3AeRn0z8r4LZNYzz3ZBami5FyNKQkimH0OFp/L+zgdxi4txv25QCeZviCapAobm8UBWM1MGFrk4cPns82wbYXiX7kMBuF9qKBDeTgTGB5ym8g82mKoN09
x-ms-exchange-transport-forked: True
Content-ID: <C3C0512F9427234C913ACD82C70C6B18@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a8b680a-b85c-4f08-2c89-08d80175863f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 13:05:54.6534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aazUJevFNOEx9P45skQpEvs2ryOGH6N8qaNxWSTca5yoLgjzpi7CNYfkn4R1TIGVqrf/fP5ytwYjVwouX0nUOl1+0g+yL8rN1/0mzZigFEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5066
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_02:2020-05-26,
 2020-05-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 malwarescore=0 cotscore=-2147483648
 suspectscore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005260099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_060600_679344_F1D4CBA2 
X-CRM114-Status: GOOD (  25.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
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
Cc: "olivier.moysan@st.com" <olivier.moysan@st.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "jic23@kernel.org" <jic23@kernel.org>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-05-25 at 18:27 +0200, Fabrice Gasnier wrote:
> [External]
> 
> On 5/25/20 11:07 AM, Alexandru Ardelean wrote:
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
> > ---
> >  drivers/iio/adc/stm32-adc.c | 108 +++++++++++++++++++-----------------
> >  1 file changed, 58 insertions(+), 50 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> > index ae622ee6d08c..9428c5c22712 100644
> > --- a/drivers/iio/adc/stm32-adc.c
> > +++ b/drivers/iio/adc/stm32-adc.c
> > @@ -162,10 +162,10 @@ struct stm32_adc_cfg {
> >  	struct stm32_adc_trig_info	*trigs;
> >  	bool clk_required;
> >  	bool has_vregready;
> > -	int (*prepare)(struct stm32_adc *);
> > -	void (*start_conv)(struct stm32_adc *, bool dma);
> > -	void (*stop_conv)(struct stm32_adc *);
> > -	void (*unprepare)(struct stm32_adc *);
> > +	int (*prepare)(struct iio_dev *);
> > +	void (*start_conv)(struct iio_dev *, bool dma);
> > +	void (*stop_conv)(struct iio_dev *);
> > +	void (*unprepare)(struct iio_dev *);
> >  	const unsigned int *smp_cycles;
> >  };
> >  
> > @@ -538,10 +538,11 @@ static void stm32_adc_set_res(struct stm32_adc
> > *adc)
> >  
> >  static int stm32_adc_hw_stop(struct device *dev)
> >  {
> > -	struct stm32_adc *adc = dev_get_drvdata(dev);
> > +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  
> >  	if (adc->cfg->unprepare)
> > -		adc->cfg->unprepare(adc);
> > +		adc->cfg->unprepare(indio_dev);
> >  
> >  	if (adc->clk)
> >  		clk_disable_unprepare(adc->clk);
> > @@ -551,7 +552,8 @@ static int stm32_adc_hw_stop(struct device *dev)
> >  
> >  static int stm32_adc_hw_start(struct device *dev)
> >  {
> > -	struct stm32_adc *adc = dev_get_drvdata(dev);
> > +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	int ret;
> >  
> >  	if (adc->clk) {
> > @@ -563,7 +565,7 @@ static int stm32_adc_hw_start(struct device *dev)
> >  	stm32_adc_set_res(adc);
> >  
> >  	if (adc->cfg->prepare) {
> > -		ret = adc->cfg->prepare(adc);
> > +		ret = adc->cfg->prepare(indio_dev);
> >  		if (ret)
> >  			goto err_clk_dis;
> >  	}
> > @@ -587,8 +589,10 @@ static int stm32_adc_hw_start(struct device *dev)
> >   * conversions, in IIO buffer modes. Otherwise, use ADC interrupt with
> > direct
> >   * DR read instead (e.g. read_raw, or triggered buffer mode without
> > DMA).
> >   */
> > -static void stm32f4_adc_start_conv(struct stm32_adc *adc, bool dma)
> > +static void stm32f4_adc_start_conv(struct iio_dev *indio_dev, bool
> > dma)
> 
> Hi Alexandru,
> 
> I've tested your patch. I've no objection, but found few build warnings
> (some of these routines have kernel-doc style).
> 
> Building with W=1 makes warnings appear, like:
> drivers/iio/adc/stm32-adc.c:593: warning: Function parameter or member
> 'indio_dev' not described in 'stm32f4_adc_start_conv'
> drivers/iio/adc/stm32-adc.c:593: warning: Excess function parameter
> 'adc' description in 'stm32f4_adc_start_conv'
> ...
> 
> Could you update routine's doc as well ?

Thanks.
Will send a V3 shortly.
The W=1 option looks interesting.
We might give this to interns/new-people to get them started.

> 
> e.g. something like:
> - * @adc: stm32 adc instance
> + * @indio_dev: IIO device
> 
> >  {
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> > +
> >  	stm32_adc_set_bits(adc, STM32F4_ADC_CR1, STM32F4_SCAN);
> >  
> >  	if (dma)
> > @@ -605,8 +609,10 @@ static void stm32f4_adc_start_conv(struct
> > stm32_adc *adc, bool dma)
> >  		stm32_adc_set_bits(adc, STM32F4_ADC_CR2, STM32F4_SWSTART);
> >  }
> >  
> > -static void stm32f4_adc_stop_conv(struct stm32_adc *adc)
> > +static void stm32f4_adc_stop_conv(struct iio_dev *indio_dev)
> >  {
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> > +
> >  	stm32_adc_clr_bits(adc, STM32F4_ADC_CR2, STM32F4_EXTEN_MASK);
> >  	stm32_adc_clr_bits(adc, STM32F4_ADC_SR, STM32F4_STRT);
> >  
> > @@ -615,8 +621,9 @@ static void stm32f4_adc_stop_conv(struct stm32_adc
> > *adc)
> >  			   STM32F4_ADON | STM32F4_DMA | STM32F4_DDS);
> >  }
> >  
> > -static void stm32h7_adc_start_conv(struct stm32_adc *adc, bool dma)
> > +static void stm32h7_adc_start_conv(struct iio_dev *indio_dev, bool
> > dma)
> >  {
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	enum stm32h7_adc_dmngt dmngt;
> >  	unsigned long flags;
> >  	u32 val;
> > @@ -635,9 +642,9 @@ static void stm32h7_adc_start_conv(struct stm32_adc
> > *adc, bool dma)
> >  	stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_ADSTART);
> >  }
> >  
> > -static void stm32h7_adc_stop_conv(struct stm32_adc *adc)
> > +static void stm32h7_adc_stop_conv(struct iio_dev *indio_dev)
> >  {
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	int ret;
> >  	u32 val;
> >  
> > @@ -652,9 +659,9 @@ static void stm32h7_adc_stop_conv(struct stm32_adc
> > *adc)
> >  	stm32_adc_clr_bits(adc, STM32H7_ADC_CFGR, STM32H7_DMNGT_MASK);
> >  }
> >  
> > -static int stm32h7_adc_exit_pwr_down(struct stm32_adc *adc)
> > +static int stm32h7_adc_exit_pwr_down(struct iio_dev *indio_dev)
> >  {
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	int ret;
> >  	u32 val;
> >  
> > @@ -690,9 +697,9 @@ static void stm32h7_adc_enter_pwr_down(struct
> > stm32_adc *adc)
> >  	stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_DEEPPWD);
> >  }
> >  
> > -static int stm32h7_adc_enable(struct stm32_adc *adc)
> > +static int stm32h7_adc_enable(struct iio_dev *indio_dev)
> >  {
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	int ret;
> >  	u32 val;
> >  
> > @@ -713,9 +720,9 @@ static int stm32h7_adc_enable(struct stm32_adc
> > *adc)
> >  	return ret;
> >  }
> >  
> > -static void stm32h7_adc_disable(struct stm32_adc *adc)
> > +static void stm32h7_adc_disable(struct iio_dev *indio_dev)
> >  {
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	int ret;
> >  	u32 val;
> >  
> > @@ -733,9 +740,9 @@ static void stm32h7_adc_disable(struct stm32_adc
> > *adc)
> >   * @adc: stm32 adc instance
> >   * Note: Must be called once ADC is enabled, so LINCALRDYW[1..6] are
> > writable
> >   */
> > -static int stm32h7_adc_read_selfcalib(struct stm32_adc *adc)
> > +static int stm32h7_adc_read_selfcalib(struct iio_dev *indio_dev)
> 
> Same here.
> 
> >  {
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	int i, ret;
> >  	u32 lincalrdyw_mask, val;
> >  
> > @@ -777,9 +784,9 @@ static int stm32h7_adc_read_selfcalib(struct
> > stm32_adc *adc)
> >   * @adc: stm32 adc instance
> >   * Note: ADC must be enabled, with no on-going conversions.
> >   */
> > -static int stm32h7_adc_restore_selfcalib(struct stm32_adc *adc)
> > +static int stm32h7_adc_restore_selfcalib(struct iio_dev *indio_dev)
> 
> Same here.
> 
> >  {
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	int i, ret;
> >  	u32 lincalrdyw_mask, val;
> >  
> > @@ -850,9 +857,9 @@ static int stm32h7_adc_restore_selfcalib(struct
> > stm32_adc *adc)
> >   * @adc: stm32 adc instance
> >   * Note: Must be called once ADC is out of power down.
> >   */
> > -static int stm32h7_adc_selfcalib(struct stm32_adc *adc)
> > +static int stm32h7_adc_selfcalib(struct iio_dev *indio_dev)
> 
> Same here
> 
> >  {
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	int ret;
> >  	u32 val;
> >  
> > @@ -912,30 +919,31 @@ static int stm32h7_adc_selfcalib(struct stm32_adc
> > *adc)
> >   * - Only one input is selected for single ended (e.g. 'vinp')
> >   * - Two inputs are selected for differential channels (e.g. 'vinp' &
> > 'vinn')
> >   */
> > -static int stm32h7_adc_prepare(struct stm32_adc *adc)
> > +static int stm32h7_adc_prepare(struct iio_dev *indio_dev)
> 
> Same here.
> 
> With the comments updated, you can add my:
> 
> Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> 
> Thanks for the patch,
> Fabrice
> 
> >  {
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	int calib, ret;
> >  
> > -	ret = stm32h7_adc_exit_pwr_down(adc);
> > +	ret = stm32h7_adc_exit_pwr_down(indio_dev);
> >  	if (ret)
> >  		return ret;
> >  
> > -	ret = stm32h7_adc_selfcalib(adc);
> > +	ret = stm32h7_adc_selfcalib(indio_dev);
> >  	if (ret < 0)
> >  		goto pwr_dwn;
> >  	calib = ret;
> >  
> >  	stm32_adc_writel(adc, STM32H7_ADC_DIFSEL, adc->difsel);
> >  
> > -	ret = stm32h7_adc_enable(adc);
> > +	ret = stm32h7_adc_enable(indio_dev);
> >  	if (ret)
> >  		goto pwr_dwn;
> >  
> >  	/* Either restore or read calibration result for future reference
> > */
> >  	if (calib)
> > -		ret = stm32h7_adc_restore_selfcalib(adc);
> > +		ret = stm32h7_adc_restore_selfcalib(indio_dev);
> >  	else
> > -		ret = stm32h7_adc_read_selfcalib(adc);
> > +		ret = stm32h7_adc_read_selfcalib(indio_dev);
> >  	if (ret)
> >  		goto disable;
> >  
> > @@ -944,16 +952,18 @@ static int stm32h7_adc_prepare(struct stm32_adc
> > *adc)
> >  	return 0;
> >  
> >  disable:
> > -	stm32h7_adc_disable(adc);
> > +	stm32h7_adc_disable(indio_dev);
> >  pwr_dwn:
> >  	stm32h7_adc_enter_pwr_down(adc);
> >  
> >  	return ret;
> >  }
> >  
> > -static void stm32h7_adc_unprepare(struct stm32_adc *adc)
> > +static void stm32h7_adc_unprepare(struct iio_dev *indio_dev)
> >  {
> > -	stm32h7_adc_disable(adc);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> > +
> > +	stm32h7_adc_disable(indio_dev);
> >  	stm32h7_adc_enter_pwr_down(adc);
> >  }
> >  
> > @@ -1160,7 +1170,7 @@ static int stm32_adc_single_conv(struct iio_dev
> > *indio_dev,
> >  
> >  	stm32_adc_conv_irq_enable(adc);
> >  
> > -	adc->cfg->start_conv(adc, false);
> > +	adc->cfg->start_conv(indio_dev, false);
> >  
> >  	timeout = wait_for_completion_interruptible_timeout(
> >  					&adc->completion,
> > STM32_ADC_TIMEOUT);
> > @@ -1173,7 +1183,7 @@ static int stm32_adc_single_conv(struct iio_dev
> > *indio_dev,
> >  		ret = IIO_VAL_INT;
> >  	}
> >  
> > -	adc->cfg->stop_conv(adc);
> > +	adc->cfg->stop_conv(indio_dev);
> >  
> >  	stm32_adc_conv_irq_disable(adc);
> >  
> > @@ -1227,8 +1237,8 @@ static int stm32_adc_read_raw(struct iio_dev
> > *indio_dev,
> >  
> >  static irqreturn_t stm32_adc_threaded_isr(int irq, void *data)
> >  {
> > -	struct stm32_adc *adc = data;
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct iio_dev *indio_dev = data;
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	const struct stm32_adc_regspec *regs = adc->cfg->regs;
> >  	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
> >  
> > @@ -1240,8 +1250,8 @@ static irqreturn_t stm32_adc_threaded_isr(int
> > irq, void *data)
> >  
> >  static irqreturn_t stm32_adc_isr(int irq, void *data)
> >  {
> > -	struct stm32_adc *adc = data;
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct iio_dev *indio_dev = data;
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	const struct stm32_adc_regspec *regs = adc->cfg->regs;
> >  	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
> >  
> > @@ -1514,7 +1524,7 @@ static int __stm32_adc_buffer_postenable(struct
> > iio_dev *indio_dev)
> >  	if (!adc->dma_chan)
> >  		stm32_adc_conv_irq_enable(adc);
> >  
> > -	adc->cfg->start_conv(adc, !!adc->dma_chan);
> > +	adc->cfg->start_conv(indio_dev, !!adc->dma_chan);
> >  
> >  	return 0;
> >  
> > @@ -1547,7 +1557,7 @@ static void __stm32_adc_buffer_predisable(struct
> > iio_dev *indio_dev)
> >  	struct stm32_adc *adc = iio_priv(indio_dev);
> >  	struct device *dev = indio_dev->dev.parent;
> >  
> > -	adc->cfg->stop_conv(adc);
> > +	adc->cfg->stop_conv(indio_dev);
> >  	if (!adc->dma_chan)
> >  		stm32_adc_conv_irq_disable(adc);
> >  
> > @@ -1891,7 +1901,7 @@ static int stm32_adc_probe(struct platform_device
> > *pdev)
> >  	indio_dev->info = &stm32_adc_iio_info;
> >  	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_HARDWARE_TRIGGERED;
> >  
> > -	platform_set_drvdata(pdev, adc);
> > +	platform_set_drvdata(pdev, indio_dev);
> >  
> >  	ret = of_property_read_u32(pdev->dev.of_node, "reg", &adc->offset);
> >  	if (ret != 0) {
> > @@ -1905,7 +1915,7 @@ static int stm32_adc_probe(struct platform_device
> > *pdev)
> >  
> >  	ret = devm_request_threaded_irq(&pdev->dev, adc->irq,
> > stm32_adc_isr,
> >  					stm32_adc_threaded_isr,
> > -					0, pdev->name, adc);
> > +					0, pdev->name, indio_dev);
> >  	if (ret) {
> >  		dev_err(&pdev->dev, "failed to request IRQ\n");
> >  		return ret;
> > @@ -1989,8 +1999,8 @@ static int stm32_adc_probe(struct platform_device
> > *pdev)
> >  
> >  static int stm32_adc_remove(struct platform_device *pdev)
> >  {
> > -	struct stm32_adc *adc = platform_get_drvdata(pdev);
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
> > +	struct stm32_adc *adc = iio_priv(indio_dev);
> >  
> >  	pm_runtime_get_sync(&pdev->dev);
> >  	iio_device_unregister(indio_dev);
> > @@ -2012,8 +2022,7 @@ static int stm32_adc_remove(struct
> > platform_device *pdev)
> >  #if defined(CONFIG_PM_SLEEP)
> >  static int stm32_adc_suspend(struct device *dev)
> >  {
> > -	struct stm32_adc *adc = dev_get_drvdata(dev);
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
> >  
> >  	if (iio_buffer_enabled(indio_dev))
> >  		__stm32_adc_buffer_predisable(indio_dev);
> > @@ -2023,8 +2032,7 @@ static int stm32_adc_suspend(struct device *dev)
> >  
> >  static int stm32_adc_resume(struct device *dev)
> >  {
> > -	struct stm32_adc *adc = dev_get_drvdata(dev);
> > -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> > +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
> >  	int ret;
> >  
> >  	ret = pm_runtime_force_resume(dev);
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
