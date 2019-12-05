Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0ED1142BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uC9dzKxfss//G5tbMPCL5i/KhgrVArja+avpjqxbWb0=; b=Cm13Pi4uOMrqsj
	H7fLkwO+AJhnlYJOZUyDhmC0OPEcni6ZzQPeq3Istkoov+pmpnLfgvq3kVNQVtXIknQ0O/5+2YT5W
	5ByqpJoEabASCbjarSLJioqeXd2V3oTh8Vooj5lEpYYJhhOObnI6UnoVeJUZz5elT12baLLykB8Ia
	3BPLEx3iwBn5UBEFic2b2TMRZ5g/5wN0cVEWbhui4O6av1tw1SkzwW8M7L7lbezBjpFG8Aa7BOdCt
	ReRgrEarVMYxl80jhEW4w0u01QJO7DAlgc8bmKRqQ/EGsIIgFjkrTbBJGXDPOHtkjfQ269wT8gbuu
	F5ibb5ohzUKoj9F0ga6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsBh-0006RH-RU; Thu, 05 Dec 2019 14:33:01 +0000
Received: from mail-bn8nam12on20606.outbound.protection.outlook.com
 ([2a01:111:f400:fe5b::606]
 helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsBZ-0006P4-6P
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:32:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cNMAkDmq+BHVkzeDiWWNdkE3daTmsMv4vQSk/9SiZW7EkpYnpEzqwMi+zSH1Dk37UwkZ3kG3RW8/XEJVRjYLq03V3u2ZM2snvHi2ZqnvOVEebSQAQzkTdOe0KBpr9q/IzlUta36o3tUFAtz1s7jvQnb/WatIGl9wFtOKGp7anwEowE/Ohi/LHe7jWD9F3+dM7jEhWBywVupxk+kCZyCv0EizGVYWnSnwKc1v7WsFRZ+WK07DJ7iovXgig6YBBKHh9/hjG5WMlTXYPdgIKIK6oP/Qf0wzg1jwIzKHthV0aM34VKCLsWnvRvbuMl5ae3yOQUSCSTWstLl9ErYSQd91cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gfoxEXZxHbCbmU2Y+qi+PiVmMoJvHCcJeSpPezHx+JA=;
 b=Z0sV39XKEQm5pOxxokSGugaB2+m0Q0xMtFsoJyWrXEU9pKLIeH4vlQMDfGK4idGal5OwsqP28nfbDG16E8xQn3iV/jNXjpYyVz+BRy8EU59t5AtXIMCFdlvrFU8QFbdw1HTGX5SoCuBSvb4Y0korMvI0OeXmuMN10dw3uQlk8709l51uN/Go5zbt8+LjoWCcTfldkfFTGT0vUK3L4d4h5n7QR/ltX+jIX1TeJKCicJHA5GSLeuXidwSDJRah0hIFkkntY3bqfmZgUJGJM3PcwmOtQMFbcS+1VHn3JuW99CoDzac2xkmnXephWXVuyTRBJCXvoL9EJuz7OWk5zW6P/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gfoxEXZxHbCbmU2Y+qi+PiVmMoJvHCcJeSpPezHx+JA=;
 b=KYSgUTVgEU90vOYLDDv9+yvdRZMHygKx7Kzh4mj9JEmQMHFG/uTB2Amxu5xSTO3QwZoCvt+i6T79ofHR+W4LJwoBKARwZuxSRBTtPfwIn3HZwfOW4o/V8XAiFxWBYsm7yTZDmiuMPsOC+ktiqgVoGuhCVWOC9qW1GSTZGyYhD2Q=
Received: from MN2PR05MB6141.namprd05.prod.outlook.com (20.178.241.217) by
 MN2PR05MB6256.namprd05.prod.outlook.com (20.178.242.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.4; Thu, 5 Dec 2019 14:32:42 +0000
Received: from MN2PR05MB6141.namprd05.prod.outlook.com
 ([fe80::611e:6a6b:9109:5aa8]) by MN2PR05MB6141.namprd05.prod.outlook.com
 ([fe80::611e:6a6b:9109:5aa8%7]) with mapi id 15.20.2516.003; Thu, 5 Dec 2019
 14:32:42 +0000
From: Thomas Hellstrom <thellstrom@vmware.com>
To: "cai@lca.pw" <cai@lca.pw>, "Steven.Price@arm.com" <Steven.Price@arm.com>
Subject: Re: [PATCH v15 00/23] Generic page walk and ptdump
Thread-Topic: [PATCH v15 00/23] Generic page walk and ptdump
Thread-Index: AQHVqsB6USxvVndKC0O+X8JyjIw6Nqerhn8AgAAVsoA=
Date: Thu, 5 Dec 2019 14:32:42 +0000
Message-ID: <e1f4ec12f9b3f92e481a42698cc1a5645e0e7c0f.camel@vmware.com>
References: <20191204163235.GA1597@arm.com>
 <A22DE6B7-23A1-41FA-AF82-9613778277C7@lca.pw>
In-Reply-To: <A22DE6B7-23A1-41FA-AF82-9613778277C7@lca.pw>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=thellstrom@vmware.com; 
x-originating-ip: [155.4.205.35]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 124be9a0-716f-429f-5876-08d7798ffcf7
x-ms-traffictypediagnostic: MN2PR05MB6256:
x-microsoft-antispam-prvs: <MN2PR05MB625669D66CD3443A1F73D97EA15C0@MN2PR05MB6256.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(366004)(39860400002)(199004)(189003)(51444003)(478600001)(118296001)(91956017)(71200400001)(71190400001)(25786009)(99286004)(4744005)(14454004)(6506007)(81166006)(81156014)(102836004)(53546011)(11346002)(26005)(229853002)(8676002)(14444005)(5660300002)(186003)(8936002)(110136005)(6512007)(76176011)(54906003)(2616005)(2906002)(36756003)(66476007)(6486002)(64756008)(66556008)(66946007)(66446008)(316002)(86362001)(7416002)(305945005)(76116006)(4326008)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR05MB6256;
 H:MN2PR05MB6141.namprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QU4Cf3eSmzVw0r7os7uFmTHNjhK+9MIBlIvb/rmgpYKhobMJ/NZfQ/sEEuWFVsEm1VorbqkGqVRlFiHaih9aIX6I7yUJVMhRXlHJOhY/gqOv6rx1xLE+qnCgOd5Hta7scbu2/iNEZi+UcMEsTodaltDR0OBUxLKb9siL9Axn54mX9VvWLdy7DqXD593PSHHM/As1lMLjF07yQ2AydnuvUJbL4aKORPapVYuIsFFuikbjR1wVRSLHBlxRADQ6+kDWBJki9hstii1KaRAJG/pSEUsySgdgjNR74MXYCGx6dscpuqb1pLi0geUIbN6E6utadnC8jruGHMedUFQsJEf4j/4RDuf5RmMXc01+H95zoLdjzI5eH6IohspA4EICABakuQIpj3nhZmi8JYSoCO1OkcejKHNE8kwdDDxJgETOc8ePpu6jt2owS44RsEafE7C2gysydEYAn9h6ZBxBVVySjffVA+BvLpWdMWalqNkXK4o6VNPfFelQXN21tE9R3jwVKqzOdX+ALy7aF9bX8Szf/A==
x-ms-exchange-transport-forked: True
Content-ID: <F0994E79E8BDA142B9B53DD6041EC256@namprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 124be9a0-716f-429f-5876-08d7798ffcf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 14:32:42.6138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XRp0/HU5dCIkuF37RT00HuB6swrBHCUjIoiXQNODN4DJI+gbFm7bCY6JylisgvukU+FUT4SDECEBSiYh0X70zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR05MB6256
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_063253_240141_FB1A7F05 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "Mark.Rutland@arm.com" <Mark.Rutland@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "david@redhat.com" <david@redhat.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "jglisse@redhat.com" <jglisse@redhat.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "James.Morse@arm.com" <James.Morse@arm.com>,
 "luto@kernel.org" <luto@kernel.org>, "hpa@zytor.com" <hpa@zytor.com>,
 "bp@alien8.de" <bp@alien8.de>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "will@kernel.org" <will@kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kan.liang@linux.intel.com" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTEyLTA1IGF0IDA4OjE1IC0wNTAwLCBRaWFuIENhaSB3cm90ZToNCj4gPiBP
biBEZWMgNCwgMjAxOSwgYXQgMTE6MzIgQU0sIFN0ZXZlbiBQcmljZSA8U3RldmVuLlByaWNlQGFy
bS5jb20+DQo+ID4gd3JvdGU6DQo+ID4gDQo+ID4gSSd2ZSBiaXNlY3RlZCB0aGlzIHByb2JsZW0g
YW5kIGl0J3MgYSBtZXJnZSBjb25mbGljdCB3aXRoOg0KPiA+IA0KPiA+IGFjZTg4ZjEwMThiOCAo
Im1tOiBwYWdld2FsazogVGFrZSB0aGUgcGFnZXRhYmxlIGxvY2sgaW4NCj4gPiB3YWxrX3B0ZV9y
YW5nZSgpIikNCj4gDQo+IFNpZ2gsIGhvdyBkb2VzIHRoYXQgY29tbWl0IGVuZCB1cCBtZXJnaW5n
IGluIHRoZSBtYWlubGluZSB3aXRob3V0DQo+IGdvaW5nIHRocm91Z2ggQW5kcmV34oCZcyB0cmVl
IGFuZCBtaXNzZWQgYWxsIHRoZSBsaW51eC1uZXh0IHRlc3Rpbmc/IEl0DQo+IHdhcyBtZXJnZWQg
aW50byB0aGUgbWFpbmxpbmUgT2N0IDR0aD8NCg0KSXQgd2FzIGFja2VkIGJ5IEFuZHJldyB0byBi
ZSBtZXJnZWQgdGhyb3VnaCBhIGRybSB0cmVlLCBzaW5jZSBpdCB3YXMNCnBhcnQgb2YgYSBncmFw
aGljcyBkcml2ZXIgZnVuY3Rpb25hbGl0eS4gSXQgd2FzIHByZWNlZGVkIGJ5IGEgZmFpcmx5DQps
ZW5naHR5IGRpc2N1c3Npb24gb24gbGludXgtbW0gLyBsaW51eC1rZXJuZWwuDQoNCkl0IHdhcyBt
ZXJnZWQgaW50byBkcm0tbmV4dCBvbiAxOS0xMS0yOCwgSSB0aGluayB0aGF0J3Mgd2hlbiBpdA0K
bm9ybWFsbHkgaXMgc2VlbiBieSBsaW51eC1uZXh0LiBNZXJnZWQgaW50byBtYWlubGluZSAxOS0x
MS0zMC4gQW5kcmV3J3MNCnRyZWUgZ290IG1lcmdlZCAxOS0xMi0wNS4NCg0KbGludXgtbmV4dCBz
aWduYWxlZCBhIG1lcmdlIGNvbmZsaWN0IGZyb20gb25lIG9mIHRoZSBwYXRjaGVzIGluIHRoaXMN
CnNlcmllcyAobm90IHRoaXMgb25lKSByZXNvbHZlZCBtYW51YWxseSB3aXRoIHRoZSBha3BtIHRy
ZWUgb24gMTktMTItMDIuDQoNClRob21hcw0KDQoNCg0KDQoNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
