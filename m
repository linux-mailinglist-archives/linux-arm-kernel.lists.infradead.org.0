Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F60E1319D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6eEbzKZ8ujpGTIROckB8gP1rB2PVDmnJc3WPlO2Jtbo=; b=ebjryYe5ioTmPX
	qiL/QmHZYJiPx6eLW8oFUMtCmM5U4emSDgIWt9IlRyL5R//zzcnS6AJPWwxlSKd8c5iWHhpkoW7df
	FEyQfg4tSN7WFhBgGDQNJJH215FZv8V2xqM4qocoA6nqfk5YFvX2LbwzQ3Eq9Vgn0D2TKbvg6uPGQ
	y4bQ15YChRrXhTX3qHsuTZvwkxLosZr2os1CAPdPD6YUZ55zUU1wHgSGixF03ej7Dkpkdn7IhMWR7
	YRrrcJXwRYMkdhKJjCVn1zG7v0cjgd1OglAWqsQ70RqAZpbvn9aM9oEY7u0jyJUDg2ebCFgPqhKIv
	FTWiMiOxpBEozugzRynA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaaK-0006wa-16; Fri, 03 May 2019 15:58:52 +0000
Received: from mail-eopbgr50098.outbound.protection.outlook.com ([40.107.5.98]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaaD-0006w2-7e
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zh4TWYCzlC9xrPM3UNENXZxpnGU5mMj6FMHQ1Y4TBk0=;
 b=Uhm4PoxnO1NrfEwqpXK4NpMeSuPFObQfQfUksbq25tDwjf2jZtDa3FQsZwHELXjlvo5rhrJ31FBz7ZTOjEVdYj+qIDy2+vUAmFJNo2XEeOXoE3nJecYMXtHvqdRptPAEmfHzev/FJw7BMPV7Hak6ePlQa+e8nA7gDm7kRqZ265w=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3997.eurprd05.prod.outlook.com (52.134.18.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Fri, 3 May 2019 15:58:38 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::48ff:f344:98da:6571%5]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 15:58:38 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "stefan@agner.ch" <stefan@agner.ch>, "jic23@kernel.org"
 <jic23@kernel.org>, "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 "knaack.h@gmx.de" <knaack.h@gmx.de>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, "David.Laight@ACULAB.COM"
 <David.Laight@ACULAB.COM>, "lars@metafoo.de" <lars@metafoo.de>
Subject: Re: [PATCH 2/3] iio: stmpe-adc: Make wait_completion non interruptible
Thread-Topic: [PATCH 2/3] iio: stmpe-adc: Make wait_completion non
 interruptible
Thread-Index: AQHVAbgvhKEqeNeMGUGopQqxfyxbHKZZeJoAgAAWGIA=
Date: Fri, 3 May 2019 15:58:38 +0000
Message-ID: <1aa6533aa8b1bf4a01c1c5f8d6a208337be6b57e.camel@toradex.com>
References: <20190503135725.9959-1-dev@pschenker.ch>
 <20190503135725.9959-2-dev@pschenker.ch>
 <0aab3e91bb9644acb430a8beba927b5a@AcuMS.aculab.com>
In-Reply-To: <0aab3e91bb9644acb430a8beba927b5a@AcuMS.aculab.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eff7935f-2724-47bd-6700-08d6cfe034ef
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3997; 
x-ms-traffictypediagnostic: VI1PR0502MB3997:
x-microsoft-antispam-prvs: <VI1PR0502MB3997C1CABA11DD642F92660EF4350@VI1PR0502MB3997.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(346002)(39840400004)(376002)(396003)(189003)(199004)(118296001)(186003)(2616005)(476003)(2906002)(102836004)(6116002)(11346002)(66556008)(4744005)(4326008)(2201001)(76116006)(66946007)(68736007)(6506007)(64756008)(305945005)(66446008)(8676002)(86362001)(6512007)(73956011)(91956017)(486006)(44832011)(7736002)(7416002)(66476007)(26005)(446003)(71200400001)(71190400001)(8936002)(6246003)(66066001)(53936002)(81166006)(6436002)(81156014)(2501003)(76176011)(25786009)(6486002)(256004)(478600001)(36756003)(316002)(229853002)(99286004)(5660300002)(3846002)(110136005)(54906003)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3997;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: myoox2xZjx8TtCFEYinRg24d5HwpcC9H2dir7ZMbDkf5CouobEi6Lkpt+fZFzqmo+Vq7FqRqClsAClDejNUVorIb1akDCTqjGHCTgdJC8CQeM37Q79IQqF9T1AymM6NLcKts+B7rwXyK/ey16QKsqRgEQe74v4eHHflZDgiHm/uLblxjZSfuAJ4lUDxPYfiQBi3NwJf1BNOqK10mGRo2xc7ivc86qom0N+qdj7Xpv4NcxI/gpl11NEivhx4uwN4hLN4LFLf1mj26egxcY1I4JLxukluh+gXL2bEIU1pDa/KdNoPOrX2rZuwLnzx5BvWthX2wD9uo/NEFzzZ30a8hK5R7BxuMlP1MNGjY/GaiJhkm3RUXny4zrK2QD9k7ZdSSRiQw593HlQgO8So1slHGMwiUmojvyOFRdpRZTuHa4t8=
Content-ID: <30EE247C42402344A09AFA35C0A279BA@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eff7935f-2724-47bd-6700-08d6cfe034ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 15:58:38.5291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3997
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_085845_331248_3FA59F32 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.98 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Max Krummenacher <max.krummenacher@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-05-03 at 14:39 +0000, David Laight wrote:
> From: Philippe Schenker
> > Sent: 03 May 2019 14:57
> > In some cases, the wait_completion got interrupted. This caused the
> > error-handling to mutex_unlock the function. The before turned on
> > interrupt then got called anyway. In the ISR then completion()
> > was called causing problems.
> > 
> > Making this wait_completion non interruptible solves the problem.
> 
> Won't the same thing happen if the interrupt occurs just after
> the timeout?
> 
> 	David
>  
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT,
> UK
> Registration No: 1397386 (Wales)
> 

You're of course right... Thanks for pointing this out. I will send a v2 with a
better solution then.

Philippe
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
