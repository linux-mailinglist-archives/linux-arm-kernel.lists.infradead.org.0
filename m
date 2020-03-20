Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C54E18D403
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBWL+UGy4lTXfmG4lHkxnBomuHt3fy4qEXTjgom+qyM=; b=fa26J51hu5R5DS
	e42LTEFuBKXqMv8QOjk/yu53udtfbv/zkbHhfIKGo3ByfEo4osJrVMsm12kSYsPCGq1hm9kS6fFyp
	yS4mC1+cyp2eXu/+ZaFIQdachqKeRFl5bRfzxBLEpUoattY3ymCQwXR6etHEX/3kx+olSFZddLvxw
	PP+KLsc4AvfKqWvcWq5jh6FDWWq1UCTiaUMdP/h9DLqkYzMCpMfof77HyJD7MWTNUnXUW6h1gvXPu
	fyApNmrW9Jy7cLqQ403HJ2cPVDNai4bAE8SDARA8dBa2imWPu4p4rmP6qQQFLMwMEW/rCJT7vXOal
	Hvq2WYDjSclN4Jr7asHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKLM-0004mw-V6; Fri, 20 Mar 2020 16:17:56 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jFKLC-0004li-IW; Fri, 20 Mar 2020 16:17:48 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 02KGGrb5030347,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTEXMB06.realtek.com.tw[172.21.6.99])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 02KGGrb5030347
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 21 Mar 2020 00:16:53 +0800
Received: from RTEXMB05.realtek.com.tw (172.21.6.98) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Sat, 21 Mar 2020 00:16:53 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Sat, 21 Mar 2020 00:16:52 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Sat, 21 Mar 2020 00:16:52 +0800
From: =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>, Marc Zyngier
 <maz@kernel.org>
Subject: RE: [PATCH v3 8/8] ARM: realtek: Enable RTD1195 arch timer
Thread-Topic: [PATCH v3 8/8] ARM: realtek: Enable RTD1195 arch timer
Thread-Index: AQHVnRfphxbe4z/+/k6zznL3djiEj6eOrKMAgABmPQCAARF9gIAA3/EAgMDPpbA=
Date: Fri, 20 Mar 2020 16:16:52 +0000
Message-ID: <bb54e2e716b14ec6bbeb40dafeca56d6@realtek.com>
References: <20191117072109.20402-1-afaerber@suse.de>
 <20191117072109.20402-9-afaerber@suse.de> <20191117110214.6b160b2e@why>
 <7015e4c4-f999-d2e8-fd1f-e15e74a0d092@suse.de>
 <e99e40d8c95147861ab600c5d5287f8f@www.loen.fr>
 <4dc05879-f6d9-f754-908e-ad2431d8ff5a@suse.de>
In-Reply-To: <4dc05879-f6d9-f754-908e-ad2431d8ff5a@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.136.86]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_091746_745664_444A026E 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Olof Johansson <olof@lixom.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywNCg0KPiA+Pj4+IMKgV2hhdCBpcyB0aGUgbmFtZSBvZiB0aGUgcmVnaXN0ZXIg
MHhmZjAxODAwMD8NCj4gPj4+PiDCoElzIDB4MSBhIEJJVCgwKSB3cml0ZSwgb3IgaG93IGFyZSB0
aGUgcmVnaXN0ZXIgYml0cyBkZWZpbmVkPw0KPiA+Pj4+IMKgSXMgdGhpcyBhIHJlc2V0IG9yIGEg
Y2xvY2sgZ2F0ZT8gSG93IHNob3VsZCB3ZSBtb2RlbCBpdCBpbiBEVD8NCj4gDQo+IE5vLCBJIHdh
cyBwb2ludGluZyBvdXQgdGhhdCBJIG15c2VsZiBoYWQgYWxyZWFkeSBhc2tlZCBwcmV0dHkgbXVj
aCB0aGUgc2FtZQ0KPiBxdWVzdGlvbnMgeW91IGp1c3QgYXNrZWQgbWUuIEhvdyBkaWQgeW91IGV4
cGVjdCBtZSB0byBoYXZlIGFuc3dlcnMgdG8geW91cg0KPiAiU2hvdWxkbid0IHRoaXMgYmUgYSBy
ZWFkL21vZGlmeS93cml0ZSBzZXF1ZW5jZT8iIHRoZW4/IEl0IHNlZW1lZCBsaWtlIHlvdQ0KPiBt
aXNzZWQgbXkgcXVlc3Rpb25zIHVwIHRoZXJlOg0KPiANCj4gV2l0aG91dCBrbm93aW5nIGhvdyB0
aGUgcmVnaXN0ZXIgaXMgc3RydWN0dXJlZCwgSSBjYW4ndCBpbXBsZW1lbnQgYQ0KPiByZWFkL21v
ZGlmeS93cml0ZSBzZXF1ZW5jZSAtIGZvciB0aGF0IHdlJ2QgbmVlZCB0byBrbm93IHdoZXRoZXIg
aXQncyBhIHNpbmdsZQ0KPiBiaXQgd2UgY2FuIGp1c3Qgc2V0IG9yIGEgZmllbGQgdGhhdCB3ZSB3
b3VsZCBuZWVkIHRvIG1hc2sgZmlyc3QgYmVmb3JlIHdyaXRpbmcNCj4gaW50byBpdC4NCg0KVGhp
cyByZWdpc3RlciBpcyBjb3VudGVyIGNvbnRyb2wgcmVnaXN0ZXIgb2YgQ29yZVNpZ2h0IHRpbWVz
dGFtcCBnZW5lcmF0b3IuIFsxXVsyXS4NClRoZSBDUFUgdGltZXIgY291bnQgaW5wdXQgc2lnbmFs
IGlzIGluaGVyaXRlZCBmcm9tIHRoZSB0aW1lc3RhbXAgZ2VuZXJhdG9yLCBzbyBpdCBtdXN0IGJl
IGVuYWJsZWQgYmVmb3JlIENQVSB0aW1lciBpbml0aWFsLg0KDQpUaGlzIHJlZ2lzdGVyIHNldHRp
bmcgY2FuIG1vdmUgaW50byBib290IGNvZGUuDQoNClsxXSBodHRwczovL2RldmVsb3Blci5hcm0u
Y29tL2RvY3MvMTAwODA2LzAyMDAvOS1wcm9ncmFtbWVycy1tb2RlbC9jc3M2MDBfdHNnZW4vY29u
dHJvbC1pbnRlcmZhY2UtcmVnaXN0ZXItZGVzY3JpcHRpb25zDQpbMl0gaHR0cHM6Ly9kZXZlbG9w
ZXIuYXJtLmNvbS9kb2NzLzEwMDgwNi8wMjAwLzUtdGltZXN0YW1wLWNvbXBvbmVudHMtZnVuY3Rp
b25hbC1kZXNjcmlwdGlvbi90aW1lc3RhbXAtZ2VuZXJhdG9yDQoNCg0KVGhhbmtzLg0KDQpSZWdh
cmRzLA0KSmFtZXMNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
