Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8524458683
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLwi/WGlxMHLCmV4O5dIloTLwVZGecXldci+1actoc4=; b=VMpg8PqnuQY2X9
	DNQc79NfCtE7WbRnI/lxOedHQ9ENEXPTVb11HEWKdchsCgIv8uZMHVODxS7tR4j3TR/joyqYCBhvy
	7qG2FAyctHuglbLedjExy1N4nIu0X02rcOp/sHwqul9IfpWZC7aDN8hY6aUTrJ/vv4HmPs6cOeZ1O
	ffU8ORV58HnpUnZ3794dw4+GEep+0CFzX+GNFAfbsT3sf9irc8kgoP9Q7auKf0X3xUEV+pcW8px7P
	3/RYyJbwgCXwVYJweOZVf24xcq3Ndyrd/WEY6J9GnvB6wCGe3OQDtn/LcJ93VNpWCTdNlqoW3088n
	bVjYjtB5jolzJP7UmVFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWm1-0000iS-2I; Thu, 27 Jun 2019 15:57:21 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWkV-0008P0-Vi
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:55:49 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="39277033"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jun 2019 08:55:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 27 Jun 2019 08:55:46 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 27 Jun 2019 08:55:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8iAj8HAjrZkWALwk/F/8dpsLp0UCnJHMEZYNW05wnJ8=;
 b=QuXSG0ZbUCXtMUMLGSqfCtvK6iejnmJy+CXLBpvBUN0zIE/rebDAo2shI862AM5nVVKfNYrUym3rPk/LVR2mJKUrpzi9RedCdYhEF34KHgFYxm9Ou1fN4DS3nmgWuyR8A2Ce3tOjP6adOIsnHo71V2g3xrfiP78ZHmmopYEbS/w=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1309.namprd11.prod.outlook.com (10.169.232.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Thu, 27 Jun 2019 15:55:45 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::7d59:2a2f:90f1:2720]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::7d59:2a2f:90f1:2720%9]) with mapi id 15.20.2008.018; Thu, 27 Jun 2019
 15:55:45 +0000
From: <Claudiu.Beznea@microchip.com>
To: <sboyd@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <mturquette@baylibre.com>
Subject: Re: [PATCH 0/7] clk: at91: sckc: improve error path
Thread-Topic: [PATCH 0/7] clk: at91: sckc: improve error path
Thread-Index: AQHVIf3bUSmswP0Le0qxy3Tkv6UCZKavrwEAgAAOigA=
Date: Thu, 27 Jun 2019 15:55:45 +0000
Message-ID: <d002d9ae-e84b-12e7-6c59-c76fb073f859@microchip.com>
References: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
 <20190627150337.A233320B1F@mail.kernel.org>
In-Reply-To: <20190627150337.A233320B1F@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0601CA0012.eurprd06.prod.outlook.com
 (2603:10a6:800:1e::22) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190627185538166
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd6d911a-d609-4847-4d95-08d6fb17e9fa
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1309; 
x-ms-traffictypediagnostic: MWHPR11MB1309:
x-microsoft-antispam-prvs: <MWHPR11MB1309A1B15FFAACB3D94B926B87FD0@MWHPR11MB1309.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(136003)(39860400002)(396003)(346002)(199004)(189003)(53546011)(6506007)(76176011)(386003)(6512007)(52116002)(99286004)(229853002)(6486002)(102836004)(26005)(186003)(6436002)(110136005)(4326008)(54906003)(86362001)(31696002)(316002)(6246003)(2201001)(53936002)(4744005)(25786009)(71190400001)(71200400001)(2501003)(2906002)(256004)(14444005)(6116002)(3846002)(478600001)(8676002)(81166006)(81156014)(72206003)(68736007)(8936002)(14454004)(305945005)(7736002)(11346002)(486006)(476003)(66476007)(64756008)(2616005)(446003)(66556008)(66446008)(73956011)(66946007)(5660300002)(36756003)(31686004)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1309;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EeBsJVygxVTDkq5vSZzzM88mUqL1FfQnGqpFNKXmOqLmLm2SqzbwKULqI8CnyD7GGN/DjCi6r8rSZM/vdeBjtwecoTlJLVVlXEMbDiORk5kMpw96FOrBLbwp4S6BtWIUK6vV6GICauu5BSXoEiRbXuONCePoIPRwXhPrAO0+9NXgmnwTyW717ASDwwvwMl4UOtthWoaDnQIHJz3lRxibwqVEsw54sp5cS+Bei+5rIn80WuNuGQTnB0gLw/XCvp3kVyarRG/a6e1ODU4WQdTdVzOECfeYXNdl80E34RdgYS8gDcud53wDAf5N47ql1BN6cptLQ8D4sjgBJJScEXEv5g+Kf2qtKKYWNi+HILu0AouVerAQ14Ng9xgLai0g2gjwt+7yWwbj9/k36FVoQeSDpD3iulcyDNzrZ9lGZYRv6aw=
Content-ID: <301B48221B79334A992F7C675039FE99@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fd6d911a-d609-4847-4d95-08d6fb17e9fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 15:55:45.1531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: claudiu.beznea@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1309
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_085548_311026_7C62F4B2 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: claudiu.beznea@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27.06.2019 18:03, Stephen Boyd wrote:
> External E-Mail
> 
> 
> Quoting Claudiu.Beznea@microchip.com (2019-06-13 08:37:06)
>> From: Claudiu Beznea <claudiu.beznea@microchip.com>
>>
>> Hi,
>>
>> This series tries to improve error path for slow clock registrations
>> by adding functions to free resources and using them on failures.
> 
> If possible, resend this patch series in plain text. Thanks.

Done! Thank you!

> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
