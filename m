Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B40B471D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 08:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrKpf2bcol9o9EtcJPTMCr6+IL5CpLe9AP+wec9N96s=; b=sjsfE91mmMae72
	u4i76vsL8q22jWgskPgEeaVBMTY+uB9aZXA2derIqtjgRqYz8EMMj6NQ+r3zhsYngDaf//ea3DIq1
	aldP3948wKZj4mJkp4SXNin7lJWj68tAsXeWI7bd5gntBmKzKd2N33J4xJ4GfGawpMQ+iEhf39lvF
	bIJID/H2BShvVC1ZcwmIoOOiop6V8hrm5e29yXAAv0xxg8IwMZu2aWWXXkYsemHP4aTzDHlJcF6eT
	cxE2l7VELFXnsGqPyOkN2b3A9qq3xjhivGwoszkDzzZzTnIhi4Bu/oKff3h85Vlv/gPZF6PMIBtLG
	pw3vZaSuwpWV4LbjZdsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA6X6-0007WG-EU; Tue, 17 Sep 2019 06:00:12 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA6Wu-00076x-0u
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 06:00:02 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: nfOkmiVO6pbt4I/bs2EkRIiW+8l1TnNxunJZiit8ja9NN3RvmKap0LTaeJxq0Lej95Ak9fQEQX
 KgfPSy875lPJWVWW0rulz8XWCiruC9zGo5dYbozGrFXFZyOd4Qqyd/coYrNtYIcTzHn1o9cJcC
 xuGKUejo0Rm8BO0TzjeQEgXQ0Hexi8f7U7b95TTqvI3r0j+ae6fylr+LeX+Fz5M0uYMWe4WZEx
 5/IC6PrCAMr2UcPIZEC7GEEUsrWBFOt3it79dIXiv2ivss0zBnm4xjJ4DyfNcK++dVDOfQif6o
 omk=
X-IronPort-AV: E=Sophos;i="5.64,515,1559545200"; d="scan'208";a="47748416"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Sep 2019 22:59:25 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Sep 2019 22:59:21 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 16 Sep 2019 22:59:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g1jBJZE5wux5hg+EerKgo7s97B8QNfi6zfna0PnvVDklJXK8c7KvDnmyEPs5aNzn0y/YUSyhUcx4NqWESm7Y9Pf5Kd+HyKX3sItyatnVZs31UiJupqh1crnMvDzaJpbgVWjxxP2B0uTSjEGfwYv7MLtFf6/CTIc4SpBxXJyG4JjixGGgPDQlo2MMJ8bKMhVsnwmWvDI9BnT757+RorTWhweKXnTTv3hfGYSzJAXXpOQEFVlqdE5SPt/1bhWbvKAv3ZYcxv+7LH+YM0xuXbg4S6w00AKeQwZkyCzL1MnPCT9nWwboON3BsEKHdaS0vuAHK1hgg+KPh5/i+bTAVGVEOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JQdSV+TV47ffXhcwBGGOQ+AmEsHtpqsHoXMlhVUyDz8=;
 b=G9EzO7RXiLe+bxSJ447nwrW2qWE0a9kuE4chQ86vzfVhrw4yPAPZXLDBkBJnYfafOlun1uHLgN/mPiHSNa/rTI6yCsZn8vEsfG0El/QO1pSrTbSQHLEpS22zaSlwHuSoHz9iSx5jiWf8FMolfOUX9wsEoAI6cXleFPI+W1bV3WyM4zBtXNqMCrk0NvT+W7/YR1rDzX2Mh8G35V1kZDKdo7LPtYXkeYDvdCI9NW4dvWRGFx9VfMGIkljq1xrCro3AQ24UYHYXebbX8x4gcGgJBRhNI7fBnI+BqCi7jEskk6ZDvBHRA4np47mebZr12JK8GHBgvPDtXVrKwJOx18mwtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JQdSV+TV47ffXhcwBGGOQ+AmEsHtpqsHoXMlhVUyDz8=;
 b=OTx9Nohw55HOiH1QAN/ciibCw4dXFbFmOcQSz/WJw7AObFVcexDeQg+lf5Atokd5cNl9wLjbW0kxufVScbH4/TnvW9rwlj1M4gkNVYQMVLZkr6zN5tx87T2ZmS20jGc6YZlYmSc/s5KsJ1BSd0H06a6b7LkCvwJWk3v/yyn+ANA=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB2028.namprd11.prod.outlook.com (10.168.104.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Tue, 17 Sep 2019 05:59:19 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::a141:1974:9668:fbe2%12]) with mapi id 15.20.2263.023; Tue, 17 Sep
 2019 05:59:18 +0000
From: <Eugen.Hristev@microchip.com>
To: <sboyd@kernel.org>, <alexandre.belloni@bootlin.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-clk@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <mturquette@baylibre.com>
Subject: Re: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
Thread-Topic: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
Thread-Index: AQHVaGukjPTRbry/ckGMFC3Lf3IeQKcuv8aAgACn8IA=
Date: Tue, 17 Sep 2019 05:59:18 +0000
Message-ID: <dcae9812-5ae7-567f-0e84-b6166a7f7400@microchip.com>
References: <1568183622-7858-1-git-send-email-eugen.hristev@microchip.com>
 <20190916195246.CAE5C206C2@mail.kernel.org>
In-Reply-To: <20190916195246.CAE5C206C2@mail.kernel.org>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0130.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::23) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190917085349902
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c67d17a-35b2-41c0-27b7-08d73b342d99
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DM5PR11MB2028; 
x-ms-traffictypediagnostic: DM5PR11MB2028:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB20288AD15618E0DB320D6B54E88F0@DM5PR11MB2028.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(136003)(39860400002)(396003)(376002)(189003)(199004)(66476007)(8676002)(5660300002)(81156014)(81166006)(66556008)(102836004)(66446008)(64756008)(229853002)(52116002)(66946007)(66066001)(476003)(4326008)(11346002)(14444005)(256004)(86362001)(386003)(2906002)(8936002)(6512007)(6506007)(71190400001)(71200400001)(76176011)(25786009)(2501003)(478600001)(6486002)(14454004)(186003)(3846002)(107886003)(4744005)(53546011)(2616005)(6436002)(446003)(6246003)(6116002)(316002)(31696002)(7736002)(305945005)(99286004)(110136005)(486006)(2201001)(36756003)(26005)(31686004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB2028;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CvAtTPr4oevRh2bh1bZnIOMIF+yy3wCZGhSSoRdOI4qsP2Aaj8Nyx6opVg9AMDJtSQzXTF4vdibqA+ucwwMqcx5PJsusDJxQ72zcRLeNekq7whJTYCDNEimonsFn661c8P2BOZquzzrkjEwRZfBArBl68Lr+WeVQ/ggx6a+RzWnO1PVa4GYppvnZ5PlavNNSMAgxTintVLRudEly7qLHnt9KWOklw+0s4caEi1tw4UEuoGPT4VcsioVxlLeQW8miLnuQESFW1kZLNkgsR2/p6tFZM4jIAHaZ00MxcoCgdpeIenZkebGMcRukxG9+W9LUBwLSTamJ7Y49IRt4MrqFcJu5pRQAj5aqpOuncI/oMIqriCEIvObuOzUefohExzoWzLMu5q+ex9yDS7aNKLtxVE8frnbetub3D27aQ6JGVsc=
Content-ID: <4200A97683E0924CB8E43E43A25EBC99@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c67d17a-35b2-41c0-27b7-08d73b342d99
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 05:59:18.8523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B1x8ZcXp/X7ouSknIbbQseoe6kD97S2/mrgjs3NiLBmyH5TUTLYwixraA3U11CLdLc4qfsd/JcCWnr6VbzMumg7UNVyEVqiE3SvJjrRx01Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_230000_076784_4584BC8C 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 16.09.2019 22:52, Stephen Boyd wrote:

> Quoting Eugen.Hristev@microchip.com (2019-09-10 23:39:20)
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> The PLL input range needs to be able to allow 24 Mhz crystal as input
>> Update the range accordingly in plla characteristics struct
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
> 
> Is there a Fixes: tag for this? Seems like it was always wrong?
> 

Hi Stephen,

At the initial design , the 12 Mhz was the only possibility for the 
boards themselves. But, with the commit who added this:

Fixes: c561e41ce4d2 ("clk: at91: add sama5d2 PMC driver")

Eugen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
