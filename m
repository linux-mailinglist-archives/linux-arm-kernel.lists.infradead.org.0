Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E261019609D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 22:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nv85grqEC5UJy2/GPki9hCz+tgfH4nHLIMCtj1Z3HuI=; b=UWIIo2p89rorb9
	U3pGWWl+08LA9Xu6f3OaIRxbYj7dwLxcbMFl5q9RrWfjU5Vx4n3Oar0t3JoLhaTXEW6PsqmRUwdVs
	/xCMxv/7nq7o/gp/HD4p+JyGSYxv1NYw7t96BvjaGDi2okq1YMmGwtEBSK1iQk1dljb6mEZvCipaR
	tOI3ONzGDiQ+oQiIQE+/M5IMLlm0plVP/c6oF1NoLDqNZ91DQlqtJLM3RSBVrsNoNTtLC8uPRlp1H
	v6AYaMcfFX0NcekQg+84OLkiI/AyngdcYFbCZGg/hC0SKFyX61ilpqJ4l6ioZo2QfBc9ghwEMFek/
	0nIU4lwljfAPT2jn8wbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHwlg-00035A-1O; Fri, 27 Mar 2020 21:43:56 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHwlT-0002xg-Ov
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 21:43:47 +0000
IronPort-SDR: jRwQePEmWUsDZJJPasLhh7Vki+syTf6KrL0tbxKviOKwnanIg03tTZQMOe8GyfEVlVkL6la5o9
 5eODvXCUiWab1NCIF8OtQAHfDn7N/GdyT4aGBhNWFpXtLZVOHlRyhu8JSNeIFuDKtgba/iLcb9
 0Erbfui+7h1VdykgWF+YlZIZmQ4vOgWwqd0ucBmvZk181a/Qvhmar8x7k5eCyjNYOq4Du3s4Tf
 9kfJEhkMLX4+BWVuJ7E5svanqPyvHHT4BZf1m2W3izTTJLoyDAwSU+PJROTmvMf4B+HTzmaena
 ob4=
X-IronPort-AV: E=Sophos;i="5.72,313,1580799600"; d="scan'208";a="73828600"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Mar 2020 14:43:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Mar 2020 14:43:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 27 Mar 2020 14:43:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bjq7sqBzxF5At6BztamNeAUpMCKOoIbaef2XKhCbPn01+vEU1hqD0wPPtCTgD0RC+zMgZtkWhOtsDWeH6HYyZDUyqLn12uPw8KLXb4xRgDG7axr03yHr19i7I0wS95BJc46OyXdM28J2g/qbl1M6jOr0s0PVi739Nq0j3ftMPRDL+aHeMvvtuPd1Zsq6BDj9k/5B2Az0WysRQ/V88nOWPj+/cWOHZkJ4nJWI74Ur2HtWtv9qTBzfhUiBy5rMFkdPvGPMbCGiTBZxdH4rq0iYOSpGt8grQHZ1gLE4DvfUYDCGL6PSefCj6kdUmhi5VGXFOAE73/ONmLZc7JVLBEg+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8SxR3IIQ4yqjwTkbd5z8IhBsEyJiuvzBTl6K5VD+96g=;
 b=Fgxrd3skXGyk65zFNUasSRtdZDkUaL0r8fgBj26tdOR3FkpMs/Mp7y51NqiMGvHig0fRqz5QH3z0cMg+NnIkTE7IjBacBsM9uxKg0P635N2RZpQaW8b6zKhevrVSA8YcGG6X5mIDXE7F/QoOfqL99b2m7hieI1Dr87Vp0xqw+EcmQuEKx+YWdv/3BITcZMUBoJZM82zejlGbH8WboN14o21sK1ROo34EFAx8K872+q0tPCJbbVu56fctPCfWhG+K5iPSN/YCeiprZATLIXmuxKMFAATbwUMV0CtT+i0GRfXElN7ldQclvqcNqEQsynH//zv8rk60wTCZ8MRPjSI98Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8SxR3IIQ4yqjwTkbd5z8IhBsEyJiuvzBTl6K5VD+96g=;
 b=Y58/G57E6dB+4j4bA0+9y2dztPGOoHdGlAkz50a7ke3x8YhwNkzNn9i6pjLVKsX8sbupobMdKY/U5sqXD/iFH8pj7OJ+Yfqm1caphMjHwyS2rhdVA/NDN8JsXJfoCpjUN+uWloAX64s2Dl+YCqinG2ohWywXaoiKu4EJlir7tvU=
Received: from DM6PR11MB2777.namprd11.prod.outlook.com (2603:10b6:5:bf::31) by
 DM6PR11MB4107.namprd11.prod.outlook.com (2603:10b6:5:198::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.23; Fri, 27 Mar 2020 21:43:35 +0000
Received: from DM6PR11MB2777.namprd11.prod.outlook.com
 ([fe80::3903:ed89:1141:fca6]) by DM6PR11MB2777.namprd11.prod.outlook.com
 ([fe80::3903:ed89:1141:fca6%5]) with mapi id 15.20.2856.019; Fri, 27 Mar 2020
 21:43:35 +0000
From: <Ludovic.Desroches@microchip.com>
To: <alan@softiron.com>, <linux@armlinux.org.uk>, <linus.walleij@linaro.org>
Subject: Re: pinctrl states vs pinmux vs gpio (i2c bus recovery)
Thread-Topic: pinctrl states vs pinmux vs gpio (i2c bus recovery)
Thread-Index: AQHVrFth3luRvvMnSEKAQXD6fsgUbKew9CSAgAZJTgCAeITugIAqKqIAgAB79QCAABGPgIAAo1UAgACXSQCAAE+JAIABSvkAgABZNgA=
Date: Fri, 27 Mar 2020 21:43:35 +0000
Message-ID: <5457a82e-d979-0f3b-8eb4-0e72ee1df088@microchip.com>
References: <20191206173343.GX25745@shell.armlinux.org.uk>
 <CACRpkdZv2rzA8AbFZKq0XVBaXNJR8c5tsb+1KTZ7fNuWjm5cbQ@mail.gmail.com>
 <20191213002010.GO25745@shell.armlinux.org.uk>
 <1ca5d81d-5aa9-8f8d-8731-4d34de9c6bfa@softiron.com>
 <4f9bb480-ba8d-b70e-961b-d6032232d250@softiron.com>
 <edb09f97-7748-f7d0-cad6-e79db7950b0d@microchip.com>
 <c193dd83-4cdc-9f3f-560e-828cf6e8a8db@softiron.com>
 <538ed844-4be1-4bda-a198-8b5706ee818b@microchip.com>
 <ae952fa3-4b20-5571-875c-408408d7ecb1@softiron.com>
 <4ad49369-ec70-4452-2149-85b877a1c371@microchip.com>
 <8774c911-7feb-eca5-f4dc-c4b6c6f0021b@softiron.com>
In-Reply-To: <8774c911-7feb-eca5-f4dc-c4b6c6f0021b@softiron.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ludovic.Desroches@microchip.com; 
x-originating-ip: [92.150.97.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea14a027-24fa-4f9e-dae6-08d7d297e701
x-ms-traffictypediagnostic: DM6PR11MB4107:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4107ED85B7E40A23005431CAEFCC0@DM6PR11MB4107.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(136003)(376002)(396003)(39850400004)(8676002)(30864003)(71200400001)(66446008)(316002)(2616005)(81166006)(81156014)(31696002)(36756003)(186003)(2906002)(86362001)(6512007)(91956017)(76116006)(4326008)(6486002)(110136005)(64756008)(478600001)(66556008)(53546011)(54906003)(31686004)(966005)(66476007)(6506007)(26005)(66946007)(8936002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4107;
 H:DM6PR11MB2777.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9oDld3jiSSulXLAEAxBu/3VEandYPV++qSCGOA9gK4GtjBL/jaFTaRQ2wah2+IwTctT28O9ILQqF5uwPoRyiLNmbAIp8qq4l7FaJSGQO3k4oJpfAn5zzzqLJgty23goeXQYCud1PUJR1mGtIH4Fb5v9fFIXc8YPw1IeqpWOISoQO+lZQYiB9f/jFo+eb3BpgpmQLzVzF4FuXVaFopWaW7xynLbumFbnLmNm/viP2k9f+mO5vf+o1eKEZRbpMq263QLF4pe/fWWfnev8b8IOTlce9eNVJfWRhD7X83gsSRI8HsTZFqkCW3KEcmvj/ksZ/Sj0qz9wO3v1NlANxa6OQbbGwIo1TxpOUno+/A4/gOR57J3RWSAWaXSmCWSE2HHKVTJF0oxjTeEG6fIUvIA0FwdMZGWAi3reLihkO1Ng1gGNmagD9szME4I+5yIFILHgHZkedBaOArspgjfbiM20Ol+KvrSvqSk6JIODwxe+molPt/xPgp1SltzQ8hCf7aWw8cNF8jjm2eC+uA5Rh+ZY1hQ==
x-ms-exchange-antispam-messagedata: wc9KsiFu6mNgwF7GoUGRwlr/Mjt5YWEalG74xscRju66b4O9HE8iz1uYQCW3g5vChfY5yZ9CY22SWAcxBIJxfhY15CAA50FS0SLzqWnnR6wiJNEQ5UE+PyTx5A8R8aq66KDlhRlCWgQ2JkQ3zIABKA==
Content-ID: <A8B0C4B1AB58964E820C1E23EC60E36D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ea14a027-24fa-4f9e-dae6-08d7d297e701
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 21:43:35.2388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Bb5cuQZC6UPyDByEtxFeVrJOCZGb5FNg7XMwp658iTrDgKh4G10e6LLVaS5f941RreTnPKX8avu33a+7Bnpov06ts1rBbMn1Z+dn0eyLDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_144343_888855_FC23C797 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: kamel.bouhara@bootlin.com, linux-gpio@vger.kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org,
 wsa@the-dreams.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNy8yMDIwIDU6MjQgUE0sIEFsYW4gT3R0IHdyb3RlOg0KPiBFWFRFUk5BTCBFTUFJTDog
RG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSBrbm93IA0K
PiB0aGUgY29udGVudCBpcyBzYWZlDQo+IA0KPiBPbiAzLzI2LzIwIDQ6MzkgUE0sIEx1ZG92aWMu
RGVzcm9jaGVzQG1pY3JvY2hpcC5jb20gd3JvdGU6DQo+PiBPbiAzLzI2LzIwMjAgNDo1NSBQTSwg
QWxhbiBPdHQgd3JvdGU6DQo+Pj4gRVhURVJOQUwgRU1BSUw6IERvIG5vdCBjbGljayBsaW5rcyBv
ciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdw0KPj4+IHRoZSBjb250ZW50IGlzIHNh
ZmUNCj4+Pg0KPj4+IE9uIDMvMjYvMjAgMjo1MyBBTSwgTHVkb3ZpYy5EZXNyb2NoZXNAbWljcm9j
aGlwLmNvbSB3cm90ZToNCj4+Pj4gT24gMy8yNS8yMDIwIDEwOjA5IFBNLCBBbGFuIE90dCB3cm90
ZToNCj4+Pj4+IEVYVEVSTkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRh
Y2htZW50cyB1bmxlc3MgeW91IGtub3cNCj4+Pj4+IHRoZSBjb250ZW50IGlzIHNhZmUNCj4+Pj4+
DQo+Pj4+PiBPbiAzLzI1LzIwIDQ6MDYgUE0sIEx1ZG92aWMuRGVzcm9jaGVzQG1pY3JvY2hpcC5j
b20gd3JvdGU6DQo+Pj4+Pj4gT24gMy8yNS8yMDIwIDE6NDIgUE0sIEFsYW4gT3R0IHdyb3RlOg0K
Pj4+Pj4+PiBFWFRFUk5BTCBFTUFJTDogRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNo
bWVudHMgdW5sZXNzIHlvdSANCj4+Pj4+Pj4ga25vdw0KPj4+Pj4+PiB0aGUgY29udGVudCBpcyBz
YWZlDQo+Pj4+Pj4+DQo+Pj4+Pj4+IE9uIDIvMjcvMjAgMTE6NDcgQU0sIEFsYW4gT3R0IHdyb3Rl
Og0KPj4+Pj4+Pj4gT24gMTIvMTIvMTkgNzoyMCBQTSwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4
IGFkbWluIHdyb3RlOg0KPj4+Pj4+Pj4+IE9uIE1vbiwgRGVjIDA5LCAyMDE5IGF0IDAxOjIwOjE1
QU0gKzAxMDAsIExpbnVzIFdhbGxlaWogd3JvdGU6DQo+Pj4+Pj4+Pj4+IEhpIFJ1c3NlbGwsDQo+
Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+IHZlcnkgbmljZSBkZXNjcmlwdGlvbiBvZiB0aGlzIGR1YWwt
bW9kZSBwcm9ibGVtLg0KPj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+PiBJIHdpc2ggSSBoYWQgYSBzaW1w
bGUgYW5kIGVsZWdhbnQgd2F5IHdlIGNvdWxkIG1ha2UgaXQNCj4+Pj4+Pj4+Pj4gdW5hbWJpZ3Vv
dXMgYW5kIHNpbXBsZSB0byB1c2UgLi4uIGJ1dCBpdCBiZWF0cyBtZSByaWdodA0KPj4+Pj4+Pj4+
PiBub3cuDQo+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+IE9uIEZyaSwgRGVjIDYsIDIwMTkgYXQgNjoz
MyBQTSBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4NCj4+Pj4+Pj4+Pj4gPGxpbnV4QGFy
bWxpbnV4Lm9yZy51az4gd3JvdGU6DQo+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+PiBPbmUgbWF5IGV4
cGVjdDoNCj4+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBp
bmN0cmxfc2VsZWN0X3N0YXRlKGkyY19pbXgtPnBpbmN0cmwsDQo+Pj4+Pj4+Pj4+PiBpMmNfaW14
LT5waW5jdHJsX3BpbnNfZGVmYXVsdCk7DQo+Pj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+Pj4gdG8gY2hh
bmdlIHRoZW0gYmFjayB0byB0aGUgZGVmYXVsdCBzdGF0ZSwgYnV0IHRoYXQgd291bGQgYmUNCj4+
Pj4+Pj4+Pj4+IGluY29ycmVjdC4NCj4+Pj4+Pj4+Pj4+IFRoZSBmaXJzdCB0aGluZyB0aGF0IHBp
bmN0cmxfc2VsZWN0X3N0YXRlKCkgZG9lcyBpcyBjaGVjayANCj4+Pj4+Pj4+Pj4+IHdoZXRoZXIN
Cj4+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHAtPnN0YXRl
ID09IHN0YXRlDQo+Pj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+Pj4gd2hpY2ggaXQgd2lsbCBkbywgYXMg
dGhlIHBpbmN0cmwgbGF5ZXIgaGFzbid0IGJlZW4gaW5mb3JtZWQgDQo+Pj4+Pj4+Pj4+PiBvZiB0
aGUNCj4+Pj4+Pj4+Pj4+IGNoYW5nZSB0aGF0IGhhcyBoYXBwZW5lZCBiZWhpbmQgaXRzIGJhY2sg
YXQgdGhlIHBpbm11eCBsZXZlbC4NCj4+Pj4+Pj4+Pj4gU29tZSBwaW4gY29udHJvbGxlcnMgaGF2
ZSB0aGUgLnN0cmljdCBwcm9wZXJ0eSBzZXQNCj4+Pj4+Pj4+Pj4gaW4gdGhlaXIgc3RydWN0IHBp
bm11eF9vcHM6DQo+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+ICogQHN0cmljdDogZG8gbm90IGFsbG93
IHNpbXVsdGFuZW91cyB1c2Ugb2YgdGhlIHNhbWUgcGluIGZvcg0KPj4+Pj4+Pj4+PiBHUElPIGFu
ZA0KPj4+Pj4+Pj4+PiBhbm90aGVyDQo+Pj4+Pj4+Pj4+ICrCoMKgwqDCoMKgIGZ1bmN0aW9uLiBD
aGVjayBib3RoIGdwaW9fb3duZXIgYW5kIG11eF9vd25lciBzdHJpY3RseQ0KPj4+Pj4+Pj4+PiBi
ZWZvcmUNCj4+Pj4+Pj4+Pj4gYXBwcm92aW5nDQo+Pj4+Pj4+Pj4+ICrCoMKgwqDCoMKgIHRoZSBw
aW4gcmVxdWVzdC4NCj4+Pj4+Pj4+Pj4NCj4+Pj4+Pj4+Pj4gVGhlIG5vbi1zdHJpY3QgcGluIGNv
bnRyb2xsZXJzIGFyZSB0aG9zZSB0aGF0IGFjdHVhbGx5IGFsbG93IEdQSU8NCj4+Pj4+Pj4+Pj4g
YW5kIGRldmljZSBmdW5jdGlvbnMgdG8gYmUgdXNlZCBvbiB0aGUgc2FtZSBwaHlzaWNhbCBsaW5l
IGF0IHRoZQ0KPj4+Pj4+Pj4+PiBzYW1lIHRpbWUuIEluIHRoaXMgY2FzZSB0aGVyZSBpcyBub3Qg
c3BlY2lhbCBHUElPIG1vZGUgZm9yIHRoZQ0KPj4+Pj4+Pj4+PiBsaW5lIGluIHNvbWUgbXV4aW5n
IHJlZ2lzdGVycywgdGhleSBhcmUganVzdCBwaHlzaWNhbGx5IGNvbm5lY3RlZA0KPj4+Pj4+Pj4+
PiBzb21laG93Lg0KPj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+PiBPbmUgdXNlY2FzZSBpcyBzb3J0IG9m
IGxpa2UgaG93IHRjcGR1bXAgd29yayBmb3INCj4+Pj4+Pj4+Pj4gZXRoZXJuZXQgaW50ZXJmYWNl
czogYSBHUElPIHJlZ2lzdGVyIGNhbiAic25vb3AiIG9uIGEgcGluIHdoaWxlDQo+Pj4+Pj4+Pj4+
IGluIHVzZWQgYnkgYW5vdGhlciBkZXZpY2UuDQo+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+IEJ1dCBp
dCB3b3VsZCBub3RhYmx5IGFsc28gYWxsb3cgeW91IHRvIGRyaXZlIHRoZSBsaW5lIGFuZCANCj4+
Pj4+Pj4+Pj4gaW50ZXJmZXJlDQo+Pj4+Pj4+Pj4+IHdpdGggdGhlIGRldmljZS4gV2hpY2ggaXMg
ZXhhY3RseSB3aGF0IHRoaXMgSTJDIHJlY292ZXJ5IA0KPj4+Pj4+Pj4+PiBtZWNoYW5pc20NCj4+
Pj4+Pj4+Pj4gZG9lcywganVzdCB0aGF0IGl0cyBwaW4gY29udHJvbGxlciBpcyBhY3R1YWxseSBz
dHJpY3QsIHdpbGwgbm90DQo+Pj4+Pj4+Pj4+IGFsbG93DQo+Pj4+Pj4+Pj4+IHRoZSBzYW1lIGxp
bmUgdG8gYmUgdXNlZCBmb3IgR1BJTyBhbmQgc29tZSBvdGhlciBmdW5jdGlvbiBhdCB0aGUNCj4+
Pj4+Pj4+Pj4gc2FtZSB0aW1lLCBzbyBJIHN1cHBvc2UgaS5NWCBzaG91bGQgcHJvYmFibHkgZXhw
bG9yZSB0aGUNCj4+Pj4+Pj4+Pj4gc3RyaWN0IG1vZGUuDQo+Pj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4+
IEVuYWJsaW5nIHRoYXQgd2lsbCBzYWRseSBtYWtlIHRoZSBwcm9ibGVtIE1PUkUgY29tcGxleA0K
Pj4+Pj4+Pj4+PiBmb3IgdGhpcyBJMkMgcmVjb3ZlcnksIHJlcXVpcmluZyBhIGN5Y2xlIG9mDQo+
Pj4+Pj4+Pj4+IGdwaW9kX3B1dCgpL2dwaW9kX2dldCgpIHRvIGdldCBpdCByZWxlYXNlZCBmcm9t
IEdQSU8gbW9kZSwgaS5lLg0KPj4+Pj4+Pj4+PiB3ZSB3b3VsZCBuZWVkIHRvIGp1c3QgZ2V0IHRo
ZSBHUElPIHdoZW4gdGhpcyBpcyBzdHJpY3RseSBuZWVkZWQuDQo+Pj4+Pj4+Pj4+IFVzaW5nIGRl
dm1fZ3Bpb2RfZ2V0KCkgYW5kIGtlZXBpbmcgYSByZWZlcmVuY2UgZGVzY3JpcHRvcg0KPj4+Pj4+
Pj4+PiBhcm91bmQgd291bGQgbm90IHdvcmsgYWxsIG9mIGEgc3VkZGVuLg0KPj4+Pj4+Pj4+Pg0K
Pj4+Pj4+Pj4+PiBJIGFtIHRoaW5raW5nIHdoZXRoZXIgd2UgY2FuIGhhbmRsZSB0aGUgbm9uLXN0
cmljdCBjb250cm9sbGVycw0KPj4+Pj4+Pj4+PiBpbiBhIG1vcmUgZWxlZ2FudCB3YXksIG9yIGFk
ZCBzb21lIEFQSSB0byBleHBsaWNpdGx5IGhhbmQgb3Zlcg0KPj4+Pj4+Pj4+PiBiZXR3ZWVuIGRl
dmljZSBmdW5jdGlvbiBhbmQgR1BJTyBmdW5jdGlvbi4gQnV0IEkgY2FuJ3QgcmVhbGx5DQo+Pj4+
Pj4+Pj4+IHNlZSBzb21lIG9idmlvdXMgc29sdXRpb24uDQo+Pj4+Pj4+Pj4gV2hhdCBJJ20gY3Vy
cmVudGx5IHRyeWluZyBpcyAoZXJyb3IgaGFuZGxpbmcgcmVtb3ZlZCBmb3IgYnJldml0eSk6DQo+
Pj4+Pj4+Pj4NCj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqAgc3RydWN0IGkyY19idXNfcmVjb3Zlcnlf
aW5mbyAqYnJpID0gJmkyYy0+cmVjb3Zlcnk7DQo+Pj4+Pj4+Pj4NCj4+Pj4+Pj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGkyYy0+cGluY3RybCA9IGRldm1fcGluY3RybF9nZXQoZGV2KTsNCj4+
Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGkyYy0+cGluY3RybF9kZWZhdWx0ID0gDQo+
Pj4+Pj4+Pj4gcGluY3RybF9sb29rdXBfc3RhdGUoaTJjLT5waW5jdHJsLA0KPj4+Pj4+Pj4+DQo+
Pj4+Pj4+Pj4gUElOQ1RSTF9TVEFURV9ERUZBVUxUKTsNCj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGkyYy0+cGluY3RybF9yZWNvdmVyeSA9DQo+Pj4+Pj4+Pj4gcGluY3RybF9sb29r
dXBfc3RhdGUoaTJjLT5waW5jdHJsLA0KPj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJyZWNvdmVyeSIpOw0KPj4+
Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJpLT5zZGFfZ3Bpb2QgPSBkZXZtX2dwaW9k
X2dldChkZXYsICJzZGEiLA0KPj4+Pj4+Pj4+IEdQSU9EX09VVF9ISUdIX09QRU5fRFJBSU4pOw0K
Pj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJpLT5zY2xfZ3Bpb2QgPSBkZXZtX2dw
aW9kX2dldChkZXYsICJzY2wiLA0KPj4+Pj4+Pj4+IEdQSU9EX09VVF9ISUdIX09QRU5fRFJBSU4p
Ow0KPj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4gwqDCoMKgwqDCoMKgIHBpbmN0cmxfc2VsZWN0X3N0YXRl
KGkyYy0+cGluY3RybCwgaTJjLT5waW5jdHJsX3JlY292ZXJ5KTsNCj4+Pj4+Pj4+PiDCoMKgwqDC
oMKgwqAgcmV0dXJuIHBpbmN0cmxfc2VsZWN0X3N0YXRlKGkyYy0+cGluY3RybCwNCj4+Pj4+Pj4+
PiBpMmMtPnBpbmN0cmxfZGVmYXVsdCk7DQo+Pj4+Pj4+Pj4NCj4+Pj4+Pj4+PiB3aGljaCBzZWVt
cyBnb29kIGVub3VnaCB0byBnZXQgdGhlIHBpbnMgYmFjayBpbnRvIGkyYyBtb2RlIA0KPj4+Pj4+
Pj4+IGFmdGVyIHRoZQ0KPj4+Pj4+Pj4+IGdwaW9zIGFyZSBvYnRhaW5lZC7CoCBUaGVuIHdlIHN3
aXRjaCB0aGUgcGluY3RybCBzdGF0ZSBiZXR3ZWVuDQo+Pj4+Pj4+Pj4gcGluY3RybF9yZWNvdmVy
eSBhbmQgcGluY3RybF9kZWZhdWx0IGFzIHdlIGhhdmUgbmVlZCB0by4NCj4+Pj4+Pj4+Pg0KPj4+
Pj4+Pj4+IFRoZSBwcm9ibGVtIGlzLCB0aGUgZ2VuZXJpYyBpMmMgYnVzIHJlY292ZXJ5IGNvZGUg
d2FudHMgdGhlIGdwaW9kDQo+Pj4+Pj4+Pj4gZGVzY3JpcHRvcnMgdG8gYmUgc2V0dXAgYW5kIGlu
cGxhY2UgYnkgdGhlIHRpbWUgDQo+Pj4+Pj4+Pj4gaTJjX2luaXRfcmVjb3ZlcnkoKQ0KPj4+Pj4+
Pj4+IGlzIGNhbGxlZCAod2hpY2ggaXMgY2FsbGVkIHdoZW4gdGhlIGFkYXB0ZXIgaXMgcmVnaXN0
ZXJlZCkgc28NCj4+Pj4+Pj4+PiBob2xkaW5nIG9mZiB1bnRpbCB3ZSBuZWVkIHRvIGRvIHJlY292
ZXJ5IGRvZXNuJ3Qgd29yay4NCj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+IFRoaXMgc2VlbXMgdG8gd29y
ayBmb3IgdGhpcyBTb0MgSSdtIGN1cnJlbnRseSB3b3JraW5nIHdpdGgsIGJ1dCBJDQo+Pj4+Pj4+
Pj4gdGhpbmsgdGhlcmUncyBtb3JlIG9uIHRoZSBob3Jpem9uIC0gSSdtIGhhdmluZyB0aGUgc2Ft
ZSBwcm9ibGVtcw0KPj4+Pj4+Pj4+IG9uIGFub3RoZXIgU29DIHdoaWNoIGFsc28gbmVlZHMgYnVz
IHJlY292ZXJ5IGltcGxlbWVudGVkLCBhbmQgYXMNCj4+Pj4+Pj4+PiB0aGUgcHJvYmxlbSBkZXZp
Y2UgaXMgYmVoaW5kIGFuIEkyQyBidXMgbXV4LCB3aGVuIGl0IGxvY2tzIHRoZSBJMkMNCj4+Pj4+
Pj4+PiBidXMsIGl0IGtpbGxzIGFsbCBJMkMgYnVzZXMgcm9vdGVkIGF0IHRoYXQgcGFydGljdWxh
ciBTb0MgSTJDDQo+Pj4+Pj4+Pj4gY29udHJvbGxlci7CoCBIb3dldmVyLCB0aGVyZSdzIGEgcHJv
YmxlbSAtIHRoZSBwaW5jdHJscyBmb3IgdGhhdCANCj4+Pj4+Pj4+PiBTb0MNCj4+Pj4+Pj4+PiBh
cmUgc2V0IGJ5IFJPTSBmaXJtd2FyZSBhdCBib290IHRpbWUgYnkgcmVhZGluZyBhIHRhYmxlIGZy
b20gdGhlDQo+Pj4+Pj4+Pj4gYm9vdCBtZWRpYS7CoCAqVW5wcmludGFibGVzIGFib3V0IGZpcm13
YXJlIGJlaW5nIHRvbyB3YXkNCj4+Pj4+Pj4+PiBsaW1pdGluZyouIDpwDQo+Pj4+Pj4+Pj4NCj4+
Pj4+Pj4gwqDCoMKgID4NCj4+Pj4+Pj4+IEhpIGFsbCwgd2hhdCdzIHRoZSBjdXJyZW50IHN0YXRl
IG9mIHRoaXM/IEkgY2FuIGNvbmZpcm0gdGhhdCANCj4+Pj4+Pj4+IHRoaXMgaXMNCj4+Pj4+Pj4+
IGJyb2tlbiB3aXRoIHRoZSBhdDkxIGkyYyBjb250cm9sbGVyJ3MgcmVjb3ZlcnkgbW9kZVsxXSwg
d2hpY2ggaXMNCj4+Pj4+Pj4+IGltcGxlbWVudGVkIGV4YWN0bHkgdGhlIHNhbWUgYXMgb3RoZXIg
aTJjIG1hc3RlciByZWNvdmVyeSBtb2RlcywgDQo+Pj4+Pj4+PiBzbyBJDQo+Pj4+Pj4+PiBzdXNw
ZWN0IHRoZW0gdG8gYmUgYnJva2VuIGFzIHdlbGwuDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gSSdtIHVz
aW5nIDUuNS42IHdpdGggdGhpcyBwYXRjaCBhcHBsaWVkICh3aGljaCBhZGRzIHRoZSByZWNvdmVy
eSk6DQo+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoCBodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L2NvdmVyLzExMzMzODgzLw0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+IEl0IHdvcmtlZCBmaW5lIHdpdGgg
NS4yLCBidXQgaGFzIG5vdyBicm9rZW4sIHRoZSB3YXkgUnVzc2VsbA0KPj4+Pj4+Pj4gZGVzY3Jp
YmVzLA0KPj4+Pj4+Pj4gaW4gNS41LjYgYW5kIGFsc28gb24gdGhlIGxhdGVzdCA1LjYtcmMzLiBS
dXNzZWxsJ3Mgc3VnZ2VzdGVkDQo+Pj4+Pj4+PiB3b3JrYXJvdW5kDQo+Pj4+Pj4+PiBvZiBzZXR0
aW5nIHRoZSBwaW5jdHJsIHRvIHJlY292ZXJ5IChncGlvKSBhbmQgdGhlbiBiYWNrIHRvIGRlZmF1
bHQNCj4+Pj4+Pj4+IGRvZXMNCj4+Pj4+Pj4+IG1ha2UgaXQgd29yay4NCj4+Pj4+Pj4+DQo+Pj4+
Pj4+PiBBbGFuLg0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+IFsxXSBjdXJyZW50bHkgdGhlIHBhdGNoIGZv
ciBpMmMgcmVjb3ZlcnkgZm9yIGF0OTEgaXMgYWNjZXB0ZWQgdG8NCj4+Pj4+Pj4+IFdvbGZyYW0N
Cj4+Pj4+Pj4+IFNhbmcncyBmb3ItbmV4dCB0cmVlLg0KPj4+Pj4+Pj4NCj4+Pj4+Pj4NCj4+Pj4+
Pj4gSXMgdGhlcmUgYW55IHdvcmQgb24gdGhpcz8NCj4+Pj4+Pj4NCj4+Pj4+Pg0KPj4+Pj4+IElu
dGVybmFsbHkgd2UgaGF2ZSBtYW5hZ2VkIGl0IGluIHRoZSBzYW1lIHdheSBhcyB0aGUgb25lIHN1
Z2dlc3RlZCBieQ0KPj4+Pj4+IFJ1c3NlbGwuDQo+Pj4+Pj4NCj4+Pj4+PiBXZSB3b25kZXJlZCBp
ZiB3ZSBzaG91bGQgbWFpbmxpbmUgaXQgb3Igbm90IGFzIGl0J3MgcmVhbGx5IHRyaWNreSB0bw0K
Pj4+Pj4+IHByb2NlZWQgbGlrZSB0aGlzLg0KPj4+Pj4NCj4+Pj4+IENlcnRhaW5seSBpdCBuZWVk
cyB0byB3b3JrIGluIG1haW5saW5lIHRob3VnaCwgcmlnaHQ/IE5vdCBqdXN0IGluIHRoZQ0KPj4+
Pj4gbGludXg0c2FtIHZlbmRvciBrZXJuZWw/DQo+Pj4+DQo+Pj4+IEl0IGhhcyBiZWVuIGZpeGVk
IHR3byBkYXlzIGFnby4gV2UnbGwgc2VuZCBpdCBhbmQgc2VlIGlmIGl0IHdpbGwgYmUNCj4+Pj4g
YWNjZXB0ZWQuDQo+Pj4+DQo+Pj4+IEJ5IHRoZSB3YXksIHdpdGggd2hpY2ggU29DIGhhdmUgeW91
IGVuY291bnRlcmVkIHRoaXMgaXNzdWU/IEl0IGlzIG9mDQo+Pj4+IGludGVyZXNldCBhcyB3ZSBo
YXZlIHR3byBkaWZmZXJlbnQgcGluIGNvbnRyb2xsZXJzLg0KPj4+DQo+Pj4gU0FNQTVEMzMNCj4+
Pg0KPj4NCj4+IE9rLCB0aGFua3MuDQo+Pg0KPj4+Pg0KPj4+Pj4NCj4+Pj4+Pg0KPj4+Pj4+IElu
IHRoZSBmdXR1cmUsIHdlIG1heSBkZWNsYXJlIG91ciBwaW5jdHJsIGFzIHN0cmljdCB3aGljaCBz
aG91bGQgDQo+Pj4+Pj4gY2F1c2UNCj4+Pj4+PiBhbm90aGVyIGJyZWFrYWdlLi4uIEl0J3Mgbm90
IGRvbmUgeWV0IGJlY2F1c2Ugd2hlbiBJIHRyaWVkIHRvIGRvIGl0LA0KPj4+Pj4+IG1heWJlIGl0
IGhhcyBjaGFuZ2VkIG5vdywgSSB3YXMgbm90IGFibGUgdG8gYXBwbHkgdGhlIHBpbiANCj4+Pj4+
PiBjb25maWd1cmF0aW9uDQo+Pj4+Pj4gdG8gdGhlIHBpbiBtdXhlZCBhcyBhIGdwaW8uDQo+Pj4+
Pj4NCj4+Pj4+DQo+Pj4+PiBUaGUgbGFyZ2VyIHF1ZXN0aW9uIEkgdGhpbmsgaXMsIGlzIHRoaXMg
YSBicmVha2FnZSBpbiBncGlvPyANCj4+Pj4+IGkyYy1hdDkxIGlzDQo+Pj4+PiBub3QgdGhlIG9u
bHkgaTJjIGRyaXZlciB3aGljaCB1c2VzIGdwaW8tYmFzZWQgYnVzIHJlY292ZXJ5LCBhbmQgDQo+
Pj4+PiBtYW55IG9mDQo+Pj4+PiB0aGVtIHVzZSBuZWFybHkgdGhlIGV4YWN0IHNhbWUgY29kZSBh
cyBpMmMtYXQ5MS4gQXJlIHRoZXkgYWxsIGJyb2tlbg0KPj4+Pj4gd2l0aCB0aGlzIGtlcm5lbCB1
cGRhdGUgdG9vPw0KPj4+Pj4NCj4+Pj4NCj4+Pj4gSSBkb24ndCBrbm93IHdoYXQgY2hhbmdlZCBp
biBncGlvIG9yIHBpbmN0cmwuIFRoaW5raW5nIG1vcmUgYWJvdXQgaXQNCj4+Pj4gSSdhbSBzdXJw
cmlzZWQgaXQgaGFkIHdvcmtlZC4gSW4gbXkgbWluZCwgZ3Bpb2RfZ2V0IGhhcyBhbHdheXMgZW5k
ZWQNCj4+Pj4gd2l0aCBhIGNhbGwgdG8gdGhlIGdwaW9fcmVxdWVzdF9lbmFibGUgb3BlcmF0aW9u
IHNvIGNoYW5naW5nIHRoZSBtdXggdG8NCj4+Pj4gYSBncGlvIGZ1bmN0aW9uLg0KPj4+DQo+Pj4g
SSBkZWZpbml0ZWx5IGRpZCBhbiBBL0IgdGVzdCB3aXRoIDUuMiBhbmQgNS41IGJlZm9yZSB3cml0
aW5nIHRoZSBlbWFpbCwNCj4+PiBhbmQgSSBhbHNvIGRlZmluaXRlbHkgdHJhY2VkIGl0IGRvd24g
dG8gZGV2bV9ncGlvZF9nZXQoKSAoaWU6IGxlYXZlIGFsbA0KPj4+IHRoZSByZXN0IGFuZCB0YWtl
IHRob3NlIHR3byBsaW5lcyBvdXQgaW4gNS41LCBhbmQgdGhhdCBtYWRlIGl0IG5vdCANCj4+PiBm
YWlsKS4NCj4+Pg0KPj4NCj4+IElmIEkgaGF2ZSB3ZWxsIHVuZGVyc3Rvb2QsIGluIDUuNSB5b3Ug
a2VwdCBkZXZtX2dwaW9kX2dldCgpIGNhbGxzDQo+PiB3aXRob3V0IHRoZSByZWNvdmVyeSBzdHVm
ZiBhbmQgaXQgd29ya3MuIElzbid0IGl0Pw0KPiANCj4gTm8sIGl0J3Mgd2hhdCBJIHNhaWQgaGln
aGVyIHVwIGluIHRoZSBlbWFpbDoNCj4gDQo+ICogNS4yIHBsdXMgdGhlIHJlY292ZXJ5IHBhdGNo
IGxpbmtlZCBhYm92ZSBkb2VzIHdvcmsuDQo+ICogNS41IHBsdXMgdGhlIHJlY292ZXJ5IHBhdGNo
IGxpbmtlZCBhYm92ZSBkb2VzIG5vdCB3b3JrWzFdLg0KPiAqIDUuNSBwbHVzIHRoZSByZWNvdmVy
eSBwYXRjaCBsaW5rZWQgYWJvdmUgcGx1cyBhICJmaXgiIHNpbWlsYXIgdG8NCj4gUnVzc2VsbCdz
IGRvZXMgd29yay4NCg0KVGhhbmtzLCB1bmRlcnN0b29kLg0KDQo+IA0KPj4NCj4+PiBBZ2Fpbiwg
b3RoZXIgaTJjIGNvbnRyb2xsZXJzIGFyZSBidWlsdCB0aGUgZXhhY3Qgc2FtZSB3YXksIHdpdGgg
YQ0KPj4+IGhhbmRmdWwgb2YgdGhlbSB1c2luZyB0aGUgc2FtZSBjb3BpZWQvcGFzdGVkIGNvZGUu
IEkgc3VzcGVjdCB0aGV5IGFyZQ0KPj4+IGJyb2tlbiB0b28gKHdoZW4gZ3BpbyBidXMgcmVjb3Zl
cnkgaXMgZW5hYmxlZCkuIElmIHRoZXkncmUgbm90LCB0aGVuDQo+Pj4gZG9lcyBpdCBtZWFuIGRl
dm1fZ3Bpb2RfZ2V0KCkgd29ya3MgZGlmZmVyZW50bHkgb24gZGlmZmVyZW50IENQVXM/DQo+Pj4N
Cj4+DQo+PiBkZXZtX2dwaW9kX2dldCgpIGNhbGxzIGdwaW9fcmVxdWVzdCBvciBncGlvX3JlcXVl
c3RfZW5hYmxlIG9wcyB3aGljaCBhcmUNCj4+IGltcGxlbWVudGVkIGluIHRoZSBwaW4gY29udHJv
bGxlciBzbyB0aGUgYmVoYXZpb3IgY2FuIGJlIGRpZmZlcmVudC4NCj4+DQo+IA0KPiBBcmUgeW91
IGFzc2VydGluZyB0aGF0LCBiYXNlZCBvbiB0aGUgY29udHJvbGxlciw6DQo+ICogU29tZXRpbWVz
IGdwaW9kX2dldCgpIGFkanVzdHMgdGhlIHBpbm11eCwgYW5kDQo+ICogU29tZXRpbWVzIGdwaW9k
X2dldCgpIGRvZXNuJ3QgYWRqdXN0IHRoZSBwaW5tdXg/DQo+IA0KDQpZZXMuIE9uIG91ciBzaWRl
IHdlIGhhdmUgZW5jb3VudGVyZWQgaXQgd2hlbiBpbXBsZW1lbnRpbmcgdGhlIA0KZ3Bpb19yZXF1
ZXN0X2VuYWJsZSgpIG9wZXJhdGlvbiBmb3IgdGhlIHBpbmN0cmwtYXQ5MS1waW80IGRyaXZlciAN
CihTQU1BNUQyIGZhbWlseSkuIElmIGl0J3Mgbm90IGltcGxlbWVudGVkLCBub3RoaW5nIGhhcHBl
bnMgYXQgdGhlIHBpbiANCmNvbnRyb2xsZXIgbGV2ZWwsIGJ1dCBncGlvZF9nZXQoKSBhc3N1bWUg
dGhhdCB0aGUgcGluIGNhbiBiZSB1c2VkIGFzIGEgDQpHUElPLiBPbmNlIGltcGxlbWVudGVkLCB0
aGUgcGluIGNvbnRyb2xsZXIgbW9kaWZpZXMgdGhlIG11eGluZyBvZiB0aGUgDQpwaW4gYW5kIHdl
IGVuZGVkIGluIHRoaXMgc2l0dWF0aW9uIHdoZXJlIGkyYyBubyBsb25nZXIgd29ya3MuIFRoZSAN
Cndvcmthcm91bmQgZGlzY3Vzc2VkIGJlZm9yZSBmaXggdGhlIHByb2JsZW0gYnkgcmVtdXhpbmcg
dGhlIHBpbiB0byB0aGUgDQpkZXZpY2UgYWZ0ZXIgZ3Bpb2RfZ2V0KCkuDQoNCj4gV2hhdGV2ZXIg
aXQgaXMsIGl0IGFwcGVhcnMgdGhhdCB0aGUgYmVoYXZpb3IgaGFzIGNoYW5nZWQgZm9yIFNBTUE1
RDMNCj4gYmV0d2VlbiA1LjIgYW5kIDUuNSwgYW5kIGl0IG1ha2VzIHRoZSBwYXRjaCBzZXQgKGxp
bmtlZCBhYm92ZSkgdGhhdCdzDQo+IGN1cnJlbnRseSBpbiBXb2xmcmFtJ3MgZm9yLW5leHQgdHJl
ZSBubyBsb25nZXIgd29yayBwcm9wZXJseS4NCj4gDQoNCkkgdGVuZCB0byB0aGluayB0aGF0IGl0
IHNob3VsZCBoYXZlIGJlIGJyb2tlbiBpbiA1LjIuIEkyQyBjb250cm9sbGVyIA0Kc2hvdWxkIG9y
IHRoZSByZWNvdmVyeSBtb2RlIHNob3VsZCBub3Qgd29yay4gSSBkb24ndCBzZWUgaG93IGJvdGgg
Y2FuIA0Kd29yay4gV2hhdGV2ZXIsIGFzIHlvdSBzYWlkIHNvbWV0aGluZyBjaGFuZ2VkIGJ1dCBt
YXliZSB0aGUgYnJlYWthZ2UgDQpjb21lcyBmcm9tIGEgZml4IQ0KDQpSZWdhcmRzDQoNCkx1ZG92
aWMNCg0KPiBBbGFuLg0KPiANCj4gWzFdIEFuZCAiZG9lc24ndCB3b3JrIiBtZWFucywgbm90aGlu
ZyBpbiB0aGUgaTJjIGNvbnRyb2xsZXIgd29ya3MNCj4gYmVjYXVzZSB0aGUgcGluY3RybCBpcyBz
ZXQgdG8gZ3BpbyByYXRoZXIgdGhhbiB0byB0aGUgaTJjIGNvbnRyb2xsZXIuDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
