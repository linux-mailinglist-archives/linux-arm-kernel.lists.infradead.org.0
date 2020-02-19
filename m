Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E781652AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 23:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnT8YbaLXWoSt7J2Xti1LIpJEKERZh13QFXYVvm3jig=; b=fisngmMgNw5rRY
	j9hDqFpmdLF1XMsI0+/9D2rECT37OaOhOSaNcdKPpSdfityzo5A8BLW/XTPewoltW4wVUycHIJn6+
	dDu8JLEOWK3udZSQCvyWQfR+cjBMGXqgpU2lg6mvFZAW/v9B8DWN0fB6Sq55st/e/TluFeVUkmW6W
	4TtddVZngv1mhUQL9cpRMOSEeJgYiZASVtLtNnNdSQ9KvM/+3O6/aIruksrXNPJDu9D9ZptA1GHER
	IA0j+n1QXTHjNZ7goMDPP3XxPTeIJqULIzKePapZVIlgzZm8oPs96Ei03h5elGFxayUZXyyV0OeQT
	yo7ZiVjaMD0ZWpSPmqQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4YAl-00043z-EQ; Wed, 19 Feb 2020 22:50:27 +0000
Received: from mail-dm6nam11on2070.outbound.protection.outlook.com
 ([40.107.223.70] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4YAb-000438-Lu
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 22:50:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n59zb5GJvkpf261c/V/TZ0bOd2mYPTcU3Ui1NVRdRHnJEhq7rgsk3wZqOVQkDb8w9CQf0ISOqWKHHTAS1gr22KaHJLqxMZ1OoggvYFFDT3zYiaJqcNm44pUgoaJmjVQni6J8kJI+C6qlx14FY16Tv5Pytm3bWn3+xB9WydjxFfEdghrrBZlK2J9LTaIL/i3XFktxoa0a+nEXlfts6KCUCsRCiK+GG7hyjNOQNnZ+EeBKNblNLIDHSoTSVj/V0AcvjbjXAAV9V7XTV9av3vSTrFaPuTVlbGyraGlXdIA65bqZPKZsCS+NBlHbBZtBsLhFpLsWCrcL8CVklMJXoH4ToQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kf0ooza73gcFioIAHmKtsr6dbDjVTs+vUaOj6EZOiqU=;
 b=Zmy/NhZ7utqZK2TNvT9R10GnUFSucrQBa5tcXaaQIqv9L1Wy8YqyyywiG7RY08139HoSKq8TeYeIHZxp5ULxBHnvdAkxLT7Oa+JxKPwBhHFM64h9gb3T7jMQurY5dOTBZX8UiSSHc2v/B0syhMzMyw16PhMpPZ2a9uHfpgbmx+o06e426gDNbGuyzw+SUxN35Ny3KJQLPp/qStfiChVcza7gYA5xFWIV89TbCvSjmXkOGWlzI5ugoLclTQKtrPAGfCiNjXUSiM09gpfuDYDT1m39+Zh6LeZEh5X41f8hoaYzhx2TuLCcfNo4jn9VT/23cybbT9p43hKCpFipDZm5hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kf0ooza73gcFioIAHmKtsr6dbDjVTs+vUaOj6EZOiqU=;
 b=d257JqjdtoWMa5XMRgnB855W3i9H8ZrbKTly5/9g2YqTz5h+XnS1+GIslmpbs+i6nKjIvdaFU2CpogijwXfE69wnL8cAWODu3vxoBa6fCsYkaZi3CFk1IQznQc7xMybY4Ffbx/z59Myj9NNhqyOHUXOBBkrHxn/MnGxhJoZbQuA=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (20.179.89.80) by
 BYAPR02MB4583.namprd02.prod.outlook.com (52.135.240.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 22:50:08 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::18e9:9159:e51d:5997]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::18e9:9159:e51d:5997%5]) with mapi id 15.20.2750.016; Wed, 19 Feb 2020
 22:50:08 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: 'Greg KH' <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Topic: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Thread-Index: AQHVxn8DFx2mcD2XT0SouhH9uTzcjqfqR5+AgA6zcwCAAG/7gIAFTUAAgAEC8QCAA8QlAIAA7e8AgAAwyoCAAAjOAIAQMlGAgAZM+oD///bVAIAAimSAgAczVIA=
Date: Wed, 19 Feb 2020 22:50:08 +0000
Message-ID: <0CEC3CE6-E1B4-4E53-A8A7-3FBF86E76E90@xilinx.com>
References: <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
 <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
 <20200131061038.GA2180358@kroah.com>
 <BYAPR02MB40559D6B62C4532C0EAD0281B7070@BYAPR02MB4055.namprd02.prod.outlook.com>
 <20200131093646.GA2271937@kroah.com>
 <3ef20e9d-052f-665c-7fc8-69a1f8bc9bd2@xilinx.com>
 <20200214171005.GB4034785@kroah.com>
 <c2914eae-bf95-ad51-79a4-07f199f37e27@xilinx.com>
 <20200215005235.GA32359@kroah.com>
In-Reply-To: <20200215005235.GA32359@kroah.com>
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
x-ms-office365-filtering-correlation-id: 24fac6af-eb43-48c6-85bc-08d7b58e11ec
x-ms-traffictypediagnostic: BYAPR02MB4583:|BYAPR02MB4583:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB45833179A749610F26DAA202B8100@BYAPR02MB4583.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(199004)(189003)(6512007)(71200400001)(498600001)(6486002)(66446008)(4326008)(6506007)(66946007)(66556008)(76116006)(64756008)(66476007)(2616005)(2906002)(5660300002)(81156014)(81166006)(86362001)(33656002)(8936002)(8676002)(7416002)(54906003)(6916009)(36756003)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4583;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ev8Kgdw34hkCDjUAqY2RTvmRxBXryveEIwJumNPY7+MiY4z3se1IKhzCYOpOTDn5esGK4L7nUxTeqHWNP8Q6Jkyc8OsmM1RgRep3iVS1KFSi7wjiOdAzYvku//wyMvp18SIdlq9mOdzbTWhGzcJA/iU4q4jawLarDbBY+t64MTMKwnNCL6EGqIwPadgJFrXbDfkwb2soYYHBHqVaLLX3HnQ36jseZmVupi2J+ZLqpcyWSVFz71fU7+G5aKlC2qGEWlo6VrYCkfpLuqpheZ8CuYr5PLmABESbYa/v2vuD+CPPHsWfG6XTe37wRClyXlU2lexvG+DjZpoQh2X625D/8bWCxfYT/xAawBsdeP/LZu4p0bedVPlWiy1lxR+I/4i2pVeK7OP2J6qqetcwNoZBUtEuo4dfru3qtSWcUOuNighBgEaQ5++3nENnuMVruxUm
x-ms-exchange-antispam-messagedata: jK+RzRLrT8zDW6RNYHq753c87/cy6xrOFvitIx288UeKVuPZt1/9WvDO8XvEm6YaL4teS1fyq6m7AcfVrsK4MZH1Wj+OIdZ/O3PsUKLXsnMrDwO8NgOmOPaUHagvTRu4LXdwYmNpTNe5na8jjwK8wQ==
Content-ID: <95007BBA84203546B5C10F56790512A1@namprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24fac6af-eb43-48c6-85bc-08d7b58e11ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 22:50:08.5252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EB/yI7mPcoGk8rZJ4EIG56XCifXJJaZYsZVVR8GAwhhlu9v5vppsjy3gtSOJd1yTaiDfD2kxcn1bk7Tu/OcZ5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4583
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_145017_721765_4B0648A6 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

SGkgR3JlZywNCg0K77u/T24gMi8xNC8yMCwgNDo1OCBQTSwgImxpbnV4LWtlcm5lbC1vd25lckB2
Z2VyLmtlcm5lbC5vcmcgb24gYmVoYWxmIG9mICdHcmVnIEtIJyIgPGxpbnV4LWtlcm5lbC1vd25l
ckB2Z2VyLmtlcm5lbC5vcmcgb24gYmVoYWxmIG9mIGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3Jn
PiB3cm90ZToNCg0KICAgIE9uIEZyaSwgRmViIDE0LCAyMDIwIGF0IDA0OjM3OjE2UE0gLTA4MDAs
IEpvbGx5IFNoYWggd3JvdGU6DQogICAgPiA+IEp1c3QgbWFrZSB0aGUgZGlyZWN0IGNhbGwgdG8g
dGhlIGZpcm13YXJlIGRyaXZlciwgbm8gbmVlZCB0byBtdWNrIGFyb3VuZA0KICAgID4gPiB3aXRo
IHRhYmxlcyBvZiBmdW5jdGlvbiBwb2ludGVycy4gIEluIGZhY3QsIHdpdGggdGhlIHNwZWN0cmUg
Y2hhbmdlcywNCiAgICA+ID4geW91IGp1c3QgbWFkZSB0aGluZ3Mgc2xvd2VyIHRoYW4gbmVlZGVk
LCBhbmQgeW91IGNhbiBnZXQgYmFjayBhIGJ1bmNoIG9mDQogICAgPiA+IHRocm91Z2hwdXQgYnkg
cmVtb3ZpbmcgdGhhdCB3aG9sZSBtaWRkbGUgbGF5ZXIuDQogICAgPiA+IA0KICAgID4gDQogICAg
PiBhcm0sc2NwaSBpcyBkb2luZyB0aGUgc2FtZSB3YXkgYW5kIHdlIHRob3VnaHQgdGhpcyBhcHBy
b2FjaCB3aWxsIGJlIG1vcmUNCiAgICA+IGFjY2VwdGFibGUgdGhhbiBkaXJlY3QgZnVuY3Rpb24g
Y2FsbHMgYnV0IGhhcHB5IHRvIGNoYW5nZSBhcyBzdWdnZXN0ZWQuDQogICAgDQogICAgSnVzdCBi
ZWNhdXNlIG9uZSByYW5kb20gdGlueSB0aGluZyBkb2VzIGl0IHRoZSB3cm9uZyB3YXkgZG9lcyBu
b3QgbWVhbg0KICAgIHRvIGZvY3VzIG9uIHRoYXQgZGVzaWduIHBhdHRlcm4gYW5kIGlnbm9yZSB0
aGUgdGhvdXNhbmRzIG9mIG90aGVyDQogICAgYXBpcy9pbnRlcmZhY2VzIGluIHRoZSBrZXJuZWwg
dGhhdCBkbyBub3QgZG8gaXQgdGhhdCB3YXkgOikNCiAgICANClN1cmUuIFdpbGwgY2hhbmdlIGlu
IG5leHQgdmVyc2lvbi4NCg0KICAgID4gPiBTbyBnbyBkbyB0aGF0IGZpcnN0IHBsZWFzZSwgYmVm
b3JlIGFkZGluZyBhbnkgbmV3IHN0dWZmLg0KICAgID4gPiANCiAgICA+ID4gTm93IGZvciB0aGUg
aW9jdGwsIHllYWgsIHRoYXQncyBub3QgYSAibm9ybWFsIiBwYXR0ZXJuIGVpdGhlci4gIEJ1dA0K
ICAgID4gPiByaWdodCBub3cgeW91IG9ubHkgaGF2ZSAyICJkaWZmZXJlbnQiIGlvY3RscyB0aGF0
IHlvdSBjYWxsLiAgU28gd2h5IG5vdA0KICAgID4gPiBqdXN0IHR1cm4gdGhvc2UgMiBpbnRvIHJl
YWwgZnVuY3Rpb24gY2FsbHMgYXMgd2VsbCB0aGF0IHRoZW4gbWFrZXMgdGhlDQogICAgPiA+ICJp
b2N0bCIgY2FsbCB0byB0aGUgaGFyZHdhcmU/ICBUaGF0IG1ha2VzIHRoaW5ncyBhIGxvdCBtb3Jl
IG9idmlvdXMgb24NCiAgICA+ID4gdGhlIGtlcm5lbCBkcml2ZXIgc2lkZSBleGFjdGx5IHdoYXQg
aXMgZ29pbmcgb24uDQogICAgPiA+IA0KICAgID4gDQogICAgPiBTdXJlIGFzIGkgdW5kZXJzdGFu
ZCBmaXJtd2FyZSBkcml2ZXIgd2lsbCBwcm92aWRlIHJlYWwgZnVuY3Rpb24gY2FsbHMgdG8gYmUN
CiAgICA+IHVzZWQgYnkgdXNlciBkcml2ZXJzIGFuZCB1bmRlcm5lYXRoIGl0IHdpbGwgY2FsbCBp
b2N0bCBmb3IgZGVzaXJlZA0KICAgID4gb3BlcmF0aW9uLiBQbGVhc2UgY29ycmVjdCBpZiBJIG1p
c3VuZGVyc3Rvb2QuDQogICAgDQogICAgWW91IGRvIG5vdCBtaXN1bmRlcnN0YW5kLg0KDQpUaGFu
a3MgZm9yIGNvbmZpcm1hdGlvbi4NCg0KVGhhbmtzLA0KSm9sbHkgU2hhaA0KICAgIA0KICAgIHRo
YW5rcywNCiAgICANCiAgICBncmVnIGstaA0KICAgIA0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
