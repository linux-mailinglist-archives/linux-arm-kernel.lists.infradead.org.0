Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E987766F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14Xd8Cqq1yaxhOqYrGJZP45nVBijXHDtUm9qu3lpRq8=; b=BVo37C+Y2IZVTP
	br/H1c9bCNb+sHO9buI5+kkm3rjq4o0D9it6qIfEI6mBH8E60zt0IjNso6+YL7igWfqvLahTgFW8G
	uOqrBpwIKUKVQroxGzF1NUZ0iJSagf9XUB2Slu+I44Mn4SI48wQJpj3izI0Y3GtVUHhnQUBJwCLQk
	PMosue/x1S6oQIwGMpSnYBWI9MJ7tZD6M1hWY6KMXQfrhP1iWA0IJyq/gvZon/M4JIy7miW2DRqkV
	dvS0W2UOVOfEUSa9mgytb6/yPm5muM8SfMYnjqTUBcOknDtWwF/Al1PPFI1wy0juSGPh4dnVwKTar
	gzbGa/x+1umd3ZoDm5nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzxr-0005PS-CU; Fri, 26 Jul 2019 13:08:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzxe-0005Ox-Sf
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:08:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D119218D4;
 Fri, 26 Jul 2019 13:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564146518;
 bh=nyisBE4O2xGmPKme/Zgrvs6HBJR9RJ66g+1LT4Ivjrc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LgQXq098EtOVgHG67rjk7dt3bpXrJlPkAQoNpmFWb4NWHDIs142jU+8ycHZhU7s2L
 Emer6MdM1EHnQbBNgkaPghRuN98oX6dv6jGsri2XZ7s7mB2pNt7uQlbnDhLM3q5IQR
 RtmZ//o5SEKJzLsfndCe9lp0gfG61xYdVN0HpgaQ=
Date: Fri, 26 Jul 2019 14:08:34 +0100
From: Will Deacon <will@kernel.org>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH] arm: perf: Mark expected switch fall-through
Message-ID: <20190726130834.coonga4kygk23ojx@willie-the-truck>
References: <20190726112732.19257-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726112732.19257-1-anders.roxell@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_060838_950406_538DB541 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mjc6MzJQTSArMDIwMCwgQW5kZXJzIFJveGVsbCB3
cm90ZToKPiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBieSBkZWZhdWx0
LCBkOTM1MTJlZjBmMGUKPiAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdo
IHdhcm5pbmciKSwgd2UgY291bGQgc2VlIHRoZQo+IGZvbGxvd2luZyB3YXJuaW5ncyB3YXMgc3Rh
cnRpbmcgdG8gc2hvdyB1cC4gSG93ZXZlciwgdGhpcyB3YXMgb3JpZ2luYWxseQo+IGludHJvZHVj
ZWQgaW4gY29tbWl0IDZlZTMzYzI3MTJmYyAoIkFSTTogaHdfYnJlYWtwb2ludDogY29ycmVjdCBh
bmQKPiBzaW1wbGlmeSBhbGlnbm1lbnQgZml4dXAgY29kZSIpLiBDb21taXQgZDk2OGQyYjgwMWQ4
ICgiQVJNOiA3NDk3LzE6Cj4gaHdfYnJlYWtwb2ludDogYWxsb3cgc2luZ2xlLWJ5dGUgd2F0Y2hw
b2ludHMgb24gYWxsIGFkZHJlc3NlcyIpIHdhcwo+IHdyaXR0ZW4gd2l0aCB0aGUgaW50ZW50IHRv
IGFsbG93IHNpbmdsZS1ieXRlIHdhdGNocG9pbnRzIG9uIGFsbAo+IGFkZHJlc3NlcyBidXQgZm9y
Z290IHRvIG1vdmUgJ2Nhc2UgMTonIGRvd24gYmVsb3cgJ2Nhc2UgMjonLgo+IAo+IC4uL2FyY2gv
YXJtL2tlcm5lbC9od19icmVha3BvaW50LmM6IEluIGZ1bmN0aW9uIOKAmGh3X2JyZWFrcG9pbnRf
YXJjaF9wYXJzZeKAmToKPiAuLi9hcmNoL2FybS9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjYwOTo3
OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAo+ICB0aHJvdWdoIFstV2ltcGxpY2l0
LWZhbGx0aHJvdWdoPV0KPiAgICAgaWYgKGh3LT5jdHJsLmxlbiA9PSBBUk1fQlJFQUtQT0lOVF9M
RU5fMikKPiAgICAgICAgXgo+IC4uL2FyY2gvYXJtL2tlcm5lbC9od19icmVha3BvaW50LmM6NjEx
OjM6IG5vdGU6IGhlcmUKPiAgICBjYXNlIDM6Cj4gICAgXn5+fgo+IC4uL2FyY2gvYXJtL2tlcm5l
bC9od19icmVha3BvaW50LmM6NjEzOjc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxs
Cj4gIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ICAgICBpZiAoaHctPmN0cmwu
bGVuID09IEFSTV9CUkVBS1BPSU5UX0xFTl8xKQo+ICAgICAgICBeCj4gLi4vYXJjaC9hcm0va2Vy
bmVsL2h3X2JyZWFrcG9pbnQuYzo2MTU6Mzogbm90ZTogaGVyZQo+ICAgIGRlZmF1bHQ6Cj4gICAg
Xn5+fn5+fgo+IAo+IFJld29yayBzbyAnY2FzZSAxOicgYXJlIG5leHQgdG8gJ2Nhc2UgMzonIGFu
ZCBhbHNvIGFkZCAnLyogRmFsbCB0aHJvdWdoCj4gKi8nIHNvIHRoYXQgdGhlIGNvbXBpbGVyIGRv
ZXNuJ3Qgd2FybiBhYm91dCBmYWxsLXRocm91Z2guCj4gCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcgIyB2My4xNgo+IEZpeGVzOiA2ZWUzM2MyNzEyZmMgKCJBUk06IGh3X2JyZWFrcG9pbnQ6
IGNvcnJlY3QgYW5kIHNpbXBsaWZ5IGFsaWdubWVudCBmaXh1cCBjb2RlIikKPiBTaWduZWQtb2Zm
LWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGFy
Y2gvYXJtL2tlcm5lbC9od19icmVha3BvaW50LmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9rZXJuZWwvaHdfYnJlYWtwb2ludC5jIGIvYXJjaC9hcm0va2VybmVsL2h3X2JyZWFrcG9pbnQu
Ywo+IGluZGV4IGFmOGI4ZTE1ZjU4OS4uYzE0ZDUwNjk2OWJhIDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtL2tlcm5lbC9od19icmVha3BvaW50LmMKPiArKysgYi9hcmNoL2FybS9rZXJuZWwvaHdfYnJl
YWtwb2ludC5jCj4gQEAgLTYwMywxNSArNjAzLDE3IEBAIGludCBod19icmVha3BvaW50X2FyY2hf
cGFyc2Uoc3RydWN0IHBlcmZfZXZlbnQgKmJwLAo+ICAJY2FzZSAwOgo+ICAJCS8qIEFsaWduZWQg
Ki8KPiAgCQlicmVhazsKPiAtCWNhc2UgMToKPiAgCWNhc2UgMjoKPiAgCQkvKiBBbGxvdyBoYWxm
d29yZCB3YXRjaHBvaW50cyBhbmQgYnJlYWtwb2ludHMuICovCj4gIAkJaWYgKGh3LT5jdHJsLmxl
biA9PSBBUk1fQlJFQUtQT0lOVF9MRU5fMikKPiAgCQkJYnJlYWs7Cj4gKwkJLyogRmFsbCB0aHJv
dWdoICovCj4gKwljYXNlIDE6CgpXaHkgYXJlIHlvdSBtb3ZpbmcgdGhlICdjYXNlIDE6JyBoZXJl
PyBBRkFJQ1QsIHlvdXIgcGF0Y2ggbm93IHJlamVjdHMKYnl0ZS1hbGlnbmVkIHdhdGNocG9pbnRz
IG9mIGxlbmd0aCAyLgoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
