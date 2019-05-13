Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 235AA1B122
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNi6W9RSLXDoIw8FUfKPrRNqxSYFOP+64+wx0XzbQQ0=; b=RQ8CTUDz3XGRp3
	0of5B1SnYw9MJncBJUaycjlCxT+U2Zr0UGV2lJYGuG+CbThzyMLHjCKsvw79IgWNq7TlkSHbS1B17
	NQ/o5B2QN8XXVk5flum+iY8Uh8wC0Mw3/3PHpEuzD+WO5ZMM1DQXJSngyV9mUEtBPkp5El4qqwYbf
	H0cgAaW7E0xSUFq5+xvT5kJbp+Oq0VZcPyFw6YPXzhZVpLmEh6//9E/q8GKsRDXYwMTqMzP+l/NqZ
	UKbk57jSqYU7MWYE8XdCGGp9Hghs+YMjtuesKOS8daV/mQ/VkPa1wTuT1jKIQXyI4IvqxGUHNopzY
	N1CQPEULL7RE/88HLADw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5Nt-0000pV-2R; Mon, 13 May 2019 07:28:29 +0000
Received: from mail-eopbgr50097.outbound.protection.outlook.com ([40.107.5.97]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5Nm-0000ok-14
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:28:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6dbTAC//XHrFVIZfXDI+bV77HQpSpYzq9ex1ut4pJcg=;
 b=XckAKA7VFgGqj1+tFvJTSBBlwN5+SpL0VMNfD06Xa0BxSHHOApFtoZGC+5u+clFDuwy5kT/n3ITymFAN8r/34VF6hi4Sk47ihu87FXU1u/P4Kfc3QMh3UFRkcLGXiQ+Y8eOOsyZIKCJtI60IQpfyuyMJguULAPg6KyEItwzzhLQ=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3087.eurprd05.prod.outlook.com (10.175.22.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 07:28:18 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 07:28:18 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH 4/5] iio: stmpe-adc: Use wait_for_completion_timeout
Thread-Topic: [PATCH 4/5] iio: stmpe-adc: Use wait_for_completion_timeout
Thread-Index: AQHVBOJHMVYXdjmHB0653c7vvGs0gKZluzwAgAL12oA=
Date: Mon, 13 May 2019 07:28:17 +0000
Message-ID: <6bc5bf4c854288fae0591f33ea9ae4e5c4091616.camel@toradex.com>
References: <20190507143615.28477-1-dev@pschenker.ch>
 <20190507143615.28477-4-dev@pschenker.ch>
 <20190511111548.504948ae@archlinux>
In-Reply-To: <20190511111548.504948ae@archlinux>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c68ebad4-3e66-4d46-c477-08d6d77491b1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3087; 
x-ms-traffictypediagnostic: VI1PR0502MB3087:
x-microsoft-antispam-prvs: <VI1PR0502MB3087CDD718CE0EBF6AB80807F40F0@VI1PR0502MB3087.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(366004)(396003)(39840400004)(376002)(189003)(199004)(6916009)(6116002)(53936002)(478600001)(3846002)(5660300002)(14454004)(6246003)(2501003)(6506007)(91956017)(76116006)(73956011)(66446008)(64756008)(66556008)(66476007)(86362001)(66946007)(316002)(102836004)(486006)(476003)(2616005)(446003)(11346002)(44832011)(99286004)(7736002)(8676002)(81156014)(81166006)(4326008)(2351001)(8936002)(25786009)(305945005)(26005)(6512007)(54906003)(66066001)(76176011)(6486002)(14444005)(229853002)(36756003)(7416002)(68736007)(186003)(71200400001)(71190400001)(256004)(118296001)(5640700003)(2906002)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3087;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aLasiDEjj1AmLmwKwpfhyXkxZxO9B8a3A6U3JErB2WuXUw5RLUCfL6vZjRfLTwRqEkwupWe0x3SLFpat2PirX+DeRso2t4rACfDNv3ZcWFfxSLUWpdR5z2Xy0f71DzTDDpLt+Vc3gbk9+RUIw8XBT3bVcJq+Fu3uKf5rjiLlcQe8D76OfFfi7nq4u0gAEQRT6fUcAZkbpI8yHBgGHBTOBYMCFo2UWjIi1hWEeGBgqxZg2OmPqH6036B57wVlLK53A6t/HdXhfNBu0tg/MEQxwmJQpk74SswAlRAOtfFWOarD6rqBUfpb9YrGX2nRyyGYGsZdFwVVmk/mWC+7cdByAiVnWIvBLBI2RNobL7PrnWgc3JAoMepEobow8oC5bZ81xvcrEAGP+Ch3Z7/mXgeUPX7JeXX1QGbwWYpT4Mn4vgQ=
Content-ID: <D331B7B33E79B841B5F2A31D1CE2760E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c68ebad4-3e66-4d46-c477-08d6d77491b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 07:28:17.9187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_002822_069403_A27B9873 
X-CRM114-Status: GOOD (  23.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.97 listed in list.dnswl.org]
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

On Sat, 2019-05-11 at 11:15 +0100, Jonathan Cameron wrote:
> On Tue,  7 May 2019 16:36:14 +0200
> Philippe Schenker <dev@pschenker.ch> wrote:
> 
> > From: Philippe Schenker <philippe.schenker@toradex.com>
> > 
> > Use wait_for_completion_timeout instead of
> > wait_for_completion_interuptible_timeout.
> > 
> > The interruptible variant gets constantly interrupted if a user
> > program is compiled with the -pg option.
> > The killable variant was not used due to the fact that a second
> > program, reading on this device, that gets killed is then also killing
> > that wait.
> > 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Hi Phillippe
> 
> This one clashed a little bit with our earlier patch to remove the
> unnecessary assignment.  I've applied it by hand but please check it.
> 
> Applied to the togreg branch of iio.git and pushed out as testing
> for the autobuilders to play with it.
> 
> Thanks,
> 
> Jonathan

Hmm, yeah I see it sorry for that! Somehow that line went in again in this
patch. Don't know why... Anyway I checked it and it looks good. Thank you!

Philippe

> > ---
> > 
> >  drivers/iio/adc/stmpe-adc.c | 18 ++++--------------
> >  1 file changed, 4 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> > index 82b43e4522b6..cc752a47444c 100644
> > --- a/drivers/iio/adc/stmpe-adc.c
> > +++ b/drivers/iio/adc/stmpe-adc.c
> > @@ -77,17 +77,11 @@ static int stmpe_read_voltage(struct stmpe_adc *info,
> >  	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_CAPT,
> >  			STMPE_ADC_CH(info->channel));
> >  
> > -	*val = info->value;
> > -
> > -	ret = wait_for_completion_interruptible_timeout
> > -		(&info->completion, STMPE_ADC_TIMEOUT);
> > +	ret = wait_for_completion_timeout(&info->completion, STMPE_ADC_TIMEOUT);
> >  
> >  	if (ret <= 0) {
> >  		mutex_unlock(&info->lock);
> > -		if (ret == 0)
> > -			return -ETIMEDOUT;
> > -		else
> > -			return ret;
> > +		return -ETIMEDOUT;
> >  	}
> >  
> >  	*val = info->value;
> > @@ -116,15 +110,11 @@ static int stmpe_read_temp(struct stmpe_adc *info,
> >  	stmpe_reg_write(info->stmpe, STMPE_REG_TEMP_CTRL,
> >  			STMPE_START_ONE_TEMP_CONV);
> >  
> > -	ret = wait_for_completion_interruptible_timeout
> > -		(&info->completion, STMPE_ADC_TIMEOUT);
> > +	ret = wait_for_completion_timeout(&info->completion, STMPE_ADC_TIMEOUT);
> >  
> >  	if (ret <= 0) {
> >  		mutex_unlock(&info->lock);
> > -		if (ret == 0)
> > -			return -ETIMEDOUT;
> > -		else
> > -			return ret;
> > +		return -ETIMEDOUT;
> >  	}
> >  
> >  	/*
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
