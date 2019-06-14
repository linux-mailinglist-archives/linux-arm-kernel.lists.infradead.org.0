Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B8E46C00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 23:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kb+ANm7cMx4jxsRCCIz5H2T6Zi6+HoE3s6NjZT2pkZ0=; b=EL010ZT1E/hQHd
	7Ac8I4BI/jHp+gQyAA89/SH/7ndK5OAls1SFnKr/O02AhWmWSA/Tyu74WbcO/eAQjxFRILWKWB1Kf
	W1F6zyqRHWilRcxQ37Ghrh05qJqOXlp6ii1daSZHDPG+jIU14sKC2w/jL2TB/geDTZx1hiZN/dTdc
	K/Pn/KRV+Bui5XMpT1WTtccVW5mLWEGqcUXwIVBQWMRuE8LV6nfdyPZG/Z7P3JUE3ZVkVvXb2ftj/
	WSFluDD4+urnn1J3WecdQIEgQqOafETwSb91eiB2jVdVIsdFAnXvcJVLiqaEEGaHrItgkg4JlvKbD
	rMHrrX7ikwjkinazs8kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtxW-0002d4-QJ; Fri, 14 Jun 2019 21:42:06 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtxM-0002cX-PJ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 21:41:58 +0000
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5ELbMDd022846; Fri, 14 Jun 2019 14:41:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=mVkduDdnGH9/Sa7eyUrjXqAKU0L0O5x1qJfEeWePLZE=;
 b=FZPkNZXVdPme96UHuHt0mgqH6cuNkcWjChx2qbDwUz04urCaNf+mQs0KQLjOkwMLEXxK
 s1o9IvzlO+i3O/yED584ZvGeASw9Oj4ku+GahDpfgLv47EXSJwx28932G0/yEtxrvo7I
 3m5xBk2lLJQ/AM6y8tvdkaPwkZToT6x9UTE= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2t4d38hhqh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 14 Jun 2019 14:41:41 -0700
Received: from prn-mbx01.TheFacebook.com (2620:10d:c081:6::15) by
 prn-hub01.TheFacebook.com (2620:10d:c081:35::125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 14 Jun 2019 14:41:40 -0700
Received: from prn-hub04.TheFacebook.com (2620:10d:c081:35::128) by
 prn-mbx01.TheFacebook.com (2620:10d:c081:6::15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 14 Jun 2019 14:41:40 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 14 Jun 2019 14:41:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mVkduDdnGH9/Sa7eyUrjXqAKU0L0O5x1qJfEeWePLZE=;
 b=FhMDCmxO9UMYqavP75S5rXftzOTVXZDuqimSKDiRV57wxIXT8UwFXALlygPZcwaPs7u7IiRn3XTmsk9A/Ux/r9LB6414K+IWpFu5ULIfrN4T+5fHj4XQtZyjhQwZ6ex7NUQlH3BL+69yhzTIRutBw+UYuncgSl5kiTexBQTVC7Q=
Received: from CY4PR15MB1269.namprd15.prod.outlook.com (10.172.177.11) by
 CY4PR15MB1144.namprd15.prod.outlook.com (10.172.182.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Fri, 14 Jun 2019 21:41:39 +0000
Received: from CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::c026:bca5:3f4e:9b1f]) by CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::c026:bca5:3f4e:9b1f%3]) with mapi id 15.20.1987.013; Fri, 14 Jun 2019
 21:41:39 +0000
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
Thread-Index: AQHVFyd5zp8/qoe22EyZTW+8ecZdUKaOjh8AgAzCHQA=
Date: Fri, 14 Jun 2019 21:41:39 +0000
Message-ID: <C4D5C095-A715-4D39-9DEB-1B7734760666@fb.com>
References: <20190530203654.3860925-1-vijaykhemka@fb.com>
 <6828A39D-8950-4C07-8340-7AE9E2DD3EC0@fb.com>
In-Reply-To: <6828A39D-8950-4C07-8340-7AE9E2DD3EC0@fb.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::46e6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ce7e4ed-276e-4e95-764e-08d6f1111581
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR15MB1144; 
x-ms-traffictypediagnostic: CY4PR15MB1144:
x-microsoft-antispam-prvs: <CY4PR15MB11444463A104E1400ACB067EDDEE0@CY4PR15MB1144.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(346002)(376002)(396003)(39860400002)(189003)(199004)(4326008)(316002)(86362001)(6506007)(81156014)(53936002)(8936002)(76176011)(99286004)(46003)(76116006)(186003)(8676002)(53546011)(6436002)(6246003)(25786009)(81166006)(7736002)(71200400001)(6512007)(229853002)(66476007)(305945005)(5660300002)(2201001)(6486002)(64756008)(66946007)(66556008)(66446008)(73956011)(91956017)(71190400001)(446003)(2906002)(14444005)(36756003)(478600001)(14454004)(68736007)(110136005)(102836004)(2616005)(486006)(33656002)(11346002)(54906003)(2501003)(256004)(476003)(6116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR15MB1144;
 H:CY4PR15MB1269.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TCx9eB7X2hGJa99EWGZdJhxZPQl0y96HWZvZejGxEoQAys+Ak+bhihGVZhRDdsG8wdbUnICuppxBYQ4MqcFMpLcD45ay7OVKAuJ+/2XkdUfWrGis32e+zg8N+hnwNlfCNuOiEA1DBFVTgJPmo+hnbe90KWGHgJHKdT7TWJJfKNE7VIdgQmGSB9Hwi0G/VTE9GuDABpD0IKGDUDDFi9UDHZhGJpn103INwDUVNYSjfXf8dCQ1pezBAdCln597v8BHWxegzrhHRXiioroDcprrRyqXqFINVHB5ROwsuq4kgxX9nk/WXrnZzAf9fAiCNBoYdKi3n+gZbrgqzRprrQQD0F182AgBuqsBjSQgCqyR9v4FstlitDFg2gaspqavb/bZM/dNHLmY2G7R17jnLwE7hbQhl42BfMjzA8/1PMZkUkU=
Content-ID: <2EEC2CAA96F1CB41B090A8843FCCA40A@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce7e4ed-276e-4e95-764e-08d6f1111581
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 21:41:39.6087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vijaykhemka@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1144
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-14_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=916 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906140168
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_144156_937270_DA6334CD 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sai Dasari <sdasari@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmV3LA0KQW55IHVwZGF0ZSBvbiB0aGlzIHBhdGNoIG9yIGRvIEkgbmVlZCBhbnkgbW9y
ZSByZXdvcmsuDQoNClJlZ2FyZHMNCi1WaWpheQ0KDQrvu79PbiA2LzYvMTksIDExOjUxIEFNLCAi
VmlqYXkgS2hlbWthIiA8dmlqYXlraGVta2FAZmIuY29tPiB3cm90ZToNCg0KICAgIFBsZWFzZSB1
cGRhdGUgb24gdGhpcyBwYXRjaC4NCiAgICANCiAgICBPbiA1LzMwLzE5LCAxOjM3IFBNLCAiVmlq
YXkgS2hlbWthIiA8dmlqYXlraGVta2FAZmIuY29tPiB3cm90ZToNCiAgICANCiAgICAgICAgTWFr
aW5nIG1lbW9yeS1yZWdpb24gYW5kIGZsYXNoIGFzIG9wdGlvbmFsIHBhcmFtZXRlciBpbiBkZXZp
Y2UNCiAgICAgICAgdHJlZSBpZiB1c2VyIG5lZWRzIHRvIHVzZSB0aGVzZSBwYXJhbWV0ZXIgdGhy
b3VnaCBpb2N0bCB0aGVuDQogICAgICAgIG5lZWQgdG8gZGVmaW5lIGluIGRldmljZXRyZWUuDQog
ICAgICAgIA0KICAgICAgICBTaWduZWQtb2ZmLWJ5OiBWaWpheSBLaGVta2EgPHZpamF5a2hlbWth
QGZiLmNvbT4NCiAgICAgICAgUmV2aWV3ZWQtYnk6IEFuZHJldyBKZWZmZXJ5IDxhbmRyZXdAYWou
aWQuYXU+DQogICAgICAgIC0tLQ0KICAgICAgICAgZHJpdmVycy9zb2MvYXNwZWVkL2FzcGVlZC1s
cGMtY3RybC5jIHwgNTggKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQ0KICAgICAgICAgMSBm
aWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KICAgICAgICAN
CiAgICAgICAgZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2FzcGVlZC9hc3BlZWQtbHBjLWN0cmwu
YyBiL2RyaXZlcnMvc29jL2FzcGVlZC9hc3BlZWQtbHBjLWN0cmwuYw0KICAgICAgICBpbmRleCBh
MDI0ZjgwNDIyNTkuLmFjYTEzNzc5NzY0YSAxMDA2NDQNCiAgICAgICAgLS0tIGEvZHJpdmVycy9z
b2MvYXNwZWVkL2FzcGVlZC1scGMtY3RybC5jDQogICAgICAgICsrKyBiL2RyaXZlcnMvc29jL2Fz
cGVlZC9hc3BlZWQtbHBjLWN0cmwuYw0KICAgICAgICBAQCAtNjgsNiArNjgsNyBAQCBzdGF0aWMg
bG9uZyBhc3BlZWRfbHBjX2N0cmxfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGlu
dCBjbWQsDQogICAgICAgICAJCXVuc2lnbmVkIGxvbmcgcGFyYW0pDQogICAgICAgICB7DQogICAg
ICAgICAJc3RydWN0IGFzcGVlZF9scGNfY3RybCAqbHBjX2N0cmwgPSBmaWxlX2FzcGVlZF9scGNf
Y3RybChmaWxlKTsNCiAgICAgICAgKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBmaWxlLT5wcml2YXRl
X2RhdGE7DQogICAgICAgICAJdm9pZCBfX3VzZXIgKnAgPSAodm9pZCBfX3VzZXIgKilwYXJhbTsN
CiAgICAgICAgIAlzdHJ1Y3QgYXNwZWVkX2xwY19jdHJsX21hcHBpbmcgbWFwOw0KICAgICAgICAg
CXUzMiBhZGRyOw0KICAgICAgICBAQCAtOTAsNiArOTEsMTIgQEAgc3RhdGljIGxvbmcgYXNwZWVk
X2xwY19jdHJsX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLCB1bnNpZ25lZCBpbnQgY21kLA0KICAg
ICAgICAgCQlpZiAobWFwLndpbmRvd19pZCAhPSAwKQ0KICAgICAgICAgCQkJcmV0dXJuIC1FSU5W
QUw7DQogICAgICAgICANCiAgICAgICAgKwkJLyogSWYgbWVtb3J5LXJlZ2lvbiBpcyBub3QgZGVz
Y3JpYmVkIGluIGRldmljZSB0cmVlICovDQogICAgICAgICsJCWlmICghbHBjX2N0cmwtPm1lbV9z
aXplKSB7DQogICAgICAgICsJCQlkZXZfZGJnKGRldiwgIkRpZG4ndCBmaW5kIHJlc2VydmVkIG1l
bW9yeVxuIik7DQogICAgICAgICsJCQlyZXR1cm4gLUVOWElPOw0KICAgICAgICArCQl9DQogICAg
ICAgICsNCiAgICAgICAgIAkJbWFwLnNpemUgPSBscGNfY3RybC0+bWVtX3NpemU7DQogICAgICAg
ICANCiAgICAgICAgIAkJcmV0dXJuIGNvcHlfdG9fdXNlcihwLCAmbWFwLCBzaXplb2YobWFwKSkg
PyAtRUZBVUxUIDogMDsNCiAgICAgICAgQEAgLTEyNiw5ICsxMzMsMTggQEAgc3RhdGljIGxvbmcg
YXNwZWVkX2xwY19jdHJsX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLCB1bnNpZ25lZCBpbnQgY21k
LA0KICAgICAgICAgCQkJcmV0dXJuIC1FSU5WQUw7DQogICAgICAgICANCiAgICAgICAgIAkJaWYg
KG1hcC53aW5kb3dfdHlwZSA9PSBBU1BFRURfTFBDX0NUUkxfV0lORE9XX0ZMQVNIKSB7DQogICAg
ICAgICsJCQlpZiAoIWxwY19jdHJsLT5wbm9yX3NpemUpIHsNCiAgICAgICAgKwkJCQlkZXZfZGJn
KGRldiwgIkRpZG4ndCBmaW5kIGhvc3QgcG5vciBmbGFzaFxuIik7DQogICAgICAgICsJCQkJcmV0
dXJuIC1FTlhJTzsNCiAgICAgICAgKwkJCX0NCiAgICAgICAgIAkJCWFkZHIgPSBscGNfY3RybC0+
cG5vcl9iYXNlOw0KICAgICAgICAgCQkJc2l6ZSA9IGxwY19jdHJsLT5wbm9yX3NpemU7DQogICAg
ICAgICAJCX0gZWxzZSBpZiAobWFwLndpbmRvd190eXBlID09IEFTUEVFRF9MUENfQ1RSTF9XSU5E
T1dfTUVNT1JZKSB7DQogICAgICAgICsJCQkvKiBJZiBtZW1vcnktcmVnaW9uIGlzIG5vdCBkZXNj
cmliZWQgaW4gZGV2aWNlIHRyZWUgKi8NCiAgICAgICAgKwkJCWlmICghbHBjX2N0cmwtPm1lbV9z
aXplKSB7DQogICAgICAgICsJCQkJZGV2X2RiZyhkZXYsICJEaWRuJ3QgZmluZCByZXNlcnZlZCBt
ZW1vcnlcbiIpOw0KICAgICAgICArCQkJCXJldHVybiAtRU5YSU87DQogICAgICAgICsJCQl9DQog
ICAgICAgICAJCQlhZGRyID0gbHBjX2N0cmwtPm1lbV9iYXNlOw0KICAgICAgICAgCQkJc2l6ZSA9
IGxwY19jdHJsLT5tZW1fc2l6ZTsNCiAgICAgICAgIAkJfSBlbHNlIHsNCiAgICAgICAgQEAgLTE5
NiwxNyArMjEyLDE3IEBAIHN0YXRpYyBpbnQgYXNwZWVkX2xwY19jdHJsX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQogICAgICAgICAJaWYgKCFscGNfY3RybCkNCiAgICAgICAg
IAkJcmV0dXJuIC1FTk9NRU07DQogICAgICAgICANCiAgICAgICAgKwkvKiBJZiBmbGFzaCBpcyBk
ZXNjcmliZWQgaW4gZGV2aWNlIHRyZWUgdGhlbiBzdG9yZSAqLw0KICAgICAgICAgCW5vZGUgPSBv
Zl9wYXJzZV9waGFuZGxlKGRldi0+b2Zfbm9kZSwgImZsYXNoIiwgMCk7DQogICAgICAgICAJaWYg
KCFub2RlKSB7DQogICAgICAgIC0JCWRldl9lcnIoZGV2LCAiRGlkbid0IGZpbmQgaG9zdCBwbm9y
IGZsYXNoIG5vZGVcbiIpOw0KICAgICAgICAtCQlyZXR1cm4gLUVOT0RFVjsNCiAgICAgICAgLQl9
DQogICAgICAgIC0NCiAgICAgICAgLQlyYyA9IG9mX2FkZHJlc3NfdG9fcmVzb3VyY2Uobm9kZSwg
MSwgJnJlc20pOw0KICAgICAgICAtCW9mX25vZGVfcHV0KG5vZGUpOw0KICAgICAgICAtCWlmIChy
Yykgew0KICAgICAgICAtCQlkZXZfZXJyKGRldiwgIkNvdWxkbid0IGFkZHJlc3MgdG8gcmVzb3Vy
Y2UgZm9yIGZsYXNoXG4iKTsNCiAgICAgICAgLQkJcmV0dXJuIHJjOw0KICAgICAgICArCQlkZXZf
ZGJnKGRldiwgIkRpZG4ndCBmaW5kIGhvc3QgcG5vciBmbGFzaCBub2RlXG4iKTsNCiAgICAgICAg
Kwl9IGVsc2Ugew0KICAgICAgICArCQlyYyA9IG9mX2FkZHJlc3NfdG9fcmVzb3VyY2Uobm9kZSwg
MSwgJnJlc20pOw0KICAgICAgICArCQlvZl9ub2RlX3B1dChub2RlKTsNCiAgICAgICAgKwkJaWYg
KHJjKSB7DQogICAgICAgICsJCQlkZXZfZXJyKGRldiwgIkNvdWxkbid0IGFkZHJlc3MgdG8gcmVz
b3VyY2UgZm9yIGZsYXNoXG4iKTsNCiAgICAgICAgKwkJCXJldHVybiByYzsNCiAgICAgICAgKwkJ
fQ0KICAgICAgICAgCX0NCiAgICAgICAgIA0KICAgICAgICAgCWxwY19jdHJsLT5wbm9yX3NpemUg
PSByZXNvdXJjZV9zaXplKCZyZXNtKTsNCiAgICAgICAgQEAgLTIxNCwyMiArMjMwLDIyIEBAIHN0
YXRpYyBpbnQgYXNwZWVkX2xwY19jdHJsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpDQogICAgICAgICANCiAgICAgICAgIAlkZXZfc2V0X2RydmRhdGEoJnBkZXYtPmRldiwgbHBj
X2N0cmwpOw0KICAgICAgICAgDQogICAgICAgICsJLyogSWYgbWVtb3J5LXJlZ2lvbiBpcyBkZXNj
cmliZWQgaW4gZGV2aWNlIHRyZWUgdGhlbiBzdG9yZSAqLw0KICAgICAgICAgCW5vZGUgPSBvZl9w
YXJzZV9waGFuZGxlKGRldi0+b2Zfbm9kZSwgIm1lbW9yeS1yZWdpb24iLCAwKTsNCiAgICAgICAg
IAlpZiAoIW5vZGUpIHsNCiAgICAgICAgLQkJZGV2X2VycihkZXYsICJEaWRuJ3QgZmluZCByZXNl
cnZlZCBtZW1vcnlcbiIpOw0KICAgICAgICAtCQlyZXR1cm4gLUVJTlZBTDsNCiAgICAgICAgLQl9
DQogICAgICAgICsJCWRldl9kYmcoZGV2LCAiRGlkbid0IGZpbmQgcmVzZXJ2ZWQgbWVtb3J5XG4i
KTsNCiAgICAgICAgKwl9IGVsc2Ugew0KICAgICAgICArCQlyYyA9IG9mX2FkZHJlc3NfdG9fcmVz
b3VyY2Uobm9kZSwgMCwgJnJlc20pOw0KICAgICAgICArCQlvZl9ub2RlX3B1dChub2RlKTsNCiAg
ICAgICAgKwkJaWYgKHJjKSB7DQogICAgICAgICsJCQlkZXZfZXJyKGRldiwgIkNvdWxkbid0IGFk
ZHJlc3MgdG8gcmVzb3VyY2UgZm9yIHJlc2VydmVkIG1lbW9yeVxuIik7DQogICAgICAgICsJCQly
ZXR1cm4gLUVOWElPOw0KICAgICAgICArCQl9DQogICAgICAgICANCiAgICAgICAgLQlyYyA9IG9m
X2FkZHJlc3NfdG9fcmVzb3VyY2Uobm9kZSwgMCwgJnJlc20pOw0KICAgICAgICAtCW9mX25vZGVf
cHV0KG5vZGUpOw0KICAgICAgICAtCWlmIChyYykgew0KICAgICAgICAtCQlkZXZfZXJyKGRldiwg
IkNvdWxkbid0IGFkZHJlc3MgdG8gcmVzb3VyY2UgZm9yIHJlc2VydmVkIG1lbW9yeVxuIik7DQog
ICAgICAgIC0JCXJldHVybiAtRU5PTUVNOw0KICAgICAgICArCQlscGNfY3RybC0+bWVtX3NpemUg
PSByZXNvdXJjZV9zaXplKCZyZXNtKTsNCiAgICAgICAgKwkJbHBjX2N0cmwtPm1lbV9iYXNlID0g
cmVzbS5zdGFydDsNCiAgICAgICAgIAl9DQogICAgICAgICANCiAgICAgICAgLQlscGNfY3RybC0+
bWVtX3NpemUgPSByZXNvdXJjZV9zaXplKCZyZXNtKTsNCiAgICAgICAgLQlscGNfY3RybC0+bWVt
X2Jhc2UgPSByZXNtLnN0YXJ0Ow0KICAgICAgICAtDQogICAgICAgICAJbHBjX2N0cmwtPnJlZ21h
cCA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcCgNCiAgICAgICAgIAkJCXBkZXYtPmRldi5wYXJlbnQt
Pm9mX25vZGUpOw0KICAgICAgICAgCWlmIChJU19FUlIobHBjX2N0cmwtPnJlZ21hcCkpIHsNCiAg
ICAgICAgQEAgLTI1OCw4ICsyNzQsNiBAQCBzdGF0aWMgaW50IGFzcGVlZF9scGNfY3RybF9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KICAgICAgICAgCQlnb3RvIGVycjsNCiAg
ICAgICAgIAl9DQogICAgICAgICANCiAgICAgICAgLQlkZXZfaW5mbyhkZXYsICJMb2FkZWQgYXQg
JXByXG4iLCAmcmVzbSk7DQogICAgICAgIC0NCiAgICAgICAgIAlyZXR1cm4gMDsNCiAgICAgICAg
IA0KICAgICAgICAgZXJyOg0KICAgICAgICAtLSANCiAgICAgICAgMi4xNy4xDQogICAgICAgIA0K
ICAgICAgICANCiAgICANCiAgICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
