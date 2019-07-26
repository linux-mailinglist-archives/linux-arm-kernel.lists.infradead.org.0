Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E315476550
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGDnoryn7JTYUGOXvM5iIDkF6xWGNhXf8pdLF+MszU8=; b=Boh+dWkIOQC/b1
	vY0Rfks9nUTYbeWeywXVIrIJCz1O+pAs7pazcdhHzWF0w7mrydwKzDvKoaBy1vwfZm525PBC/3CmU
	uievOgJ7D1FnT0ysx/nPUxUuEFrLQSgtKTpsPr9HyOyVPEMNgxXg+Kzq8WMvrTPpKa9lUVLhXj/o7
	vWW85di1A7YRSLNi4Vc+O8Ov03c6UbfJx/07kAkeqceXsxymmeYupBIMl579Oyrndy6pPnWr5+2u2
	W+aTYvEBvYW+MCyLyzClQuItxAaOzDweC78koieqPEbJBeomN13lD2u//RVbfMi4IfuNjZRIneJOg
	q0+O6jFcGov8SYY8mgXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqz4F-0006AH-BX; Fri, 26 Jul 2019 12:11:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqz3x-00067v-82
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:11:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56453344;
 Fri, 26 Jul 2019 05:11:03 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 34CC33F694;
 Fri, 26 Jul 2019 05:11:02 -0700 (PDT)
Date: Fri, 26 Jul 2019 13:10:57 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH 1/3] arm64: perf: Mark expected switch fall-through
Message-ID: <20190726121056.GA26088@lakrids.cambridge.arm.com>
References: <20190726112716.19104-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726112716.19104-1-anders.roxell@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_051105_425315_EDC1B61D 
X-CRM114-Status: GOOD (  18.74  )
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

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mjc6MTZQTSArMDIwMCwgQW5kZXJzIFJveGVsbCB3
cm90ZToKPiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBieSBkZWZhdWx0
LCBjb21taXQgZDkzNTEyZWYwZjBlCj4gKCJNYWtlZmlsZTogR2xvYmFsbHkgZW5hYmxlIGZhbGwt
dGhyb3VnaCB3YXJuaW5nIiksIHRoZSBmb2xsb3dpbmcKPiB3YXJuaW5ncyB3YXMgc3RhcnRpbmcg
dG8gc2hvdyB1cDoKPiAKPiAuLi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6IElu
IGZ1bmN0aW9uIOKAmGh3X2JyZWFrcG9pbnRfYXJjaF9wYXJzZeKAmToKPiAuLi9hcmNoL2FybTY0
L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQwOjc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1h
eSBmYWxsCj4gIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ICAgICBpZiAoaHct
PmN0cmwubGVuID09IEFSTV9CUkVBS1BPSU5UX0xFTl8xKQo+ICAgICAgICBeCj4gLi4vYXJjaC9h
cm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjU0MjozOiBub3RlOiBoZXJlCj4gICAgY2FzZSAy
Ogo+ICAgIF5+fn4KPiAuLi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQ0Ojc6
IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsCj4gIHRocm91Z2ggWy1XaW1wbGljaXQt
ZmFsbHRocm91Z2g9XQo+ICAgICBpZiAoaHctPmN0cmwubGVuID09IEFSTV9CUkVBS1BPSU5UX0xF
Tl8yKQo+ICAgICAgICBeCj4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjU0
NjozOiBub3RlOiBoZXJlCj4gICAgZGVmYXVsdDoKPiAgICBefn5+fn5+Cj4gCj4gUmV3b3JrIHNv
IHRoYXQgdGhlIGNvbXBpbGVyIGRvZXNuJ3Qgd2FybiBhYm91dCBmYWxsLXRocm91Z2guIFJld29y
ayBzbwo+IHRoZSBjb2RlIGxvb2tzIGxpa2UgdGhlIGFybSBjb2RlLiBTaW5jZSB0aGUgY29tbWVu
dCBpbiB0aGUgZnVuY3Rpb24KPiBpbmRpY2F0ZXMgdGFodCB0aGlzIGlzIHN1cHBvc2VkIHRvIGJl
aGF2ZSB0aGUgc2FtZSB3YXkgYXMgYXJtMzIgYmVjYXVzZQoKVHlwbzogcy90YWh0L3RoYXQvCgo+
IGl0IGhhbmRsZXMgMzItYml0IHRhc2tzIGFsc28uCj4gCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcgIyB2My4xNisKPiBGaXhlczogNmVlMzNjMjcxMmZjICgiQVJNOiBod19icmVha3BvaW50
OiBjb3JyZWN0IGFuZCBzaW1wbGlmeSBhbGlnbm1lbnQgZml4dXAgY29kZSIpCj4gU2lnbmVkLW9m
Zi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgoKVGhlIHBhdGNo
IGl0c2VsZiBsb29rcyBmaW5lLCBidXQgSSBkb24ndCB0aGluayB0aGlzIG5lZWRzIGEgQ0MgdG8K
c3RhYmxlLCBub3IgZG9lcyBpdCByZXF1aXJlIHRoYXQgZml4ZXMgdGFnLCBhcyB0aGVyZSdzIG5v
IGZ1bmN0aW9uYWwKcHJvYmxlbS4KCklmIGFueXRoaW5nLCBpdCBmaXhlczoKCiAgZDkzNTEyZWYw
ZjBlICgiIE1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdhcm5pbmciKQoK
Li4uIGdpdmVuIHRoZSBjb21taXQgbWVzc2FnZSBmb3IgdGhhdCBwYXRjaCBzdGF0ZXM6CgogIE5v
dyB0aGF0IGFsbCB0aGUgZmFsbC10aHJvdWdoIHdhcm5pbmdzIGhhdmUgYmVlbiBhZGRyZXNzZWQg
aW4gdGhlCiAga2VybmVsLCBlbmFibGUgdGhlIGZhbGwtdGhyb3VnaCB3YXJuaW5nIGdsb2JhbGx5
LgoKLi4uIGFuZCB0aGUgZXhpc3RlbmNlIG9mIHRoaXMgcGF0Y2ggaW1wbGllcyBvdGhlcndpc2Uu
CgpJSVVDIHRoYXQgcGF0Y2ggaXNuJ3QgZXZlbiBpbiBtYWlubGluZSB5ZXQsIGJ1dCBnaXZlbiB0
aGlzIGlzIHNpbXBsZSBJCmltYWdpbmUgdGhhdCBXaWxsIGFuZCBDYXRhbGluIG1pZ2h0IGJlIGhh
cHB5IHRvIHBpY2sgdGhpcyB1cCBmb3IgdGhlCm5leHQgcmMuCgpUaGFua3MsCk1hcmsuCgo+IC0t
LQo+ICBhcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMgfCAxMSArKysrKysrLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMgYi9hcmNoL2FybTY0
L2tlcm5lbC9od19icmVha3BvaW50LmMKPiBpbmRleCBkY2ViODQ1MjA5NDguLmVhNjE2YWRmMWNm
MSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMKPiArKysg
Yi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMKPiBAQCAtNTM1LDE0ICs1MzUsMTcg
QEAgaW50IGh3X2JyZWFrcG9pbnRfYXJjaF9wYXJzZShzdHJ1Y3QgcGVyZl9ldmVudCAqYnAsCj4g
IAkJY2FzZSAwOgo+ICAJCQkvKiBBbGlnbmVkICovCj4gIAkJCWJyZWFrOwo+IC0JCWNhc2UgMToK
PiAtCQkJLyogQWxsb3cgc2luZ2xlIGJ5dGUgd2F0Y2hwb2ludC4gKi8KPiAtCQkJaWYgKGh3LT5j
dHJsLmxlbiA9PSBBUk1fQlJFQUtQT0lOVF9MRU5fMSkKPiAtCQkJCWJyZWFrOwo+ICAJCWNhc2Ug
MjoKPiAgCQkJLyogQWxsb3cgaGFsZndvcmQgd2F0Y2hwb2ludHMgYW5kIGJyZWFrcG9pbnRzLiAq
Lwo+ICAJCQlpZiAoaHctPmN0cmwubGVuID09IEFSTV9CUkVBS1BPSU5UX0xFTl8yKQo+ICAJCQkJ
YnJlYWs7Cj4gKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwo+ICsJCWNhc2UgMToKPiArCQljYXNlIDM6
Cj4gKwkJCS8qIEFsbG93IHNpbmdsZSBieXRlIHdhdGNocG9pbnQuICovCj4gKwkJCWlmIChody0+
Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzEpCj4gKwkJCQlicmVhazsKPiArCQkJLyog
RmFsbCB0aHJvdWdoICovCj4gIAkJZGVmYXVsdDoKPiAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4gIAkJ
fQo+IC0tIAo+IDIuMjAuMQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
