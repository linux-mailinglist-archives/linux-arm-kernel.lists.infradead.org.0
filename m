Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA9D76578
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jl9MLjYu5NAsf05ey+s6/wfhIOqU3t3wvBuXjEW8utE=; b=Ruo5Ho9LLBe7Ym
	PvoNKC51SkMK7BFNA7GmCpxCCqQC7im7+N7vNE32nv/0rwODH0u7z9MKajO+oWh3Pt1FTyUdphf0k
	ZVldwWzD/rBkFGtA2Eq8xyyC+h72VZkXIeLMxeRdKu/g8MLp8bQSPry7JOG4jfBoH8IGzzRkCKbIz
	Ndg7GYRGvj3Xe0pJKFQWHeKcPoU4tOgBOf346WRqUx5CRhX0PvfFqYqWW17nCtPIQR6kXInSLvTdM
	NV8meXTOM9Pke5RwYZp9vUSQ5CW9USdUJabFeAFrYKR+BP/SwyLIOa4lRtXt1kXfDWyKT03rnPV8s
	VcgY+BcUJFK580TtgHTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqz70-0007CN-JH; Fri, 26 Jul 2019 12:14:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqz6k-0007Bj-IQ
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:13:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1E78337;
 Fri, 26 Jul 2019 05:13:57 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0F5C3F694;
 Fri, 26 Jul 2019 05:13:56 -0700 (PDT)
Date: Fri, 26 Jul 2019 13:13:54 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH 1/3] arm64: perf: Mark expected switch fall-through
Message-ID: <20190726121354.GB26088@lakrids.cambridge.arm.com>
References: <20190726112716.19104-1-anders.roxell@linaro.org>
 <20190726121056.GA26088@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726121056.GA26088@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_051358_690538_33F64667 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6MTA6NTdQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjI3OjE2UE0gKzAyMDAsIEFuZGVycyBS
b3hlbGwgd3JvdGU6Cj4gPiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBi
eSBkZWZhdWx0LCBjb21taXQgZDkzNTEyZWYwZjBlCj4gPiAoIk1ha2VmaWxlOiBHbG9iYWxseSBl
bmFibGUgZmFsbC10aHJvdWdoIHdhcm5pbmciKSwgdGhlIGZvbGxvd2luZwo+ID4gd2FybmluZ3Mg
d2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6Cj4gPiAKPiA+IC4uL2FyY2gvYXJtNjQva2VybmVsL2h3
X2JyZWFrcG9pbnQuYzogSW4gZnVuY3Rpb24g4oCYaHdfYnJlYWtwb2ludF9hcmNoX3BhcnNl4oCZ
Ogo+ID4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjU0MDo3OiB3YXJuaW5n
OiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAo+ID4gIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRo
cm91Z2g9XQo+ID4gICAgIGlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzEp
Cj4gPiAgICAgICAgXgo+ID4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjU0
MjozOiBub3RlOiBoZXJlCj4gPiAgICBjYXNlIDI6Cj4gPiAgICBefn5+Cj4gPiAuLi9hcmNoL2Fy
bTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQ0Ojc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50
IG1heSBmYWxsCj4gPiAgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4gPiAgICAg
aWYgKGh3LT5jdHJsLmxlbiA9PSBBUk1fQlJFQUtQT0lOVF9MRU5fMikKPiA+ICAgICAgICBeCj4g
PiAuLi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQ2OjM6IG5vdGU6IGhlcmUK
PiA+ICAgIGRlZmF1bHQ6Cj4gPiAgICBefn5+fn5+Cj4gPiAKPiA+IFJld29yayBzbyB0aGF0IHRo
ZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJvdWdoLiBSZXdvcmsgc28KPiA+
IHRoZSBjb2RlIGxvb2tzIGxpa2UgdGhlIGFybSBjb2RlLiBTaW5jZSB0aGUgY29tbWVudCBpbiB0
aGUgZnVuY3Rpb24KPiA+IGluZGljYXRlcyB0YWh0IHRoaXMgaXMgc3VwcG9zZWQgdG8gYmVoYXZl
IHRoZSBzYW1lIHdheSBhcyBhcm0zMiBiZWNhdXNlCj4gCj4gVHlwbzogcy90YWh0L3RoYXQvCj4g
Cj4gPiBpdCBoYW5kbGVzIDMyLWJpdCB0YXNrcyBhbHNvLgo+ID4gCj4gPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZyAjIHYzLjE2Kwo+ID4gRml4ZXM6IDZlZTMzYzI3MTJmYyAoIkFSTTogaHdf
YnJlYWtwb2ludDogY29ycmVjdCBhbmQgc2ltcGxpZnkgYWxpZ25tZW50IGZpeHVwIGNvZGUiKQo+
ID4gU2lnbmVkLW9mZi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3Jn
Pgo+IAo+IFRoZSBwYXRjaCBpdHNlbGYgbG9va3MgZmluZSwgYnV0IEkgZG9uJ3QgdGhpbmsgdGhp
cyBuZWVkcyBhIENDIHRvCj4gc3RhYmxlLCBub3IgZG9lcyBpdCByZXF1aXJlIHRoYXQgZml4ZXMg
dGFnLCBhcyB0aGVyZSdzIG5vIGZ1bmN0aW9uYWwKPiBwcm9ibGVtLgoKSG1tLi4uIEkgbm93IHNl
ZSBJIHNwb2tlIHRvbyBzb29uLCBhbmQgdGhpcyBpcyBtYWtpbmcgdGhlIDEtYnl0ZQpicmVha3Bv
aW50IHdvcmsgYXQgYSAzLWJ5dGUgb2Zmc2V0LgoKR2l2ZW4gdGhhdDoKCkFja2VkLWJ5OiBNYXJr
IFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgoKLi4uIGFuZCB0aGUgZml4ZXMgYW5kIHN0
YWJsZSB0YWdzIGFyZSBhcHByb3ByaWF0ZSBmb3IgdGhhdCBwb3J0aW9uIG9mCnRoZSBwYXRjaC4K
ClNvcnJ5IGZvciB0aGUgbm9pc2UuCgpUaGFua3MsCk1hcmsuCgoKPiA+IC0tLQo+ID4gIGFyY2gv
YXJtNjQva2VybmVsL2h3X2JyZWFrcG9pbnQuYyB8IDExICsrKysrKystLS0tCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9pbnQuYyBiL2FyY2gvYXJtNjQva2Vy
bmVsL2h3X2JyZWFrcG9pbnQuYwo+ID4gaW5kZXggZGNlYjg0NTIwOTQ4Li5lYTYxNmFkZjFjZjEg
MTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMKPiA+ICsr
KyBiL2FyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9pbnQuYwo+ID4gQEAgLTUzNSwxNCArNTM1
LDE3IEBAIGludCBod19icmVha3BvaW50X2FyY2hfcGFyc2Uoc3RydWN0IHBlcmZfZXZlbnQgKmJw
LAo+ID4gIAkJY2FzZSAwOgo+ID4gIAkJCS8qIEFsaWduZWQgKi8KPiA+ICAJCQlicmVhazsKPiA+
IC0JCWNhc2UgMToKPiA+IC0JCQkvKiBBbGxvdyBzaW5nbGUgYnl0ZSB3YXRjaHBvaW50LiAqLwo+
ID4gLQkJCWlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzEpCj4gPiAtCQkJ
CWJyZWFrOwo+ID4gIAkJY2FzZSAyOgo+ID4gIAkJCS8qIEFsbG93IGhhbGZ3b3JkIHdhdGNocG9p
bnRzIGFuZCBicmVha3BvaW50cy4gKi8KPiA+ICAJCQlpZiAoaHctPmN0cmwubGVuID09IEFSTV9C
UkVBS1BPSU5UX0xFTl8yKQo+ID4gIAkJCQlicmVhazsKPiA+ICsJCQkvKiBGYWxsIHRocm91Z2gg
Ki8KPiA+ICsJCWNhc2UgMToKPiA+ICsJCWNhc2UgMzoKPiA+ICsJCQkvKiBBbGxvdyBzaW5nbGUg
Ynl0ZSB3YXRjaHBvaW50LiAqLwo+ID4gKwkJCWlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFL
UE9JTlRfTEVOXzEpCj4gPiArCQkJCWJyZWFrOwo+ID4gKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwo+
ID4gIAkJZGVmYXVsdDoKPiA+ICAJCQlyZXR1cm4gLUVJTlZBTDsKPiA+ICAJCX0KPiA+IC0tIAo+
ID4gMi4yMC4xCj4gPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
