Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6CF1ABD47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5ZdO3blcXalPXofj+l69D/6Js8HD8IsjQFwRkJfy+k=; b=knLQk+xQ8sck7P
	f3hYvd4JF08424YgL/VSqy/AjkEzrk4HF2xllRC2FGqgn9m2rkFQAocPO5u37HM25BIgFeoyCV9sb
	KsOXzVNlXBPzxXoN+67Lanuj3vl3hlSCaMpfQjFWYWnAaBkKbSXrNr6FI5f/jNdGXfD5D+Fy6RW+i
	a/eEV9BkFViiEYmPZy1HD0VGxFium3GwoT4yW7ancsz9PXnwtmiApVOAQRWxJpD48NB65Dqt+VwF9
	AWllOqCUTA5+Hcz9P7Ilt1aCRbJpa45tRkSHI5wOIVSoksoxHUVFOqlfTFsd0cRYFEE7QSh/TgCz4
	J6jotv+fikUcT8zUwRKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP1B9-00007p-4B; Thu, 16 Apr 2020 09:51:27 +0000
Received: from mail-eopbgr60043.outbound.protection.outlook.com ([40.107.6.43]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP1B0-000064-JB
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:51:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Za7g+J1hGWtHW5aHuY7BTLNFvsn/ZPZxnG9us90WaXG+6RXv/l2/ZHSKJB5XmN9VTKnK6pdjy677Ha+Wh12XgFltwa8KCxtdgn8IA5n5mpJbuzIHATLppD3OalckjiLeMauRb2e2fLnTckNDVFOm8wcd93h71L1wJn1rMISvOhHJJAkPLkiUUvw/9lVJCqTrnuDYiI889wthKDTTM4xG9riovIB+24DJrkS8b7Ok0gbrQyOgUokrZgb4MiQ/VokqL7UBsjV6nj+o2YcxOh3xIVWU0YnXIoHWSpSUuQwfBHWXlzs6iaMzQGaby86osj4cd9douGTocPJe8XxwpFOIWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1HeJMqU3hBAWXT+hhUHnv2nYzbcEByK8MS4qVz4KdE=;
 b=HIbCN1prK3mQqXR8uUP79KPuyul5YzJrWLfEwj52b8RFZUeDU0AQuMfoTWh1k3SYEzfMuG2MAM6/DQV/43/SHqNhb7xz/yro2l2XgLMDHgx/qWl8zIZMN/TYiEp8C0cJs/IEuKvptIcbRZejZs9yfP8fV8z9+DXNOqHbfB8ePV/NgjuRnETGYUAFXmBIrko/V9Q1G+tyIyKlv6sgfTSs+ThEU+XeMNv1AKjfUy2vncNhQk5URmi2so+6Q1yS1p45ivpMFKmTnG7S6t5TYSxscs0jVWGjzlhwN3m648jYvTZKfbpuq8VEfsvdzIozj9mjuyFx4BV2Gah9A43AcqKQdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1HeJMqU3hBAWXT+hhUHnv2nYzbcEByK8MS4qVz4KdE=;
 b=H9TyLFAnAEt7VH3L8+qjwtZ0mXtTYISYl7dNv8zmlFT/DFAOkBhAxoMgQlDKI2kEEginjjSCW1BR4EaGAz6kKO+LLuYP3Ovg75bEdxZWfm/62CC4ZXti/MHo6cjJMiK0f0bsZ2zOYbfBRJeAk8YTv/1kwpbZ6ulWfl4He/GAJOw=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8SPR01MB0031.eurprd04.prod.outlook.com (2603:10a6:10:13d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Thu, 16 Apr
 2020 09:51:13 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%8]) with mapi id 15.20.2921.027; Thu, 16 Apr 2020
 09:51:13 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH 2/2] perf/imx_ddr: Add stop counter support for i.MX8MP
Thread-Topic: [PATCH 2/2] perf/imx_ddr: Add stop counter support for i.MX8MP
Thread-Index: AQHV69tuZyXpBq3blUKm1+CLo0yF5ag1Mp2AgAEBQ0CARZ0ekA==
Date: Thu, 16 Apr 2020 09:51:13 +0000
Message-ID: <DB8PR04MB67952EC95A5BE39C60F7F1FCE6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
 <20200225125644.18853-2-qiangqing.zhang@nxp.com>
 <20200302112441.GB7995@willie-the-truck>
 <DB7PR04MB46189CEDD1DFD5B5B6C1FD15E6E40@DB7PR04MB4618.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB46189CEDD1DFD5B5B6C1FD15E6E40@DB7PR04MB4618.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 704bb644-94b7-4a64-c933-08d7e1ebb307
x-ms-traffictypediagnostic: DB8SPR01MB0031:|DB8SPR01MB0031:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8SPR01MB0031CB3E0503629DEF88C9A5E6D80@DB8SPR01MB0031.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0375972289
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(39860400002)(376002)(346002)(9686003)(55016002)(7696005)(8676002)(316002)(6506007)(53546011)(4326008)(8936002)(54906003)(33656002)(26005)(81156014)(478600001)(6916009)(186003)(71200400001)(5660300002)(52536014)(66476007)(66556008)(64756008)(66446008)(66946007)(2906002)(76116006)(86362001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XJjYsmTfJFaYDGM0PfNvaxPEO2BHK8uj7DY52gqYdPfKln6Cbs5FwrqplBr0QrxwFZrkkPRQN2Xdffl/zgSeA6Tk5WrcGoVO7N/42BbrzL497BZS/AkGdgl/s6bGyz/9V2tLA/u+Y70cu3hQDdA5v0X/E30btheKUVRXXw4tASxgsM2KD0w9pCvMzziQSniC/ZIFKvNgqdK97h8K8Esl7zvrO+5SLfJWjvkDoDGtAH4XDsHGOM5BIiZQBlEJT/1BCedhKyrB5vChcvMm5zuuhbYX3CUz1iA3Pnw8d6ZaC3gKKlD0evcdsfDzHNnh2A48VoAAyHOFvEyiqYvsSXOLXo6iVwOWgd8t+xRnRtzn5kERL/Cbqu0nYWlYVz8yJmjbfuQbpqUO2KQxSsHJ77588cAPMa6i5/h7/JoNSzD2kexj0KLz6l+gijySTsdFNY+I
x-ms-exchange-antispam-messagedata: C6zeA69ITWphG/k4nsoAE1dvkTQK+vS6TO2ikO7sbLaf9mQhH1G1jay/gunFpWQfEw5LwBbvX1CC2Qfc/dFMQO2ZpGJrHTo7wsTS06mG897sVoFVhuxiaYmwMlr5Hzf2XnWhDCLRwikQjSd4Jal76Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 704bb644-94b7-4a64-c933-08d7e1ebb307
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2020 09:51:13.2131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sT9EM/uy/4jKLyA+Tg/7DRFKWgv4eX47vw20iXggkVrRigt989JXCNDtI/OqfvS0HGbkZipRsb381czDqjLeLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8SPR01MB0031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_025118_634951_06793B3D 
X-CRM114-Status: GOOD (  30.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.43 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpIaSBXaWxsLA0KDQpBbnkgY29tbWVudHMgYWJvdXQgdGhpcyBpc3N1ZT8gVGhhbmtzIGEgbG90
IQ0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiBGcm9tOiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0K
PiBTZW50OiAyMDIwxOoz1MIzyNUgMTM6MzUNCj4gVG86IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5l
bC5vcmc+DQo+IENjOiBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgcm9iaW4ubXVycGh5QGFybS5jb207
IGRsLWxpbnV4LWlteA0KPiA8bGludXgtaW14QG54cC5jb20+OyBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUkU6IFtQQVRDSCAyLzJdIHBlcmYvaW14X2Rk
cjogQWRkIHN0b3AgY291bnRlciBzdXBwb3J0IGZvciBpLk1YOE1QDQo+IA0KPiANCj4gPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5l
bC5vcmc+DQo+ID4gU2VudDogMjAyMMTqM9TCMsjVIDE5OjI1DQo+ID4gVG86IEpvYWtpbSBaaGFu
ZyA8cWlhbmdxaW5nLnpoYW5nQG54cC5jb20+DQo+ID4gQ2M6IG1hcmsucnV0bGFuZEBhcm0uY29t
OyByb2Jpbi5tdXJwaHlAYXJtLmNvbTsgZGwtbGludXgtaW14DQo+ID4gPGxpbnV4LWlteEBueHAu
Y29tPjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+ID4gU3ViamVjdDog
UmU6IFtQQVRDSCAyLzJdIHBlcmYvaW14X2RkcjogQWRkIHN0b3AgY291bnRlciBzdXBwb3J0IGZv
cg0KPiA+IGkuTVg4TVANCj4gPg0KPiA+IE9uIFR1ZSwgRmViIDI1LCAyMDIwIGF0IDA4OjU2OjQ0
UE0gKzA4MDAsIEpvYWtpbSBaaGFuZyB3cm90ZToNCj4gPiA+IEREUiBwZXJmIGRyaXZlciBub3cg
b25seSBzdXBwb3J0cyBmcmVlLXJ1bm5pbmcgZXZlbnQgY291bnRlcnMNCj4gPiA+IChjb3VudGVy
MS8yLzMpLCB3aGljaCBtZWFucyB0aGF0IGV2ZW50IGNvdW50ZXJzIHdpbGwgY29udGludWUNCj4g
PiA+IGNvdW50aW5nIGV2ZW4gdGhleSBhcmUgb3ZlcmZsb3cuDQo+ID4gPg0KPiA+ID4gSG93ZXZl
ciwgdGhlIHNpdHVhdGlvbiBpcyBjaGFuZ2VkIG9uIGkuTVg4TVAsIGV2ZW50IGNvdW50ZXJzIGFy
ZSBub3QNCj4gPiA+IGZyZWUtcnVubmluZyBhbnkgbW9yZS4gRXZlbnQgY291bnRlcnMgd291bGQg
c3RvcCBjb3VudGluZyBpZiB0aGV5DQo+ID4gPiBhcmUgb3ZlcmZsb3cuIFNvIHdlIG5lZWQgY2xl
YXIgZXZlbnQgY291bnRlcnMgd2hlbiBjeWNsZSBjb3VudGVyIG92ZXJmbG93Lg0KPiA+ID4NCj4g
PiA+IFRoZSBwYXRjaCBhZGRzIHN0b3AgY291bnRlciBzdXBwb3J0IHdoaWNoIHdvdWxkIGJlIGNv
bXBhdGlibGUgdG8NCj4gPiA+IGZyZWUtcnVubmluZyBjb3VudGVyLg0KPiA+DQo+ID4gSG1tLCBh
cmUgeW91IHNheWluZyB0aGF0IHRoZSBoYXJkd2FyZSBiZWhhdmlvdXIgaGFzIGNoYW5nZWQgaGVy
ZSwgc28NCj4gPiB0aGF0IG5ld2VyIFNvQ3MgZm9yY2UgdGhlIGJlaGF2aW91ciB3aGVyZSBhbGwg
dGhlIGNvdW50ZXJzIHN0b3Agd2hlbg0KPiA+IG9uZSBvdmVyZmxvd3M/IElzIHRoZXJlIGFueSB3
YXkgdG8gY29udHJvbCB0aGF0IGJlaGF2aW91cj8NCj4gSGkgV2lsbCwNCj4gDQo+IFllcywgdGhl
IGhhcmR3YXJlIGJlaGF2aW9yIGhhcyBjaGFuZ2VkIGluIGkuTVg4TVAuDQo+IA0KPiBMZWdhY3kg
U29Dcywgd2hlbiBjb3VudGVyMChjeWNsZSBjb3VudGVyKSBvdmVyZmxvd3MsIGl0IHdpbGwgbG9j
ayBpdHNlbGYgYW5kDQo+IG90aGVyIGNvdW50ZXJzLCB0aGVuIGdlbmVyYXRlIGFuIGludGVycnVw
dC4gQnV0LCB3aGVuIG90aGVyDQo+IGNvdW50ZXJzKGNvdW50ZXIxLzIvMykgb3ZlcmZsb3csIGl0
IHdpbGwgY29udGludWUgY291bnRpbmcgYW5kIG5vdCBzdG9wLg0KPiBJbiBpLk1YOE1QLCBhbGwg
aXMgdGhlIHNhbWUgYXMgbGVnYWN5IFNvQ3MsIGJlc2lkZXMgdGhhdCB3aGVuIG90aGVyDQo+IGNv
dW50ZXJzKGNvdW50ZXIxLzIvMykgb3ZlcmZsb3csIGl0c2VsZiB3aWxsIHN0b3AgY291bnRpbmcs
IG5lZWQgY2xlYXIgY291bnRlcg0KPiB2YWx1ZSBtYW51YWxseSwgdGhlbiBpdCB3aWxsIHN0YXJ0
IGNvdW50aW5nIGFnYWluLg0KPiBTbywgaW4gY291bnRlcjAgb3ZlcmZsb3cgaW50ZXJydXB0IGhh
bmRsZXIsIHdlIG5lZWQgY2xlYXIgY291bnRlcjEvMi8zIHZhbHVlLA0KPiBzaW5jZSBjb3VudGVy
MCB3aWxsIGFsd2F5cyBvdmVyZmxvdyBiZWZvcmUgb3RoZXIgY291bnRlcnMsIHRoYXQgY2FuIGVu
c3VyZQ0KPiBjb3VudGVyMS8yLzMgZG9lc24ndCBsb3NlIGRhdGEuDQo+IA0KPiBOT1QgYWxsIGNv
dW50ZXJzIHN0b3Agd2hlbiBvbmUgb3ZlcmZsb3cuIENvdW50ZXIwIG92ZXJmbG93IHdpbGwgbG9j
ayBpdHNlbGYgYW5kDQo+IG90aGVyIGNvdW50ZXJzLCBvdGhlciBjb3VudGVycyBvdmVyZmxvdyBq
dXN0IHN0b3AgdGhlbXNlbHZlcy4NCj4gDQo+IE5vIHdheSB0byBjb250cm9sIHRoZSBiZWhhdmlv
ciwgaXQgaXMgdGhlIGhhcmR3YXJlIGJlaGF2aW9yLg0KPiANCj4gPiA+IEBAIC01NjYsNiArNTcx
LDI1IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBkZHJfcGVyZl9pcnFfaGFuZGxlcihpbnQNCj4gPiA+
IGlycSwgdm9pZA0KPiA+ICpwKQ0KPiA+ID4gIAkJCWN5Y2xlX2V2ZW50ID0gZXZlbnQ7DQo+ID4g
PiAgCX0NCj4gPiA+DQo+ID4gPiArCXNwaW5fbG9jaygmcG11LT5sb2NrKTsNCj4gPiA+ICsNCj4g
PiA+ICsJZm9yIChpID0gMDsgaSA8IE5VTV9DT1VOVEVSUzsgaSsrKSB7DQo+ID4gPiArCQlpZiAo
IXBtdS0+ZXZlbnRzW2ldKQ0KPiA+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ID4gKw0KPiA+ID4gKwkJ
ZXZlbnQgPSBwbXUtPmV2ZW50c1tpXTsNCj4gPiA+ICsNCj4gPiA+ICsJCWlmIChldmVudC0+aHcu
aWR4ID09IEVWRU5UX0NZQ0xFU19DT1VOVEVSKQ0KPiA+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ID4g
Kw0KPiA+ID4gKwkJLyogY2xlYXIgbm9uLWN5Y2xlIGNvdW50ZXJzICovDQo+ID4gPiArCQlkZHJf
cGVyZl9jb3VudGVyX2VuYWJsZShwbXUsIGV2ZW50LT5hdHRyLmNvbmZpZywNCj4gZXZlbnQtPmh3
LmlkeCwNCj4gPiA+ICt0cnVlKTsNCj4gPiA+ICsNCj4gPiA+ICsJCWxvY2FsNjRfc2V0KCZldmVu
dC0+aHcucHJldl9jb3VudCwgMCk7DQo+ID4gPiArCX0NCj4gPiA+ICsNCj4gPiA+ICsJc3Bpbl91
bmxvY2soJnBtdS0+bG9jayk7DQo+ID4NCj4gPiBJJ20gc3VzcGljaW91cyBvZiB0aGlzIGxvY2tp
bmcsIGFzIGl0J3MgL3ZlcnkvIGZpbmUtZ3JhaW5lZC4gV2hhdA0KPiA+IHByZXZlbnRzIHJhY2lu
ZyB3aXRoIGEgY29uY3VycmVudCBkZHJfcGVyZl9jb3VudGVyX2VuYWJsZSgpIGNhbGw/DQo+ID4g
QWxzbywgZG9lc24ndCBwZXJmIGNvcmUgbmVlZCB0byBiZSBhd2FyZSB0aGF0IHlvdSdyZSBzdG9w
cGluZyBjb3VudGVycyBoZXJlPw0KPiANCj4gSSBhbHNvIHRyeSB0byBPTkxZIGNsZWFyIGNvdW50
ZXJzKGNvdW50ZXIxLzIvMykgZnJvbSBpbnRlcnJ1cHQgaGFuZGxlciwgbGlrZQ0KPiBiZWxvdywg
d2l0aG91dCBhIHNwaW5sb2NrLiBJdCBjYW4gd29yaywgYnV0IEkgdGhpbmsgbWF5IHRoZXJlIGFy
ZSBzb21lIHBpdGZhbGxzDQo+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IE5VTV9DT1VOVEVSUzsg
aSsrKSB7DQo+ICsgICAgICAgICAgICAgICBpZiAoIXBtdS0+ZXZlbnRzW2ldKQ0KPiArICAgICAg
ICAgICAgICAgICAgICAgICBjb250aW51ZTsNCj4gKw0KPiArICAgICAgICAgICAgICAgZXZlbnQg
PSBwbXUtPmV2ZW50c1tpXTsNCj4gKw0KPiArICAgICAgICAgICAgICAgaWYgKGV2ZW50LT5ody5p
ZHggPT0gRVZFTlRfQ1lDTEVTX0NPVU5URVIpDQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNv
bnRpbnVlOw0KPiArDQo+ICsgICAgICAgICAgICAgICAvKiBjbGVhciBub24tY3ljbGUgY291bnRl
cnMgKi8NCj4gKyAgICAgICAgICAgICAgIGRkcl9wZXJmX2NvdW50ZXJfZW5hYmxlKHBtdSwgZXZl
bnQtPmF0dHIuY29uZmlnLA0KPiArIGV2ZW50LT5ody5pZHgsIHRydWUpOw0KPiArDQo+ICsgICAg
ICAgICAgICAgICBsb2NhbDY0X3NldCgmZXZlbnQtPmh3LnByZXZfY291bnQsIDApOw0KPiArICAg
ICAgIH0NCj4gDQo+IFN1Y2ggY2FzZSwgd2hlbiBjYWxsIGRkcl9wZXJmX2NvdW50ZXJfZW5hYmxl
IHRvIGNsZWFyIGNvdW50ZXIxLCBidXQgaGF2ZSBub3QNCj4gc2V0IHByZXZfY291bnQgZXF1YWwg
MCB5ZXQgaW4gdGhlIGludGVycnVwdCBoYW5kbGVyLiBDb25jdXJyZW50bHksDQo+IGRkcl9wZXJm
X2V2ZW50X3VwZGF0ZSBjYWxsIGRkcl9wZXJmX3JlYWRfY291bnRlciB0byByZWFkIHRoZSBjb3Vu
dGVyMSwgaXQNCj4gd2lsbCByZXR1cm4gMC4gRGVsdGEgKG5ld19yYXdfY291bnQgLSBwcmV2X3Jh
d19jb3VudCkgd2UgY2FsY3VsYXRlIHdvdWxkIGJlDQo+IGluY29ycmVjdC4gU28gSSBhZGQgYSBz
cGlubG9jaywgZm9yIHRoYXQgY2xlYXIgY291bnRlcjEvMi8zIGFuZCB1cGRhdGUNCj4gY291bnRl
cjEvMi8zIG5ldmVyIGNvbmN1cnJlbnRseSBoYXBwZW4uIEl0IGlzIHNhZmUgZm9yIGNvdW50ZXIw
IHRvIGNsZWFyIHRoZW4NCj4gdXBkYXRlIHRoZSBjb3VudGVyLCBzaW5jZSBpdCBpcyBhY3R1YWxs
eSBvdmVyZmxvdy4NCj4gDQo+IFRoaXMgaXMgdGhlIHdheSBJIHRha2UgdG8gc3VwcG9ydCBzdG9w
IGNvdW50ZXIsIG1heSBleGlzdCBhIGJldHRlciBzb2x1dGlvbi4gV2lsbCwNCj4gY291bGQgeW91
IHNoYXJlIG1lIGhvdyB0byBpbXBsZW1lbnQgaXQgbW9yZSByZWFzb25hYmxlPyBUaGFua3MuDQo+
IA0KPiA+IEZpbmFsbHksIHRoaXMgbG9va3MgbGlrZSBpdCdzIGFuIHVuY29uZGl0aW9uYWwgY2hh
bmdlIGluIHVzZXItdmlzaWJsZQ0KPiA+IGJlaGF2aW91ci4gV2h5IGRvZXNuJ3QgaXQgYnJlYWsg
ZXhpc3RpbmcgdXNhZ2Ugb2YgdGhlIHBlcmYgdG9vbD8NCj4gDQo+IEkgZG9uJ3QgcXVpdGUgZm9s
bG93IHlvdSwgY291bGQgeW91IGV4cGxhaW4gbW9yZT8NCj4gDQo+IEJlc3QgUmVnYXJkcywNCj4g
Sm9ha2ltIFpoYW5nDQo+ID4gV2lsbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
