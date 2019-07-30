Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2115E7A8E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOYYSY2+VT4Dj0YQEc2GR0fkma10qCOVurvz9l5HWYI=; b=tOLI1YsE69evS8
	TWH1gLJdDGD1hyrJmxVm3UnaUoQ+ZP5RAQGOcrziVQhJl4N+2viMxDzcxnv34B1e/XoZPu2skncNz
	gMu5WLMOHmwoH2wUenmBOvM2PR7ierMrpfzytHz51bM7Va2F7WMu/iuHUTQcj/uMw9izaOdJJehFf
	SyVrslArdOzDdElgiKtOcGIYfTuBkQ5Z37y9oBL3C+MC6nl1Rqf8nvyOtMS1Cqa39/lNZT49ppdIU
	as1PJ5cZwoED+UYDwa/V1DQgobvPS1AG74KuVeY4fJEJscymW2IT5KMjfx8XBW6kWnLhjbeqyRY2X
	eCWGvr6kwUMWE+WSvUUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRUA-0002cI-If; Tue, 30 Jul 2019 12:44:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRTy-0002bx-2d
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:44:00 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68FD52089E;
 Tue, 30 Jul 2019 12:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564490637;
 bh=mGJfgDis7lFxQTibrlwo/CHqOx+DsqVJYO1TNNcS7h4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UUGaksynRCgKQ1s5ZcA8SMI7/VZWYXnjDuAtpM6+rm16sUM2BkCoBMWPbfeGeyYtX
 s8MRiUsTw9AxP68uLNUH8O0WtIzeXmiXw5vDr9RXFzHoA8YOtVvmeFuvXdvU3Lp3cs
 ZoreLJUCXvi6555PA2gikhhk9NKnME9zHHvewmWc=
Date: Tue, 30 Jul 2019 13:43:53 +0100
From: Will Deacon <will@kernel.org>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH] arm_pmu: Mark expected switch fall-through
Message-ID: <20190730124352.iwh5kbnc2d76mqyf@willie-the-truck>
References: <20190726112737.19309-1-anders.roxell@linaro.org>
 <20190726122956.GC26088@lakrids.cambridge.arm.com>
 <20190726151825.GA12552@e121166-lin.cambridge.arm.com>
 <20190730112415.GB51922@lakrids.cambridge.arm.com>
 <20190730112758.ctgg6l5gldsefdgs@willie-the-truck>
 <CADYN=9+9wnpX1jSaDmowDov9GerQsdobxnVqwAf=WGk=7-VcRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADYN=9+9wnpX1jSaDmowDov9GerQsdobxnVqwAf=WGk=7-VcRw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_054358_158445_BF23C4F1 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDI6MzA6MjdQTSArMDIwMCwgQW5kZXJzIFJveGVsbCB3
cm90ZToKPiBPbiBUdWUsIDMwIEp1bCAyMDE5IGF0IDEzOjI4LCBXaWxsIERlYWNvbiA8d2lsbEBr
ZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAxMjoyNDox
NVBNICswMTAwLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgSnVsIDI2LCAyMDE5
IGF0IDA0OjE4OjI1UE0gKzAxMDAsIExvcmVuem8gUGllcmFsaXNpIHdyb3RlOgo+ID4gPiA+IE9u
IEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjI5OjU2UE0gKzAxMDAsIE1hcmsgUnV0bGFuZCB3cm90
ZToKPiA+ID4gPiA+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjI3OjM3UE0gKzAyMDAsIEFu
ZGVycyBSb3hlbGwgd3JvdGU6Cj4gPiA+ID4gPiA+IFdoZW4gZmFsbC10aHJvdWdoIHdhcm5pbmdz
IHdhcyBlbmFibGVkIGJ5IGRlZmF1bHQgdGhlIGZvbGxvd2luZyB3YXJuaW5nCj4gPiA+ID4gPiA+
IHdhcyBzdGFydGluZyB0byBzaG93IHVwOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiAuLi9kcml2
ZXJzL3BlcmYvYXJtX3BtdS5jOiBJbiBmdW5jdGlvbiDigJhjcHVfcG1fcG11X25vdGlmeeKAmToK
PiA+ID4gPiA+ID4gLi4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzo3MjY6Mzogd2FybmluZzogdGhp
cyBzdGF0ZW1lbnQgbWF5IGZhbGwKPiA+ID4gPiA+ID4gIHRocm91Z2ggWy1XaW1wbGljaXQtZmFs
bHRocm91Z2g9XQo+ID4gPiA+ID4gPiAgICBjcHVfcG1fcG11X3NldHVwKGFybXBtdSwgY21kKTsK
PiA+ID4gPiA+ID4gICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+ID4gPiA+ID4g
Li4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzo3Mjc6Mjogbm90ZTogaGVyZQo+ID4gPiA+ID4gPiAg
IGNhc2UgQ1BVX1BNX0VOVEVSX0ZBSUxFRDoKPiA+ID4gPiA+ID4gICBefn5+Cj4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+IFJld29yayBzbyB0aGF0IHRoZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJv
dXQgZmFsbC10aHJvdWdoLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBGaXhlczogZDkzNTEyZWYw
ZjBlICgiTWFrZWZpbGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxsLXRocm91Z2ggd2FybmluZyIpCj4g
PiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuZGVycyBSb3hlbGwgPGFuZGVycy5yb3hlbGxAbGlu
YXJvLm9yZz4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEknbSBub3Qg
Y29udmluY2VkIHRoYXQgdGhpcyBpcyB0aGUgY29ycmVjdCBwYXRjaCB0byBmaXggdGhpcyBpc3N1
ZS4KPiA+ID4gPiA+ID4gSG93ZXZlciwgSSBjYW4ndCBzZWUgd2h5IHdlIGRvICdhcm1wbXUtPnN0
YXJ0KGFybXBtdSk7JyBvbmx5IGluICdjYXNlCj4gPiA+ID4gPiA+IENQVV9QTV9FTlRFUl9GQUlM
RUQnIGFuZCB3aHkgd2Ugbm90IGNhbGwgZnVuY3Rpb24gY3B1X3BtX3BtdV9zZXR1cCgpCj4gPiA+
ID4gPiA+IHRoZXJlIGFsc28sIHNpbmNlIGluIGNwdV9wbV9wbXVfc2V0dXAoKSBoYXMgYSBjYXNl
IHByZXBhcmVkIGZvcgo+ID4gPiA+ID4gPiBDUFVfUE1fRU5URVJfRkFJTEVELgo+ID4gPiA+ID4K
PiA+ID4gPiA+IEkgYWdyZWUsIHRoaW5rIHRoYXQgc2hvdWxkIGJlOgo+ID4gPiA+ID4KPiA+ID4g
PiA+ICAgY2FzZSBDUFVfUE1fRVhJVDoKPiA+ID4gPiA+ICAgY2FzZSBDUFVfUE1fRU5URVJfRkFJ
TEVEOgo+ID4gPiA+ID4gICAgICAgICAgIGNwdV9wbV9wbXVfc2V0dXAoYXJtcG11LCBjbWQpOwo+
ID4gPiA+ID4gICAgICAgICAgIGFybXBtdS0+c3RhcnQoYXJtcG11KTsKPiA+ID4gPiA+ICAgICAg
ICAgICBicmVhazsKPiA+ID4gPiA+Cj4gPiA+ID4gPiAuLi4gc28gdGhhdCB3ZSByZS1zdGFydCB0
aGUgZXZlbnRzIGJlZm9yZSB3ZSBzdGFydCB0aGUgUE1VLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRo
YXQgd291bGQgYmUgYSBmaXggZm9yIGNvbW1pdDoKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgIGRhNGU0
ZjE4YWZlMGYzNzIgKCJkcml2ZXJzL3BlcmY6IGFybV9wbXU6IGltcGxlbWVudCBDUFVfUE0gbm90
aWZpZXIiKQo+ID4gPiA+Cj4gPiA+ID4gWWVzIHRoYXQncyBjb3JyZWN0LCBhcG9sb2dpZXMuIFBy
b2JhYmx5IHdlIGRpZCBub3QgaGl0IGl0IGJlY2F1c2UgQ1BVIFBNCj4gPiA+ID4gbm90aWZpZXIg
ZW50cnkgZmFpbHVyZXMgYXJlIGEgcHJldHR5IHJhcmUgZXZlbnQ7IHJlZ2FyZGxlc3M6Cj4gPiA+
ID4KPiA+ID4gPiBBY2tlZC1ieTogTG9yZW56byBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFsaXNp
QGFybS5jb20+Cj4gPiA+ID4KPiA+ID4gPiBJIGNhbiBzZW5kIHRoZSB1cGRhdGVkIGZpeCwganVz
dCBsZXQgbWUga25vdy4KPiA+ID4KPiA+ID4gSSdtIG5vdCBzdXJlIHdoYXQgV2lsbCB3YW50cywg
YnV0IGFzc3VtaW5nIHlvdSBkbyBzbzoKPiA+ID4KPiA+ID4gQWNrZWQtYnk6IE1hcmsgUnV0bGFu
ZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4gPgo+ID4gSSBnYXZlIHVwIHdhaXRpbmcKPiAKPiBJ
J20gc29ycnkgZm9yIGxldHRpbmcgeW91IHdhaXQuCgpObywgbm90IGF0IGFsbC4gSXQncyBqdXN0
IHRoYXQgZXZlcnlib2R5IHdhcyBwaWxpbmcgaW4gd2l0aCBwYXRjaGVzIGZvcgp0aGVzZSBpc3N1
ZXMgYW5kIEkgc3VzcGVjdGVkIHlvdSB3ZXJlIGJ1c3kgZGVhbGluZyB3aXRoIHJlc3BvbnNlcy4g
UmF0aGVyCnRoYW4gd2FpdCwgSSBmaWd1cmVkIHRoZSBiZXN0IGJldCB3YXMganVzdCB0byBnZXQg
dGhpcyBmaXhlZC4KCkFyZSB5b3UgZ29pbmcgdG8gcmVzcGluIHRoZSBTTU1VdjMgY2hhbmdlIHBl
ciBSb2JpbidzIGZlZWRiYWNrPwoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
