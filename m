Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE2A14E643
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 00:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wvC8VfyVuUEuKa51rMF06IgnzJr4ONGGC/yi/CyCyM=; b=Q9d+rPCWM/I/Ov
	E0OWVfpoL4bKd3+TnuG7DeSquUa2pkYo2RXji7HaAaycAK8WeDI9Zp4EHhoOAZrbQWHt3I9B+tsSz
	iFAftYY2ag6sKV6t+oB52RxFa9fnwkFHRV2Px361k5HLTyiaXZnPTIiKhxcOs2NJGqUNN4RmkIoVk
	kPqkxAYDFsZF0zDv05cVkYAh16Kl5kRT0JvwihK1dWxiJIQsUZkkWvPNOWNuwm49pxDxKupNYCDwL
	/7il10U3rgSU6ZQL6rRLG3s9+naIqgusu6Fs8tiK/pA+AAY4QL3JbFyamre7m9an5hpD/E1ERzVS2
	LOECkyVYap3mkfV4rgAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixJiP-0006zL-4O; Thu, 30 Jan 2020 23:59:17 +0000
Received: from mail-mw2nam12on2067.outbound.protection.outlook.com
 ([40.107.244.67] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixJiG-0006yu-52
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 23:59:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zpaaz1YwJKy+ULpNl6Ad0Yx4dGfpgacc+wAWsdvKXyW5HD28IE4J7roGxpcTLlCYKLjy65RY9hTbEyultmNiIWSkgr1MBiTmZXRIBfdVBXX93E2IwZGEbm7b2znKLOMBKJWc2v/0Rcdzrkqe4R+aNj/vJT5h+Ws+Pcf87o7GNTMTEx4YmxbJwtHmHrnRthYyk5+UIyIN9+MfnnTFeBG6y5r0RIFLBBO4NOb0FG8rJ4JWUGaCS+KdUSxfEl1rRSZX6apW6fGKRlBK3oNRAw4Cw2mWW7EnVKEtmwa55pQDWE0ZUPyz0svgyUZBlY6b/0FPYBa5qKfh1dnL08g2tme0lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ChQPLMwgAupoK2baIMozrxIzkFLZXHaGyJnoCV4K8O4=;
 b=Rf9i1SyHkpIWM9nEYDjbpLhP/zcZt+ibdgY/zaZzxv5lgGeQeu4y/Lg5d+xY1sKVOMzkAW2Hn7+OPWGhLLrQZBwbTqitCo25idyul8ZCqta/yqBBMOAlw703wme6kb6Zy+kkiDJGkecDGrzOwx0FvBQTGozWkXS3wPN0Tss3Woqdv+eKO9rR3zd4UhoxzojYDVQ48KhXw/KSoFL+isOfpkwuqpUPX6bXrNiy1UMbsnwfnCoHwdNDne9u6VQ8C1z6ITQrqtnnU1/ZPhXJuhgqK1+n1W2u9H0ZSxN7Cmelcsn5gQHgyTOFmPQTtqTb4nBC//9udBXTm1wOyq+aKczS6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ChQPLMwgAupoK2baIMozrxIzkFLZXHaGyJnoCV4K8O4=;
 b=bCTWH9rYQkcGgK5e62rczPGUx5w+MpK4Jo0o7V9snJRHU8iSOHMvNYdIZPXgbg9nwwNfNQVLL/Wd2yxldiLE3+xozeDMe1yhze/fuTwsMLmxOHR3FwaBkCol3FgiuxcaCe6ErHtibQybWWPQiZpDKIU38eDWZTT+J9mraypmHwc=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (20.179.89.80) by
 BYAPR02MB5000.namprd02.prod.outlook.com (20.177.124.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Thu, 30 Jan 2020 23:59:03 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::f5fd:4723:4a89:3ed9]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::f5fd:4723:4a89:3ed9%7]) with mapi id 15.20.2665.026; Thu, 30 Jan 2020
 23:59:03 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Topic: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Index: AQHVxn8DFx2mcD2XT0SouhH9uTzcjqfqR5+AgA6zcwCAAG/7gIAFTUAAgAEC8QCAA8QlAA==
Date: Thu, 30 Jan 2020 23:59:03 +0000
Message-ID: <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
In-Reply-To: <20200128062814.GA2097606@kroah.com>
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
x-ms-office365-filtering-correlation-id: e8cd1495-1c71-480c-2c4f-08d7a5e06254
x-ms-traffictypediagnostic: BYAPR02MB5000:|BYAPR02MB5000:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB500096B4958E3BB95C518A41B8040@BYAPR02MB5000.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02981BE340
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(199004)(189003)(6512007)(2906002)(6506007)(316002)(66946007)(66446008)(6486002)(86362001)(64756008)(66556008)(76116006)(66476007)(5660300002)(2616005)(186003)(54906003)(71200400001)(26005)(8676002)(33656002)(4326008)(81166006)(81156014)(36756003)(7416002)(6916009)(8936002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5000;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vHgxji4mA/8uJT4Apiu6RSuXRtcp2BwlTHUmazx3UfBNdUFHHZJ2qnbvszUfQ6fDEFehtcCUl0nBxLp/r0zM6GccdltC3m/J5rA8WNw1S9qBy1Nb/4v/pROExWK89yI62QObRlv9JJwPFELO2qCW4JlF1jGtfdo9icf6XYKcbmooLqeCIMRbKCJaahVP5we1saBMWOk9dHHJqectGOdYv3mCw3v5YD/317OsD5Y20cQD02NqK1sXnqMrsHLsLGe5q9YPh2DRAylwVg3X/BJaFoG+a6ev7XGldhmRcvRagpOJLNV+SlmxOShHxBMFM7k5rVk85k70L2IppRxVq3/ZyD7WR6P3/V9a6Ac+ZL9OwlfKbJoLRQZK3O7xRUxolnX2GzxJDuR+whSkSwZiP7KTUdRFterZtpQEuDZ24qjr7feMkeQWALX7swHxd50vpnXE
x-ms-exchange-antispam-messagedata: dRHz0dE7S30o5EY29uBOO1H3ekm5dqEgmWLgcSSiB2dW/9dFJ6M7aZWEBDHLlNQYGfM0iP9ho/0ZbMO5kGNB/N9or522AJ5fR3JhLdO1KnynXPB59K91JrmHl+3U6SNp/ApxZHwOkEx14dCVfkTb4A==
Content-ID: <37BA98433BEAB947A4397FF0B5BDF026@namprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8cd1495-1c71-480c-2c4f-08d7a5e06254
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2020 23:59:03.5786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1twXg3nDn1ZSZLAJewoX7bLYZcTy9nfcxRhOltZFX4qTd2cPzcGC7Kj/y3eeTxaQnMpiO+JyKmxuAEP0xTn0nQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_155908_211945_AFB6BB31 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

SGkgR3JlZywNCg0K77u/T24gMS8yNy8yMCwgMTA6MjggUE0sICJsaW51eC1rZXJuZWwtb3duZXJA
dmdlci5rZXJuZWwub3JnIG9uIGJlaGFsZiBvZiBHcmVnIEtIIiA8bGludXgta2VybmVsLW93bmVy
QHZnZXIua2VybmVsLm9yZyBvbiBiZWhhbGYgb2YgZ3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+
IHdyb3RlOg0KDQogICAgT24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMTE6MDE6MjdQTSArMDAwMCwg
Sm9sbHkgU2hhaCB3cm90ZToNCiAgICA+ICAgICA+ID4gPiArCXJldCA9IGtzdHJ0b2wodG9rLCAx
NiwgJnZhbHVlKTsNCiAgICA+ICAgICA+ID4gPiArCWlmIChyZXQpIHsNCiAgICA+ICAgICA+ID4g
PiArCQlyZXQgPSAtRUZBVUxUOw0KICAgID4gICAgID4gPiA+ICsJCWdvdG8gZXJyOw0KICAgID4g
ICAgID4gPiA+ICsJfQ0KICAgID4gICAgID4gPiA+ICsNCiAgICA+ICAgICA+ID4gPiArCXJldCA9
IGVlbWlfb3BzLT5pb2N0bCgwLCByZWFkX2lvY3RsLCByZWcsIDAsIHJldF9wYXlsb2FkKTsNCiAg
ICA+ICAgICA+ID4gDQogICAgPiAgICAgPiA+IFRoaXMgZmVlbHMgInRyaWNreSIsIGlmIHlvdSB0
aWUgdGhpcyB0byB0aGUgZGV2aWNlIHlvdSBoYXZlIHlvdXIgZHJpdmVyDQogICAgPiAgICAgPiA+
IGJvdW5kIHRvLCB3aWxsIHRoaXMgbWFrZSBpdCBlYXNpZXIgaW5zdGVhZCBvZiBoYXZpbmcgdG8g
Z28gdGhyb3VnaCB0aGUNCiAgICA+ICAgICA+ID4gaW9jdGwgY2FsbGJhY2s/DQogICAgPiAgICAg
PiA+IA0KICAgID4gICAgID4gDQogICAgPiAgICAgPiBHR1MoZ2VuZXJhbCBnbG9iYWwgc3RvcmFn
ZSkgcmVnaXN0ZXJzIGFyZSBpbiBQTVUgc3BhY2UgYW5kIGxpbnV4IGRvZXNuJ3QgaGF2ZSBhY2Nl
c3MgdG8gaXQgDQogICAgPiAgICAgPiBIZW5jZSBpb2N0bCBpcyB1c2VkLg0KICAgID4gICAgIA0K
ICAgID4gICAgIFdoeSBub3QganVzdCBhICJyZWFsIiBjYWxsIHRvIHRoZSBkcml2ZXIgdG8gbWFr
ZSB0aGlzIHR5cGUgb2YgcmVhZGluZz8NCiAgICA+ICAgICBZb3UgZG9uJ3QgaGF2ZSBpb2N0bHMg
d2l0aGluIHRoZSBrZXJuZWwgZm9yIG90aGVyIGRyaXZlcnMgdG8gY2FsbCwNCiAgICA+ICAgICB0
aGF0J3Mgbm90IG5lZWRlZCBhdCBhbGwuDQogICAgPiANCiAgICA+IHRoZXNlIHJlZ2lzdGVycyBh
cmUgZm9yIHVzZXJzICBhbmQgZm9yIHNwZWNpYWwgbmVlZHMgd2hlcmUgdXNlcnMgd2FudHMNCiAg
ICA+IHRvIHJldGFpbiB2YWx1ZXMgb3ZlciByZXNldHMuIGJ1dCBhcyB0aGV5IGJlbG9uZyB0byBQ
TVUgYWRkcmVzcyBzcGFjZSwNCiAgICA+IHRoZXNlIGludGVyZmFjZSBBUElzIGFyZSBwcm92aWRl
ZC4gVGhleSBkb27igJl0IGFsbG93IGFjY2VzcyB0byBhbnkNCiAgICA+IG90aGVyIHJlZ2lzdGVy
cy4NCiAgICANCiAgICBUaGF0J3Mgbm90IHRoZSBpc3N1ZSBoZXJlLiAgVGhlIGlzc3VlIGlzIHlv
dSBhcmUgdXNpbmcgYW4gImludGVybmFsIg0KICAgIGlvY3RsLCBpbnN0ZWFkIGp1c3QgbWFrZSBh
ICJyZWFsIiBjYWxsLg0KDQpTb3JyeSBJIGFtIG5vdCBjbGVhci4gRG8geW91IG1lYW4gdGhhdCB3
ZSBzaG91bGQgdXNlIGxpbnV4IHN0YW5kYXJkIGlvY3RsIGludGVyZmFjZSBpbnN0ZWFkIG9mIGlu
dGVybmFsIGlvY3RsIGJ5IG1lbnRpb25pbmcgInJlYWwiID8NCiAgICANCiAgICA+ICAgICA+ID4g
PiAraW50IHp5bnFtcF9wbV9nZ3NfaW5pdChzdHJ1Y3Qga29iamVjdCAqcGFyZW50X2tvYmopDQog
ICAgPiAgICAgPiA+ID4gK3sNCiAgICA+ICAgICA+ID4gPiArCXJldHVybiBzeXNmc19jcmVhdGVf
Z3JvdXAocGFyZW50X2tvYmosIHp5bnFtcF9nZ3NfZ3JvdXBzWzBdKTsNCiAgICA+ICAgICA+ID4g
DQogICAgPiAgICAgPiA+IFlvdSBtaWdodCBiZSByYWNpbmcgdXNlcnNwYWNlIGhlcmUgYW5kIGxv
b3NpbmcgOigNCiAgICA+ICAgICA+IA0KICAgID4gICAgID4gUHJvYiBpcyBjYWxsZWQgYmVmb3Jl
IHVzZXIgc3BhY2UgaXMgbm90aWZpZWQgYWJvdXQgc3lzZnMgc28gcmFjaW5nIHNob3VsZG4ndCBo
YXBwZW4uDQogICAgPiAgICAgDQogICAgPiAgICAgInNob3VsZG4ndCI/ICBIb3cgZG8geW91IGtu
b3cgdGhpcz8NCiAgICA+IA0KICAgID4gU2luY2UgZmlybXdhcmUgZHJpdmVyIGlzIGFsd2F5cyBi
dWlsdC1pbiAod2UgZG9uJ3QgcHJvdmlkZSBzdXBwb3J0IHRvDQogICAgPiB1c2UgYXMgbW9kdWxl
KSwgdXNlciBzcGFjZSB3b24ndCBiZSBhdmFpbGFibGUgYmVmb3JlIHByb2IgaXMgY29tcGxldGUu
DQogICAgPiBDb3JyZWN0IGlmIEkgYW0gd3JvbmcuDQogICAgDQogICAgVXNlcnNwYWNlIHN0YXJ0
cyBlYXJsaWVyIHRoYW4geW91IHRoaW5rLCBhbmQgYWxzbywgdXNlIHRoZSBjb3JyZWN0DQogICAg
aW50ZXJmYWNlcyBmb3IgdGhpcyB0eXBlIG9mIHRoaW5nLCB0aGF0IGlzIHdoeSBpdCBpcyB0aGVy
ZS4gIERvbid0DQogICAgY3JlYXRlIHB1cnBvc2Z1bGx5LWluY29ycmVjdCBjb2RlIDopDQoNClN1
cmUuIFdlIHdpbGwgY2hhbmdlIGl0Lg0KDQpUaGFua3MsDQpKb2xseSBTaGFoDQoNCiAgICANCiAg
ICA+ICAgICA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJtd2FyZS94aWxpbngvenlucW1w
LmMNCiAgICA+ICAgICA+ID4gYi9kcml2ZXJzL2Zpcm13YXJlL3hpbGlueC96eW5xbXAuYw0KICAg
ID4gICAgID4gPiA+IGluZGV4IDc1YmRmYWEuLjRjMTExN2QgMTAwNjQ0DQogICAgPiAgICAgPiA+
ID4gLS0tIGEvZHJpdmVycy9maXJtd2FyZS94aWxpbngvenlucW1wLmMNCiAgICA+ICAgICA+ID4g
PiArKysgYi9kcml2ZXJzL2Zpcm13YXJlL3hpbGlueC96eW5xbXAuYw0KICAgID4gICAgID4gPiA+
IEBAIC00NzMsNiArNDczLDEwIEBAIHN0YXRpYyBpbmxpbmUgaW50IHp5bnFtcF9pc192YWxpZF9p
b2N0bCh1MzIgaW9jdGxfaWQpDQogICAgPiAgICAgPiA+ID4gIAljYXNlIElPQ1RMX0dFVF9QTExf
RlJBQ19NT0RFOg0KICAgID4gICAgID4gPiA+ICAJY2FzZSBJT0NUTF9TRVRfUExMX0ZSQUNfREFU
QToNCiAgICA+ICAgICA+ID4gPiAgCWNhc2UgSU9DVExfR0VUX1BMTF9GUkFDX0RBVEE6DQogICAg
PiAgICAgPiA+ID4gKwljYXNlIElPQ1RMX1dSSVRFX0dHUzoNCiAgICA+ICAgICA+ID4gPiArCWNh
c2UgSU9DVExfUkVBRF9HR1M6DQogICAgPiAgICAgPiA+ID4gKwljYXNlIElPQ1RMX1dSSVRFX1BH
R1M6DQogICAgPiAgICAgPiA+ID4gKwljYXNlIElPQ1RMX1JFQURfUEdHUzoNCiAgICA+ICAgICA+
ID4gDQogICAgPiAgICAgPiA+IEh1aD8/Pw0KICAgID4gICAgID4gDQogICAgPiAgICAgPiBTb3Jy
eSBub3Qgc3VyZSBhYm91dCB5b3VyIGNvbmNlcm4gaGVyZS4gVGhlc2UgcmVnaXN0ZXJzIGFyZSBp
biBQTVUgc3BhY2UgYW5kIGhlbmNlDQogICAgPiAgICAgPiBJb2N0bCBpcyBuZWVkZWQgdG8gbGV0
IGxpbnV4IGFjY2VzcyB0aGVtLg0KICAgID4gICAgIA0KICAgID4gICAgIHVzZXJzcGFjZSBvciBr
ZXJuZWxzcGFjZT8NCiAgICA+ICAgICANCiAgICA+ICAgICBZb3Ugc2VlbSB0byBiZSBtaXhpbmcg
dGhlbSBib3RoIGhlcmUuDQogICAgPiANCiAgICA+IFRoZXkgYXJlIGluIFBsYXRmb3JtIE1hbmFn
ZW1lbnQgVW5pdCByZWdpc3RlciBhZGRyZXNzIHNwYWNlIHNvIGl0DQogICAgPiBhbGxvd3Mgb25s
eSBzZWN1cmUgYWNjZXNzLiBIZW5jZSBmb3IgbGludXggdG8gYWNjZXNzIGl0LCBpbnRlcmZhY2UN
CiAgICA+IEFQSXMgYXJlIHByb3ZpZGVkLiANCiAgICANCiAgICBBZ2FpbiwgdGhhdCdzIGZpbmUs
IGJ1dCB3aHkgYXJlIHlvdSBjcmVhdGluZyBhbiAiaW50ZXJuYWwgaW9jdGwiPyAgSnVzdA0KICAg
IG1ha2UgYSByZWFsIGZ1bmN0aW9uIGNhbGwuDQogICAgDQogICAgdGhhbmtzLA0KICAgIA0KICAg
IGdyZWcgay1oDQogICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
