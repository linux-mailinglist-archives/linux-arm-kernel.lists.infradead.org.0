Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04334B721F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 06:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8Vr6lcDF4btSlfbQ5QRNuS/nPMxIldu6+WMLtKxwqc=; b=eRbYkSWpO8KQ3W
	OYrwIYjaxtS+UVzwDJQFWqipcsJ6d/u8ZR2lJ2mHUybwfa+oYk8FfYNeV7tEhzTtbTdU7q7em1OCR
	woroz35Yh/4lz2UjH1ModZOZrXhzSZv9eB9to3fXm8DlIevbb0OVsaHb12eOdFbPv7EsPmuCyqUMa
	fwkaBf0kdF+jvKEwGK9ucD7HMVYtnMlSOTAYirbIu2wvev+UIcG8mCHrSzwy7fkKWFu+gcoUEbpbh
	OLq7kweg/EpVy7ngUPBI/e1bYg35hkn/aJM+h6tJrS09J17TJEniGLE97IXFY7btqUVEErAhNQq+t
	R1/5p/lHC3Wbrc7nQmwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAnp7-0003SF-Nh; Thu, 19 Sep 2019 04:13:41 +0000
Received: from mail-eopbgr80072.outbound.protection.outlook.com ([40.107.8.72]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAnou-0003R6-TT
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 04:13:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cGKnVVEeR2kuWJ02MO3Q1Nh7vZNSkxuW4DiBI+xI07TZXXWMdqw++sIYLo/15lTUFMclA7T8QJlq9agNeh0RVQy4l9nZfhBvGEM8loD+Q5+Jr4K7qboX/kPIuKK2ZZCPVR7y2gFUUcpgLEytvNN7TgeMHsrLt/+RHwa3tgy1gPTMXq4a7nc6xO1kMeRYAUSnEoTjg6vSlM4S0vw0vya1S96SdRPe8vM7g85xQPb0hTewH/37w9y910t+S8dXVWYAkPaLw9LVdkWkizVMbuW8k/3XBvuAJVD/oEMvlRcesY9n9GrGxsV6jyW109Czocv+bTkAxK4LGRPmKeiOEk+kSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k7xRG/ZTdm1KH2yW9OsHvgv+w8RX0NO2MT+Ng3D2xXU=;
 b=lZCE9SGECPXZiVHlAC6+5xCLDOKEQwcqacjMQnC3BFb+42mKSkkemzeQ3s/yyjLJSxvnv/56prMLA5+9gUWiQNxte+GSGMsI9Dr0kGZecpVNPkVTF5pw1JKQOEoY9XYd4oBUdetlQiSStSk5mbs8LqcRz917h/ytUx/Blr3cfU8BPnVETDcIPBVv2YjvZHJaE6EsEa5pOD4BzjCSsT0OWf+KpQEYhHAh1Ra4s4ggLLzfh4Dv1fR5+x/fHMrkXEm1Zf1HzGOZX9na0zYM+XYrb0AF2aRzoxrrbXqf4/3K5KbIr59b57g1peSwUSdo0JotpC+j12OTbJBQ3/MpBPF7wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k7xRG/ZTdm1KH2yW9OsHvgv+w8RX0NO2MT+Ng3D2xXU=;
 b=ZftljBo9DopB/MfXCobDbfvSRQw1Q+0hQt6HwqwqYM17yhCyirXGf2Rj/CngoHGK6TcpARK6Du8TC15PLq6OxrzmozXbaARUhxF7axKd6kqyG06xRa7iXj5uDD1BffwkqW9d1liyE6K0gT3LsLNc/jQLbrY66uJjM7rKHPFMB0Q=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2335.eurprd04.prod.outlook.com (10.169.136.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 19 Sep 2019 04:13:20 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::40fb:b35c:722a:101f]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::40fb:b35c:722a:101f%10]) with mapi id 15.20.2263.023; Thu, 19 Sep
 2019 04:13:20 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, Fabio Estevam <festevam@gmail.com>, Russell
 King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Thread-Topic: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Thread-Index: AQHVbLJSA+GEI3GLz0ux+LeK9AebcqcvhCUAgAADuYCAACfPAIAACaWAgAAHKgCAAA5TAIAACaeAgAAEvoCAAAJUgIAAAuGAgAACVoCAAAFogIAAQKgAgAJAkDA=
Date: Thu, 19 Sep 2019 04:13:20 +0000
Message-ID: <VI1PR0401MB22376A0EA85123B2AEB72EDEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
References: <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
 <20190917133317.GQ25745@shell.armlinux.org.uk>
 <CAOMZO5DS_1Uc9TMc29e+8tCg-srvMjf3uth_9P3cnro6det+7A@mail.gmail.com>
 <20190917135157.GT25745@shell.armlinux.org.uk>
 <CAOMZO5BDirX0Fwo716v1ddYaaO+OL8Woht63mw8OEhDuMBTb8Q@mail.gmail.com>
 <CADRPPNQ-WTY0QC7_bX=N0QeueKve=k0SaMvbjOrByyvzFojz2g@mail.gmail.com>
In-Reply-To: <CADRPPNQ-WTY0QC7_bX=N0QeueKve=k0SaMvbjOrByyvzFojz2g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c20c493a-7f92-4110-2ea1-08d73cb7b48c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2335; 
x-ms-traffictypediagnostic: VI1PR0401MB2335:|VI1PR0401MB2335:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0401MB23359730D9AA19F2725A10FFF8890@VI1PR0401MB2335.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(376002)(136003)(396003)(189003)(199004)(66066001)(446003)(256004)(6506007)(186003)(2906002)(316002)(486006)(53546011)(6246003)(66946007)(66476007)(14444005)(55016002)(76116006)(54906003)(71200400001)(71190400001)(26005)(305945005)(6116002)(74316002)(3846002)(102836004)(7736002)(110136005)(76176011)(52536014)(14454004)(99286004)(229853002)(4326008)(25786009)(7696005)(8676002)(33656002)(66556008)(66446008)(64756008)(8936002)(81156014)(81166006)(6436002)(86362001)(5660300002)(11346002)(9686003)(476003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2335;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 36dsu5wRr8sxwxGYbdY9aQtQPEPxXNYM8DDEv7IV0dANxiXtQcgZB+dxIMLEzoKpdsN3ynpWCowY9Powydhlv56ZV09NA5BjcgLQ2Q5PcmNrXZL2bkWzDmHYD13ZySPjcHB52DFSZDIe0weAjrHddVafURl7CX5saqEAXBt/J/HZRl+MojbImZ16PlvfLU9P92S1Qnm3VmM6U68Uoy3sZvraOvCEKU36Pe85njekz9Kq8yTQjyIvrAJxH7c0McxiCTTOO4m3+EOXnSCBVJN14bQFXl1GaBvYAldu1ftpvwOcAmOdbP58YWNHWDB7ny9JjJ8XkfKH6OcxFAHBZcfIEk63jXOSBFRZYpT5VKWmC0XLUdXKOvdsvkE4uvcv3BBHknc5kNR6s8QrOy4Pepan2v4wM0puv93qXKUM/Y0EDMc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c20c493a-7f92-4110-2ea1-08d73cb7b48c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 04:13:20.0922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hCWa1Rmsnm+cXORy11J0CwevlmAMsuiPITFH2hWP83f5ze7OG1eCqIvNPMh+fF40LdRkSiXAGT1zT8mG6SBLRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2335
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_211328_956834_A538B3DD 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dann frazier <dann.frazier@canonical.com>,
 Will Deacon <will.deacon@arm.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Nicolin Chen <nicoleotsuka@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U29ycnkuIE15IGVtYWlsIHdhcyByZWplY3RlZCBieSBtYWlsaW5nIGxpc3RzLiBMZXQgbWUgcmUt
c2VuZC4NCg0KSGkgUnVzc2VsbCwNCg0KSeKAmW0gbm90IHN1cmUgd2hhdCBib2FyZCB5b3Ugd2Vy
ZSB1c2luZyBmb3IgTFgyMTYwQS4NCldlIGhhZCBhbiBrbm93biBpc3N1ZSBmb3IgZVNESEMgY29u
dHJvbGxlciBhbmQgYWxsIE5YUCBMYXllcnNjYXBlIFJEQiBib2FyZHMuDQplU0RIQyBjb3VsZG7i
gJl0IHByb3ZpZGUgcG93ZXItY3ljbGUgdG8gU0QgY2FyZCwgYW5kIGV2ZW4gd29yc2UsIGJvYXJk
IHJlc2V0IGNvdWxkbuKAmXQgcHJvdmlkZSBwb3dlci1jeWNsZSB0byBTRCBjYXJkIGVpdGhlci4N
CkJ1dCBmb3IgVUhTLUkgU0QgY2FyZCwgaXTigJlzIHJlcXVpcmVkIHRvIGhhdmUgYSBwb3dlci1j
eWNsZSB0byByZXNldCBjYXJkIGlmIGl0IGdvZXMgaW50byBVSFMtSSBtb2RlLiBPdGhlcndpc2Us
IHdlIGRvbuKAmXQga25vdyB3aGF0IHdpbGwgaGFwcGVuIHdoZW4ga2VybmVsIGluaXRpYWxpemVz
IFNEIGNhcmQgYWZ0ZXIgYSByZWJvb3QvcmVzZXQuDQoNCkkgY291bGQgcmVwcm9kdWNlIHRoYXQg
aXNzdWUgd2l0aCBiZWxvdyBzdGVwcyBvbiBsYXRlc3QgbWFpbmxpbmUga2VybmVsLg0KMS4gUG93
ZXIgb2ZmIGJvYXJkLCBhbmQgcG93ZXIgb24gYm9hcmQuDQoyLiBTdGFydCB1cCBrZXJuZWwsIHRo
ZSBTRCBjYXJkIHdvcmtzIGZpbmUgaW4gVUhTLUkgbW9kZS4NCjMuIFJlYm9vdC9yZXNldCBib2Fy
ZC4gKFRoaXMgY291bGRu4oCZdCBwcm92aWRlIHBvd2VyLWN5Y2xlIHRvIFNEIGNhcmQpDQo0LiBT
dGFydCB1cCBrZXJuZWwsIHRoZSBTRCBjYXJkIGdldHMgdGhhdCBBRE1BIGVycm9yIGlzc3VlLg0K
DQpTbyBjb3VsZCB5b3UgaGF2ZSBhIHRyeSB0byBwb3dlciBvZmYvcG93ZXIgb24gdGhlIGJvYXJk
LCBhbmQgdGhlbiBzdGFydCB1cCBrZXJuZWwuIERvbuKAmXQgdXNlIHJlYm9vdCwgb3IgYm9hcmQg
cmVzZXQgYnV0dG9uLg0KT3IgeW91IGNhbiByZW1vdmUgU0QgY2FyZCBhbmQgc3RhcnQgdXAga2Vy
bmVsLCBhbmQgaW5zZXJ0IFNEIGNhcmQgd2hlbiBrZXJuZWwgaGFzIGJlZW4gc3RhcnRlZCB1cC4N
ClRoYW5rcyBhIGxvdC4NCg0KQmVzdCByZWdhcmRzLA0KWWFuZ2JvIEx1DQoNCg0KRnJvbTogTGkg
WWFuZyA8bGVveWFuZy5saUBueHAuY29tPiANClNlbnQ6IFdlZG5lc2RheSwgU2VwdGVtYmVyIDE4
LCAyMDE5IDE6NDggQU0NClRvOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+OyBZ
LmIuIEx1IDx5YW5nYm8ubHVAbnhwLmNvbT4NCkNjOiBBZHJpYW4gSHVudGVyIDxhZHJpYW4uaHVu
dGVyQGludGVsLmNvbT47IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPjsgTGludXggQVJN
IDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+OyBOaWNvbGluIENoZW4gPG5p
Y29sZW90c3VrYUBnbWFpbC5jb20+OyBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gPGxp
bnV4QGFybWxpbnV4Lm9yZy51az47IFdpbGwgRGVhY29uIDx3aWxsLmRlYWNvbkBhcm0uY29tPjsg
ZGFubiBmcmF6aWVyIDxkYW5uLmZyYXppZXJAY2Fub25pY2FsLmNvbT47IGxpbnV4LW1tYyA8bGlu
dXgtbW1jQHZnZXIua2VybmVsLm9yZz4NClN1YmplY3Q6IFJlOiBbUkVHUkVTU0lPTl0gc2RoY2kg
bm8gbG9uZ2VyIGRldGVjdHMgU0QgY2FyZHMgb24gTFgyMTYwQQ0KDQoNCg0KT24gVHVlLCBTZXAg
MTcsIDIwMTkgYXQgNjozMSBQTSBGYWJpbyBFc3RldmFtIDxtYWlsdG86ZmVzdGV2YW1AZ21haWwu
Y29tPiB3cm90ZToNCltBZGRpbmcgTGkgWWFuZ10NCg0KT24gVHVlLCBTZXAgMTcsIDIwMTkgYXQg
MTA6NTIgQU0gUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluDQo8bWFpbHRvOmxpbnV4QGFy
bWxpbnV4Lm9yZy51az4gd3JvdGU6DQoNCj4gVGhlIHByZXNzaW5nIHF1ZXN0aW9uIHNlZW1zIHRv
IGJlIHRoaXM6DQo+DQo+IEFyZSB0aGUgZVNESEMgb24gdGhlIExYMjE2MEEgRE1BIGNvaGVyZW50
IG9yIGFyZSB0aGV5IG5vdD8NCj4NCj4gQW55IGNoYW5jZXMgb2YgZmluZGluZyBvdXQgaW50ZXJu
YWxseSB3aGF0IHRoZSB0cnVlIGFuc3dlciB0byB0aGF0LA0KPiByYXRoZXIgdGhhbiBtZSBwb2tp
bmcgYWJvdXQgdHJ5aW5nIHN0dWZmIGV4cGVyaW1lbnRhbGx5P8KgIEhhdmluZyBhDQo+IGRlZmlu
aXRpdmUgYW5zd2VyIGZvciBhIHBvdGVudGlhbGx5IGRhdGEtY29ycnVwdGluZyBjaGFuZ2Ugd291
bGQNCj4gYmUgcmVhbGx5IGdvb2QuLi4NCg0KTGkgWWFuZywNCg0KQ291bGQgeW91IHBsZWFzZSBo
ZWxwIHRvIGNvbmZpcm0gUnVzc2VsbCdzIHF1ZXN0aW9uPw0KQWRkaW5nIFlhbmdibyB3aG8gaXMg
d29ya2luZyBvbiBTREhDLg0KDQpSZWdhcmRzLA0KTGVvDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
