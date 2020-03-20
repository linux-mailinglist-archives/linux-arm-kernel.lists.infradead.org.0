Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB1018C90D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 09:40:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1yjifYn0O1COth3zKn9RBXVg7/g7Btybp31benv7m8=; b=cnO4pmeytj1r/s
	D5f5z3as9IIi7VpRa/Z43V0pfi7+49gpzFEWIqs465UaJb3wxz1cjpru2kGwhxvjOjV1X/NK17Er4
	fBZh8e14/lIrOSRQPwhREv1wWehcMkVWAcshusYwxyIBYVuJQn4CpTjkKKhRsKsxKWscQiXNHtmhx
	Y8nvKlQUC6JhwFwX5+JsN1I/e674g5hK6lQ4UEg7oAldSgublSeOIKnTeHosSt7Lf1IDVO6iycDJG
	ajpw7ZhiNIP4TZ2uboOFNUidyNlR5WXgDk9gKH6T37/IgoYsEsndr784qSxv3UtXycX6ULtLasLjR
	Cm5Ssvrdo9GXksnf29BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDCd-0005OX-Mw; Fri, 20 Mar 2020 08:40:27 +0000
Received: from mail-eopbgr50044.outbound.protection.outlook.com ([40.107.5.44]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDCV-0005Nl-W7
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 08:40:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+38sseMgZdiVlSZadirQMMX4mkWDl16Tnat3MDolYb6sBv1GJzEWRe+wfs4P6KxUG8s7LlfW8fxrandB5pfTmGwkadabZzDDc2qgIxsezUjueFcnhdZbR7w9NP8rgZbknBg9U+93axELwCLbtWzeJ321cvEIAd4/WFzC8ZCw6PF7maWkGL6U34IpVXvcs7w+b0NZzficnsUUnMu3GAmwBmmZ6kvt/byRqaG4wycxULuJp+dufI1k95932sGf2Da0ZhQ6bEfMlTXxTXOPrgrexGvqE3/zCkwFt4D7eiDttuqFi71gXtSOtcXEi1hmBJ1xce01aTdRx+pntpDF0Y5gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ig7vsm4mW0W2fWYVuYntzY2+i2Gm5rc73fWEJDiL9mI=;
 b=lt/DZRQjUj3U5RpMUZWY61WTgJZfda2oHdB2aEz03JUrGzjWcckB6V41Cul3Di3w6ifVp4NSqqjdXpC8771Vp3g2tVF7+2neUS2WqtLbxZIF5gB0UkjYASKo2AEnRCILbvxl3yfgxeQMDZbql+Y+JG4zdSdQs4BBhhK/X2NNsJpwwX7TY1V7eOIELvK1GV/2sCOjHERE1Nm9m5I9BkCJcr4coEFTWB/r+qn1PH1ytqeukP4rYjFaxjTbq6URRG+oJyhIU9yt4KHYqce66WJeMMsqO5ka1HI4ynODsG3iuBHhLnkjq41ckbqz9RkHm95o2C44Y1k1OVTKSR+aBk9xNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ig7vsm4mW0W2fWYVuYntzY2+i2Gm5rc73fWEJDiL9mI=;
 b=WCGHemLp17GewkXCv5pyChq21s1kOLqWkM/NunW9COzIS7soP2+AHSqXjiKrCgQsYsNfinlULzlzxU33rn3sC27bOOo0rSC4IP8lY62TlZW95mwR4whjvRJQym1DijencUAv/BWtKn8m4KxfgZm/SerIoVhTi/R52utLE96e3/w=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6500.eurprd04.prod.outlook.com (20.179.253.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Fri, 20 Mar 2020 08:40:16 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.021; Fri, 20 Mar 2020
 08:40:16 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
Thread-Topic: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
Thread-Index: AQHV9U3Qw/Abi3aPd0Wpj3X8/OF3VqhRN+vAgAADLgCAAAB94A==
Date: Fri, 20 Mar 2020 08:40:15 +0000
Message-ID: <AM0PR04MB44819EAFF5AD697B7E39B7B888F50@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB4481F673F90C735F272C171F88F50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200320083756.GA12067@e107533-lin.cambridge.arm.com>
In-Reply-To: <20200320083756.GA12067@e107533-lin.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9892e06d-2d82-4591-78e6-08d7ccaa5054
x-ms-traffictypediagnostic: AM0PR04MB6500:|AM0PR04MB6500:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB65006F08063F12BE96EF43F388F50@AM0PR04MB6500.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 03484C0ABF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(346002)(39860400002)(136003)(199004)(33656002)(6916009)(52536014)(5660300002)(26005)(81156014)(186003)(8676002)(7696005)(44832011)(64756008)(66946007)(55016002)(86362001)(66446008)(71200400001)(4744005)(81166006)(9686003)(66556008)(2906002)(66476007)(478600001)(76116006)(54906003)(316002)(8936002)(6506007)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6500;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3tMjY7jUgNmsa9NmJIjW97DieEbe/Feu8U2Z+peSIms7a/QVq25NQom9Y4+CCYCIXcz2LaeXyakPLZp717zsM8yHUUU2DnzzXS+/KVe0rKHeyvJBntRzqCf50tM89pkAsbJGzKBTIOLxewSob9fxZprP5xN5ucJvXkT/x8eWhHGpK5p++9jS6+8bN/9LC7kckBvtMeE3809ITOREQ69ZJt8i0b9nEQFiSWMqiPGD21ePd/fcr6jiBLvEm83rVSDIM+rTJIrtto8VPJ48IWJuVq8wueQWOqJ9dciFg/3jQJLwWrqmePV9Ht2ug2mKU6j3p5kBZfNb75OhzQsfBpvD70gB58Cnynhw4JClkQkWa/eLmDgu/Z+xom7vo8THgltq1WImf7vEDMFylByYlQ+WErK4EGbnbkZU3tvfeT2kh9UKnS0ucCDN5GPBiBFcLnfk
x-ms-exchange-antispam-messagedata: a0rQHc419AtV9HiEH0uUsF66amt0280lHPHZ7CH27wxz/B7cyDjLH8Scflq1PyG/G2YYh+gA2mDmlpbZYehPfWIHI26ENkKyvMbTtST/ixR8oevpnQlz7x+bbel7GM2uRS6CwiZE71tUg8ydaFsyWw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9892e06d-2d82-4591-78e6-08d7ccaa5054
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2020 08:40:15.9305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L9BTin7GFM7NM9fROWrg1ryS/gMORHDE288iMyeNIa+6lTFeMr2BReo4WHii2/QPbBRMKi1+Y3VdjHThjwSYVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_014020_040986_DDC1BE10 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports
> support
> 
> On Fri, Mar 20, 2020 at 08:27:47AM +0000, Peng Fan wrote:
> > Hi Sudeep,
> >
> > > Subject: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports
> > > support
> >
> > Are you fine with this patchset? Or You expect multi channel support?
> >
> > We have some features depending on this for long time, so hope smc
> > transports could be finalized sooner.
> >
> 
> I have applied these patches as is, yet to push it out. I am waiting for my v5.7
> scmi PR to reach arm-soc next before I update my scmi branch. I will let you
> know replying to this thread once that happens.

Appreciate.

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
