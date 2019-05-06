Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE771535F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDIPDE1UnbJlO8qH83GA9ywr6R9lvBUkzrfgOIQ7tAk=; b=hIm6khnJ28CN38
	nXELg545X7RtR7vhON1NmtiybvtbiVFKPymE+A/2QefVM64hoT72toCaXsOpPSFuPhbuepyNq/vPW
	zD3whvQsiMIFHzWoSUEeOUEVGmgMcNHiE1tL08WyoH6MGPhKaFsfaVuxLCh+4JWt3EPo0K3t5xGoS
	jBP+oXQp7ChuO0MZy/w/H+pLTwdoFhbEAyO/yJXWiEHynQm8JBKemLEPNmV6aSJjRfJbEqJw2/ZqC
	dTr40HFyxa+ECYfnis2w480rlgQWmPKXpohdkq+zd+2da4dmM6HCeO25QoKotAUJXGfaHp2b7ndoH
	of2mc2ZjmpFM/KyIAj7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhzD-0004l1-7w; Mon, 06 May 2019 18:05:11 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhz1-0004IQ-KV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 18:05:01 +0000
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x46I3x7U017490; Mon, 6 May 2019 11:04:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=WswB3JwNzV3hpzJyfdoXN1OY9C50b9sg8xCmdLwKOUA=;
 b=J6LvUaUTs//UDiPAABgfokbD2aPPhRHv65que2APnt2qNkq2f7ct3KuQsBuGSw+SzVrj
 /n7RIDxeA3vKFgQWnWzVrrLBuFBNgZi/GKdafD8QWcl4GmY2VTer8c5+DwHsoAVAEG0m
 a8dO0GKNmxc4SDumWIoeg+cUKvkglO4g6tk= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2sanejry91-9
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Mon, 06 May 2019 11:04:43 -0700
Received: from ash-exhub103.TheFacebook.com (2620:10d:c0a8:82::c) by
 ash-exhub102.TheFacebook.com (2620:10d:c0a8:82::f) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 May 2019 11:04:41 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.174) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 6 May 2019 11:04:41 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WswB3JwNzV3hpzJyfdoXN1OY9C50b9sg8xCmdLwKOUA=;
 b=SNrFrGrCA6UoM9Ak+VLelsoQucNMtctC5qdDwdYWbTBsrckbj4qr9Bl/INP/hn8/X3o+8Q2kfxYNaBE4KniQ7Dd+x/0I7gkt8dTEF0IcnLw6H8X5U+iPUfp2hXi+RcbrF4Ri59+0vZxt3kTFVq9RY/ZMQZDAekt4SPL3zf18Wzg=
Received: from CY4PR15MB1269.namprd15.prod.outlook.com (10.172.177.11) by
 CY4PR15MB1237.namprd15.prod.outlook.com (10.172.177.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Mon, 6 May 2019 18:04:40 +0000
Received: from CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::1039:c5b1:f43e:14e9]) by CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::1039:c5b1:f43e:14e9%3]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 18:04:40 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Andrew Jeffery <andrew@aj.id.au>, Arnd Bergmann <arnd@arndb.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, Joel Stanley <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] misc: aspeed-lpc-ctrl: Correct return values
Thread-Topic: [PATCH v2] misc: aspeed-lpc-ctrl: Correct return values
Thread-Index: AQHVAdv4KLmFOVGoe0aPnHZnO5HqTqZdg2aAgABv4YA=
Date: Mon, 6 May 2019 18:04:39 +0000
Message-ID: <FEC308F1-3AF0-4C0D-A082-59B4062A2F0F@fb.com>
References: <20190503181336.579877-1-vijaykhemka@fb.com>
 <76491a70-01ca-4308-a09e-4f223ac49ebd@www.fastmail.com>
In-Reply-To: <76491a70-01ca-4308-a09e-4f223ac49ebd@www.fastmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::2d00]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec4d3cba-c22f-4b74-6847-08d6d24d4f0c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR15MB1237; 
x-ms-traffictypediagnostic: CY4PR15MB1237:
x-microsoft-antispam-prvs: <CY4PR15MB12375812DD885772EB9D92CEDD300@CY4PR15MB1237.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(366004)(396003)(39860400002)(346002)(189003)(199004)(51914003)(478600001)(6116002)(6506007)(81156014)(99286004)(316002)(102836004)(76176011)(76116006)(91956017)(66446008)(5660300002)(2501003)(33656002)(73956011)(66946007)(229853002)(64756008)(66556008)(66476007)(186003)(71200400001)(83716004)(256004)(6512007)(46003)(6486002)(6436002)(14454004)(71190400001)(305945005)(7736002)(2906002)(446003)(11346002)(68736007)(486006)(110136005)(8676002)(81166006)(8936002)(476003)(2616005)(86362001)(2201001)(82746002)(36756003)(25786009)(4326008)(6246003)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR15MB1237;
 H:CY4PR15MB1269.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: V4z8A1/tbzb2byoI3EqoufjmmZsyPZhMKPyuRflSX8TjnYrGP+5/bclu2acfkP0PpOldxxG0emI5lqWoVt7mOMQ8RdFBRYN8/BBW5ZC2hF0gVcQBMgYdtOKh8hGzFFM3mpDqLFerUUIfMn75fJ3Ry2GKMbkslXXLda6zUPhqapOr0AKb16dlAXTZVfuTAkVKsxLCmaU8FaaxTe4bVHYq1/g58jUsaHc4AS4UTl9KMoJdYEppMiheXTItOF6wfUeIiKP1TkbcjfzFVeC9G1TCe70YYUZaFnBYK1prlD6JxFUt7/yeXubpBzpWKECldWD/CMTaTN4FLK578E3MIOKljKAdHN5bqPdhSOmgkXso1+rHJu/si4bJKi7MUw2qVCcY2YbK7zXzoTP1qTiXhI9DLsK5F501/EuONXtHfyAnDqs=
Content-ID: <28CF54BBD5085B459A361ACBBF7B067A@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ec4d3cba-c22f-4b74-6847-08d6d24d4f0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 18:04:39.8360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1237
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-06_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905060152
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_110459_866586_31E43591 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sai Dasari <sdasari@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDUvNS8xOSwgOToyNCBQTSwgIkFuZHJldyBKZWZmZXJ5IiA8YW5kcmV3QGFqLmlk
LmF1PiB3cm90ZToNCg0KICAgIA0KICAgIA0KICAgIE9uIFNhdCwgNCBNYXkgMjAxOSwgYXQgMDM6
NDMsIFZpamF5IEtoZW1rYSB3cm90ZToNCiAgICA+IENvcnJlY3RlZCBzb21lIG9mIHJldHVybiB2
YWx1ZXMgd2l0aCBhcHByb3ByaWF0ZSBtZWFuaW5ncyBhbmQgcmVwb3J0ZWQNCiAgICA+IHJlbGV2
YW50IG1lc3NhZ2VzIGFzIGRlYnVnIGluZm9ybWF0aW9uLg0KICAgID4gDQogICAgPiBTaWduZWQt
b2ZmLWJ5OiBWaWpheSBLaGVta2EgPHZpamF5a2hlbWthQGZiLmNvbT4NCiAgICANCiAgICBUaGFu
a3MgZm9yIHRoZSBmaXhlcywgdGhpcyBsb29rcyBva2F5IG5vdy4gSG93ZXZlciwgd2FzIHRoZXJl
IGEgcmVhc29uIGZvcg0KICAgIG5vdCBzcXVhc2hpbmcgY2hhbmdlIGludG8geW91ciBwcmV2aW91
cyBwYXRjaCB0aGF0IGludHJvZHVjZWQgdGhlIGlzc3Vlcw0KICAgIHRoaXMgZml4ZXM/IFRoYXQg
aGFzbid0IGJlZW4gYXBwbGllZCB5ZXQgZWl0aGVyIGFzIGZhciBhcyBJJ20gYXdhcmUuIEknZCBw
cmVmZXINCiAgICB3ZSBkbyB0aGF0IGFuZCBzdWJtaXQgYSBzaW5nbGUsIGdvb2QgcGF0Y2ggaWYg
d2UgY2FuLg0KDQpGaXJzdCBwYXRjaCBoYXMgYWxyZWFkeSBiZWVuIGFwcGxpZWQgdG8gTEYgb3Bl
bmJtYyBrZXJuZWwgYW5kIGJlaW5nIHVzZWQgYnkgbWFueQ0KcGVvcGxlIHNvIEkgd2FudGVkIHRv
IGtlZXAgdGhpcyBjbGVhbi4NCiAgICANCiAgICBBbmRyZXcNCiAgICANCiAgICA+IC0tLQ0KICAg
ID4gIGRyaXZlcnMvbWlzYy9hc3BlZWQtbHBjLWN0cmwuYyB8IDE0ICsrKysrKystLS0tLS0tDQog
ICAgPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCiAg
ICA+IA0KICAgID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9hc3BlZWQtbHBjLWN0cmwuYyAN
CiAgICA+IGIvZHJpdmVycy9taXNjL2FzcGVlZC1scGMtY3RybC5jDQogICAgPiBpbmRleCAzMzIy
MTBlMDZlOTguLmFjYTEzNzc5NzY0YSAxMDA2NDQNCiAgICA+IC0tLSBhL2RyaXZlcnMvbWlzYy9h
c3BlZWQtbHBjLWN0cmwuYw0KICAgID4gKysrIGIvZHJpdmVycy9taXNjL2FzcGVlZC1scGMtY3Ry
bC5jDQogICAgPiBAQCAtOTMsOCArOTMsOCBAQCBzdGF0aWMgbG9uZyBhc3BlZWRfbHBjX2N0cmxf
aW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIA0KICAgID4gdW5zaWduZWQgaW50IGNtZCwNCiAgICA+
ICANCiAgICA+ICAJCS8qIElmIG1lbW9yeS1yZWdpb24gaXMgbm90IGRlc2NyaWJlZCBpbiBkZXZp
Y2UgdHJlZSAqLw0KICAgID4gIAkJaWYgKCFscGNfY3RybC0+bWVtX3NpemUpIHsNCiAgICA+IC0J
CQlkZXZfZXJyKGRldiwgIkRpZG4ndCBmaW5kIHJlc2VydmVkIG1lbW9yeVxuIik7DQogICAgPiAt
CQkJcmV0dXJuIC1FSU5WQUw7DQogICAgPiArCQkJZGV2X2RiZyhkZXYsICJEaWRuJ3QgZmluZCBy
ZXNlcnZlZCBtZW1vcnlcbiIpOw0KICAgID4gKwkJCXJldHVybiAtRU5YSU87DQogICAgPiAgCQl9
DQogICAgPiAgDQogICAgPiAgCQltYXAuc2l6ZSA9IGxwY19jdHJsLT5tZW1fc2l6ZTsNCiAgICA+
IEBAIC0xMzQsMTYgKzEzNCwxNiBAQCBzdGF0aWMgbG9uZyBhc3BlZWRfbHBjX2N0cmxfaW9jdGwo
c3RydWN0IGZpbGUgDQogICAgPiAqZmlsZSwgdW5zaWduZWQgaW50IGNtZCwNCiAgICA+ICANCiAg
ICA+ICAJCWlmIChtYXAud2luZG93X3R5cGUgPT0gQVNQRUVEX0xQQ19DVFJMX1dJTkRPV19GTEFT
SCkgew0KICAgID4gIAkJCWlmICghbHBjX2N0cmwtPnBub3Jfc2l6ZSkgew0KICAgID4gLQkJCQlk
ZXZfZXJyKGRldiwgIkRpZG4ndCBmaW5kIGhvc3QgcG5vciBmbGFzaFxuIik7DQogICAgPiAtCQkJ
CXJldHVybiAtRUlOVkFMOw0KICAgID4gKwkJCQlkZXZfZGJnKGRldiwgIkRpZG4ndCBmaW5kIGhv
c3QgcG5vciBmbGFzaFxuIik7DQogICAgPiArCQkJCXJldHVybiAtRU5YSU87DQogICAgPiAgCQkJ
fQ0KICAgID4gIAkJCWFkZHIgPSBscGNfY3RybC0+cG5vcl9iYXNlOw0KICAgID4gIAkJCXNpemUg
PSBscGNfY3RybC0+cG5vcl9zaXplOw0KICAgID4gIAkJfSBlbHNlIGlmIChtYXAud2luZG93X3R5
cGUgPT0gQVNQRUVEX0xQQ19DVFJMX1dJTkRPV19NRU1PUlkpIHsNCiAgICA+ICAJCQkvKiBJZiBt
ZW1vcnktcmVnaW9uIGlzIG5vdCBkZXNjcmliZWQgaW4gZGV2aWNlIHRyZWUgKi8NCiAgICA+ICAJ
CQlpZiAoIWxwY19jdHJsLT5tZW1fc2l6ZSkgew0KICAgID4gLQkJCQlkZXZfZXJyKGRldiwgIkRp
ZG4ndCBmaW5kIHJlc2VydmVkIG1lbW9yeVxuIik7DQogICAgPiAtCQkJCXJldHVybiAtRUlOVkFM
Ow0KICAgID4gKwkJCQlkZXZfZGJnKGRldiwgIkRpZG4ndCBmaW5kIHJlc2VydmVkIG1lbW9yeVxu
Iik7DQogICAgPiArCQkJCXJldHVybiAtRU5YSU87DQogICAgPiAgCQkJfQ0KICAgID4gIAkJCWFk
ZHIgPSBscGNfY3RybC0+bWVtX2Jhc2U7DQogICAgPiAgCQkJc2l6ZSA9IGxwY19jdHJsLT5tZW1f
c2l6ZTsNCiAgICA+IEBAIC0yMzksNyArMjM5LDcgQEAgc3RhdGljIGludCBhc3BlZWRfbHBjX2N0
cmxfcHJvYmUoc3RydWN0IA0KICAgID4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KICAgID4gIAkJ
b2Zfbm9kZV9wdXQobm9kZSk7DQogICAgPiAgCQlpZiAocmMpIHsNCiAgICA+ICAJCQlkZXZfZXJy
KGRldiwgIkNvdWxkbid0IGFkZHJlc3MgdG8gcmVzb3VyY2UgZm9yIHJlc2VydmVkIG1lbW9yeVxu
Iik7DQogICAgPiAtCQkJcmV0dXJuIC1FTk9NRU07DQogICAgPiArCQkJcmV0dXJuIC1FTlhJTzsN
CiAgICA+ICAJCX0NCiAgICA+ICANCiAgICA+ICAJCWxwY19jdHJsLT5tZW1fc2l6ZSA9IHJlc291
cmNlX3NpemUoJnJlc20pOw0KICAgID4gLS0gDQogICAgPiAyLjE3LjENCiAgICA+IA0KICAgID4N
CiAgICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
