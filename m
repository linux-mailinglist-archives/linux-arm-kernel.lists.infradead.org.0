Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8701639B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 02:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hjxy0Jl3nZRkOVjnBz/Y26RdIV/VgEv+3JY3u7+eaQ=; b=V/4YgEy1MOlY8Q
	ezJyQreoUFQ+Rkuu2W64v9MiedvZaRoilJrE6KjxCzBX1vRkVyA1/My//tTVUD56wK4chbBdGEo/k
	T0fhgJwKSMYWnp1FeLEICADWIxoct3kmI0SLippnWx7NbsfnZIi57agEZ3RzzgHO9rWzEkfOl7jFJ
	0kAiVBeditLGa+DLVlkWmkHyo267OKYn+wiWdowMTkDLl/kiGXDnpkldtVy32SetFWQ4trlvHnU7s
	1IcnaWaH9vNb52q1Istq6Hm4PPyTctAkujzXWXC1VYtR12vUdw1ALozOC4DJcaNchPQwkehMEbHFo
	gPkZrKpyGWMejK2iDQrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4EaY-0000Jj-AK; Wed, 19 Feb 2020 01:55:46 +0000
Received: from mail-eopbgr30070.outbound.protection.outlook.com ([40.107.3.70]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4EaL-0000J7-B8
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 01:55:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQ4al17Im9M4k/84EtfPiSa+Lq4dyfktbAlGS/qIgdEX+22KxwVJK7gzy0p6iVY4OrqOrgH1TouEKzUW8Rai/ruDuIQcQ6BG/iznFhsHZcpRFdPWdaVIcr2T1Ito9uR2lnousbaBqlp0y2emu0DtHOkshK5GWJgX8SlF5fxZVfXgWAjtW6PCCQa5NHv4+4IUzorCo3gLlxJ8LySjP++fY6WpTm5RVIm2GfdjM+VjApyfWo5BobJiuvr+3yKHhVXPITkV74Qi6Ue1a+XBvAHqm6KymIttpxBNm5Bv1sEZ8Z10EWeafnT8jd+8QHJR2+UgZZTPGDU5pWSWF2qM0A14sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AqiqtZaJYqKbUaL5ZYOjyCXW3t9xREclxiNxC5Klc8U=;
 b=e3CSC+5vl2zrpJmVn+LzwXzN98xN9TnH77csdK9DZpQtRq759AFco9YqNaAb6aFQzRl7xkScxohd2vNrkWKMPu1z/+tZoD0TuLB0KqrbwK19LBAobgI9wXVwgFZrczw5QCwCYLZfRIKe6wlVLXgVgGTx+4XXC9XMM8g4qNrmun7R/6hXz7hB/OP7oYvaz8ANSzR5tFAO+vI0TBD/rwnqD4vObjtRh2x6/PfEC6qLGvA8aJsYTbCv8ryCFmP95gdt6uNcX26OnxvhiPKrEYLuBW8a8WzTEBj2UJUPBEHavVcFHW/yPcsB94iIO8kwQiD+C2qnmlMxq/1XPnFdUAlj2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AqiqtZaJYqKbUaL5ZYOjyCXW3t9xREclxiNxC5Klc8U=;
 b=BsmlZbmwBxySODLH8t4zwl44IKxxvPSlt7/DdBTm09MUtDUB1aACUzrDdCAV9HsUpK8GoF0PDi1T3XocDMkg31Wx7yhvgNTFqDR7TYxnmX4u9nhkcbcCDOK/s61zZioUfUQqTEzAQ2WtsP3RDrgcgkn8LACdbAWGYzLmGvhcVAA=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4441.eurprd04.prod.outlook.com (52.135.141.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 01:55:28 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 01:55:28 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Mark Rutland <mark.rutland@arm.com>, John Garry <john.garry@huawei.com>
Subject: RE: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
Thread-Topic: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
Thread-Index: AQHV5nc2eARks93Kg0mXKllKiXweZKghLweAgAAOKwCAAAQfgIAAdZ8Q
Date: Wed, 19 Feb 2020 01:55:28 +0000
Message-ID: <DB7PR04MB46188F06D6CEA1430712E648E6100@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <20200218125707.GB20212@willie-the-truck>
 <a40903fe-d52f-96c6-a06a-fe834d71d625@huawei.com>
 <20200218133943.GF20212@willie-the-truck>
 <627cbc50-4b36-7f7f-179d-3d27d9e0215a@huawei.com>
 <20200218170803.GA9968@lakrids.cambridge.arm.com>
 <cb004f43-b2a4-ae23-9fd3-0f70bd69701b@huawei.com>
 <20200218181331.GB9968@lakrids.cambridge.arm.com>
In-Reply-To: <20200218181331.GB9968@lakrids.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [222.93.234.203]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 20a59de5-13ba-49ae-cef0-08d7b4decb4a
x-ms-traffictypediagnostic: DB7PR04MB4441:
x-microsoft-antispam-prvs: <DB7PR04MB4441196CEF1BA5DFB1C273E0E6100@DB7PR04MB4441.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(366004)(136003)(346002)(189003)(199004)(5660300002)(81166006)(186003)(4326008)(26005)(6506007)(316002)(7696005)(53546011)(110136005)(2906002)(81156014)(8936002)(8676002)(54906003)(66476007)(33656002)(64756008)(478600001)(66556008)(66446008)(7416002)(55016002)(71200400001)(9686003)(76116006)(86362001)(52536014)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4441;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z/QoKtsTcb7iYI0X19jrBJzv/FRhuUn1ZYjJFko8EY3r9c2M5xKDolemku5KN05y43odwRqa0Y36qAOmHY6FiAQ98Obb+ehnhzAW8Z+E6KvGKTxaUd6lDEfZU8QxCxE7TX8xoe/8NLSB+hxTjtXNoxOyhGTS1Ltt5yGoFKGfcqdyLZIgqJOJdzALnboitqtxqGPTdHENHboh74PnsSZ5NnY7ZjmarEaH9nIQSRuFLH55zwSi6+3sIu7oWQD2LL9sji5Pc4va9wIF/keY5ayUVqImXPVvDbtFXELrB0jQuIJ8BNJcfyx4rCQFisZXAzprJ6Mi2z/s4ytG5Ggwf20cZEeZrGdOP7plwT5Hoo/aHV4WYx2xkeDXvoelOitVID+uT92VBroqkaRP7s9P9aybrLjkQZgHz7m4f3059nDGalkhl47kuCEW+Cm2LbINCF2H
x-ms-exchange-antispam-messagedata: 5qb3JSFXSwpmlM4lQKk4FGItIOXi6+Nt6iFNGXyUVz04ftAiSl0ZwXPp6jHHW6BG5alfNOERKl0Zj5B1Ula11BmQQlIagXVWvHKRobbaxlB8G9LFjHffPSpdVN18dXLcM2BhUD3rEnFmcLq6ibmnrw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a59de5-13ba-49ae-cef0-08d7b4decb4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 01:55:28.1701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i1ReZOuTDlSAhkOpwahEQ7cNSgUCg5APUDUtpHtAPGAqv5296VgQzOXprYC64uKMHYoshM0sVo+WhhtjqnQZWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4441
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_175533_387545_B2BA8E09 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "ak@linux.intel.com" <ak@linux.intel.com>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>, Linuxarm <linuxarm@huawei.com>,
 "acme@kernel.org" <acme@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "james.clark@arm.com" <james.clark@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hcmsgUnV0bGFuZCA8bWFy
ay5ydXRsYW5kQGFybS5jb20+DQo+IFNlbnQ6IDIwMjDE6jLUwjE5yNUgMjoxNA0KPiBUbzogSm9o
biBHYXJyeSA8am9obi5nYXJyeUBodWF3ZWkuY29tPg0KPiBDYzogYWtAbGludXguaW50ZWwuY29t
OyBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPjsNCj4gc3V6dWtpLnBvdWxv
c2VAYXJtLmNvbTsgcGV0ZXJ6QGluZnJhZGVhZC5vcmc7IFdpbGwgRGVhY29uDQo+IDx3aWxsQGtl
cm5lbC5vcmc+OyBMaW51eGFybSA8bGludXhhcm1AaHVhd2VpLmNvbT47IGFjbWVAa2VybmVsLm9y
ZzsNCj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgWmhhbmdzaGFva3VuIDx6aGFuZ3No
YW9rdW5AaGlzaWxpY29uLmNvbT47DQo+IGFsZXhhbmRlci5zaGlzaGtpbkBsaW51eC5pbnRlbC5j
b207IG1pbmdvQHJlZGhhdC5jb207DQo+IGphbWVzLmNsYXJrQGFybS5jb207IG5hbWh5dW5nQGtl
cm5lbC5vcmc7IGpvbHNhQHJlZGhhdC5jb207DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZzsgcm9iaW4ubXVycGh5QGFybS5jb207IFN1ZGVlcCBIb2xsYQ0KPiA8c3VkZWVw
LmhvbGxhQGFybS5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggUkZDIDAvN10gcGVyZiBwbXUt
ZXZlbnRzOiBTdXBwb3J0IGV2ZW50IGFsaWFzaW5nIGZvcg0KPiBzeXN0ZW0gUE1Vcw0KDQpbLi4u
XQ0KPiA+IEFuZCB0eXBpY2FsbHkgbW9zdCBQTVUgSFcgd291bGQgaGF2ZSBubyBJRCByZWcsIHNv
IHdoZXJlIHRvIGV2ZW4gZ2V0DQo+ID4gdGhpcyBpZGVudGlmaWNhdGlvbiBpbmZvPyBKb2FraW0g
Wmhhbmcgc2VlbXMgdG8gaGF2ZSB0aGlzIHByb2JsZW0gZm9yDQo+ID4gdGhlIGlteDggRERSQyBQ
TVUgZHJpdmVyLg0KPiANCj4gRm9yIGlteDgsIHRoZSBEVCBjb21wYXQgc3RyaW5nIG9yIGFkZGl0
aW9uYWwgcHJvcGVydGllcyBvbiB0aGUgRERSQyBub2RlDQo+IGNvdWxkIGJlIHVzZWQgdG8gaW1w
bHkgdGhlIGlkLg0KDQpIaSBNYXJrLA0KDQpZZXMsIGFjdHVhbGx5IHdlIGNhbiBleHBvc2Ugc29t
ZXRoaW5nIGxpa2UgRERSQ19JRCB0byBpbmRpY2F0ZSBlYWNoIHNwZWNpZmljIEREUiBjb250cm9s
bGVyLCB0byBwb2ludCBvdXQgdGhlIGZpbHRlciBmZWF0dXJlLg0KQnV0LCBldmVuIHRoZSBTb0Nz
IGludGVncmF0ZWQgdGhlIHNhbWUgRERSQ19JRCwganVzdCBzYXkgdGhhdCB0aGV5IGhhdmUgdGhl
IHNhbWUgRERSQyBjb250cm9sbGVyLg0KDQpGcm9tIHVzZXIgc3BhY2UsIHRoZSB1c2FnZSBpcyBk
aWZmZXJlbnQsIGZvciBleGFtcGxlOg0KDQppLk1YOE1NIGFuZCBpLk1YOE1OLCB0aGV5IHVzZSB0
aGUgc2FtZSBkcml2ZXIoRERSQ19JRCkgYW5kIGNvcnRleC1hNTMgaW50ZWdyYXRlZC4NCg0KSWYg
d2Ugd2FudCB0byBtb25pdG9yIFZQVSwgdGhlaXIgKm1hc3RlciBpZCogaXMgZGlmZmVyZW50IGZy
b20gU29Dcy4NCk9uIGkuTVg4TU0sIGV2ZW50IGlzIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lk
PTB4MDgvDQpPbiBpLk1YOE1OLCBldmVudCBpcyBpbXg4X2RkcjAvYXhpZC1yZWFkLGF4aV9pZD0w
eDEyLw0KDQpJIHRyeSB0byB3cml0ZSBhIEpTT04gZmlsZSB0byB1c2UgdGhlc2UgZXZlbnRzLCBm
b3Igbm93LCBJIG9ubHkgY2FuIGxvY2F0ZSB0aGUgZmlsZSBhdCB0aGUgZGlyZWN0b3J5OiB0b29s
cy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9hcm0vY29ydGV4LWE1My8NCg0KUGVyZiB0b29s
IGxvYWRzIGFsbCBldmVudHMgd2hlbiBDUFVJRCBtYXRjaGVkLCB3aGljaCBpcyBub3cgdW5yZWFz
b25hYmxlLCB3ZSB3YW50IHJlbGF0ZWQgZXZlbnRzIGFyZSBsb2FkZWQgZm9yIHNwZWNpZmljIFNv
Qy4NCg0KQWxsIGV2ZW50cyB3aWxsIGFsc28gYmUgbG9hZGVkIGlmIHdlIHVzZSBERFJDX0lEIHRv
IG1hdGNoIGluIHRoZSBmdXR1cmUsIHRoaXMgc2VlbXMgdG8gbm90IGJlIGEgZ29vZCBpZGVhbC4N
Cg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQoNClsuLi4uXQ0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
