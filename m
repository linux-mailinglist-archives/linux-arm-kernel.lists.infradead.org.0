Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0AA66989
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 11:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpXEMpkkrwYA6a+u6P+Tr/q5MCHVvySHTY6mvbrLxBg=; b=AJmFZkTv34fu/R
	/g7UznzUG7P5EgR1wvbaTFMDbGrnEEj6inKEeM9gfkY8MLDYdt6V84tHjsVZDrN7O4pOdH00OHOFM
	MotEpirugbCsjSLDS/US4tDascsTCWD9ty5htAuby7zbuW2JmTVD4L9Ihp8qrNJ9dGOVkmk55y3YI
	igCEbGtxFUog6V9ha1wQ7rD4U49ITxmTstx+i8MiBuXmLzdWNYtJSrHwnL3Ov3m+ITDBCUT/F1tjp
	2R1EneT6zx1bOgv15chhBNGZ0kLNFhiwfYL296JdvWwlDJ6LWDSoClUgLXnDV2siEKrHFgvhfDF1T
	XxbdarttfvJdVjYrn+Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlrPk-0004Y0-G3; Fri, 12 Jul 2019 09:00:24 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlrPW-0004XM-PW
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 09:00:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1562922010; x=1594458010;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:mime-version: content-transfer-encoding;
 bh=OoeXV66HMCiCE8///mVVeViK+QsNj7YHb5Peo1lavf4=;
 b=FahXqdBHLx9pfa3CMlHYIcIpbVSIgfxshXw5QkJQrtsUHJYbnR8ivrXN
 EwSdIsPGMUbrtFQkhWkp6hmb2/+xQu1IHGMoC7YHOkR2+2pLsxdqZ3bKr
 bTSW0sd5/DCuDzIbZ3/iqYMfJN/HyVOvomNofHqDbPQdJ1Q+XWQRDadoW E=;
X-IronPort-AV: E=Sophos;i="5.62,481,1554768000"; d="scan'208";a="404652279"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1e-57e1d233.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 12 Jul 2019 09:00:06 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-57e1d233.us-east-1.amazon.com (Postfix) with ESMTPS
 id B7E54141902; Fri, 12 Jul 2019 09:00:01 +0000 (UTC)
Received: from EX13D01EUB002.ant.amazon.com (10.43.166.113) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 12 Jul 2019 09:00:00 +0000
Received: from EX13D01EUB003.ant.amazon.com (10.43.166.248) by
 EX13D01EUB002.ant.amazon.com (10.43.166.113) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 12 Jul 2019 08:59:59 +0000
Received: from EX13D01EUB003.ant.amazon.com ([10.43.166.248]) by
 EX13D01EUB003.ant.amazon.com ([10.43.166.248]) with mapi id 15.00.1367.000;
 Fri, 12 Jul 2019 08:59:59 +0000
From: "Raslan, KarimAllah" <karahmed@amazon.de>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Subject: Re: [PATCH] arm: Extend the check for RAM in /dev/mem
Thread-Topic: [PATCH] arm: Extend the check for RAM in /dev/mem
Thread-Index: AQHVODcIGfDHKrKqiE2jyO8cjDhCoqbGRNqAgAAGCACAAGPzAIAAARkA
Date: Fri, 12 Jul 2019 08:59:59 +0000
Message-ID: <1562921998.1345.15.camel@amazon.de>
References: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
 <14f02e29-77b2-29d9-a9f4-7f89ad0194f6@arm.com>
 <1562900298.1345.12.camel@amazon.de>
 <20190712085602.v2tncu5tsngtvbww@shell.armlinux.org.uk>
In-Reply-To: <20190712085602.v2tncu5tsngtvbww@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.164.55]
Content-ID: <95EBDE33927643488B6CA975A983494F@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_020010_974261_F95ED833 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "anders.roxell@linaro.org" <anders.roxell@linaro.org>,
 "yuzhao@google.com" <yuzhao@google.com>, "will@kernel.org" <will@kernel.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "info@metux.net" <info@metux.net>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "yaojun8558363@gmail.com" <yaojun8558363@gmail.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA3LTEyIGF0IDA5OjU2ICswMTAwLCBSdXNzZWxsIEtpbmcgLSBBUk0gTGlu
dXggYWRtaW4gd3JvdGU6DQo+IE9uIEZyaSwgSnVsIDEyLCAyMDE5IGF0IDAyOjU4OjE4QU0gKzAw
MDAsIFJhc2xhbiwgS2FyaW1BbGxhaCB3cm90ZToNCj4gPiANCj4gPiBPbiBGcmksIDIwMTktMDct
MTIgYXQgMDg6MDYgKzA1MzAsIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOg0KPiA+ID4gDQo+ID4g
PiANCj4gPiA+IE9uIDA3LzEyLzIwMTkgMDM6NTEgQU0sIEthcmltQWxsYWggQWhtZWQgd3JvdGU6
DQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gU29tZSB2YWxpZCBSQU0gY2FuIGxpdmUgb3V0
c2lkZSBrZXJuZWwgY29udHJvbCAoZS5nLiB1c2luZyBtZW09IGtlcm5lbA0KPiA+ID4gPiBjb21t
YW5kLWxpbmUpLiBGb3IgdGhlc2UgcmVnaW9ucywgcGZuX3ZhbGlkIHdvdWxkIHJldHVybiAiZmFs
c2UiIGNhdXNpbmcNCj4gPiA+ID4gc3lzdGVtIFJBTSB0byBiZSBtYXBwZWQgYXMgdW5jYWNoZWQu
IFVzZSBtZW1ibG9jayBpbnN0ZWFkIHRvIGlkZW50aWZ5IFJBTS4NCj4gPiA+IA0KPiA+ID4gT25j
ZSB0aGUgcmVtYWluaW5nIG1lbW9yeSBpcyBvdXRzaWRlIG9mIHRoZSBrZXJuZWwgKGFzIHRoZSBh
ZG1pbiB3b3VsZCBoYXZlDQo+ID4gPiBpbnRlbmRlZCB3aXRoIG1lbT0gY29tbWFuZCBsaW5lKSB3
aGF0IGlzIHRoZSBwYXJ0aWN1bGFyIGNvbmNlcm4gcmVnYXJkaW5nDQo+ID4gPiB0aGUgd2F5IHRo
b3NlIGdldCBtYXBwZWQgKGNhY2hlZCBvciBub3QpID8gSXQgaXMgbm90IHRvIGJlIHVzZWQgYW55
IHdheS4NCj4gPiANCj4gPiBUaGV5IGNhbiBiZSB1c2VkIGJ5IHVzZXItc3BhY2Ugd2hpY2ggbWln
aHQgbGVhZCB0byB0aGVtIGJlaW5nIHVzZWQgYnkgdGhlwqANCj4gPiBrZXJuZWwuIE9uZSB1c2Ut
Y2FzZSB3b3VsZCBiZSB1c2luZyB0aGVtIGFzIGd1ZXN0IG1lbW9yeSBmb3IgS1ZNIGFzIEkgZGV0
YWlsZWTCoA0KPiA+IGhlcmU6DQo+ID4gDQo+ID4gaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzc3
ODI0MC8NCj4gDQo+IEZyb20gdGhlIDMyLWJpdCBBUk0gcG9pbnQgb2Ygdmlldy4uLg0KPiANCj4g
V2hhdCBpZiBzb21lb25lJ3MgYWxyZWFkeSBkb2luZyBzb21ldGhpbmcgc2ltaWxhciB3aXRoIGEg
bm9uLWNvaGVyZW50DQo+IERTUCBhbmQgaXMgcmVseWluZyBvbiB0aGUgY3VycmVudCBiZWhhdmlv
dXI/ICBUaGlzIGNoYW5nZSBpcyBhIHVzZXINCj4gdmlzaWJsZSBiZWhhdmlvdXJhbCBjaGFuZ2Ug
dGhhdCBjb3VsZCBlbmQgdXAgYnJlYWtpbmcgdXNlcnNwYWNlLg0KPiANCj4gSW4gb3RoZXIgd29y
ZHMsIGl0IGlzbid0IHNvbWV0aGluZyB3ZSBzaG91bGQgcnVzaCBpbnRvLg0KDQpZZXMsIHRoYXQg
bWFrZXMgc2Vuc2UuIEhvdyBhYm91dCBhZGRpbmcgYSBjb21tYW5kLWxpbmUgb3B0aW9uIGZvciB0
aGlzIG5ld8KgDQpiZWhhdmlvciBpbnN0ZWFkPyBXb3VsZCB0aGlzIGJlIG1vcmUgcmVhc29uYWJs
ZT8KCgoKQW1hem9uIERldmVsb3BtZW50IENlbnRlciBHZXJtYW55IEdtYkgKS3JhdXNlbnN0ci4g
MzgKMTAxMTcgQmVybGluCkdlc2NoYWVmdHNmdWVocnVuZzogQ2hyaXN0aWFuIFNjaGxhZWdlciwg
UmFsZiBIZXJicmljaApFaW5nZXRyYWdlbiBhbSBBbXRzZ2VyaWNodCBDaGFybG90dGVuYnVyZyB1
bnRlciBIUkIgMTQ5MTczIEIKU2l0ejogQmVybGluClVzdC1JRDogREUgMjg5IDIzNyA4NzkKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
