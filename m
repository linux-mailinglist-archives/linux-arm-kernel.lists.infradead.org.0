Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A1D1CD89A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0K41CSHoVFpvFJbVUgAibXljzQ5Z74KI96fL4U5OqY=; b=H9M2N3Gd9rFWMl
	AnEIrFbOuCQ8eidAOwe8ywHPrullvGjCD4vuAT4s8S0R7Fr00Y3Cwe1etta4e4h1WzWRLEBkiosml
	fhXsPACIBK5GFRyU6+/w3N78i6qluXdM3FUa9jlvC7N1rGZKgnJKYzqsdCXZYjg26gw/3aAKPd7PC
	cGpwgPjMtcpxrmlQGX9++aZtA0qVo6P4v24pJP7TltWcofHiaI/Eq7pY1tJMxTKq3D9uN0OJ03MT4
	zinc4h4tby6ybeCbyAwUP7lXuBiWxfpllxENCJqtWj+RZQqHTeXOk8/5UkgjvdhFoNpurryYegdxk
	x+2Z9kT9ivO731d7pl5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6iO-0006lt-SU; Mon, 11 May 2020 11:35:20 +0000
Received: from mail-eopbgr80074.outbound.protection.outlook.com ([40.107.8.74]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6iF-0005ce-Mu
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:35:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jO8DV8Qfp3i6E7qECY1O5wvT0SUaX1tN9bhETOR/h/8SDf9hNyTHhVzhMvYhQU7u+j5qJ+3GjaOQVu+16UwbBdHtAY+Mt7p0NG+MXfn8q0JXZ0M/1TBJ7ns89qDtcI49gWvHqLaNHlQxs+BCxiAl9p6HcwjTyPDY8f7LwFiscIBBQbHBlfJo24yh8fgpdPBu+iRdGMr65WVs+QJG3FmuFvWaaDCvMSMFJ1YsbFNld1qNWVJQERjN6qmvW7GT+l0RaD2AbnKYqi5eK4oGf7wI1q7MbpbG5clchkBJJ23A2zaUPHmaZQZjDuR6aJrEPA0a160vk/i5za9nlycV+KgcKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WB2F2JehWQVv/d85SLNXFH/jADysV+TvYosQruVj7EY=;
 b=V/B3un2LKAUta1+P1HKef9uM9N/uFJDZ4NKftdKKhD/LIhII3P7zcCkJkcyAjCCpsHlIWf3el8ks7cCny1aSSfnvMeyvcLAxVszJjmXtehFLuEYzFyDpQkMVhytZyfXMay7f5Z5VD833sFznpD86aOqfWRG18iEOWkRBuXCNzksGfjKNruemmKZtk+sv/yI150x5uAjr+n+bwF98qxofmf6vx6zcKXaNI8H44bDa7SXcTEH2ZPAj0uOUuO8jWunIUshUSoaz/4RMA3vM/Unj6wGEC+PjAahckF9xlp3i6QtEQGRJqXSmng27+GiYdCNxG2ZRmZKYzr4vnIZ3+T2aVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WB2F2JehWQVv/d85SLNXFH/jADysV+TvYosQruVj7EY=;
 b=WzvfZ6HjKuMZROOS6VJ68fG3h/eVs+zXKg0TjYLNbS6I07M/SHQqM6bF8EGOEvSF9+nURtSGw77n54vKRKZhxFueHietN13O2TBNUiyvFMEKRXfVmf2vAvre3KY6TNdkAGBWsr2b+yma8s4eSVV7T8n/RP3unjyBpg4mqYP/Qug=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6730.eurprd04.prod.outlook.com (2603:10a6:10:107::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Mon, 11 May
 2020 11:35:05 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 11:35:04 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>, Jiri Olsa <jolsa@redhat.com>
Subject: RE: [PATCH RFC v3 09/12] perf metricgroup: Split up
 metricgroup__add_metric()
Thread-Topic: [PATCH RFC v3 09/12] perf metricgroup: Split up
 metricgroup__add_metric()
Thread-Index: AQHWJGdkk9y651phOUm879xc2AVDNqiivi8AgAAGuQCAAAJoMA==
Date: Mon, 11 May 2020 11:35:04 +0000
Message-ID: <DB8PR04MB6795C5ED20F96DE37C3A95FEE6A10@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-10-git-send-email-john.garry@huawei.com>
 <20200511110118.GA2986380@krava>
 <eeb29c90-52fc-fd17-6ad0-745372a1a15d@huawei.com>
In-Reply-To: <eeb29c90-52fc-fd17-6ad0-745372a1a15d@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: af87875f-f94a-47ff-622f-08d7f59f597c
x-ms-traffictypediagnostic: DB8PR04MB6730:
x-microsoft-antispam-prvs: <DB8PR04MB67302D072E94CD2D8C51D4E9E6A10@DB8PR04MB6730.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HC0E+2rVcHi2V8EWRwJKUHzirbC1q9eqpjexkH9Vq3B4gDUMNOZbPQ1krwbq1ehcdbB9i9MfYodZze3U4obMW1oIR4pwqDIagoCWn7BHk6T/YuQ/Ohwv7ElcY7lr9EjjuVse/9xGe4ldRUNzRNyQrCdW/S1L8frt16ILA18rieOmWFpGz06jqhR7lP19EHh6RmU/KsVjKmeuwPllVqCPaBreAUe0RoRYV8EQ2rqi/b2KLdS+pETh7sNqR5Grthi1qixcnjyNLEi0By0qJSOj6LpapaYBu8QP2EyCihxRShksG0frEtwJvRYi7VjZnwx+HbrPWgTvaTLO4KmWWYcp6bvz1xO+shkPAlr/SoKUfGpM2OZWXwWtoOdlmFZ3DQZPBNQ2PcDGeKPq+GGdLosgRmPbqwDX17IyuROA/NwezkJ0OEp1Xvn5ser92WdP+FH8GXjkA+G53EWlu6wkw/4sUYlc2JUzVQUm4NG9Bm9FO9utPScR9QS8G2GO1kz02cEMlsjlWfWla6fBBAcZK+8a7ozJ4gBROR6o5WrhlZRLFLok0zfQ7pAjY/DyWl9+3epeG5MxqmmsnMQ386Lm/9ecZkIuOoBY9Cr9I7926ngazx7eX+W5hcoYwkuc8WeJmCZDCBV+nTBftiChzgz0UPUy5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(396003)(346002)(376002)(33430700001)(5660300002)(33656002)(54906003)(76116006)(83080400001)(186003)(8936002)(7696005)(26005)(8676002)(86362001)(52536014)(33440700001)(2906002)(66446008)(55016002)(9686003)(7416002)(4326008)(966005)(110136005)(6506007)(53546011)(316002)(66946007)(71200400001)(45080400002)(478600001)(66476007)(66556008)(64756008)(101420200001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: mDP1BhVNzeqoYCHf/OP2xXnVwlgDL05SQP3dlpmHOnaddIATkSnTtw6kNwfkNh5iOHkFVpB5XxXhWEmy6+CS7itCB60xeEXaFQ2GwawgUGkyr/ditGnkdK4EA+Om+5wdz/8l1fC4kLOGmLIHHSrFhTXiNGhwgWovhd5QXGJ+cO09ZS4UhT5pUsisX9MOtcS4m4swsUynv6FLTiB1QRfQSNMCDq0xezRGFPdvbJIg3tUOyQyL1e2SrvSImVl4dPi7z7je/Hj2CwZlZ6IKuy5l0q702bq1NzrJrNM6VHjpqxlkM6vbkkyF+p++SME+45auS1+eOr13l81OhDtYKShKfrLnvYKbyArZv1PZorBumphwqA3IInibpQWbPf/YOUBD5CpidzD4tNKdyPMHdYd0SxSDL9V03X4u8//1hrpj01pcNh8oIly9c/adABoswYWEQpe1oD+eRoDMPYaCZdFviSJ3j9eGpDVqNNpmTfk8MGE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af87875f-f94a-47ff-622f-08d7f59f597c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 11:35:04.5327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R61ou19/awFInvPosazc0NqxJiIAdhFDKcEK2q/XgCFY2FwkmbeeOMUSuBHQopdwOTI82IrJCTzCHVHylFrczQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6730
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_043511_757167_C2A997FF 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "irogers@google.com" <irogers@google.com>,
 "ak@linux.intel.com" <ak@linux.intel.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "acme@kernel.org" <acme@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMOW5tDXmnIgxMeaXpSAxOToyNQ0KPiBUbzog
SmlyaSBPbHNhIDxqb2xzYUByZWRoYXQuY29tPjsgSm9ha2ltIFpoYW5nIDxxaWFuZ3Fpbmcuemhh
bmdAbnhwLmNvbT4NCj4gQ2M6IHBldGVyekBpbmZyYWRlYWQub3JnOyBtaW5nb0ByZWRoYXQuY29t
OyBhY21lQGtlcm5lbC5vcmc7DQo+IG1hcmsucnV0bGFuZEBhcm0uY29tOyBhbGV4YW5kZXIuc2hp
c2hraW5AbGludXguaW50ZWwuY29tOw0KPiBuYW1oeXVuZ0BrZXJuZWwub3JnOyB3aWxsQGtlcm5l
bC5vcmc7IGFrQGxpbnV4LmludGVsLmNvbTsNCj4gbGludXhhcm1AaHVhd2VpLmNvbTsgbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZzsgaXJvZ2Vyc0Bnb29nbGUuY29tOw0KPiByb2Jpbi5tdXJw
aHlAYXJtLmNvbTsgemhhbmdzaGFva3VuQGhpc2lsaWNvbi5jb207DQo+IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFJGQyB2MyAwOS8x
Ml0gcGVyZiBtZXRyaWNncm91cDogU3BsaXQgdXANCj4gbWV0cmljZ3JvdXBfX2FkZF9tZXRyaWMo
KQ0KPiANCj4gT24gMTEvMDUvMjAyMCAxMjowMSwgSmlyaSBPbHNhIHdyb3RlOg0KPiA+IE9uIFRo
dSwgTWF5IDA3LCAyMDIwIGF0IDA3OjU3OjQ4UE0gKzA4MDAsIEpvaG4gR2Fycnkgd3JvdGU6DQo+
ID4+IFRvIGFpZCBzdXBwb3J0aW5nIHN5c3RlbSBldmVudCBtZXRyaWMgZ3JvdXBzLCBicmVhayB1
cCB0aGUgZnVuY3Rpb24NCj4gPj4gbWV0cmljZ3JvdXBfX2FkZF9tZXRyaWMoKSBpbnRvIGEgcGFy
dCB3aGljaCBpdGVyYXRlcyBtZXRyaWNzIGFuZCBhDQo+ID4+IHBhcnQgd2hpY2ggYWN0dWFsbHkg
ImFkZHMiIHRoZSBtZXRyaWMuDQo+ID4+DQo+ID4+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlIGludGVu
ZGVkLg0KPiA+DQo+ID4gdGhpcyBubyBsb25nZXIgYXBwbGllZCBvbiBBcm5hbGRvJ3MgcGVyZi9j
b3JlLA0KPiANCj4gDQo+IEhpIGppcmthLA0KPiANCj4gPiBpdCdzIHZlcnkgYnVzeSBwYXJ0IG5v
dyA6LVwNCj4gDQo+IFJpZ2h0Lg0KPiANCj4gU28gSSBjb3VsZCByZWJhc2UgYW5kIHJlc2VuZCwg
YnV0IEkgcmF0aGVyIGF2b2lkIHRoYXQgaWYgcG9zc2libGUgc2luY2UgdGhlIG1ldHJpYw0KPiBj
b2RlIGlzIHNvIGJ1c3kuDQo+IA0KPiBUaGUgcG9pbnQgaXMgdGhhdCBJIHdvdWxkIGxpa2UgdG8g
c2VlIHByb2dyZXNzIG9uIHRoZSBrZXJuZWwgcGFydCBmaXJzdCAodG8gZXhwb3NlDQo+IHBlci1Q
TVUgc3lzZnMgaWRlbnRpZmllciBmaWxlKS4gT25jZSB3ZSBhZ3JlZW1lbnQgdGhlcmUsIHRoZW4g
SSBjYW4gcHJvbW90ZQ0KPiB0aGlzIHNlcmllcyB0byBub24tUkZDIGFuZCBlbnN1cmUgSSdtIGJh
c2VkIG9uIGFjbWUgdGlwLg0KPiANCj4gSGkgSm9ha2ltLCBjYW4geW91IHByb2dyZXNzDQo+IGh0
dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUz
QSUyRiUyRmxvcmUua2VyDQo+IG5lbC5vcmclMkZsaW51eC1hcm0ta2VybmVsJTJGMjAyMDAyMjYw
NzM0MzMuNTgzNC0xLXFpYW5ncWluZy56aGFuZyU0MG4NCj4geHAuY29tJTJGJmFtcDtkYXRhPTAy
JTdDMDElN0NxaWFuZ3FpbmcuemhhbmclNDBueHAuY29tJTdDZjg5NjE3Yw0KPiBlMTNiYjQ2MTdh
NjRkMDhkN2Y1OWUxZTRlJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwDQo+
ICU3QzAlN0M2MzcyNDc5MzE3NzE5MTI4MTcmYW1wO3NkYXRhPTh2T0xaclV6QlFzNjlLaWpPYUlY
bVZxdCUyRg0KPiBjVXRhZERLM2JDSFJGRDA0a0UlM0QmYW1wO3Jlc2VydmVkPTANCj4gdG8gbm9u
LVJGQyBub3c/DQoNCkhpIEpvaG4sDQoNCk9rYXksIEkgd2lsbCByZS1zZW5kIHRoZSBwYXRjaCBh
cyBub24tUkZDIHJpZ2h0IG5vdy4NCg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQo+IFRo
YW5rcywNCj4gSm9obg0KPiANCj4gDQo+ID4NCj4gPiBqaXJrYQ0KPiA+DQo+ID4+DQo+ID4+IFNp
Z25lZC1vZmYtYnk6IEpvaG4gR2FycnkgPGpvaG4uZ2FycnlAaHVhd2VpLmNvbT4NCj4gPj4gLS0t
DQo+ID4+ICAgdG9vbHMvcGVyZi91dGlsL21ldHJpY2dyb3VwLmMgfCA3NQ0KPiArKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tDQo+ID4+ICAgMSBmaWxlIGNoYW5nZWQs
IDQ1IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0
IGEvdG9vbHMvcGVyZi91dGlsL21ldHJpY2dyb3VwLmMNCj4gPj4gYi90b29scy9wZXJmL3V0aWwv
bWV0cmljZ3JvdXAuYyBpbmRleCA5MjY0NDlhN2NkYmYuLmQxMDMzNzU2YTFiYw0KPiA+PiAxMDA2
NDQNCj4gPj4gLS0tIGEvdG9vbHMvcGVyZi91dGlsL21ldHJpY2dyb3VwLmMNCj4gPj4gKysrIGIv
dG9vbHMvcGVyZi91dGlsL21ldHJpY2dyb3VwLmMNCj4gPj4gQEAgLTIzMSw2ICsyMzEsMTIgQEAg
c3RhdGljIGJvb2wgbWF0Y2hfbWV0cmljKGNvbnN0IGNoYXIgKm4sIGNvbnN0DQo+IGNoYXIgKmxp
c3QpDQo+ID4+ICAgCXJldHVybiBmYWxzZTsNCj4gPj4gICB9DQo+ID4+DQo+ID4+ICtzdGF0aWMg
Ym9vbCBtYXRjaF9wZV9tZXRyaWMoc3RydWN0IHBtdV9ldmVudCAqcGUsIGNvbnN0IGNoYXINCj4g
Pj4gKyptZXRyaWMpIHsNCj4gPj4gKwlyZXR1cm4gbWF0Y2hfbWV0cmljKHBlLT5tZXRyaWNfZ3Jv
dXAsIG1ldHJpYykgfHwNCj4gPj4gKwkgICAgICAgbWF0Y2hfbWV0cmljKHBlLT5tZXRyaWNfbmFt
ZSwgbWV0cmljKTsgfQ0KPiA+PiArDQo+ID4+ICAgc3RydWN0IG1lcCB7DQo+ID4+ICAgCXN0cnVj
dCByYl9ub2RlIG5kOw0KPiA+PiAgIAljb25zdCBjaGFyICpuYW1lOw0KPiA+PiBAQCAtNDg1LDYg
KzQ5MSw0MCBAQCBzdGF0aWMgYm9vbCBtZXRyaWNncm91cF9faGFzX2NvbnN0cmFpbnQoc3RydWN0
DQo+IHBtdV9ldmVudCAqcGUpDQo+ID4+ICAgCXJldHVybiBmYWxzZTsNCj4gPj4gICB9DQo+ID4+
DQo+ID4+ICtzdGF0aWMgaW50IG1ldHJpY2dyb3VwX19hZGRfbWV0cmljX3BtdV9ldmVudChzdHJ1
Y3QgcG11X2V2ZW50ICpwZSwNCj4gPj4gKwkJCQkJICAgICBzdHJ1Y3Qgc3RyYnVmICpldmVudHMs
DQo+ID4+ICsJCQkJCSAgICAgc3RydWN0IGxpc3RfaGVhZCAqZ3JvdXBfbGlzdCkgew0KPiA+PiAr
CWNvbnN0IGNoYXIgKippZHM7DQo+ID4+ICsJaW50IGlkbnVtOw0KPiA+PiArCXN0cnVjdCBlZ3Jv
dXAgKmVnOw0KPiA+PiArDQo+ID4+ICsJcHJfZGVidWcoIm1ldHJpYyBleHByICVzIGZvciAlc1xu
IiwgcGUtPm1ldHJpY19leHByLA0KPiA+PiArcGUtPm1ldHJpY19uYW1lKTsNCj4gPj4gKw0KPiA+
PiArCWlmIChleHByX19maW5kX290aGVyKHBlLT5tZXRyaWNfZXhwciwgTlVMTCwgJmlkcywgJmlk
bnVtKSA8IDApDQo+ID4+ICsJCXJldHVybiAwOw0KPiA+PiArDQo+ID4+ICsJaWYgKGV2ZW50cy0+
bGVuID4gMCkNCj4gPj4gKwkJc3RyYnVmX2FkZGYoZXZlbnRzLCAiLCIpOw0KPiA+PiArDQo+ID4+
ICsJaWYgKG1ldHJpY2dyb3VwX19oYXNfY29uc3RyYWludChwZSkpDQo+ID4+ICsJCW1ldHJpY2dy
b3VwX19hZGRfbWV0cmljX25vbl9ncm91cChldmVudHMsIGlkcywgaWRudW0pOw0KPiA+PiArCWVs
c2UNCj4gPj4gKwkJbWV0cmljZ3JvdXBfX2FkZF9tZXRyaWNfd2Vha19ncm91cChldmVudHMsIGlk
cywgaWRudW0pOw0KPiA+PiArDQo+ID4+ICsJZWcgPSBtYWxsb2Moc2l6ZW9mKCplZykpOw0KPiA+
PiArCWlmICghZWcpDQo+ID4+ICsJCXJldHVybiAtRU5PTUVNOw0KPiA+PiArCWVnLT5pZHMgPSBp
ZHM7DQo+ID4+ICsJZWctPmlkbnVtID0gaWRudW07DQo+ID4+ICsJZWctPm1ldHJpY19uYW1lID0g
cGUtPm1ldHJpY19uYW1lOw0KPiA+PiArCWVnLT5tZXRyaWNfZXhwciA9IHBlLT5tZXRyaWNfZXhw
cjsNCj4gPj4gKwllZy0+bWV0cmljX3VuaXQgPSBwZS0+dW5pdDsNCj4gPj4gKwlsaXN0X2FkZF90
YWlsKCZlZy0+bmQsIGdyb3VwX2xpc3QpOw0KPiA+PiArDQo+ID4+ICsJcmV0dXJuIDA7DQo+ID4+
ICt9DQo+ID4+ICsNCj4gPj4gICBzdGF0aWMgaW50IG1ldHJpY2dyb3VwX19hZGRfbWV0cmljKGNv
bnN0IGNoYXIgKm1ldHJpYywgc3RydWN0IHN0cmJ1Zg0KPiAqZXZlbnRzLA0KPiA+PiAgIAkJCQkg
ICBzdHJ1Y3QgbGlzdF9oZWFkICpncm91cF9saXN0KQ0KPiA+PiAgIHsNCj4gPj4gQEAgLTUwMiwz
NyArNTQyLDEyIEBAIHN0YXRpYyBpbnQgbWV0cmljZ3JvdXBfX2FkZF9tZXRyaWMoY29uc3QgY2hh
cg0KPiAqbWV0cmljLCBzdHJ1Y3Qgc3RyYnVmICpldmVudHMsDQo+ID4+ICAgCQkJYnJlYWs7DQo+
ID4+ICAgCQlpZiAoIXBlLT5tZXRyaWNfZXhwcikNCj4gPj4gICAJCQljb250aW51ZTsNCj4gPj4g
LQkJaWYgKG1hdGNoX21ldHJpYyhwZS0+bWV0cmljX2dyb3VwLCBtZXRyaWMpIHx8DQo+ID4+IC0J
CSAgICBtYXRjaF9tZXRyaWMocGUtPm1ldHJpY19uYW1lLCBtZXRyaWMpKSB7DQo+ID4+IC0JCQlj
b25zdCBjaGFyICoqaWRzOw0KPiA+PiAtCQkJaW50IGlkbnVtOw0KPiA+PiAtCQkJc3RydWN0IGVn
cm91cCAqZWc7DQo+ID4+IC0NCj4gPj4gLQkJCXByX2RlYnVnKCJtZXRyaWMgZXhwciAlcyBmb3Ig
JXNcbiIsIHBlLT5tZXRyaWNfZXhwciwNCj4gcGUtPm1ldHJpY19uYW1lKTsNCj4gPj4NCj4gPj4g
LQkJCWlmIChleHByX19maW5kX290aGVyKHBlLT5tZXRyaWNfZXhwciwNCj4gPj4gLQkJCQkJICAg
ICBOVUxMLCAmaWRzLCAmaWRudW0pIDwgMCkNCj4gPj4gLQkJCQljb250aW51ZTsNCj4gPj4gLQkJ
CWlmIChldmVudHMtPmxlbiA+IDApDQo+ID4+IC0JCQkJc3RyYnVmX2FkZGYoZXZlbnRzLCAiLCIp
Ow0KPiA+PiAtDQo+ID4+IC0JCQlpZiAobWV0cmljZ3JvdXBfX2hhc19jb25zdHJhaW50KHBlKSkN
Cj4gPj4gLQkJCQltZXRyaWNncm91cF9fYWRkX21ldHJpY19ub25fZ3JvdXAoZXZlbnRzLCBpZHMs
IGlkbnVtKTsNCj4gPj4gLQkJCWVsc2UNCj4gPj4gLQkJCQltZXRyaWNncm91cF9fYWRkX21ldHJp
Y193ZWFrX2dyb3VwKGV2ZW50cywgaWRzLA0KPiBpZG51bSk7DQo+ID4+IC0NCj4gPj4gLQkJCWVn
ID0gbWFsbG9jKHNpemVvZihzdHJ1Y3QgZWdyb3VwKSk7DQo+ID4+IC0JCQlpZiAoIWVnKSB7DQo+
ID4+IC0JCQkJcmV0ID0gLUVOT01FTTsNCj4gPj4gLQkJCQlicmVhazsNCj4gPj4gLQkJCX0NCj4g
Pj4gLQkJCWVnLT5pZHMgPSBpZHM7DQo+ID4+IC0JCQllZy0+aWRudW0gPSBpZG51bTsNCj4gPj4g
LQkJCWVnLT5tZXRyaWNfbmFtZSA9IHBlLT5tZXRyaWNfbmFtZTsNCj4gPj4gLQkJCWVnLT5tZXRy
aWNfZXhwciA9IHBlLT5tZXRyaWNfZXhwcjsNCj4gPj4gLQkJCWVnLT5tZXRyaWNfdW5pdCA9IHBl
LT51bml0Ow0KPiA+PiAtCQkJbGlzdF9hZGRfdGFpbCgmZWctPm5kLCBncm91cF9saXN0KTsNCj4g
Pj4gLQkJCXJldCA9IDA7DQo+ID4+ICsJCWlmIChtYXRjaF9wZV9tZXRyaWMocGUsIG1ldHJpYykp
IHsNCj4gPj4gKwkJCXJldCA9IG1ldHJpY2dyb3VwX19hZGRfbWV0cmljX3BtdV9ldmVudChwZSwg
ZXZlbnRzLA0KPiA+PiArCQkJCQkJCQlncm91cF9saXN0KTsNCj4gPj4gKwkJCWlmIChyZXQpDQo+
ID4+ICsJCQkJcmV0dXJuIHJldDsNCj4gPj4gICAJCX0NCj4gPj4gICAJfQ0KPiA+PiAgIAlyZXR1
cm4gcmV0Ow0KPiA+PiAtLQ0KPiA+PiAyLjE2LjQNCj4gPj4NCj4gPg0KPiA+IC4NCj4gPg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
