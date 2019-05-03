Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3C71336B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 19:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojkcCiTuOklXqGMYa8yjIpi/LkHQCa1mFp/1cPD4ZnE=; b=nEv0vStrWDOPBK
	3y0yhis/4lD45CVL53xFRORQNBJ8X3yzktZ0s2Ag+BF1VQ5RezjJr+Oa/VpMbDVLV4XzGspK6SRuh
	JZiDj8Fc+7SgLCwi3mJdL+BSyB5WOuld+3qSXLxAdYIFX/N6Zyh+fKNvx0Nl4FRls3o/GfaqE8URu
	GQMPS2c1kpawP/6fqZBMHmb0Ou8ga6dbmE5JZatJJ0S4ajg5G02DimwRgsdsxDxjprTUDz7GWlpQB
	N2JmRKRfhLVSRG3quH3dWRVs/5zvl3w0sGkIa49bqeAVnEc/XoXw3hz4ZZfhRpyqt3CDTT8JqU82M
	Z1Z7mEtu5qJC22VOa9Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcPT-0008WV-9L; Fri, 03 May 2019 17:55:47 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcPM-0008Vo-4M
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 17:55:41 +0000
Received: from pps.filterd (m0044008.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x43HnTrd003674; Fri, 3 May 2019 10:55:28 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=T1+PyZlfOY456C8gUfUETJ3a+G1Xz0PR2jZAEOHF0Og=;
 b=BDuS+z8e3KLtZb/ojhZJpiLJlSKOY/WwZl7KYS9Bsm/Uz5AHixAM1mwugWI+8cG6D24Y
 aohg3P+3Lq1Z/NpoWsA4a3rV562bXUlVGESvrptX9Cb/KHogO+YhTG6i3wA8xtMxNhBF
 TpRbu+GrLvgYF+Jd7OLkTGrPxFTP0KR/pYY= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2s8r2q0gu6-9
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 03 May 2019 10:55:28 -0700
Received: from prn-hub03.TheFacebook.com (2620:10d:c081:35::127) by
 prn-hub04.TheFacebook.com (2620:10d:c081:35::128) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 3 May 2019 10:55:10 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 3 May 2019 10:55:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T1+PyZlfOY456C8gUfUETJ3a+G1Xz0PR2jZAEOHF0Og=;
 b=VowosDDToVtJWx4hdqdCzyfADYjKVDhXPjD5BbxVaceGTSLIjUrz3MMR1ZjcBDUg4FLMMZfU9gi6V7y904ODNE50n6Es7OwtW9Mtu1JfJM95ntwoVT9gLDbOr63L1u8yyc1hYBEayswDZZJjBDsSW4n3YKghhcsY3C0GWlbVc6k=
Received: from CY4PR15MB1269.namprd15.prod.outlook.com (10.172.177.11) by
 CY4PR15MB1174.namprd15.prod.outlook.com (10.172.176.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Fri, 3 May 2019 17:55:09 +0000
Received: from CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::1039:c5b1:f43e:14e9]) by CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::1039:c5b1:f43e:14e9%3]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 17:55:09 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Andrew Jeffery <andrew@aj.id.au>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] misc: aspeed-lpc-ctrl: Correct return values
Thread-Topic: [PATCH] misc: aspeed-lpc-ctrl: Correct return values
Thread-Index: AQHVAG6o4KVG8sqx1k+1toi7Kc7idaZXYvaAgAACkQCAAdbzAA==
Date: Fri, 3 May 2019 17:55:08 +0000
Message-ID: <84663B1E-0FD1-4B71-A49C-AB70110CB8A0@fb.com>
References: <20190501223836.1670096-1-vijaykhemka@fb.com>
 <20190502064021.GA14911@kroah.com>
 <6defa7bc-ec29-4418-b05c-fb96c03621f6@www.fastmail.com>
In-Reply-To: <6defa7bc-ec29-4418-b05c-fb96c03621f6@www.fastmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::1:64bc]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41b6dcf0-260e-48ef-9ad1-08d6cff07b8d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:CY4PR15MB1174; 
x-ms-traffictypediagnostic: CY4PR15MB1174:
x-microsoft-antispam-prvs: <CY4PR15MB11742C05CBC5A74EC137413DDD350@CY4PR15MB1174.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(346002)(396003)(39860400002)(366004)(199004)(189003)(54534003)(68736007)(81166006)(8676002)(6506007)(33656002)(6486002)(256004)(53936002)(229853002)(6436002)(81156014)(478600001)(6116002)(8936002)(7736002)(305945005)(6246003)(36756003)(186003)(6512007)(2616005)(14454004)(4326008)(25786009)(66946007)(73956011)(5660300002)(91956017)(76116006)(66446008)(64756008)(66556008)(66476007)(2906002)(82746002)(102836004)(71200400001)(86362001)(54906003)(316002)(99286004)(76176011)(486006)(446003)(11346002)(71190400001)(476003)(46003)(110136005)(83716004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR15MB1174;
 H:CY4PR15MB1269.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 64lekfhQtxv2fSur7zSLlQP/F35x2lVEYy0chf1qQPMxdmx0Pg//Ll0uzW73crfUb2VHHzngClTAzvK6Ui6MbGhW5yv2/HB4xf1XZBrshwgh6TZJOLfjRmoPt35f2RmumCcM6EHVUC4ycCbD3ZmmlCSxB/FpKjKANZkJpOF0f2LVO7OnzZc/DFHG0QKKtF9g5MzBWwND9KlYRBDn4EezYOeoD05bjkwVvk90sqWo60xFmwYewJz4WD3u4ciiFaonRq642sWam0TidcZ7oyqoZgG6E/sEoCy898uzTDqyHYJwYFop1w9MnnU7s/o0Sbikf+sKNQSKHwjv5aPfJPnuaVjq5fqEjM3zYJv8Cfy/+/PgikoXj9+JOcI4LpZd1fXF7Rv0oSy9MV2glFB08xx7vmOUrrXgInqWCjMW2lOs92M=
Content-ID: <D153A408E414AE49AE218F82F088A8C1@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 41b6dcf0-260e-48ef-9ad1-08d6cff07b8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 17:55:08.9490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1174
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-03_11:, , signatures=0
X-Proofpoint-Spam-Reason: safe
X-FB-Internal: Safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_105540_178930_4FDAB60C 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Dasari <sdasari@fb.com>, Arnd Bergmann <arnd@arndb.de>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDUvMS8xOSwgMTE6NDkgUE0sICJBbmRyZXcgSmVmZmVyeSIgPGFuZHJld0Bhai5p
ZC5hdT4gd3JvdGU6DQoNCiAgICANCiAgICANCiAgICBPbiBUaHUsIDIgTWF5IDIwMTksIGF0IDE2
OjEwLCBHcmVnIEtyb2FoLUhhcnRtYW4gd3JvdGU6DQogICAgPiBPbiBXZWQsIE1heSAwMSwgMjAx
OSBhdCAwMzozODozNlBNIC0wNzAwLCBWaWpheSBLaGVta2Egd3JvdGU6DQogICAgPiA+IENvcnJl
Y3RlZCBzb21lIG9mIHJldHVybiB2YWx1ZXMgd2l0aCBhcHByb3ByaWF0ZSBtZWFuaW5ncy4NCiAg
ICA+ID4gDQogICAgPiA+IFNpZ25lZC1vZmYtYnk6IFZpamF5IEtoZW1rYSA8dmlqYXlraGVta2FA
ZmIuY29tPg0KICAgID4gPiAtLS0NCiAgICA+ID4gIGRyaXZlcnMvbWlzYy9hc3BlZWQtbHBjLWN0
cmwuYyB8IDE1ICsrKysrKystLS0tLS0tLQ0KICAgID4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCiAgICA+ID4gDQogICAgPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21pc2MvYXNwZWVkLWxwYy1jdHJsLmMgYi9kcml2ZXJzL21pc2MvYXNwZWVkLWxw
Yy1jdHJsLmMNCiAgICA+ID4gaW5kZXggMzMyMjEwZTA2ZTk4Li45N2FlMzQxMTA5ZDUgMTAwNjQ0
DQogICAgPiA+IC0tLSBhL2RyaXZlcnMvbWlzYy9hc3BlZWQtbHBjLWN0cmwuYw0KICAgID4gPiAr
KysgYi9kcml2ZXJzL21pc2MvYXNwZWVkLWxwYy1jdHJsLmMNCiAgICA+ID4gQEAgLTY4LDcgKzY4
LDYgQEAgc3RhdGljIGxvbmcgYXNwZWVkX2xwY19jdHJsX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxl
LCB1bnNpZ25lZCBpbnQgY21kLA0KICAgID4gPiAgCQl1bnNpZ25lZCBsb25nIHBhcmFtKQ0KICAg
ID4gPiAgew0KICAgID4gPiAgCXN0cnVjdCBhc3BlZWRfbHBjX2N0cmwgKmxwY19jdHJsID0gZmls
ZV9hc3BlZWRfbHBjX2N0cmwoZmlsZSk7DQogICAgPiA+IC0Jc3RydWN0IGRldmljZSAqZGV2ID0g
ZmlsZS0+cHJpdmF0ZV9kYXRhOw0KICAgID4gPiAgCXZvaWQgX191c2VyICpwID0gKHZvaWQgX191
c2VyICopcGFyYW07DQogICAgPiA+ICAJc3RydWN0IGFzcGVlZF9scGNfY3RybF9tYXBwaW5nIG1h
cDsNCiAgICA+ID4gIAl1MzIgYWRkcjsNCiAgICA+IA0KICAgID4gVGhpcyBjaGFuZ2UgaXMgbm90
IHJlZmxlY3RlZCBpbiB5b3VyIGNoYW5nZWxvZyB0ZXh0IDooDQogICAgPiANCiAgICA+IFBsZWFz
ZSBmaXggdXAsIG9yIGJyZWFrIHRoaXMgdXAgaW50byBtdWx0aXBsZSBwYXRjaGVzLg0KICAgIA0K
ICAgIFRoZSByZXR1cm4gdmFsdWUgZml4ZXMgc2hvdWxkIGFsc28gYmUgc3F1YXNoZWQgaW50byB0
aGUgcGF0Y2ggdGhhdCBpbnRyb2R1Y2VkIHRob3NlIGxpbmVzDQogICAgZ2l2ZW4gaXQgaGFzbid0
IHlldCBiZWVuIGFwcGxpZWQuDQogICAgDQogICAgRnVydGhlciwgSUlSQyBJIHByZXZpb3VzbHkg
c3VnZ2VzdGVkIHJlbW92aW5nIHRoZSBkZXZfZXJyKClzIGVudGlyZWx5LCBub3QganVzdCBzd2l0
Y2hpbmcNCiAgICB0aGVtIHRvIHByX2VycigpLiBSZXR1cm5pbmcgYW4gZXJyb3IgY29kZSBpcyBl
bm91Z2ggSU1PLCB0aGVyZSdzIG5vIG5lZWQgdG8gcG9sbHV0ZSB0aGUNCiAgICBrZXJuZWwgbG9n
cyB3aXRoIGFwcGxpY2F0aW9uLWxldmVsIGVycm9ycy4gT3IgbWFrZSB0aGVtIGRldl9kYmcoKS4N
Cg0KQWxyaWdodCwgSSB3aWxsIHJlcGxhY2Ugd2l0aCBkZXZfZGJnKCksIGluZm9ybWF0aW9uIGNh
biBzdGlsbCBiZSBleHRyYWN0ZWQgYnkgdXNlciB3aXRoIGRlYnVnLg0KICAgIA0KICAgIEFuZHJl
dw0KICAgIA0KICAgID4gDQogICAgPiBncmVnIGstaA0KICAgID4NCiAgICANCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
