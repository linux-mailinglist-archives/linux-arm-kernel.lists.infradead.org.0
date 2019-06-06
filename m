Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB1437CAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 20:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slA19uQqSjjypmX7hdeU2S8ROjTZJTUT4T3zYazCpng=; b=k4kmRuq1d9xChh
	zkNmGWVU96uzy/KhGcRinR//SVC6un+TD4Eb+QYnyLS/lRCJFpDYdBbtLIKAUNGeoYvqgiHP7tbVL
	FrC7rxLyPqALCy3KmAt+1rmNbxBgHWWOpgRtI3Wl7F3SMlU3yzF20/7B1F6rL27WaUeg4/QmklO+Q
	YeSLzp+ow/46TK3PpZrGzTkFoI5Lb95BWfvRv6rFPIzCNCwnifmfkqc3ALjTvLLxVGq3HA/5qTp2v
	7AGlDkd62XYHQHoMtQTN5gGI3iFj4iRWakPPNZsd83pfv57FFk1livJC8uXyIU7Sd8hUmV7hTEnRf
	3Pn0A3DD4tiUr9oiT9lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxUf-0007lt-9X; Thu, 06 Jun 2019 18:52:09 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxUX-0007l8-OL
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 18:52:03 +0000
Received: from pps.filterd (m0001255.ppops.net [127.0.0.1])
 by mx0b-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x56Ig4Nj002242; Thu, 6 Jun 2019 11:51:50 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=vwnN4waA6d9z0fR5Swwuze6K8grcaiUuUp3q+pVflak=;
 b=Mh4ZtBsAGPpumOq2QC6ZhaBSi8TLvWTxfNPqd75INoTBiVVTVL+TXpwzZpNYwxRGUqrS
 x9M7Cs4kg2nqvV4CnV97+qWGy1/0GW/u0ZksEtI83pVFNuOCMR+HdXdXmGPneg3cpRr4
 /sjAsbGSAWvOhInkL9UL/Koo14D72GeNUmY= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0b-00082601.pphosted.com with ESMTP id 2sy2kp9fmv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 06 Jun 2019 11:51:49 -0700
Received: from ash-exopmbx101.TheFacebook.com (2620:10d:c0a8:82::b) by
 ash-exhub203.TheFacebook.com (2620:10d:c0a8:83::5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Jun 2019 11:51:49 -0700
Received: from ash-exhub104.TheFacebook.com (2620:10d:c0a8:82::d) by
 ash-exopmbx101.TheFacebook.com (2620:10d:c0a8:82::b) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Jun 2019 11:51:49 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.175) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 6 Jun 2019 11:51:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vwnN4waA6d9z0fR5Swwuze6K8grcaiUuUp3q+pVflak=;
 b=MWce6kgmPuEMghPok4IIEHztNiqoWFjOamIMwkxhegHkQSRgWKk9v6SsE+I8ocqRLTLBkiwpPi6XlBPDG/hZtHgcNp4XGJVWqIV2SJlugd1ZDg0tmk3ZaSz6Ji3RJhcJWwHy2SoWi2Ks04fg/dRMfcDvRnwEspX9NV/x7dh9DRI=
Received: from CY4PR15MB1269.namprd15.prod.outlook.com (10.172.177.11) by
 CY4PR15MB1207.namprd15.prod.outlook.com (10.172.180.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Thu, 6 Jun 2019 18:51:47 +0000
Received: from CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::c026:bca5:3f4e:9b1f]) by CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::c026:bca5:3f4e:9b1f%3]) with mapi id 15.20.1943.018; Thu, 6 Jun 2019
 18:51:47 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, "Patrick
 Venture" <venture@google.com>,
 Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] soc: aspeed: lpc-ctrl: make parameter optional
Thread-Topic: [PATCH v2] soc: aspeed: lpc-ctrl: make parameter optional
Thread-Index: AQHVFyd5zp8/qoe22EyZTW+8ecZdUKaOjh8A
Date: Thu, 6 Jun 2019 18:51:47 +0000
Message-ID: <6828A39D-8950-4C07-8340-7AE9E2DD3EC0@fb.com>
References: <20190530203654.3860925-1-vijaykhemka@fb.com>
In-Reply-To: <20190530203654.3860925-1-vijaykhemka@fb.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::3607]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4c7f357-635b-4072-2b0b-08d6eab00732
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR15MB1207; 
x-ms-traffictypediagnostic: CY4PR15MB1207:
x-microsoft-antispam-prvs: <CY4PR15MB1207693BA475CF5A0FFF5915DD170@CY4PR15MB1207.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(376002)(136003)(39860400002)(346002)(189003)(199004)(102836004)(73956011)(36756003)(2906002)(7736002)(186003)(316002)(14444005)(6116002)(110136005)(6506007)(76176011)(66556008)(64756008)(66446008)(66476007)(476003)(66946007)(91956017)(305945005)(54906003)(486006)(25786009)(99286004)(2501003)(33656002)(71200400001)(71190400001)(53936002)(83716004)(8936002)(76116006)(6512007)(6436002)(5660300002)(4326008)(6246003)(2201001)(14454004)(478600001)(2616005)(46003)(446003)(68736007)(229853002)(256004)(82746002)(8676002)(86362001)(81156014)(81166006)(6486002)(11346002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR15MB1207;
 H:CY4PR15MB1269.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FbwDXVzsDQ9IGoxc6C8huFS5wl4KfTwKIOnsx8+OROYiRII9RZeJo03eDx5afthABddogyavIdm3iR8YQLE62xFXogYXgIBh+H8dLgiZwFYTIz/iTjAvcT5NAXcmzOPpIdfhl6P2NfzgHLzsJJ1NJrOtxzPhe4a2q+hW2DCr6un8zHWWR5VE+3L0dOI6f4MDsLoQJV2xJkMNwpuLPsfsSQqeMy1EF0sndeDPgnBswM6zqygjPeR4XruyXylZb79Tf0cHYswyylkazn6fjE/I1gMXFBlmNCysXwlpeloGs5wIPcGoRQAKJfL9ju1WiUteM6kw2Fgsd8x5UeCDX2uY/h4sn0I6hpaMFsuxbqPyVP5wB/NNCGNeHqjvHfz+FAVQyxx/0pM+UtNIEopK2+pdPyHGrPpQDsH6DhiRIW2ruP4=
Content-ID: <31BCCE25AE06874084F27F2CF4428710@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a4c7f357-635b-4072-2b0b-08d6eab00732
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 18:51:47.4285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vijaykhemka@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1207
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-06_13:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=914 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906060126
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_115201_918991_A92908F7 
X-CRM114-Status: GOOD (  17.79  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

UGxlYXNlIHVwZGF0ZSBvbiB0aGlzIHBhdGNoLg0KDQrvu79PbiA1LzMwLzE5LCAxOjM3IFBNLCAi
VmlqYXkgS2hlbWthIiA8dmlqYXlraGVta2FAZmIuY29tPiB3cm90ZToNCg0KICAgIE1ha2luZyBt
ZW1vcnktcmVnaW9uIGFuZCBmbGFzaCBhcyBvcHRpb25hbCBwYXJhbWV0ZXIgaW4gZGV2aWNlDQog
ICAgdHJlZSBpZiB1c2VyIG5lZWRzIHRvIHVzZSB0aGVzZSBwYXJhbWV0ZXIgdGhyb3VnaCBpb2N0
bCB0aGVuDQogICAgbmVlZCB0byBkZWZpbmUgaW4gZGV2aWNldHJlZS4NCiAgICANCiAgICBTaWdu
ZWQtb2ZmLWJ5OiBWaWpheSBLaGVta2EgPHZpamF5a2hlbWthQGZiLmNvbT4NCiAgICBSZXZpZXdl
ZC1ieTogQW5kcmV3IEplZmZlcnkgPGFuZHJld0Bhai5pZC5hdT4NCiAgICAtLS0NCiAgICAgZHJp
dmVycy9zb2MvYXNwZWVkL2FzcGVlZC1scGMtY3RybC5jIHwgNTggKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tLQ0KICAgICAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgMjIgZGVs
ZXRpb25zKC0pDQogICAgDQogICAgZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2FzcGVlZC9hc3Bl
ZWQtbHBjLWN0cmwuYyBiL2RyaXZlcnMvc29jL2FzcGVlZC9hc3BlZWQtbHBjLWN0cmwuYw0KICAg
IGluZGV4IGEwMjRmODA0MjI1OS4uYWNhMTM3Nzk3NjRhIDEwMDY0NA0KICAgIC0tLSBhL2RyaXZl
cnMvc29jL2FzcGVlZC9hc3BlZWQtbHBjLWN0cmwuYw0KICAgICsrKyBiL2RyaXZlcnMvc29jL2Fz
cGVlZC9hc3BlZWQtbHBjLWN0cmwuYw0KICAgIEBAIC02OCw2ICs2OCw3IEBAIHN0YXRpYyBsb25n
IGFzcGVlZF9scGNfY3RybF9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwgdW5zaWduZWQgaW50IGNt
ZCwNCiAgICAgCQl1bnNpZ25lZCBsb25nIHBhcmFtKQ0KICAgICB7DQogICAgIAlzdHJ1Y3QgYXNw
ZWVkX2xwY19jdHJsICpscGNfY3RybCA9IGZpbGVfYXNwZWVkX2xwY19jdHJsKGZpbGUpOw0KICAg
ICsJc3RydWN0IGRldmljZSAqZGV2ID0gZmlsZS0+cHJpdmF0ZV9kYXRhOw0KICAgICAJdm9pZCBf
X3VzZXIgKnAgPSAodm9pZCBfX3VzZXIgKilwYXJhbTsNCiAgICAgCXN0cnVjdCBhc3BlZWRfbHBj
X2N0cmxfbWFwcGluZyBtYXA7DQogICAgIAl1MzIgYWRkcjsNCiAgICBAQCAtOTAsNiArOTEsMTIg
QEAgc3RhdGljIGxvbmcgYXNwZWVkX2xwY19jdHJsX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLCB1
bnNpZ25lZCBpbnQgY21kLA0KICAgICAJCWlmIChtYXAud2luZG93X2lkICE9IDApDQogICAgIAkJ
CXJldHVybiAtRUlOVkFMOw0KICAgICANCiAgICArCQkvKiBJZiBtZW1vcnktcmVnaW9uIGlzIG5v
dCBkZXNjcmliZWQgaW4gZGV2aWNlIHRyZWUgKi8NCiAgICArCQlpZiAoIWxwY19jdHJsLT5tZW1f
c2l6ZSkgew0KICAgICsJCQlkZXZfZGJnKGRldiwgIkRpZG4ndCBmaW5kIHJlc2VydmVkIG1lbW9y
eVxuIik7DQogICAgKwkJCXJldHVybiAtRU5YSU87DQogICAgKwkJfQ0KICAgICsNCiAgICAgCQlt
YXAuc2l6ZSA9IGxwY19jdHJsLT5tZW1fc2l6ZTsNCiAgICAgDQogICAgIAkJcmV0dXJuIGNvcHlf
dG9fdXNlcihwLCAmbWFwLCBzaXplb2YobWFwKSkgPyAtRUZBVUxUIDogMDsNCiAgICBAQCAtMTI2
LDkgKzEzMywxOCBAQCBzdGF0aWMgbG9uZyBhc3BlZWRfbHBjX2N0cmxfaW9jdGwoc3RydWN0IGZp
bGUgKmZpbGUsIHVuc2lnbmVkIGludCBjbWQsDQogICAgIAkJCXJldHVybiAtRUlOVkFMOw0KICAg
ICANCiAgICAgCQlpZiAobWFwLndpbmRvd190eXBlID09IEFTUEVFRF9MUENfQ1RSTF9XSU5ET1df
RkxBU0gpIHsNCiAgICArCQkJaWYgKCFscGNfY3RybC0+cG5vcl9zaXplKSB7DQogICAgKwkJCQlk
ZXZfZGJnKGRldiwgIkRpZG4ndCBmaW5kIGhvc3QgcG5vciBmbGFzaFxuIik7DQogICAgKwkJCQly
ZXR1cm4gLUVOWElPOw0KICAgICsJCQl9DQogICAgIAkJCWFkZHIgPSBscGNfY3RybC0+cG5vcl9i
YXNlOw0KICAgICAJCQlzaXplID0gbHBjX2N0cmwtPnBub3Jfc2l6ZTsNCiAgICAgCQl9IGVsc2Ug
aWYgKG1hcC53aW5kb3dfdHlwZSA9PSBBU1BFRURfTFBDX0NUUkxfV0lORE9XX01FTU9SWSkgew0K
ICAgICsJCQkvKiBJZiBtZW1vcnktcmVnaW9uIGlzIG5vdCBkZXNjcmliZWQgaW4gZGV2aWNlIHRy
ZWUgKi8NCiAgICArCQkJaWYgKCFscGNfY3RybC0+bWVtX3NpemUpIHsNCiAgICArCQkJCWRldl9k
YmcoZGV2LCAiRGlkbid0IGZpbmQgcmVzZXJ2ZWQgbWVtb3J5XG4iKTsNCiAgICArCQkJCXJldHVy
biAtRU5YSU87DQogICAgKwkJCX0NCiAgICAgCQkJYWRkciA9IGxwY19jdHJsLT5tZW1fYmFzZTsN
CiAgICAgCQkJc2l6ZSA9IGxwY19jdHJsLT5tZW1fc2l6ZTsNCiAgICAgCQl9IGVsc2Ugew0KICAg
IEBAIC0xOTYsMTcgKzIxMiwxNyBAQCBzdGF0aWMgaW50IGFzcGVlZF9scGNfY3RybF9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KICAgICAJaWYgKCFscGNfY3RybCkNCiAgICAg
CQlyZXR1cm4gLUVOT01FTTsNCiAgICAgDQogICAgKwkvKiBJZiBmbGFzaCBpcyBkZXNjcmliZWQg
aW4gZGV2aWNlIHRyZWUgdGhlbiBzdG9yZSAqLw0KICAgICAJbm9kZSA9IG9mX3BhcnNlX3BoYW5k
bGUoZGV2LT5vZl9ub2RlLCAiZmxhc2giLCAwKTsNCiAgICAgCWlmICghbm9kZSkgew0KICAgIC0J
CWRldl9lcnIoZGV2LCAiRGlkbid0IGZpbmQgaG9zdCBwbm9yIGZsYXNoIG5vZGVcbiIpOw0KICAg
IC0JCXJldHVybiAtRU5PREVWOw0KICAgIC0JfQ0KICAgIC0NCiAgICAtCXJjID0gb2ZfYWRkcmVz
c190b19yZXNvdXJjZShub2RlLCAxLCAmcmVzbSk7DQogICAgLQlvZl9ub2RlX3B1dChub2RlKTsN
CiAgICAtCWlmIChyYykgew0KICAgIC0JCWRldl9lcnIoZGV2LCAiQ291bGRuJ3QgYWRkcmVzcyB0
byByZXNvdXJjZSBmb3IgZmxhc2hcbiIpOw0KICAgIC0JCXJldHVybiByYzsNCiAgICArCQlkZXZf
ZGJnKGRldiwgIkRpZG4ndCBmaW5kIGhvc3QgcG5vciBmbGFzaCBub2RlXG4iKTsNCiAgICArCX0g
ZWxzZSB7DQogICAgKwkJcmMgPSBvZl9hZGRyZXNzX3RvX3Jlc291cmNlKG5vZGUsIDEsICZyZXNt
KTsNCiAgICArCQlvZl9ub2RlX3B1dChub2RlKTsNCiAgICArCQlpZiAocmMpIHsNCiAgICArCQkJ
ZGV2X2VycihkZXYsICJDb3VsZG4ndCBhZGRyZXNzIHRvIHJlc291cmNlIGZvciBmbGFzaFxuIik7
DQogICAgKwkJCXJldHVybiByYzsNCiAgICArCQl9DQogICAgIAl9DQogICAgIA0KICAgICAJbHBj
X2N0cmwtPnBub3Jfc2l6ZSA9IHJlc291cmNlX3NpemUoJnJlc20pOw0KICAgIEBAIC0yMTQsMjIg
KzIzMCwyMiBAQCBzdGF0aWMgaW50IGFzcGVlZF9scGNfY3RybF9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQ0KICAgICANCiAgICAgCWRldl9zZXRfZHJ2ZGF0YSgmcGRldi0+ZGV2
LCBscGNfY3RybCk7DQogICAgIA0KICAgICsJLyogSWYgbWVtb3J5LXJlZ2lvbiBpcyBkZXNjcmli
ZWQgaW4gZGV2aWNlIHRyZWUgdGhlbiBzdG9yZSAqLw0KICAgICAJbm9kZSA9IG9mX3BhcnNlX3Bo
YW5kbGUoZGV2LT5vZl9ub2RlLCAibWVtb3J5LXJlZ2lvbiIsIDApOw0KICAgICAJaWYgKCFub2Rl
KSB7DQogICAgLQkJZGV2X2VycihkZXYsICJEaWRuJ3QgZmluZCByZXNlcnZlZCBtZW1vcnlcbiIp
Ow0KICAgIC0JCXJldHVybiAtRUlOVkFMOw0KICAgIC0JfQ0KICAgICsJCWRldl9kYmcoZGV2LCAi
RGlkbid0IGZpbmQgcmVzZXJ2ZWQgbWVtb3J5XG4iKTsNCiAgICArCX0gZWxzZSB7DQogICAgKwkJ
cmMgPSBvZl9hZGRyZXNzX3RvX3Jlc291cmNlKG5vZGUsIDAsICZyZXNtKTsNCiAgICArCQlvZl9u
b2RlX3B1dChub2RlKTsNCiAgICArCQlpZiAocmMpIHsNCiAgICArCQkJZGV2X2VycihkZXYsICJD
b3VsZG4ndCBhZGRyZXNzIHRvIHJlc291cmNlIGZvciByZXNlcnZlZCBtZW1vcnlcbiIpOw0KICAg
ICsJCQlyZXR1cm4gLUVOWElPOw0KICAgICsJCX0NCiAgICAgDQogICAgLQlyYyA9IG9mX2FkZHJl
c3NfdG9fcmVzb3VyY2Uobm9kZSwgMCwgJnJlc20pOw0KICAgIC0Jb2Zfbm9kZV9wdXQobm9kZSk7
DQogICAgLQlpZiAocmMpIHsNCiAgICAtCQlkZXZfZXJyKGRldiwgIkNvdWxkbid0IGFkZHJlc3Mg
dG8gcmVzb3VyY2UgZm9yIHJlc2VydmVkIG1lbW9yeVxuIik7DQogICAgLQkJcmV0dXJuIC1FTk9N
RU07DQogICAgKwkJbHBjX2N0cmwtPm1lbV9zaXplID0gcmVzb3VyY2Vfc2l6ZSgmcmVzbSk7DQog
ICAgKwkJbHBjX2N0cmwtPm1lbV9iYXNlID0gcmVzbS5zdGFydDsNCiAgICAgCX0NCiAgICAgDQog
ICAgLQlscGNfY3RybC0+bWVtX3NpemUgPSByZXNvdXJjZV9zaXplKCZyZXNtKTsNCiAgICAtCWxw
Y19jdHJsLT5tZW1fYmFzZSA9IHJlc20uc3RhcnQ7DQogICAgLQ0KICAgICAJbHBjX2N0cmwtPnJl
Z21hcCA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcCgNCiAgICAgCQkJcGRldi0+ZGV2LnBhcmVudC0+
b2Zfbm9kZSk7DQogICAgIAlpZiAoSVNfRVJSKGxwY19jdHJsLT5yZWdtYXApKSB7DQogICAgQEAg
LTI1OCw4ICsyNzQsNiBAQCBzdGF0aWMgaW50IGFzcGVlZF9scGNfY3RybF9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KICAgICAJCWdvdG8gZXJyOw0KICAgICAJfQ0KICAgICAN
CiAgICAtCWRldl9pbmZvKGRldiwgIkxvYWRlZCBhdCAlcHJcbiIsICZyZXNtKTsNCiAgICAtDQog
ICAgIAlyZXR1cm4gMDsNCiAgICAgDQogICAgIGVycjoNCiAgICAtLSANCiAgICAyLjE3LjENCiAg
ICANCiAgICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
