Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8028414AC5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 00:01:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/sit1iYFb0kx3ebojjIwA5uLYSQjRlSaEr8xprNRr0=; b=lmxSQRV/wDmHGL
	epAGPbTyySeqzbEFSZPwOCqg14sKBdC9nHexBww+P/fO88S9IqZrtR3oxaVdwFbliILCkU/vzM2Q9
	EV3jboW6pzkO+AXFEN71qkD/98R5Et8shJWDtbeNJC9gk9Gyo26nnH2yCVqR0dc09FBT3wuDheXiu
	jMc86PSvTxL6h8Uk3hYJRGXQptrd3962vTsmuZvnvhTnVv3mZInF8mgu6PTcI+gTR/vk53uo4f3Qx
	9buoOVtEZx7oXksNuhTXuukFbdM4N26JKvrzr8EBopMRsMZdpHHUYhdVN5ISMBiI6Fdo0+TYST1cz
	yjGLS18xTA4BVoS4brHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwDO4-0005Pz-Hv; Mon, 27 Jan 2020 23:01:44 +0000
Received: from mail-mw2nam10on2085.outbound.protection.outlook.com
 ([40.107.94.85] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwDNq-0005PM-QD
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 23:01:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFL1kTPwJFb6LxFDrLBUj0pTlvnqK3CTkIu5ngv7UTh1sWgQ078tj17H3AT1Q2RuNwCSwLp/3rzdj8RRcEmbFaNC+5dh4lHDSXHhXOBHfH2XE2+MT+Z02xgJy+836MFQxjYhxb/RsJqlwXDwkO8+4SvoSrcqYhBcP/mBOUqziKBBbkbnVTlhlYA0p5ue6mQu7+Z9ryNleL1mC+KaCvttxKcBG4He9gtgsGxHxxd2V6NlX0OnUNgwtnwsa9L/UqwexkAHkK2YEJL08U/uNATSsYD5R3dh4F5JDCTZDpkZ3vlLQZsyHQ0eSL3ULXYm26Eb9y1eyKnVgrs+Exzaazcv1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r6uDJiDKV93tYSNpvhPr8veaZIzJ1j4DlbgScOJPQ6A=;
 b=btWLQI1w7CNQfIfxPHuzME02bkyxJdpFMliXXmfuMEJlbXKaGLIMryUVTbk3K6gwYF1l8WTflUNvCoHxZwV7QHSxhYZuhrKK/AV8OlsE7mIQjAp4Ezx2A9qBnhcX/sKhwQnq1mMOXwWiQuAjTnr6mPWmqUCrZCRa93GLnly57VxXNIgcrxvJKkcgg8Wdu/U3AfuWBEKOs/K5yuuPs4avUQ9/LxKDaqEFFpccgEQuOghN1PtWo7Spdg+6lK+t0s0qTZR6rA03Ba/Tml3Fnhf0XIg94ob9SQRor0dNvUmpHss7vDv/TMgmywJTIcIJTQum16FD6Sx1WTPohGCezfp0+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r6uDJiDKV93tYSNpvhPr8veaZIzJ1j4DlbgScOJPQ6A=;
 b=Rdywfc4WtxP/jcv1s2cZsUKgJxTjGHwKphmhHmrlDS56lPLmN4rhCcp4neZu7gVTneIVHmQWSnLCvSiYjkK+BTWv6Zyzaj6PwtwOYrHVFkHns+95KZzEJppi2aAvzmBMnuBXT8l/p/pGlJO1QeCmvi15tWK3YGO7kkxVRDDE+AQ=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (20.179.89.80) by
 BYAPR02MB5285.namprd02.prod.outlook.com (20.176.255.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 23:01:27 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::f5fd:4723:4a89:3ed9]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::f5fd:4723:4a89:3ed9%7]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 23:01:27 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Topic: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Index: AQHVxn8DFx2mcD2XT0SouhH9uTzcjqfqR5+AgA6zcwCAAG/7gIAFTUAA
Date: Mon, 27 Jan 2020 23:01:27 +0000
Message-ID: <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
In-Reply-To: <20200124060339.GB2906795@kroah.com>
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
x-ms-office365-filtering-correlation-id: 7fdb3403-5d7d-461f-9f35-08d7a37cd6db
x-ms-traffictypediagnostic: BYAPR02MB5285:|BYAPR02MB5285:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB52855639ADDDC51A2D5757BAB80B0@BYAPR02MB5285.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(136003)(366004)(189003)(199004)(71200400001)(81166006)(81156014)(8676002)(478600001)(8936002)(86362001)(6506007)(186003)(4326008)(33656002)(2906002)(53546011)(6512007)(7416002)(26005)(6916009)(36756003)(66946007)(76116006)(6486002)(66556008)(66446008)(66476007)(64756008)(316002)(54906003)(2616005)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5285;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xnk6d1t8VdGoWamCCPRwe8F3gLwyvfO1BY6Aitr3djkXwzZCzlReIDZR/JshMA5j0yfg5ZasVrkij5MLtWXVdk+J/kiXVMaq8GR4seiCFUbugg8Fb8LWaOqA+0VNapk2fgCSAhXvO4+XCoHEieF7KOXh/ndf+znec7wnF6njFPWROxbPokqc7FqprbHPflOIGNPh/F0tCcAmn/ANTrHbxR42nr62fl6qYJJgXjtXoLzhjvglAzweMI8KBPUWXQPkK/BoGfjG3XC1rQLSA4r3noO5BmRry5tB0TuUsRcFd4VDHyZg2el01fTb/qF7c6PA3mQDNBn7jRBwyDq649F5jBaj/Yifn8b3XIulxdZboG148AqcalvqkwlSl8r9NqvO4XRh+iXpoDcx+jgWxEXLR6+2Sxcxvdr0YR6f7N80y1FbG5qUuiNQeE4EWGiRN1Ps
x-ms-exchange-antispam-messagedata: DfJzJnQ/0JKqvQe3QkqjFsMPRYPOVVedJHPSvK9rtW8jvJq1yKqeUIbJUiosIOnjwe99LzFlVq7ltq8uoX43BlAOSrpgyef89SMSQq5ak5QYVWELKrggGg7p77ttiQB4ealKSvQxi+z5/C+TKZc9OQ==
Content-ID: <B3418A8D91E5604CA36A9A11FC7C6670@namprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fdb3403-5d7d-461f-9f35-08d7a37cd6db
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 23:01:27.0874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D3AxTNbgAjsUIvJZZ76WgVFkEV8VnWc8+7u5rXT9C4rHJsB7m7V9B2+bRIYbdgJS4lcS2UbyrpI3+oTquB+KMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5285
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_150130_872708_B0711F18 
X-CRM114-Status: GOOD (  31.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.85 listed in list.dnswl.org]
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
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3JlZywNCg0K77u/T24gMS8yMy8yMCwgMTA6MDMgUE0sICJHcmVnIEtIIiA8Z3JlZ2toQGxp
bnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOg0KDQogICAgT24gVGh1LCBKYW4gMjMsIDIwMjAgYXQg
MTE6NDc6NTdQTSArMDAwMCwgSm9sbHkgU2hhaCB3cm90ZToNCiAgICA+IEhpIEdyZWcsDQogICAg
PiANCiAgICA+IFRoYW5rcyBmb3IgdGhlIHJldmlldy4NCiAgICA+IA0KICAgID4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KICAgID4gPiBGcm9tOiBHcmVnIEtIIDxncmVna2hAbGludXhm
b3VuZGF0aW9uLm9yZz4NCiAgICA+ID4gU2VudDogVHVlc2RheSwgSmFudWFyeSAxNCwgMjAyMCA2
OjUzIEFNDQogICAgPiA+IFRvOiBKb2xseSBTaGFoIDxKT0xMWVNAeGlsaW54LmNvbT4NCiAgICA+
ID4gQ2M6IGFyZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc7IG1pbmdvQGtlcm5lbC5vcmc7IG1hdHRA
Y29kZWJsdWVwcmludC5jby51azsNCiAgICA+ID4gc3VkZWVwLmhvbGxhQGFybS5jb207IGhrYWxs
d2VpdDFAZ21haWwuY29tOyBrZWVzY29va0BjaHJvbWl1bS5vcmc7DQogICAgPiA+IGRtaXRyeS50
b3Jva2hvdkBnbWFpbC5jb207IE1pY2hhbCBTaW1layA8bWljaGFsc0B4aWxpbnguY29tPjsgUmFq
YW4gVmFqYQ0KICAgID4gPiA8UkFKQU5WQHhpbGlueC5jb20+OyBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LQ0KICAgID4gPiBrZXJuZWxAdmdlci5rZXJuZWwub3Jn
OyBSYWphbiBWYWphIDxSQUpBTlZAeGlsaW54LmNvbT47IEpvbGx5IFNoYWgNCiAgICA+ID4gPEpP
TExZU0B4aWxpbnguY29tPg0KICAgID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDEvNF0gZmly
bXdhcmU6IHhpbGlueDogQWRkIHN5c2ZzIGludGVyZmFjZQ0KICAgID4gPiANCiAgICA+ID4gT24g
V2VkLCBKYW4gMDgsIDIwMjAgYXQgMDM6NTQ6MjBQTSAtMDgwMCwgSm9sbHkgU2hhaCB3cm90ZToN
CiAgICA+ID4gPiBGcm9tOiBSYWphbiBWYWphIDxyYWphbi52YWphQHhpbGlueC5jb20+DQogICAg
PiA+ID4NCiAgICA+ID4gPiBBZGQgRmlybXdhcmUtZ2dzIHN5c2ZzIGludGVyZmFjZSB3aGljaCBw
cm92aWRlcyByZWFkL3dyaXRlDQogICAgPiA+ID4gaW50ZXJmYWNlIHRvIGdsb2JhbCBzdG9yYWdl
IHJlZ2lzdGVycy4NCiAgICA+ID4gPg0KICAgID4gPiA+IFNpZ25lZC1vZmYtYnk6IFJhamFuIFZh
amEgPHJhamFuLnZhamFAeGlsaW54LmNvbT4NCiAgICA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNo
YWwgU2ltZWsgPG1pY2hhbC5zaW1la0B4aWxpbnguY29tPg0KICAgID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvbGx5IFNoYWggPGpvbGx5c0B4aWxpbnguY29tPg0KICAgID4gPiA+IC0tLQ0KICAgID4g
PiA+IENoYW5nZXMgaW4gdjI6DQogICAgPiA+ID4gIC0gVXBkYXRlZCBMaW51eCBrZXJuZWwgdmVy
c2lvbiBpbiBkb2N1bWVudGF0aW9uLg0KICAgID4gPiA+ICAtIFVzZWQgREVWSUNFX0FUVFJfKiBh
bmQgQVRUUklCVVRFX0dST1VQUyBtYWNyb3MuDQogICAgPiA+ID4gIC0gRnJlZSBLb2JqZWN0IHN0
cnVjdHVyZSBpbiBjYXNlIG9mIGVycm9yLg0KICAgID4gPiA+ICAtIFJlc29sdmVkIHNtYXRjaCBl
cnJvcnMuDQogICAgPiA+ID4gIC0gVXBkYXRlZCBTaWduZWQtb2ZmLWJ5IHNlcXVlbmNlLg0KICAg
ID4gPiA+IC0tLQ0KICAgID4gPiA+ICBEb2N1bWVudGF0aW9uL0FCSS9zdGFibGUvc3lzZnMtZmly
bXdhcmUtenlucW1wIHwgIDUwICsrKysrDQogICAgPiA+ID4gIGRyaXZlcnMvZmlybXdhcmUveGls
aW54L01ha2VmaWxlICAgICAgICAgICAgICAgfCAgIDIgKy0NCiAgICA+ID4gPiAgZHJpdmVycy9m
aXJtd2FyZS94aWxpbngvenlucW1wLWdncy5jICAgICAgICAgICB8IDI4NA0KICAgID4gPiArKysr
KysrKysrKysrKysrKysrKysrKysrDQogICAgPiA+ID4gIGRyaXZlcnMvZmlybXdhcmUveGlsaW54
L3p5bnFtcC5jICAgICAgICAgICAgICAgfCAgMzIgKysrDQogICAgPiA+ID4gIGluY2x1ZGUvbGlu
dXgvZmlybXdhcmUveGxueC16eW5xbXAuaCAgICAgICAgICAgfCAgMTAgKw0KICAgID4gPiA+ICA1
IGZpbGVzIGNoYW5nZWQsIDM3NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQogICAgPiA+
ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL0FCSS9zdGFibGUvc3lzZnMtZmly
bXdhcmUtenlucW1wDQogICAgPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Zpcm13
YXJlL3hpbGlueC96eW5xbXAtZ2dzLmMNCiAgICA+ID4gPg0KICAgID4gPiA+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL0FCSS9zdGFibGUvc3lzZnMtZmlybXdhcmUtenlucW1wDQogICAgPiA+
IGIvRG9jdW1lbnRhdGlvbi9BQkkvc3RhYmxlL3N5c2ZzLWZpcm13YXJlLXp5bnFtcA0KICAgID4g
PiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQogICAgPiA+ID4gaW5kZXggMDAwMDAwMC4uY2ZmYTJm
Yw0KICAgID4gPiA+IC0tLSAvZGV2L251bGwNCiAgICA+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9u
L0FCSS9zdGFibGUvc3lzZnMtZmlybXdhcmUtenlucW1wDQogICAgPiA+ID4gQEAgLTAsMCArMSw1
MCBAQA0KICAgID4gPiA+ICtXaGF0OgkJL3N5cy9maXJtd2FyZS96eW5xbXAvZ2dzKg0KICAgID4g
PiANCiAgICA+ID4gV2h5IGFyZSB0aGVzZSBhdHRyaWJ1dGVzIGp1c3Qgbm90IGhhbmdpbmcgb2Zm
IG9mIHRoZSBwbGF0Zm9ybSBkZXZpY2UgZm9yDQogICAgPiA+IHRoZSBmaXJtd2FyZSBjb250cm9s
bGVyPyAgV2h5IGRvIHlvdSBuZWVkIGEgbmV3IHN1YmRpciB1bmRlciAiZmlybXdhcmUiPw0KICAg
ID4gDQogICAgPiBGaXJtd2FyZSBkcml2ZXIgd2FzIGNoYW5nZWQgbGF0ZXIgdG8gYmUgcGxhdGZv
cm0gZHJpdmVyIGJ1dCB0aGVzZSBpbnRlcmZhY2VzIHdlcmUgZGVmaW5lZCANCiAgICA+IGVhcmxp
ZXIgYW5kIGFyZSBpbiB1c2UuDQogICAgDQogICAgRGVmaW5lZCBhbmQgaW4gdXNlIHdoZXJlPyAg
Tm90IGluIHRoZSB1cHN0cmVhbSBrZXJuZWwgdHJlZSwgcmlnaHQ/ICBPcg0KICAgIGFtIEkgbWlz
c2luZyB0aGVtIHNvbWV3aGVyZSBlbHNlPw0KDQpTb3JyeSBJIG1lYW50IFhpbGlueCBrZXJuZWwg
dXNlcnMuIFdlIHdpbGwgdXBkYXRlIGl0IGFzIHBlciB5b3VyIHN1Z2dlc3Rpb24uDQogICAgDQog
ICAgPiA+ID4gKwlyZXQgPSBrc3RydG9sKHRvaywgMTYsICZ2YWx1ZSk7DQogICAgPiA+ID4gKwlp
ZiAocmV0KSB7DQogICAgPiA+ID4gKwkJcmV0ID0gLUVGQVVMVDsNCiAgICA+ID4gPiArCQlnb3Rv
IGVycjsNCiAgICA+ID4gPiArCX0NCiAgICA+ID4gPiArDQogICAgPiA+ID4gKwlyZXQgPSBlZW1p
X29wcy0+aW9jdGwoMCwgcmVhZF9pb2N0bCwgcmVnLCAwLCByZXRfcGF5bG9hZCk7DQogICAgPiA+
IA0KICAgID4gPiBUaGlzIGZlZWxzICJ0cmlja3kiLCBpZiB5b3UgdGllIHRoaXMgdG8gdGhlIGRl
dmljZSB5b3UgaGF2ZSB5b3VyIGRyaXZlcg0KICAgID4gPiBib3VuZCB0bywgd2lsbCB0aGlzIG1h
a2UgaXQgZWFzaWVyIGluc3RlYWQgb2YgaGF2aW5nIHRvIGdvIHRocm91Z2ggdGhlDQogICAgPiA+
IGlvY3RsIGNhbGxiYWNrPw0KICAgID4gPiANCiAgICA+IA0KICAgID4gR0dTKGdlbmVyYWwgZ2xv
YmFsIHN0b3JhZ2UpIHJlZ2lzdGVycyBhcmUgaW4gUE1VIHNwYWNlIGFuZCBsaW51eCBkb2Vzbid0
IGhhdmUgYWNjZXNzIHRvIGl0IA0KICAgID4gSGVuY2UgaW9jdGwgaXMgdXNlZC4NCiAgICANCiAg
ICBXaHkgbm90IGp1c3QgYSAicmVhbCIgY2FsbCB0byB0aGUgZHJpdmVyIHRvIG1ha2UgdGhpcyB0
eXBlIG9mIHJlYWRpbmc/DQogICAgWW91IGRvbid0IGhhdmUgaW9jdGxzIHdpdGhpbiB0aGUga2Vy
bmVsIGZvciBvdGhlciBkcml2ZXJzIHRvIGNhbGwsDQogICAgdGhhdCdzIG5vdCBuZWVkZWQgYXQg
YWxsLg0KDQp0aGVzZSByZWdpc3RlcnMgYXJlIGZvciB1c2VycyAgYW5kIGZvciBzcGVjaWFsIG5l
ZWRzIHdoZXJlIHVzZXJzIHdhbnRzIHRvIHJldGFpbiB2YWx1ZXMgb3ZlciByZXNldHMuIGJ1dCBh
cyB0aGV5IGJlbG9uZyB0byBQTVUgYWRkcmVzcyBzcGFjZSwgICAgIHRoZXNlIGludGVyZmFjZSBB
UElzIGFyZSBwcm92aWRlZC4gVGhleSBkb27igJl0IGFsbG93IGFjY2VzcyB0byBhbnkgb3RoZXIg
cmVnaXN0ZXJzLg0KICAgIA0KICAgID4gPiA+ICtpbnQgenlucW1wX3BtX2dnc19pbml0KHN0cnVj
dCBrb2JqZWN0ICpwYXJlbnRfa29iaikNCiAgICA+ID4gPiArew0KICAgID4gPiA+ICsJcmV0dXJu
IHN5c2ZzX2NyZWF0ZV9ncm91cChwYXJlbnRfa29iaiwgenlucW1wX2dnc19ncm91cHNbMF0pOw0K
ICAgID4gPiANCiAgICA+ID4gWW91IG1pZ2h0IGJlIHJhY2luZyB1c2Vyc3BhY2UgaGVyZSBhbmQg
bG9vc2luZyA6KA0KICAgID4gDQogICAgPiBQcm9iIGlzIGNhbGxlZCBiZWZvcmUgdXNlciBzcGFj
ZSBpcyBub3RpZmllZCBhYm91dCBzeXNmcyBzbyByYWNpbmcgc2hvdWxkbid0IGhhcHBlbi4NCiAg
ICANCiAgICAic2hvdWxkbid0Ij8gIEhvdyBkbyB5b3Uga25vdyB0aGlzPw0KDQpTaW5jZSBmaXJt
d2FyZSBkcml2ZXIgaXMgYWx3YXlzIGJ1aWx0LWluICh3ZSBkb24ndCBwcm92aWRlIHN1cHBvcnQg
dG8gdXNlIGFzIG1vZHVsZSksIHVzZXIgc3BhY2Ugd29uJ3QgYmUgYXZhaWxhYmxlIGJlZm9yZSBw
cm9iIGlzIGNvbXBsZXRlLiBDb3JyZWN0IGlmIEkgYW0gd3JvbmcuDQogICAgDQogICAgPiBPciB5
b3UgYXJlIHJlZmVycmluZyB0byBzb21lIG90aGVyIHJhY2UgY29uZGl0aW9uPw0KICAgIA0KICAg
IFlvdXIga29iamVjdCB3YXMgY3JlYXRlZCwgYW5kIG5vdGlmaWVkIHVzZXJzcGFjZSB0aGF0IGl0
IHdhcyBwcmVzZW50IGFuZA0KICAgIHRoZW4gc29tZXRpbWUgYWZ0ZXIgdGhhdCB5b3UgYWRkIG1v
cmUgYXR0cmlidXRlcyB3aGljaCB1c2Vyc3BhY2UgaGFzIG5vDQogICAgaWRlYSBhcmUgdGhlcmUu
DQogICAgDQogICAgSWYgeW91IHVzZSB0aGUgcHJvcGVyIGRldmljZSBtb2RlbCBpbnRlcmZhY2Vz
LCBub25lIG9mIHRoZXNlIHByb2JsZW1zDQogICAgd291bGQgYmUgdGhlcmUuDQoNCk9rIHdlIHdp
bGwgdXBkYXRlIGl0Lg0KDQogICAgDQogICAgPiANCiAgICA+ID4gDQogICAgPiA+ID4gK30NCiAg
ICA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJtd2FyZS94aWxpbngvenlucW1wLmMNCiAg
ICA+ID4gYi9kcml2ZXJzL2Zpcm13YXJlL3hpbGlueC96eW5xbXAuYw0KICAgID4gPiA+IGluZGV4
IDc1YmRmYWEuLjRjMTExN2QgMTAwNjQ0DQogICAgPiA+ID4gLS0tIGEvZHJpdmVycy9maXJtd2Fy
ZS94aWxpbngvenlucW1wLmMNCiAgICA+ID4gPiArKysgYi9kcml2ZXJzL2Zpcm13YXJlL3hpbGlu
eC96eW5xbXAuYw0KICAgID4gPiA+IEBAIC00NzMsNiArNDczLDEwIEBAIHN0YXRpYyBpbmxpbmUg
aW50IHp5bnFtcF9pc192YWxpZF9pb2N0bCh1MzIgaW9jdGxfaWQpDQogICAgPiA+ID4gIAljYXNl
IElPQ1RMX0dFVF9QTExfRlJBQ19NT0RFOg0KICAgID4gPiA+ICAJY2FzZSBJT0NUTF9TRVRfUExM
X0ZSQUNfREFUQToNCiAgICA+ID4gPiAgCWNhc2UgSU9DVExfR0VUX1BMTF9GUkFDX0RBVEE6DQog
ICAgPiA+ID4gKwljYXNlIElPQ1RMX1dSSVRFX0dHUzoNCiAgICA+ID4gPiArCWNhc2UgSU9DVExf
UkVBRF9HR1M6DQogICAgPiA+ID4gKwljYXNlIElPQ1RMX1dSSVRFX1BHR1M6DQogICAgPiA+ID4g
KwljYXNlIElPQ1RMX1JFQURfUEdHUzoNCiAgICA+ID4gDQogICAgPiA+IEh1aD8/Pw0KICAgID4g
DQogICAgPiBTb3JyeSBub3Qgc3VyZSBhYm91dCB5b3VyIGNvbmNlcm4gaGVyZS4gVGhlc2UgcmVn
aXN0ZXJzIGFyZSBpbiBQTVUgc3BhY2UgYW5kIGhlbmNlDQogICAgPiBJb2N0bCBpcyBuZWVkZWQg
dG8gbGV0IGxpbnV4IGFjY2VzcyB0aGVtLg0KICAgIA0KICAgIHVzZXJzcGFjZSBvciBrZXJuZWxz
cGFjZT8NCiAgICANCiAgICBZb3Ugc2VlbSB0byBiZSBtaXhpbmcgdGhlbSBib3RoIGhlcmUuDQoN
ClRoZXkgYXJlIGluIFBsYXRmb3JtIE1hbmFnZW1lbnQgVW5pdCByZWdpc3RlciBhZGRyZXNzIHNw
YWNlIHNvIGl0IGFsbG93cyBvbmx5IHNlY3VyZSBhY2Nlc3MuIEhlbmNlIGZvciBsaW51eCB0byBh
Y2Nlc3MgaXQsIGludGVyZmFjZSBBUElzIGFyZSBwcm92aWRlZC4gDQogICAgDQogICAgPiANCiAg
ICA+ID4gDQogICAgPiA+ID4gIAkJcmV0dXJuIDE7DQogICAgPiA+ID4gIAlkZWZhdWx0Og0KICAg
ID4gPiA+ICAJCXJldHVybiAwOw0KICAgID4gPiA+IEBAIC03MDQsNiArNzA4LDI4IEBAIGNvbnN0
IHN0cnVjdCB6eW5xbXBfZWVtaV9vcHMNCiAgICA+ID4gKnp5bnFtcF9wbV9nZXRfZWVtaV9vcHMo
dm9pZCkNCiAgICA+ID4gPiAgfQ0KICAgID4gPiA+ICBFWFBPUlRfU1lNQk9MX0dQTCh6eW5xbXBf
cG1fZ2V0X2VlbWlfb3BzKTsNCiAgICA+ID4gPg0KICAgID4gPiA+ICtzdGF0aWMgaW50IHp5bnFt
cF9wbV9zeXNmc19pbml0KHZvaWQpDQogICAgPiA+ID4gK3sNCiAgICA+ID4gPiArCXN0cnVjdCBr
b2JqZWN0ICp6eW5xbXBfa29iajsNCiAgICA+ID4gPiArCWludCByZXQ7DQogICAgPiA+ID4gKw0K
ICAgID4gPiA+ICsJenlucW1wX2tvYmogPSBrb2JqZWN0X2NyZWF0ZV9hbmRfYWRkKCJ6eW5xbXAi
LCBmaXJtd2FyZV9rb2JqKTsNCiAgICA+ID4gPiArCWlmICghenlucW1wX2tvYmopIHsNCiAgICA+
ID4gPiArCQlwcl9lcnIoInp5bnFtcDogRmlybXdhcmUga29iaiBhZGQgZmFpbGVkLlxuIik7DQog
ICAgPiA+ID4gKwkJcmV0dXJuIC1FTk9NRU07DQogICAgPiA+ID4gKwl9DQogICAgPiA+ID4gKw0K
ICAgID4gPiA+ICsJcmV0ID0genlucW1wX3BtX2dnc19pbml0KHp5bnFtcF9rb2JqKTsNCiAgICA+
ID4gPiArCWlmIChyZXQpIHsNCiAgICA+ID4gPiArCQlrb2JqZWN0X3B1dCh6eW5xbXBfa29iaik7
DQogICAgPiA+ID4gKwkJcHJfZXJyKCIlcygpIEdHUyBpbml0IGZhaWwgd2l0aCBlcnJvciAlZFxu
IiwNCiAgICA+ID4gPiArCQkgICAgICAgX19mdW5jX18sIHJldCk7DQogICAgPiA+ID4gKwkJZ290
byBlcnI7DQogICAgPiA+ID4gKwl9DQogICAgPiA+ID4gK2VycjoNCiAgICA+ID4gPiArCXJldHVy
biByZXQ7DQogICAgPiA+ID4gK30NCiAgICA+ID4gPiArDQogICAgPiA+ID4gIHN0YXRpYyBpbnQg
enlucW1wX2Zpcm13YXJlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQogICAg
PiA+ID4gIHsNCiAgICA+ID4gPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7DQog
ICAgPiA+ID4gQEAgLTc1MSw2ICs3NzcsMTIgQEAgc3RhdGljIGludCB6eW5xbXBfZmlybXdhcmVf
cHJvYmUoc3RydWN0DQogICAgPiA+IHBsYXRmb3JtX2RldmljZSAqcGRldikNCiAgICA+ID4gPiAg
CS8qIEFzc2lnbiBlZW1pX29wc190YWJsZSAqLw0KICAgID4gPiA+ICAJZWVtaV9vcHNfdGJsID0g
JmVlbWlfb3BzOw0KICAgID4gPiA+DQogICAgPiA+ID4gKwlyZXQgPSB6eW5xbXBfcG1fc3lzZnNf
aW5pdCgpOw0KICAgID4gPiANCiAgICA+ID4gU2VlLCB5b3UgaGF2ZSBhIHBsYXRmb3JtIGRldmlj
ZSwgaGFuZyB0aGUgYXR0cmlidXRlcyBvZmYgb2YgdGhhdCBpbnN0ZWFkDQogICAgPiA+IG9mIG1h
a2luZyBhIGtvYmplY3QgYW5kIGRldGF0Y2hpbmcgeW91cnNlbGYgZnJvbSB0aGUgZ2xvYmFsIGRl
dmljZSB0cmVlIQ0KICAgID4gPiANCiAgICA+ID4gUGxlYXNlIHJlZG8gdGhpcywgSSB0aGluayBp
dCB3aWxsIG1ha2UgaXQgYSBsb3Qgc2ltcGxlciBhbmQgbW9yZQ0KICAgID4gPiBvYnZpb3VzLg0K
ICAgID4gDQogICAgPiBBZ3JlZSBpdCB3aWxsIGJlIHNpbXBsZXIgYnV0IHRvIGFzIGZpcm13YXJl
IGRyaXZlciB3YXMgY2hhbmdlZCB0byBiZSBwbGF0Zm9ybSBkcml2ZXIsDQogICAgPiB0byBrZWVw
IHBhdGhzIHNhbWUsIHdlIHVzZWQgc3lzZnMuDQogICAgDQogICAgS2VlcCB0aGVtIHNhbWUgZnJv
bSB3aGF0PyAgVXNlIHRoZSBwbGF0Zm9ybSBkZXZpY2UgYXMgdGhhdCBpcyB3aGF0IGl0IGlzDQog
ICAgdGhlcmUgZm9yLCBkbyBub3QgZ28gY3JlYXRlIG5ldyBhcGlzIHdoZW4gdGhleSBhcmUgbm90
IG5lZWRlZCBhdCBhbGwuDQoNCk9rIHdlIHdpbGwgdXBkYXRlIGl0IGluIG5leHQgdmVyc2lvbi4N
Cg0KVGhhbmtzLA0KSm9sbHkgU2hhaA0KICAgIA0KDQogICAgdGhhbmtzLA0KICAgIA0KICAgIGdy
ZWcgay1oDQogICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
