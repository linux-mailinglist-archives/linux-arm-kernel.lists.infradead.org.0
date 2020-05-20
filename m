Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A8D1DA849
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZy6ehyO6aTl0ZWBKpT+tJRV7t/j3GQHs2MQc9xFLis=; b=p0+0uSx8/Apyuz
	HAs1emUWAegqcf76sihAcEgncShMJ3u1mKd6dKJypX7uvIPaUVg26VdBROf7yDKXPvV9yZza48pSp
	9jaEyk2iJ2h5/0k2QQ4lkyh4xQwVxUX6ISPQarS2rqTkwl+QiCyTwFshx5l7EQaOzDcJC2Zp3ksG2
	hal8M49SQFpCrGyki4WjKuYCAUEAnl7EyikC6TiWQ89jv1dhLTTAy6g5c5NAUFQ/QtpR+MjIQYUcS
	6hckQqRwcp2/9BmhbmU7XDuFeW+HNhAMkpSnGjsd2aHnALEKXie1OAIaFzgIuuAilk4zjmv6LnYPY
	pSS5xzUn4EmAF2QZT5sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEuA-0005F4-KE; Wed, 20 May 2020 02:56:26 +0000
Received: from mail-eopbgr30074.outbound.protection.outlook.com ([40.107.3.74]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEtx-0005EK-BT
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:56:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CVvOs85adMmsRP6+n/LV0BEfR1jvd+Rt/2+IEX+f4kvT6Jj9yVzxLg27VaSEjGyHMntPEt7eUMQO/3K1QO+1oVmGKKhfOSQG0qVNP7nkzWT+DEKk+lNA531if0eKFHu1AbI9Bhv8wLsrvKVYy+OfnWZbDV0kusBFNS8nPdjcNjqgVwGoP+JrXmhC7Nabn6QJTjTyb4qPCGXXmlzrfoUbQPsDVecswmKzb/H4buF5JcPOOyd3NuyuQcMkEikDD+Pgkbs+6T7fW9V1FED/bTCuzGBzuSzYTDdSXaMI7v9/ksMi4rLFTWsQ4xPWotJM1XP7wl67thii29kWEgCsV8ZxtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wnnRFrX2wh79qoNNox7OJFEiKA9HA2UDnBnMw6kzMOs=;
 b=cKP5VUW817LfumV7hX7/dewD3iLKjgj8okY49YkwKYX/rWtVNna1+phZYDZujWoauGvX/bbFpuqOfLed9nGZxiF2y9LSlHm9nki0RcuFHqUh7OVY0ELKydoawxY0d5rxav5mx3hGX0kjcWVNYldfW+6eylXYGdHIlDu96b9WYdoKq5CoiDCzplMbTWwRf8d86nTX55D9Nsjy9wv9UzfxJrX4nPu+hKWuJ4Oj5tBBfHxLZZGCi2Jxx022nSUnPnoBAiGrwd+OUEDM6WZxIZC1P8Yqyo2T/NmnkGkWf02YawYRZmV4+EBXYwW1pmiQqfGHv94aKo2+9Ap46Yvy4Mqb2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wnnRFrX2wh79qoNNox7OJFEiKA9HA2UDnBnMw6kzMOs=;
 b=mMhLAAhafnGHptDVgieLq165anT0O0FgcsKztFDPFp0v+OSZpyT94Peai7hCwJ6pz/pQOxOVJBa4un1pCxirBymYPTpXnQrG24GsAnM1OldAXt2XI8uyVkFV76ZNNK35R0XxWJ29RdGKylq+RwPowVoaEqncOWjcGxcocxIu7OQ=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6986.eurprd04.prod.outlook.com (2603:10a6:10:116::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Wed, 20 May
 2020 02:56:08 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 02:56:08 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier for
 userspace
Thread-Topic: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier
 for userspace
Thread-Index: AQHWKC/JBsW537XBBkm8ttCDNV27c6ivzJ6AgAB7Y7A=
Date: Wed, 20 May 2020 02:56:08 +0000
Message-ID: <DB8PR04MB6795A3C57F2B02632D591183E6B60@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus>
In-Reply-To: <20200519185125.GB453195@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1955cee0-0fb3-4821-d1a2-08d7fc6958c6
x-ms-traffictypediagnostic: DB8PR04MB6986:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB6986C281430E66FA50C88F33E6B60@DB8PR04MB6986.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nPBP4WrCtWBVG1zY8B/vBnqfvR/c62sysBcbBSmoVGL0k8Ei0Fr1dGKKmUhvMoBZGqPupLw3hFHLT3TyKTN2VS++blVqB9OUaHVLKXNkKuqq4qBUedMXOqA0+mbLho+AKA/aCIEqvqf/aCe19u+A16cTfsyaENdWCpOCmrYUYV/obFnzeDyyFglQlQObTCbf0ufRNPhP7EEHnASECYkx3p/rAZ6MtaKOt2LVj/QrUpq+RE0Sskmg0b4h7uEcaDgt6PavGtF57YYt1oTPxv0JGGEl0ZVulylI3l3jdIfFb6EkT5vPCnfAWnk4vhCqIIcGY8U44UWa1JJEx1gcaEJLcIlY6xiy8xTnPkzcodH/7IE6mijSdGLpwgJORbzOmsl3vLo/WrZpSAuyDPxo5rMlERAssi8LZaWgs1cCXOZSsFq7kpElPDwSsqJd62xuQHy1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(396003)(39860400002)(366004)(346002)(6916009)(7696005)(52536014)(54906003)(86362001)(316002)(8676002)(5660300002)(4326008)(55016002)(71200400001)(9686003)(478600001)(8936002)(2906002)(76116006)(66946007)(6506007)(66556008)(53546011)(66476007)(33656002)(186003)(26005)(66446008)(64756008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: KJvjurPtYEACbs/jT6lPsPnhheUnpTtOWnOf0Qs9F7tKJpzAtK0opSIU0iPhQ9qG95cXZ01+GRnSnHKABQc8LqBiUztvH2xky94C4FrXebXQsLDQGfRnLi+wbc2rf+JXuLPJ7j0AUEJcNqxPxzooB9kGV38SJUGQiVbIaSJsMloAZbZ1rZriPvrYrVJY1UKwrAQmYFUxVcAJ9PIzzjs4N4/fXbMIG44TZu11ag1OZw6XNYpcacUB8sJWuanwQHkf5MhaaELPKvK+O8AqpvJ4RAzDfVw43cwoqjudLm6J2cnoKphqQWyF3rfxnd1OKVqAMpgWukzWDiEi2CCc3mdjYd4XCIz32f9I7yOwCrZHwqh09z/tJ/cDzfWByQvb9M7ikKVDgs97Qb9MeXqpvx2TjivLslizBkYcTY1mh+2l3kmxziVE00/MpS3+JRGFm1CY1C1JFoNpNkKiqPA3vs0dWVLETJvcckRO/7poLjVPbJE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1955cee0-0fb3-4821-d1a2-08d7fc6958c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 02:56:08.5304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PMKABfOrbzdRs7yUBrZgIEBunyahmqIFyAvfNl3r4e0vZNl25QM/jonoexxJpsRaxKzdDH5kuo9JSWWkknScYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6986
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_195613_400578_35533E57 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "john.garry@huawei.com" <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMjDE6jXUwjIwyNUgMjo1MQ0KPiBUbzogSm9ha2ltIFpo
YW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IGpvaG4uZ2FycnlAaHVhd2VpLmNv
bTsgd2lsbEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsNCj4gc2hhd25ndW9Aa2Vy
bmVsLm9yZzsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47DQo+IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7DQo+
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCBWMSBS
RVNFTkQgMS8zXSBwZXJmL2lteF9kZHI6IEFkZCBzeXN0ZW0gUE1VIGlkZW50aWZpZXINCj4gZm9y
IHVzZXJzcGFjZQ0KPiANCj4gT24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMDM6MzE6MTNQTSArMDgw
MCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+IFRoZSBERFIgUGVyZiBmb3IgaS5NWDggaXMgYSBz
eXN0ZW0gUE1VIHdob3NlIGF4aSBpZCB3b3VsZCBkaWZmZXJlbnQNCj4gPiBmcm9tIFNvQyB0byBT
b0MuIE5lZWQgZXhwb3NlIHN5c3RlbSBQTVUgaWRlbnRpZmllciBmb3IgdXNlcnNwYWNlIHdoaWNo
DQo+ID4gcmVmZXIgdG8gL3N5cy9idXMvZXZlbnRfc291cmNlL2RldmljZXMvPFBNVSBERVZJQ0U+
L2lkZW50aWZpZXIuDQo+IA0KPiBXaHkgbm90IGp1c3QgZXhwb3NlIHRoZSBBWEkgSUQgaWYgdGhh
dCdzIHdoYXQncyBkaWZmZXJlbnQ/DQoNCkhpIFJvYiwNCg0KRWFjaCBtYXN0ZXIgaGFzIHRoZWly
IG93biBBWEkgSUQsIHN1Y2ggYXMgVVNCLCBHUFUsIFZQVSBldGMsIGl0IGlzIHZhcmlvdXMgZnJv
bSBkaWZmZXJlbnQgU29Dcy4gV2Ugd2FudCB0byBhZGQgc3lzdGVtIFBNVSBzdXBwb3J0IGluIHBl
cmYgdG9vbCwgc28gd2Ugd2FudCB0byBleHBvc2Ugc29tZXRoaW5nIGZyb20gcGVyZiBkcml2ZXIg
dG8gaWRlbnRpZnkgZWFjaCBTb0MuDQpXaGVuIHdlIGtub3cgd2hpY2ggU29DIGl0IGlzLCB3ZSBj
YW4gZ2V0IGVhY2ggbWFzdGVyIEFYSSBJRC4gSWYgdGhpcyBwYXRjaCBjYW4gYmUgYWNjZXB0ZWQs
IC9zeXMvYnVzL2V2ZW50X3NvdXJjZS9kZXZpY2VzLzxQTVUgREVWSUNFPi9pZGVudGlmaWVyIGNv
dWxkIGJlIGEgY29tbW9uIGludGVyZmFjZSBmb3IgYWxsIHN5c3RlbSBQTVVzLg0KDQpJIHdpbGwg
Y2hhbmdlIHRvIGFkZCBhIHByb3BlcnR5IHRvIGlkZW50aWZ5IFNvQywgdG8gc2VlIGlmIGl0IGlz
IGJldHRlci4gVGhhbmtzLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCj4gPg0KPiA+
IFJldmlld2VkLWJ5OiBKb2huIEdhcnJ5IDxqb2huLmdhcnJ5QGh1YXdlaS5jb20+DQo+ID4gU2ln
bmVkLW9mZi1ieTogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMgfCA0NQ0KPiA+ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+ID4gYi9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRy
X3BlcmYuYw0KPiA+IGluZGV4IDk1ZGNhMmNiNTI2NS4uODhhZGRiZmZiYmQwIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+ID4gKysrIGIvZHJpdmVy
cy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCj4gPiBAQCAtNTAsMjEgKzUwLDM4IEBAIHN0YXRp
YyBERUZJTkVfSURBKGRkcl9pZGEpOw0KPiA+DQo+ID4gIHN0cnVjdCBmc2xfZGRyX2RldnR5cGVf
ZGF0YSB7DQo+ID4gIAl1bnNpZ25lZCBpbnQgcXVpcmtzOyAgICAvKiBxdWlya3MgbmVlZGVkIGZv
ciBkaWZmZXJlbnQgRERSIFBlcmYgY29yZSAqLw0KPiA+ICsJY29uc3QgY2hhciAqaWRlbnRpZmll
cjsJLyogc3lzdGVtIFBNVSBpZGVudGlmaWVyIGZvciB1c2Vyc3BhY2UgKi8NCj4gPiAgfTsNCj4g
Pg0KPiA+IC1zdGF0aWMgY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhIGlteDhfZGV2
dHlwZV9kYXRhOw0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRh
IGlteDhfZGV2dHlwZV9kYXRhID0gew0KPiA+ICsJLmlkZW50aWZpZXIgPSAiaS5NWDgiLA0KPiA+
ICt9Ow0KPiA+ICsNCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBmc2xfZGRyX2RldnR5cGVfZGF0
YSBpbXg4bXFfZGV2dHlwZV9kYXRhID0gew0KPiA+ICsJLnF1aXJrcyA9IEREUl9DQVBfQVhJX0lE
X0ZJTFRFUiwNCj4gPiArCS5pZGVudGlmaWVyID0gImkuTVg4TVEiLA0KPiA+ICt9Ow0KPiA+ICsN
Cj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBmc2xfZGRyX2RldnR5cGVfZGF0YSBpbXg4bW1fZGV2
dHlwZV9kYXRhID0gew0KPiA+ICsJLnF1aXJrcyA9IEREUl9DQVBfQVhJX0lEX0ZJTFRFUiwNCj4g
PiArCS5pZGVudGlmaWVyID0gImkuTVg4TU0iLA0KPiA+ICt9Ow0KPiA+DQo+ID4gLXN0YXRpYyBj
b25zdCBzdHJ1Y3QgZnNsX2Rkcl9kZXZ0eXBlX2RhdGEgaW14OG1fZGV2dHlwZV9kYXRhID0gew0K
PiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhIGlteDhtbl9kZXZ0
eXBlX2RhdGEgPSB7DQo+ID4gIAkucXVpcmtzID0gRERSX0NBUF9BWElfSURfRklMVEVSLA0KPiA+
ICsJLmlkZW50aWZpZXIgPSAiaS5NWDhNTiIsDQo+ID4gIH07DQo+ID4NCj4gPiAgc3RhdGljIGNv
bnN0IHN0cnVjdCBmc2xfZGRyX2RldnR5cGVfZGF0YSBpbXg4bXBfZGV2dHlwZV9kYXRhID0gew0K
PiA+ICAJLnF1aXJrcyA9IEREUl9DQVBfQVhJX0lEX0ZJTFRFUl9FTkhBTkNFRCwNCj4gPiArCS5p
ZGVudGlmaWVyID0gImkuTVg4TVAiLA0KPiA+ICB9Ow0KPiA+DQo+ID4gIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9kZHJfcG11X2R0X2lkc1tdID0gew0KPiA+ICAJeyAuY29t
cGF0aWJsZSA9ICJmc2wsaW14OC1kZHItcG11IiwgLmRhdGEgPSAmaW14OF9kZXZ0eXBlX2RhdGF9
LA0KPiA+IC0JeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OG0tZGRyLXBtdSIsIC5kYXRhID0gJmlt
eDhtX2RldnR5cGVfZGF0YX0sDQo+IA0KPiBZb3UgbmVlZCB0byBrZWVwIHRoZSBvbGQgb25lIGZv
ciBjb21wYXRpYmlsaXR5Lg0KPiANCj4gPiArCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1k
ZHItcG11IiwgLmRhdGEgPSAmaW14OG1xX2RldnR5cGVfZGF0YX0sDQo+ID4gKwl7IC5jb21wYXRp
YmxlID0gImZzbCxpbXg4bW0tZGRyLXBtdSIsIC5kYXRhID0gJmlteDhtbV9kZXZ0eXBlX2RhdGF9
LA0KPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OG1uLWRkci1wbXUiLCAuZGF0YSA9ICZp
bXg4bW5fZGV2dHlwZV9kYXRhfSwNCj4gPiAgCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDhtcC1k
ZHItcG11IiwgLmRhdGEgPSAmaW14OG1wX2RldnR5cGVfZGF0YX0sDQo+ID4gIAl7IC8qIHNlbnRp
bmVsICovIH0NCj4gPiAgfTsNCj4gPiBAQCAtODQsNiArMTAxLDI3IEBAIHN0cnVjdCBkZHJfcG11
IHsNCj4gPiAgCWludCBpZDsNCj4gPiAgfTsNCj4gPg0KPiA+ICtzdGF0aWMgc3NpemVfdCBkZHJf
cGVyZl9pZGVudGlmaWVyX3Nob3coc3RydWN0IGRldmljZSAqZGV2LA0KPiA+ICsJCQkJCXN0cnVj
dCBkZXZpY2VfYXR0cmlidXRlICphdHRyLA0KPiA+ICsJCQkJCWNoYXIgKnBhZ2UpDQo+ID4gK3sN
Cj4gPiArCXN0cnVjdCBkZHJfcG11ICpwbXUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsNCj4gPiAr
DQo+ID4gKwlyZXR1cm4gc3ByaW50ZihwYWdlLCAiJXNcbiIsIHBtdS0+ZGV2dHlwZV9kYXRhLT5p
ZGVudGlmaWVyKTsNCj4gDQo+IFdoeSBkbyB3ZSBuZWVkIHlldCBhbm90aGVyIHdheSB0byBpZGVu
dGlmeSB0aGUgU29DIGZyb20gdXNlcnNwYWNlPw0KPiANCj4gPiArfQ0KPiA+ICsNCj4gPiArc3Rh
dGljIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlIGRkcl9wZXJmX2lkZW50aWZpZXJfYXR0ciA9DQo+
ID4gKwlfX0FUVFIoaWRlbnRpZmllciwgMDQ0NCwgZGRyX3BlcmZfaWRlbnRpZmllcl9zaG93LCBO
VUxMKTsNCj4gDQo+IHN5c2ZzIGF0dHJpYnV0ZXMgYXJlIHN1cHBvc2VkIHRvIGJlIGRvY3VtZW50
ZWQuDQo+IA0KPiA+ICsNCj4gPiArc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGUgKmRkcl9wZXJmX2lk
ZW50aWZpZXJfYXR0cnNbXSA9IHsNCj4gPiArCSZkZHJfcGVyZl9pZGVudGlmaWVyX2F0dHIuYXR0
ciwNCj4gPiArCU5VTEwsDQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgc3RydWN0IGF0dHJp
YnV0ZV9ncm91cCBkZHJfcGVyZl9pZGVudGlmaWVyX2F0dHJfZ3JvdXAgPSB7DQo+ID4gKwkuYXR0
cnMgPSBkZHJfcGVyZl9pZGVudGlmaWVyX2F0dHJzLA0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgZW51
bSBkZHJfcGVyZl9maWx0ZXJfY2FwYWJpbGl0aWVzIHsNCj4gPiAgCVBFUkZfQ0FQX0FYSV9JRF9G
SUxURVIgPSAwLA0KPiA+ICAJUEVSRl9DQVBfQVhJX0lEX0ZJTFRFUl9FTkhBTkNFRCwNCj4gPiBA
QCAtMjM3LDYgKzI3NSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwICph
dHRyX2dyb3Vwc1tdID0gew0KPiA+ICAJJmRkcl9wZXJmX2Zvcm1hdF9hdHRyX2dyb3VwLA0KPiA+
ICAJJmRkcl9wZXJmX2NwdW1hc2tfYXR0cl9ncm91cCwNCj4gPiAgCSZkZHJfcGVyZl9maWx0ZXJf
Y2FwX2F0dHJfZ3JvdXAsDQo+ID4gKwkmZGRyX3BlcmZfaWRlbnRpZmllcl9hdHRyX2dyb3VwLA0K
PiA+ICAJTlVMTCwNCj4gPiAgfTsNCj4gPg0KPiA+IC0tDQo+ID4gMi4xNy4xDQo+ID4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
