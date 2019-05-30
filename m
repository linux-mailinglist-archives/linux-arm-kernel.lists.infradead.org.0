Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0C23035E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 22:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xQMHkiMhnsBZ8j9GCHo4TEK+2Sy8eplmMTykQyseVA=; b=SzK9nF6eZFrMmM
	y5u0fXg4y06bWBsRVPUNhy4wFxA2rsQEHDvRJKulNUAK/PA1zQD3YvZ1Pygmv3xuaaXQsYxI20jp3
	VLMmWgRaYRhqFmXFbNLREPjcwO1Wliht59S0wu3AnaFPejpNTXfRelTcKKJUWboB48B4HmEV26h5v
	q/cTIUaYjz6ip8azmUwa3dwtTCgcfF1g+6TV8dZO8cD1+UKBQQSZhm177YwcigsdiOiQ7IN7DhLsp
	CE79bHpPaQ/6rJKdOCfUMtI9seeasPtxIIdMLDIJ+ZtBCZZAYifWHmUv+vNRROJNKgE3ZgDSOW0uH
	dAmuzfnS/G2XDPKEW3qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWRoL-0004HL-As; Thu, 30 May 2019 20:38:05 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWRoD-0004Gx-C2
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 20:37:59 +0000
Received: from pps.filterd (m0001255.ppops.net [127.0.0.1])
 by mx0b-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4UKbOu3006139; Thu, 30 May 2019 13:37:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=0PtdOWjP+oJenG+Kbt/E64VgLlBp3BenL74Y/cX1PZk=;
 b=i3z3PqY+KaeIoHudn5gTRD9z4RAGecZRX3EWP5sk4TfnKAAUAafQH5zD9Pl3BM+n6vsL
 FXpSBtMSLr2oUExpX2jdklltDdFPXccu2U/U89FAkcjG6GpNVcySaSdnwFHxHZRV/a2+
 C4EIftKQOYQTY7i0foFt7jb6+vpzKA7rk24= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0b-00082601.pphosted.com with ESMTP id 2stj9ygxe0-15
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 30 May 2019 13:37:47 -0700
Received: from prn-hub05.TheFacebook.com (2620:10d:c081:35::129) by
 prn-hub06.TheFacebook.com (2620:10d:c081:35::130) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Thu, 30 May 2019 13:37:28 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.29) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Thu, 30 May 2019 13:37:28 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0PtdOWjP+oJenG+Kbt/E64VgLlBp3BenL74Y/cX1PZk=;
 b=L08gKewMRJKpVQTm8Zv9mSJabziMUTRjYwTicmPUnh/+qybvL7QNDQEpdmza74JV/BaYxENOsWe2Yta24RhFOcMFjlf5/KglJGOKcDDbKCpoZLKYegASAbk44PySiJMZRx0zyerfbVmQIb9bw7/AatRYUhUA89/CwMZ9JDwFnuk=
Received: from CY4PR15MB1269.namprd15.prod.outlook.com (10.172.177.11) by
 CY4PR15MB1669.namprd15.prod.outlook.com (10.175.120.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.19; Thu, 30 May 2019 20:37:26 +0000
Received: from CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::c026:bca5:3f4e:9b1f]) by CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::c026:bca5:3f4e:9b1f%3]) with mapi id 15.20.1922.021; Thu, 30 May 2019
 20:37:26 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>, "Patrick
 Venture" <venture@google.com>,
 Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] soc: aspeed: lpc-ctrl: make parameter optional
Thread-Topic: [PATCH] soc: aspeed: lpc-ctrl: make parameter optional
Thread-Index: AQHVFkMFCrlT6n65BEuOzOoSsANQF6aDDGAAgACgu4A=
Date: Thu, 30 May 2019 20:37:26 +0000
Message-ID: <B9D6474A-E58E-4198-AFA7-3EE742E0BABE@fb.com>
References: <20190529172103.1130525-1-vijaykhemka@fb.com>
 <fe36fbac-e29c-4210-9af2-defca62e9c2a@www.fastmail.com>
In-Reply-To: <fe36fbac-e29c-4210-9af2-defca62e9c2a@www.fastmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::2:3b87]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e3f0d9c-54fd-418f-4c00-08d6e53ea098
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CY4PR15MB1669; 
x-ms-traffictypediagnostic: CY4PR15MB1669:
x-microsoft-antispam-prvs: <CY4PR15MB16690ABF7C6ADA1B6A8E49A0DD180@CY4PR15MB1669.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(136003)(366004)(396003)(39860400002)(199004)(189003)(229853002)(36756003)(7736002)(6512007)(66446008)(6486002)(54906003)(478600001)(33656002)(6116002)(46003)(66476007)(4326008)(68736007)(8936002)(53936002)(110136005)(6246003)(14454004)(81166006)(305945005)(186003)(25786009)(81156014)(8676002)(73956011)(6506007)(446003)(64756008)(2906002)(256004)(2201001)(316002)(76116006)(76176011)(91956017)(86362001)(82746002)(71200400001)(83716004)(11346002)(2616005)(2501003)(99286004)(5660300002)(476003)(102836004)(486006)(6436002)(71190400001)(66556008)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR15MB1669;
 H:CY4PR15MB1269.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LOP/wzgwcSUpm6TWorTvo8V252ab0wW6DDIWyK5i7wr9gN1SfxZ4kcXvrJYiDLiXCGqnkVn8MVPLo0fx5uEPJQy7/iQf1MrLH/MeKkO7kcpQPZ4dLQJ8ig0PmJHQO2ZySv7SBsHQvB95xOOvsNZSpwyMWXekBYUMfaGXZWj9cVBhdU4+1zzBd6nhtKLQ/KT7rqe9mcOwyyhe6sugjKfQsKdpCLYIK0I/3bHrfBf2Cb+h7Zr9R1CJAvF2biDRBSYs4aMGQLLnbDKMkKVNzpg6rpVKwrxx2yJE24ToWVgJ328RqkT/MOgyZEhd3edLT3GnpSUpykT2d8qN77Qau8YK2BsMNZrpmjCuPhhFOjlIMx0VZl7XaVayI/XcB//6Nf3m06skJD2TtTBtogjveOcj3sgzqgiSS6ZrMjP1omulj/8=
Content-ID: <56A118C2F0E80D44BE2FEA58289FE10F@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e3f0d9c-54fd-418f-4c00-08d6e53ea098
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 20:37:26.3461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vijaykhemka@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1669
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-30_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905300146
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_133757_613212_82ABE048 
X-CRM114-Status: GOOD (  22.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sai Dasari <sdasari@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDUvMjkvMTksIDk6MDIgUE0sICJBbmRyZXcgSmVmZmVyeSIgPGFuZHJld0Bhai5p
ZC5hdT4gd3JvdGU6DQoNCiAgICANCiAgICANCiAgICBPbiBUaHUsIDMwIE1heSAyMDE5LCBhdCAw
Mjo1MSwgVmlqYXkgS2hlbWthIHdyb3RlOg0KICAgID4gTWFraWluZw0KICAgIA0KICAgIFR5cG8g
aGVyZSwgYnV0IEknZCBwcmVmZXIgdG8gc2VlIHRoaXMgcGF0Y2ggZ28gaW4sIHNvDQpDb3JyZWN0
ZWQgaW4gbmV4dCB2ZXJzaW9uIHYyLg0KICAgIA0KICAgID4gbWVtb3J5LXJlZ2lvbiBhbmQgZmxh
c2ggYXMgb3B0aW9uYWwgcGFyYW1ldGVyIGluIGRldmljZQ0KICAgID4gdHJlZSBpZiB1c2VyIG5l
ZWRzIHRvIHVzZSB0aGVzZSBwYXJhbWV0ZXIgdGhyb3VnaCBpb2N0bCB0aGVuDQogICAgPiBuZWVk
IHRvIGRlZmluZSBpbiBkZXZpY2V0cmVlLg0KICAgID4gDQogICAgPiBTaWduZWQtb2ZmLWJ5OiBW
aWpheSBLaGVta2EgPHZpamF5a2hlbWthQGZiLmNvbT4NCiAgICANCiAgICBSZXZpZXdlZC1ieTog
QW5kcmV3IEplZmZlcnkgPGFuZHJld0Bhai5pZC5hdT4NCiAgICANCiAgICA+IC0tLQ0KICAgID4g
IGRyaXZlcnMvc29jL2FzcGVlZC9hc3BlZWQtbHBjLWN0cmwuYyB8IDU4ICsrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0NCiAgICA+ICAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwg
MjIgZGVsZXRpb25zKC0pDQogICAgPiANCiAgICA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9h
c3BlZWQvYXNwZWVkLWxwYy1jdHJsLmMgDQogICAgPiBiL2RyaXZlcnMvc29jL2FzcGVlZC9hc3Bl
ZWQtbHBjLWN0cmwuYw0KICAgID4gaW5kZXggYTAyNGY4MDQyMjU5Li5hY2ExMzc3OTc2NGEgMTAw
NjQ0DQogICAgPiAtLS0gYS9kcml2ZXJzL3NvYy9hc3BlZWQvYXNwZWVkLWxwYy1jdHJsLmMNCiAg
ICA+ICsrKyBiL2RyaXZlcnMvc29jL2FzcGVlZC9hc3BlZWQtbHBjLWN0cmwuYw0KICAgID4gQEAg
LTY4LDYgKzY4LDcgQEAgc3RhdGljIGxvbmcgYXNwZWVkX2xwY19jdHJsX2lvY3RsKHN0cnVjdCBm
aWxlICpmaWxlLCANCiAgICA+IHVuc2lnbmVkIGludCBjbWQsDQogICAgPiAgCQl1bnNpZ25lZCBs
b25nIHBhcmFtKQ0KICAgID4gIHsNCiAgICA+ICAJc3RydWN0IGFzcGVlZF9scGNfY3RybCAqbHBj
X2N0cmwgPSBmaWxlX2FzcGVlZF9scGNfY3RybChmaWxlKTsNCiAgICA+ICsJc3RydWN0IGRldmlj
ZSAqZGV2ID0gZmlsZS0+cHJpdmF0ZV9kYXRhOw0KICAgID4gIAl2b2lkIF9fdXNlciAqcCA9ICh2
b2lkIF9fdXNlciAqKXBhcmFtOw0KICAgID4gIAlzdHJ1Y3QgYXNwZWVkX2xwY19jdHJsX21hcHBp
bmcgbWFwOw0KICAgID4gIAl1MzIgYWRkcjsNCiAgICA+IEBAIC05MCw2ICs5MSwxMiBAQCBzdGF0
aWMgbG9uZyBhc3BlZWRfbHBjX2N0cmxfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIA0KICAgID4g
dW5zaWduZWQgaW50IGNtZCwNCiAgICA+ICAJCWlmIChtYXAud2luZG93X2lkICE9IDApDQogICAg
PiAgCQkJcmV0dXJuIC1FSU5WQUw7DQogICAgPiAgDQogICAgPiArCQkvKiBJZiBtZW1vcnktcmVn
aW9uIGlzIG5vdCBkZXNjcmliZWQgaW4gZGV2aWNlIHRyZWUgKi8NCiAgICA+ICsJCWlmICghbHBj
X2N0cmwtPm1lbV9zaXplKSB7DQogICAgPiArCQkJZGV2X2RiZyhkZXYsICJEaWRuJ3QgZmluZCBy
ZXNlcnZlZCBtZW1vcnlcbiIpOw0KICAgID4gKwkJCXJldHVybiAtRU5YSU87DQogICAgPiArCQl9
DQogICAgPiArDQogICAgPiAgCQltYXAuc2l6ZSA9IGxwY19jdHJsLT5tZW1fc2l6ZTsNCiAgICA+
ICANCiAgICA+ICAJCXJldHVybiBjb3B5X3RvX3VzZXIocCwgJm1hcCwgc2l6ZW9mKG1hcCkpID8g
LUVGQVVMVCA6IDA7DQogICAgPiBAQCAtMTI2LDkgKzEzMywxOCBAQCBzdGF0aWMgbG9uZyBhc3Bl
ZWRfbHBjX2N0cmxfaW9jdGwoc3RydWN0IGZpbGUgDQogICAgPiAqZmlsZSwgdW5zaWduZWQgaW50
IGNtZCwNCiAgICA+ICAJCQlyZXR1cm4gLUVJTlZBTDsNCiAgICA+ICANCiAgICA+ICAJCWlmICht
YXAud2luZG93X3R5cGUgPT0gQVNQRUVEX0xQQ19DVFJMX1dJTkRPV19GTEFTSCkgew0KICAgID4g
KwkJCWlmICghbHBjX2N0cmwtPnBub3Jfc2l6ZSkgew0KICAgID4gKwkJCQlkZXZfZGJnKGRldiwg
IkRpZG4ndCBmaW5kIGhvc3QgcG5vciBmbGFzaFxuIik7DQogICAgPiArCQkJCXJldHVybiAtRU5Y
SU87DQogICAgPiArCQkJfQ0KICAgID4gIAkJCWFkZHIgPSBscGNfY3RybC0+cG5vcl9iYXNlOw0K
ICAgID4gIAkJCXNpemUgPSBscGNfY3RybC0+cG5vcl9zaXplOw0KICAgID4gIAkJfSBlbHNlIGlm
IChtYXAud2luZG93X3R5cGUgPT0gQVNQRUVEX0xQQ19DVFJMX1dJTkRPV19NRU1PUlkpIHsNCiAg
ICA+ICsJCQkvKiBJZiBtZW1vcnktcmVnaW9uIGlzIG5vdCBkZXNjcmliZWQgaW4gZGV2aWNlIHRy
ZWUgKi8NCiAgICA+ICsJCQlpZiAoIWxwY19jdHJsLT5tZW1fc2l6ZSkgew0KICAgID4gKwkJCQlk
ZXZfZGJnKGRldiwgIkRpZG4ndCBmaW5kIHJlc2VydmVkIG1lbW9yeVxuIik7DQogICAgPiArCQkJ
CXJldHVybiAtRU5YSU87DQogICAgPiArCQkJfQ0KICAgID4gIAkJCWFkZHIgPSBscGNfY3RybC0+
bWVtX2Jhc2U7DQogICAgPiAgCQkJc2l6ZSA9IGxwY19jdHJsLT5tZW1fc2l6ZTsNCiAgICA+ICAJ
CX0gZWxzZSB7DQogICAgPiBAQCAtMTk2LDE3ICsyMTIsMTcgQEAgc3RhdGljIGludCBhc3BlZWRf
bHBjX2N0cmxfcHJvYmUoc3RydWN0IA0KICAgID4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KICAg
ID4gIAlpZiAoIWxwY19jdHJsKQ0KICAgID4gIAkJcmV0dXJuIC1FTk9NRU07DQogICAgPiAgDQog
ICAgPiArCS8qIElmIGZsYXNoIGlzIGRlc2NyaWJlZCBpbiBkZXZpY2UgdHJlZSB0aGVuIHN0b3Jl
ICovDQogICAgPiAgCW5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKGRldi0+b2Zfbm9kZSwgImZsYXNo
IiwgMCk7DQogICAgPiAgCWlmICghbm9kZSkgew0KICAgID4gLQkJZGV2X2VycihkZXYsICJEaWRu
J3QgZmluZCBob3N0IHBub3IgZmxhc2ggbm9kZVxuIik7DQogICAgPiAtCQlyZXR1cm4gLUVOT0RF
VjsNCiAgICA+IC0JfQ0KICAgID4gLQ0KICAgID4gLQlyYyA9IG9mX2FkZHJlc3NfdG9fcmVzb3Vy
Y2Uobm9kZSwgMSwgJnJlc20pOw0KICAgID4gLQlvZl9ub2RlX3B1dChub2RlKTsNCiAgICA+IC0J
aWYgKHJjKSB7DQogICAgPiAtCQlkZXZfZXJyKGRldiwgIkNvdWxkbid0IGFkZHJlc3MgdG8gcmVz
b3VyY2UgZm9yIGZsYXNoXG4iKTsNCiAgICA+IC0JCXJldHVybiByYzsNCiAgICA+ICsJCWRldl9k
YmcoZGV2LCAiRGlkbid0IGZpbmQgaG9zdCBwbm9yIGZsYXNoIG5vZGVcbiIpOw0KICAgID4gKwl9
IGVsc2Ugew0KICAgID4gKwkJcmMgPSBvZl9hZGRyZXNzX3RvX3Jlc291cmNlKG5vZGUsIDEsICZy
ZXNtKTsNCiAgICA+ICsJCW9mX25vZGVfcHV0KG5vZGUpOw0KICAgID4gKwkJaWYgKHJjKSB7DQog
ICAgPiArCQkJZGV2X2VycihkZXYsICJDb3VsZG4ndCBhZGRyZXNzIHRvIHJlc291cmNlIGZvciBm
bGFzaFxuIik7DQogICAgPiArCQkJcmV0dXJuIHJjOw0KICAgID4gKwkJfQ0KICAgID4gIAl9DQog
ICAgPiAgDQogICAgPiAgCWxwY19jdHJsLT5wbm9yX3NpemUgPSByZXNvdXJjZV9zaXplKCZyZXNt
KTsNCiAgICA+IEBAIC0yMTQsMjIgKzIzMCwyMiBAQCBzdGF0aWMgaW50IGFzcGVlZF9scGNfY3Ry
bF9wcm9iZShzdHJ1Y3QgDQogICAgPiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQogICAgPiAgDQog
ICAgPiAgCWRldl9zZXRfZHJ2ZGF0YSgmcGRldi0+ZGV2LCBscGNfY3RybCk7DQogICAgPiAgDQog
ICAgPiArCS8qIElmIG1lbW9yeS1yZWdpb24gaXMgZGVzY3JpYmVkIGluIGRldmljZSB0cmVlIHRo
ZW4gc3RvcmUgKi8NCiAgICA+ICAJbm9kZSA9IG9mX3BhcnNlX3BoYW5kbGUoZGV2LT5vZl9ub2Rl
LCAibWVtb3J5LXJlZ2lvbiIsIDApOw0KICAgID4gIAlpZiAoIW5vZGUpIHsNCiAgICA+IC0JCWRl
dl9lcnIoZGV2LCAiRGlkbid0IGZpbmQgcmVzZXJ2ZWQgbWVtb3J5XG4iKTsNCiAgICA+IC0JCXJl
dHVybiAtRUlOVkFMOw0KICAgID4gLQl9DQogICAgPiArCQlkZXZfZGJnKGRldiwgIkRpZG4ndCBm
aW5kIHJlc2VydmVkIG1lbW9yeVxuIik7DQogICAgPiArCX0gZWxzZSB7DQogICAgPiArCQlyYyA9
IG9mX2FkZHJlc3NfdG9fcmVzb3VyY2Uobm9kZSwgMCwgJnJlc20pOw0KICAgID4gKwkJb2Zfbm9k
ZV9wdXQobm9kZSk7DQogICAgPiArCQlpZiAocmMpIHsNCiAgICA+ICsJCQlkZXZfZXJyKGRldiwg
IkNvdWxkbid0IGFkZHJlc3MgdG8gcmVzb3VyY2UgZm9yIHJlc2VydmVkIG1lbW9yeVxuIik7DQog
ICAgPiArCQkJcmV0dXJuIC1FTlhJTzsNCiAgICA+ICsJCX0NCiAgICA+ICANCiAgICA+IC0JcmMg
PSBvZl9hZGRyZXNzX3RvX3Jlc291cmNlKG5vZGUsIDAsICZyZXNtKTsNCiAgICA+IC0Jb2Zfbm9k
ZV9wdXQobm9kZSk7DQogICAgPiAtCWlmIChyYykgew0KICAgID4gLQkJZGV2X2VycihkZXYsICJD
b3VsZG4ndCBhZGRyZXNzIHRvIHJlc291cmNlIGZvciByZXNlcnZlZCBtZW1vcnlcbiIpOw0KICAg
ID4gLQkJcmV0dXJuIC1FTk9NRU07DQogICAgPiArCQlscGNfY3RybC0+bWVtX3NpemUgPSByZXNv
dXJjZV9zaXplKCZyZXNtKTsNCiAgICA+ICsJCWxwY19jdHJsLT5tZW1fYmFzZSA9IHJlc20uc3Rh
cnQ7DQogICAgPiAgCX0NCiAgICA+ICANCiAgICA+IC0JbHBjX2N0cmwtPm1lbV9zaXplID0gcmVz
b3VyY2Vfc2l6ZSgmcmVzbSk7DQogICAgPiAtCWxwY19jdHJsLT5tZW1fYmFzZSA9IHJlc20uc3Rh
cnQ7DQogICAgPiAtDQogICAgPiAgCWxwY19jdHJsLT5yZWdtYXAgPSBzeXNjb25fbm9kZV90b19y
ZWdtYXAoDQogICAgPiAgCQkJcGRldi0+ZGV2LnBhcmVudC0+b2Zfbm9kZSk7DQogICAgPiAgCWlm
IChJU19FUlIobHBjX2N0cmwtPnJlZ21hcCkpIHsNCiAgICA+IEBAIC0yNTgsOCArMjc0LDYgQEAg
c3RhdGljIGludCBhc3BlZWRfbHBjX2N0cmxfcHJvYmUoc3RydWN0IA0KICAgID4gcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQ0KICAgID4gIAkJZ290byBlcnI7DQogICAgPiAgCX0NCiAgICA+ICANCiAg
ICA+IC0JZGV2X2luZm8oZGV2LCAiTG9hZGVkIGF0ICVwclxuIiwgJnJlc20pOw0KICAgID4gLQ0K
ICAgID4gIAlyZXR1cm4gMDsNCiAgICA+ICANCiAgICA+ICBlcnI6DQogICAgPiAtLSANCiAgICA+
IDIuMTcuMQ0KICAgID4gDQogICAgPg0KICAgIA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
