Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE6BA0145
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jK0qTVCJcYvg8aqc/sWZsuFxWubYgT/JoDhwpcgsKfA=; b=Lhj/uMqYpufPsX
	kXJJKUPSecmDL1XjDV6YUQ6DYvmbux7ADKaGyMTCYFZqi9LloAQZ3reDFekz1KwBj8oDbhFbpfwUc
	YKV/bVH2lhiztQ7EN2wlpuCr/K3qkEFEiDNpzsDva0ZPhvb/9+usSNFpL9mB4AlM3/VsjsGIRHt1J
	qkox3V2AJFGu5kOIXSdSFcHZ7dpU4+6OIpdMDDdtrcn218DFOZyYLLyfb1Lx4d47QMbuRNmZKFdy8
	N6iS2jegJ2KvRMXdm3DvdJIsVD16b2mXdOTO/ALxK1aI8gvKBgxfspORpRyKyHfq5GxW7pnYcOApW
	q+yirYcUY8pWbw74zTRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wkD-0002c4-A1; Wed, 28 Aug 2019 12:08:09 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wk0-0002bQ-GN
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:07:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JMaijs8sdW7jEWQRakx0NzxyZjs7KGQanlldbafY12wXMucGZ8rWD2sJ2JP4h+ypQwQqsaxu/5+ysN5/5DTdxK54yMnoy9mrLrWwwjYG71oOrXwdW99+MaQsLmL3VVSvjuYX8bqCt8Yqvmr755Mc5QoNdZL29jCQVwRSUjccagtIT90jBMPrHPBo2a+zos8702Xfa/FNPw3H16s5daJL6F/c68ZMX5z+sWACM186bv3tQIUQGwhgxrcbzsn+VPBnVAy77wFCv0oUrZR2oDvwSJQAlhOy6hbbaurPPhawe0WjVi5mXOoncovGIuZ9E+zhjYyswMbKIyY7cPbGEQJ91A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZCb+7v4xvGyNOYDyUeS2o1VgVcX7OJYn9IYP6mpNqc=;
 b=LkYjazep4dLBoJtb0i7r2DZvOWScQS0eh4XGIcBI7Cb/KcyxglOhrJF3MN0un1fl76XRpsDPnbnOPI+QARH0EGYiraQDsAH/WEO6CXzODtWKearG3pUoMnqMthvNgAbhMOK0ISCGqLTKpQgZGHqqHKl24Os+/M+2owHt7NWIr2KMtJqT1cHKBf3ZGjjw3GyBzXKAGcIDPuLKKrCu4yfhCzRWDREzSEbEhkxw6p8NE9+7TOJ24iOpuS0I6q1PMhpjK5s9HDr5iSt+kJqd7OVJ3PuYtOdwI0E9OjxrmCxsVCrKzkfGCGfNlGtJ0NKJc6Eeo+1NeH9F1yarGpbRPsQLyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZCb+7v4xvGyNOYDyUeS2o1VgVcX7OJYn9IYP6mpNqc=;
 b=ALRn9tWSHKVKby9X1rkbcjLKfogLyY4oYgrtudGQAALfybQYCy4Qg+OLfeV2qP4fh3dPMHN/NsDqeEhEvkrZm/Pbsft7+/yUS7FRU1qvpFJJeF/tJuCvZjEo1DbCVerUOtsnLO3JiuWVFGE2yR4tA8P6kMFoc2H5sqmuA+8s1Zk=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4666.eurprd04.prod.outlook.com (52.135.133.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Wed, 28 Aug 2019 12:07:52 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Wed, 28 Aug 2019
 12:07:52 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V9 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Topic: [PATCH V9 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Thread-Index: AQHVXZk3TFiKcreeDke9EMwXd/wkAw==
Date: Wed, 28 Aug 2019 12:07:52 +0000
Message-ID: <20190828120524.9038-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR01CA0127.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::31) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87ad85e2-3273-43e6-63b8-08d72bb05a49
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4666; 
x-ms-traffictypediagnostic: DB7PR04MB4666:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB46660F89DE1A8F6D3440138FE6A30@DB7PR04MB4666.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(136003)(366004)(189003)(199004)(54534003)(50226002)(99286004)(6116002)(81156014)(14444005)(2906002)(53936002)(8676002)(81166006)(6512007)(66066001)(1076003)(71190400001)(8936002)(3846002)(52116002)(6506007)(6486002)(386003)(7736002)(478600001)(14454004)(110136005)(476003)(316002)(25786009)(86362001)(71200400001)(486006)(305945005)(6436002)(2501003)(36756003)(4326008)(54906003)(64756008)(102836004)(26005)(186003)(66946007)(66556008)(256004)(66446008)(66476007)(5660300002)(2201001)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4666;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mChaWJ/4WfT/DK8gT/KQeIIdIZiCChXQam5Cj94tn9hVTvqiX216ZUn9tFG3hOKe4fj32ByP7BB8A77FgZIQAx1P7QbKq5qsPIqkY1uWvlCvCoNbaSY5Lr3aRX7+KYs68sldxGl7FIHN/H4utnyEbTDM3wnRH5JibfeqRUWOhNkoBYl7b4mN5WpdDnzsWflnK9mNe/mPcTm0PFcx8GIFnS2x6DiwHjV//Mll9mZOJJWKwhG267cvsBWQokHwhCKXnnYMpLG5KJI0Jhjr7zVH/9nI6BIVvK2jMFbEMXomVvgGDLlMl7rSbHfYJxoklzDYDiqc4+wy8DFqYI1arYFPXTzPi9a6e+LtHj4pDIOX4AYT6RZI/Jh0Uc6Xq6jhokjjsc9s2Ui2+gpft/T0EpRmxmIv8fOoWaffY2wwKUu2zHE=
Content-ID: <0FEDB34D32A71247BB0A99993DD34ABE@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87ad85e2-3273-43e6-63b8-08d72bb05a49
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 12:07:52.7540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1V3AuOnWvyBz9A3xSGGdzrN36WUuYVJH001nubaUVrLkh64yinGf5BeoF/5zDVUHOhndVM2HYYAEEi5EukLkrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4666
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_050756_680742_178B2913 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QVhJIGZpbHRlcmluZyBpcyB1c2VkIGJ5IENTViBtb2RlcyAweDQxIGFuZCAweDQyIHRvIGNvdW50
IHJlYWRzIG9yDQp3cml0ZXMgd2l0aCBhbiBBUklEIG9yIEFXSUQgbWF0Y2hpbmcgZmlsdGVyIHNl
dHRpbmcuIEdyYW51bGFyaXR5IGlzIGF0DQpzdWJzeXN0ZW0gbGV2ZWwuIEltcGxlbWVudGF0aW9u
IGRvZXMgbm90IGFsbG93IGZpbHRyaW5nIGJldHdlZW4gbWFzdGVycw0Kd2l0aGluIGEgc3Vic3lz
dGVtLiBGaWx0ZXIgaXMgZGVmaW5lZCB3aXRoIDIgY29uZmlndXJhdGlvbiBwYXJhbWV0ZXJzLg0K
DQotLUFYSV9JRCBkZWZpbmVzIEF4SUQgbWF0Y2hpbmcgdmFsdWUNCi0tQVhJX01BU0tJTkcgZGVm
aW5lcyB3aGljaCBiaXRzIG9mIEF4SUQgYXJlIG1lYW5pbmdmdWwgZm9yIHRoZSBtYXRjaGluZw0K
CTDvvJpjb3JyZXNwb25kaW5nIGJpdCBpcyBtYXNrZWQNCgkxOiBjb3JyZXNwb25kaW5nIGJpdCBp
cyBub3QgbWFza2VkLCBpLmUuIHVzZWQgdG8gZG8gdGhlIG1hdGNoaW5nDQoNCldoZW4gbm9uLW1h
c2tlZCBiaXRzIGFyZSBtYXRjaGluZyBjb3JyZXNwb25kaW5nIEFYSV9JRCBiaXRzIHRoZW4gY291
bnRlcg0KaXMgaW5jcmVtZW50ZWQuIFRoaXMgZmlsdGVyIGFsbG93cyBjb3VudGluZyByZWFkIG9y
IHdyaXRlIGFjY2VzcyBmcm9tIGENCnN1YnN5c3RlbSBvciBtdWx0aXBsZSBzdWJzeXN0ZW1zLg0K
DQpQZXJmIGNvdW50ZXIgaXMgaW5jcmVtZW50ZWQgaWYgQXhJRCAmJiBBWElfTUFTS0lORyA9PSBB
WElfSUQgJiYgQVhJX01BU0tJTkcNCg0KQVhJX0lEIGFuZCBBWElfTUFTS0lORyBhcmUgbWFwcGVk
IG9uIERQQ1IxIHJlZ2lzdGVyIGluIHBlcmZvcm1hbmNlIGNvdW50ZXIuDQoNClJlYWQgYW5kIHdy
aXRlIEFYSSBJRCBmaWx0ZXIgc2hvdWxkIHdyaXRlIHNhbWUgdmFsdWUgdG8gRFBDUjEgaWYgd2Fu
dCB0bw0Kc3BlY2lmeSBhdCB0aGUgc2FtZSB0aW1lIGFzIHRoaXMgZmlsdGVyIGlzIHNoYXJlZCBi
ZXR3ZWVuIGNvdW50ZXJzLg0KDQplLmcuDQpwZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIwL2F4aWQt
cmVhZCxheGlfbWFzaz0weE1NTU0sYXhpX2lkPTB4RERERC8gY21kDQpwZXJmIHN0YXQgLWEgLWUg
aW14OF9kZHIwL2F4aWQtd3JpdGUsYXhpX21hc2s9MHhNTU1NLGF4aV9pZD0weEREREQvIGNtZA0K
DQpOT1RFOiBheGlfbWFzayBpcyBpbnZlcnRlZCBpbiB1c2Vyc3BhY2UoaS5lLiBzZXQgYml0cyBh
cmUgYml0cyB0byBtYXNrKSwgYW5kDQppdCB3aWxsIGJlIHJldmVydGVkIGluIGRyaXZlciBhdXRv
bWF0aWNhbGx5LiBzbyB0aGF0IHRoZSB1c2VyIGNhbiBqdXN0IHNwZWNpZnkNCmF4aV9pZCB0byBt
b25pdG9yIGEgc3BlY2lmaWMgaWQsIHJhdGhlciB0aGFuIGhhdmluZyB0byBzcGVjaWZ5IGF4aV9t
YXNrLg0KZS5nLg0KcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lkPTB4
MTIvIGNtZCwgd2hpY2ggd2lsbCBtb25pdG9yIEFSSUQ9MHgxMg0KDQpTaWduZWQtb2ZmLWJ5OiBK
b2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KDQotLS0NCkNoYW5nZUxvZzoN
ClYxIC0+IFYyOg0KCSogYWRkIGVycm9yIGxvZyBpZiB1c2VyIHNwZWNpZmllcyByZWFkL3dyaXRl
IEFYSSBJRCBmaWx0ZXIgYXQNCgl0aGUgc2FtZSB0aW1lLg0KCSogb2ZfZGV2aWNlX2dldF9tYXRj
aF9kYXRhKCkgaW5zdGVhZCBvZiBvZl9tYXRjaF9kZXZpY2UoKSwgYW5kDQoJcmVtb3ZlIHRoZSBj
aGVjayBvZiByZXR1cm4gdmFsdWUuDQpWMiAtPiBWMzoNCgkqIG1vdmUgdGhlIEFYSSBJRCBjaGVj
ayB0byBldmVudF9hZGQoKS4NCgkqIGFkZCBzdXBwb3J0IGZvciBzYW1lIHZhbHVlIG9mIGF4aV9p
ZC4NClYzIC0+IFY0Og0KCSogbW92ZSB0aGUgQVhJIElEIGNoZWNrIHRvIGV2ZW50X2luaXQoKS4N
ClY0IC0+IFY1Og0KCSogcmVqZWN0IGV2ZW50IGdyb3VwIGlmIEFYSSBJRCBub3QgY29uc2lzdGVu
dCBpbiBldmVudF9pbml0KCkuDQpWNSAtPiBWNjoNCgkqIGNoYW5nZSB0aGUgZXZlbnQgbmFtZTog
YXhpLWlkLXJlYWQtPmF4aWQtcmVhZDsNCglheGktaWQtd3JpdGUtPmF4aWQtd3JpdGUNCgkqIGFk
ZCBhbm90aGVyIGhlbHBlcjogZGRyX3BlcmZfZmlsdGVyc19jb21wYXRpYmxlKCkNCgkqIGRyb3Ag
dGhlIGRldl9kYmcoKQ0KVjYgLT4gVjc6DQoJKiByZXZlcnQgQVhJX01BU0tJTkcgYXQgZHJpdmVy
Lg0KVjcgLT4gVjg6DQoJKiBzZXBhcmF0ZSBheGlfaWQgdG8gYXhpX21hc2sgYW5kIGF4aV9pZCB0
aGVzZSB0d28gZmlsZWRzLg0KVjggLT4gVjk6DQoJKiBvbmx5IHByb2dyYW0gRFBDUjEgZm9yIGZp
bHRlcmVkIGV2ZW50cy4NCi0tLQ0KIGRyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jIHwg
NzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0NCiAxIGZpbGUgY2hhbmdlZCwgNzIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVy
Zi9mc2xfaW14OF9kZHJfcGVyZi5jIGIvZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMN
CmluZGV4IDBlMzMxMGRiYjE0NS4uY2U3MzQ1NzQ1YjQyIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9w
ZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCisrKyBiL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJf
cGVyZi5jDQpAQCAtMzUsNiArMzUsOCBAQA0KICNkZWZpbmUgRVZFTlRfQ1lDTEVTX0NPVU5URVIJ
MA0KICNkZWZpbmUgTlVNX0NPVU5URVJTCQk0DQogDQorI2RlZmluZSBBWElfTUFTS0lOR19SRVZF
UlQJMHhmZmZmMDAwMAkvKiBBWElfTUFTS0lORyhNU0IgMTZiaXRzKSArIEFYSV9JRChMU0IgMTZi
aXRzKSAqLw0KKw0KICNkZWZpbmUgdG9fZGRyX3BtdShwKQkJY29udGFpbmVyX29mKHAsIHN0cnVj
dCBkZHJfcG11LCBwbXUpDQogDQogI2RlZmluZSBERFJfUEVSRl9ERVZfTkFNRQkiaW14OF9kZHIi
DQpAQCAtNDIsOSArNDQsMjIgQEANCiANCiBzdGF0aWMgREVGSU5FX0lEQShkZHJfaWRhKTsNCiAN
CisvKiBERFIgUGVyZiBoYXJkd2FyZSBmZWF0dXJlICovDQorI2RlZmluZSBERFJfQ0FQX0FYSV9J
RF9GSUxURVIgICAgICAgICAgMHgxICAgICAvKiBzdXBwb3J0IEFYSSBJRCBmaWx0ZXIgKi8NCisN
CitzdHJ1Y3QgZnNsX2Rkcl9kZXZ0eXBlX2RhdGEgew0KKwl1bnNpZ25lZCBpbnQgcXVpcmtzOyAg
ICAvKiBxdWlya3MgbmVlZGVkIGZvciBkaWZmZXJlbnQgRERSIFBlcmYgY29yZSAqLw0KK307DQor
DQorc3RhdGljIGNvbnN0IHN0cnVjdCBmc2xfZGRyX2RldnR5cGVfZGF0YSBpbXg4X2RldnR5cGVf
ZGF0YTsNCisNCitzdGF0aWMgY29uc3Qgc3RydWN0IGZzbF9kZHJfZGV2dHlwZV9kYXRhIGlteDht
X2RldnR5cGVfZGF0YSA9IHsNCisJLnF1aXJrcyA9IEREUl9DQVBfQVhJX0lEX0ZJTFRFUiwNCit9
Ow0KKw0KIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9kZHJfcG11X2R0X2lk
c1tdID0gew0KLQl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4LWRkci1wbXUiLH0sDQotCXsgLmNv
bXBhdGlibGUgPSAiZnNsLGlteDhtLWRkci1wbXUiLH0sDQorCXsgLmNvbXBhdGlibGUgPSAiZnNs
LGlteDgtZGRyLXBtdSIsIC5kYXRhID0gJmlteDhfZGV2dHlwZV9kYXRhfSwNCisJeyAuY29tcGF0
aWJsZSA9ICJmc2wsaW14OG0tZGRyLXBtdSIsIC5kYXRhID0gJmlteDhtX2RldnR5cGVfZGF0YX0s
DQogCXsgLyogc2VudGluZWwgKi8gfQ0KIH07DQogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14
X2Rkcl9wbXVfZHRfaWRzKTsNCkBAIC01OCw2ICs3Myw3IEBAIHN0cnVjdCBkZHJfcG11IHsNCiAJ
c3RydWN0IHBlcmZfZXZlbnQgKmV2ZW50c1tOVU1fQ09VTlRFUlNdOw0KIAlpbnQgYWN0aXZlX2V2
ZW50czsNCiAJZW51bSBjcHVocF9zdGF0ZSBjcHVocF9zdGF0ZTsNCisJY29uc3Qgc3RydWN0IGZz
bF9kZHJfZGV2dHlwZV9kYXRhICpkZXZ0eXBlX2RhdGE7DQogCWludCBpcnE7DQogCWludCBpZDsN
CiB9Ow0KQEAgLTEyOSw2ICsxNDUsOCBAQCBzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZSAqZGRyX3Bl
cmZfZXZlbnRzX2F0dHJzW10gPSB7DQogCUlNWDhfRERSX1BNVV9FVkVOVF9BVFRSKHJlZnJlc2gs
IDB4MzcpLA0KIAlJTVg4X0REUl9QTVVfRVZFTlRfQVRUUih3cml0ZSwgMHgzOCksDQogCUlNWDhf
RERSX1BNVV9FVkVOVF9BVFRSKHJhdy1oYXphcmQsIDB4MzkpLA0KKwlJTVg4X0REUl9QTVVfRVZF
TlRfQVRUUihheGlkLXJlYWQsIDB4NDEpLA0KKwlJTVg4X0REUl9QTVVfRVZFTlRfQVRUUihheGlk
LXdyaXRlLCAweDQyKSwNCiAJTlVMTCwNCiB9Ow0KIA0KQEAgLTEzOCw5ICsxNTYsMTMgQEAgc3Rh
dGljIHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXAgZGRyX3BlcmZfZXZlbnRzX2F0dHJfZ3JvdXAgPSB7
DQogfTsNCiANCiBQTVVfRk9STUFUX0FUVFIoZXZlbnQsICJjb25maWc6MC03Iik7DQorUE1VX0ZP
Uk1BVF9BVFRSKGF4aV9pZCwgImNvbmZpZzE6MC0xNSIpOw0KK1BNVV9GT1JNQVRfQVRUUihheGlf
bWFzaywgImNvbmZpZzE6MTYtMzEiKTsNCiANCiBzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZSAqZGRy
X3BlcmZfZm9ybWF0X2F0dHJzW10gPSB7DQogCSZmb3JtYXRfYXR0cl9ldmVudC5hdHRyLA0KKwkm
Zm9ybWF0X2F0dHJfYXhpX2lkLmF0dHIsDQorCSZmb3JtYXRfYXR0cl9heGlfbWFzay5hdHRyLA0K
IAlOVUxMLA0KIH07DQogDQpAQCAtMTkwLDYgKzIxMiwyNiBAQCBzdGF0aWMgdTMyIGRkcl9wZXJm
X3JlYWRfY291bnRlcihzdHJ1Y3QgZGRyX3BtdSAqcG11LCBpbnQgY291bnRlcikNCiAJcmV0dXJu
IHJlYWRsX3JlbGF4ZWQocG11LT5iYXNlICsgQ09VTlRFUl9SRUFEICsgY291bnRlciAqIDQpOw0K
IH0NCiANCitzdGF0aWMgYm9vbCBkZHJfcGVyZl9pc19maWx0ZXJlZChzdHJ1Y3QgcGVyZl9ldmVu
dCAqZXZlbnQpDQorew0KKwlyZXR1cm4gZXZlbnQtPmF0dHIuY29uZmlnID09IDB4NDEgfHwgZXZl
bnQtPmF0dHIuY29uZmlnID09IDB4NDI7DQorfQ0KKw0KK3N0YXRpYyB1MzIgZGRyX3BlcmZfZmls
dGVyX3ZhbChzdHJ1Y3QgcGVyZl9ldmVudCAqZXZlbnQpDQorew0KKwlyZXR1cm4gZXZlbnQtPmF0
dHIuY29uZmlnMTsNCit9DQorDQorc3RhdGljIGJvb2wgZGRyX3BlcmZfZmlsdGVyc19jb21wYXRp
YmxlKHN0cnVjdCBwZXJmX2V2ZW50ICphLA0KKwkJCQkJc3RydWN0IHBlcmZfZXZlbnQgKmIpDQor
ew0KKwlpZiAoIWRkcl9wZXJmX2lzX2ZpbHRlcmVkKGEpKQ0KKwkJcmV0dXJuIHRydWU7DQorCWlm
ICghZGRyX3BlcmZfaXNfZmlsdGVyZWQoYikpDQorCQlyZXR1cm4gdHJ1ZTsNCisJcmV0dXJuIGRk
cl9wZXJmX2ZpbHRlcl92YWwoYSkgPT0gZGRyX3BlcmZfZmlsdGVyX3ZhbChiKTsNCit9DQorDQog
c3RhdGljIGludCBkZHJfcGVyZl9ldmVudF9pbml0KHN0cnVjdCBwZXJmX2V2ZW50ICpldmVudCkN
CiB7DQogCXN0cnVjdCBkZHJfcG11ICpwbXUgPSB0b19kZHJfcG11KGV2ZW50LT5wbXUpOw0KQEAg
LTIxNiw2ICsyNTgsMTUgQEAgc3RhdGljIGludCBkZHJfcGVyZl9ldmVudF9pbml0KHN0cnVjdCBw
ZXJmX2V2ZW50ICpldmVudCkNCiAJCQkhaXNfc29mdHdhcmVfZXZlbnQoZXZlbnQtPmdyb3VwX2xl
YWRlcikpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCisJaWYgKHBtdS0+ZGV2dHlwZV9kYXRhLT5x
dWlya3MgJiBERFJfQ0FQX0FYSV9JRF9GSUxURVIpIHsNCisJCWlmICghZGRyX3BlcmZfZmlsdGVy
c19jb21wYXRpYmxlKGV2ZW50LCBldmVudC0+Z3JvdXBfbGVhZGVyKSkNCisJCQlyZXR1cm4gLUVJ
TlZBTDsNCisJCWZvcl9lYWNoX3NpYmxpbmdfZXZlbnQoc2libGluZywgZXZlbnQtPmdyb3VwX2xl
YWRlcikgew0KKwkJCWlmICghZGRyX3BlcmZfZmlsdGVyc19jb21wYXRpYmxlKGV2ZW50LCBzaWJs
aW5nKSkNCisJCQkJcmV0dXJuIC1FSU5WQUw7DQorCQl9DQorCX0NCisNCiAJZm9yX2VhY2hfc2li
bGluZ19ldmVudChzaWJsaW5nLCBldmVudC0+Z3JvdXBfbGVhZGVyKSB7DQogCQlpZiAoc2libGlu
Zy0+cG11ICE9IGV2ZW50LT5wbXUgJiYNCiAJCQkJIWlzX3NvZnR3YXJlX2V2ZW50KHNpYmxpbmcp
KQ0KQEAgLTI4OCw2ICszMzksMjMgQEAgc3RhdGljIGludCBkZHJfcGVyZl9ldmVudF9hZGQoc3Ry
dWN0IHBlcmZfZXZlbnQgKmV2ZW50LCBpbnQgZmxhZ3MpDQogCXN0cnVjdCBod19wZXJmX2V2ZW50
ICpod2MgPSAmZXZlbnQtPmh3Ow0KIAlpbnQgY291bnRlcjsNCiAJaW50IGNmZyA9IGV2ZW50LT5h
dHRyLmNvbmZpZzsNCisJaW50IGNmZzEgPSBldmVudC0+YXR0ci5jb25maWcxOw0KKw0KKwlpZiAo
cG11LT5kZXZ0eXBlX2RhdGEtPnF1aXJrcyAmIEREUl9DQVBfQVhJX0lEX0ZJTFRFUikgew0KKwkJ
aW50IGk7DQorDQorCQlmb3IgKGkgPSAxOyBpIDwgTlVNX0NPVU5URVJTOyBpKyspIHsNCisJCQlp
ZiAocG11LT5ldmVudHNbaV0gJiYNCisJCQkgICAgIWRkcl9wZXJmX2ZpbHRlcnNfY29tcGF0aWJs
ZShldmVudCwgcG11LT5ldmVudHNbaV0pKQ0KKwkJCQlyZXR1cm4gLUVJTlZBTDsNCisJCX0NCisN
CisJCWlmIChkZHJfcGVyZl9pc19maWx0ZXJlZChldmVudCkpIHsNCisJCQkvKiByZXZlcnQgYXhp
IGlkIG1hc2tpbmcoYXhpX21hc2spIHZhbHVlICovDQorCQkJY2ZnMSBePSBBWElfTUFTS0lOR19S
RVZFUlQ7DQorCQkJd3JpdGVsKGNmZzEsIHBtdS0+YmFzZSArIENPVU5URVJfRFBDUjEpOw0KKwkJ
fQ0KKwl9DQogDQogCWNvdW50ZXIgPSBkZHJfcGVyZl9hbGxvY19jb3VudGVyKHBtdSwgY2ZnKTsN
CiAJaWYgKGNvdW50ZXIgPCAwKSB7DQpAQCAtNDczLDYgKzU0MSw4IEBAIHN0YXRpYyBpbnQgZGRy
X3BlcmZfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCiAJaWYgKCFuYW1lKQ0K
IAkJcmV0dXJuIC1FTk9NRU07DQogDQorCXBtdS0+ZGV2dHlwZV9kYXRhID0gb2ZfZGV2aWNlX2dl
dF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOw0KKw0KIAlwbXUtPmNwdSA9IHJhd19zbXBfcHJvY2Vz
c29yX2lkKCk7DQogCXJldCA9IGNwdWhwX3NldHVwX3N0YXRlX211bHRpKENQVUhQX0FQX09OTElO
RV9EWU4sDQogCQkJCSAgICAgIEREUl9DUFVIUF9DQl9OQU1FLA0KLS0gDQoyLjE3LjENCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
