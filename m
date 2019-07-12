Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B10E3672BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPpFewnmNg9oZIk2C0O1IWhzvmE2JR+QkHN0rddJdcc=; b=OL3WHLZiTU/bD1
	z6a65p0d4xgwCtBd38qZ6wMZERr1lxNQfKIRw0D4beUB1o3H0AJZBwD+U1MjVKywU8il7y6OnPHNh
	KNQRGoYhZjrOsCUeo4IwCyVciVhG3B51PNBw0nm+d6vyUhYCH8qZCOimxwfx+kx1B3ueI4CBMT7rq
	QVoI7GBRV9Rirjvi4rfj1MUhbGGZCExlAPimTz+VhJ5B7yRKJfGRVFSDV1Z9Cr18DOeyllt2xN8fh
	EsVvQXGutnGayCPTIftlPPc9v95R0zA5lJAJg+yw558jXAxx0dMgjNZNdxUeNky/bxLoyTtiYcrHf
	JwSzHcv6+tfLoQJOxwdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlxlX-0003rW-FH; Fri, 12 Jul 2019 15:47:19 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlxlK-0003r8-PP
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 15:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1562946426; x=1594482426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:mime-version: content-transfer-encoding;
 bh=VDPsSfLDMFGUaTkgILPNmeH3Xs2t+isejJof1raF71o=;
 b=VVov2uZIBS0yJblXjDvMTBOH3PmLPTSDJKL4MhQq6+L9PbZZ3aikPLrP
 9oSe166QEarWfG2ky2JmeOoOmRhKCtE1Luw1v1YQynBTbjMKoNZNCjTDG
 y6wlydc/F9GKhFdy2aW/mIGqOSK66u0UPHU2KljgT423XrK3XmGpYpY1e c=;
X-IronPort-AV: E=Sophos;i="5.62,483,1554768000"; d="scan'208";a="774330175"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2b-5bdc5131.us-west-2.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 12 Jul 2019 15:47:03 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2b-5bdc5131.us-west-2.amazon.com (Postfix) with ESMTPS
 id D3013A244D; Fri, 12 Jul 2019 15:47:01 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 12 Jul 2019 15:47:01 +0000
Received: from EX13D01EUB003.ant.amazon.com (10.43.166.248) by
 EX13D01EUB001.ant.amazon.com (10.43.166.194) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 12 Jul 2019 15:46:59 +0000
Received: from EX13D01EUB003.ant.amazon.com ([10.43.166.248]) by
 EX13D01EUB003.ant.amazon.com ([10.43.166.248]) with mapi id 15.00.1367.000;
 Fri, 12 Jul 2019 15:47:00 +0000
From: "Raslan, KarimAllah" <karahmed@amazon.de>
To: "will@kernel.org" <will@kernel.org>
Subject: Re: [PATCH] arm: Extend the check for RAM in /dev/mem
Thread-Topic: [PATCH] arm: Extend the check for RAM in /dev/mem
Thread-Index: AQHVODcIGfDHKrKqiE2jyO8cjDhCoqbHE70AgAAEl4CAAAXNgIAAA4OA
Date: Fri, 12 Jul 2019 15:46:59 +0000
Message-ID: <1562946417.1345.20.camel@amazon.de>
References: <1562883681-18659-1-git-send-email-karahmed@amazon.de>
 <20190712145711.mxmnuyn6kpv2dr7u@willie-the-truck>
 <1562944417.1345.17.camel@amazon.de>
 <20190712153423.ypyqexfmajrmsa5r@willie-the-truck>
In-Reply-To: <20190712153423.ypyqexfmajrmsa5r@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.166.107]
Content-ID: <F2AD7DB16D996F4593FC6CC21BAC9AC8@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_084706_961600_0D8AF38E 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
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
 "yuzhao@google.com" <yuzhao@google.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "info@metux.net" <info@metux.net>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yaojun8558363@gmail.com" <yaojun8558363@gmail.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA3LTEyIGF0IDE2OjM0ICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToNCj4g
T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDM6MTM6MzhQTSArMDAwMCwgUmFzbGFuLCBLYXJpbUFs
bGFoIHdyb3RlOg0KPiA+IA0KPiA+IE9uIEZyaSwgMjAxOS0wNy0xMiBhdCAxNTo1NyArMDEwMCwg
V2lsbCBEZWFjb24gd3JvdGU6DQo+ID4gPiANCj4gPiA+IE9uIEZyaSwgSnVsIDEyLCAyMDE5IGF0
IDEyOjIxOjIxQU0gKzAyMDAsIEthcmltQWxsYWggQWhtZWQgd3JvdGU6DQo+ID4gPiA+IA0KPiA+
ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvbW0vbW11LmMgYi9hcmNoL2Fy
bTY0L21tL21tdS5jDQo+ID4gPiA+IGluZGV4IDM2NDVmMjkuLmNkYzNlOGUgMTAwNjQ0DQo+ID4g
PiA+IC0tLSBhL2FyY2gvYXJtNjQvbW0vbW11LmMNCj4gPiA+ID4gKysrIGIvYXJjaC9hcm02NC9t
bS9tbXUuYw0KPiA+ID4gPiBAQCAtNzgsNyArNzgsNyBAQCB2b2lkIHNldF9zd2FwcGVyX3BnZChw
Z2RfdCAqcGdkcCwgcGdkX3QgcGdkKQ0KPiA+ID4gPiAgcGdwcm90X3QgcGh5c19tZW1fYWNjZXNz
X3Byb3Qoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGxvbmcgcGZuLA0KPiA+ID4gPiAgCQkJ
ICAgICAgdW5zaWduZWQgbG9uZyBzaXplLCBwZ3Byb3RfdCB2bWFfcHJvdCkNCj4gPiA+ID4gIHsN
Cj4gPiA+ID4gLQlpZiAoIXBmbl92YWxpZChwZm4pKQ0KPiA+ID4gPiArCWlmICghbWVtYmxvY2tf
aXNfbWVtb3J5KF9fcGZuX3RvX3BoeXMocGZuKSkpDQo+ID4gPiANCj4gPiA+IFRoaXMgbG9va3Mg
YnJva2VuIHRvIG1lLCBzaW5jZSBpdCB3aWxsIGVuZCB1cCByZXR1cm5pbmcgJ3RydWUnIGZvciBu
b21hcA0KPiA+ID4gbWVtb3J5IGFuZCB3ZSByZWFsbHkgZG9uJ3Qgd2FudCB0byBtYXAgdGhhdCB1
c2luZyB3cml0ZWJhY2sgYXR0cmlidXRlcy4NCj4gPiANCj4gPiBUcnVlLCBJIHdpbGwgZml4IHRo
aXMgYnkgdXNpbmfCoG1lbWJsb2NrX2lzX21hcF9tZW1vcnkgaW5zdGVhZC4gVGhhdCBzYWlkLCBk
bw0KPiA+IHlvdSBoYXZlIGFueSBjb25jZXJucyBhYm91dCB0aGlzIGFwcHJvYWNoIGluwqBnZW5l
cmFsPw0KPiANCj4gSWYgeW91IGRvIHRoYXQsIEkgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgeW91IG5l
ZWQgdGhlIHBhdGNoIGF0IGFsbCBnaXZlbiBvdXINCj4gaW1wbGVtZW50YXRpb24gb2YgcGZuX3Zh
bGlkKCkgaW4gYXJjaC9hcm02NC9tbS9pbml0LmMuDQoNCk9vcHMhIFJpZ2h0LCBJIGd1ZXNzIHRo
YXQgd291bGQgbm90IHdvcmsgZWl0aGVyLg0KDQpMZXQgbWUgZGlnIGludG8gYSBiZXR0ZXIgd2F5
IHRvIGRvIHRoYXQuDQoNCj4gDQo+IFdpbGwNCgoKCkFtYXpvbiBEZXZlbG9wbWVudCBDZW50ZXIg
R2VybWFueSBHbWJICktyYXVzZW5zdHIuIDM4CjEwMTE3IEJlcmxpbgpHZXNjaGFlZnRzZnVlaHJ1
bmc6IENocmlzdGlhbiBTY2hsYWVnZXIsIFJhbGYgSGVyYnJpY2gKRWluZ2V0cmFnZW4gYW0gQW10
c2dlcmljaHQgQ2hhcmxvdHRlbmJ1cmcgdW50ZXIgSFJCIDE0OTE3MyBCClNpdHo6IEJlcmxpbgpV
c3QtSUQ6IERFIDI4OSAyMzcgODc5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
