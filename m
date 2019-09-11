Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C174B0321
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 19:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=263bwiK/fvYcRq/RAJpLVp7AJCM7a0ZfJAHKkp9Q4KM=; b=kwpBFTFBfb2bHo
	UWaJ8rvKQPADotyD8LRphiLJj7EVvMvoXFSxDB7XAEDBdPiRzKVkYgVSQQ+KMR2WUJX8P9DEIokRo
	sSWleIpC16LuFw26BZ4p1MQsbDY1JRfRKAfnGs/zsde/s0F1ybkTrA8kc4CMASqSg/DfqE47Jh3wY
	HTS5+YNrQc7Fx7JHhoFwUyogU6oiLvHD5KJIbDvS83LvrEJnWpnEYqIOa6syAiPeA1NusNtdd4w2I
	1hkq8Nuxlt8lpaKhSgnd8bry4E0rYX/gYCMvbfaNEf0Q86saA686xcQoRM0QVwhkoy9ADCobkZBr6
	CDN8wUC2nXvaHBQjLmpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86l0-0000oH-Hk; Wed, 11 Sep 2019 17:50:18 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86jJ-0007yY-78
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:48:35 +0000
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
 by m0089730.ppops.net (8.16.0.42/8.16.0.42) with SMTP id x8BHhrqV005445;
 Wed, 11 Sep 2019 10:48:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=jBcQKaH5LdenjvKb2ODTu+8ZtI396yTYtzxscCRirbk=;
 b=b/O+vgIW3ZKOsJpEvap+43SUnl5lQ6s8dt1irCpOExiE/23SXSIBpzxXBb3e6rauY9Iz
 hYzqgR8JiYSg/b0z8zxY+UFyGvwaAVIq2BZAGau5rG4WxtdKXNTbLgtdkOC3rcRjRQA2
 TkEUiBnCdNbE1fAr230KrTdlullarWrkjOw= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by m0089730.ppops.net with ESMTP id 2uy315rvfy-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 11 Sep 2019 10:48:29 -0700
Received: from ash-exhub204.TheFacebook.com (2620:10d:c0a8:83::4) by
 ash-exhub202.TheFacebook.com (2620:10d:c0a8:83::6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 10:48:29 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.100) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 10:48:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLo8nLXe2NWNgXJVvrDp/jMhBCQd85FLcbASq83S0kbfpE3+9dNqEaakgOg4JqV9Veh2Snf6c2/o3lMlyLvVawtKsMobtltDXlKriRgap0sqcH3U4iGAEJcZsviocEQaw/s2ocZEkVnG7EyOSP2+CQLNjGqseYWLcf+DpzLpV1Bpf9RsazMHMCc3/R3xBocUXvN5Hide7WmKhRkN8qdEy1Jj5583yX/E6gqqdmOY7FXfN//Wj1tefp4WSIfeLDETGM1AHS1LqHzMJEitxGI4hC+pTHH8fJxwChnskHNcr6HS5kq69Ptm+9gza0HiH+QVWBOBeDLytRqlVdpDXYsEnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jBcQKaH5LdenjvKb2ODTu+8ZtI396yTYtzxscCRirbk=;
 b=DExd8Cc1/xOSPcqqGfYPU/b+UaWrTFshZwMAzpRtMV4do0PXzWaQQd44i+IqEwRMJzsp/f0mbMfB57I1JAa/mKdkvuT6ovL+GOdjY/6ov41uOSO9JbDcxriE2m3otBJCoM50Z/ey+N2Qx2WsyshbkhEcIqfQ7/C+XM0HWJY1Im2O3GfesVMYdTXuSJR37b3rAnmf21DK75IUospuLzzmJy8RJI++oAGDHngqTkvydnkm+17uQOJbdMLVKGf4r1Io9C3OexNK+hhHeqD4u6FsfIFnkb+vbeE9nJ7iMe5No9EJPg2baVYBmU8GUR8viTx//vgah+nibN+ljKOSbIlZow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jBcQKaH5LdenjvKb2ODTu+8ZtI396yTYtzxscCRirbk=;
 b=CMcyNlmuI1+CGpJKTiRzeJ7/yIA3d13MKYMplEb59mAX/SstktWMwof31Pmw52Refh0jLiBH2Y04CNQnSGlnN5NaQ2D3/c/Bvk8EKLGcqRXpg5kAGwrNagIl5G+0mzok2K5vA/cJgLdgRuR3MlNh19shjuy3Wihtpf07RVi0/nc=
Received: from CY4PR15MB1269.namprd15.prod.outlook.com (10.172.177.11) by
 CY4PR15MB1735.namprd15.prod.outlook.com (10.174.53.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 17:48:28 +0000
Received: from CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::38b1:336:13e6:b02b]) by CY4PR15MB1269.namprd15.prod.outlook.com
 ([fe80::38b1:336:13e6:b02b%7]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 17:48:28 +0000
From: Vijay Khemka <vijaykhemka@fb.com>
To: Rashmica Gupta <rashmica.g@gmail.com>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "linux-gpio@vger.kernel.org"
 <linux-gpio@vger.kernel.org>, "bgolaszewski@baylibre.com"
 <bgolaszewski@baylibre.com>
Subject: Re: [PATCH 1/4] gpio/aspeed: Fix incorrect number of banks
Thread-Topic: [PATCH 1/4] gpio/aspeed: Fix incorrect number of banks
Thread-Index: AQHVaJq7WAtiKansOkK5PsarCtqTlacmS6yA
Date: Wed, 11 Sep 2019 17:48:28 +0000
Message-ID: <39AE527D-F629-4AD7-980C-61C55C5B8718@fb.com>
References: <20190904061245.30770-1-rashmica.g@gmail.com>
In-Reply-To: <20190904061245.30770-1-rashmica.g@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2620:10d:c090:200::1:a2f5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 184b43eb-096c-4a32-a506-08d736e040c4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR15MB1735; 
x-ms-traffictypediagnostic: CY4PR15MB1735:
x-microsoft-antispam-prvs: <CY4PR15MB173514C64C2D7ABC2E47CEB7DDB10@CY4PR15MB1735.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:337;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(376002)(366004)(39860400002)(396003)(189003)(199004)(2201001)(66446008)(64756008)(305945005)(7736002)(8676002)(81156014)(81166006)(4326008)(8936002)(5660300002)(86362001)(91956017)(76116006)(256004)(14444005)(53936002)(99286004)(6512007)(4744005)(71190400001)(6246003)(6486002)(71200400001)(36756003)(25786009)(2501003)(66946007)(66556008)(66476007)(110136005)(54906003)(478600001)(316002)(15650500001)(14454004)(102836004)(6506007)(446003)(11346002)(486006)(2616005)(476003)(6436002)(33656002)(6116002)(2906002)(186003)(46003)(76176011)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR15MB1735;
 H:CY4PR15MB1269.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nbwWDL8gxJuJykVH61Nkut1QogRYCiclf0AH9JmPcGkMPCgMVHiJc3GHjdl20yUr8z7DwkEeOLI9C1M6Utvxcw1wbLj0tRCNRshUt1GHzsgKbbibrzrurIKguFNaXxE6G/go9UtOe57pNaAx0z2TwrYa+0H+UXvBJzX6exQkyzQsitRwjO6ZQhW9wpFBAcwwja2cG1A9B7tJcXszPMbUGJFHiiq4qKO5rhz7B2n1Ssii44xFfaKZ1oUh6jhFaJfo0plQHr/+BdbVQeYwgNTBXt2CnKVnOcJ1BKnvMqvmUALOp2bhoNMIQFva8PTHOZEY85Ka9Z2fK0GtxRIO+4qUYJIuQakdNyendGc5ayzddzZKe81PaOOQyjTEC4s0YY3ys5aS/nWghAYplI1EhW92iFlCgfwqM/S267LlANIkEPs=
x-ms-exchange-transport-forked: True
Content-ID: <0850C97D1AD5DA42B0602E19CF283F98@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 184b43eb-096c-4a32-a506-08d736e040c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 17:48:28.1948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ecZpug9A0LiyU7nDZ9dJx0ao1IaxbfhPZzM53gHZ+jrvkZxn6TeHZ4DRxibrILt8VkmBnRxqgXa1XOk0BiRQHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1735
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-11_08:2019-09-11,2019-09-11 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0 mlxlogscore=999
 phishscore=0 spamscore=0 bulkscore=0 impostorscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909110164
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_104833_601168_E3C1C10F 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDkvMTEvMTksIDU6MTYgQU0sICJMaW51eC1hc3BlZWQgb24gYmVoYWxmIG9mIFJh
c2htaWNhIEd1cHRhIiA8bGludXgtYXNwZWVkLWJvdW5jZXMrdmlqYXlraGVta2E9ZmIuY29tQGxp
c3RzLm96bGFicy5vcmcgb24gYmVoYWxmIG9mIHJhc2htaWNhLmdAZ21haWwuY29tPiB3cm90ZToN
Cg0KICAgIEZpeGVzOiAzNjFiNzkxMTlhNGI3ICgnZ3BpbzogQWRkIEFzcGVlZCBkcml2ZXInKQ0K
ICAgIA0KICAgIFNpZ25lZC1vZmYtYnk6IFJhc2htaWNhIEd1cHRhIDxyYXNobWljYS5nQGdtYWls
LmNvbT4NCiAgICAtLS0NCiAgICAgZHJpdmVycy9ncGlvL2dwaW8tYXNwZWVkLmMgfCAyICstDQog
ICAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KICAgIA0K
ICAgIGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vZ3Bpby1hc3BlZWQuYyBiL2RyaXZlcnMvZ3Bp
by9ncGlvLWFzcGVlZC5jDQogICAgaW5kZXggOWRlZmUyNWQ0NzIxLi43Nzc1MmIyNjI0ZTggMTAw
NjQ0DQogICAgLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tYXNwZWVkLmMNCiAgICArKysgYi9kcml2
ZXJzL2dwaW8vZ3Bpby1hc3BlZWQuYw0KICAgIEBAIC0xMTY1LDcgKzExNjUsNyBAQCBzdGF0aWMg
aW50IF9faW5pdCBhc3BlZWRfZ3Bpb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQ0KICAgICAJZ3Bpby0+Y2hpcC5iYXNlID0gLTE7DQogICAgIA0KICAgICAJLyogQWxsb2NhdGUg
YSBjYWNoZSBvZiB0aGUgb3V0cHV0IHJlZ2lzdGVycyAqLw0KICAgIC0JYmFua3MgPSBncGlvLT5j
b25maWctPm5yX2dwaW9zID4+IDU7DQogICAgKwliYW5rcyA9IChncGlvLT5jb25maWctPm5yX2dw
aW9zID4+IDUpICsgMTsNCklmIG51bWJlciBvZiBncGlvcyBhcmUgMzIgdGhlbiBpdCBzaG91bGQg
YmUgb25seSAxIGJhbmssIGFzIHBlciBhYm92ZSBpdCBpcyAyIGJhbmsuDQogICAgIAlncGlvLT5k
Y2FjaGUgPSBkZXZtX2tjYWxsb2MoJnBkZXYtPmRldiwNCiAgICAgCQkJCSAgICBiYW5rcywgc2l6
ZW9mKHUzMiksIEdGUF9LRVJORUwpOw0KICAgICAJaWYgKCFncGlvLT5kY2FjaGUpDQogICAgLS0g
DQogICAgMi4yMC4xDQogICAgDQogICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
