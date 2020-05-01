Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930681C1A36
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbd6bR96PMQgnrPoJ8RcJ/ipHmQkTbPyFLTXkzeASnM=; b=MXGox7pNxtfn7k
	4whtXDmRKhVr4HTZk85iZ8xLuccOL0v3drH0By7YmP3AroeisMOi9Lb4ug4Mt0IgG443SqwcaY3oK
	8+45EfqIY1tzCeNluvsJtflHVSopfNMOE4G1M2KXnd2DLcLX+p3q9DknYYcpFVwDVRYUconNC4RSw
	DyX/f1foHTWVBbtcKTIzXJ2pWfDAmiUaLCz2J8u+M685//dJiZgMyxJWr8AL42+2i5+cOrH7E0N8y
	QzZ2C/1KPE7sFOGC370iBeOj6xcKrnzgu12jVGIE2gLHodxCbejSlhRbCLTVggkDzfxXy7ljTdPoS
	nBQErOkmZm0934OK5veg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUY2x-0004uF-I6; Fri, 01 May 2020 15:57:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUY2r-0004tU-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:57:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16D2D30E;
 Fri,  1 May 2020 08:57:42 -0700 (PDT)
Received: from bogus (unknown [10.37.12.80])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B90543F68F;
 Fri,  1 May 2020 08:57:39 -0700 (PDT)
Date: Fri, 1 May 2020 16:57:29 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 5/5] arm/arm64: smccc: Add ARCH_SOC_ID support
Message-ID: <20200501155717.GA24840@bogus>
References: <20200430114814.14116-1-sudeep.holla@arm.com>
 <20200430114814.14116-6-sudeep.holla@arm.com>
 <241f0a4b-e5bb-f3d9-40ff-b2f088129a0c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <241f0a4b-e5bb-f3d9-40ff-b2f088129a0c@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_085745_879599_A82BBB5C 
X-CRM114-Status: GOOD (  28.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Harb Abdulhamid \(harb@amperecomputing.com\)" <harb@amperecomputing.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RldmUsCgpUaGFua3MgZm9yIHRha2luZyBhIHJldmlld2luZyB0aGVzZSBwYXRjaGVzLgoK
T24gRnJpLCBNYXkgMDEsIDIwMjAgYXQgMDQ6MDc6MzlQTSArMDEwMCwgU3RldmVuIFByaWNlIHdy
b3RlOgo+IE9uIDMwLzA0LzIwMjAgMTI6NDgsIFN1ZGVlcCBIb2xsYSB3cm90ZToKPiA+IFNNQ0ND
IHYxLjIgYWRkcyBhIG5ldyBvcHRpb25hbCBmdW5jdGlvbiBTTUNDQ19BUkNIX1NPQ19JRCB0byBv
YnRhaW4gYQo+ID4gU2lQIGRlZmluZWQgU29DIGlkZW50aWZpY2F0aW9uIHZhbHVlLiBBZGQgc3Vw
cG9ydCBmb3IgdGhlIHNhbWUuCj4gPgo+ID4gQWxzbyB1c2luZyB0aGUgU29DIGJ1cyBpbmZyYXN0
cnVjdHVyZSwgbGV0IHVzIGV4cG9zZSB0aGUgcGxhdGZvcm0KPiA+IHNwZWNpZmljIFNvQyBhdHJy
aWJ1dGVzIHVuZGVyIHN5c2ZzLiBXZSBhbHNvIHByb3ZpZGUgY3VzdG9tIHN5c2ZzIGZvcgo+ID4g
dGhlIHZlbmRvciBJRCBhcyBKRVAtMTA2IGJhbmsgYW5kIGlkZW50aWZpY2F0aW9uIGNvZGUuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4K
PiA+IC0tLQo+ID4gICBkcml2ZXJzL2Zpcm13YXJlL3BzY2kvTWFrZWZpbGUgfCAgIDIgKy0KPiA+
ICAgZHJpdmVycy9maXJtd2FyZS9wc2NpL3NvY19pZC5jIHwgMTQ4ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ID4gICBpbmNsdWRlL2xpbnV4L2FybS1zbWNjYy5oICAgICAgfCAg
IDUgKysKPiA+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxNTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9maXJtd2FyZS9wc2NpL3NvY19p
ZC5jCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9NYWtlZmlsZSBi
L2RyaXZlcnMvZmlybXdhcmUvcHNjaS9NYWtlZmlsZQo+ID4gaW5kZXggMTk1NmI4ODI0NzBmLi5j
MGIwYzljYTU3ZTQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2Zpcm13YXJlL3BzY2kvTWFrZWZp
bGUKPiA+ICsrKyBiL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9NYWtlZmlsZQo+ID4gQEAgLTEsNCAr
MSw0IEBACj4gPiAgICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ICAgIwo+
ID4gLW9iai0kKENPTkZJR19BUk1fUFNDSV9GVykJKz0gcHNjaS5vCj4gPiArb2JqLSQoQ09ORklH
X0FSTV9QU0NJX0ZXKQkrPSBwc2NpLm8gc29jX2lkLm8KPiA+ICAgb2JqLSQoQ09ORklHX0FSTV9Q
U0NJX0NIRUNLRVIpCSs9IHBzY2lfY2hlY2tlci5vCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9m
aXJtd2FyZS9wc2NpL3NvY19pZC5jIGIvZHJpdmVycy9maXJtd2FyZS9wc2NpL3NvY19pZC5jCj4g
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi44MjBmNjlkYWQ3
ZjUKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9zb2Nf
aWQuYwo+ID4gQEAgLTAsMCArMSwxNDggQEAKPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMAo+ID4gKy8qCj4gPiArICogQ29weXJpZ2h0IDIwMjAgQXJtIExpbWl0ZWQKPiA+
ICsgKi8KPiA+ICsKPiA+ICsjaW5jbHVkZSA8bGludXgvYXJtLXNtY2NjLmg+Cj4gPiArI2luY2x1
ZGUgPGxpbnV4L2JpdGZpZWxkLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgo+ID4g
KyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgva2VybmVsLmg+
Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvc3lzX3Nv
Yy5oPgo+ID4gKwo+ID4gKyNkZWZpbmUgU09DSURfSkVQMTA2X0JBTktfSURYX01BU0sJR0VOTUFT
SygzMCwgMjQpCj4gPiArI2RlZmluZSBTT0NJRF9KRVAxMDZfSURfQ09ERV9NQVNLCUdFTk1BU0so
MjMsIDE2KQo+ID4gKyNkZWZpbmUgU09DSURfSU1QX0RFRl9TT0NfSURfTUFTSwlHRU5NQVNLKDE1
LCAwKQo+ID4gKyNkZWZpbmUgSkVQMTA2X0JBTktfSURYKHgpCSh1OCkoRklFTERfR0VUKFNPQ0lE
X0pFUDEwNl9CQU5LX0lEWF9NQVNLLCAoeCkpKQo+ID4gKyNkZWZpbmUgSkVQMTA2X0lEX0NPREUo
eCkJKHU4KShGSUVMRF9HRVQoU09DSURfSkVQMTA2X0lEX0NPREVfTUFTSywgKHgpKSkKPiA+ICsj
ZGVmaW5lIElNUF9ERUZfU09DX0lEKHgpCSh1MTYpKEZJRUxEX0dFVChTT0NJRF9JTVBfREVGX1NP
Q19JRF9NQVNLLCAoeCkpKQo+ID4gKwo+ID4gK3N0YXRpYyBpbnQgc29jX2lkX3ZlcnNpb247Cj4g
PiArc3RhdGljIHN0cnVjdCBzb2NfZGV2aWNlICpzb2NfZGV2Owo+ID4gK3N0YXRpYyBzdHJ1Y3Qg
c29jX2RldmljZV9hdHRyaWJ1dGUgKnNvY19kZXZfYXR0cjsKPiA+ICsKPiA+ICtzdGF0aWMgaW50
IHNtY2NjX21hcF9lcnJvcl9jb2Rlcyh1bnNpZ25lZCBsb25nIGEwKQo+ID4gK3sKPiA+ICsJaWYg
KGEwID09IFNNQ0NDX1JFVF9JTlZBTElEX1BBUkFNRVRFUikKPiA+ICsJCXJldHVybiAtRUlOVkFM
Owo+ID4gKwlpZiAoYTAgPT0gU01DQ0NfUkVUX05PVF9TVVBQT1JURUQpCj4gPiArCQlyZXR1cm4g
LUVPUE5PVFNVUFA7Cj4gPiArCXJldHVybiAwOwo+Cj4gSXQgc2VlbXMgb2RkIHRvIHNwZWNpYWwg
Y2FzZSBqdXN0IHRob3NlIGVycm9ycy4gV2hpbGUgdGhleSBhcmUgdGhlIG9ubHkKPiBlcnJvcnMg
d2UgZXhwZWN0LCBhbnkgcmVzdWx0IHdpdGggdGhlIGhpZ2ggYml0IHNldCBpcyBhbiBlcnJvciAo
YXJndWFibHkgYQo+IGJ1ZyBpbiB0aGUgZmlybXdhcmUpIHNvIHNob3VsZCByZWFsbHkgY2F1c2Ug
YW4gZXJyb3IgcmV0dXJuLgo+CgpJIGFncmVlIGFuZCBoYXBweSB0byBjaGFuZ2UgaXQuIEkgdG9v
IHRob3VnaHQgYWJvdXQgdGhlIHNhbWUgZm9yIGEgd2hpbGUgYW5kCnRoZXkgbGVmdCBpdCBmb3Ig
cmV2aWV3IHRpbWUgdG8gZmluYWxpc2Ug8J+YhCAKCj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBp
bnQgc21jY2Nfc29jX2lkX3N1cHBvcnRfY2hlY2sodm9pZCkKPiA+ICt7Cj4gPiArCXN0cnVjdCBh
cm1fc21jY2NfcmVzIHJlczsKPiA+ICsKPiA+ICsJaWYgKGFybV9zbWNjY18xXzFfZ2V0X2NvbmR1
aXQoKSA9PSBTTUNDQ19DT05EVUlUX05PTkUpIHsKPiA+ICsJCXByX2VycigiJXM6IGludmFsaWQg
U01DQ0MgY29uZHVpdFxuIiwgX19mdW5jX18pOwo+ID4gKwkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+
ID4gKwl9Cj4gPiArCj4gPiArCWFybV9zbWNjY18xXzFfaW52b2tlKEFSTV9TTUNDQ19BUkNIX0ZF
QVRVUkVTX0ZVTkNfSUQsCj4gPiArCQkJICAgICBBUk1fU01DQ0NfQVJDSF9TT0NfSUQsICZyZXMp
Owo+ID4gKwo+ID4gKwlyZXR1cm4gc21jY2NfbWFwX2Vycm9yX2NvZGVzKHJlcy5hMCk7Cj4gPiAr
fQo+ID4gKwo+ID4gK3N0YXRpYyBzc2l6ZV90Cj4gPiAramVwMTA2X2NvbnRfYmFua19jb2RlX3No
b3coc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPiA+
ICsJCQkgICBjaGFyICpidWYpCj4gPiArewo+ID4gKwlyZXR1cm4gc3ByaW50ZihidWYsICIlMDJ4
XG4iLCBKRVAxMDZfQkFOS19JRFgoc29jX2lkX3ZlcnNpb24pICsgMSk7Cj4gPiArfQo+ID4gKwo+
ID4gK3N0YXRpYyBERVZJQ0VfQVRUUl9STyhqZXAxMDZfY29udF9iYW5rX2NvZGUpOwo+ID4gKwo+
ID4gK3N0YXRpYyBzc2l6ZV90Cj4gPiAramVwMTA2X2lkZW50aWZpY2F0aW9uX2NvZGVfc2hvdyhz
dHJ1Y3QgZGV2aWNlICpkZXYsCj4gPiArCQkJCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRy
LCBjaGFyICpidWYpCj4gPiArewo+ID4gKwlyZXR1cm4gc3ByaW50ZihidWYsICIlMDJ4XG4iLCBK
RVAxMDZfSURfQ09ERShzb2NfaWRfdmVyc2lvbikgJiAweDdGKTsKPgo+IEl0IHNlZW1zIG9kZCB0
byBoYXZlIHRoZSBtYXNrIGRlZmluZWQgdG8gaW5jbHVkZSBhIGJpdCB0aGF0IGlzIHRoZW4gYWx3
YXlzCj4gbWFza2VkIG9mZi4gRnJvbSB0aGUgc3BlYyBJIHByZXN1bWUgdGhpcyBpcyBhIHBhcml0
eSBiaXQsIGJ1dCBpdCB3b3VsZCBiZQo+IGdvb2QgdG8gaGF2ZSBhIGNvbW1lbnQgZXhwbGFpbmlu
ZyB0aGlzLgo+CgpTdXJlLCBhY3R1YWxseSBJIGNhbiB0byBtYWtlIGl0IHBhcnQgb2YgdGhlIG1h
Y3JvIGl0c2VsZiBhbmQgYWRkIGEgbm90ZQp0aGVyZS4KCj4gPiArfQo+ID4gKwo+ID4gK3N0YXRp
YyBERVZJQ0VfQVRUUl9STyhqZXAxMDZfaWRlbnRpZmljYXRpb25fY29kZSk7Cj4gPiArCj4gPiAr
c3RhdGljIHN0cnVjdCBhdHRyaWJ1dGUgKmplcDEwNl9pZF9hdHRyc1tdID0gewo+ID4gKwkmZGV2
X2F0dHJfamVwMTA2X2NvbnRfYmFua19jb2RlLmF0dHIsCj4gPiArCSZkZXZfYXR0cl9qZXAxMDZf
aWRlbnRpZmljYXRpb25fY29kZS5hdHRyLAo+ID4gKwlOVUxMCj4gPiArfTsKPiA+ICsKPiA+ICtB
VFRSSUJVVEVfR1JPVVBTKGplcDEwNl9pZCk7Cj4gPiArCj4gPiArc3RhdGljIGludCBfX2luaXQg
c21jY2Nfc29jX2luaXQodm9pZCkKPiA+ICt7Cj4gPiArCXN0cnVjdCBkZXZpY2UgKmRldjsKPiA+
ICsJaW50IHJldCwgc29jX2lkX3JldjsKPiA+ICsJc3RydWN0IGFybV9zbWNjY19yZXMgcmVzOwo+
ID4gKwlzdGF0aWMgY2hhciBzb2NfaWRfc3RyWzhdLCBzb2NfaWRfcmV2X3N0clsxMl07Cj4gPiAr
Cj4gPiArCWlmIChhcm1fc21jY2NfZ2V0X3ZlcnNpb24oKSA8IEFSTV9TTUNDQ19WRVJTSU9OXzFf
MikKPiA+ICsJCXJldHVybiAwOwo+Cj4gTklUOiBEbyB3ZSBhY3R1YWxseSBuZWVkIHRvIGNoZWNr
IHRoZSB2ZXJzaW9uIGhlcmUgLSBvciB3b3VsZCBwcm9iaW5nCj4gQVJNX1NNQ0NDX0FSQ0hfRkVB
VFVSRVNfRlVOQ19JRCBhcyBpcyBkb25lIGJlbG93IHN1ZmZpY2llbnQ/IEknbSBub3QgYXdhcmUK
PiBvZiB0aGlzIHJlbHlpbmcgb24gYW55IG5ldyBzZW1hbnRpY3MgdGhhdCB2MS4yIGFkZGVkLgo+
CgpJdCBzaG91bGQgYmUgc3VmZmljaWVudCwgYnV0IEkgYW0gdHJ5aW5nIHRvIGF2b2lkIHJhaXNp
bmcgZXJyb3IgaWYgaXQgaXMKbm90IFNNQ0NDIHYxLjIrLCBoZW5jZSB0aGUgcmV0dXJuIDAuCgo+
ID4gKwo+ID4gKwlyZXQgPSBzbWNjY19zb2NfaWRfc3VwcG9ydF9jaGVjaygpOwo+ID4gKwlpZiAo
cmV0KQo+ID4gKwkJcmV0dXJuIHJldDsKPgo+IFRoaXMgc2VlbXMgb2RkIC0gaWYgdGhlIHZlcnNp
b24gaXMgPHYxLjIgdGhlbiB3ZSByZXR1cm4gMC4gQnV0IGlmIGl0J3MgPj0xLjIKPiBidXQgZG9l
c24ndCBzdXBwb3J0IFNPQ19JRCB0aGVuIGl0J3MgYW4gZXJyb3IgcmV0dXJuPwo+CgpZb3UgYXJl
IHJpZ2h0LCBJIHNlZSB0aGF0IG5vdy4gSSBjYW4gZmxhZyBhIG5vdGUvaW5mbyBhbmQgcmV0dXJu
IDAuCgotLQpSZWdhcmRzLApTdWRlZXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
