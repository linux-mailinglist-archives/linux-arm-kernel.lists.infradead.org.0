Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A3E17291
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMpt6FhIKBwKLIUfAxZ7qRIao32uFuO08ZxMj3hJB9I=; b=aEdpHVwNZ8mrBs
	6zX3gXH9LNgqzP9E92hOZSQYMswMq/Bdb3ajBE02VWcca2ZjWBs19OnJJgpjTot8EZ3tZHdvtFR8E
	faOgzQT4gyRCoO0peO+ZDOG4CtLbC9KDyi2zxeBlY45Qijy1n+GHB2RZEx2TVm2/ymvJ0b4ArL7kv
	+q4sRIhK4WCAIya+1ImR803jRPrWHksysnVAinByZKkdG/pc4nl+JAXRrOu0zW92rCrS2MupVlhJM
	O4LFdK1/37hiapc/H0xeedYBoSsJoJBhj8OFO0CjQcO29gP05Yn+VQMpa3Ql9BM+p4cWrtGqk3eHY
	h96T4T5LAPEqW2c2bNMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGzz-00084U-OE; Wed, 08 May 2019 07:28:19 +0000
Received: from mail-eopbgr00131.outbound.protection.outlook.com
 ([40.107.0.131] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGzt-00083z-3L
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 07:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qWKbaahYiA9lYMyegZeWHf8b2vQmLuiL+B95D4p8mLk=;
 b=cx+jDf1d2Tc/swdAuzjj69EfNTsgEVzvC64FIoFK9O8ellLAtuppmrmY4GrQC9ue0SZkLR0mvfME6+r3z++EXrv87BR+NLb8bklYwXVqHcJ894wNrZXAkORv6Y9sMiopCclSzr5MdYL/67tdrbFhVlmPjGNvatixrfIz0flGjH8=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3933.eurprd05.prod.outlook.com (52.134.4.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Wed, 8 May 2019 07:28:05 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571%5]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 07:28:05 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "lee.jones@linaro.org" <lee.jones@linaro.org>
Subject: Re: [PATCH 1/5] iio: stmpe-adc: Add compatible name
Thread-Topic: [PATCH 1/5] iio: stmpe-adc: Add compatible name
Thread-Index: AQHVBOJChjWKjOCYJEK9rCCD5+wLmaZgzdmAgAAHiAA=
Date: Wed, 8 May 2019 07:28:05 +0000
Message-ID: <0cf03cb66eebb1aa87a4460f96db5cadab47392c.camel@toradex.com>
References: <20190507143615.28477-1-dev@pschenker.ch>
 <20190508070107.GG7627@dell>
In-Reply-To: <20190508070107.GG7627@dell>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ddaba678-98d0-4676-a0d7-08d6d386b649
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3933; 
x-ms-traffictypediagnostic: VI1PR0502MB3933:
x-microsoft-antispam-prvs: <VI1PR0502MB3933A22E607CF338585F3446F4320@VI1PR0502MB3933.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:390;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(366004)(136003)(346002)(376002)(396003)(199004)(189003)(305945005)(6246003)(2351001)(7416002)(36756003)(14454004)(86362001)(6116002)(6506007)(6486002)(68736007)(4326008)(3846002)(6916009)(53936002)(229853002)(44832011)(2501003)(478600001)(25786009)(11346002)(446003)(6436002)(2906002)(14444005)(102836004)(5640700003)(186003)(118296001)(2616005)(7736002)(5660300002)(76176011)(99286004)(316002)(91956017)(486006)(73956011)(64756008)(66476007)(81156014)(76116006)(8676002)(66556008)(66446008)(66946007)(4744005)(54906003)(81166006)(6512007)(476003)(71200400001)(71190400001)(256004)(26005)(8936002)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3933;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vP6X/d4d8ipD7XPGF7pXKL7U/j493agGxP5tq5U58tT/kegeV2D96FB8i+yqZP0j5ytWjuDDu4e+DSgJw3Rd5GuNzWNRIPgMoICAPMeThjEdV2vYIjWgoH+0PaZHqgm3hUgKOqHigHBwXDyDNb/oZLDi5pkRJjKAZKEl2Zg/XYPux/xHGdx5jes4Lg5eN5cAbevBDONQRVF7j8S6ylwWY6miJ91dydVOFVmN69+zR2b7xx8JRei5D7NjFIQlAAJvaTD53SFuNGj+Jn4XV98WUDVvJlTZ3BDv20HDy+w7FUrkoo6HAGSFtOqdbCDIlAPTyRzr8qWdzZxdXlrKINCvyMMD6F8z5xfSilFh7hdKUuQAMq/CVwcvbCi1ALIP7C+yfiAHqtLBh4P391yTt0msSuNKbSFyVVCfrXVQv+wlHi4=
Content-ID: <14D6D287240A1F4587BD207F33A3EE13@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddaba678-98d0-4676-a0d7-08d6d386b649
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 07:28:05.4849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3933
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_002813_243721_570E6D84 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.131 listed in list.dnswl.org]
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
 Max Krummenacher <max.krummenacher@toradex.com>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "David.Laight@ACULAB.COM" <David.Laight@ACULAB.COM>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-05-08 at 08:01 +0100, Lee Jones wrote:
> On Tue, 07 May 2019, Philippe Schenker wrote:
> 
> > From: Philippe Schenker <philippe.schenker@toradex.com>
> > 
> > Add the compatible name to the driver so it gets loaded when the proper
> > node in DT is detected.
> > 
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > ---
> > 
> >  drivers/iio/adc/stmpe-adc.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> Why have you sent this set to me?
> 

get_maintainer.pl returned you as a commit signer. You signed the initial commit
of this driver and pulled it back then because it is part of a mfd.

Philippe
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
