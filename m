Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62210132229
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:19:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOvf9ziG5sM+of9DUl3inUBHwirBC0nmsEl+zo+7qBg=; b=YOJXUgtyMOsLJo
	w8kJZ2m5E/9aVtoWvAGBtXtxmqOc7YQXWQghcBDOZ4/SkRd7vofN5bAoR6xdgNJPc5rmho0vbAsLB
	esIWa6UDJ+4haU6HoH/yC9XQbatd3pudKbIOKp5XoP84saS0ojK/G/b7YYnJHVCsg77w/bVcMGLIT
	AhbYGV9nmxAsGdW7ChIaUMLscKQhMEJRev8FnJzbe5oMAb4/A9+Qa1BfdS5S1w4iymuYZvOJn2Mmi
	/6c6CpASAak8078XpgnMbBkGkAGyB/at+t4hnF/Torxbq6DZpOUHTAeiefU7ptso+PseukedTGTDc
	jHXMdgil2KWoAE8g8T4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iol1l-0004uG-EE; Tue, 07 Jan 2020 09:19:53 +0000
Received: from mail-db8eur05on2133.outbound.protection.outlook.com
 ([40.107.20.133] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iol1d-0004tH-0P
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:19:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jlIU4V7z2BNC57qTWBXFe8ef+/s8iAHW53HuAr8HopMpKfkl4lVbVlGxKG4HabnEkD4DvFCOQ+o23CmCVsc0uPrYUYzyAw/5MYzEBQhBOZffC+BETVF/4sat4L/fwGIwC2r5wx9wnV2x2KDe7hlfNL5cQ4Yn9gN6YJQ+dbKHExgnJU6hY4TL0henUxbc8CSOCVBou6zpLfPAgunVmcDgspqLzluy1SBbGnv7DkMOFJN5ZWvtLk+H4viu4HMwy37JYZt2/PLEC86XSIt1aVlfnhPncqQBrmKU0yXGPY+KlPlJHDeW4L7Dgl9f5V1uddNw6n5P0ADsFcn6ypdpDzzjpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KamLRbfPAE5S2P6S/JrOXq5DIFM5c2bHxAgFwc5QQE=;
 b=ab2wfbrNsEUd+Y3QQIYIkqdqOyUsIdJYx3s/FOh1LVEEuu+dNg1hPuL41wi5EynAsoNz3/7iOyNfSObl2k5pe5Fq6tFwmymMECSWXEB6hdG0fOvhYn+/LByENC4gkaUkAl4wG1PiP4B6Cy5YlADTrY5EuM9lQP3iNkolitq8OruiM9Fo6+AO/NXH5io3UPjzUMONUauPKVsamHumT3AcRhqq4cmuAz8ip24YNiql4t5V2W3UFiBTJLTp6/kIFi0YpENDl7YT6ggxD52e1Sw967irR3xDK57VpYFkE+t1wrWFvmOGvqyVC/Oqr6EzsR0DsKMZ5fNolnZLDDSyL4TvMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KamLRbfPAE5S2P6S/JrOXq5DIFM5c2bHxAgFwc5QQE=;
 b=gfvWz13NawfEyZ+RBj6esG75ZQvygglSBokCYaGW88nn4a0RaIoL8BAtBZjNBY2tRyG/Kqc3ZiUQbYix+0xuaK56OBwz9ucH0gioH8/Yp4qZEscJ/fDQRb2A8O7cbF2phhYePH1l00i+j6YqHXYqEdTG+d1Ya2iqbV3foppttFU=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3305.eurprd02.prod.outlook.com (52.134.65.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Tue, 7 Jan 2020 09:19:37 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13%7]) with mapi id 15.20.2602.015; Tue, 7 Jan 2020
 09:19:37 +0000
Received: from [192.168.13.3] (213.112.138.4) by
 HE1PR0402CA0051.eurprd04.prod.outlook.com (2603:10a6:7:7c::40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Tue, 7 Jan 2020 09:19:36 +0000
From: Peter Rosin <peda@axentia.se>
To: "Claudiu.Beznea@microchip.com" <Claudiu.Beznea@microchip.com>,
 "sam@ravnborg.org" <sam@ravnborg.org>
Subject: Re: [PATCH v3 5/6] drm: atmel-hlcdc: prefer a lower pixel-clock than
 requested
Thread-Topic: [PATCH v3 5/6] drm: atmel-hlcdc: prefer a lower pixel-clock than
 requested
Thread-Index: AQHVtZ63IXD3UJn810+N2kokGKcMV6fXLT4AgAZN0QCAAZDZAA==
Date: Tue, 7 Jan 2020 09:19:37 +0000
Message-ID: <6bd70a21-1dc1-6b78-1e86-8ca4704c944c@axentia.se>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
 <1576672109-22707-6-git-send-email-claudiu.beznea@microchip.com>
 <20200102090848.GC29446@ravnborg.org>
 <64902ae8-ef5a-a94a-8edf-05159699b72c@microchip.com>
In-Reply-To: <64902ae8-ef5a-a94a-8edf-05159699b72c@microchip.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
x-originating-ip: [213.112.138.4]
x-clientproxiedby: HE1PR0402CA0051.eurprd04.prod.outlook.com
 (2603:10a6:7:7c::40) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1417f12c-a26c-4a33-6c76-08d79352b7a5
x-ms-traffictypediagnostic: DB3PR0202MB3305:
x-microsoft-antispam-prvs: <DB3PR0202MB3305B517AA4E96C0A5EBE00EBC3F0@DB3PR0202MB3305.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(366004)(376002)(136003)(39830400003)(189003)(199004)(2616005)(956004)(53546011)(2906002)(71200400001)(16526019)(186003)(26005)(81156014)(81166006)(16576012)(316002)(8676002)(5660300002)(86362001)(54906003)(7416002)(8936002)(110136005)(31696002)(66946007)(64756008)(4744005)(52116002)(66556008)(66446008)(6486002)(508600001)(66476007)(36756003)(31686004)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3305;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Abuzpg7ZUua82OVGdkiRQqUySxdB6ZxrwcmlCa2vhTCjv9a2n4G4K0LNVZLVluVQjIjDnbpTYOR72Y/tao/OYF6GAzb7L/DuFFIxbE5B4/1aPca9ADKmAn/zYQi5XFhi6XO9FjWrbuL9sqHp3Jw42McvjYXXNPG61MPpCzIeWdQm8jlmyy+JmQO5sj0cFIqXY/fVYtlByIWqUbBFKYCPAF47sBJHJR2VTmzaYQnj5LkblgJ95iEWmjoPJKGQm5Wtf2QnJvK2Dmjy31eb3wt5H53zYSy6W+qzjUqjNu62Sne2RHnlkiWiFfS18CwGs9zScF/DBD/S68Cn1a1rCSNIZnwc4ZvVGqEHEuV0mwsuuaEKAxDXW3jyjQQRDP5yqy+Qz4Oh+ABJhSuEtNW9Xi2IVk+RAWpcv2I7Hnu75VhMQSVh/vjE5Gd1CyYrFz/9Il3R
x-ms-exchange-transport-forked: True
Content-ID: <16F0484F01ABFD459032BAF727F998CA@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 1417f12c-a26c-4a33-6c76-08d79352b7a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 09:19:37.6356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dn8Ljw25qL4Vj2/++JpdXAh90fmHK1DNdnkpgCBfHMzAayFKKTGbkDa2iqK2f2M0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3305
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_011945_053333_91C9F876 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "boris.brezillon@bootlin.com" <boris.brezillon@bootlin.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-06 10:24, Claudiu.Beznea@microchip.com wrote:
> On 02.01.2020 11:08, Sam Ravnborg wrote:
>> On Wed, Dec 18, 2019 at 02:28:28PM +0200, Claudiu Beznea wrote:
>>> From: Peter Rosin <peda@axentia.se>
>>>
>>> The intention was to only select a higher pixel-clock rate than the
>>> requested, if a slight overclocking would result in a rate significantly
>>> closer to the requested rate than if the conservative lower pixel-clock
>>> rate is selected. The fixed patch has the logic the other way around and
>>> actually prefers the higher frequency. Fix that.
>>>
>>> Fixes: f6f7ad323461 ("drm/atmel-hlcdc: allow selecting a higher pixel-clock than requested")
>> The id is wrong here - the right one is: 9946a3a9dbedaaacef8b7e94f6ac144f1daaf1de
> 
> Right! Sorry for this one! Thank you for fixing it up.

Dito. This one was my fault. I wonder how I came up with the wrong id?
Probably some backport branch or something, but I'm not finding it. Oh
well, sorry again.

Cheers,
Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
