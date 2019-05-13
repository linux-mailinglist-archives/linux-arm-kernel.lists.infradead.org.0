Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40551B176
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myYaCHuoJzJcFtwwn57WYDtFOiLqwCDT2oJ4Xg0OPxU=; b=VPjEzObnlJk6pg
	eQfC72s4TamxT4BlPJtBRE4h+5QF4HFB9tS0zsXM+au5lfZ0R3DNo3AzUHVUWXiY0TsQ7i5Nzqgcn
	mj1PgtwECxYCq563QuybTl5Pq/xxCwCJcHTfVRL6ApmOfIcdaGzvj6iUqPNTR1dTeh50VQHJuWiU0
	HzMVfRvZCxmKewPZTmfUv1M1BqAXg67Dpgt+5dQ/W/KMXeRuMyxOJfgg3zkAK0/zwR4p5Q2qNrOEx
	r2p8IzV1PLy92d0/IkJDNDsmarw6qleNL4aM+WbUc0Jmyz0xtfMePXRvJzjDknvGiIDHqmtJ7iCIh
	E5jyUL/pUja462NNzFfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5gF-0001qF-4m; Mon, 13 May 2019 07:47:27 +0000
Received: from mail-ve1eur01on0710.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::710]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5g6-0001pa-TK
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Idj7L7lGUdG6n77DQwKx3XrrWz8l64DyegcDCLArJRg=;
 b=k8ZJK1puhabwPXvMuG8nd3S5IhfCJ7VwOf2RhMKYpPKr36NE+x9T6YtOsfYMkPqXTzpqyylI/ERwdfYERvCRtnGPbETc4SAmY7JEyQyP47fFcp1Bl2AAS5iwO6sITuj4Ml/cKunLwseuEdV/DiYSLccHvaRLGUAs3Tld9OFQsKU=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2957.eurprd05.prod.outlook.com (10.175.21.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Mon, 13 May 2019 07:47:14 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 07:47:14 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH 5/5] iio: stmpe-adc: Reset possible interrupts
Thread-Topic: [PATCH 5/5] iio: stmpe-adc: Reset possible interrupts
Thread-Index: AQHVBOJDlcfa27rPFkC6CK5LLhcgfqZlvamAgAL4uYA=
Date: Mon, 13 May 2019 07:47:14 +0000
Message-ID: <b2cb0c244d95d1e1e267c75eb40045b7a3cee6d1.camel@toradex.com>
References: <20190507143615.28477-1-dev@pschenker.ch>
 <20190507143615.28477-5-dev@pschenker.ch>
 <20190511112429.25ddd84d@archlinux>
In-Reply-To: <20190511112429.25ddd84d@archlinux>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82491514-95af-4da6-b44b-08d6d77736f1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2957; 
x-ms-traffictypediagnostic: VI1PR0502MB2957:
x-microsoft-antispam-prvs: <VI1PR0502MB2957448724AAEF9B4AF4CB87F40F0@VI1PR0502MB2957.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(346002)(39840400004)(396003)(376002)(189003)(199004)(476003)(486006)(53936002)(446003)(2616005)(11346002)(4326008)(6246003)(64756008)(6916009)(6512007)(118296001)(91956017)(66946007)(66476007)(66556008)(73956011)(2501003)(66446008)(76116006)(5640700003)(6506007)(6436002)(54906003)(26005)(102836004)(6486002)(76176011)(99286004)(86362001)(7736002)(305945005)(229853002)(316002)(7416002)(8676002)(81166006)(81156014)(8936002)(256004)(36756003)(14444005)(71200400001)(71190400001)(2351001)(186003)(6116002)(3846002)(44832011)(5660300002)(25786009)(2906002)(66066001)(478600001)(14454004)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2957;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 61JyQFfRSPT/OTeNvYQXkW5F9uBqgDwP89pq7O/zUWbGF23O6knRzBLCRfrl52zT0unDq32pQJTbVxv25AZI6C6NV//jjvdV6RrIVNYR7dTWp6vQTxLRCI9ad9OHpisA95D+pAVPoRJdUp68KiG03xy5diAMYohObi4w04RgutY4dppz8EamDVVCPcuvgTd0IS6YtQAJeus+fGUACzVOeHOtJRPNswb+S+/iyot6m3F5KxmJy0lXDv6I2luqP7JCnbMjFmLRVstwsilmy9/HhD3lCna1RrSfT6phW/d9RZNSWKN+OrBrsMhGa0GI5T3AZIUH53ACqfwjk04ySiFSiuKqSIxjhhbwtmICDQ1G7i3jKySXac+x6WxdaSaVRN1SJ5K4ZdV5ZLD9w/n6zZ2B/8ASpFguRFsmTjzSGwm8n2U=
Content-ID: <01947B48A97B014CA10C2DC0D37BDAF9@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82491514-95af-4da6-b44b-08d6d77736f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 07:47:14.1393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2957
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_004718_948385_12F3AE76 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:710 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "lars@metafoo.de" <lars@metafoo.de>, "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "David.Laight@ACULAB.COM" <David.Laight@ACULAB.COM>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2019-05-11 at 11:24 +0100, Jonathan Cameron wrote:
> On Tue,  7 May 2019 16:36:15 +0200
> Philippe Schenker <dev@pschenker.ch> wrote:
> 
> > From: Philippe Schenker <philippe.schenker@toradex.com>
> > 
> > Clear any interrupt that still is on the device on every channel
> > this driver is activated for in probe and specific channels in
> > the timeout handler.
> > 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> I'm never particularly clean on blanket resets as they do tend to
> hide bugs. However, the probe one is something that would happen anyway
> if there was a 'reset' function.
> 
> Applied to the togreg branch of iio.git and pushed out as testing
> for the autobuilders to play with it.
> 
> Thanks,
> 
> Jonathan

You're right about hiding bugs. But if the interrupt for whatever (hardware?)
reason does not occur, it prevents further interrupts as it does not get reset.

So this reset takes care that after a timeout one is still able to read out the
ADC.

Philippe

> 
> > ---
> > 
> >  drivers/iio/adc/stmpe-adc.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> > index cc752a47444c..a5990e9f2c80 100644
> > --- a/drivers/iio/adc/stmpe-adc.c
> > +++ b/drivers/iio/adc/stmpe-adc.c
> > @@ -80,6 +80,8 @@ static int stmpe_read_voltage(struct stmpe_adc *info,
> >  	ret = wait_for_completion_timeout(&info->completion, STMPE_ADC_TIMEOUT);
> >  
> >  	if (ret <= 0) {
> > +		stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_STA,
> > +				STMPE_ADC_CH(info->channel));
> >  		mutex_unlock(&info->lock);
> >  		return -ETIMEDOUT;
> >  	}
> > @@ -326,6 +328,9 @@ static int stmpe_adc_probe(struct platform_device *pdev)
> >  	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_EN,
> >  			~(norequest_mask & 0xFF));
> >  
> > +	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_STA,
> > +			~(norequest_mask & 0xFF));
> > +
> >  	return devm_iio_device_register(&pdev->dev, indio_dev);
> >  }
> >  
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
