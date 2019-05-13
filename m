Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098091B11D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHbVY09cFhPnmSXUO+BUN/yzmH9d4/ATXRYmh/Xhh0s=; b=mvPRyyCD49sCI+
	BW1Q/EiW3A3Nr4Zovf/f0+TsgDHmZvvYwWr+hZRTBKnTJasv5ac7xarnoGOUggJeq9CBshaTU0/88
	tA4CNoXIAKsfFMm38DN5WvtZmuPHDBnmgEligIRYh7UZBMBiWbO/SzsDRI3QYut0MsjqlGQeEd3bE
	5tVJ6Wbtcuu35MhzpZxFVbT/4LeAKki1EFixrAmNkhSPtEkP5xppXQxUZSCXCObqgh+Ih7+rrX70e
	xPTRZWFiDVvEBNce38vuGxQejJdETZXM/gC3+0NV9bD9Lc8sKqPB37M9VkjXzfcxobjpmoMqOEK4D
	8kZvVTSpQxR3zqgbKgDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5Lr-0000MY-0k; Mon, 13 May 2019 07:26:23 +0000
Received: from mail-eopbgr140100.outbound.protection.outlook.com
 ([40.107.14.100] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5Lj-0000M2-Ee
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+WWOsVPd9Dp6tLZvTsxCw7EKt6o0f+N1wA3iXlg2IA=;
 b=gJ91pD4/6OVnQszqG6V6i9mWuKWD9j4AyTYEStlTrByWHpnK8hszXEoU3QL2dhUsjHsPkOGDG/a7NOAcF2V9LgoJcrfh+QI3z+kkQLrIufTr67fNvUB2IWOSS9oxYcndAVnJMXS5Rt52szZG+VH4FvqQ7rg307m+sLbbT+jtXRw=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3917.eurprd05.prod.outlook.com (52.134.6.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 07:26:03 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 07:26:03 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH 2/5] iio: stmpe-adc: Reinit completion struct on begin
 conversion
Thread-Topic: [PATCH 2/5] iio: stmpe-adc: Reinit completion struct on begin
 conversion
Thread-Index: AQHVBOJDb7gYXrDpa0WRGQ1Y/cnYSqZluTUAgAL3QgA=
Date: Mon, 13 May 2019 07:26:03 +0000
Message-ID: <ae8a2305c5ab0d312e1334e895a5e7fdb45fbd16.camel@toradex.com>
References: <20190507143615.28477-1-dev@pschenker.ch>
 <20190507143615.28477-2-dev@pschenker.ch>
 <20190511110832.24f58e4a@archlinux>
In-Reply-To: <20190511110832.24f58e4a@archlinux>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 732513a0-321d-4ee3-eecb-08d6d774417c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3917; 
x-ms-traffictypediagnostic: VI1PR0502MB3917:
x-microsoft-antispam-prvs: <VI1PR0502MB39174A9B981E84D16F20C1B6F40F0@VI1PR0502MB3917.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(376002)(366004)(396003)(39840400004)(199004)(189003)(44832011)(11346002)(186003)(25786009)(53936002)(102836004)(66066001)(6506007)(305945005)(476003)(7416002)(54906003)(2616005)(6512007)(5640700003)(446003)(14454004)(3846002)(6116002)(486006)(14444005)(256004)(26005)(6246003)(8676002)(478600001)(316002)(4326008)(81156014)(81166006)(71190400001)(71200400001)(6916009)(8936002)(2906002)(7736002)(2351001)(118296001)(76176011)(76116006)(66556008)(73956011)(66946007)(66476007)(91956017)(68736007)(64756008)(66446008)(36756003)(6436002)(2501003)(5660300002)(99286004)(6486002)(229853002)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3917;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 24T+fq6093mvx2S5Yn8gx40DBe9+R7nUnbKqVMNOwvAg+/FPWW4RnWNdNuyvBEKo5pkxLfhYJb3Rw5eeoKpMVC7qep785vBGJ0qKLQjUFMFBGn0venqvYN/8Ssl9gXyFmraoA0VVHHO7b/M3ZRiCJCthQNo5SrE4RuIIpSqmWzOU71rwsAou383a5TrJVKAsj2B4UI0Oqo75T0+nIpQXbhb0Z223V36ZFT4IzMWp0zqqxr8THeikmVLc7X/nRKCzCPYPrUCrZb5naDRKHmoVpSMn6OTcyIrGGbHPfuUgQx8SeLxy51LK+PmiWWnqRt6TFZ9NiZ9ZRPGdgVntLwtScSs0H7bbn4bZtoMV+f/wJHRtH055fSaZpCv8EqqYBvWR7OEg97bkLdYfK5HrHcYIoZ9CxpoXT1WZNKm8HsHhJU8=
Content-ID: <D521BDBCFF93BF4AA6C08DB679517BE2@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 732513a0-321d-4ee3-eecb-08d6d774417c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 07:26:03.3097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3917
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_002615_552541_ED9E3952 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.100 listed in list.dnswl.org]
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

On Sat, 2019-05-11 at 11:08 +0100, Jonathan Cameron wrote:
> On Tue,  7 May 2019 16:36:12 +0200
> Philippe Schenker <dev@pschenker.ch> wrote:
> 
> > From: Philippe Schenker <philippe.schenker@toradex.com>
> > 
> > In some cases, the wait_completion got interrupted. This caused the
> > error-handling to mutex_unlock the function. The before turned on
> > interrupt then got called anyway. In the ISR then completion() was
> > called causing wrong adc-values returned in a following adc-readout.
> > 
> > Reinitialise completion struct to make sure the counter is zero
> > when beginning a new adc-conversion.
> > 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> Hi Philippe, 
> 
> To me this looks like a fix that we should consider applying to stable.
> However, as it is in the middle of this series I'm not going to take
> it via the fast route (during rc's). If people want to backport it
> they will have to wait until after the next merge window.
> If anyone has an urgent need, then shout in the next week and I'll
> pull this version out and we can restructure the set.
> 
> Applied to the togreg branch of iio.git and pushed out as testing
> for the autobuilders to play with it.
> 
> Thanks,
> 
> Jonathan

Hi Jonathan! I don't think that's necessary. As long as it gets into stable at
some point. Our customer use downstream anyway. Where I'm about to apply it now.

Thanks,
Philippe
> 
> > ---
> > 
> >  drivers/iio/adc/stmpe-adc.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> > index 9ec338ba3440..b3872eb37293 100644
> > --- a/drivers/iio/adc/stmpe-adc.c
> > +++ b/drivers/iio/adc/stmpe-adc.c
> > @@ -65,6 +65,8 @@ static int stmpe_read_voltage(struct stmpe_adc *info,
> >  
> >  	mutex_lock(&info->lock);
> >  
> > +	reinit_completion(&info->completion);
> > +
> >  	info->channel = (u8)chan->channel;
> >  
> >  	if (info->channel > STMPE_ADC_LAST_NR) {
> > @@ -105,6 +107,8 @@ static int stmpe_read_temp(struct stmpe_adc *info,
> >  
> >  	mutex_lock(&info->lock);
> >  
> > +	reinit_completion(&info->completion);
> > +
> >  	info->channel = (u8)chan->channel;
> >  
> >  	if (info->channel != STMPE_TEMP_CHANNEL) {
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
