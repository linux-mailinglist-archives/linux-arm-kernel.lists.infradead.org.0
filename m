Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFF5165B42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 11:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgr73kIEeaQ8B8NnoRWLygyx5fmRL9ftHjIfeW4W1Ao=; b=kAKdtkWG4Ht9NN
	UGyEmW3YzGCjI7gh7QePkIto9IFtov5N2PvwV5zUr7wfPjYE4RQ7nMs6n+bbjP3vBA9cLhZCtrH+C
	VSZtCWoMut1OXYGPU8D1CUltpHCg+IaNcsmYimSFlqfxvwqLKDazoIEhDrBU4fhol7mRHmSt0M3ck
	z+IXJAmAe+S5mn/YqQ3+/z5KwzjvJYI6umNjmDz0/5a0s5tcjZ9xcRt3Vz1WBSTpjeU50sG7h641Z
	mUdKE6jkjciLGg5gbfzOzeJx3/5uIm10PS30eiOla8WfScw47MSuqQgLobPF2w8H3RZOscgK329vx
	84ltSNLxC3Qw63oStx4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iom-0008MR-U8; Thu, 20 Feb 2020 10:12:28 +0000
Received: from mail-eopbgr40137.outbound.protection.outlook.com
 ([40.107.4.137] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iof-0008Lq-3Q
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 10:12:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bo/+Sm4jUbgoEG+kPMY/YiEDp3TWhVF0SGCkuQp7p5fX+tsTg3WJnV+N4LYEf4dK3UEupWGYZVOGwtAq1oTXql0qGv842tPIFzWd3OY8j/NlHOvj+qGpEYlEeCYcGeu+TPuENyvuvdD2y1B+DCqHE5jii81BZOeI659w9HMGqmtUb3f6kJWLYfTNPHlcS0ylzjs+mEBP4KZfnPzGILnnsYUaKPA6vXCCa3tVJDWEA6Wp+jvZG3EDruiHsm18rTxW0i4vfIyBoFQLf2urX318421Pi8Bsy5ojhbIr9VY0oFQw7U6zqgBhp/4wtdaYJEsWMwIAo4NN7x2d8uUagvvGrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8vxjFLJASDwYhSGWzwUXudyqZAFeVU+3lzM9IwZZDX0=;
 b=BTPSmsx0QUHZE6EeuAE8zHfxM+5FTFe1XDv12iE2C07NzNVFMRDNEAituimTq4i63qzaLv/AxelmytquC5GrkFRZHI9zLHGPLTnzaxnrQLgGWDZaCDdf8HBMVYOhjW1ymIqVF+0i4tWOfkcwQZ7GeFzmtLNm+nj+eUrD1YaMOuDn2+adClsjLwxxnf2izWw9VR2y/bJg0fINw6pVOAFp4+OUFSE5hJvdB38GvsgS5hw5FJZstxC6J+yoaxDYJXPG74JsxZBtUN6ra9LlTCnOnUzoQi7KUPfYBDJB/DdPkAGZsQ6sIHOvBYZUImqTun/lXeDvZHCUl16r+xANbpuXuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8vxjFLJASDwYhSGWzwUXudyqZAFeVU+3lzM9IwZZDX0=;
 b=FdoaBd561REboJhU1JJHgzyVD0XblM5p62WQgLJKwVZl38kDuzOJ+23D8UAahB9MYLP6Zq9Ml0mwRbMRoJr1Hxhdei7eDlCgYDspYOUjEVCm/akcA480BjcVrqnF9ZYocRvMNt7I2DVlMzcZebPYlQ+YdyH5uiYJ8rG3TrMXOHo=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3370.eurprd02.prod.outlook.com (52.134.67.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24; Thu, 20 Feb 2020 10:12:15 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::d7c:583:b9cb:7592]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::d7c:583:b9cb:7592%7]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 10:12:15 +0000
Received: from [192.168.13.3] (213.112.137.122) by
 HE1PR1001CA0001.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:3:f7::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Thu, 20 Feb 2020 10:12:14 +0000
From: Peter Rosin <peda@axentia.se>
To: Linus Walleij <linus.walleij@linaro.org>, Russell King - ARM Linux admin
 <linux@armlinux.org.uk>, "open list:GPIO SUBSYSTEM"
 <linux-gpio@vger.kernel.org>
Subject: Re: [REGRESSION] gpio hogging fails with pinctrl gpio drivers
Thread-Topic: [REGRESSION] gpio hogging fails with pinctrl gpio drivers
Thread-Index: AQHV58ZIszFMtrU3okKVIJwFGeXS2agj3OGA
Date: Thu, 20 Feb 2020 10:12:15 +0000
Message-ID: <fb74672f-a12c-5f94-450b-11e44238ab30@axentia.se>
References: <20200206173247.GX25745@shell.armlinux.org.uk>
 <CACRpkdbzjBnaeXJg3XvZ6G2FdtQQa0u7MPy9bgN-uo-F1vSpbQ@mail.gmail.com>
In-Reply-To: <CACRpkdbzjBnaeXJg3XvZ6G2FdtQQa0u7MPy9bgN-uo-F1vSpbQ@mail.gmail.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
x-originating-ip: [213.112.137.122]
x-clientproxiedby: HE1PR1001CA0001.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:3:f7::11) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62d0cccd-56b2-4767-a6fe-08d7b5ed5c1c
x-ms-traffictypediagnostic: DB3PR0202MB3370:
x-microsoft-antispam-prvs: <DB3PR0202MB337014FDAC9E503D5C245576BC130@DB3PR0202MB3370.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39830400003)(396003)(376002)(346002)(366004)(189003)(199004)(66476007)(66446008)(66556008)(52116002)(26005)(64756008)(8676002)(4326008)(31686004)(66946007)(53546011)(8936002)(86362001)(31696002)(16526019)(186003)(508600001)(81156014)(81166006)(5660300002)(2616005)(316002)(956004)(6486002)(71200400001)(2906002)(110136005)(54906003)(36756003)(16576012);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3370;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F7nYMZQbbzelGhs52RkJrw81JgHzkdwGQDSWuyTlnVB2871kDatUhN3KODXZg1ZDyT+2+TjIeNGT25gura1ony7XIlSDK7EsTjsiN5JB3qcyXzawXDD0mXTFNBCxyN8w3fspxaG0JfC9XkvMXW6bIICqU4U5S2YASmYRY5diKdwv30tEfEOOJlA+0cHHDoVka6f4D/WlhUvNbKUOYTZygqf5ZNb/XAHTsSfc7W6qvc8qYw7ixK4088XoH0dxryNZLubqYmwdHAR/u1uZJMopbw2WXRo7ZM8mx7qd2MaDAz1trnTyVWdwBUhBpYjeO+cG+fkR92QimzSXO4+aR+vDfo3XSbtnfcLBvQGfFRlBV2YGIFNUNG5qGOBkCXj6enQoaiCAPJpRoBShHJfC61vhWA384zeFu4ekwZJvC4IGMgrV3fXTha97c5+foKPNK4Ec
x-ms-exchange-antispam-messagedata: voW6+lmWhGv9NruUChds7hWiK+AvE32n7mU+NY0vSBNlQTKsnLPmPqxE8WGcrDON8IZevWn1MjDg0bKmIoJr+Zziw0qt/BxA5eIoq+pfosx2XJUJ+mWLieWkgcZmkLHbJ0ndR+tDCT9eDPlX9M4EyQ==
x-ms-exchange-transport-forked: True
Content-ID: <84FB77228977DA4994BA0FC127F25319@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 62d0cccd-56b2-4767-a6fe-08d7b5ed5c1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 10:12:15.5351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aGUvgXH6TzlCWHEkca2R5gBRfktOoRAUqiVbVzVkFN95bb2QnSofJ6CaJMvH6hhS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3370
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_021221_359827_D26C1755 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.137 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-20 09:17, Linus Walleij wrote:
> On Thu, Feb 6, 2020 at 6:33 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> 
>> It seems that sometime between 4.20 and 5.5, something has broken the
>> ability to specify gpio-hogs in DT for GPIOs that are written around
>> pinctrl drivers.
> (explanation that makes perfect sense)
>> Consequently, adding a gpio-hog to DT for this driver results in the
>> driver endlessly returning -EPROBE_DEFER.
> 
> I suspect this is sx150x-specific and suspect these two commits:
> 
> 1a1d39e1b8dd pinctrl: sx150x: Register pinctrl before adding the gpiochip
> b930151e5b55 pinctrl: sx150x: Add a static gpio/pinctrl pin range mapping
> 
> I suppose people weren't using hogs very much with the sx150x and
> it didn't turn up in testing so far.
> 
> I don't think for example pinctrl-stmfx.c has this problem, as it registers
> the pin ranges from the device tree as part of the core code.
> But other drivers calling gpiochip_add_pin_range() may be experiencing
> this.
> 
> Peter/Andrey, do you have some idea? Have you tested this usecase (hogs)
> with the sx150x?

I have never created gpio hogs myself, so no, I haven't done any testing
with that. Sorry. I could of course spend some time looking at this, but I
don't know all that much about the wrinkles of the interactions between
pinctrl och gpio. Or plain gpio/pinctrl for that matter. Sure, I extended
this driver, but I haven't really looked at those sub-systems since. I
think others will come up with a solution for this with much less effort
and with less risk of introducing new problems...

Cheers,
Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
