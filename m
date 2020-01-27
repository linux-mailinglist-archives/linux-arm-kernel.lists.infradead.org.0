Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10D314AC40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 23:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qupp2WULnIfFFaYXpRAWuWvRau+VlaUovJ7WWP5/wm4=; b=VMFuCG8GE1AqvZ
	g5LZ+Hua+yltpcypuT3klm/eTw8Xp5ry0FvyD93W7rm/fB/OmRVQI4bQeYkgbOZf0e/Y+e/PtS/yn
	iWjNscMOpj3x8R/QkapvAbp5u+bdERrVsnqwtmh2gYhv3vWFEk7z+3cej6cSZX6Ot55dX9J4wkckD
	p8CPi6yCmf2fBkMxqz58VsKFvPoGoVQ/Ifon/Cx/oQMh/PnK5W83fiGUOR65oQZeSbobLjSrdgoGw
	TIwhUEJrByvRCyb/g3zTDBGc5v7YP2Ye4WOpxTJorhn8NYQxH1QiRiWJe3Urc0CeEofC5F17dI7rI
	k+2CfttUSbE96edB7caQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwD99-0000NJ-8q; Mon, 27 Jan 2020 22:46:19 +0000
Received: from mail-dm6nam12on2065.outbound.protection.outlook.com
 ([40.107.243.65] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwD8z-0000MI-R4
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 22:46:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IuxqzCt+PmpCdc2y2FEty//8dxxQaE0iGtTUlyL7vws4lw49wH7kofDUM2o9SfICmCW46vdphiifJlSjsOXfJF5o3TrfjXraqCkTGnL7usgHHtRVHC3/eutUW7GTZzr0/mZNZUGaDxjdkc5LNGZWUirQaD4cbteZPgKdzRaEXKcsMNhGh2N25h0RSTgBE3L1Ik9q8YdLK7WamJJR2scJgMSYJB6MNvNxn0nzNu4euG3NXKISP+2f7Ai/8S3qtiNNLe85IMJdoKhmva58x7jtmlj5+CaFEyApIHrl9thEqToclDGTQ10NfI3Q5EcEhc8g0yaRlo1VTfuWs3bUFiOLng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tiOrWKmePsiUTc8axMcl8P9nytKGavYQFmREBGOtLkg=;
 b=f5J1HtG/JgRz9qXnbqVk6D7fiuKlGrtjIrQRNA/M7CUkump9tOjqrN5wJzZrmWKjrrwWGdM1+vpV5ZioCRgku43qpMIfDWVbTxjvRHO4vJbUEJOEIhMKJSIfxip8dU0MaDk1oIB8nhJgDsOuoEuSOqwBHGz2xsRRFsHIws+b1W+47Yx9qFSxBLZ09LMY9AIZUxQnFMbyaShHVhoIm8IIUChx6qYfJ1kx5K0sF12JjWOqU6G002xNfZwB/sBQG42brzuybj1XxQLa3s3IqTuZQ6DI3+97XynbWCgGnRYmgy8XHW8qM0x5iY6XU75wlFWBNq/6tuyFSRFKShU7R60tKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tiOrWKmePsiUTc8axMcl8P9nytKGavYQFmREBGOtLkg=;
 b=alXdq8qATDX5LZsJZqbmt86hUl/TjbgvWgdWlITNxM6LuGF3Py+WoHzt9OzaGPxiwePk6+O/W8YnDY/g9xw2ZvMk0RbuLTsBVa6lAvLG9h7nHWnxVpW3SQzv7AG277VRTb//B9BkshReFZ9gcZAeBriwjPp6YvjfDWuUVEDzYP8=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (20.179.89.80) by
 BYAPR02MB4598.namprd02.prod.outlook.com (52.135.239.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Mon, 27 Jan 2020 22:46:03 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::f5fd:4723:4a89:3ed9]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::f5fd:4723:4a89:3ed9%7]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 22:46:03 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: Sudeep Holla <sudeep.holla@arm.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Topic: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Index: AQHVxn8DFx2mcD2XT0SouhH9uTzcjqfqR5+AgA6zcwCAAG/7gIAAW+yAgATtBgA=
Date: Mon, 27 Jan 2020 22:46:03 +0000
Message-ID: <4DFDEBC9-9055-41A4-8BFB-D1EFB6EFE2DC@xilinx.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com> <20200124113239.GB40307@bogus>
In-Reply-To: <20200124113239.GB40307@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=JOLLYS@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dbf4eb9d-3783-493a-2f9c-08d7a37ab034
x-ms-traffictypediagnostic: BYAPR02MB4598:|BYAPR02MB4598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB459894539230FC42CC322ED3B80B0@BYAPR02MB4598.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(366004)(136003)(199004)(189003)(4326008)(76116006)(86362001)(186003)(26005)(36756003)(2906002)(81166006)(6512007)(81156014)(7416002)(316002)(478600001)(6486002)(8676002)(54906003)(66446008)(64756008)(66476007)(8936002)(6506007)(66556008)(66946007)(110136005)(71200400001)(33656002)(5660300002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4598;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P3GQo5ILW0fv0QeJpEmFkp26wUtA4MzLRQyhgnIhZlP53qMaTP0PVgqSsG44f7eeU+/7Vnal1SOfyCm+gOaA4yQsy8+xa9Jas9PzOKFoyxUp2g5gGDB18aNgxsBYe2kQoJSLpfkBHjL+P0tCzXcchzdijutokReENlr8BsPGBs7MS/VN9yFE68gcNB5Hh0UkxvWtqwmLWTEGl0P+A70+3O7EBIKQPeAVLKyD/E0BnW+tJonPe5qxYV+syAtsiW86Pj1hsF2JaIWCbpIaf5aAgYh2dIqz9tefBVyuwowBj+JjWEbtgtH+MQDvoeworXFqREU+kfsn3YVh9jbs+zkAKJZdl0vn98kXpaN2EFvgY6zG5MB8GKrjfOBxvEY7r4A97lYYqdTgNL0LpcWRSdYFu/zMIpaW3eDKS7/WKZKN4YPaSGz7Qu99vwY0uxBSJCP7
x-ms-exchange-antispam-messagedata: qPsFS7x9Gaa1rUo8QpXFdQbsqIHVIwQYwElGilAcUkgn6fb1eWq7T7BYJjMVRprd79IqtQCoLFdCnTP/XAsG7HfwlqzTplBH+FQe1ZmQ0vPQ36EmCnMEyvL6XO+Mze4z4j7CrclD2jDgUm1BRnXDsQ==
Content-ID: <6747B6FFE8F3A445A1E28DDF72478AF2@namprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbf4eb9d-3783-493a-2f9c-08d7a37ab034
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 22:46:03.2153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hR+Ic6kcHZ9xuSEiEWAiGavS4PeP2bdZZzmsumO7CEU01pHfQPtrY8EoSJua54Auu89LO3MQveYEUAX+kExRHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_144609_882112_C358AE0F 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.65 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3VkZWVwLA0KDQrvu79PbiAxLzI0LzIwLCAzOjMyIEFNLCAiU3VkZWVwIEhvbGxhIiA8c3Vk
ZWVwLmhvbGxhQGFybS5jb20+IHdyb3RlOg0KDQogICAgSGkgR3JlZywNCiAgICANCiAgICBUaGFu
a3MgZm9yIHJhaXNpbmcgdmFyaW91cyBpc3N1ZXMgdGhhdCBJIGhhdmUgcmVwZWF0ZWRseSBhc2tl
ZCBhbmQNCiAgICBjb25zdGFudGx5IGlnbm9yZWQuDQoNClNvcnJ5LCBuZXZlciBpbnRlbmRlZCB0
byBpZ25vcmUgeW91LiBXZSBhZ3JlZWQgdG8geW91ciBjb21tZW50cyBmb3IgcmVnIGFjY2VzcyBh
bmQgdGhhdCBwYXRjaCBpcyBhbHJlYWR5IHJlbW92ZWQuIEdHUyBhbmQgUEdHUyByZWdpc3RlcnMg
YXJlIGZvciBnZW5lcmFsIHB1cnBvc2UgcmVnaXN0ZXJzKHNldCBvZiA0KSBmb3IgdXNlcnMuIFNp
bmNlIHRoaXMgcmVnaXN0ZXJzIGJlbG9uZ3MgdG8gUE1VIHJlZ2lzdGVyIHNwYWNlLCBpbnRlcmZh
Y2UgaXMgcHJvdmlkZWQgdG8gcmVhZCBvciB3cml0ZSB0aGUgd2F5IHVzZXIgd2FudHMuIA0KICAg
IA0KICAgIE9uIEZyaSwgSmFuIDI0LCAyMDIwIGF0IDA3OjAzOjM5QU0gKzAxMDAsIEdyZWcgS0gg
d3JvdGU6DQogICAgPiBPbiBUaHUsIEphbiAyMywgMjAyMCBhdCAxMTo0Nzo1N1BNICswMDAwLCBK
b2xseSBTaGFoIHdyb3RlOg0KICAgID4gPiBIaSBHcmVnLA0KICAgID4gPg0KICAgIA0KICAgIFsu
Li5dDQogICAgDQogICAgPiA+IEZpcm13YXJlIGRyaXZlciB3YXMgY2hhbmdlZCBsYXRlciB0byBi
ZSBwbGF0Zm9ybSBkcml2ZXIgYnV0IHRoZXNlDQogICAgPiA+IGludGVyZmFjZXMgd2VyZSBkZWZp
bmVkIGVhcmxpZXIgYW5kIGFyZSBpbiB1c2UuDQogICAgPg0KICAgID4gRGVmaW5lZCBhbmQgaW4g
dXNlIHdoZXJlPyAgTm90IGluIHRoZSB1cHN0cmVhbSBrZXJuZWwgdHJlZSwgcmlnaHQ/ICBPcg0K
ICAgID4gYW0gSSBtaXNzaW5nIHRoZW0gc29tZXdoZXJlIGVsc2U/DQogICAgPg0KICAgIA0KICAg
IEV4YWN0bHkgYW5kIHRoZXkga2VlcCBzYXlpbmcgdGhlcmUgcGFydG5lcnMgYXJlIHVzaW5nIHRo
ZXNlIGZvciAzLTQgeWVhcnMNCiAgICBhbmQgdGhleSB3YW50IHRvIHJldGFpbiB0aGF0LiBJIGhh
dmUgdG9sZCB0aGVtIHRvIGNoYW5nZSBzZXZlcmFsIHRpbWVzLg0KDQpTb3JyeSB3ZSBtaWdodCBo
YXZlIG1pc3NlZCB5b3VyIGNvbW1lbnRzIGZvciB0aGlzIGNoYW5nZS4gV2UgYWdyZWUgdG8geW91
ciBhbmQgZ3JlZydzIGNvbW1lbnQgYW5kIHdpbGwgdXBkYXRlIHN5c2ZzIHBhdGguDQoNCg0KICAg
ID4gPiA+ID4gKwlyZXQgPSBrc3RydG9sKHRvaywgMTYsICZ2YWx1ZSk7DQogICAgPiA+ID4gPiAr
CWlmIChyZXQpIHsNCiAgICA+ID4gPiA+ICsJCXJldCA9IC1FRkFVTFQ7DQogICAgPiA+ID4gPiAr
CQlnb3RvIGVycjsNCiAgICA+ID4gPiA+ICsJfQ0KICAgID4gPiA+ID4gKw0KICAgID4gPiA+ID4g
KwlyZXQgPSBlZW1pX29wcy0+aW9jdGwoMCwgcmVhZF9pb2N0bCwgcmVnLCAwLCByZXRfcGF5bG9h
ZCk7DQogICAgPiA+ID4NCiAgICA+ID4gPiBUaGlzIGZlZWxzICJ0cmlja3kiLCBpZiB5b3UgdGll
IHRoaXMgdG8gdGhlIGRldmljZSB5b3UgaGF2ZSB5b3VyIGRyaXZlcg0KICAgID4gPiA+IGJvdW5k
IHRvLCB3aWxsIHRoaXMgbWFrZSBpdCBlYXNpZXIgaW5zdGVhZCBvZiBoYXZpbmcgdG8gZ28gdGhy
b3VnaCB0aGUNCiAgICA+ID4gPiBpb2N0bCBjYWxsYmFjaz8NCiAgICA+ID4gPg0KICAgID4gPg0K
ICAgID4gPiBHR1MoZ2VuZXJhbCBnbG9iYWwgc3RvcmFnZSkgcmVnaXN0ZXJzIGFyZSBpbiBQTVUg
c3BhY2UgYW5kIGxpbnV4IGRvZXNuJ3QgaGF2ZSBhY2Nlc3MgdG8gaXQNCiAgICA+ID4gSGVuY2Ug
aW9jdGwgaXMgdXNlZC4NCiAgICA+DQogICAgPiBXaHkgbm90IGp1c3QgYSAicmVhbCIgY2FsbCB0
byB0aGUgZHJpdmVyIHRvIG1ha2UgdGhpcyB0eXBlIG9mIHJlYWRpbmc/DQogICAgPiBZb3UgZG9u
J3QgaGF2ZSBpb2N0bHMgd2l0aGluIHRoZSBrZXJuZWwgZm9yIG90aGVyIGRyaXZlcnMgdG8gY2Fs
bCwNCiAgICA+IHRoYXQncyBub3QgbmVlZGVkIGF0IGFsbC4NCiAgICA+DQogICAgDQogICAgT2gg
eWVzLCB0aGlzIGlzIHNvIGJyb2tlbiBpbiBkZXNpZ24uIFRoaXMgZmlybXdhcmUgaXMgZGVzaWdu
ZWQgdG8gYWJzdHJhY3QNCiAgICB0aGUgcG93ZXIgYW5kIGNvbmZpZ3VyYXRpb24gbWFuYWdlbWVu
dCBvbiB0aGVpciBwbGF0Zm9ybSwgYnV0IHRoZXkgZGVjaWRlZA0KICAgIHRvIGFkZCBkaXJlY3Qg
cmVnaXN0ZXIgYWNjZXNzIHRvIHNvbWUgcmVnaXN0ZXJzIGFueXdheS4gV2VpcmQgdXNlIGNhc2Us
DQogICAgZG9uJ3QgZXZlbiBhc2suIEJ1dCBJIHN0cm9uZ2x5IG9iamVjdGVkIHN1Y2ggaW50ZXJm
YWNlIGluIHN5c2ZzIGV2ZW4gaWYNCiAgICB0aGV5IG1vdmVkIHVuZGVyIHBsYXRmb3JtIGRldmlj
ZS4gSWYgdGhleSBuZWVkIHRoaXMgYXQgYW55IGNvc3QsIEkgaGF2ZQ0KICAgIHN1Z2dlc3RlZCBk
ZWJ1Z2ZzLg0KICAgIA0KQXMgbWVudGlvbmVkLCB0aGVzZSByZWdpc3RlcnMgYXJlIGZvciB1c2Vy
cyAgYW5kIGZvciBzcGVjaWFsIG5lZWRzIHdoZXJlIHVzZXJzIHdhbnRzIHRvIHJldGFpbiB2YWx1
ZXMgb3ZlciByZXNldHMuIGJ1dCBhcyB0aGV5IGJlbG9uZyB0byBQTVUgYWRkcmVzcyBzcGFjZSwg
ICAgIHRoZXNlIGludGVyZmFjZSBBUElzIGFyZSBwcm92aWRlZC4gVGhleSBkb27igJl0IGFsbG93
IGFjY2VzcyB0byBhbnkgb3RoZXIgcmVnaXN0ZXJzLg0KDQoNCiAgICBbLi4uXQ0KICAgIA0KICAg
ID4gPg0KICAgID4gPiBBZ3JlZSBpdCB3aWxsIGJlIHNpbXBsZXIgYnV0IHRvIGFzIGZpcm13YXJl
IGRyaXZlciB3YXMgY2hhbmdlZCB0byBiZQ0KICAgID4gPiBwbGF0Zm9ybSBkcml2ZXIsIHRvIGtl
ZXAgcGF0aHMgc2FtZSwgd2UgdXNlZCBzeXNmcy4NCiAgICA+DQogICAgPiBLZWVwIHRoZW0gc2Ft
ZSBmcm9tIHdoYXQ/ICBVc2UgdGhlIHBsYXRmb3JtIGRldmljZSBhcyB0aGF0IGlzIHdoYXQgaXQg
aXMNCiAgICA+IHRoZXJlIGZvciwgZG8gbm90IGdvIGNyZWF0ZSBuZXcgYXBpcyB3aGVuIHRoZXkg
YXJlIG5vdCBuZWVkZWQgYXQgYWxsLg0KICAgID4NCiAgICANCiAgICArMSwgYW5kIHBsZWFzZSBk
b24ndCBhZGQgYW55IHN5c2ZzIHRoYXQgY2FuIHJlYWQvd3JpdGUgdGhvc2UgR0dTIHJlZ2lzdGVy
cw0KICAgIGRpcmVjdGx5IGZyb20gdXNlcnNwYWNlLiBNb3ZlIHRoZW0gdG8gZGVidWdmcyBpZiB5
b3UgYXJlIGRlc3BlcmF0ZSB0byBoYXZlDQogICAgc29tZXRoaW5nLg0KDQoNClRoYW5rcywNCkpv
bGx5IFNoYWgNCg0KICAgIA0KICAgIC0tDQogICAgUmVnYXJkcywNCiAgICBTdWRlZXANCiAgICAN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
