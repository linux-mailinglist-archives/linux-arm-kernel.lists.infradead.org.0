Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D230A14F214
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 19:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuZkaNGMUbaBoxAAgpFdVCV0aFn5vxv3aAuMNE83bRg=; b=de2+xHq6O+MqVW
	9/aNScxNwa6cHT18JaRTK8zSwENjclk6PtrHFUsUVCUm2H90syStzeXTja5DJdXr9gbrDD/L/Qo24
	vinopL90+2yF6lkxwKcI1x+bH04RaFwFODAQm5TJrCg1VTnrxLxi4iFq+/kx8zJvZKq2bWykyeHpS
	pxBFZOfFvS2hGqfJpLr9R4Cdh1/cJvEnLxP6cKEZKpt7LbH8K4uy5aR+5On0Smxd87YEgCkU9AVvr
	RiymIdp/s6vhEb3PUc8V50QtSB1/TeptW0KP2MtrysNeAKVU48XIYNXJFoAdcs28Qtjq3hXzd5Jtf
	FbKA5+5vKnokaI+N9Mmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixawR-0002MO-JM; Fri, 31 Jan 2020 18:22:55 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixawK-0002M0-5h
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 18:22:49 +0000
Received: from pps.filterd (m0109333.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00VIMQCG023777; Fri, 31 Jan 2020 10:22:39 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=Cvsk6dwupPlYDA5s8D9At2KqVO3AozwbWuX+ICW79Z4=;
 b=R3GObZWUzdBhJddcjTpoDWymxvy3w2U6ZXRpK9VMOBEiPdvbmUl/XIfeGmL5fbE71rCd
 sJG7x53ZxTpHQQVBKCdaxBJk9q0uUjtFYyfZ+B3Ih/ln14dHCMIbf4z1sNM++x9P82Jf
 oAbma0vUAeqs1tAa6rr9eSRPpGVeb8dkFeQ= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2xvq69rrpb-8
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 31 Jan 2020 10:22:39 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.102) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 31 Jan 2020 10:22:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DkdrgtOY8y6eHwHhmoxLzFp2xu5zbaS+fUXA90pSD8yYfybyESZ4A+cKaKXXzqkrYG2OhsVnoCoVsjIc5TYd4RpPBgA96ZwXnu6AK6i5X/OYxtB/rCIPbYSZIo7up7YaPdp54au5m09WAiqUdqCzDTQ/KlG2tDIWAAS96ZcQhZ7wEuWq/JuflZJ4thKq/wD19TkknYsPAqPF69LZnzdhVrnbu3Z3uQwc0ZIRF84egjFi8XKXUGIgr1EZWEfLZCHzhL4wcl8YjCTKKv5cAWeDut+/4x4kiFmmx7mH6i3D7YCstD3IzVqc+zGHeJQw9d3MIvWfOnqHVnNsdSwx9nvjJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cvsk6dwupPlYDA5s8D9At2KqVO3AozwbWuX+ICW79Z4=;
 b=JANjS3kQMy3yCIzzaJDuIP/Bg2MB+LmnFXUfJNTYSiS0ch3bEC9gqEc9qHg/Ci16eISHujL7ZmkWgO2N1Y2V4wHNC7S7jf23l/N+DW+t5Yhb05Yqm2oYr/UJcn32Y7sLxLbwMpfs4vEfjyh7yHgLnKkYlHak0w781eJbC/gvRLHOVlf9kMQWQxWXU/5ZHk7GarPxXc3hG2/4CsGYxn5fnBfW2JlB+qs14GgJTF/Jv5rUUACWRKuBYr4AL1X6gs7UQNc6ot/ZCTkAyrnNfpKVjhFiSAI+yw+OqB8qY/9k1Hzr3+ygh4gtWVSh6mFEoLTgq3OdGIE5cfUen81Pknqqtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cvsk6dwupPlYDA5s8D9At2KqVO3AozwbWuX+ICW79Z4=;
 b=DJ82Sp1Ubg9EYPEBoNH4w7BXL239VNVRUQAaalMXeoK/SHO7tECoWuwY+hRIO5/CVJJJVESDhnLjZ5gx0dgIzpRZatRLoJOMbiIhs2UeZREhMBI89tjYV2CyNUVzSESxybxUzjwykBCQ06N2opjleRBYY6j9TenDOzX+jPmTGfc=
Received: from MWHPR15MB1597.namprd15.prod.outlook.com (10.173.234.137) by
 MWHPR15MB1790.namprd15.prod.outlook.com (10.174.97.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Fri, 31 Jan 2020 18:22:33 +0000
Received: from MWHPR15MB1597.namprd15.prod.outlook.com
 ([fe80::cdbf:b63c:437:4dd2]) by MWHPR15MB1597.namprd15.prod.outlook.com
 ([fe80::cdbf:b63c:437:4dd2%8]) with mapi id 15.20.2665.027; Fri, 31 Jan 2020
 18:22:32 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: tiogapass: Add gpio line names
Thread-Topic: [PATCH v2] ARM: dts: aspeed: tiogapass: Add gpio line names
Thread-Index: AQHV1XjjkDNvOB3siUyRZpBADHC1DqgEKi2AgABrkwA=
Date: Fri, 31 Jan 2020 18:22:32 +0000
Message-ID: <F16856EF-B7AD-461B-9416-B389DEF1FD2D@fb.com>
References: <20200128011817.4095682-1-vijaykhemka@fb.com>
 <CACPK8XfJYVH6EotMQcuuoV5hWnkA79oHSCvQBx5gr4np8Y59og@mail.gmail.com>
In-Reply-To: <CACPK8XfJYVH6EotMQcuuoV5hWnkA79oHSCvQBx5gr4np8Y59og@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::3:652d]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf9bf717-855e-4421-6fb3-08d7a67a8a22
x-ms-traffictypediagnostic: MWHPR15MB1790:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR15MB17907F34BEBC66DCE3A09572DD070@MWHPR15MB1790.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 029976C540
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(396003)(39860400002)(136003)(366004)(199004)(189003)(8936002)(66446008)(64756008)(81166006)(81156014)(66946007)(66476007)(8676002)(76116006)(6486002)(4326008)(478600001)(33656002)(66556008)(2906002)(86362001)(2616005)(6512007)(71200400001)(186003)(6916009)(6506007)(316002)(36756003)(54906003)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR15MB1790;
 H:MWHPR15MB1597.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wk+uRZaybF/5hkKhjbvF5jJGI6t/1eWoV0G46yEslJx+diH7XwETKdCS+XSvkbQP1hpUqdpl7OHow8rq5sHMV8hJvGDf0u2MxUXRiZyQNfhuchOAMir36gD3jrAcn4lN1/4JZW8v0gjWf5pcNg/OfZBQl890o4kqA6rH0rVw35jErkBYxbtML943i/ZgeAeIN+a6UeW9wS1NmvRN//tzEWcdy+LiNDmhwNmhWhDC3g2W6X938kt4qkwC1VoiGrxP8f/Lz3vIUVqqKuItWyDde/5FZjJVZDFZF7BO5iY0QpspI7vBrdtRAMFT1K/1QLwWwZeS3UqO/ci83L2sDCdxXmDG4OMMylY2Q29FRgVrMow4D9qG3m17d9ww88H6935XaWYY0FR1wu/plG9zHe2E1TrTp+Nro72c79hx2VbmLSfYsYYNyLoA03xkk30iGPh6
x-ms-exchange-antispam-messagedata: eHbRAKJqgmBhyuZZvKfQfkkFAC+XvUIICCy49LPifGq0sZzJrymh6aiWoqP6LVNkq0D4rGG9x3VFl5FLo9fj9UXvNS1wlAL1aXZ5hWMg0Fu6XzlZ7CnwvULfTcFtrUWoZzx/iMmCY0VHsj7auhYmmEa0Nt5wGe59n/LUvliECpyBY2+lO/XQEzCf3tHsLPGW
Content-ID: <96EB30C1D9C79F469A9476EA16E87325@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cf9bf717-855e-4421-6fb3-08d7a67a8a22
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2020 18:22:32.7998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yq8BcWlM3OOzNT2EqEiwZfdHxQ+JCXFMZowxFWWrFKUVJdE+eB7sr7Z49/rL9UO0oVR3t8zkAq0n4XAnIF8MgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1790
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-31_05:2020-01-31,
 2020-01-31 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 mlxscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 phishscore=0 priorityscore=1501
 adultscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1911200001 definitions=main-2001310151
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_102248_309545_0F612145 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.145.42 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sai Dasari <sdasari@fb.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDEvMzAvMjAsIDc6NTggUE0sICJKb2VsIFN0YW5sZXkiIDxqb2VsQGptcy5pZC5h
dT4gd3JvdGU6DQoNCiAgICBPbiBUdWUsIDI4IEphbiAyMDIwIGF0IDAxOjE4LCBWaWpheSBLaGVt
a2EgPHZpamF5a2hlbWthQGZiLmNvbT4gd3JvdGU6DQogICAgPg0KICAgID4gQWRkZWQgR1BJTyBs
aW5lIG5hbWVzIGZvciBhbGwgZ3BpbyB1c2VkIGluIHRpb2dhcGFzcyBwbGF0Zm9ybSwNCiAgICA+
IHRoZXNlIGxpbmUgbmFtZXMgd2lsbCBiZSB1c2VkIGJ5IGxpYmdwaW9kIHRvIGNvbnRyb2wgR1BJ
T3MNCiAgICA+DQogICAgPiBTaWduZWQtb2ZmLWJ5OiBWaWpheSBLaGVta2EgPHZpamF5a2hlbWth
QGZiLmNvbT4NCiAgICANCiAgICBUaGUgdmVyYm9zaXR5IG9mIHRoZSBiaW5kaW5ncyBpcyB1bmZv
cnR1bmF0ZSwgYnV0IEkgdGhpbmsgaXQncyB0aGUNCiAgICBvbmx5IG9wdGlvbiB3ZSBoYXZlIHRv
IGRhdGUuDQogICAgDQogICAgUmV2aWV3ZWQtYnk6IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQu
YXU+DQogICAgDQogICAgSSB3aWxsIG1lcmdlIHRoaXMgdGhyb3VnaCB0aGUgYXNwZWVkIHRyZWUg
Zm9yIDUuNy4NClRoYW5rcyBKb2VsLg0KICAgIA0KICAgIENoZWVycywNCiAgICANCiAgICBKb2Vs
DQogICAgDQogICAgPiAtLS0NCiAgICA+IHYyIDogQWRkZWQgQklPU19TUElfQk1DX0NUUkwgZ3Bp
byBsaW5lIG5hbWUNCiAgICA+DQogICAgPiAgLi4uL2R0cy9hc3BlZWQtYm1jLWZhY2Vib29rLXRp
b2dhcGFzcy5kdHMgICAgIHwgNjMgKysrKysrKysrKysrKysrKysrKw0KICAgID4gIDEgZmlsZSBj
aGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspDQogICAgPg0KICAgID4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2Jvb3QvZHRzL2FzcGVlZC1ibWMtZmFjZWJvb2stdGlvZ2FwYXNzLmR0cyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2FzcGVlZC1ibWMtZmFjZWJvb2stdGlvZ2FwYXNzLmR0cw0KICAgID4gaW5kZXgg
NjgyZjcyOWVhMjVlLi5mYjdmMDM0ZDVkYjIgMTAwNjQ0DQogICAgPiAtLS0gYS9hcmNoL2FybS9i
b290L2R0cy9hc3BlZWQtYm1jLWZhY2Vib29rLXRpb2dhcGFzcy5kdHMNCiAgICA+ICsrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2FzcGVlZC1ibWMtZmFjZWJvb2stdGlvZ2FwYXNzLmR0cw0KICAgID4g
QEAgLTEyMSw2ICsxMjEsNjkgQEANCiAgICA+ICAgICAgICAga2NzX2FkZHIgPSA8MHhjYTI+Ow0K
ICAgID4gIH07DQogICAgPg0KICAgID4gKyZncGlvIHsNCiAgICA+ICsgICAgICAgc3RhdHVzID0g
Im9rYXkiOw0KICAgID4gKyAgICAgICBncGlvLWxpbmUtbmFtZXMgPQ0KICAgID4gKyAgICAgICAv
KkEwLUE3Ki8gICAgICAgIkJNQ19DUExEX0ZQR0FfU0VMIiwiIiwiIiwiIiwiIiwiIiwiIiwiIiwN
CiAgICA+ICsgICAgICAgLypCMC1CNyovICAgICAgICIiLCJCTUNfREVCVUdfRU4iLCIiLCIiLCIi
LCJCTUNfUFBJTiIsIlBTX1BXUk9LIiwNCiAgICA+ICsgICAgICAgICAgICAgICAgICAgICAgICJJ
UlFfUFZERFFfR0hKX1ZSSE9UX0xWVDMiLA0KICAgID4gKyAgICAgICAvKkMwLUM3Ki8gICAgICAg
IiIsIiIsIiIsIiIsIiIsIiIsIiIsIiIsDQogICAgPiArICAgICAgIC8qRDAtRDcqLyAgICAgICAi
QklPU19NUkNfREVCVUdfTVNHX0RJUyIsIkJPQVJEX1JFVl9JRDAiLCIiLA0KICAgID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgIkJPQVJEX1JFVl9JRDEiLCJJUlFfRElNTV9TQVZFX0xWVDMiLCJC
T0FSRF9SRVZfSUQyIiwNCiAgICA+ICsgICAgICAgICAgICAgICAgICAgICAgICJDUFVfRVJSMF9M
VlQzX0JNQyIsIkNQVV9FUlIxX0xWVDNfQk1DIiwNCiAgICA+ICsgICAgICAgLypFMC1FNyovICAg
ICAgICJSRVNFVF9CVVRUT04iLCJSRVNFVF9PVVQiLCJQT1dFUl9CVVRUT04iLA0KICAgID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgIlBPV0VSX09VVCIsIk5NSV9CVVRUT04iLCIiLCJDUFUwX1BS
T0NIT1RfTFZUM18gQk1DIiwNCiAgICA+ICsgICAgICAgICAgICAgICAgICAgICAgICJDUFUxX1BS
T0NIT1RfTFZUM18gQk1DIiwNCiAgICA+ICsgICAgICAgLypGMC1GNyovICAgICAgICJJUlFfUFZE
RFFfQUJDX1ZSSE9UX0xWVDMiLCIiLA0KICAgID4gKyAgICAgICAgICAgICAgICAgICAgICAgIklS
UV9QVkNDSU5fQ1BVMF9WUkhPVF9MVkMzIiwNCiAgICA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICJJUlFfUFZDQ0lOX0NQVTFfVlJIT1RfTFZDMyIsDQogICAgPiArICAgICAgICAgICAgICAgICAg
ICAgICAiSVJRX1BWRERRX0tMTV9WUkhPVF9MVlQzIiwiIiwiUDNWQkFUX0JSSURHRV9FTiIsIiIs
DQogICAgPiArICAgICAgIC8qRzAtRzcqLyAgICAgICAiQ1BVX0VSUjJfTFZUMyIsIkNQVV9DQVRF
UlJfTFZUMyIsIlBDSF9CTUNfVEhFUk1UUklQIiwNCiAgICA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICJDUFUwX1NLVE9DQ19MVlQzIiwiIiwiIiwiIiwiQklPU19TTUlfQUNUSVZFIiwNCiAgICA+
ICsgICAgICAgLypIMC1INyovICAgICAgICJMRURfUE9TVF9DT0RFXzAiLCJMRURfUE9TVF9DT0RF
XzEiLCJMRURfUE9TVF9DT0RFXzIiLA0KICAgID4gKyAgICAgICAgICAgICAgICAgICAgICAgIkxF
RF9QT1NUX0NPREVfMyIsIkxFRF9QT1NUX0NPREVfNCIsIkxFRF9QT1NUX0NPREVfNSIsDQogICAg
PiArICAgICAgICAgICAgICAgICAgICAgICAiTEVEX1BPU1RfQ09ERV82IiwiTEVEX1BPU1RfQ09E
RV83IiwNCiAgICA+ICsgICAgICAgLypJMC1JNyovICAgICAgICJDUFUwX0ZJVlJfRkFVTFRfTFZU
MyIsIkNQVTFfRklWUl9GQVVMVF9MVlQzIiwNCiAgICA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICJGT1JDRV9BRFIiLCJVVl9BRFJfVFJJR0dFUl9FTiIsIiIsIiIsIiIsIiIsDQogICAgPiArICAg
ICAgIC8qSjAtSjcqLyAgICAgICAiIiwiIiwiIiwiIiwiIiwiIiwiIiwiIiwNCiAgICA+ICsgICAg
ICAgLypLMC1LNyovICAgICAgICIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiLA0KICAgID4gKyAgICAg
ICAvKkwwLUw3Ki8gICAgICAgIklSUV9VVl9ERVRFQ1QiLCJJUlFfT0NfREVURUNUIiwiSFNDX1RJ
TUVSX0VYUCIsIiIsDQogICAgPiArICAgICAgICAgICAgICAgICAgICAgICAiTUVNX1RIRVJNX0VW
RU5UX1BDSCIsIlBNQlVTX0FMRVJUX0JVRl9FTiIsIiIsIiIsDQogICAgPiArICAgICAgIC8qTTAt
TTcqLyAgICAgICAiQ1BVMF9SQ19FUlJPUiIsIkNQVTFfUkNfRVJST1IiLCIiLCJPQ19ERVRFQ1Rf
RU4iLA0KICAgID4gKyAgICAgICAgICAgICAgICAgICAgICAgIkNQVTBfVEhFUk1UUklQX0xBVENI
X0xWVDMiLA0KICAgID4gKyAgICAgICAgICAgICAgICAgICAgICAgIkNQVTFfVEhFUk1UUklQX0xB
VENIX0xWVDMiLCIiLCIiLA0KICAgID4gKyAgICAgICAvKk4wLU43Ki8gICAgICAgIiIsIiIsIiIs
IkNQVV9NU01JX0xWVDMiLCIiLCJCSU9TX1NQSV9CTUNfQ1RSTCIsIiIsIiIsDQogICAgPiArICAg
ICAgIC8qTzAtTzcqLyAgICAgICAiIiwiIiwiIiwiIiwiIiwiIiwiIiwiIiwNCiAgICA+ICsgICAg
ICAgLypQMC1QNyovICAgICAgICJCT0FSRF9TS1VfSUQwIiwiQk9BUkRfU0tVX0lEMSIsIkJPQVJE
X1NLVV9JRDIiLA0KICAgID4gKyAgICAgICAgICAgICAgICAgICAgICAgIkJPQVJEX1NLVV9JRDMi
LCJCT0FSRF9TS1VfSUQ0IiwiQk1DX1BSRVEiLA0KICAgID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgIkJNQ19QV1JfREVCVUciLCJSU1RfUlNNUlNUIiwNCiAgICA+ICsgICAgICAgLypRMC1RNyov
ICAgICAgICIiLCIiLCIiLCIiLCJVQVJUU1dfTFNCIiwiVUFSVFNXX01TQiIsDQogICAgPiArICAg
ICAgICAgICAgICAgICAgICAgICAiUE9TVF9DQVJEX1BSRVNfQk1DIiwiUEVfQk1DX1dBS0UiLA0K
ICAgID4gKyAgICAgICAvKlIwLVI3Ki8gICAgICAgIiIsIiIsIkJNQ19UQ0tfTVVYX1NFTCIsIkJN
Q19QUkRZIiwNCiAgICA+ICsgICAgICAgICAgICAgICAgICAgICAgICJCTUNfWERQX1BSU05UX0lO
IiwiUlNUX0JNQ19QTFRSU1RfQlVGIiwiU0xUX0NGRzAiLA0KICAgID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgIlNMVF9DRkcxIiwNCiAgICA+ICsgICAgICAgLypTMC1TNyovICAgICAgICJUSFJP
VFRMRSIsIkJNQ19SRUFEWSIsIiIsIkhTQ19TTUJVU19TV0lUQ0hfRU4iLCIiLA0KICAgID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgIiIsIiIsIiIsDQogICAgPiArICAgICAgIC8qVDAtVDcqLyAg
ICAgICAiIiwiIiwiIiwiIiwiIiwiIiwiIiwiIiwNCiAgICA+ICsgICAgICAgLypVMC1VNyovICAg
ICAgICIiLCIiLCIiLCIiLCIiLCJCTUNfRkFVTFQiLCIiLCIiLA0KICAgID4gKyAgICAgICAvKlYw
LVY3Ki8gICAgICAgIiIsIiIsIiIsIkZBU1RfUFJPQ0hPVF9FTiIsIiIsIiIsIiIsIiIsDQogICAg
PiArICAgICAgIC8qVzAtVzcqLyAgICAgICAiIiwiIiwiIiwiIiwiIiwiIiwiIiwiIiwNCiAgICA+
ICsgICAgICAgLypYMC1YNyovICAgICAgICIiLCIiLCIiLCJHTE9CQUxfUlNUX1dBUk4iLA0KICAg
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIkNQVTBfTUVNQUJDX01FTUhPVF9MVlQzX0JNQyIs
DQogICAgPiArICAgICAgICAgICAgICAgICAgICAgICAiQ1BVMF9NRU1ERUZfTUVNSE9UX0xWVDNf
Qk1DIiwNCiAgICA+ICsgICAgICAgICAgICAgICAgICAgICAgICJDUFUxX01FTUdISl9NRU1IT1Rf
TFZUM19CTUMiLA0KICAgID4gKyAgICAgICAgICAgICAgICAgICAgICAgIkNQVTFfTUVNS0xNX01F
TUhPVF9MVlQzX0JNQyIsDQogICAgPiArICAgICAgIC8qWTAtWTcqLyAgICAgICAiU0lPX1MzIiwi
U0lPX1M1IiwiQk1DX0pUQUdfU0VMIiwiU0lPX09OQ09OVFJPTCIsIiIsDQogICAgPiArICAgICAg
ICAgICAgICAgICAgICAgICAiIiwiIiwiIiwNCiAgICA+ICsgICAgICAgLypaMC1aNyovICAgICAg
ICIiLCJTSU9fUE9XRVJfR09PRCIsIklSUV9QVkREUV9ERUZfVlJIT1RfTFZUMyIsIiIsDQogICAg
PiArICAgICAgICAgICAgICAgICAgICAgICAiIiwiIiwiIiwiIiwNCiAgICA+ICsgICAgICAgLypB
QTAtQUE3Ki8gICAgICJDUFUxX1NLVE9DQ19MVlQzIiwiSVJRX1NNTDFfUE1CVVNfQUxFUlQiLA0K
ICAgID4gKyAgICAgICAgICAgICAgICAgICAgICAgIlNFUlZFUl9QT1dFUl9MRUQiLCIiLCJQRUNJ
X01VWF9TRUxFQ1QiLCJVVl9ISUdIX1NFVCIsDQogICAgPiArICAgICAgICAgICAgICAgICAgICAg
ICAiIiwiUE9TVF9DT01QTEVURSIsDQogICAgPiArICAgICAgIC8qQUIwLUFCNyovICAgICAiSVJR
X0hTQ19GQVVMVCIsIk9DUF9NRVpaQV9QUkVTIiwiIiwiIiwiIiwiIiwiIiwiIiwNCiAgICA+ICsg
ICAgICAgLypBQzAtQUM3Ki8gICAgICIiLCIiLCIiLCIiLCIiLCIiLCIiLCIiOw0KICAgID4gK307
DQogICAgPiArDQogICAgPiAgJm1hYzAgew0KICAgID4gICAgICAgICBzdGF0dXMgPSAib2theSI7
DQogICAgPg0KICAgID4gLS0NCiAgICA+IDIuMTcuMQ0KICAgID4NCiAgICANCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
