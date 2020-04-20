Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF8B1B0765
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ewr6T1eswIWyXHuD6pTwakBIzBsKG306UEBPBJZ2OGc=; b=U6SEBX/1q3a24G
	WaE2krqv8Rd+AXVG1Se8q+4TBDoedo3f8fmibzjIoSh2rA5j+rwbIXbMXhmlQoFJkHwt7BK5eVcdL
	PRaoAIShq9S7YKTVfVLwZ4S24otx21K6hpgBDUO2cl1/F8xY/f4NDqFsRl39OG5n1eWLTDV7u78yj
	fJNlIr/K3HQ6rmjwJCONmZ6Jy0oY1Od3TUux1zEgZwP6E9hU6Tq43ck++jt5L8vMZsAJVX/5b6jOh
	oBh4V6H3bPT/+AAnKpz6dBEzYo93/oIWipcnUm27XGaRCiBvVlfclbGUb4RXPechjMwwxnkFxKgUW
	bSx0II0QZjDMsooJbHDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUYM-00024L-3v; Mon, 20 Apr 2020 11:25:30 +0000
Received: from mail-eopbgr150040.outbound.protection.outlook.com
 ([40.107.15.40] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUY2-0000bi-4u
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:25:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CMm3Ta5NawiMPRPslXGHHvXuOylq7DWpLH1FC/7g5TQoNLQSTdJtm2YdIfmsSQlVJAWI9Gd6xfZKPPQ7UxhcsHcZ8m5UPCRW5fPlYzrNm4axeh5h2k5DjaLGaF+zuJZTTzCV5RkewD2SjkyFb0LP2Vxg0dOMEVgst45dDw60Kazc1T1ulDW/FUhQFkRrqgHNGVF7ioDE/fXs/yEMwRELvB8NGjVnGSJDbjbKU6aXWGIZLwEtdEa+cZ084uz7ZkvWj+74tU5lW+mJOSpvmqwgxissWHBOdSfA7CKbRqWq/2jpCMv7h4hcqzIRq4tRD9IWrDUi1bA9InSG7RLyodajzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T+IgWxPRzlAgyj1kEQ3AjAHhFCD9tki7/WpBTr9PJsU=;
 b=Xd6yDLqZLL7AQnpK31v/YBF2n9txnddw/50d5l8W5GLsvlZcq2kYl7RJQvmJu6ypP99z1V0bWMN9cA4RS+w8NzV/SoiKUbgKijADOR2Y+9/UkaLjDnI8ENfqjmfEtEGWpwqzcSkzj3FZA3vehDNsO+DEmCUFV+yFnioRCB1rEthpmERhDm1X2JZ3WTVhRVBiS8t9SciFVDXDZ3fSRZ8JhWcDyPHuhGSxQ1p9AFunm94+6tguOSXniBOuqPa+ZgCqmSWo3VNlgAYt21SxytPu/ZaJ79bhQuK1yF6TQ16B5UcIRwPgdj+IKxoV6wg9z/tFVdHdxn8bxbBZx4S8FxGZGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T+IgWxPRzlAgyj1kEQ3AjAHhFCD9tki7/WpBTr9PJsU=;
 b=EQNxgtcV3DlxKp7QklwQ+UojOlKomPyrGA7gnanl2aAUJeJabDNsqSlJ9QgztGpG3zEflbdY4Y52joOfBx0rFdBr4JmcnhEgo8uDsO0FAZ+dbVGAhM28MkvI3Sqjvak5h/gMeb5JN79EFB94wZLVN4OupRPJ8IHJ/XbiTZ+hxjY=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6922.eurprd04.prod.outlook.com (2603:10a6:10:11f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 11:25:06 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%8]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 11:25:05 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>, "peterz@infradead.org"
 <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "acme@kernel.org" <acme@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "alexander.shishkin@linux.intel.com"
 <alexander.shishkin@linux.intel.com>, "jolsa@redhat.com" <jolsa@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, "will@kernel.org"
 <will@kernel.org>
Subject: RE: [RFC PATCH v2 09/13] perf vendor events: Add JSON metrics for
 imx8mm DDR Perf
Thread-Topic: [RFC PATCH v2 09/13] perf vendor events: Add JSON metrics for
 imx8mm DDR Perf
Thread-Index: AQHWFKVVX4GZScOVYUWAj3jiI1Adb6iBYhwQgAB3pYCAAAOmIA==
Date: Mon, 20 Apr 2020 11:25:04 +0000
Message-ID: <DB8PR04MB679576DAC6EBFFD13F129488E6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-10-git-send-email-john.garry@huawei.com>
 <DB8PR04MB67959336311C0CF525BB24ADE6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <3486ee3b-7240-d5a7-5a3c-952133a5e9f0@huawei.com>
In-Reply-To: <3486ee3b-7240-d5a7-5a3c-952133a5e9f0@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f08b2465-9a28-41bc-4ac4-08d7e51d7986
x-ms-traffictypediagnostic: DB8PR04MB6922:
x-microsoft-antispam-prvs: <DB8PR04MB6922CB2236033C983592271FE6D40@DB8PR04MB6922.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(346002)(366004)(8676002)(316002)(4326008)(7696005)(9686003)(54906003)(2906002)(5660300002)(186003)(53546011)(110136005)(6506007)(7416002)(86362001)(66446008)(55016002)(8936002)(71200400001)(81156014)(66946007)(478600001)(26005)(33656002)(52536014)(66556008)(66476007)(64756008)(76116006)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZUGcfC2HYIUlOW2mj08AKxXBuzoqnYXaACKUdKPlvleyo6ofNuHRU8xoWRIKZPTeLaTWusFVb3wEtNWHuENTLc3kYwZ6U3F1xuB53lrFeFJkOt7r7jEwI+LaBqTB0nS1S6HgzPtcbAX0g+XklQ26MljxvIe81vdSmsxTZ/WfMgoD80GD1IfYTtoCZ8pQdjbfKu3CVI2Tx7N/rIHyE5EKiN7K3Fb22RHFVdINzgGt1wlVbMW/sS2gUW3Cxp4eQU4o4teKhUNIJyjn92M8Tx+lQpkMaVu8bnuE7ZEiW7vK8K+HhtOQWa279wLRKw5zljR96nSApJQLolrvA03EZCx9fXBFbs0O3j47+qF48ZkP41sLLNxWc0iA5XzbLnq045RNWFuqqMoPjLSHPEjhA24FY6CnrzoQ/MjFUVUzHT61BS70fHrc0bRnH0WHGS8zmUX0501D7/ThXuHFLuMKdnWOwg/urAJmgYrZzwYDsrKl+gg=
x-ms-exchange-antispam-messagedata: Anug/FmW1dTdqv2Xv8PvcWaUyIRy8Q7kQ1ckUWuOiT/h+vNcypu5RfxF0H8UzkBxKXj5xoDvHZSsU4YyDX1p6CBuQTouz/WQ7SFS0oX570vIdyWnf5pcCnBwND/WgK7IVYZQqdPT6bLE/ejLoaRe0A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f08b2465-9a28-41bc-4ac4-08d7e51d7986
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 11:25:05.0437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e1AXvrKef3odfja0Io1fmLGH5klOpRT43rzuJEMLSxA/QY9ZaeCstPK9UTrasOStVt2/5u5EXsCha77dRlAYGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6922
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_042510_303178_470D8B6F 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "irogers@google.com" <irogers@google.com>,
 "ak@linux.intel.com" <ak@linux.intel.com>, Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMMTqNNTCMjDI1SAxODo1MQ0KPiBUbzogSm9h
a2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT47IHBldGVyekBpbmZyYWRlYWQub3Jn
Ow0KPiBtaW5nb0ByZWRoYXQuY29tOyBhY21lQGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0u
Y29tOw0KPiBhbGV4YW5kZXIuc2hpc2hraW5AbGludXguaW50ZWwuY29tOyBqb2xzYUByZWRoYXQu
Y29tOw0KPiBuYW1oeXVuZ0BrZXJuZWwub3JnOyB3aWxsQGtlcm5lbC5vcmcNCj4gQ2M6IGlyb2dl
cnNAZ29vZ2xlLmNvbTsgYWtAbGludXguaW50ZWwuY29tOyBMaW51eGFybQ0KPiA8bGludXhhcm1A
aHVhd2VpLmNvbT47IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFpoYW5nc2hhb2t1bg0K
PiA8emhhbmdzaGFva3VuQGhpc2lsaWNvbi5jb20+OyByb2Jpbi5tdXJwaHlAYXJtLmNvbTsNCj4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IFN1YmplY3Q6IFJlOiBbUkZD
IFBBVENIIHYyIDA5LzEzXSBwZXJmIHZlbmRvciBldmVudHM6IEFkZCBKU09OIG1ldHJpY3MgZm9y
DQo+IGlteDhtbSBERFIgUGVyZg0KPiANCj4gT24gMjAvMDQvMjAyMCAwNToxNywgSm9ha2ltIFpo
YW5nIHdyb3RlOg0KPiA+IEhvd2V2ZXIsIGl0IHNlZW1zIHRoYXQgdGhlcmUgYXJlIHNtYWxsIGRl
ZmVjdHMgZnJvbSBtZXRyaWMuDQo+ID4NCj4gPiBGaXJzdGx5LCBjb3VsZCB5b3UgaGVscCBjaGFu
Z2UgIlNjYWxlVW5pdCI6ICI5Ljc2NTYyNWUtNE1CIiBpbnRvDQo+ICJTY2FsZVVuaXQiOiAiOS43
NjU2MjVlLTRLQiIsIHRoaXMgaXMgYSBtaXN0YWtlLg0KPiANCj4gb2sNCj4gDQo+ID4NCj4gPiBU
aGVuLCB5b3UgY2FuIHNlZSB0aGF0IHRlc3QgaXMgb2theSBmcm9tIDhNTS4gSG93ZXZlciwgbWV0
cmljIHdvdWxkIGFkZA0KPiB0d2ljZSBvbmNlIHRpbWUgZnJvbSA4UU0gd2hpY2ggaGFzIHR3byBk
ZHIgcGVyZihkZHIwL2RkcjEpLCBpdCBsb29rcw0KPiBpbmNvcnJlY3QuDQo+ID4NCj4gPiA4TU06
DQo+ID4gcm9vdEBpbXg4bW1ldms6fiMgLi9wZXJmIHN0YXQgLXYgLWEgLUkgMTAwMCAtTSBpbXg4
bW1fZGRyX3dyaXRlLmFsbA0KPiA+IFVzaW5nIENQVUlEIDB4MDAwMDAwMDA0MTBmZDAzMCBtZXRy
aWMgZXhwciBpbXg4X2Rkci53cml0ZV9jeWNsZXMgKiA0ICoNCj4gPiA0IGZvciBpbXg4bW1fZGRy
X3dyaXRlLmFsbCBmb3VuZCBldmVudCBpbXg4X2Rkci53cml0ZV9jeWNsZXMgYWRkaW5nDQo+ID4g
e2lteDhfZGRyLndyaXRlX2N5Y2xlc306VyBpbXg4X2Rkci53cml0ZV9jeWNsZXMgLT4NCj4gPiBp
bXg4X2RkcjAvZXZlbnQ9MHgyYi8NCj4gPiBpbXg4X2Rkci53cml0ZV9jeWNsZXM6IDEzMTUzIDEw
MDA0OTUxMjUgMTAwMDQ5NTEyNQ0KPiA+ICMgICAgICAgICAgIHRpbWUgICAgICAgICAgICAgY291
bnRzIHVuaXQgZXZlbnRzDQo+ID4gICAgICAgMS4wMDA0NzY2MjUgICAgICAgICAgICAgIDEzMTUz
ICAgICAgaW14OF9kZHIud3JpdGVfY3ljbGVzDQo+ICMgICAgMjA1LjUgTUIgIGlteDhtbV9kZHJf
d3JpdGUuYWxsDQo+ID4gaW14OF9kZHIud3JpdGVfY3ljbGVzOiAzNTgyIDEwMDA2ODEzNzUgMTAw
MDY4MTM3NQ0KPiA+ICAgICAgIDIuMDAxMTY3NzUwICAgICAgICAgICAgICAgMzU4MiAgICAgIGlt
eDhfZGRyLndyaXRlX2N5Y2xlcw0KPiAjICAgICA1Ni4wIE1CICBpbXg4bW1fZGRyX3dyaXRlLmFs
bA0KPiA+DQo+ID4NCj4gPiA4UU06DQo+ID4gcm9vdEBpbXg4cW1tZWs6fiMgLi9wZXJmIHN0YXQg
LXYgLWEgLUkgMTAwMCAtTSBpbXg4cW1fZGRyX3JlYWQuYWxsDQo+IA0KPiBOb3RlOiBmb3IgdGhp
cyBleGFtcGxlLCBJIGRvbid0IGtub3cgd2h5IHlvdSBkaWRuJ3QgdXNlIGlteDhtbV9kZHJfd3Jp
dGUuYWxsLA0KPiBhcyBmb3IgeW91ciA4TU0gdGVzdCwgc28gd2UgY2FuIGNvbXBhcmUgdGhlIHNh
bWUuDQoNClllcywgSSB1c2UgdGhlIGlteDhtbV9kZHJfd3JpdGUuYWxsLCBJIGp1c3QgcmUtbmFt
ZSB0aGUgbWV0cmljLCBjaGFuZ2Ugbm90aGluZyBlbHNlLg0KDQo+ID4gVXNpbmcgQ1BVSUQgMHgw
MDAwMDAwMDQxMGZkMDMwDQo+ID4gbWV0cmljIGV4cHIgaW14OF9kZHIucmVhZF9jeWNsZXMgKiA0
ICogNCBmb3IgaW14OHFtX2Rkcl9yZWFkLmFsbCBmb3VuZA0KPiA+IGV2ZW50IGlteDhfZGRyLnJl
YWRfY3ljbGVzIG1ldHJpYyBleHByIGlteDhfZGRyLnJlYWRfY3ljbGVzICogNCAqIDQNCj4gPiBm
b3IgaW14OHFtX2Rkcl9yZWFkLmFsbCBmb3VuZCBldmVudCBpbXg4X2Rkci5yZWFkX2N5Y2xlcyBh
ZGRpbmcNCj4gPiB7aW14OF9kZHIucmVhZF9jeWNsZXN9Olcse2lteDhfZGRyLnJlYWRfY3ljbGVz
fTpXDQo+ID4gaW14OF9kZHIucmVhZF9jeWNsZXMgLT4gaW14OF9kZHIwL2V2ZW50PTB4MmEvIGlt
eDhfZGRyLnJlYWRfY3ljbGVzIC0+DQo+ID4gaW14OF9kZHIxL2V2ZW50PTB4MmEvIGlteDhfZGRy
LnJlYWRfY3ljbGVzIC0+IGlteDhfZGRyMC9ldmVudD0weDJhLw0KPiA+IGlteDhfZGRyLnJlYWRf
Y3ljbGVzIC0+IGlteDhfZGRyMS9ldmVudD0weDJhLw0KPiA+IGlteDhfZGRyLnJlYWRfY3ljbGVz
OiAyMjc0OCAxMDAwMzc4NzUwIDEwMDAzNzg3NTANCj4gPiBpbXg4X2Rkci5yZWFkX2N5Y2xlczog
MjQ2NDAgMTAwMDM3NjYyNSAxMDAwMzc2NjI1DQo+ID4gaW14OF9kZHIucmVhZF9jeWNsZXM6IDIy
ODAwIDEwMDAzNzUxMjUgMTAwMDM3NTEyNQ0KPiA+IGlteDhfZGRyLnJlYWRfY3ljbGVzOiAyNDYx
NiAxMDAwMzcyNjI1IDEwMDAzNzI2MjUNCj4gPiAjICAgICAgICAgICB0aW1lICAgICAgICAgICAg
IGNvdW50cyB1bml0IGV2ZW50cw0KPiA+ICAgICAgIDEuMDAwMzc3MjUwICAgICAgICAgICAgICA0
NzM4OCAgICAgIGlteDhfZGRyLnJlYWRfY3ljbGVzDQo+ICMgICAgNzQwLjQgTUIgIGlteDhxbV9k
ZHJfcmVhZC5hbGwNCj4gPiAgICAgICAxLjAwMDM3NzI1MCAgICAgICAgICAgICAgNDc0MTYgICAg
ICBpbXg4X2Rkci5yZWFkX2N5Y2xlcw0KPiA+IGlteDhfZGRyLnJlYWRfY3ljbGVzOiAzMjY3MiAx
MDAwNDU0Mzc1IDEwMDA0NTQzNzUNCj4gPiBpbXg4X2Rkci5yZWFkX2N5Y2xlczogMzc4ODggMTAw
MDQ1NzI1MCAxMDAwNDU3MjUwDQo+ID4gaW14OF9kZHIucmVhZF9jeWNsZXM6IDMyNzM2IDEwMDA0
NjAyNTAgMTAwMDQ2MDI1MA0KPiA+IGlteDhfZGRyLnJlYWRfY3ljbGVzOiAzODAxMiAxMDAwNDYz
MDAwIDEwMDA0NjMwMDANCj4gPiAgICAgICAyLjAwMDgxMjM3NSAgICAgICAgICAgICAgNzA1NjAg
ICAgICBpbXg4X2Rkci5yZWFkX2N5Y2xlcw0KPiAjICAgMTEwMi41IE1CICBpbXg4cW1fZGRyX3Jl
YWQuYWxsDQo+ID4gICAgICAgMi4wMDA4MTIzNzUgICAgICAgICAgICAgIDcwNzQ4ICAgICAgaW14
OF9kZHIucmVhZF9jeWNsZXMNCj4gPg0KPiANCj4gSSB0aGF0IGlzIGp1c3QgaG93IHRoZSBhbGlh
c2VzIHdvcmsuIEJ1dCBob3cgYWJvdXQgdHJ5aW5nOg0KPiANCj4gLi9wZXJmIHN0YXQgLXYgLWEg
LUkgMTAwMCAtTSBpbXg4X2RkcjAvaW14OHFtX2Rkcl9yZWFkLmFsbC8NCj4gDQo+IA0KPiBmb3Ig
anVzdCBkZHIwDQo+IA0KPiBJIGtub3cgdGhhdCB0aGUgZm9sbG93aW5nIHdvcmtlZCBmb3Igbm9u
LW1ldHJpY3MgZm9yIGFsaWFzZXMgb24gYSBzcGVjaWZpYyBIVw0KPiBQTVUsIHNvIEkgZ3Vlc3Mg
c2hvdWxkIGFsc28gd29yayBmb3IgbWV0cmljczoNCj4gDQo+IC4vcGVyZiBzdGF0IC1lIHNtbXV2
M19wbWNnXzIwMDE0ODAyMC9zbW11djNfcG1jZy5sMV90bGIvDQoNClllcywgdGhpcyBjYW4gd29y
ayBmb3Igbm9uLW1ldHJpY3MsIEkgdHJpZWQgYmVmb3JlLCBpdCBzZWVtcyB1bnN1cHBvcnRlZCBm
b3IgbWV0cmljLg0KDQpZb3UgbWF5IG1pc3VuZGVyc3RhbmQgbWUsIG5vdyBJIGRvZXNuJ3QgYXNr
IGZvciBhIHNwZWNpZmljIEhXIFBNVShkZHIwIG9yIGRkcjEpLCB0aGUgaXNzdWUgaXMgdGhhdCBp
dCB3b3VsZCBhZGQgYW5kIGNhbGN1bGF0ZSB0d2ljZSB3aGVuIG1vcmUgdGhhbiBvbmUgSFcgUE1V
Lg0KDQpJIGFsc28gZGlkIGJlbG93IGNoYW5nZSB3aGljaCBpcyBpbXBsZW1lbnRlZCBhdCBteSBs
b2NhbCBzaWRlLCBidXQgaXQgY2FuJ3Qgd29yayBvbiB5b3VyIGJyYW5jaC4NCi0tLSBhL3Rvb2xz
L3BlcmYvcG11LWV2ZW50cy9hcmNoL2FybTY0L2ZyZWVzY2FsZS9pbXg4bW0vc3lzL21ldHJpY3Mu
anNvbg0KKysrIGIvdG9vbHMvcGVyZi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvZnJlZXNjYWxlL2lt
eDhtbS9zeXMvbWV0cmljcy5qc29uDQpAQCAtMiw3ICsyLDcgQEANCiAgICB7DQogICAgICAgICAg
ICAiQnJpZWZEZXNjcmlwdGlvbiI6ICJieXRlcyBhbGwgbWFzdGVycyByZWFkIGZyb20gZGRyIGJh
c2VkIG9uIHJlYWQtY3ljbGVzIGV2ZW50IiwNCiAgICAgICAgICAgICJNZXRyaWNOYW1lIjogImlt
eDhtbV9kZHJfcmVhZC5hbGwiLA0KLSAgICAgICAgICAgIk1ldHJpY0V4cHIiOiAiaW14OF9kZHIu
cmVhZF9jeWNsZXMgKiA0ICogNCIsDQorICAgICAgICAgICAiTWV0cmljRXhwciI6ICJpbXg4X2Rk
cjBcXC9yZWFkXFwtY3ljbGVzXFwvICogNCAqIDQiLA0KICAgICAgICAgICAgIlNjYWxlVW5pdCI6
ICI5Ljc2NTYyNWUtNE1CIiwNCiAgICAgICAgICAgICJVbml0IjogImlteDhfZGRyIiwNCiAgICAg
ICAgICAgICJDb21wYXQiOiAiaS5teDhtbSINCkBAIC0xMCw5ICsxMCw5IEBADQogICAgew0KICAg
ICAgICAgICAgIkJyaWVmRGVzY3JpcHRpb24iOiAiYnl0ZXMgYWxsIG1hc3RlcnMgd3JpdGUgdG8g
ZGRyIGJhc2VkIG9uIHdyaXRlLWN5Y2xlcyBldmVudCIsDQogICAgICAgICAgICAiTWV0cmljTmFt
ZSI6ICJpbXg4bW1fZGRyX3dyaXRlLmFsbCIsDQotICAgICAgICAgICAiTWV0cmljRXhwciI6ICJp
bXg4X2Rkci53cml0ZV9jeWNsZXMgKiA0ICogNCIsDQorICAgICAgICAgICAiTWV0cmljRXhwciI6
ICJpbXg4X2RkcjBcXC9yZWFkXFwtY3ljbGVzXFwvICogNCAqIDQiLA0KICAgICAgICAgICAgIlNj
YWxlVW5pdCI6ICI5Ljc2NTYyNWUtNE1CIiwNCiAgICAgICAgICAgICJVbml0IjogImlteDhfZGRy
IiwNCiAgICAgICAgICAgICJDb21wYXQiOiAiaS5teDhtbSINCiAgICAgfQ0KLV0NClwgTm8gbmV3
bGluZSBhdCBlbmQgb2YgZmlsZQ0KK10NCg0Kcm9vdEBpbXg4cW1tZWs6fiMgLi9wZXJmIHN0YXQg
LXYgLWEgLUkgMTAwMCAtTSBpbXg4bW1fZGRyX3JlYWQuYWxsDQpVc2luZyBDUFVJRCAweDAwMDAw
MDAwNDEwZmQwODANCm1ldHJpYyBleHByIGlteDhfZGRyMFwvcmVhZFwtY3ljbGVzXC8gKiA0ICog
NCBmb3IgaW14OG1tX2Rkcl9yZWFkLmFsbA0KZm91bmQgZXZlbnQgaW14OF9kZHIwDQpmb3VuZCBl
dmVudCByZWFkLWN5Y2xlcw0KbWV0cmljIGV4cHIgaW14OF9kZHIwXC9yZWFkXC1jeWNsZXNcLyAq
IDQgKiA0IGZvciBpbXg4bW1fZGRyX3JlYWQuYWxsDQpmb3VuZCBldmVudCBpbXg4X2RkcjANCmZv
dW5kIGV2ZW50IHJlYWQtY3ljbGVzDQphZGRpbmcge2lteDhfZGRyMCxyZWFkLWN5Y2xlc306Vyx7
aW14OF9kZHIwLHJlYWQtY3ljbGVzfTpXDQpldmVudCBzeW50YXggZXJyb3I6ICd7aW14OF9kZHIw
LHJlYWQtY3ljbGVzfTpXLHtpbXg4X2RkcjAscmVhZC1jeWNsZXN9OlcnDQogICAgICAgICAgICAg
ICAgICAgICAgXF9fXyBwYXJzZXIgZXJyb3INCg0KIFVzYWdlOiBwZXJmIHN0YXQgWzxvcHRpb25z
Pl0gWzxjb21tYW5kPl0NCg0KICAgIC1NLCAtLW1ldHJpY3MgPG1ldHJpYy9tZXRyaWMgZ3JvdXAg
bGlzdD4NCiAgICAgICAgICAgICAgICAgICAgICAgICAgbW9uaXRvciBzcGVjaWZpZWQgbWV0cmlj
cyBvciBtZXRyaWMgZ3JvdXBzIChzZXBhcmF0ZWQgYnkgLCkNCg0KTm93IHRoZSBtZXRyaWNncm91
cCBjYW4ndCBwYXJzZSBhYm92ZSBtZXRyaWMgZXhwcmVzc2lvbiwgaXQgc2hvdWxkbid0IGJlLg0K
DQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCj4gVGhhbmtzLA0KPiBKb2huDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
