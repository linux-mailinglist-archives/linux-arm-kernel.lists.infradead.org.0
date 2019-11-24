Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1417810842E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 17:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZagQmH3f+SYVRAZlPy9gN4/oeSELsubqzwF25QYYuA=; b=ghsZov5bUF2mhE
	m2ceRqZ6U0L5qIQNuqckhSQIU8LAksh8/i6HkJ4K4h1X0F+uFnZkDKMnJ85GMdA2VHn6Tok8pjCbJ
	FyEFEomX6cOtU4wgTGs1nQjMSSJjhl5It/wfr/4Lr4m4fl2p91c+ktZckG6WkP4G41+dc+AqP8pZO
	BuixXtpa/EAWiEHUINIHQlPa8PLJu4ye0GPWIgCI+yiRhd4YQhYJT63Kc8+O8q3Bbk+lOz4hM/L3f
	G+HlWalio3wWQJWwjTE04ZCfpQyCrlyg7wXbtRYr05cLQvS58kdFZrw9l/xzFuPbUQaIDAukuatlA
	qkWLRw1jksEWvDo90wzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYueO-0001aV-OM; Sun, 24 Nov 2019 16:22:16 +0000
Received: from mail-eopbgr40128.outbound.protection.outlook.com
 ([40.107.4.128] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYueF-0001Zv-GV
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 16:22:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJLkrle+e63YXMC/m3XfiAoAKY50EWspJlSa366wLTwCIn18qLnTGCHC0ER9783H65m/vwTVm6NhxJgQCfaaOJdu27Ni4fMSQjR9QDQ7S6uu6bJbWDyhrLlnjqlZ4AnhOnKdemYbotPjfibV/G56M/ZIr05ERBySBXw5TAESAwSj3rCBmz9w41nJSgLz1GTbJ77L1xjvXdNia4ef8EXDJ5+bQKuX22IphiNxflJpJesMNfwUcrv5pmAwqxlvf68bDR8t1zHhCAQ4FA5/5qOjsu8D21dGRxu0jGxOIvY50DQ8IwTi7yW8bRqwFyKvVHHA8DnvbybPGscF3gNdB6pAjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cYOkZL65UtURR6p4hHU2PCQakItfbfhe0AZMSUI4/7E=;
 b=bjO6BzU5ehpHlK1OtZfZKFqP9DoJXr/8lWFSpBbQ6jfGWRzoseRGoQ1OTPUbGhwdf1OhDHdkYmZRJjyDvG6jRBjZkNOpiMb8pYqKhDKQBBNX8WNYSGdOM2cE0UooUDAqg7eBJhqk0RnB5A7s0PUyEJ5IXxsqVASUheIqrPLwI5GrKviJSQtyV46h4r3q5wjv4bSH3xxHFdv6HlHzELG8JgJuEOZ4uNS3vb00PYtIbe10OAXzBB6xKE/Ge/BBEyfyX5F4uM3u9IEX19Aeo70EzGNl1tw0WXT6P7aF8C95XNN4JdZNWRAIakERR4ijTDEWtnZmEoi+aMJQ8nS/N/RqVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cYOkZL65UtURR6p4hHU2PCQakItfbfhe0AZMSUI4/7E=;
 b=PNcJ1TFdQE0nMuYr4965s6bXQYw6gJtS0U2hHhLUMvqAcaOSghlwphqlZJJjH3sWU2xoyNiJYyJ6057oWwyPkmT9jIIxaFqnD3NYC9+3zw8Rv7aVEY65Ry5fm0DEjxEaiC+ZTSw4qcmZ9dGacairSAGn2YMk5HTIyL3mCSAulCI=
Received: from AM0PR05MB5156.eurprd05.prod.outlook.com (20.178.20.19) by
 AM0PR05MB5906.eurprd05.prod.outlook.com (20.178.118.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Sun, 24 Nov 2019 16:22:00 +0000
Received: from AM0PR05MB5156.eurprd05.prod.outlook.com
 ([fe80::d9d5:8f93:482:2a21]) by AM0PR05MB5156.eurprd05.prod.outlook.com
 ([fe80::d9d5:8f93:482:2a21%2]) with mapi id 15.20.2474.021; Sun, 24 Nov 2019
 16:21:59 +0000
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Baruch Siach <baruch@tkos.co.il>
Subject: Re: CP110 Comphy Issue
Thread-Topic: CP110 Comphy Issue
Thread-Index: AQHVopXYeyT7V1R5sE6r1B076sCTaKeZ7RgAgABx2YCAADM+gA==
Date: Sun, 24 Nov 2019 16:21:59 +0000
Message-ID: <9980B353-AC56-421A-A80F-F8371B84818A@voleatech.de>
References: <7BB0B44E-A78D-4DDF-962E-5C8130B6F31A@voleatech.de>
 <874kythgsl.fsf@tarshish> <20191124151835.7e2b549a@xps13>
In-Reply-To: <20191124151835.7e2b549a@xps13>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sven.auhagen@voleatech.de; 
x-originating-ip: [37.24.174.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b939382a-91c1-4bb0-fc35-08d770fa6ecb
x-ms-traffictypediagnostic: AM0PR05MB5906:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR05MB590642062073269364A601F1EF4B0@AM0PR05MB5906.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02318D10FB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39830400003)(366004)(136003)(396003)(346002)(189003)(199004)(256004)(7116003)(76176011)(305945005)(102836004)(6116002)(99286004)(86362001)(14444005)(71190400001)(33656002)(186003)(14454004)(110136005)(26005)(2906002)(36756003)(508600001)(7736002)(3846002)(66066001)(4326008)(71200400001)(25786009)(15974865002)(6306002)(316002)(966005)(6512007)(5660300002)(229853002)(66946007)(76116006)(66476007)(66446008)(64756008)(66556008)(6246003)(6436002)(44832011)(2616005)(446003)(6486002)(8936002)(6506007)(66574012)(81156014)(8676002)(11346002)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR05MB5906;
 H:AM0PR05MB5156.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: voleatech.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HmWAj6oA1+GUAmKB/F0Ryuyfunitd9mxETleAMik0CVPP25LIjKyLToWVuu/RJx5HWA+uaW1m2TW16C0OUGsCTf+jWp76MUhZKmz3wY62QdF/Dvd70w5rzVMj12obnKkjdIH/TtSjbX2105SvrYRiGa+RUB6lOjEaX2Yf5HmEf0LcXtzrbpqraXm/Ctt5SCelGZwlOw9DzahHgbp5AW6NfXSF/ZSvRFO32P31tZSUgNqve0aitjUFV35w7RnCMciSJ/T9C4mWBUbl6pMaRw1KvVG9O3Vqqq3BNzkV1l92xl+dy1bUcTts/R8vBNXzUs4oyJ+e7rzl8afNh6wsfjwxzG02t3iHG8uSuoxqUYOhU7HltUuJxSzansgxWmHAdz4tFp2MZwqkQX+woGcPwEyTPeUEMxmFZkmjZKGNFXQpJO2E7kDzyOmcqtSAtpD5zhL68GD+pOSFdjrGrb2kP2+vE2iQLl7E8KglZo1kSTCtKI=
x-ms-exchange-transport-forked: True
Content-ID: <B107AB7E1BC6B843A92A5C65CD32365E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b939382a-91c1-4bb0-fc35-08d770fa6ecb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2019 16:21:59.7839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e4KxCcjErbnXPmjmyV3hpPHu442FgZovMV5ctQBJ1ahMnROQvuOe52fgWUzNwEKDWgc4dqnDMPvp2f2+asUgaouNucGCWcLPKyexQM760n8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5906
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_082208_175667_E02CA788 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.128 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlxdcOobCwNCg0KWWVzLCBJIGFtIHN1cmUgdGhlIGNvZGUgdXNlcyBBUk0gU01DIGFuZCBt
eSBBVEYgaXMgdmVyeSBuZXcsIHVwc3RyZWFtIHZlcnNpb24gYW5kIHN1cHBvcnRzIGl0Lg0KSSBh
bSBub3QgdXNpbmcgdGhlIG1hcnZlbGwgdmVyc2lvbi4NCg0KSSBhbSBhbHNvIGNhbGxpbmcgbXZl
YnVfY29tcGh5X3Bvd2VyX29mZiBiZWZvcmUgaW5pdGlhbGl6aW5nIENPTVBIWSBhbmQgSSBjYW4g
dmlzdWFsbHkgc2VlIG15IE5JQ3MgcmVzZXR0aW5nIChMRURzIG9mZiBhbmQgYmFjayBvbikgYXQg
TGludXggS2VybmVsIHN0YXJ0Lg0KDQpUaGUgS2VybmVsIDUuNCBSQzggYm9vdCBoYW5ncyBvbiBQ
Q0llIFBoeSB1cC4NCkkgd2lsbCBzZW5kIHlvdSBsb2dzIHRvbW9ycm93IG1vcm5pbmcsIHdoZW4g
SSBoYXZlIHRoZSBkZXZpY2UuDQoNCllvdSBjYW4gYWxzbyBzZWUgdGhlIG1hcnZlbGwgcGF0Y2hl
cyBoZXJlOg0KDQpodHRwczovL3ZvbGVhdGVjaC1teS5zaGFyZXBvaW50LmNvbS86dTovZy9wZXJz
b25hbC9zdmVuX2F1aGFnZW5fdm9sZWF0ZWNoX2RlL0VjQkZTVldkeVdaTnRJXzRIamdFRU4wQjQz
V0tRal9Kd0JZWmdFYnpGSmFUX1E/ZT1oODNnRXkNCg0KQmVzdA0KU3Zlbg0KDQpGcm9tOiBNaXF1
ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPg0KT3JnYW5pc2F0aW9uOiBCb290
bGluDQpEYXRlOiBTdW5kYXksIDI0LiBOb3ZlbWJlciAyMDE5IGF0IDM6MTggUE0NClRvOiBCYXJ1
Y2ggU2lhY2ggPGJhcnVjaEB0a29zLmNvLmlsPg0KQ2M6IFN2ZW4gQXVoYWdlbiA8c3Zlbi5hdWhh
Z2VuQHZvbGVhdGVjaC5kZT4sICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmci
IDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+DQpTdWJqZWN0OiBSZTogQ1Ax
MTAgQ29tcGh5IElzc3VlDQoNCkhpIFN2ZW4sDQoNCkJhcnVjaCBTaWFjaCA8bWFpbHRvOmJhcnVj
aEB0a29zLmNvLmlsPiB3cm90ZSBvbiBTdW4sIDI0IE5vdiAyMDE5IDA5OjMxOjA2DQorMDIwMDoN
Cg0KSGkgU3ZlbiwgTWlxdWVsLA0KT24gU3VuLCBOb3YgMjQgMjAxOSwgU3ZlbiBBdWhhZ2VuIHdy
b3RlOg0KPiBJIGFtIHRlc3RpbmcgS2VybmVsIDUuNCBSQzggd2l0aCB0aGUgbmV3IENQMTEwIGNv
bXBoeSBpbml0aWFsaXphdGlvbg0KPiBhbmQgaXQgZG9lcyBub3Qgd29yayBmb3Igb3VyIGN1c3Rv
bSBib2FyZCBvbiBDUCAxIFBDSUUwLg0KPg0KPiBJdCBoYW5ncyBvbiBwaHkgdXAgaW5kZWZpbml0
ZWx5IGR1cmluZyBib290Lg0KPg0KPiBDUDAgUENJRTAgd29ya3MgZmluZS4NCj4NCj4gSSBhbSB1
c2luZzoNCj4gKyZjcDFfcGNpZTAgew0KPiArICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOw0KPiArICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JmNwMF9wY2kxX3Jlc2V0
X3BpbnM+Ow0KPiArICAgICAgICAgICAgICBudW0tbGFuZXMgPSA8MT47DQo+ICsgICAgICAgICAg
ICAgIC8vbnVtLXZpZXdwb3J0ID0gPDg+Ow0KPiArICAgICAgICAgICAgICByZXNldC1ncGlvcyA9
IDwmY3AwX2dwaW8yIDEgR1BJT19BQ1RJVkVfTE9XPjsNCj4gKyAgICAgICAgICAgICAgLy9yeC1k
aXNhYmxlLWdwaW8gPSA8JmNwMF9ncGlvMiAyMCBHUElPX0FDVElWRV9MT1c+Ow0KPiArICAgICAg
ICAgICAgICBwaHlzID0gPCZjcDFfY29tcGh5MCAwPjsNCj4gKyAgICAgICAgICAgICAgcGh5LW5h
bWVzID0gImNwMS1wY2llMC14MS1waHkiOw0KPiArICAgICAgICAgICAgICBzdGF0dXMgPSAib2th
eSI7DQo+ICt9Ow0KPg0KPiBBbmQgdGhpcyBvbmUgd29ya3MNCj4NCj4gKyZjcDBfcGNpZTAgew0K
PiArICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPiArICAgICAgICAg
ICAgICBwaW5jdHJsLTAgPSA8JmNwMF9wY2kwX3Jlc2V0X3BpbnM+Ow0KPiArICAgICAgICAgICAg
ICBudW0tbGFuZXMgPSA8MT47DQo+ICsgICAgICAgICAgICAgIC8vbnVtLXZpZXdwb3J0ID0gPDg+
Ow0KPiArICAgICAgICAgICAgICByZXNldC1ncGlvcyA9IDwmY3AwX2dwaW8yIDAgR1BJT19BQ1RJ
VkVfTE9XPjsNCj4gKyAgICAgICAgICAgICAgLy9yeC1kaXNhYmxlLWdwaW8gPSA8JmNwMF9ncGlv
MiAxOSBHUElPX0FDVElWRV9MT1c+Ow0KPiArICAgICAgICAgICAgICBwaHlzID0gPCZjcDBfY29t
cGh5MCAwPjsNCj4gKyAgICAgICAgICAgICAgcGh5LW5hbWVzID0gImNwMC1wY2llMC14MS1waHki
Ow0KPiArICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7DQo+ICt9Ow0KPiArDQo+DQo+IEkg
YW0gdXNpbmcgdS1ib290IDIwMTkuMDQgYW5kIEFURiAyLjEuDQo+IFBDSWUgaXMgaW5pdGlhbGl6
ZWQgYnkgVS1Cb290Lg0KPg0KPiBJIHdhcyB1c2luZyBhIHBvcnRlZCB2ZXJzaW9uIG9mIHRoZSBj
b21waHkgY29kZSBmcm9tIHRoZSBtYXJ2ZWxsIGxpbnV4DQo+IGdpdGh1YiBiZWZvcmUgd2hpY2gg
ZGlkIG5vdCBoYXZlIHRoaXMgcHJvYmxlbS4NCj4NCj4gTGV0IG1lIGtub3cgaWYgSSBjYW4gZGVi
dWcgYW55dGhpbmcgaGVyZSBvbiBteSBlbmQuDQpPbmUgaW1wb3J0YW50IGJpdCBvZiBtaXNzaW5n
IGluZm9ybWF0aW9uIGlzIHRoYXQgdGhlIGJvYXJkIGlzIGJhc2VkIG9uDQpBcm1hZGEgODA0MC4N
Cg0KQ2FuIHlvdSBzaGFyZSB0aGUgbG9ncz8gSG93IGRvZXMgaXQgZmFpbD8gUGxlYXNlIHNoYXJl
IHRoZSBmdWxsIGxvZy4NCg0KQWxzbywgYXJlIHlvdSBzdXJlIHlvdXIgQVRGIGhhcyBDT01QSFkg
c3VwcG9ydD8gUmVjZW50IGtlcm5lbHMgdXNlIEFSTQ0KU01DIGNvbnZlbnRpb24gdG8gcmVxdWVz
dCBDT01QSFkgaW5pdGlhbGl6YXRpb24sIHdoaWNoIHdhcyBwcm9iYWJseSBub3QNCnRoZSBjYXNl
IGJlZm9yZSB3aXRoIHRoZSBjb2RlIHBvcnRlZCBmcm9tIE1hcnZlbGwncyBCU1AuIE1heWJlIGlm
IHlvdQ0KYXJlIHVzaW5nIGFuIG9mZmljaWFsIEFURiByZWxlYXNlIHlvdSBkb24ndCBoYXZlIGl0
ICh5ZXQ/KS4NCg0KVGhhbmtzLA0KTWlxdcOobA0KDQoNCg0KQmVzdGUgR3LDvMOfZS9CZXN0IHJl
Z2FyZHMNCg0KU3ZlbiBBdWhhZ2VuDQpEaXBsLiBNYXRoLiBvZWMuLCBNLlNjLg0KVm9sZWF0ZWNo
IEdtYkgNCkhSQjogQiA3NTQ2NDMNClVTVElEOiBERTMwMzY0MzE4MA0KR3JhdGh3b2hsc3RyLiA1
DQo3Mjc2MiBSZXV0bGluZ2VuDQpUZWw6ICs0OSA3MTIxNTM5NTUwDQpGYXg6ICs0OSA3MTIxNTM5
NTUxDQpFLU1haWw6IHN2ZW4uYXVoYWdlbkB2b2xlYXRlY2guZGUNCnd3dy52b2xlYXRlY2guZGU8
aHR0cHM6Ly93d3cudm9sZWF0ZWNoLmRlPg0KRGllc2UgSW5mb3JtYXRpb24gaXN0IGF1c3NjaGxp
ZcOfbGljaCBmw7xyIGRlbiBBZHJlc3NhdGVuIGJlc3RpbW10IHVuZCBrYW5uIHZlcnRyYXVsaWNo
IG9kZXIgZ2VzZXR6bGljaCBnZXNjaMO8dHp0ZSBJbmZvcm1hdGlvbmVuIGVudGhhbHRlbi4gV2Vu
biBTaWUgbmljaHQgZGVyIGJlc3RpbW11bmdzZ2Vtw6TDn2UgQWRyZXNzYXQgc2luZCwgdW50ZXJy
aWNodGVuIFNpZSBiaXR0ZSBkZW4gQWJzZW5kZXIgdW5kIHZlcm5pY2h0ZW4gU2llIGRpZXNlIE1h
aWwuIEFuZGVyZW4gYWxzIGRlbSBiZXN0aW1tdW5nc2dlbcOkw59lbiBBZHJlc3NhdGVuIGlzdCBl
cyB1bnRlcnNhZ3QsIGRpZXNlIEUtTWFpbCB6dSBsZXNlbiwgenUgc3BlaWNoZXJuLCB3ZWl0ZXJ6
dWxlaXRlbiBvZGVyIGlocmVuIEluaGFsdCBhdWYgd2VsY2hlIFdlaXNlIGF1Y2ggaW1tZXIgenUg
dmVyd2VuZGVuLiBGw7xyIGRlbiBBZHJlc3NhdGVuIHNpbmQgZGllIEluZm9ybWF0aW9uZW4gaW4g
ZGllc2VyIE1haWwgbnVyIHp1bSBwZXJzw7ZubGljaGVuIEdlYnJhdWNoLiBFaW5lIFdlaXRlcmxl
aXR1bmcgZGFyZiBudXIgbmFjaCBSw7xja3NwcmFjaGUgbWl0IGRlbSBBYnNlbmRlciBlcmZvbGdl
bi4gV2lyIHZlcndlbmRlbiBha3R1ZWxsZSBWaXJlbnNjaHV0enByb2dyYW1tZS4gRsO8ciBTY2jD
pGRlbiwgZGllIGRlbSBFbXBmw6RuZ2VyIGdsZWljaHdvaGwgZHVyY2ggdm9uIHVucyB6dWdlc2Fu
ZHRlIG1pdCBWaXJlbiBiZWZhbGxlbmUgRS1NYWlscyBlbnRzdGVoZW4sIHNjaGxpZcOfZW4gd2ly
IGplZGUgSGFmdHVuZyBhdXMuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
