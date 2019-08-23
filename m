Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8839B6AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjAKWVWsAm6rWztKyC3g2iMME33T+qoQPaDCBiI/WGc=; b=V/syENCHu4Hwp9
	GC59fIUF1JJGMPed2l7bhQJ2SnsX7nFMlrAOftGMLFqCt0mF2fSjnFONWxy9CF7/cML/pJmoVRIzh
	OzJ/TZqUarQeLSxByqmXogeG87JIuGNHorDPVUZ/HEbhVLTFRGVwzCwBPGtcXUrrdxYGWjz0SO9ln
	kFIzs2wmYCROQQFfq1t9LNE4g0HcNl6q/FQ+LkS96g93l1XiAC57lmLG8aIs1+FfQtIwZi+nzcMcr
	2IgY+rn5KQFsNugLwu7bP1w5el9/+a6crERpBCwr/x+iSnjJf5BMFVjcKWxLStAmZ5Nr+kXwUkUdi
	Kzrlcgyi4uCtRZF1fkiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Eya-0004BL-7K; Fri, 23 Aug 2019 19:11:56 +0000
Received: from mail-ve1eur02on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::618]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1EyI-00041M-3E
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:11:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HqdGCt5s+1G+DaKHDzXvMVS3H/SfniygChwwyEh0e1q7PjJGaeC0DcFP+PksgICWblLihJDzxumv29K8yQyzh9tD/DFBy3qqJOTbZcPxeWzslzynmx+g0z1KuF8CKINoIAkHZRoPHE8CjvUMDfGVrAZ8c/La9p8jOHJVAXV+lyJz7o06lAedMlv/VOPzFXETJuwB2ryFzdEav9L+zR78viz9fDmHzM9zNRNf9SSh19iNKdwNN4DOzDv5BFbWsj4A7bvkSoD0Z03yV9zB+/9aS7lk2i9o/hVfXxZegQmWkpO5MSD8sOoQGM51HjHz/FKOn9mKv43YKSyWRS8/TpRmjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eKiaDvtX3uc9OfHB2O953KVbPXggDj8tZAZWAUvyDtc=;
 b=n0oq5ed2IHezu+24rdjvIDwiCB0VRYIZarR+EDVTz5SerRvzjbWocF41joG0ELScxUO0U2K6PLk9tctk8dgxKXLVpq1QHLVhK+TfY6VjQ/TH/JIvYbbSve+IKfsbso9t5LtCCbXiGHFWJV5nU/Md/GOvXOUucwXmYiW+NXaqvmh2ZJCohKgNTDGFaFA4NQWGa5++jf61Buk6h71Ektb48TlJANJf/b404yropiER9+z28Na+45+TwU3/7j78NC7wyZ0wzZAZCFFK5faqczZuPyxmASdg1ePQz3/yXSd+Gxx90r8DSiiTvTkYWoT8Te2LIWy7W7s61ApzZnOWY67t4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eKiaDvtX3uc9OfHB2O953KVbPXggDj8tZAZWAUvyDtc=;
 b=rwCRj8mjpBU8Y6ZaSNb71xdYzpUBnpVsMQNvujZ3k/DSq3SK7BwVixMMugi5VHRVvkLj82lEwOXlpTpyW6AoiGlkwXxjBtIJrlMhtAb/QXyF04X8Q1nNSr2a0xyU9IDi2XaCmMSHi+gMrDE9n7eRepoXWsiEWHUHcMxw7CnAiRY=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2717.eurprd04.prod.outlook.com (10.175.22.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 19:11:32 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 19:11:32 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v3 1/7] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Topic: [PATCH v3 1/7] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Index: AQHVWeaTEtYyWxMnckudXC/xs5O+aw==
Date: Fri, 23 Aug 2019 19:11:32 +0000
Message-ID: <20190823191115.18490-2-stefan-gabriel.mirea@nxp.com>
References: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR0402CA0007.eurprd04.prod.outlook.com
 (2603:10a6:203:90::17) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97155e5a-a8f8-4444-2d81-08d727fdb563
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2717; 
x-ms-traffictypediagnostic: VI1PR0402MB2717:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB271781D0E64B5578C9ABA035DFA40@VI1PR0402MB2717.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(189003)(199004)(446003)(476003)(2501003)(66446008)(76176011)(6436002)(6486002)(386003)(6506007)(50226002)(81156014)(256004)(86362001)(66946007)(64756008)(66556008)(66476007)(66066001)(186003)(8936002)(6512007)(25786009)(81166006)(36756003)(478600001)(52116002)(8676002)(14454004)(102836004)(6116002)(5660300002)(486006)(26005)(2201001)(71200400001)(53936002)(71190400001)(1076003)(316002)(110136005)(7416002)(54906003)(4326008)(99286004)(7736002)(305945005)(6636002)(3846002)(11346002)(2616005)(4744005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2717;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 68cNtxQAbrexGZ9oYrtYBIkeVKOGFTVhHtB1sEqg5bp+tqRIe2fEBRAWt2Gz2gnNe3hMY5xmnek3U5kK9Xxk490Fw8icdoP7TFISIS3AtdhxOIzUg8SiG6iOVz3Hljc4Rn9NAs397jkr1TVzrqqbve9xl0lR7uFKZmYQSFB+NWhb3th2WoynBXH5KEPuMY7Fpbi1Qj5Rsyn7RPJjwTN0KW3DmMeO2dfnPhhdxX7vBOSFMpCRE6sOsD1YJvNEXQQui+usg5deAHYjKZ9lKlAPR+4tco1n4rNWVL/rlFsVWEZSuBpbwqz+io6aBUdLDTPjnJc0mLfHKG52j8kzQPAqzDrrsD27Vo+UxN+0YKX0GH+X29+vQw4aN+I4Cto3KBt8Qsa/lE0yx0chHafN7ys6eRsy40JyVoq5haly/oFNcA4=
Content-ID: <73D9A638E4AE604589785D13B9E6137A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97155e5a-a8f8-4444-2d81-08d727fdb563
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 19:11:32.2408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mvxjdSZr5AkOQRQorWYmhG4tcU/6RwRrCD0+BGqdAv1aoNsjORIwDNBpJjxwsP2fet3CuVrRq+PqOepPV+e/UFpxYBGRqIKuFvWn7oon0oo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_121138_137798_3DCCEB8F 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Eddy Petrisor <eddy.petrisor@nxp.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRWRkeSBQZXRyaciZb3IgPGVkZHkucGV0cmlzb3JAbnhwLmNvbT4NCg0KQWRkIGVudHJ5
IGZvciB0aGUgTlhQIFMzMlYyMzQgQ3VzdG9tZXIgRXZhbHVhdGlvbiBCb2FyZCB0byB0aGUgYm9h
cmQvU29DDQpiaW5kaW5ncy4NCg0KU2lnbmVkLW9mZi1ieTogRWRkeSBQZXRyaciZb3IgPGVkZHku
cGV0cmlzb3JAbnhwLmNvbT4NClNpZ25lZC1vZmYtYnk6IFN0ZWZhbi1HYWJyaWVsIE1pcmVhIDxz
dGVmYW4tZ2FicmllbC5taXJlYUBueHAuY29tPg0KUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxy
b2JoQGtlcm5lbC5vcmc+DQotLS0NCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL2ZzbC55YW1sIHwgNiArKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
DQoNCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2Zz
bC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbA0K
aW5kZXggNzI5NGFjMzZmNGMwLi41OTdjNTYzYmRlYzkgMTAwNjQ0DQotLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sDQorKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sDQpAQCAtMzA5LDQgKzMwOSwxMCBAQCBw
cm9wZXJ0aWVzOg0KICAgICAgICAgICAgICAgLSBmc2wsbHMyMDg4YS1yZGINCiAgICAgICAgICAg
LSBjb25zdDogZnNsLGxzMjA4OGENCiANCisgICAgICAtIGRlc2NyaXB0aW9uOiBTMzJWMjM0IGJh
c2VkIEJvYXJkcw0KKyAgICAgICAgaXRlbXM6DQorICAgICAgICAgIC0gZW51bToNCisgICAgICAg
ICAgICAgIC0gZnNsLHMzMnYyMzQtZXZiICAgICAgICAgICAjIFMzMlYyMzQtRVZCMiBDdXN0b21l
ciBFdmFsdWF0aW9uIEJvYXJkDQorICAgICAgICAgIC0gY29uc3Q6IGZzbCxzMzJ2MjM0DQorDQog
Li4uDQotLSANCjIuMjIuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
