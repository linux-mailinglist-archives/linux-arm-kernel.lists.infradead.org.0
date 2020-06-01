Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73F51E9AE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 02:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOPJJawWt8t9GTTCaoe+9zITS1NOmuDuuyn9KU89twg=; b=FvP29VeNFBI88V
	fSvnF0A4c5EQnhoMJh5atz/FpkBzIbFrUOP+d6ZS4+ju09k+xGMn1jySjW7RSD8o4ncjroPB9u+50
	mLTQ6fMogKjLXNbNtVm6JS/ro+ktbRIhRgfXHtk01oebfNhsPeNpX3o9+5CCfTzpXNpJZF1vDrCgu
	Ye5ixLvIKl3j7KI5AfoqiPWb30fv3xkdr4I+iYNoV6m1ayql3nGKwylkpTNViVgTRdkVOpkyfznzI
	hfWrAUX9sCl4PTpckgIy7ypxFLPeWpkp37aZ5c7SOmySBoKWe5klBGMDz2IV0tpoDf/BmlfCMSHn+
	vZU1/mNe2DDu6cy8lVbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfY27-00085E-Of; Mon, 01 Jun 2020 00:10:27 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfY21-00084W-Mv
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 00:10:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1590970221; x=1622506221;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WT0YoCcfE32mIIPxokLP/7KFZVrjOLNhWjf5wQdoHj4=;
 b=NAO5N9GoRN9gjHmkKD89h1N4s+gtRODlQ2fuSR0CAeUXiXf1de0SKJmp
 ALbetEYw9LZj0Z3coH726G3vcDEesWaj2zlG9nmFFBmNvWbFmPtD48KSM
 gXRKHhpJtjjCNBer9H9y44d/xgYOB3PdM5smJZB9dz8WM5MD8rJoGqPRu U=;
IronPort-SDR: 6xE1IQ/C5alJFpeuNhq4vm6v8jkguiY836fO6ZZfd00tUdbOVXVPrniqdkVXdHMAAT3vCwW3mK
 GTflfeHp80Hg==
X-IronPort-AV: E=Sophos;i="5.73,458,1583193600"; d="scan'208";a="48473352"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1e-97fdccfd.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 01 Jun 2020 00:10:09 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-97fdccfd.us-east-1.amazon.com (Postfix) with ESMTPS
 id D8ECFA1CFD; Mon,  1 Jun 2020 00:10:07 +0000 (UTC)
Received: from EX13D21UWB004.ant.amazon.com (10.43.161.221) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 1 Jun 2020 00:10:07 +0000
Received: from EX13D02UWB004.ant.amazon.com (10.43.161.11) by
 EX13D21UWB004.ant.amazon.com (10.43.161.221) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 1 Jun 2020 00:10:06 +0000
Received: from EX13D02UWB004.ant.amazon.com ([10.43.161.11]) by
 EX13D02UWB004.ant.amazon.com ([10.43.161.11]) with mapi id 15.00.1497.006;
 Mon, 1 Jun 2020 00:10:06 +0000
From: "Saidi, Ali" <alisaidi@amazon.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Thread-Topic: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Thread-Index: AQHWN6kBcVxdzvL9G0WxbBRVg/ndQQ==
Date: Mon, 1 Jun 2020 00:10:06 +0000
Message-ID: <CBF3C648-84C9-4034-A5A0-EC110A9124E4@amazon.com>
References: <eed907d48de84c96e3ceb27c1ed6f622@kernel.org>
In-Reply-To: <eed907d48de84c96e3ceb27c1ed6f622@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
Content-ID: <58825ED36B0DF14A85B2A70BDB3FC3E4@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_171021_791988_F72CEAFF 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.171.184.29 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Herrenschmidt, Benjamin" <benh@amazon.com>,
 Jason Cooper <jason@lakedaemon.net>, "Machulsky, Zorik" <zorik@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Zilberman,
 Zeev" <zeev@amazon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, "Woodhouse, David" <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyYywgDQoNCj4gT24gTWF5IDMxLCAyMDIwLCBhdCA2OjEwIEFNLCBNYXJjIFp5bmdpZXIgPG1h
ekBrZXJuZWwub3JnPiB3cm90ZToNCj4+IE5vdCBncmVhdCBpbmRlZWQuIEJ1dCB0aGlzIGlzIG5v
dCwgYXMgZmFyIGFzIEkgY2FuIHRlbGwsIGEgR0lDDQo+PiBkcml2ZXIgcHJvYmxlbS4NCj4+IA0K
Pj4gVGhlIHNlbWFudGljIG9mIGFjdGl2YXRlL2RlYWN0aXZhdGUgKHdoaWNoIG1hcHMgdG8gc3Rh
cnRlZC9zaHV0ZG93bg0KPj4gaW4gdGhlIElSUSBjb2RlKSBpcyB0aGF0IHRoZSBIVyByZXNvdXJj
ZXMgZm9yIGEgZ2l2ZW4gaW50ZXJydXB0IGFyZQ0KPj4gb25seSBjb21taXR0ZWQgd2hlbiB0aGUg
aW50ZXJydXB0IGlzIGFjdGl2YXRlZC4gVHJ5aW5nIHRvIHBlcmZvcm0NCj4+IGFjdGlvbnMgaW52
b2x2aW5nIHRoZSBIVyBvbiBhbiBpbnRlcnJ1cHQgdGhhdCBpc24ndCBhY3RpdmUgY2Fubm90IGJl
DQo+PiBndWFyYW50ZWVkIHRvIHRha2UgZWZmZWN0Lg0KDQpZZXMsIHRoZW4gaXQgYWJzb2x1dGVs
eSBtYWtlcyBzZW5zZSB0byBhZGRyZXNzIGl0IG91dHNpZGUgdGhlIEdJQy4gDQo+PiANCj4+IEkn
ZCByYXRoZXIgYWRkcmVzcyBpdCBpbiB0aGUgY29yZSBjb2RlLCBieSBwcmV2ZW50aW5nIHNldF9h
ZmZpbml0eSAoYW5kDQo+PiBwb3RlbnRpYWxseSBvdGhlcnMpIHRvIHRha2UgcGxhY2Ugd2hlbiB0
aGUgaW50ZXJydXB0IGlzIG5vdCBpbiB0aGUNCj4+IFNUQVJURUQgc3RhdGUuIFVzZXJzcGFjZSB3
b3VsZCBnZXQgYW4gZXJyb3IsIHdoaWNoIGlzIHBlcmZlY3RseQ0KPj4gbGVnaXRpbWF0ZSwgYW5k
IHdoaWNoIGl0IGFscmVhZHkgaGFzIHRvIGRlYWwgd2l0aCBpdCBmb3IgcGxlbnR5IG9mDQo+PiBv
dGhlcg0KPj4gcmVhc29ucy4NCj4gDQo+IEhvdyBhYm91dCB0aGlzOg0KPiANCj4gZGlmZiAtLWdp
dCBhL2tlcm5lbC9pcnEvbWFuYWdlLmMgYi9rZXJuZWwvaXJxL21hbmFnZS5jDQo+IGluZGV4IDQ1
M2E4YTBmNDgwNC4uMWEyYWMxMzkyYzBmIDEwMDY0NA0KPiAtLS0gYS9rZXJuZWwvaXJxL21hbmFn
ZS5jDQo+ICsrKyBiL2tlcm5lbC9pcnEvbWFuYWdlLmMNCj4gQEAgLTE0Nyw3ICsxNDcsOCBAQCBj
cHVtYXNrX3Zhcl90IGlycV9kZWZhdWx0X2FmZmluaXR5Ow0KPiBzdGF0aWMgYm9vbCBfX2lycV9j
YW5fc2V0X2FmZmluaXR5KHN0cnVjdCBpcnFfZGVzYyAqZGVzYykNCj4gew0KPiAgICAgICBpZiAo
IWRlc2MgfHwgIWlycWRfY2FuX2JhbGFuY2UoJmRlc2MtPmlycV9kYXRhKSB8fA0KPiAtICAgICAg
ICAgICAhZGVzYy0+aXJxX2RhdGEuY2hpcCB8fCAhZGVzYy0+aXJxX2RhdGEuY2hpcC0+aXJxX3Nl
dF9hZmZpbml0eSkNCj4gKyAgICAgICAgICAgIWRlc2MtPmlycV9kYXRhLmNoaXAgfHwgIWRlc2Mt
PmlycV9kYXRhLmNoaXAtPmlycV9zZXRfYWZmaW5pdHkgfHwNCj4gKyAgICAgICAgICAgIWlycWRf
aXNfc3RhcnRlZCgmZGVzYy0+aXJxX2RhdGEpKQ0KPiAgICAgICAgICAgICAgIHJldHVybiBmYWxz
ZTsNCj4gICAgICAgcmV0dXJuIHRydWU7DQo+IH0NCg0KQ29uZmlybWVkIEkgY2Fu4oCZdCByZXBy
b2R1Y2UgdGhlIGlzc3VlIHdpdGggeW91ciBmaXguIA0KDQpUaGFua3MsDQpBbGkNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
