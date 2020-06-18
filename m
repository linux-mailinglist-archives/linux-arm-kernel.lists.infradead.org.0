Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9250D1FE345
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 04:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etSQ6Kup+VQu0S9gIfW7BGO7izZ6/Cws+X9Ge6/eJE8=; b=iFl/MFXOlARooP
	y5s86VAieJ4Q9KaMtjPpyf8S7vweSNJ6sQMqFMRrceOaxE+v5rhVYlexDJHHS2BqDumeMmRL8TH88
	XcPvUuFrwGrbO0MkXpkkZXF/lEbmEoCPYz9Crwe/mUlvL8QWC3lCfZpy3SSlxAl3qvRAOQS/Vi5Vh
	mxPGSzKUjlYAQBP6oU0GrQ7GpWiqROxI9KXFpCIPzqffw5Mzy+Ezigi5W/r1PVKHOfaL8BAlMIXRz
	zmCXzEbu1uvPKrYpiviJMElVrtW4clUF1CYli1dbyMyQYiZZwNABws3zXkzPttuHPBsVOwKbmDMPP
	/LULJYVAKg61/cdF/dwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljyE-0007OX-2I; Thu, 18 Jun 2020 02:08:02 +0000
Received: from mail-vi1eur05on2050.outbound.protection.outlook.com
 ([40.107.21.50] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljX6-0002Ks-8T
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:40:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQDUarD5xpOl71qOZmNBVbwI8Z6uSYBkN+U153F3nQRJkZIWp/+LWuFZxQt1vPkD2JRqcmIusn9ICTrVD+qiQme88kIoMKK13JmyPSv20ioP7O780/9wzSzObiZZK3uZ6fvFjbboqm+dtYCwYiczZUJxLCwGg9ZSVlhJc4/1e5YxDXiL72So4lG19Qz21t40o7G5iLiqZnQf6xR3ImC95wgLCLLE3oWoJBEe9qEjk7GeM9Md+RK+X1/yVbGkUiYflL1v0u3ondWgD/44soG9O32bHB2ja0oPYmDNH97RpOIFhTheZTHU31Z93YD14rDRAaBTD5wVPLmBVuC/S+unhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j9yn9sxMzWmK3pO74+EjddafT0/jwq8/ZG2tixUM9pU=;
 b=Dzhn/jR6LmM7iPuS4Ny3Qevl1vgu8U/tV6exS2EmNOICgqgqZ7O3fJNoy0PVJ9hizyc+/2PdPM4kokfH+xlSjDUn89t5sMd9nkG0SoS0/oKjqYUerl5T+C6KcKCO9NazdS1xUCcD7bneQ+25kGDnluQQHrWpp5b5dwCorISQjKxOxWZHJgzYkNo85NliDLKUG6XB9UJcV0JFsr8ZhiYGy/JZ1EJMTInP/mLNIP4b0csablxtRvLCfGK5ONBNBVpeDJ5YlAvU4ShbkcA7QVeu6/yvrjxbYhcp7+1h0lf72jTr7KrB/0lLUTia5+lL7bh+W20Wi/E+aAPBEcs3bLqKIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j9yn9sxMzWmK3pO74+EjddafT0/jwq8/ZG2tixUM9pU=;
 b=kPFP7kox6xVgNqCSD6LZqP7X6b5gwcYv2eoVA6C2zINXG4PqZmFulImi7OilO1ite24LCo+mSyIP068+seY1YRvday6s2TVPT3MLkS68UtjDcxPR15qGD1sm9Jg8PR/a+PzR4sf+032hrNQdIZK8Zh2HUiH77n3L36kDGzOBR1M=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6411.eurprd04.prod.outlook.com (2603:10a6:10:10c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 01:39:53 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::7564:54a2:a35e:1066]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::7564:54a2:a35e:1066%9]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 01:39:53 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>, "zhangshaokun@hisilicon.com"
 <zhangshaokun@hisilicon.com>, "will@kernel.org" <will@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: RE: [PATCH] drivers/perf: hisi: Add identifier sysfs file
Thread-Topic: [PATCH] drivers/perf: hisi: Add identifier sysfs file
Thread-Index: AQHWRKh+R5kcV6bnPUCHdbQXIl+kO6jdlbXg
Date: Thu, 18 Jun 2020 01:39:53 +0000
Message-ID: <DB8PR04MB67951F65693F02A1D9F8B098E69B0@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <1592399111-134786-1-git-send-email-john.garry@huawei.com>
In-Reply-To: <1592399111-134786-1-git-send-email-john.garry@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7dbf0dc0-3c23-4c56-13c2-08d813287fe3
x-ms-traffictypediagnostic: DB8PR04MB6411:
x-microsoft-antispam-prvs: <DB8PR04MB6411754C901C79E1676205F1E69B0@DB8PR04MB6411.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y7n2F68PheCXMuBCaR4ru86Hman+2mJQT0QR1KGoh+JyP1omdmsmakaK01W7kQ39kiisR6oNFCx3Kn+7ljTKB+HpEFDuxNSBlfT9Ye0JT8asEzEkxd3ugoDeF2b/IVEE4c9YtSpjkh7RdfdfhJHdqfTOgfIyHjtuBukYPlavVHmnO0sSpCsEgf2XdrU7x2ZLzeohMXlKIV2r8BlO10+UGRFjKBoyzlytEcKFxkxMufyl2KqvdFWKTVYggSUTJp5ezfm5zIj99+u4qmLzIr+Od62SOYQ7fyNIOt5SepDnhFnewRUWIWAltOZuMmUQSsjCswqdYS2D3d2abda+SIVdmQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(8676002)(110136005)(5660300002)(2906002)(71200400001)(478600001)(8936002)(52536014)(4326008)(9686003)(55016002)(83380400001)(316002)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(26005)(186003)(33656002)(7696005)(53546011)(6506007)(86362001)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: prQFwi7FfsOX0jOYRbh/yWZvLVLdGU/tb0LPhaA2fEoxnm/1gQceHxkOpTA7qcoSwa3iS3VvD7NqsLPGOl9WtZvL2XXKL2FDfzI0Czm9up5vay2Vzeehm6wDoKJIQr0aerwH+Jl77HSlJchRaBxz6wkyQwmGrwbdWVAdjuGal/enTV8w/cEgrfW9J75V+vSPjh5kR6cwRzaPdHsusyZo8Eyvzv6qX7EGEBzJQpZj9t9L1eShnXLA+lYFAr8g+M8RC4jmL7+knG4Qsq7elKMP/a/cQYB9s8Jj2n6NbNuLgGMFiOnG3AXCGTDNZ+fuT6bw3fLxe2cUCOu36q/v9s96tPDmW5h56Ojnf2SN/FD5pZoFcMTZhOP7QbN60Q/eqwUY6pvBzm7FOA+fDzSjxudCj80bnJiIEB5tgMOFwXZlQ2HaFdtU62edniEN18MYvG1+3v4A7W9psPRiK8AHqeyxH44ywnIc54feJSsC+X6lEd8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dbf0dc0-3c23-4c56-13c2-08d813287fe3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 01:39:53.5872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uG7KN0BTuDko6Azf4NzvG2JDHyj63ZxqRj/exXiv94P5Y5yQkwPR52XCp/xZGyN0H0Xmct3Mdp2vzQyMYIm6yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6411
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_184000_568849_625C5B09 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.50 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "jolsa@redhat.com" <jolsa@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpIaSBKb2huLA0KDQpIYXBweSB0byBrbm93IHRoYXQgdGhlcmUgaXMgYSB2ZXJzaW9uIHJlZ2lz
dGVyIGluIGhpc2lsaWNvbiBTb0MuIA0KDQpKb2huLCBXaWxsLCBNYXJrLCBpcyB0aGVyZSBhbnkg
Y29uY2x1c2lvbiBmb3Igb3RoZXIgU29DcyB3aGljaCBkb24ndCBoYXZlIHN1Y2ggdmVyc2lvbiBy
ZWdpc3RlciwgYnV0IHN0aWxsIHdhbnQgdG8gZXhwb3NlIGlkZW50aWZpZXIgdG8gdXNlcnNwYWNl
PyBUaGFua3MgYSBsb3QuDQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KDQo+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4uZ2FycnlAaHVh
d2VpLmNvbT4NCj4gU2VudDogMjAyMMTqNtTCMTfI1SAyMTowNQ0KPiBUbzogemhhbmdzaGFva3Vu
QGhpc2lsaWNvbi5jb207IHdpbGxAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb20NCj4g
Q2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZzsgSm9ha2ltDQo+IFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT47
IGpvbHNhQHJlZGhhdC5jb207DQo+IGxpbnV4YXJtQGh1YXdlaS5jb207IEpvaG4gR2FycnkgPGpv
aG4uZ2FycnlAaHVhd2VpLmNvbT4NCj4gU3ViamVjdDogW1BBVENIXSBkcml2ZXJzL3BlcmY6IGhp
c2k6IEFkZCBpZGVudGlmaWVyIHN5c2ZzIGZpbGUNCj4gDQo+IFRvIGFsbG93IHVzZXJzcGFjZSB0
byBpZGVudGlmeSB0aGUgc3BlY2lmaWMgaW1wbGVtZW50YXRpb24gb2YgdGhlIGRldmljZSwgYWRk
IGFuDQo+ICJpZGVudGlmaWVyIiBzeXNmcyBmaWxlLg0KPiANCj4gRW5jb2RpbmcgaXMgYXMgZm9s
bG93czoNCj4gaGkxNjIwOiAweDAJKGFrYSBoaXAwOCkNCj4gaGkxNjMwOiAweDMwDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBKb2huIEdhcnJ5IDxqb2huLmdhcnJ5QGh1YXdlaS5jb20+DQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wZXJmL2hpc2lsaWNvbi9oaXNpX3VuY29yZV9kZHJjX3BtdS5j
DQo+IGIvZHJpdmVycy9wZXJmL2hpc2lsaWNvbi9oaXNpX3VuY29yZV9kZHJjX3BtdS5jDQo+IGlu
ZGV4IDE1NzEzZmFhYTA3ZS4uYTgzZDk5ZjI2NjJlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL3Bl
cmYvaGlzaWxpY29uL2hpc2lfdW5jb3JlX2RkcmNfcG11LmMNCj4gKysrIGIvZHJpdmVycy9wZXJm
L2hpc2lsaWNvbi9oaXNpX3VuY29yZV9kZHJjX3BtdS5jDQo+IEBAIC0zMyw2ICszMyw3IEBADQo+
ICAjZGVmaW5lIEREUkNfSU5UX01BU0sJCTB4NmM4DQo+ICAjZGVmaW5lIEREUkNfSU5UX1NUQVRV
UwkJMHg2Y2MNCj4gICNkZWZpbmUgRERSQ19JTlRfQ0xFQVIJCTB4NmQwDQo+ICsjZGVmaW5lIERE
UkNfVkVSU0lPTgkJMHg3MTANCj4gDQo+ICAvKiBERFJDIGhhcyA4LWNvdW50ZXJzICovDQo+ICAj
ZGVmaW5lIEREUkNfTlJfQ09VTlRFUlMJMHg4DQo+IEBAIC0yNjcsNiArMjY4LDggQEAgc3RhdGlj
IGludCBoaXNpX2RkcmNfcG11X2luaXRfZGF0YShzdHJ1Y3QNCj4gcGxhdGZvcm1fZGV2aWNlICpw
ZGV2LA0KPiAgCQlyZXR1cm4gUFRSX0VSUihkZHJjX3BtdS0+YmFzZSk7DQo+ICAJfQ0KPiANCj4g
KwlkZHJjX3BtdS0+aWRlbnRpZmllciA9IHJlYWRsKGRkcmNfcG11LT5iYXNlICsgRERSQ19WRVJT
SU9OKTsNCj4gKw0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiANCj4gQEAgLTMwOCwxMCArMzExLDIz
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwDQo+IGhpc2lfZGRyY19wbXVf
Y3B1bWFza19hdHRyX2dyb3VwID0gew0KPiAgCS5hdHRycyA9IGhpc2lfZGRyY19wbXVfY3B1bWFz
a19hdHRycywNCj4gIH07DQo+IA0KPiArc3RhdGljIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlIGhp
c2lfZGRyY19wbXVfaWRlbnRpZmllcl9hdHRyID0NCj4gKwlfX0FUVFIoaWRlbnRpZmllciwgMDQ0
NCwgaGlzaV91bmNvcmVfcG11X2lkZW50aWZpZXJfYXR0cl9zaG93LCBOVUxMKTsNCj4gKw0KPiAr
c3RhdGljIHN0cnVjdCBhdHRyaWJ1dGUgKmhpc2lfZGRyY19wbXVfaWRlbnRpZmllcl9hdHRyc1td
ID0gew0KPiArCSZoaXNpX2RkcmNfcG11X2lkZW50aWZpZXJfYXR0ci5hdHRyLA0KPiArCU5VTEwN
Cj4gK307DQo+ICsNCj4gK3N0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwIGhpc2lfZGRyY19w
bXVfaWRlbnRpZmllcl9ncm91cCA9IHsNCj4gKwkuYXR0cnMgPSBoaXNpX2RkcmNfcG11X2lkZW50
aWZpZXJfYXR0cnMsIH07DQo+ICsNCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dy
b3VwICpoaXNpX2RkcmNfcG11X2F0dHJfZ3JvdXBzW10gPSB7DQo+ICAJJmhpc2lfZGRyY19wbXVf
Zm9ybWF0X2dyb3VwLA0KPiAgCSZoaXNpX2RkcmNfcG11X2V2ZW50c19ncm91cCwNCj4gIAkmaGlz
aV9kZHJjX3BtdV9jcHVtYXNrX2F0dHJfZ3JvdXAsDQo+ICsJJmhpc2lfZGRyY19wbXVfaWRlbnRp
Zmllcl9ncm91cCwNCj4gIAlOVUxMLA0KPiAgfTsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BlcmYvaGlzaWxpY29uL2hpc2lfdW5jb3JlX2hoYV9wbXUuYw0KPiBiL2RyaXZlcnMvcGVyZi9o
aXNpbGljb24vaGlzaV91bmNvcmVfaGhhX3BtdS5jDQo+IGluZGV4IGRjYzU2MDA3ODhhOS4uNGZk
YWYxZDk5NWJlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL3BlcmYvaGlzaWxpY29uL2hpc2lfdW5j
b3JlX2hoYV9wbXUuYw0KPiArKysgYi9kcml2ZXJzL3BlcmYvaGlzaWxpY29uL2hpc2lfdW5jb3Jl
X2hoYV9wbXUuYw0KPiBAQCAtMjMsNiArMjMsNyBAQA0KPiAgI2RlZmluZSBISEFfSU5UX01BU0sJ
CTB4MDgwNA0KPiAgI2RlZmluZSBISEFfSU5UX1NUQVRVUwkJMHgwODA4DQo+ICAjZGVmaW5lIEhI
QV9JTlRfQ0xFQVIJCTB4MDgwQw0KPiArI2RlZmluZSBISEFfVkVSU0lPTgkJMHgxY2YwDQo+ICAj
ZGVmaW5lIEhIQV9QRVJGX0NUUkwJCTB4MUUwMA0KPiAgI2RlZmluZSBISEFfRVZFTlRfQ1RSTAkJ
MHgxRTA0DQo+ICAjZGVmaW5lIEhIQV9FVkVOVF9UWVBFMAkJMHgxRTgwDQo+IEBAIC0yNjEsNiAr
MjYyLDggQEAgc3RhdGljIGludCBoaXNpX2hoYV9wbXVfaW5pdF9kYXRhKHN0cnVjdA0KPiBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYsDQo+ICAJCXJldHVybiBQVFJfRVJSKGhoYV9wbXUtPmJhc2UpOw0K
PiAgCX0NCj4gDQo+ICsJaGhhX3BtdS0+aWRlbnRpZmllciA9IHJlYWRsKGhoYV9wbXUtPmJhc2Ug
KyBISEFfVkVSU0lPTik7DQo+ICsNCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gDQo+IEBAIC0zMjAs
MTAgKzMyMywyMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cA0KPiBoaXNp
X2hoYV9wbXVfY3B1bWFza19hdHRyX2dyb3VwID0gew0KPiAgCS5hdHRycyA9IGhpc2lfaGhhX3Bt
dV9jcHVtYXNrX2F0dHJzLA0KPiAgfTsNCj4gDQo+ICtzdGF0aWMgc3RydWN0IGRldmljZV9hdHRy
aWJ1dGUgaGlzaV9oaGFfcG11X2lkZW50aWZpZXJfYXR0ciA9DQo+ICsJX19BVFRSKGlkZW50aWZp
ZXIsIDA0NDQsIGhpc2lfdW5jb3JlX3BtdV9pZGVudGlmaWVyX2F0dHJfc2hvdywgTlVMTCk7DQo+
ICsNCj4gK3N0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICpoaXNpX2hoYV9wbXVfaWRlbnRpZmllcl9h
dHRyc1tdID0gew0KPiArCSZoaXNpX2hoYV9wbXVfaWRlbnRpZmllcl9hdHRyLmF0dHIsDQo+ICsJ
TlVMTA0KPiArfTsNCj4gKw0KPiArc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXAgaGlzaV9o
aGFfcG11X2lkZW50aWZpZXJfZ3JvdXAgPSB7DQo+ICsJLmF0dHJzID0gaGlzaV9oaGFfcG11X2lk
ZW50aWZpZXJfYXR0cnMsIH07DQo+ICsNCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRl
X2dyb3VwICpoaXNpX2hoYV9wbXVfYXR0cl9ncm91cHNbXSA9IHsNCj4gIAkmaGlzaV9oaGFfcG11
X2Zvcm1hdF9ncm91cCwNCj4gIAkmaGlzaV9oaGFfcG11X2V2ZW50c19ncm91cCwNCj4gIAkmaGlz
aV9oaGFfcG11X2NwdW1hc2tfYXR0cl9ncm91cCwNCj4gKwkmaGlzaV9oaGFfcG11X2lkZW50aWZp
ZXJfZ3JvdXAsDQo+ICAJTlVMTCwNCj4gIH07DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
ZXJmL2hpc2lsaWNvbi9oaXNpX3VuY29yZV9sM2NfcG11LmMNCj4gYi9kcml2ZXJzL3BlcmYvaGlz
aWxpY29uL2hpc2lfdW5jb3JlX2wzY19wbXUuYw0KPiBpbmRleCA3NzE5YWU0ZTJjNTYuLjBlNzQ3
NzIyMGJlMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9wZXJmL2hpc2lsaWNvbi9oaXNpX3VuY29y
ZV9sM2NfcG11LmMNCj4gKysrIGIvZHJpdmVycy9wZXJmL2hpc2lsaWNvbi9oaXNpX3VuY29yZV9s
M2NfcG11LmMNCj4gQEAgLTI1LDYgKzI1LDcgQEANCj4gICNkZWZpbmUgTDNDX0lOVF9TVEFUVVMJ
CTB4MDgwOA0KPiAgI2RlZmluZSBMM0NfSU5UX0NMRUFSCQkweDA4MGMNCj4gICNkZWZpbmUgTDND
X0VWRU5UX0NUUkwJICAgICAgICAweDFjMDANCj4gKyNkZWZpbmUgTDNDX1ZFUlNJT04JCTB4MWNm
MA0KPiAgI2RlZmluZSBMM0NfRVZFTlRfVFlQRTAJCTB4MWQwMA0KPiAgLyoNCj4gICAqIEVhY2gg
Y291bnRlciBpcyA0OC1iaXRzIGFuZCBbNDg6NjNdIGFyZSByZXNlcnZlZCBAQCAtMjY0LDYgKzI2
NSw4IEBADQo+IHN0YXRpYyBpbnQgaGlzaV9sM2NfcG11X2luaXRfZGF0YShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2LA0KPiAgCQlyZXR1cm4gUFRSX0VSUihsM2NfcG11LT5iYXNlKTsNCj4g
IAl9DQo+IA0KPiArCWwzY19wbXUtPmlkZW50aWZpZXIgPSByZWFkbChsM2NfcG11LT5iYXNlICsg
TDNDX1ZFUlNJT04pOw0KPiArDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiBAQCAtMzEwLDEw
ICszMTMsMjMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXANCj4gaGlzaV9s
M2NfcG11X2NwdW1hc2tfYXR0cl9ncm91cCA9IHsNCj4gIAkuYXR0cnMgPSBoaXNpX2wzY19wbXVf
Y3B1bWFza19hdHRycywNCj4gIH07DQo+IA0KPiArc3RhdGljIHN0cnVjdCBkZXZpY2VfYXR0cmli
dXRlIGhpc2lfbDNjX3BtdV9pZGVudGlmaWVyX2F0dHIgPQ0KPiArCV9fQVRUUihpZGVudGlmaWVy
LCAwNDQ0LCBoaXNpX3VuY29yZV9wbXVfaWRlbnRpZmllcl9hdHRyX3Nob3csIE5VTEwpOw0KPiAr
DQo+ICtzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZSAqaGlzaV9sM2NfcG11X2lkZW50aWZpZXJfYXR0
cnNbXSA9IHsNCj4gKwkmaGlzaV9sM2NfcG11X2lkZW50aWZpZXJfYXR0ci5hdHRyLA0KPiArCU5V
TEwNCj4gK307DQo+ICsNCj4gK3N0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwIGhpc2lfbDNj
X3BtdV9pZGVudGlmaWVyX2dyb3VwID0gew0KPiArCS5hdHRycyA9IGhpc2lfbDNjX3BtdV9pZGVu
dGlmaWVyX2F0dHJzLCB9Ow0KPiArDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9n
cm91cCAqaGlzaV9sM2NfcG11X2F0dHJfZ3JvdXBzW10gPSB7DQo+ICAJJmhpc2lfbDNjX3BtdV9m
b3JtYXRfZ3JvdXAsDQo+ICAJJmhpc2lfbDNjX3BtdV9ldmVudHNfZ3JvdXAsDQo+ICAJJmhpc2lf
bDNjX3BtdV9jcHVtYXNrX2F0dHJfZ3JvdXAsDQo+ICsJJmhpc2lfbDNjX3BtdV9pZGVudGlmaWVy
X2dyb3VwLA0KPiAgCU5VTEwsDQo+ICB9Ow0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVy
Zi9oaXNpbGljb24vaGlzaV91bmNvcmVfcG11LmMNCj4gYi9kcml2ZXJzL3BlcmYvaGlzaWxpY29u
L2hpc2lfdW5jb3JlX3BtdS5jDQo+IGluZGV4IDk3YWZmODc3YTRlNy4uMDIzZTI0NzYzNGRiIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL3BlcmYvaGlzaWxpY29uL2hpc2lfdW5jb3JlX3BtdS5jDQo+
ICsrKyBiL2RyaXZlcnMvcGVyZi9oaXNpbGljb24vaGlzaV91bmNvcmVfcG11LmMNCj4gQEAgLTEx
OSw2ICsxMTksMTYgQEAgaW50IGhpc2lfdW5jb3JlX3BtdV9nZXRfZXZlbnRfaWR4KHN0cnVjdA0K
PiBwZXJmX2V2ZW50ICpldmVudCkgIH0NCj4gRVhQT1JUX1NZTUJPTF9HUEwoaGlzaV91bmNvcmVf
cG11X2dldF9ldmVudF9pZHgpOw0KPiANCj4gK3NzaXplX3QgaGlzaV91bmNvcmVfcG11X2lkZW50
aWZpZXJfYXR0cl9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gKwkJCQkJICAgICBzdHJ1Y3Qg
ZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwNCj4gKwkJCQkJICAgICBjaGFyICpwYWdlKQ0KPiArew0K
PiArCXN0cnVjdCBoaXNpX3BtdSAqaGlzaV9wbXUgPSB0b19oaXNpX3BtdShkZXZfZ2V0X2RydmRh
dGEoZGV2KSk7DQo+ICsNCj4gKwlyZXR1cm4gc3ByaW50ZihwYWdlLCAiMHgleFxuIiwgaGlzaV9w
bXUtPmlkZW50aWZpZXIpOyB9DQo+ICtFWFBPUlRfU1lNQk9MX0dQTChoaXNpX3VuY29yZV9wbXVf
aWRlbnRpZmllcl9hdHRyX3Nob3cpOw0KPiArDQo+ICBzdGF0aWMgdm9pZCBoaXNpX3VuY29yZV9w
bXVfY2xlYXJfZXZlbnRfaWR4KHN0cnVjdCBoaXNpX3BtdSAqaGlzaV9wbXUsIGludA0KPiBpZHgp
ICB7DQo+ICAJaWYgKCFoaXNpX3VuY29yZV9wbXVfY291bnRlcl92YWxpZChoaXNpX3BtdSwgaWR4
KSkgeyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9wZXJmL2hpc2lsaWNvbi9oaXNpX3VuY29yZV9w
bXUuaA0KPiBiL2RyaXZlcnMvcGVyZi9oaXNpbGljb24vaGlzaV91bmNvcmVfcG11LmgNCj4gaW5k
ZXggMjViMGM5N2IzZWIwLi4xNGVjYWY3NjMxNTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvcGVy
Zi9oaXNpbGljb24vaGlzaV91bmNvcmVfcG11LmgNCj4gKysrIGIvZHJpdmVycy9wZXJmL2hpc2ls
aWNvbi9oaXNpX3VuY29yZV9wbXUuaA0KPiBAQCAtNzQsNiArNzQsNyBAQCBzdHJ1Y3QgaGlzaV9w
bXUgew0KPiAgCWludCBjb3VudGVyX2JpdHM7DQo+ICAJLyogY2hlY2sgZXZlbnQgY29kZSByYW5n
ZSAqLw0KPiAgCWludCBjaGVja19ldmVudDsNCj4gKwl1MzIgaWRlbnRpZmllcjsNCj4gIH07DQo+
IA0KPiAgaW50IGhpc2lfdW5jb3JlX3BtdV9jb3VudGVyX3ZhbGlkKHN0cnVjdCBoaXNpX3BtdSAq
aGlzaV9wbXUsIGludCBpZHgpOyBAQA0KPiAtOTYsNCArOTcsMTAgQEAgc3NpemVfdCBoaXNpX2Nw
dW1hc2tfc3lzZnNfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+ICAJCQkJc3RydWN0IGRldmlj
ZV9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1Zik7ICBpbnQNCj4gaGlzaV91bmNvcmVfcG11X29u
bGluZV9jcHUodW5zaWduZWQgaW50IGNwdSwgc3RydWN0IGhsaXN0X25vZGUgKm5vZGUpOyAgaW50
DQo+IGhpc2lfdW5jb3JlX3BtdV9vZmZsaW5lX2NwdSh1bnNpZ25lZCBpbnQgY3B1LCBzdHJ1Y3Qg
aGxpc3Rfbm9kZSAqbm9kZSk7DQo+ICsNCj4gK3NzaXplX3QgaGlzaV91bmNvcmVfcG11X2lkZW50
aWZpZXJfYXR0cl9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gKwkJCQkJICAgICBzdHJ1Y3Qg
ZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwNCj4gKwkJCQkJICAgICBjaGFyICpwYWdlKTsNCj4gKw0K
PiArDQo+ICAjZW5kaWYgLyogX19ISVNJX1VOQ09SRV9QTVVfSF9fICovDQo+IC0tDQo+IDIuMjYu
Mg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
