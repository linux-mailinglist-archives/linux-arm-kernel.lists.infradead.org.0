Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE7611A8D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxDcuoh3HyAZZzkFwgf7Isn6hvMXGQQsB4NO3BiMdBA=; b=pbkIxpnNB7XzTz
	rrhTzxxLRCbvVGw/+pwiqTM+Z5LoTqPzfm0nD8Xwo08+lNyI6XJh6WxrJSDvE13uYXGG3PUm6h5uv
	/zdcz8U5Yn5z4RWljMB6B+5vRN4uGuglH3L2GQ/5ixRz3FUxvR8U0nZMJrT+4/qnU+pqyP5k/S8ML
	+SgSBoELxrHSm4IWFLIcorcc5KsonqE5YtdJnBmVyUCn+q/3aTCuq6b1ryxDVoimmkuyeXomp/6Lo
	g/ckBXgPDU3McjOjYYSFYqqOPmPARGOVVE1OjtR7P6Pzs6AZbj9svfRdPYKn7FDxFFiE2xIp028Qi
	TgarG2vU+0VqhibhF97A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezBe-0006tb-4t; Wed, 11 Dec 2019 10:25:42 +0000
Received: from mail-eopbgr130085.outbound.protection.outlook.com
 ([40.107.13.85] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezBV-0006sr-64
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:25:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=REQX7V+QUjy/hCAbjLJAf5i1Zf7VJOQO+v2i08373NV0LWFXiXPLrcuwyza8djHPPU39HxTcPY8OhvpWo//JI4T0B+SwatmLaGghfPW5PfVVwPUHn47puo6VD+ah0xehx4eaIYWR+BXz4zC11TqMhCtqo+XGukRRPtI+wgCDmsHC4OsWhOnXQJNlkhxzxwYrzMAJr/NMdP5iWYUiaUyEOIe0QMhMWs9PDHhZtF8CBpRPDCETkgenYGhQX7Mcnx7YUHOy2t1iTjpUG2CfKD2v+uz5o1aZh9LL/OPP9hoMksnrAnzPBRLte5ne8/bl3DdveHxLkQwy0cMafmSa6oogCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ezj2q4GK++1UoWCZOEsITaX6S+FWh7TnaGDvUpc9p9k=;
 b=VXT979MsgsOK8zIJXos9Y1FYkABispaQrI7alVKLo365YYdqLESpN0ZkuKVucFr811rHxUlhZqo2nGlRLK1AtRDPDR+QXlL1VMUvqrHi0DbpwHJD3oeoqHp32W9IzwvD0u8t+8iUrcjqYaq0ktToCSbqe0IPZ7QPlBnEQqKaYycCV55vUn+tdLpdFt7YTvGz+JGA1tVxw5jBHj1dPomzx1PPtJNsD/ZB40MOsc3aHt1NKsAa7rZ+juU7qwwFnMWguVbDwFXNr0EhhZ72uSu4yw/sbL8LDjQsx98UB+QuPHUTqtfDvDfBrDYPicK4uDfj+xY6h17ejcE1SeMFdSOCBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ezj2q4GK++1UoWCZOEsITaX6S+FWh7TnaGDvUpc9p9k=;
 b=lm9p+q5uILtUeuXqCPbIjUhhnB+CF14L4M44HOmMAF1tpoCOItjn5LwftWhCk9iAdpBizYKtxRisG2JDmSHqys07povoRhSnGtLnmPitzPTJo8lPi4j3082MQiN9gb+um1GIZUdHhstbg7aI6ekF6Wx2cj6t4mWrh206HMz60iI=
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com (20.177.55.205) by
 VI1PR04MB5808.eurprd04.prod.outlook.com (20.178.127.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Wed, 11 Dec 2019 10:25:27 +0000
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2]) by VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2%3]) with mapi id 15.20.2516.019; Wed, 11 Dec 2019
 10:25:26 +0000
From: Peng Ma <peng.ma@nxp.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: [EXT] Re: [PATCH] i2c: imx: Defer probing if EDMA not available
Thread-Topic: [EXT] Re: [PATCH] i2c: imx: Defer probing if EDMA not available
Thread-Index: AQHVpPH7P18PyO0DCUWpmTSTyww0uaegXQmAgBRv36A=
Date: Wed, 11 Dec 2019 10:25:26 +0000
Message-ID: <VI1PR04MB4431CF7F051F9439C84F84FAED5A0@VI1PR04MB4431.eurprd04.prod.outlook.com>
References: <20191127071136.5240-1-peng.ma@nxp.com>
 <20191128100613.GI25745@shell.armlinux.org.uk>
In-Reply-To: <20191128100613.GI25745@shell.armlinux.org.uk>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.ma@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6f5fdc6b-3700-4aee-e02f-08d77e24709b
x-ms-traffictypediagnostic: VI1PR04MB5808:|VI1PR04MB5808:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5808084EB40A3FDA0A9DC614ED5A0@VI1PR04MB5808.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(13464003)(189003)(199004)(5660300002)(44832011)(33656002)(55016002)(2906002)(8936002)(316002)(52536014)(9686003)(6916009)(81156014)(81166006)(4326008)(7696005)(186003)(71200400001)(6506007)(66556008)(64756008)(66446008)(45080400002)(76116006)(966005)(66946007)(86362001)(54906003)(478600001)(66476007)(8676002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5808;
 H:VI1PR04MB4431.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sZK8elfHg3UyAUegXj0hsPeqNqUicou/MGC0bvZmwkR43aqa6gfnD/lFJxGl3ftWtaZ+YWsjL3FJmbAFd+GOgev0CVCo/PunXSF+F8JBoOJCwUX/UCcSELTXsksNV/aICiisfJYpQ7ShAmMzNX793Ck47Pqk7kFKLsbTyp67tc5tUME8ouhsVp5s1cFsTEE0D848ZfJYAhp6mTceelZlFyGsAYMPpCx0JJWGVa5wj4VH9xfr0dTVf+FQ/0151bh0LHWJinKgEz+oTjoKX405riY3sxcJmyMlZ+jcyCF59k1vumW78blEdtEdflLARBvZpaFgRYAUc17osDhPvwESv6DtlnmaXiA4s56/47sGT+hlWmIizF8z588t3ecmBTwRGI4ZnAsBRRsoO9Uxy8hIg5cW2U/O1ip3seqcstzSbUF4U7TJRZ1Cy3tvgn1gcCBwXoFUVoX/QfZliI67j52tcmdfdtL6ZSZy0UJydn596e5bZwoy6T8vxumtCVBhIyZcEJhtGSC9eHrOKM016z4rLKfQhlKHBoEsxtpRiWPOv4k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f5fdc6b-3700-4aee-e02f-08d77e24709b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 10:25:26.7841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vuwfZ7pIUTP+y0AFQIhhXQDWk6S894qWY+JGpyltu+0sohjOLJR/ihroJkitDXnr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5808
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_022533_235467_830BBC9D 
X-CRM114-Status: GOOD (  23.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwNCg0KSSBhbSBzb3JyeSB0byByZXBseSBsYXRlLCB0aGFua3MgZm9yIHlvdXIg
cGF0aWVudCByZW1pbmRpbmcsDQpQbGVhc2Ugc2VlIG15IGNvbW1lbnRzIGlubGluZS4NCg0KQmVz
dCBSZWdhcmRzLA0KUGVuZw0KPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogUnVz
c2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIDxsaW51eEBhcm1saW51eC5vcmcudWs+DQo+U2Vu
dDogMjAxOcTqMTHUwjI4yNUgMTg6MDYNCj5UbzogUGVuZyBNYSA8cGVuZy5tYUBueHAuY29tPg0K
PkNjOiBsaW51eEByZW1wZWwtcHJpdmF0LmRlOyBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IHNoYXdu
Z3VvQGtlcm5lbC5vcmc7DQo+cy5oYXVlckBwZW5ndXRyb25peC5kZTsgbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZzsgZGwtbGludXgtaW14DQo+PGxpbnV4LWlteEBueHAuY29tPjsgZmVzdGV2
YW1AZ21haWwuY29tOw0KPmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXgtaTJjQHZnZXIua2VybmVsLm9yZw0KPlN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0hdIGkyYzog
aW14OiBEZWZlciBwcm9iaW5nIGlmIEVETUEgbm90IGF2YWlsYWJsZQ0KPg0KPkNhdXRpb246IEVY
VCBFbWFpbA0KPg0KPk9uIFdlZCwgTm92IDI3LCAyMDE5IGF0IDA3OjEyOjA5QU0gKzAwMDAsIFBl
bmcgTWEgd3JvdGU6DQo+PiBFRE1BIG1heSBiZSBub3QgYXZhaWxhYmxlIG9yIGRlZmVyZWQgZHVl
IHRvIGRlcGVuZGVuY2llcyBvbiBvdGhlcg0KPj4gbW9kdWxlcywgSWYgdGhlc2Ugc2NlbmFyaW9z
IGlzIGVuY291bnRlcmVkLCB3ZSBzaG91bGQgZGVmZXIgcHJvYmluZy4NCj4NCj5UaGlzIGhhcyBi
ZWVuIHRyaWVkIGJlZm9yZSBpbiB0aGlzIGZvcm0sIGFuZCBpdCBjYXVzZXMgcmVncmVzc2lvbnMu
DQo+DQo+PiBTaWduZWQtb2ZmLWJ5OiBQZW5nIE1hIDxwZW5nLm1hQG54cC5jb20+DQo+PiAtLS0N
Cj4+ICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLWlteC5jIHwgMTYgKysrKysrKysrKystLS0tLQ0K
Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPj4N
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWlteC5jDQo+PiBiL2RyaXZl
cnMvaTJjL2J1c3Nlcy9pMmMtaW14LmMgaW5kZXggNDAxMTFhMy4uYzJiMDY5MyAxMDA2NDQNCj4+
IC0tLSBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtaW14LmMNCj4+ICsrKyBiL2RyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtaW14LmMNCj4+IEBAIC0zNjksOCArMzY5LDggQEAgc3RhdGljIHZvaWQgaTJj
X2lteF9yZXNldF9yZWdzKHN0cnVjdA0KPj4gaW14X2kyY19zdHJ1Y3QgKmkyY19pbXgpICB9DQo+
Pg0KPj4gIC8qIEZ1bmN0aW9ucyBmb3IgRE1BIHN1cHBvcnQgKi8NCj4+IC1zdGF0aWMgdm9pZCBp
MmNfaW14X2RtYV9yZXF1ZXN0KHN0cnVjdCBpbXhfaTJjX3N0cnVjdCAqaTJjX2lteCwNCj4+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkbWFfYWRkcl90DQo+
cGh5X2FkZHIpDQo+PiArc3RhdGljIGludCBpMmNfaW14X2RtYV9yZXF1ZXN0KHN0cnVjdCBpbXhf
aTJjX3N0cnVjdCAqaTJjX2lteCwNCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgZG1h
X2FkZHJfdCBwaHlfYWRkcikNCj4+ICB7DQo+PiAgICAgICBzdHJ1Y3QgaW14X2kyY19kbWEgKmRt
YTsNCj4+ICAgICAgIHN0cnVjdCBkbWFfc2xhdmVfY29uZmlnIGRtYV9zY29uZmlnOyBAQCAtMzc5
LDcgKzM3OSw3IEBAIHN0YXRpYw0KPj4gdm9pZCBpMmNfaW14X2RtYV9yZXF1ZXN0KHN0cnVjdCBp
bXhfaTJjX3N0cnVjdCAqaTJjX2lteCwNCj4+DQo+PiAgICAgICBkbWEgPSBkZXZtX2t6YWxsb2Mo
ZGV2LCBzaXplb2YoKmRtYSksIEdGUF9LRVJORUwpOw0KPj4gICAgICAgaWYgKCFkbWEpDQo+PiAt
ICAgICAgICAgICAgIHJldHVybjsNCj4+ICsgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQo+
Pg0KPj4gICAgICAgZG1hLT5jaGFuX3R4ID0gZG1hX3JlcXVlc3RfY2hhbihkZXYsICJ0eCIpOw0K
Pj4gICAgICAgaWYgKElTX0VSUihkbWEtPmNoYW5fdHgpKSB7DQo+PiBAQCAtNDI0LDcgKzQyNCw3
IEBAIHN0YXRpYyB2b2lkIGkyY19pbXhfZG1hX3JlcXVlc3Qoc3RydWN0DQo+aW14X2kyY19zdHJ1
Y3QgKmkyY19pbXgsDQo+PiAgICAgICBkZXZfaW5mbyhkZXYsICJ1c2luZyAlcyAodHgpIGFuZCAl
cyAocngpIGZvciBETUEgdHJhbnNmZXJzXG4iLA0KPj4gICAgICAgICAgICAgICBkbWFfY2hhbl9u
YW1lKGRtYS0+Y2hhbl90eCksDQo+PiBkbWFfY2hhbl9uYW1lKGRtYS0+Y2hhbl9yeCkpOw0KPj4N
Cj4+IC0gICAgIHJldHVybjsNCj4+ICsgICAgIHJldHVybiAwOw0KPj4NCj4+ICBmYWlsX3J4Og0K
Pj4gICAgICAgZG1hX3JlbGVhc2VfY2hhbm5lbChkbWEtPmNoYW5fcngpOw0KPj4gQEAgLTQzMiw2
ICs0MzIsOCBAQCBzdGF0aWMgdm9pZCBpMmNfaW14X2RtYV9yZXF1ZXN0KHN0cnVjdA0KPmlteF9p
MmNfc3RydWN0ICppMmNfaW14LA0KPj4gICAgICAgZG1hX3JlbGVhc2VfY2hhbm5lbChkbWEtPmNo
YW5fdHgpOw0KPj4gIGZhaWxfYWw6DQo+PiAgICAgICBkZXZtX2tmcmVlKGRldiwgZG1hKTsNCj4+
ICsNCj4+ICsgICAgIHJldHVybiByZXQ7DQo+DQo+U29tZSBwbGF0Zm9ybXMgZG9uJ3QgaGF2ZSBF
RE1BLiAgRG9lc24ndCB0aGlzIGZvcmNlIGV2ZXJ5b25lIHdobyB3YW50cw0KPkkyQyB0byBoYXZl
IERNQT8gIFRoZSBsYXN0IGF0dGVtcHQgYXQgdGhpcyBoYWQ6DQo+DQo+ICAgICAgICAvKiByZXR1
cm4gc3VjY2Vzc2Z1bGx5IGlmIHRoZXJlIGlzIG5vIGRtYSBzdXBwb3J0ICovDQo+ICAgICAgICBy
ZXR1cm4gcmV0ID09IC1FTk9ERVYgPyAwIDogcmV0Ow0KPg0KPmhlcmUgYmVjYXVzZSBvZiBleGFj
dGx5IHRoaXMuDQo+DQo+PiAgfQ0KPj4NCj4+ICBzdGF0aWMgdm9pZCBpMmNfaW14X2RtYV9jYWxs
YmFjayh2b2lkICphcmcpIEBAIC0xNjA1LDEwICsxNjA3LDE0IEBADQo+PiBzdGF0aWMgaW50IGky
Y19pbXhfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4+ICAgICAgIGRldl9p
bmZvKCZpMmNfaW14LT5hZGFwdGVyLmRldiwgIklNWCBJMkMgYWRhcHRlciByZWdpc3RlcmVkXG4i
KTsNCj4+DQo+PiAgICAgICAvKiBJbml0IERNQSBjb25maWcgaWYgc3VwcG9ydGVkICovDQo+PiAt
ICAgICBpMmNfaW14X2RtYV9yZXF1ZXN0KGkyY19pbXgsIHBoeV9hZGRyKTsNCj4+ICsgICAgIHJl
dCA9IGkyY19pbXhfZG1hX3JlcXVlc3QoaTJjX2lteCwgcGh5X2FkZHIpOw0KPj4gKyAgICAgaWYg
KHJldCA9PSAtRVBST0JFX0RFRkVSKQ0KPj4gKyAgICAgICAgICAgICBnb3RvIGkyY19hZGFwdGVy
X3JlbW92ZTsNCj4NCj5UaGlzIGhhcHBlbnMgX2FmdGVyXyB0aGUgYWRhcHRlciBoYXMgYmVlbiBw
dWJsaXNoZWQgdG8gdGhlIHJlc3Qgb2YgdGhlIGtlcm5lbC4NCj5DbGFpbWluZyByZXNvdXJjZXMg
YWZ0ZXIgcHVibGljYXRpb24gaXMgcmFjeSAtIHRoZSBhZGFwdGVyIG1heSBiZSBpbiB1c2UgYnkg
YQ0KPnJlcXVlc3QgYXQgdGhpcyBwb2ludC4gIFNlY29uZGx5LCB0aGVyZSdzIGJlZW4gcHJvYmxl
bXMgd2l0aCB0aGlzIGNhdXNpbmcNCj5yZWdyZXNzaW9ucyB3aGVuIEVETUEgaXMgYnVpbHQgYXMg
YSBtb2R1bGUgYW5kIGkyYy1pbXggaXMgYnVpbHQtaW4uDQo+DQo+U2VlIGU4YzIyMGZhYzQxNSAo
IlJldmVydCAiaTJjOiBpbXg6IGltcHJvdmUgdGhlIGVycm9yIGhhbmRsaW5nIGluDQo+aTJjX2lt
eF9kbWFfcmVxdWVzdCgpIiIpIHdoZW4gZXhhY3RseSB3aGF0IHlvdSdyZSBwcm9wb3Npbmcgd2Fz
IHRyaWVkIGFuZA0KPmVuZGVkIHVwIGhhdmluZyB0byBiZSByZXZlcnRlZC4NCj4NCj5BRkFJSyBu
b3RoaW5nIGhhcyBjaGFuZ2VkIHNpbmNlLCBzbyBtZXJlbHkgcmVpbnN0YXRpbmcgdGhlIGtub3du
IHRvIGJlIGJyb2tlbg0KPmNvZGUsIHRoZXJlYnkgcmVpbnRyb2R1Y2luZyB0aGUgc2FtZSAoYW5k
IG1vcmUpIHByb2JsZW1zLCBpc24ndCBnb2luZyB0byBiZQ0KPmFjY2VwdGFibGUuDQo+DQo+U29y
cnksIGJ1dCB0aGlzIGdldHMgYSBiaWcgTkFLIGZyb20gbWUuDQo+DQpbUGVuZyBNYV0gSSBzYXcg
dGhlIHJldmVydCBjb21taXQgZThjMjIwZmFjNDE1IGFuZCB1bmRlcnN0YW5kIHlvdXIgY29uY2Vy
bnMuDQpJIHNjYW4gdGhlIGkyYy1pbXguYyBkcml2ZXIsIEFsbCBwbGF0Zm9ybXMgdGhhdCB1c2Ug
aTJjIGRyaXZlciBhbmQgc3VwcG9ydCBkbWEgdXNlIGFuIGVETUEgZW5naW5lLA0KU28gSSBjaGFu
Z2UgdGhlIGNvZGUoY29tcGFyZSB3aXRoIGxhc3QgcGF0Y2gpIGFzIGZvbGxvd3MsIHBsZWFzZSBy
ZXZpZXcgYW5kIGdpdmUgbWUgeW91ciBwcmVjaW91cyBjb21tZW50cy4NClRoYW5rcyB2ZXJ5IG11
Y2guDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWlteC5jIGIvZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy1pbXguYw0KaW5kZXggMTJmNzkzNGZkZGI0Li42Y2FmZWU1MmRkNjcg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLWlteC5jDQorKysgYi9kcml2ZXJz
L2kyYy9idXNzZXMvaTJjLWlteC5jDQpAQCAtMTYwNSw4ICsxNjA1LDExIEBAIHN0YXRpYyBpbnQg
aTJjX2lteF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KIA0KICAgICAgICAv
KiBJbml0IERNQSBjb25maWcgaWYgc3VwcG9ydGVkICovDQogICAgICAgIHJldCA9IGkyY19pbXhf
ZG1hX3JlcXVlc3QoaTJjX2lteCwgcGh5X2FkZHIpOw0KLSAgICAgICBpZiAocmV0ID09IC1FUFJP
QkVfREVGRVIpDQorICAgICAgIGlmIChyZXQgPT0gLUVQUk9CRV9ERUZFUikgew0KKyNpZiAgICBJ
U19CVUlMVElOKENPTkZJR19GU0xfRURNQSkNCiAgICAgICAgICAgICAgICBnb3RvIGkyY19hZGFw
dGVyX3JlbW92ZTsNCisjZW5kaWYNCisgICAgICAgfQ0KDQo+Pg0KPj4gICAgICAgcmV0dXJuIDA7
ICAgLyogUmV0dXJuIE9LICovDQo+Pg0KPj4gK2kyY19hZGFwdGVyX3JlbW92ZToNCj4+ICsgICAg
IGkyY19kZWxfYWRhcHRlcigmaTJjX2lteC0+YWRhcHRlcik7DQo+PiAgY2xrX25vdGlmaWVyX3Vu
cmVnaXN0ZXI6DQo+PiAgICAgICBjbGtfbm90aWZpZXJfdW5yZWdpc3RlcihpMmNfaW14LT5jbGss
ICZpMmNfaW14LT5jbGtfY2hhbmdlX25iKTsNCj4+ICBycG1fZGlzYWJsZToNCj4+IC0tDQo+PiAy
LjkuNQ0KPj4NCj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QNCj4+IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJv
dGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZsaXN0cw0KPj4gLmluZnJhZGVh
ZC5vcmclMkZtYWlsbWFuJTJGbGlzdGluZm8lMkZsaW51eC1hcm0ta2VybmVsJmFtcDtkYXRhPTAy
JTcNCj5DMA0KPj4NCj4xJTdDcGVuZy5tYSU0MG54cC5jb20lN0M2ZGJjZjczY2ViMTA0OTU0NTdm
YTA4ZDc3M2VhOWVlMSU3QzY4Ng0KPmVhMWQzYmMyDQo+Pg0KPmI0YzZmYTkyY2Q5OWM1YzMwMTYz
NSU3QzAlN0MxJTdDNjM3MTA1MzIzODQzMTc0NjMxJmFtcDtzZGF0YT1kDQo+djFVSU5STUUNCj4+
IEN4NncyeEclMkZ5bGlOV052SWJUYmFjSHBxQXQ4JTJCNlc1cUZrJTNEJmFtcDtyZXNlcnZlZD0w
DQo+Pg0KPg0KPi0tDQo+Uk1LJ3MgUGF0Y2ggc3lzdGVtOg0KPmh0dHBzOi8vZXVyMDEuc2FmZWxp
bmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnd3dy5hcg0KPm1s
aW51eC5vcmcudWslMkZkZXZlbG9wZXIlMkZwYXRjaGVzJTJGJmFtcDtkYXRhPTAyJTdDMDElN0Nw
ZW5nLm1hDQo+JTQwbnhwLmNvbSU3QzZkYmNmNzNjZWIxMDQ5NTQ1N2ZhMDhkNzczZWE5ZWUxJTdD
Njg2ZWExZDNiYzJiNGM2DQo+ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMSU3QzYzNzEwNTMyMzg0
MzE4NDYyOSZhbXA7c2RhdGE9OUZaQ0ENCj5KSnhFOTl3UDVaTW9HNmliJTJGZVlvWGRrc2dxMnVT
ekJyQnROVW5VJTNEJmFtcDtyZXNlcnZlZD0wDQo+RlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUg
bGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMi4xTWJwcyBkb3duIDYyMmticHMNCj51cCBBY2Nv
cmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
