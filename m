Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735471AD890
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 10:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Ab64d4zdoOFJ6FMOVfLKX2Bg1L1JOxPABU8zil6iZ0=; b=NzWZkwVMnuGcQq
	ATEKqXzla3vzPerhuebPE/mpDn4szPlU4bS9/wDcJvNdmsw3l5cZmHt5GoLI72mtCWeb2foUiYq4P
	tZd7ftq1ucgHJsCDD1iOxuluZ/FNrpndmKXqOIMM19XzNfMRZl8zdgNXRsgCLpRWd/NcFxZLvlAly
	v9rcE3vkIk2rycJnLn0cz0Qf0gKIMmnh5rqQQ1oGTYyAAU4Tg8wQAsxEw9+jrDZc6ObAagsc0SB8/
	agU/LMCo0kufShIxSZWW2FxHNGi9vqcCZWu+NDt+P3oyrM6PzMC4jaPHmUPTfcKABYGg6cgb7QO3Y
	BFRBCY3Xlw8Ka/vUXBog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMOK-0007S6-8y; Fri, 17 Apr 2020 08:30:28 +0000
Received: from mail-eopbgr140057.outbound.protection.outlook.com
 ([40.107.14.57] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMNu-0006gP-Kx
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 08:30:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JBstErwFSQIqgHRdaDvUorJyH69ix/tzLTE4acvan3gWntHs3ame3tiXLZ3O7CK4pldo4QExKJFf/3i5PkuCkoOIltDfwlUfKEihdmMkrk7GwsXwm/u+iPUD0MlJEHpsUILEaozMbeecrbrVD97mviC/6MVFYN6Y65AIjVjG3+7AZnKCxD0b7SDAXhh6F5ewXMw8CAjzOrjIDPCC5oWTS+bc8kuMAr60NtOpntsFakhqIjJe5mvv3QfaOyJop5ddyaKNWZxRlICJ6fn4iE3utYY3gPWMRxY9Ln2v4wtzdtYjDuLvXiSMva4vhaBjirWu4waN7yASop32+kFfvaLdSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jvxCIiPn6tsze6IMi879CyBVCxGbub2Zwqb3s+2xA1A=;
 b=nmqWvSgw04W0FhUWiEKKTmaIudeGKGVPdaoiP9Apnjaxu6xeghxnMyCher/RlzSbRCIncp7HU2R42skmeI3z85muOuvWBr9CyCoVgFtMaG5FELylMKGuBUVGo/Qw6e3318ckTtsye2lKCW8ntW6IdnEbezLl1LETXQyvWPZw0ShY2Q1EriHgW8UpyQGnC9vCe7iB4o035P2MGMhfLvYJTXtEmIE5sErmqpOGpulw7yutV59WL+hdGv3YPr6sg7jJDIsKz+xV03oo6qKMvXkry61BN9J8h4m0WJ4YAVaXzjjEp3i4Iq9jYjEs7ND2yhjAzLfnQnNTX8NkGI4LcMzoDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jvxCIiPn6tsze6IMi879CyBVCxGbub2Zwqb3s+2xA1A=;
 b=MRi3+Om7lGZ7Z4LZJZoSFvLeKPDPg4sbCPZ/bywmZJ05IpJCXSsHgAR7pB7Yj6uoolMJCzc44vY3s69WuLWEx/0w9pNOLH/IBgT4JNcwKkEVVsSwET1fkwtciyRYE9Vi8bzfbq12sborC2EhMGiBj9/Yl8JAMAyzp/NV/A5xqGA=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6860.eurprd04.prod.outlook.com (2603:10a6:10:112::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Fri, 17 Apr
 2020 08:29:56 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%8]) with mapi id 15.20.2921.027; Fri, 17 Apr 2020
 08:29:56 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>, "irogers@google.com"
 <irogers@google.com>
Subject: RE: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Topic: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
Thread-Index: AQHV6W3A3nevwmck+keoVVW6IJgc3agqKT2AgAAQDjCAAeWxAIAA772QgAAzaoCAAAYD8IAAflQAgDNsawCADJBnsIAARCOAgADH/+CAAH3ngIAAD3DwgArgwQCAAWzPUIAAldwAgADjz4CAACmfgIAAAyEA
Date: Fri, 17 Apr 2020 08:29:56 +0000
Message-ID: <DB8PR04MB6795285BBB9DC3A7198C23DDE6D90@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <DB7PR04MB4618C0A8DD9BAB2A529CDCECE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <a2cc0772-4f5d-aba3-1f5c-7d4eef7a3f72@huawei.com>
 <DB7PR04MB461803AD15E47AA880F0915DE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
 <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
 <DB8PR04MB6795996085AD2167E2358907E6C30@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <ccab39b0-c84f-e529-4067-07466b5433a1@huawei.com>
 <VI1PR04MB68000808CEE4BC23403C35A0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <ca2db002-975a-ffe0-2dfc-c85f4e6205bb@huawei.com>
 <VI1PR04MB6800F2A5949F0AFAF2E82CE0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
 <0b3999b8-c307-6b4a-1a1b-e90b45f50b61@huawei.com>
 <DB8PR04MB67957F63165ACC0483F6AE39E6D80@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <8341b035-2fac-52dd-45d1-2bf6f5ea4ba4@huawei.com>
 <DB8PR04MB67952380E7240167C7E81178E6D90@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <1952b369-f3fd-845f-650b-3c0464e37016@huawei.com>
In-Reply-To: <1952b369-f3fd-845f-650b-3c0464e37016@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d9350aab-ed8a-496a-6c56-08d7e2a982c2
x-ms-traffictypediagnostic: DB8PR04MB6860:|DB8PR04MB6860:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6860FC964C16641C273DEB7CE6D90@DB8PR04MB6860.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0376ECF4DD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(346002)(376002)(136003)(53546011)(7416002)(7696005)(71200400001)(316002)(110136005)(33656002)(54906003)(6506007)(64756008)(478600001)(66556008)(52536014)(66946007)(66476007)(66446008)(5660300002)(81156014)(76116006)(26005)(186003)(55016002)(86362001)(9686003)(8936002)(8676002)(4326008)(2906002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ip3JDs+vaj2KcTytjHgDcYzos7v/Y+TGnc7OneLA+taevhl8EtDDikVX0slt2HAkjve85y1izxUzFLGEtMNzx+ImQvEa11c1AKpJQnE1xnv3MnEgZWwka+W/HFEb+moUB8Q2SGkope5mNOx/QggEcH6Yko+oIdxRe05rvb++ziE4XV9t6xcrmYfXFJAov3+78EnpEF5CI3kTBeGKuFktUwOYnxR9I+oEBqdxajI8c9QKR2agerPzLHoD7iGzZTGDM+kkGIwL0rFq8UxbdmxsM74DRTHXl+GmlvOZELOToy1Ioq1TPO7wYHO7G6Pxrlnq+bLGFmCeqv8iql5/ATJSUmRDiZuuAaqnkdgqDha3i/zYJsV3tgpk5OY0kP2/jvfecw8ffw36mF8tx29AS1DqZBglWRzIB65WEy0qgiVnzheGV19TVlR6t8imJnFgVGDE
x-ms-exchange-antispam-messagedata: m4nJWbZjHgrBN+lw9cp0CMCJ0D9aOfhhaRxZEbRgU4npvFZwTONCOONV8Co8fvGA5MQJ8l6JuOOEpDNoHq8xIA2exloE8Y+ZOPuPVWEGUQGp3nPlRL8OuWM5z/96w93uO8jFN7WhahzXcnNC5yIThQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9350aab-ed8a-496a-6c56-08d7e2a982c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2020 08:29:56.5940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q8vx6XrewFrSS34UGTTxuhdPQ5cWlIWqDvs1Yj9Ng6Oi9S2ZQHyKilDKdFMllvV2IWf8KyCfT+mapOnZQKFpQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6860
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_013002_720559_7E50E70E 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Zhangshaokun <zhangshaokun@hisilicon.com>, "will@kernel.org" <will@kernel.org>,
 Linuxarm <linuxarm@huawei.com>, "acme@kernel.org" <acme@kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMOW5tDTmnIgxN+aXpSAxNjoxNQ0KPiBUbzog
Sm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT47IGlyb2dlcnNAZ29vZ2xlLmNv
bQ0KPiBDYzogd2lsbEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgYWNtZUBrZXJu
ZWwub3JnOw0KPiBsaW51eC1wZXJmLXVzZXJzQHZnZXIua2VybmVsLm9yZzsgZGwtbGludXgtaW14
IDxsaW51eC1pbXhAbnhwLmNvbT47IEppcmkgT2xzYQ0KPiA8am9sc2FAcmVkaGF0LmNvbT47IFpo
YW5nc2hhb2t1biA8emhhbmdzaGFva3VuQGhpc2lsaWNvbi5jb20+Ow0KPiBMaW51eGFybSA8bGlu
dXhhcm1AaHVhd2VpLmNvbT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0K
PiBTdWJqZWN0OiBSZTogW1BBVENIIDAvNl0gcGVyZi9pbXhfZGRyOiBBZGQgbmFtZXNwYWNlIGZv
ciBpLk1YOCBERFIgUGVyZg0KPiANCj4gT24gMTcvMDQvMjAyMCAwNjo0OSwgSm9ha2ltIFpoYW5n
IHdyb3RlOg0KPiA+PiAgIHNtbXV2M19wbWNnLnRyYW5zYWN0aW9uICAoNDkuNTYlKQ0KPiA+PiAx
MjQ5MDI0NzMgICAgICBzbW11djNfcG1jZy5jeWNsZXMgICAgICAgKDQ5LjU2JSkNCj4gPj4NCj4g
Pj4gICAgICAgICAgMS4wMDExNjcyNDYgc2Vjb25kcyB0aW1lIGVsYXBzZWQNCj4gPj4NCj4gPj4g
U28geW91IGNhbiBjb21wYXJlIHRoaXMgdG8geW91cnMuDQo+ID4+DQo+ID4+IEkgZGlkIGhhdmUg
dG8gZml4IHdoYXQgbG9va3MgbGlrZSBhIGJ1ZyBpbiBtYWlubGluZSBvbiB0aGF0IGJyYW5jaDoN
Cj4gPiBUZXN0ZWQgb24gcHJpdmF0ZS10b3BpYy1wZXJmLTUuNy1zeXMtcG11LWV2ZW50cy12MS1k
ZWJ1ZyBicmFuY2gsIEREUiBQZXJmDQo+IGNhbiB3b3JrIG5vdywgdGhhbmtzLg0KPiA+IFBsZWFz
ZSByZW1lbWJlciB0byB1cGRhdGUgSlNPTiBmaWxlcyB3aGljaCBub3RpZmllZCBiZWZvcmUuDQo+
ID4NCj4gPiBCZXN0IFJlZ2FyZHMsDQo+ID4gSm9ha2ltIFpoYW5nDQo+ID4+IC0tLT44LS0tLS0N
Cj4gDQo+IA0KPiBvaywgZ29vZC4gU28gd2l0aG91dCB0aGlzIGZpeCBJIHN1cHBsaWVkLCBpdCBk
aWQgc3RpbGwgbG9vayB0byB3b3JrIGZvciBtZSwgYnV0IHdpbGwNCj4gbG90cyBvZiBjb21wbGFp
bmluZyBmcm9tIHBlcmYuDQoNCkFncmVlIQ0KDQo+IEFueXdheSwgSSdsbCBsb29rIHRvIHNlbmQg
dGhpcyBzZXJpZXMgc29vbiwgYW5kIEknbGwgdXBkYXRlIHRoZSBpbXggSlNPTnMgYXMNCj4gcmVx
dWVzdGVkLiBZb3Ugd2lsbCBuZWVkIHRvIHRoZW4gYWRkIGEgZnJlc2ggc2lnbmVkLW9mZi1ieSB0
byB3aGF0IEkgc2VuZC4NCg0KRmVlbCBmcmVlIGFkZCBteSBzaWduZWQtb2ZmLWJ5IHRhZyBkaXJl
Y3RseToNCglTaWduZWQtb2ZmLWJ5OiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAu
Y29tPg0KDQpBZnRlciB0ZXN0LCBJIHdpbGwgZ2l2ZSBteSBUZXN0ZWQtYnkgdGFnLg0KDQpUaGFu
a3MuDQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiB0aGFua3MsDQo+IGpvaG4NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
