Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4B5144479
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 19:42:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNirlE/8RnX6RP7hIXKakRaLVj98Ol+McZsJXSPRJLM=; b=KwrK3JmT8YuL2r
	z40EqTRmEy0iiofPR9PnwSFqgo/mGRri2wepbioPCRU51neRRArlsOXvlCOZJj464SUFSZabzqblH
	1OfOSxvArwOkodh+ypOv/wON50RWv1qcsofiUls682vfVbsQ+WY7JRIOFUX1i288HfvNjJ0NRSfv4
	acRrQEhq/bRVCTWuNPE3KMXVhelFJ9sIg7H5wBSx/ECU8yMtWgGbN0pokObZnlLPxp/bCoM8ciNv8
	ujX5uglFvUBXUOogp7uCVjv8A+ddF1PEKZ3IxpZRRRUf88wh5WwZibyhdGo5hBUfXJRlQw/wfc75p
	RzebGOro6MS0UmW6AK2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityTo-0003Iq-Is; Tue, 21 Jan 2020 18:42:24 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityTf-0003IF-2r
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 18:42:16 +0000
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00LISLqR028058; Tue, 21 Jan 2020 10:42:10 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=XjKr1mOAwTyH8XzefxvXGAmAsm+lnLPYlcr+ALfSZho=;
 b=Xd7SPgWU2a0anTt6RkAeixmqdKpypoAIXwFZp2QUwtsnMTdJw5Ad/panvznIQulJv5Ni
 epRxeUnPvyQUg6PHE4ZAgmlD0dLI3a949Qq+o0Y/k6rPT9zC3NsuMWZYBmPkAVdYWWwr
 EMhFaFoKr5kLsbefw2jh45razDtKveckHVc= 
Received: from mail.thefacebook.com ([163.114.132.120])
 by mx0a-00082601.pphosted.com with ESMTP id 2xnwtjte0x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Tue, 21 Jan 2020 10:42:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 21 Jan 2020 10:42:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CXAe1brKm2DeDz1G0h71XZHqZuC9198+m2SDofzohgCUBSv3gyybcXUxLQaKny9p5CajS8tZJVbe0QrLOZ8wCF1eI0h4tJ0N+hKudgxa16buiM0CIZrdn/rJP1ukkOSRm/5uSqfkke+izCA+qrMJfGrtVj9WOzrwgJmYw1SmcMklKeYJaXyXK+cu5es0Mhc5RCY+gjvgnKdAnPtZ7ZSHgyH6Aoo0tex+ziqkppAlyGyG7M/QDaIuyCxhcBx6jrll6BL/J3D+Ruv+JVFhafB9R10q8lbfKzsqNwvliy9TKg6HBYsls+j0NJp18fiWIsOu7qW/rIB7Q9GwHJuY1bDCVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjKr1mOAwTyH8XzefxvXGAmAsm+lnLPYlcr+ALfSZho=;
 b=gs3HCJFZygns0yi5DN86GO8Tu8U5UvPzKQaSa+8oKkYPT5TFl8M7o4R45FsJP7U5e/spWb0LV60RXfRRVh8mrKwI2nmuNX/zvml6RDx665yZEBAHy++NnzH8bX0J2g1+NTG7D4bs9w3RTWtJoYs0QT44HRmMjjyREzBMsuO1ATEv66XKmw/dj7xJr6mhTPIXyM3F+AoJnZo5Lf1v6y1gbIdCSBekK3lAqxVWp5UYow86n1xCkNzrwqtoVVlz8W8LGup44y+G/qfzvbm59zv5tqFuibkit+okfGzDj5kkeAFktB4ASS75a6jgWyzPd3MR47dAVH/uWqGCHxScPs2XCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjKr1mOAwTyH8XzefxvXGAmAsm+lnLPYlcr+ALfSZho=;
 b=ZHvmPJBDOwDyJSAg1a+iJUZGeoTccqonYkGwyuxbmRGvAaKpnvr7bPSgP8z/73pzj6vp5xIomKIhw5nFsWughFOgckTJb7cb00JJJ3DmNqi0GHyZ2QnJUjXGNoNg729RXmdJuP53Yy6ZCy7kc/P5gKa9AsqHa2sPggNK5urlqmI=
Received: from MWHPR15MB1597.namprd15.prod.outlook.com (10.173.234.137) by
 MWHPR15MB1613.namprd15.prod.outlook.com (10.175.139.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Tue, 21 Jan 2020 18:42:08 +0000
Received: from MWHPR15MB1597.namprd15.prod.outlook.com
 ([fe80::cdbf:b63c:437:4dd2]) by MWHPR15MB1597.namprd15.prod.outlook.com
 ([fe80::cdbf:b63c:437:4dd2%8]) with mapi id 15.20.2644.027; Tue, 21 Jan 2020
 18:42:08 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Joel Stanley <joel@jms.id.au>, arm <arm@kernel.org>, "soc@kernel.org"
 <soc@kernel.org>
Subject: Re: [GIT PULL] ARM: aspeed: devicetree changes for 5.6
Thread-Topic: [GIT PULL] ARM: aspeed: devicetree changes for 5.6
Thread-Index: AQHVz1nRlw+DeKlNcEe7ShTrMglgn6f08CaA
Date: Tue, 21 Jan 2020 18:42:08 +0000
Message-ID: <6958E763-F18E-4305-8480-2EB6C58A082C@fb.com>
References: <CACPK8XepSy6D4CNWjSWDDK0p7Dx_rneWne4t4uyy=di5nx3zmA@mail.gmail.com>
In-Reply-To: <CACPK8XepSy6D4CNWjSWDDK0p7Dx_rneWne4t4uyy=di5nx3zmA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::2:8d24]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 524f8cfb-073f-4859-2584-08d79ea19ea1
x-ms-traffictypediagnostic: MWHPR15MB1613:
x-microsoft-antispam-prvs: <MWHPR15MB16138F336F596DD26E7147BDDD0D0@MWHPR15MB1613.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:1169;
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(396003)(366004)(346002)(376002)(136003)(189003)(199004)(478600001)(6506007)(6512007)(36756003)(4326008)(6486002)(110136005)(8936002)(2616005)(316002)(2906002)(71200400001)(33656002)(86362001)(66556008)(5660300002)(76116006)(66946007)(8676002)(66476007)(64756008)(66446008)(54906003)(186003)(81156014)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1613;
 H:MWHPR15MB1597.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HrJ2b28aRhzFeH5nsVH+zlQ/aZtd+TS3LIotD/UfEqE0mQZ4rMnKIgqPQ0TI0ntRXgiFSlxfK39cn7lLo4WC4tN/4rIH6L1rezZZDq9SNKUP4usAgtbUUjBoQ3tb7svvrO36hc1urTKkyE8eTkJeQIk10MkuGBznkqqw6CXOath1MXguDN0LLuZUDxivQPZYKQELKSpJ2sLZz/UDqvUeV0eoZ9o4guKAZSFa3g3xZWC6kwHR9oDDk6t2GGRnyDo862oA+H75X0xwLUdRksnv0niepHXiJ80M5LT4Ys1iUHNm9UZLi3n3ve78LBkGoWmLonOR12lurbsPWtCtuSeM3RrnoJt4Eq+8ycqyt1k5eD1pVAfL5GeMitVUkdZmWNMC9HLAAEB5Vrc/cCq786LHenCZDlr4wGVOqFHlggX1wFcaW2oCyJnO3uM0YyGtbGmC
x-ms-exchange-transport-forked: True
Content-ID: <8161525A418F4A4EA746A98BFF432DC4@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 524f8cfb-073f-4859-2584-08d79ea19ea1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 18:42:08.2359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OQRrYUqqpuLzSQuGT2jo3fUOU4XMgigDja6u6niLTXDJhPa/yv0hRyEdueafnyVd5IsxETIm6QMkAqvRGQ43Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1613
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.634
 definitions=2020-01-21_06:2020-01-21,
 2020-01-21 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 suspectscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 mlxscore=0
 phishscore=0 impostorscore=0 spamscore=0 mlxlogscore=999 clxscore=1011
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-2001210139
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_104215_255975_0D7A6FDD 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.153.30 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9lbCwNCkkgZ3Vlc3MgeW91IG1pc3NlZCBteSBwYXRjaCBoZXJlLg0KICAtLSBbUEFUQ0gg
djJdIEFSTTogZHRzOiBhc3BlZWQ6IHRpb2dhcGFzczogQWRkIGdwaW8gbGluZSBuYW1lcw0KDQpJ
IGhhdmUgc2VudCB2ZXJzaW9udjIgb24gSmFuIDE3IGFzIHYxIHdhcyBub3QgbWVyZ2VkLg0KDQpS
ZWdhcmRzDQotVmlqYXkNCg0K77u/T24gMS8xOS8yMCwgMTA6MjEgUE0sICJMaW51eC1hc3BlZWQg
b24gYmVoYWxmIG9mIEpvZWwgU3RhbmxleSIgPGxpbnV4LWFzcGVlZC1ib3VuY2VzK3ZpamF5a2hl
bWthPWZiLmNvbUBsaXN0cy5vemxhYnMub3JnIG9uIGJlaGFsZiBvZiBqb2VsQGptcy5pZC5hdT4g
d3JvdGU6DQoNCiAgICBIZWxsbyBBUk0gbWFpbnRhaW5lcnMsDQogICAgDQogICAgU29ycnkgZm9y
IHNlbmRpbmcgdGhpcyBvbmUgaXMgYSBiaXQgbGF0ZSwgSSB3YXMgb2ZmIGF0IGxpbnV4LmNvbmYu
YXUgbGFzdCB3ZWVrLg0KICAgIA0KICAgIFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21t
aXQgMzliZTllODRmNjViZTU5OTkxOWM3MDY5YmRhZDI0ZGMyZDljZDY1ZDoNCiAgICANCiAgICAg
IEFSTTogZHRzOiBhc3BlZWQ6IHJhaW5pZXI6IEFkZCBVQ0Q5MDMyMCBwb3dlciBzZXF1ZW5jZXIg
KDIwMjAtMDEtMjANCiAgICAxNTo1MDo1NyArMTAwMCkNCiAgICANCiAgICBhcmUgYXZhaWxhYmxl
IGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoNCiAgICANCiAgICAgIGdpdDovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9qb2VsL2FzcGVlZC5naXQNCiAgICB0YWdzL2Fz
cGVlZC01LjYtZGV2aWNldHJlZQ0KICAgIA0KICAgIGZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1
cCB0byAzOWJlOWU4NGY2NWJlNTk5OTE5YzcwNjliZGFkMjRkYzJkOWNkNjVkOg0KICAgIA0KICAg
ICAgQVJNOiBkdHM6IGFzcGVlZDogcmFpbmllcjogQWRkIFVDRDkwMzIwIHBvd2VyIHNlcXVlbmNl
ciAoMjAyMC0wMS0yMA0KICAgIDE1OjUwOjU3ICsxMDAwKQ0KICAgIA0KICAgIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAg
ICBBU1BFRUQgZGV2aWNlIHRyZWUgdXBkYXRlcyBmb3IgNS42DQogICAgDQogICAgIC0gQ2xlYW51
cHMgZm9yIGR0YyB3YXJuaW5ncw0KICAgIA0KICAgICAtIEV0aGVybmV0IGhhcmR3YXJlIGNoZWNr
c3VtIGNsZWFudXBzLiBBIGJ1ZyBpbiB0aGUgZHJpdmVyIHdhcyBmaXhlZCBzbw0KICAgICBtYWNo
aW5lcyBkb24ndCBuZWVkIHRvIHNwZWNpZnkgdGhpcyBhbnltb3JlLg0KICAgIA0KICAgICAtIE1p
c2MgaW1wcm92ZW1lbnRzDQogICAgDQogICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KICAgIA0KICAgIEFuZHJldyBKZWZm
ZXJ5ICgxMyk6DQogICAgICAgICAgZHQtYmluZGluZ3M6IHBpbmN0cmw6IGFzcGVlZDogQWRkIHJl
ZyBwcm9wZXJ0eSBhcyBhIGhpbnQNCiAgICAgICAgICBkdC1iaW5kaW5nczogbWlzYzogRG9jdW1l
bnQgcmVnIGZvciBhc3BlZWQsIHAyYS1jdHJsIG5vZGVzDQogICAgICAgICAgQVJNOiBkdHM6IGFz
cGVlZC1nNTogTW92ZSBFREFDIG5vZGUgdG8gQVBCDQogICAgICAgICAgQVJNOiBkdHM6IGFzcGVl
ZC1nNTogVXNlIHJlY29tbWVuZGVkIGdlbmVyaWMgbm9kZSBuYW1lIGZvciBTRE1DDQogICAgICAg
ICAgQVJNOiBkdHM6IHZlc25pbjogQWRkIHVuaXQgYWRkcmVzcyBmb3IgbWVtb3J5IG5vZGUNCiAg
ICAgICAgICBBUk06IGR0czogZnA1MjgwZzI6IENsZWFudXAgZ3Bpby1rZXlzLXBvbGxlZCBwcm9w
ZXJ0aWVzDQogICAgICAgICAgQVJNOiBkdHM6IHN3aWZ0OiBDbGVhbnVwIGdwaW8ta2V5cy1wb2xs
ZWQgcHJvcGVydGllcw0KICAgICAgICAgIEFSTTogZHRzOiB3aXRoZXJzcG9vbjogQ2xlYW51cCBn
cGlvLWtleXMtcG9sbGVkIHByb3BlcnRpZXMNCiAgICAgICAgICBBUk06IGR0czogYXNwZWVkOiBD
bGVhbnVwIGxwYy1jdHJsIGFuZCBzbm9vcCByZWdzDQogICAgICAgICAgQVJNOiBkdHM6IGFzcGVl
ZDogQWRkIHJlZyBoaW50cyB0byBzeXNjb24gY2hpbGRyZW4NCiAgICAgICAgICBBUk06IGR0czog
YXNwZWVkLWc1OiBTb3J0IExQQyBjaGlsZCBub2RlcyBieSB1bml0IGFkZHJlc3MNCiAgICAgICAg
ICBBUk06IGR0czogYXNwZWVkLWc2OiBDbGVhbnVwIHdhdGNoZG9nIHVuaXQgYWRkcmVzcw0KICAg
ICAgICAgIEFSTTogZHRzOiBpYm0tcG93ZXI5LWR1YWw6IEFkZCBhIHVuaXQgYWRkcmVzcyBmb3Ig
T0NDIG5vZGVzDQogICAgDQogICAgRWRkaWUgSmFtZXMgKDEpOg0KICAgICAgICAgIEFSTTogZHRz
OiBhc3BlZWQ6IHJhaW5pZXI6IFN3aXRjaCBQU1VzIHRvIHVua25vd24gdmVyc2lvbg0KICAgIA0K
ICAgIEl2YW4gTWlraGF5bG92ICgxKToNCiAgICAgICAgICBBUk06IGR0czogYXNwZWVkOiBBZGQg
U0QgY2FyZCBmb3IgVmVzbmluDQogICAgDQogICAgSmltIFdyaWdodCAoMSk6DQogICAgICAgICAg
QVJNOiBkdHM6IGFzcGVlZDogcmFpbmllcjogQWRkIFVDRDkwMzIwIHBvd2VyIHNlcXVlbmNlcg0K
ICAgIA0KICAgIEpvZWwgU3RhbmxleSAoMSk6DQogICAgICAgICAgQVJNOiBkdHM6IGFzcGVlZDog
QVNUMjQwMCBkaXNhYmxlcyBodyBjaGVja3N1bQ0KICAgIA0KICAgIFRhbyBSZW4gKDIpOg0KICAg
ICAgICAgIEFSTTogZHRzOiBhc3BlZWQ6IG5ldGJtYzogRGVsZXRlIG5vLWh3LWNoZWNrc3VtDQog
ICAgICAgICAgQVJNOiBkdHM6IGFzcGVlZDogeWFtcDogRGVsZXRlIG5vLWh3LWNoZWNrc3VtDQog
ICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
