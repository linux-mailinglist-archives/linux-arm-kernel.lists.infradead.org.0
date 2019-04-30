Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C182BEDEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 02:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HGZRMr4KfJwrIqViUoCsVAKq/c+/5wYY4UqVchNun4=; b=Sy3v/MBgK5hXxJ
	pAy21/sYax7yjxRU7UgrJ8Nw8Rt2Oofs+4iThwJq0s10GTk/2UDmcwgprn9wDFH7kisyT6WDhJiMh
	OW1oYpMoC6UTTPWJTCJ8sHsQwGG3+sPLpG+qgNZ6PLahH/D98ChXQIi4S5H+/YNtPlN+zqQwYMQ99
	77wc0SvC5w/B996weyemmk9eybX8EFBIXW0gkTd2nbXWynn5UmMwnO74etnFMny/QyO3DgldvypXF
	p7C8411p1QmobSAHpAo4itaWKOLc+XwiagjFnugRJiFRQGPvOK3wnDeMKzwQRQjdUqRJrwsf1b3wv
	xo3+qg69mQjyAlQggl+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLGl8-000401-3U; Tue, 30 Apr 2019 00:36:34 +0000
Received: from mail-eopbgr10050.outbound.protection.outlook.com ([40.107.1.50]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLGl0-0003zb-55
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 00:36:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GsTqW3rDD7gFNJvafxDzOTu6k8T3odiG5l/wvw33hC0=;
 b=NtSEpgHbVQwUyv4AwZ35IJG9Ee0WOXm9RSpQpvn9WtTqYvaA9HnhEzMGrm15PZ7/2zXgKuYsV7lLshiiNCh+VtG25wgIvXeFER6yV1kI1MRrKCmo8iOb8gq2yWOOn1eNsAno14kSMSwp5yKuOy1S12+fpB5iMGdcGMFPFEEub9c=
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com (20.179.3.19) by
 AM6PR04MB4119.eurprd04.prod.outlook.com (52.135.168.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Tue, 30 Apr 2019 00:36:22 +0000
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::f9db:ed86:614e:460]) by AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::f9db:ed86:614e:460%4]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 00:36:22 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>, Gustavo Pimentel
 <Gustavo.Pimentel@synopsys.com>
Subject: RE: [EXT] Re: [PATCH V3 04/16] PCI: dwc: Perform dbi regs write lock
 towards the end
Thread-Topic: [EXT] Re: [PATCH V3 04/16] PCI: dwc: Perform dbi regs write lock
 towards the end
Thread-Index: AQHU9IqewpDyJpQXwE6mOsZ+3qv9QaZAHpeAgAe3OACADBgJYA==
Date: Tue, 30 Apr 2019 00:36:22 +0000
Message-ID: <AM6PR04MB57816120E04D106D64F2AA39843A0@AM6PR04MB5781.eurprd04.prod.outlook.com>
References: <20190416192730.15681-1-vidyas@nvidia.com>
 <20190416192730.15681-5-vidyas@nvidia.com>
 <305100E33629484CBB767107E4246BBB0A22C127@de02wembxa.internal.synopsys.com>
 <20190422154608.6e6f8ae3@xhacker.debian>
In-Reply-To: <20190422154608.6e6f8ae3@xhacker.debian>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 519b1dae-5dc4-485e-8e35-08d6cd03deb7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4119; 
x-ms-traffictypediagnostic: AM6PR04MB4119:
x-microsoft-antispam-prvs: <AM6PR04MB41197318283D90771D21B181843A0@AM6PR04MB4119.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(366004)(346002)(376002)(136003)(189003)(199004)(13464003)(26005)(76176011)(6506007)(5660300002)(53546011)(186003)(486006)(68736007)(55016002)(6246003)(9686003)(476003)(66066001)(4326008)(86362001)(446003)(11346002)(25786009)(102836004)(66556008)(64756008)(2906002)(66446008)(52536014)(66946007)(6436002)(76116006)(256004)(66476007)(3846002)(6116002)(229853002)(5024004)(14444005)(73956011)(81156014)(71190400001)(81166006)(97736004)(71200400001)(74316002)(305945005)(8676002)(93886005)(8936002)(316002)(14454004)(7416002)(53936002)(478600001)(7696005)(33656002)(99286004)(7736002)(110136005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4119;
 H:AM6PR04MB5781.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /SBSSZ/r+EXNcqA0EeARSSpIaCJXglPhQbILyBRUrC2fvzhbOT5SOZmuU8Fd79XUF6MOb4RWeSswqvMgGeTps7x9rkGVDaKQfdTPdOTuDdHDoJBz/xEZmJQHa/+XKg67GoYU6A6timKgE9XzSgBMEW4gAGKVE0ZySEtvwML+De6KC3tl4wgvYqFPqEs4VI4Uvv/0We2hM2BWrN1zkVYle3d6LvvLpLu7Bf2i5u9BidH/CiFa/Olu7K8O2lB3Hsdx2dUOYsrIqRpCqsZMtdxSDDUkm8DBVEvP7KbqzIG13xIY1qk+ckyeXjFIKLislhhk12TWjSGzolci+2RhYreyAmuk5dG5kJvZj/C0hK6QjrHvEZeXtercMtYka6N3fCGmLg7/1klFynjZEXl7HxZnwdGFhVwk4VCP1LcTMhkk3Vs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 519b1dae-5dc4-485e-8e35-08d6cd03deb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 00:36:22.3510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_173626_201848_2E9FC004 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "kishon@ti.com" <kishon@ti.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "mperttunen@nvidia.com" <mperttunen@nvidia.com>,
 "mmaddireddy@nvidia.com" <mmaddireddy@nvidia.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kthota@nvidia.com" <kthota@nvidia.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, Vidya Sagar <vidyas@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sagar.tv@gmail.com" <sagar.tv@gmail.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEppc2hlbmcgWmhhbmcgW21h
aWx0bzpKaXNoZW5nLlpoYW5nQHN5bmFwdGljcy5jb21dDQo+IFNlbnQ6IDIwMTnE6jTUwjIyyNUg
MTU6NTUNCj4gVG86IEd1c3Rhdm8gUGltZW50ZWwgPEd1c3Rhdm8uUGltZW50ZWxAc3lub3BzeXMu
Y29tPjsgWi5xLiBIb3UNCj4gPHpoaXFpYW5nLmhvdUBueHAuY29tPg0KPiBDYzogVmlkeWEgU2Fn
YXIgPHZpZHlhc0BudmlkaWEuY29tPjsgYmhlbGdhYXNAZ29vZ2xlLmNvbTsNCj4gcm9iaCtkdEBr
ZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgdGhpZXJyeS5yZWRpbmdAZ21haWwuY29t
Ow0KPiBqb25hdGhhbmhAbnZpZGlhLmNvbTsga2lzaG9uQHRpLmNvbTsgY2F0YWxpbi5tYXJpbmFz
QGFybS5jb207DQo+IHdpbGwuZGVhY29uQGFybS5jb207IGxvcmVuem8ucGllcmFsaXNpQGFybS5j
b207IGppbmdvb2hhbjFAZ21haWwuY29tOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsg
bW1hZGRpcmVkZHlAbnZpZGlhLmNvbTsga3Rob3RhQG52aWRpYS5jb207DQo+IGxpbnV4LXBjaUB2
Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IG1wZXJ0dHVu
ZW5AbnZpZGlhLmNvbTsgbGludXgtdGVncmFAdmdlci5rZXJuZWwub3JnOw0KPiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IHNhZ2FyLnR2QGdtYWlsLmNvbQ0KPiBTdWJqZWN0
OiBbRVhUXSBSZTogW1BBVENIIFYzIDA0LzE2XSBQQ0k6IGR3YzogUGVyZm9ybSBkYmkgcmVncyB3
cml0ZSBsb2NrDQo+IHRvd2FyZHMgdGhlIGVuZA0KPiANCj4gV0FSTklORzogVGhpcyBlbWFpbCB3
YXMgY3JlYXRlZCBvdXRzaWRlIG9mIE5YUC4gRE8gTk9UIENMSUNLIGxpbmtzIG9yDQo+IGF0dGFj
aG1lbnRzIHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5kZXIgYW5kIGtub3cgdGhlIGNvbnRl
bnQgaXMgc2FmZS4NCj4gDQo+IA0KPiANCj4gT24gV2VkLCAxNyBBcHIgMjAxOSAwOTo1NjozMyAr
MDAwMCBHdXN0YXZvIFBpbWVudGVsIHdyb3RlOg0KPiANCj4gPg0KPiA+IE9uIFR1ZSwgQXByIDE2
LCAyMDE5IGF0IDIwOjI3OjE4LCBWaWR5YSBTYWdhciA8dmlkeWFzQG52aWRpYS5jb20+IHdyb3Rl
Og0KPiA+DQo+ID4gPiBSZW1vdmUgbXVsdGlwbGUgd3JpdGUgZW5hYmxlIGFuZCBkaXNhYmxlIHNl
cXVlbmNlcyBvZiBkYmkgcmVnaXN0ZXJzDQo+ID4gPiBhcw0KPiA+ID4gVGVncmExOTQgaW1wbGVt
ZW50cyB3cml0ZXMgdG8gQkFSLTAgcmVnaXN0ZXIgKG9mZnNldDogMHgxMCkNCj4gPiA+IGNvbnRy
b2xsZWQgYnkgREJJIHdyaXRlLWxvY2sgZW5hYmxlIGJpdCB0aGVyZWJ5IG5vdCBhbGxvd2luZyBh
bnkNCj4gPiA+IGZ1cnRoZXIgd3JpdGVzIHRvIEJBUi0wIHJlZ2lzdGVyIGluIGNvbmZpZyBzcGFj
ZSB0byB0YWtlIHBsYWNlLg0KPiA+ID4gSGVuY2UgZGlzYWJsaW5nIHdyaXRlIHBlcm1pc3Npb24g
b25seSB0b3dhcmRzIHRoZSBlbmQuDQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVmlkeWEg
U2FnYXIgPHZpZHlhc0BudmlkaWEuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiBDaGFuZ2VzIHNpbmNl
IFt2Ml06DQo+ID4gPiAqIE5vbmUNCj4gPiA+DQo+ID4gPiBDaGFuZ2VzIHNpbmNlIFt2MV06DQo+
ID4gPiAqIE5vbmUNCj4gPiA+DQo+ID4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kZXNpZ253YXJlLWhvc3QuYyB8IDMgLS0tDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgZGVs
ZXRpb25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1ob3N0LmMNCj4gPiA+IGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYw0KPiA+ID4gaW5kZXggMmE1MzMyZTVjY2Zh
Li5jMDMzNGM5MmMxYTYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWRlc2lnbndhcmUtaG9zdC5jDQo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtaG9zdC5jDQo+ID4gPiBAQCAtNjgzLDcgKzY4Myw2
IEBAIHZvaWQgZHdfcGNpZV9zZXR1cF9yYyhzdHJ1Y3QgcGNpZV9wb3J0ICpwcCkNCj4gPiA+ICAg
ICAgIHZhbCAmPSAweGZmZmYwMGZmOw0KPiA+ID4gICAgICAgdmFsIHw9IDB4MDAwMDAxMDA7DQo+
ID4gPiAgICAgICBkd19wY2llX3dyaXRlbF9kYmkocGNpLCBQQ0lfSU5URVJSVVBUX0xJTkUsIHZh
bCk7DQo+ID4gPiAtICAgICBkd19wY2llX2RiaV9yb193cl9kaXMocGNpKTsNCj4gPiA+DQo+ID4g
PiAgICAgICAvKiBTZXR1cCBidXMgbnVtYmVycyAqLw0KPiA+ID4gICAgICAgdmFsID0gZHdfcGNp
ZV9yZWFkbF9kYmkocGNpLCBQQ0lfUFJJTUFSWV9CVVMpOyBAQCAtNzIzLDgNCj4gPiA+ICs3MjIs
NiBAQCB2b2lkIGR3X3BjaWVfc2V0dXBfcmMoc3RydWN0IHBjaWVfcG9ydCAqcHApDQo+ID4gPg0K
PiA+ID4gICAgICAgZHdfcGNpZV93cl9vd25fY29uZihwcCwgUENJX0JBU0VfQUREUkVTU18wLCA0
LCAwKTsNCj4gPiA+DQo+ID4gPiAtICAgICAvKiBFbmFibGUgd3JpdGUgcGVybWlzc2lvbiBmb3Ig
dGhlIERCSSByZWFkLW9ubHkgcmVnaXN0ZXIgKi8NCj4gPiA+IC0gICAgIGR3X3BjaWVfZGJpX3Jv
X3dyX2VuKHBjaSk7DQo+ID4gPiAgICAgICAvKiBQcm9ncmFtIGNvcnJlY3QgY2xhc3MgZm9yIFJD
ICovDQo+ID4gPiAgICAgICBkd19wY2llX3dyX293bl9jb25mKHBwLCBQQ0lfQ0xBU1NfREVWSUNF
LCAyLA0KPiBQQ0lfQ0xBU1NfQlJJREdFX1BDSSk7DQo+ID4gPiAgICAgICAvKiBCZXR0ZXIgZGlz
YWJsZSB3cml0ZSBwZXJtaXNzaW9uIHJpZ2h0IGFmdGVyIHRoZSB1cGRhdGUgKi8NCj4gPiA+IC0t
DQo+ID4gPiAyLjE3LjENCj4gPg0KPiA+IFRoaXMgc2V0dXAgc2VxdWVuY2Ugd2FzIHdyaXR0ZW4g
YnkgSmluZ29vIEhhbiwgbGV0J3MgY2hlY2sgaWYgaGUgZGlkDQo+ID4gdGhpcyBieSBzb21lIHBh
cnRpY3VsYXIgcmVhc29uLg0KPiA+IEppbmdvbyBkbyB5b3UgcmVtZW1iZXIgd2h5IHlvdSB3cm90
ZSB0aGUgY29kZSBsaWtlIHRoaXM/DQo+IA0KPiBGV0lDVCwgZW5hYmxpbmcgUk8gd3JpdGVhYmxl
IGluIHRoZSBzZXR1cCBzZXF1ZW5jZSBpcyBpbnRyb2R1Y2VkIGluIGNvbW1pdA0KPiBkOTFkZmU1
MDU0ZDQgKCJQQ0k6IGR3YzogRW5hYmxlIHdyaXRlIHBlcm1pc3Npb24gZm9yIENsYXNzIENvZGUs
IEludGVycnVwdA0KPiBQaW4gdXBkYXRlcyIpLiBUaGUgUmVhc29uIHdoeSBub3QgdG93YXJkcyB0
aGUgZW5kIG1heWJlIG9ubHkgZW5hYmxlIHRoZQ0KPiBSTyB3cml0ZWFibGUgd2hlbiBuZWNlc3Nh
cnkuDQo+IA0KDQpZZXMsIHlvdSBnZXQgdGhlIHBvaW50LCBJIHRoaW5rIGl0J3Mgbm90IGEgZ29v
ZCBjaG9pY2UgdG8gdW5sb2NrIHRoZSB3cml0ZSBwZXJtaXNzaW9uDQpvZiB0aGUgUk8gcmVnaXN0
ZXJzIGFsbCB0aHJvdWdoLg0KDQpUaGFua3MsDQpaaGlxaWFuZw0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
