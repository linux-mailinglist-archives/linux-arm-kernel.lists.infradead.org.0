Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84652E319
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 19:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHCzvUBZKhzYRhSFpKita0j7zdGb+B8Agv92tCm8QdA=; b=ZXtUF8eviPZt/m
	yMCaOGG2e9i1xEQIvmhGdtyWe38NRCKjMiaydGzb9huQ2Je3ecvdmQE7wPR2cuU3gWKt9JSU4i3Y3
	kIP84tqodOf4E1rc+hW8h/8FWMieB77CYyMqjzwFaPuD5HW7EJrmluhqlLnbSPybO9Qurl7Qj6q4b
	PT4ecxKxbVSs2irEGtgKlaD539KVjiAqvCyFSgOW791I+NDFYrnqGyuEvm4ydLGfILBTTmgnPcr1s
	xSkbnl0oiX2G8rBQOxTlvWwDIO/Utx58JO9iXlR7H1llyokHwAPDv7jyNU1qadh8qYUCLNuQ0jCo+
	Nd/Adn+jiT54U44ZiLcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW2IW-0007rm-S1; Wed, 29 May 2019 17:23:32 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW2IP-0007rO-Dq
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 17:23:26 +0000
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4THK58Y011968; Wed, 29 May 2019 10:23:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=RYe2t34uPb4EOOnAoXFfT8xV9HqDtrzvfs1Xqg4S+wY=;
 b=cXNmnsk8g/po5cHt8l1Lzk2ulM/EyQtTNhh7l4R9sY3fEC2PFo8KiaT8MrPPEqFl2oxn
 q1W8ic0aFZ/0Da3V1a+/aY43pd68ArmblPf76Au3q1itgb4zpJUV5wD5eP875a62W6Yv
 0Cy/ls86VIxn9UjXyJLtGOWVKbrCExJl5sk= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2ssueerqqm-10
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 29 May 2019 10:23:11 -0700
Received: from prn-hub01.TheFacebook.com (2620:10d:c081:35::125) by
 prn-hub06.TheFacebook.com (2620:10d:c081:35::130) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Wed, 29 May 2019 10:22:53 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Wed, 29 May 2019 10:22:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RYe2t34uPb4EOOnAoXFfT8xV9HqDtrzvfs1Xqg4S+wY=;
 b=nkrwJNth4Vz7lE29uXLOwoyXFy5vBCgoWKP448DFZz39Wdoc8oKpDkj/3PqHJoXU1GGv5WC+4SYmGh6DkcQ9lLZIoBbGGuP4OXRIxOR2XNKpOk0GmIyr3q2itXi9NefIFtSmVb6TcVpdCDFVVbGhZM+0kofufpDBWC4OYdBslPY=
Received: from CY4PR15MB1269.namprd15.prod.outlook.com (10.172.177.11) by
 CY4PR15MB1687.namprd15.prod.outlook.com (10.175.119.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.22; Wed, 29 May 2019 17:22:51 +0000
Received: from CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::c026:bca5:3f4e:9b1f]) by CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::c026:bca5:3f4e:9b1f%3]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 17:22:51 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] misc: aspeed-lpc-ctrl: make parameter optional
Thread-Topic: [PATCH] misc: aspeed-lpc-ctrl: make parameter optional
Thread-Index: AQHVAG4MVnagyLYdbEW1gTueyh4a2qZ6knKAgAd9oQA=
Date: Wed, 29 May 2019 17:22:51 +0000
Message-ID: <F6CAD6A7-3130-4649-B596-5FC53F4DBDFB@fb.com>
References: <20190501223411.1655854-1-vijaykhemka@fb.com>
 <20190524155923.GA7516@kroah.com>
In-Reply-To: <20190524155923.GA7516@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::2:fd56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec4b2d6b-4063-4ec0-aeee-08d6e45a478b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR15MB1687; 
x-ms-traffictypediagnostic: CY4PR15MB1687:
x-microsoft-antispam-prvs: <CY4PR15MB1687914A76306783454414E9DD1F0@CY4PR15MB1687.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(346002)(366004)(396003)(376002)(136003)(199004)(189003)(73956011)(66446008)(64756008)(6116002)(76116006)(229853002)(66476007)(83716004)(66946007)(7736002)(53936002)(91956017)(305945005)(6512007)(2906002)(33656002)(6436002)(8676002)(81166006)(81156014)(36756003)(6486002)(14454004)(71200400001)(8936002)(71190400001)(478600001)(54906003)(4744005)(6916009)(102836004)(2616005)(6506007)(486006)(82746002)(186003)(476003)(446003)(11346002)(5660300002)(4326008)(25786009)(76176011)(99286004)(86362001)(68736007)(316002)(256004)(46003)(6246003)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR15MB1687;
 H:CY4PR15MB1269.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: o9Ram2e4sByPhhwAWawyaKr2dYdSuflwaaIay2dzfWOvuA6A/W6zStWnonFK8E6QatEDXzxqcYBCB1oUvrlBdRNPcDw50itHPDUfUAQRoRVTwvY4whCSUl1oPSZbhftRlu7w2bU4DmwltG+oa0Y90NtL+YY1806OyjcjjYfoD0hKpAuY6cQtYjwcLk0b3hEdwsCfLoObmehIMppqcrovAFk/zyDry+agManRC12TWQuDW7ScYvAfIOkTma7C6rdZnVj5hK7c7i1on6FmxecSJwkyu7R+A2XDEB9ateCs2WMWWN+WkuxKFnpXOOFruBKMUxvhIZej3UJJCulC6DIcLFqrfOmP0KP63nWaKZhBptQ1spZXKEoOjBqjMioBTNdFOCodw5NotHB4SLeBhSjI/jEkxjRz5mpg4DRkDekmy90=
Content-ID: <B9BA4D932E651A4DA40E3894AC04DD39@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ec4b2d6b-4063-4ec0-aeee-08d6e45a478b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 17:22:51.6068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vijaykhemka@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1687
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-29_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=888 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905290113
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_102325_636178_8E45D30B 
X-CRM114-Status: GOOD (  13.20  )
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
Cc: Sai Dasari <sdasari@fb.com>, Arnd Bergmann <arnd@arndb.de>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, Andrew
 Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDUvMjQvMTksIDg6NTkgQU0sICJHcmVnIEtyb2FoLUhhcnRtYW4iIDxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6DQoNCiAgICBPbiBXZWQsIE1heSAwMSwgMjAxOSBh
dCAwMzozNDoxMVBNIC0wNzAwLCBWaWpheSBLaGVta2Egd3JvdGU6DQogICAgPiBNYWtpaW5nIG1l
bW9yeS1yZWdpb24gYW5kIGZsYXNoIGFzIG9wdGlvbmFsIHBhcmFtZXRlciBpbiBkZXZpY2UNCiAg
ICA+IHRyZWUgaWYgdXNlciBuZWVkcyB0byB1c2UgdGhlc2UgcGFyYW1ldGVyIHRocm91Z2ggaW9j
dGwgdGhlbg0KICAgID4gbmVlZCB0byBkZWZpbmUgaW4gZGV2aWNldHJlZS4NCiAgICA+IA0KICAg
ID4gU2lnbmVkLW9mZi1ieTogVmlqYXkgS2hlbWthIDx2aWpheWtoZW1rYUBmYi5jb20+DQogICAg
PiAtLS0NCiAgICA+ICBkcml2ZXJzL21pc2MvYXNwZWVkLWxwYy1jdHJsLmMgfCA1OCArKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tDQogICAgPiAgMSBmaWxlIGNoYW5nZWQsIDM2IGlu
c2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KICAgIA0KICAgIEZpbGUgaXMgbm8gbG9uZ2Vy
IGF0IHRoaXMgbG9jYXRpb24gOigNCg0KSSBoYXZlIHJlYmFzZWQgdG8gbmV3IGxvY2F0aW9uIGFu
ZCBjb21iaW5lZCBib3RoIHBhdGNoZXMgYW5kIHN1Ym1pdHRlZCBhZ2Fpbi4gX18NCg0KUmVnYXJk
cw0KLVZpamF5DQogICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
