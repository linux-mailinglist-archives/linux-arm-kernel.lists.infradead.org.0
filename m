Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C503A6DC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 18:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vgk5GZhBAgmNRmNVBzE/FYyODqp41B3BroRleERAfIY=; b=W7VEXLEEvxq0F5
	vMTh3ixyoxAd0SNJmPkMlqEfLF8jVCtqKiIVvNFVuR0M/VDiJ6oe+LRL3GqYVMuMbyR/2k3xccksv
	L44bInoedc2xW9hyyN5SgglnRFaQj1mnwfaI04Fr59Gzy3YKTZoJX2iw5LqNVknHmZOJ2YrCeJ0H3
	Y+u7JAmNaY8B7QZDpAq7BV5C6sP9vwO87EvJpoTrYsI8mNVrUGfFEf2psUQtYf10EqNJsgZ599mcC
	3XZkN5yHZiOzb2fvuD9H+IXKJggMh1n1UFTnWUeHAJNiTOzXGgi9Uj2h8AJnkWECp/GHktSIfL131
	broEDKp3vM8/LqolFiBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha0pt-0005k5-Rp; Sun, 09 Jun 2019 16:38:25 +0000
Received: from mail-eopbgr30095.outbound.protection.outlook.com ([40.107.3.95]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha0pV-0005bE-PU; Sun, 09 Jun 2019 16:38:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EngMpKounZPzZ32Ch+Ck4ZFFgS/evJSip8KYe1nOlZw=;
 b=Tg5EmUYE64TeuLXo+AMqNPdL8tewMD6bxc/CKftnk4Ir1b1i61r3udvbesw5bdfeVYeEvQS9GkmKDny0J0emAhdL0XZr2pfzjU/szQ50AZYbSyV2gq57Q/lXAGSQWKw3Wcj2NqgOI76g5BZgAnth80wCm0cQKIODEYrxXTJqo0E=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3466.eurprd02.prod.outlook.com (52.134.72.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Sun, 9 Jun 2019 16:37:53 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::49ac:3a71:a3ec:d6bf]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::49ac:3a71:a3ec:d6bf%5]) with mapi id 15.20.1965.017; Sun, 9 Jun 2019
 16:37:53 +0000
From: Peter Rosin <peda@axentia.se>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Subject: Re: [PATCH 00/34] treewide: simplify getting the adapter of an I2C
 client
Thread-Topic: [PATCH 00/34] treewide: simplify getting the adapter of an I2C
 client
Thread-Index: AQHVHelLRUjwurRB7Uaj1nj2qmlQFKaTh4UA
Date: Sun, 9 Jun 2019 16:37:52 +0000
Message-ID: <661f1084-da4e-75f0-e632-335134932801@axentia.se>
References: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
In-Reply-To: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR0902CA0028.eurprd09.prod.outlook.com
 (2603:10a6:7:15::17) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: de20f092-15a7-4702-8fc2-08d6ecf8d141
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB3PR0202MB3466; 
x-ms-traffictypediagnostic: DB3PR0202MB3466:
x-microsoft-antispam-prvs: <DB3PR0202MB34662F819F80F0C79EA26E7CBC120@DB3PR0202MB3466.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 006339698F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(366004)(376002)(39830400003)(396003)(189003)(199004)(6246003)(65806001)(2501003)(66066001)(71200400001)(86362001)(6116002)(3846002)(31696002)(65826007)(71190400001)(5660300002)(4326008)(65956001)(66556008)(7416002)(64756008)(66446008)(256004)(66476007)(66946007)(73956011)(26005)(36756003)(25786009)(476003)(2616005)(14454004)(53936002)(6436002)(186003)(229853002)(8936002)(99286004)(52116002)(6512007)(6486002)(68736007)(53546011)(6506007)(386003)(11346002)(31686004)(446003)(64126003)(81166006)(81156014)(76176011)(110136005)(316002)(8676002)(7736002)(508600001)(74482002)(102836004)(2906002)(486006)(54906003)(58126008)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3466;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: b5PbBXdfDmrxCUpaoqEeP2qIdv9epeSARFxp+Ctrw7uz8w0o/3OyFrDay2wEG0IkjivZIlW321ahRt3eTE1i9pomhJehCDP9vbTXa+1u7oAna0reWVUunYsM+PDK1jsxv8bVvTPfv0ICQHS1Y6GzIzOtBkUmsEBk8wVUiE4MmQ12KD8eD5IlPOo2Tc3H5wp9mS3zh3+1sor8Pjo86ZUKURBhUA3+LweyRO9UHQd30L9DZD6CbSLxtQRwP2WscT6Il6mG6V3FXQTnbDh3PGheCVZbdDVw+g2HZKemwzZ9JfFlArver5OvyyKXQay5CJ5CVglaNXjWGG+ThF/PWtn82KSdt+AKwv2Ood1U/sdTvUS5/6xTQkn5AF2vsHM04RBTIjPb3p/3yFAtK1f1vlQZdoZOcHO7Y+YO05XitWSJwc4=
Content-ID: <C55F5D15CFF4704BB7913C0E714412B0@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: de20f092-15a7-4702-8fc2-08d6ecf8d141
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2019 16:37:52.9651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peda@axentia.se
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3466
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_093802_054440_A160C2F1 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-08 12:55, Wolfram Sang wrote:
> While preparing a refactoring series, I noticed that some drivers use a
> complicated way of determining the adapter of a client. The easy way is
> to use the intended pointer: client->adapter
> 
> These drivers do:
> 	to_i2c_adapter(client->dev.parent);
> 
> The I2C core populates the parent pointer as:
> 	client->dev.parent = &client->adapter->dev;
> 
> Now take into consideration that
> 	to_i2c_adapter(&adapter->dev);
> 
> is a complicated way of saying 'adapter', then we can even formally
> prove that the complicated expression can be simplified by using
> client->adapter.
> 
> The conversion was done using a coccinelle script with some manual
> indentation fixes applied on top.
> 
> To avoid a brown paper bag mistake, I double checked this on a Renesas
> Salvator-XS board (R-Car M3N) and verified both expression result in the
> same pointer. Other than that, the series is only build tested.

Similar things go on in:

drivers/hwmon/lm90.c
drivers/leds/leds-is31fl319x.c
drivers/of/unittest.c

Those have this pattern:

	struct device *dev = &client->dev;
	struct i2c_adapter *adapter = to_i2c_adapter(dev->parent);

And drivers/rtc/rtc-fm3130.c has a couple of these:

	tmp = i2c_transfer(to_i2c_adapter(fm3130->client->dev.parent),
			...);

where fm3130->client is of type "struct i2c_client *"

Cheers,
Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
