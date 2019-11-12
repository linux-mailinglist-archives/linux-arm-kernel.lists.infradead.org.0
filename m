Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 455AAF9A30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 21:03:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGo+2S859vW0qjXxRv1j3gXZf7zS9m0WmsICssOV+Os=; b=gn+ELYMIwfsjN/
	VoobZIprTdGDVI1+zT57XL5IhXKIowD878sLmK1azLYjJNIBMPz4l84GoNBKrG9+kCf2nu9wLvoXI
	lczXy5/JxRZdeqwte4WHSlQEVKgqpyU0BWCgDqO7ccs8ci8OqftKip7fG53rQWoxtzRS1YA2OunbW
	QgpKZn42XRpN5/pSMbwqql0P50Tu8W8I1lPxQxAdyfOHmOhLObqTSS/7Jz7MTkzoWnc6ECMr5LMqJ
	R8tSEqbqKpWb1yRPf+lh0cgrf7lMVlzNtiCy+FyHjZXTL56fi/rvfqOe3xrvwzgIIcSDJQtWNvdLA
	oVpIqJ05dkvEpVUgd2Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUcNp-00046Q-Q5; Tue, 12 Nov 2019 20:03:25 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUcNd-00044g-SY; Tue, 12 Nov 2019 20:03:15 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1B479C03A5;
 Tue, 12 Nov 2019 20:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573588991; bh=zK9Q6HFL83ySXBTsD3GpXA1NE5l0MqCWkh5WT8iAP6o=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=j4QoyoAzcjou+RlQYLUWwG7FHnPxwOVsapAxKsDMTOUNepFAfLL0R2BTXxnHO+DlW
 KYylu4CCMextZ7Rg4+HjOrrxmCKUT2yGeO9BD3+HeFe4bGY2+gJM9ZliUg9YbMORuQ
 bWDyUiiPBJQ8Z8oYTWIMBxTSzpe5wvkky4WUD+G9vBS+e9amcxNUpFwiXs8atVQ+ma
 oi3340goUwwvg/ubj6xO7vXdRU9L+PsFV0cy2a9NXBLwPYuMIcE63BNXjMKeNdlDH5
 KD0zJwqbyK7tjammo896IpntsbhlYEUqOXuDudDFIzPTKJ4Duhzpg76C7jrH9fnjXj
 devDLAnta2yTQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 2A7DFA0066;
 Tue, 12 Nov 2019 20:03:08 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 12 Nov 2019 12:03:08 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 12 Nov 2019 12:03:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VEDGAgpM2xau8uNlQ0YGKWYwYmCFjVPSy5LMem3C3w38YuxFdhMijsghL1nvwOHYW+8LpgrdzR2U61eV2aPVB5SZnBpnz5XGoc47EDjZOUK9UpnFTI7mzTgdkRVsaxRvUHirgvT/h8qeDaTAbRTOlkyMkbeBFaIUAZNvA5EzqaXMd5DduOzUj3yR2lcE6fopco0sCKIlijShs/8vcbdnRqkU4RpmGt7p7yD8xCFSyNE+sffv2M9eIS9h+pxgQC3q33dTv3dyE8YrNHwcKrqSlXuwSC/YUyoH3i8n7YCxq0PGVLJOaq83e6C28ZOOGXe2RJt9/jKW5amwV4IQrOilkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zK9Q6HFL83ySXBTsD3GpXA1NE5l0MqCWkh5WT8iAP6o=;
 b=l58tYD4pGG0/3NqztBRAsJJR8xuZyXtPA94BXFD7p9e78Z15gnUQoxOqUz+dR0xHLEJ/Fv4u4r1gm7lMXbFHd/e+7VppmDsxO087RiTFwg2vDn1HANZk4P5+Wi4SC9cKZxly4pVp33jnpGxpOW8KgNDl4TFa9MSm2bWFL3r5crkGg9FMfqbWSvz8AOgltiT/7YqWp5TvVI8YTrSpNR251H1bRunPLMn2BXQGRS11tULfR265icuPkkSXatUPw0ytlRTQvB5wdHEHOcavn8+KGBlBeVwEGxbmd7FWlkf/4cxnNaPi9AjoCo4O2xOwHYfyglPCSBE8nOitQnlFXUZjgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zK9Q6HFL83ySXBTsD3GpXA1NE5l0MqCWkh5WT8iAP6o=;
 b=PQkRx3mXba1VUu07emqgr31+j0ZKEmj2GJRPsYM3cKEe+5om8eiEVCziBI/xlNg0+FjPzfAu2R8YBILlYVqbIuj6RfhpG/ftGZk9jdNCHNaZniEyZ8SSC/IN0QcYEf82KOWCWs8XK6KfR4Q8EG43USeyNA4uymdFHIPKTOmZW20=
Received: from CY4PR1201MB0037.namprd12.prod.outlook.com (10.172.78.22) by
 CY4PR1201MB0039.namprd12.prod.outlook.com (10.172.79.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Tue, 12 Nov 2019 20:03:06 +0000
Received: from CY4PR1201MB0037.namprd12.prod.outlook.com
 ([fe80::cdbe:cf8c:dfb7:68d3]) by CY4PR1201MB0037.namprd12.prod.outlook.com
 ([fe80::cdbe:cf8c:dfb7:68d3%4]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 20:03:06 +0000
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
To: Jun Li <lijun.kernel@gmail.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Subject: Re: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
Thread-Topic: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
Thread-Index: AQHVgpo3wnUWK/PjlkCI40UJSqKuHadotvaAgByUcgCAABZzgIACCBMAgAAfDQCAAJo0gA==
Date: Tue, 12 Nov 2019 20:03:05 +0000
Message-ID: <45212db9-e366-2669-5c0a-3c5bd06287f6@synopsys.com>
References: <20191014141718.22603-1-narmstrong@baylibre.com>
 <20191014141718.22603-2-narmstrong@baylibre.com>
 <20191023201141.GA21235@bogus>
 <CA+3zgmsJPsvXgsjDQKKrSG+UNdY3SK+hKCTD2X3hGG+OXejHig@mail.gmail.com>
 <CAKgpwJWU3jB0DWEKE09TOV+YLceBFJ75ZirAXQbuhj8v3FwjXg@mail.gmail.com>
 <c32007f5-88b9-45c5-b542-b1dc4dbc76ea@baylibre.com>
 <CAKgpwJVHF6Ytdt9kq5SwiixFDLym_UPG51aXag1nVVay0pzofQ@mail.gmail.com>
In-Reply-To: <CAKgpwJVHF6Ytdt9kq5SwiixFDLym_UPG51aXag1nVVay0pzofQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=thinhn@synopsys.com; 
x-originating-ip: [149.117.75.13]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: afcbffa1-8383-4206-e196-08d767ab5517
x-ms-traffictypediagnostic: CY4PR1201MB0039:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB00399323EE8E606B071EB37EAA770@CY4PR1201MB0039.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(136003)(39860400002)(376002)(366004)(189003)(199004)(66946007)(66476007)(6246003)(8936002)(2906002)(81156014)(229853002)(6486002)(15650500001)(316002)(81166006)(99286004)(66446008)(64756008)(76116006)(91956017)(6116002)(6436002)(110136005)(54906003)(3846002)(66556008)(8676002)(5660300002)(66066001)(966005)(31686004)(6636002)(478600001)(14454004)(53546011)(4326008)(76176011)(71190400001)(6512007)(71200400001)(14444005)(256004)(25786009)(86362001)(11346002)(446003)(6306002)(36756003)(31696002)(476003)(486006)(186003)(7736002)(102836004)(26005)(2616005)(6506007)(305945005)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR1201MB0039;
 H:CY4PR1201MB0037.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /TQJ/nyKj5OX+K3ZJ6mXNqadk/4w9oA7I8cpmOwTur95j0QJ8OLYouKnq1vL1drXFxW24fj7Hvn38qG5GSnOozhck8R+3hn4qpvu8yCOvElv75A2f3tUJhN3NO14xwMAO1qNm5iqbyOk+qSCbv619D5KNGunvlk0D5rGqM+VhCVaJQPjujyVwJn+DeMV8qNgFdSjUqUDc54fMfhay3z1bBhy2cYcW//ZMk3QyKx4odYuImngHY6EzNG/wXC6Eube/NO1qtHny4HCyBX8HFKNFIwgW3ehvEm0ZvuyPOfOnuaOj4LECJ1LcKox4HYItOerGDkSQdYWXLM7h2W5PXQDhq1OUm6Cf889qPgz9LANPc0RPerToQUZBl6zMzEl0SCP2bZynqMbTZ6zZfgVV+PDcQFeXAlFdsFG+UumM1UcgbfO9AOX3As17NyJ3XKTNewfGovG0rDMAxzXBtteyU0zZiE1mZnutRafF6iGlp+FR+I=
Content-ID: <0AB26A2159416647A439552D6B4ADD6C@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: afcbffa1-8383-4206-e196-08d767ab5517
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 20:03:05.8772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gxiSWHRY+gh67gUL0CtW5EG7OCWOunjzU+ArqSgQVzJfgG83qmrwD2dafGRxmUhMNDOZeoLNtOlWrjXtBJ25tQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0039
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_120313_961738_3AD4E145 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Felipe Balbi <balbi@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tim <elatllat@gmail.com>, Dongjin Kim <tobetter@gmail.com>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 Rob Herring <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksDQoNCkp1biBMaSB3cm90ZToNCj4gVGhpcyBidWcgZXhpc3RzIG9uIGFsbCBjdXJyZW50IHZl
cnNpb25zIHBlciBpbmZvcm1hdGlvbiBJIGdvdCBmcm9tIFN5bm9wc3lzLg0KPiArIFRoaW5oIE5n
dXllbiA8dGhpbmhuQHN5bm9wc3lzLmNvbT4uDQo+DQo+IExpIEp1bg0KDQpUaGUgR1VDVEwxLlBB
UktNT0RFX0RJU0FCTEVfU1MgaXMgb25seSBhdmFpbGFibGUgaW4gZHdjX3VzYjMgY29udHJvbGxl
ciANCnJ1bm5pbmcgaW4gaG9zdCBtb2RlLiBUaGlzIHNob3VsZCBub3QgYmUgc2V0IGZvciBvdGhl
ciBJUHMuDQoNClRoaXMgY2FuIGJlIGRpc2FibGVkIGJ5IGRlZmF1bHQgYmFzZWQgb24gSVAsIGJ1
dCBJIHJlY29tbWVuZCB0byBoYXZlIGEgDQpwcm9wZXJ0eSB0byBlbmFibGUgdGhpcyBmZWF0dXJl
IGZvciBkZXZpY2VzIHRoYXQgbmVlZCB0aGlzLg0KDQoNCj4NCj4gTmVpbCBBcm1zdHJvbmcgPG5h
cm1zdHJvbmdAYmF5bGlicmUuY29tPiDkuo4yMDE55bm0MTHmnIgxMuaXpeWRqOS6jCDkuIvljYg1
OjAw5YaZ6YGT77yaDQo+PiBIaSBMaSwNCj4+DQo+PiBPbiAxMS8xMS8yMDE5IDAyOjU4LCBKdW4g
TGkgd3JvdGU6DQo+Pj4gSGkgTmVpbA0KPj4+DQo+Pj4gQXMgSSBnb3QgdGhlIGluZm9ybWF0aW9u
IGZyb20gU3lub3BzeXMsIHRoaXMgYnVnIGV4aXN0cyBvbiBjdXJyZW50IElQIHZlcnNpb25zLA0K
Pj4+IGFuZCBwZXIgbXkgdGVzdHMgd2l0aCBleHRlcm5hbCBVU0IzIGh1YiArIDIgU3VwZXIgc3Bl
ZWQgdWRpc2tzIG9uIGRhdGENCj4+PiByZWFkIGJ5IGRkLCBJIGNhbiByZXByb2R1Y2UgdGhpcyBp
c3N1ZSB3aXRoIGRpZmZlcmVudCBrZXJuZWwgdmVyc2lvbnMsIGFsc28gSQ0KPj4+IGRpZG4ndCBz
ZWUgb2J2aW91cyBwZXJmb3JtYW5jZSBkcm9wIGJ5IGRkIHRlc3RzIGFmdGVyIGRpc2FibGUgcGFy
ayBtb2RlIGZvcg0KPj4+IHN1cGVyIHNwZWVkLCBzbyBzaG91bGQgd2UganVzdCBkaXNhYmxlIGl0
IGJ5IGRlZmF1bHQgc28gbm8gbmVlZCBhIHF1aXJrPw0KPj4gSSBkb24ndCBoYXZlIGFueSBvcGlu
aW9uIG9uIHRoaXMsIEkgdGhpbmsgdGhlIFVTQiAmIERXQzMgbWFpbnRhaW5lcnMgc2hvdWxkIGRl
Y2lkZQ0KPj4gaG93IHRvIGhhbmRsZSB0aGlzLg0KPj4NCj4+IERpZCBTeW5vcHN5cyBzcGVjaWZp
ZWQgYSByYW5nZSBvZiBhZmZlY3RlZCBJUCB2ZXJzaW9uID8NCj4+DQo+PiBOZWlsDQo+Pg0KPj4+
IExpIEp1bg0KPj4+DQo+Pj4gVGltIDxlbGF0bGxhdEBnbWFpbC5jb20+IOS6jjIwMTnlubQxMeac
iDEx5pel5ZGo5LiAIOS4iuWNiDg6NDLlhpnpgZPvvJoNCj4+Pj4gVGhhbmtzIGZvciB3b3JraW5n
IG9uIHRoaXMgTmVpbCwNCj4+Pj4gSXMgdGhlcmUgc29tZXRoaW5nIHRoYXQgbmVlZHMgZG9pbmcg
Zm9yIHRoaXMgcGF0Y2ggdG8gbWFrZSBpdCBpbnRvIDUuMyBvciA1LjQ/DQo+Pj4+IEFzIHByZXZp
b3VzbHkgbWVudGlvbmVkIHRoZSBwYXRjaCBzZXQgZml4ZXMgdGhlIGlzc3VlIG9uIGFmZmVjdGVk
IGhhcmR3YXJlOw0KPj4+PiAgICAgIGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92
Mi91cmw/dT1odHRwcy0zQV9fcGF0Y2h3b3JrLmtlcm5lbC5vcmdfcGF0Y2hfMTExNjQ1MTVfJmQ9
RHdJRmFRJmM9RFBMNl9YXzZKa1hGeDdBWFdxQjB0ZyZyPXU5RllveEt0eWhqckdGY3lpeEZZcVRq
dzFaWDBWc0cyZDhGQ216a1RZLXcmbT1CQ2ZSSE05ZTg2MDM5U3UwLVF2S195VWpObllybmxfQmN2
eFR0Vml5cFQ4JnM9YVY1dTd1eE5YNm9UTEIzXy1xTnV6ck52eWlxeF9yUEM2UDlUTXFHLUxORSZl
PQ0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+PiBPbiBXZWQsIE9jdCAyMywgMjAxOSBhdCA0OjExIFBN
IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOg0KPj4+Pj4gT24gTW9uLCBPY3Qg
MTQsIDIwMTkgYXQgMDQ6MTc6MTZQTSArMDIwMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6DQo+Pj4+
Pj4gVGhpcyBwYXRjaCB1cGRhdGVzIHRoZSBkb2N1bWVudGF0aW9uIHdpdGggdGhlIGluZm9ybWF0
aW9uIHJlbGF0ZWQNCj4+Pj4+PiB0byB0aGUgcXVpcmtzIHRoYXQgbmVlZHMgdG8gYmUgYWRkZWQg
Zm9yIGRpc2FibGluZyBhbGwgU3VwZXJTcGVlZCBYSENpDQo+Pj4+Pj4gaW5zdGFuY2VzIGluIHBh
cmsgbW9kZS4NCj4+Pj4+Pg0KPj4+Pj4+IENDOiBEb25namluIEtpbSA8dG9iZXR0ZXJAZ21haWwu
Y29tPg0KPj4+Pj4+IENjOiBKaWFueGluIFBhbiA8amlhbnhpbi5wYW5AYW1sb2dpYy5jb20+DQo+
Pj4+Pj4gUmVwb3J0ZWQtYnk6IFRpbSA8ZWxhdGxsYXRAZ21haWwuY29tPg0KPj4+Pj4+IFNpZ25l
ZC1vZmYtYnk6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4NCj4+Pj4+
PiAtLS0NCj4+Pj4+PiAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZHdj
My50eHQgfCAyICsrDQo+Pj4+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+
Pj4+PiBTaWdoLCB3aGF0J3Mgb25lIG1vcmUgdG8gdGhlIG5ldmVyIGVuZGluZyBsaXN0IG9mIHF1
aXJrcy4uLg0KPj4+Pj4NCj4+Pj4+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPg0KDQpCUiwNClRoaW5oDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
