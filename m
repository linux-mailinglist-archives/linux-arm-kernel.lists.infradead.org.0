Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712B45F189
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 04:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jyezXC0O5k8PVH/GmXAmXIRUG6VJscncPPK0bNHEFw=; b=ie8GdFfVAxEDu3
	xELYT7Gg45YOJhBSAXr6MIRrUFNLUs/sgve6S4Pvv5JWWuLzpI0Pn7pzKxYd3L8dP+O9lFT39f3A8
	iUOI0otdnyiBwDWCGq2gW3Olu24P6J5YY29VmZ56+a2tejhCfkCMmqD+hg3AKjF1vCigs3pBLShKT
	XIRVUE1cMhfgz1uNZhW44bxxx12a17KBYMHGIGYl5UzNLZw43hTiGYxG77zKwE9g3A8cPlMXbbvga
	LnLGd+rmTZqUGLZEwSVGmOv+Qy5HMXXyIwP/v89NT8LcKktKqRzzdIYwH+TBQf8KhpcQzBbws6Tu3
	M7GzJ8HM4+SipczLuLCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hirdx-0003p2-SK; Thu, 04 Jul 2019 02:38:42 +0000
Received: from mail-eopbgr150042.outbound.protection.outlook.com
 ([40.107.15.42] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hirdc-0003oU-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 02:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4IRYvNjnzz83kFG/pFTRpLFbUCXnOQqBSit0u0GQYxw=;
 b=LuGqfK5n01pRgwkmSgS7b03HScd+mjTg2Ccst1bfglZ8muoPmnvZBnLcJ4D/Gp4fpVZiBeuCj46wwqUbOwIRjZoSF7nEV0+eTsmH8VelO+0VLssIqrr3G8L2cOHg0OF6D9p6ZsUUIrz5ZqhxBhBk4mjUkCYTJg08Z/MB+Yft06U=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB7163.eurprd04.prod.outlook.com (10.141.120.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.17; Thu, 4 Jul 2019 02:38:18 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0%6]) with mapi id 15.20.2032.019; Thu, 4 Jul 2019
 02:38:18 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCHv5 03/20] PCI: mobiveil: Correct the returned error number
Thread-Topic: [PATCHv5 03/20] PCI: mobiveil: Correct the returned error number
Thread-Index: AQHU8QqwGTpkCK3rR0itFH1s1bUioaa5cfGAgADOmdA=
Date: Thu, 4 Jul 2019 02:38:17 +0000
Message-ID: <DB8PR04MB6747EECF9610ED333B89195584FA0@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-4-Zhiqiang.Hou@nxp.com>
 <20190703141715.GB26804@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190703141715.GB26804@e121166-lin.cambridge.arm.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6e8854d-deea-40f2-bacf-08d70028abfc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB7163; 
x-ms-traffictypediagnostic: DB8PR04MB7163:
x-microsoft-antispam-prvs: <DB8PR04MB7163E813C70A4A8C664EE2FC84FA0@DB8PR04MB7163.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(396003)(346002)(366004)(189003)(199004)(13464003)(54534003)(6916009)(25786009)(81156014)(81166006)(55016002)(2906002)(6246003)(4326008)(33656002)(53936002)(74316002)(71200400001)(26005)(11346002)(71190400001)(7416002)(446003)(476003)(229853002)(486006)(68736007)(7696005)(102836004)(99286004)(8936002)(76176011)(14454004)(53546011)(6506007)(256004)(14444005)(478600001)(64756008)(6436002)(186003)(52536014)(6116002)(3846002)(86362001)(66066001)(5660300002)(7736002)(76116006)(66946007)(8676002)(9686003)(73956011)(66476007)(54906003)(305945005)(66446008)(66556008)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7163;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ebgHNpV4gGo9OkUVGe3zPUnzoigWegv2/c6DPvOA7gUwNJj3m9Ql1glZie7Qh38BfNmf/ByIgVRUjbsQiAlg3H6F129KCjn4ns6SLXdrVWFsbXwIsj4El6UFZCZDwJIFoeaGJSXHRWALaADr6NP4bM6aNWtPoGi/RfqBJxgWO8jcP8HTchIGSTa1/EEitKunSPVP9EAiCOUi6MaDtScwx/f8/3ztBzquuI/rKFQTqQijc6SxANAZFehfhW0ZTlaEjlMZYHvx8jkV6pu/Hx9ws37+Kc9uRwUFl7Dw9fXiObLEIocdtqUrp4c3E8G6TPuHx4hZZvnizSBwhvb4kCBc7URz1aEcAXK7O8gw+JTyuZyksN6u9Jduzv92efM7iUZtedV1uFh4+03XEEXS2vUpXw+HlMnS1kj6Yq3Tc/IJqtk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6e8854d-deea-40f2-bacf-08d70028abfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 02:38:17.9123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_193820_448418_09857685 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTG9yZW56bywNCg0KVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzIQ0KDQo+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJh
bGlzaUBhcm0uY29tPg0KPiBTZW50OiAyMDE5xOo31MIzyNUgMjI6MTcNCj4gVG86IFoucS4gSG91
IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT4NCj4gQ2M6IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gZGV2aWNldHJlZUB2Z2Vy
Lmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGJoZWxnYWFzQGdv
b2dsZS5jb207IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb207DQo+IGwu
c3VicmFobWFueWFAbW9iaXZlaWwuY28uaW47IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExlbyBMaQ0K
PiA8bGVveWFuZy5saUBueHAuY29tPjsgY2F0YWxpbi5tYXJpbmFzQGFybS5jb207IHdpbGwuZGVh
Y29uQGFybS5jb207DQo+IE1pbmdrYWkgSHUgPG1pbmdrYWkuaHVAbnhwLmNvbT47IE0uaC4gTGlh
biA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsNCj4gWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54
cC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0h2NSAwMy8yMF0gUENJOiBtb2JpdmVpbDogQ29y
cmVjdCB0aGUgcmV0dXJuZWQgZXJyb3INCj4gbnVtYmVyDQo+IA0KPiBPbiBGcmksIEFwciAxMiwg
MjAxOSBhdCAwODozNTozMEFNICswMDAwLCBaLnEuIEhvdSB3cm90ZToNCj4gPiBGcm9tOiBIb3Ug
WmhpcWlhbmcgPFpoaXFpYW5nLkhvdUBueHAuY29tPg0KPiA+DQo+ID4gVGhpcyBwYXRjaCBjb3Jy
ZWN0cyB0aGUgcmV0dXJuZWQgZXJyb3IgbnVtYmVyIGJ5IGNvbnZlbnRpb24sIGFuZA0KPiA+IHJl
bW92ZXMgYW4gdW5uZWNlc3NhcnkgZXJyb3IgY2hlY2suDQo+IA0KPiBUd28gZGlzdGluY3QgY2hh
bmdlcywgdHdvIHBhdGNoZXMsIHBsZWFzZSBzcGxpdCBhbmQgcmVwb3N0Lg0KDQpZZXMsIHdpbGwg
c3BsaXQgYW5kIHJlYmFzZSBvbiB0aGUgbmV3IGJyYW5jaC4NCg0KVGhhbmtzLA0KWmhpcWlhbmcN
Cg0KPiANCj4gTG9yZW56bw0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBIb3UgWmhpcWlhbmcgPFpo
aXFpYW5nLkhvdUBueHAuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBNaW5naHVhbiBMaWFuIDxNaW5n
aHVhbi5MaWFuQG54cC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IFN1YnJhaG1hbnlhIExpbmdhcHBh
IDxsLnN1YnJhaG1hbnlhQG1vYml2ZWlsLmNvLmluPg0KPiA+IC0tLQ0KPiA+IFY1Og0KPiA+ICAt
IENvcnJlY3RlZCBhbmQgcmV0b3VjaGVkIHRoZSBzdWJqZWN0IGFuZCBjaGFuZ2Vsb2cuDQo+ID4N
Cj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMgfCA4ICsrKy0tLS0t
DQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+
ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWls
LmMNCj4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jDQo+ID4gaW5k
ZXggYjg3NDcxZjA4YTQwLi41NjMyMTBlNzMxZDMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMNCj4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtbW9iaXZlaWwuYw0KPiA+IEBAIC04MTksNyArODE5LDcgQEAgc3RhdGljIGlu
dCBtb2JpdmVpbF9wY2llX2luaXRfaXJxX2RvbWFpbihzdHJ1Y3QNCj4gPiBtb2JpdmVpbF9wY2ll
ICpwY2llKQ0KPiA+DQo+ID4gIAlpZiAoIXBjaWUtPmludHhfZG9tYWluKSB7DQo+ID4gIAkJZGV2
X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IGEgSU5UeCBJUlEgZG9tYWluXG4iKTsNCj4gPiAtCQly
ZXR1cm4gLUVOT0RFVjsNCj4gPiArCQlyZXR1cm4gLUVOT01FTTsNCj4gPiAgCX0NCj4gPg0KPiA+
ICAJcmF3X3NwaW5fbG9ja19pbml0KCZwY2llLT5pbnR4X21hc2tfbG9jayk7DQo+ID4gQEAgLTg0
NSwxMSArODQ1LDkgQEAgc3RhdGljIGludCBtb2JpdmVpbF9wY2llX3Byb2JlKHN0cnVjdA0KPiBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4gIAkvKiBhbGxvY2F0ZSB0aGUgUENJZSBwb3J0ICov
DQo+ID4gIAlicmlkZ2UgPSBkZXZtX3BjaV9hbGxvY19ob3N0X2JyaWRnZShkZXYsIHNpemVvZigq
cGNpZSkpOw0KPiA+ICAJaWYgKCFicmlkZ2UpDQo+ID4gLQkJcmV0dXJuIC1FTk9ERVY7DQo+ID4g
KwkJcmV0dXJuIC1FTk9NRU07DQo+ID4NCj4gPiAgCXBjaWUgPSBwY2lfaG9zdF9icmlkZ2VfcHJp
dihicmlkZ2UpOw0KPiA+IC0JaWYgKCFwY2llKQ0KPiA+IC0JCXJldHVybiAtRU5PTUVNOw0KPiA+
DQo+ID4gIAlwY2llLT5wZGV2ID0gcGRldjsNCj4gPg0KPiA+IEBAIC04NjYsNyArODY0LDcgQEAg
c3RhdGljIGludCBtb2JpdmVpbF9wY2llX3Byb2JlKHN0cnVjdA0KPiBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpDQo+ID4gIAkJCQkJCSAgICAmcGNpZS0+cmVzb3VyY2VzLCAmaW9iYXNlKTsNCj4gPiAg
CWlmIChyZXQpIHsNCj4gPiAgCQlkZXZfZXJyKGRldiwgIkdldHRpbmcgYnJpZGdlIHJlc291cmNl
cyBmYWlsZWRcbiIpOw0KPiA+IC0JCXJldHVybiAtRU5PTUVNOw0KPiA+ICsJCXJldHVybiByZXQ7
DQo+ID4gIAl9DQo+ID4NCj4gPiAgCS8qDQo+ID4gLS0NCj4gPiAyLjE3LjENCj4gPg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
