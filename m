Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0852165BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 16:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4hksClTIKSOyzIcZWDWIfqe0aALt0kU0pB2Z7sN+y0=; b=k02GAhQcPSE3A4
	dua6kDqGVsDzkxnTC0jzhg0DfZI4k31NhUN/EZ4LYW2EKhobk+aaEqHCAssK380DmViT1JWQxRTOP
	KzOOJWOot0PR6oL6exnXtR0eBpHF7IO+bZyW9cKUkg0XydQFByNO9vksztL8SfNMC76OMv506ipRX
	/eqxTjqVtJF8ubVtSGm7uqjuMOP6jyve09CZ060vtde+zpqZkbmPAkj+O1Fu2I6Kpv8vk/fcbDaeX
	xI6MMkKECCTDEEjhkv3J3/Kyhknq83x5qcbN24Way6HDHaK4Kjv17WZVmvNKa4PGI5o9PjcrcRMzd
	yLwlXBNhFbu9hQVt5X0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO19C-0002En-Lp; Tue, 07 May 2019 14:32:46 +0000
Received: from mail-eopbgr140104.outbound.protection.outlook.com
 ([40.107.14.104] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO196-0002ER-4L
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 14:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qza6IHX+hKdX5TjcTSI7Ls2l15Iujxn1t4ITBoru/OU=;
 b=lGaQgtg+CXuM/upkaDynoiT1Urh9rowKCH8Jv109Y03GL50MhThjCxP8uTwP1RPKzwMZP2saPgRUr5d1dUGQ6A+gQQiNe0m2wvNlY2u9QoBy6vOQ0mkcIHZr+0tpk373hjFEaErEyDpZ5lE9szTBuV14An1hskFNVlJcyFIK4AY=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3949.eurprd05.prod.outlook.com (52.134.17.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Tue, 7 May 2019 14:32:34 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571%5]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 14:32:34 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH 3/3] iio: stmpe-adc: Enable all stmpe-adc interrupts just
 once
Thread-Topic: [PATCH 3/3] iio: stmpe-adc: Enable all stmpe-adc interrupts just
 once
Thread-Index: AQHVAbgvFNqOXB7C206ClJrrQiiX+6Zcr5GAgAMQagA=
Date: Tue, 7 May 2019 14:32:34 +0000
Message-ID: <80da5f910849a1ee79e1e75cd43a8650c151a159.camel@toradex.com>
References: <20190503135725.9959-1-dev@pschenker.ch>
 <20190503135725.9959-3-dev@pschenker.ch>
 <20190505164503.030d6687@archlinux>
In-Reply-To: <20190505164503.030d6687@archlinux>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 814fc5a0-a8f1-4c74-0ed6-08d6d2f8d8bf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3949; 
x-ms-traffictypediagnostic: VI1PR0502MB3949:
x-microsoft-antispam-prvs: <VI1PR0502MB39499B01D3CFD006C10390F2F4310@VI1PR0502MB3949.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39850400004)(376002)(366004)(396003)(346002)(189003)(199004)(11346002)(2616005)(44832011)(3846002)(6116002)(4326008)(316002)(81156014)(476003)(8936002)(446003)(186003)(8676002)(6916009)(26005)(478600001)(6486002)(2351001)(25786009)(2906002)(81166006)(66066001)(486006)(14454004)(2501003)(5660300002)(102836004)(73956011)(6506007)(86362001)(256004)(66556008)(64756008)(66446008)(76116006)(76176011)(53936002)(91956017)(6246003)(66476007)(229853002)(118296001)(7416002)(68736007)(71200400001)(71190400001)(6436002)(54906003)(5640700003)(36756003)(6512007)(99286004)(66946007)(305945005)(7736002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3949;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u+46fBJEKdqHnmF8XCC99w+PUJHzYh9f7QjN6Bpgjb8H0biSa+2OsaXJgP5xD3o9jcJsXlMIlzt0888kIlaaL4hNoGZAu+8j1pPe3NLi4HyPOSln4MowV+KBrZs4Wwk4NoYwlyo2qjqhdtfCxNX2L0QPGrEQA3YeYsMULjGnyz0b8Js6M6PqUwbcHUCvr7lnxiT9in6TNIAI5ww4mzDyL97sO/gPI1963EXr6ekz8mXpLiI2Kjo7djWt9W4XsNGq48n4TYQHqp2ma4bjxs9OT8v7PxNYP7QTJ7eBqdgsjUnMGISfF5JvJERK6lSDs5aPZsrIBKLImne4G9eQgCUebuwVTWxBVzfjTF+UysI5OveJBroeGf6IQ01twfj/ZVF2HOh2SrZmMQ5MTuOQzoaeJ/twWr7+DSzx96kSYAtBNmY=
Content-ID: <0FE1A1E2965DD7419C8F49FF4A480B68@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 814fc5a0-a8f1-4c74-0ed6-08d6d2f8d8bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 14:32:34.8385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3949
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_073240_169310_5385267E 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.104 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-05-05 at 16:45 +0100, Jonathan Cameron wrote:
> On Fri,  3 May 2019 15:57:25 +0200
> Philippe Schenker <dev@pschenker.ch> wrote:
> 
> > From: Philippe Schenker <philippe.schenker@toradex.com>
> > 
> > This commit will enable the interrupts of all channels handled by this
> > driver only once in the probe function.
> > 
> > This will improve performance because one byte less has to be written over
> > i2c on each read out of the adc. On the fastest ADC mode this will improve
> > read out speed by 15%.
> > 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Makes sense. I'll pick this up once patch 2 discussion is sorted.
> 
> Jonathan

Please ignore this patch here as I send a completely new series that includes
this one.
> 
> > ---
> > 
> >  drivers/iio/adc/stmpe-adc.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> > index baa41ffc0d76..427c890c6e7d 100644
> > --- a/drivers/iio/adc/stmpe-adc.c
> > +++ b/drivers/iio/adc/stmpe-adc.c
> > @@ -72,9 +72,6 @@ static int stmpe_read_voltage(struct stmpe_adc *info,
> >  		return -EINVAL;
> >  	}
> >  
> > -	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_EN,
> > -			STMPE_ADC_CH(info->channel));
> > -
> >  	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_CAPT,
> >  			STMPE_ADC_CH(info->channel));
> >  
> > @@ -328,6 +325,9 @@ static int stmpe_adc_probe(struct platform_device *pdev)
> >  	if (ret)
> >  		return ret;
> >  
> > +	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_EN,
> > +			~(norequest_mask & 0xFF));
> > +
> >  	return devm_iio_device_register(&pdev->dev, indio_dev);
> >  }
> >  
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
