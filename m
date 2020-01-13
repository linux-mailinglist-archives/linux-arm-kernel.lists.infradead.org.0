Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4E21397E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o0y0FidprMsXHgbzVckyuYO9lGqoBr+rMJpUrnOhQTE=; b=oK20vFLkRU+UeK5X2OO367i+6N
	dpySNuYTZzXD55axJAAWRXMgwczch3MOo+KTbsAa4SmLxUV/0nDOLdNMzQAWGI8WAIDpToDdcfZXr
	sDsitrOc0EuahI5jKq7mS67RBd4wBOflZcxQT44UVEx9x3MArtg2e2rxOYNKLpvZJJHL5mrS1jqdo
	dTZEZuuVh4M4boEtQdmeYrmRku+M5/J/7cSypgh0JcNgtdoj1emtRmZ2RxYLg0nQa9clNHM6MItMN
	P2JAUTAUipLRxcJoixO+W2Ar6eSGkpawABoK1fI2A0427iOcljB9Gx0pohvwLq6XjJr05l7Rd3dWn
	waMGBSVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3fS-0000no-JT; Mon, 13 Jan 2020 17:38:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3fE-0000mv-SS
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:38:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so9509063wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 09:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=eI/hjqguFIOdMUSo3q0+87ouKq6C8zjThus+1sH1VO0=;
 b=nqIxncL1yFiSxKpJfW7b03JH6kat4Dudfk5nBxAOSe9fy852eC0rgDnVwIWEsn77zM
 dE2aPjfeec9grIBn2D6TKVGWvlCbHoPkDREmeg0ugSwGl0uKWjOqlhz9PFubYFsQ8hJq
 8AHQ6VOa8ibgvSsql/4I74XQVotBz96ZolcljqE4cr4l+8cvTw7sEml7DFJSNlRp/B9+
 eVWnY0PZROjEhdpBdVDxSkNBYF88APTOPXCBepgcHORk1RgjGlFS/BVQMBIB13S3DoM4
 qS2qi++eAdhVtdEtzeRHg8B93xPXcGOz8lnvTcAHy50WvUnbCWZgk+TBfG75rYhImHj8
 +nrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=eI/hjqguFIOdMUSo3q0+87ouKq6C8zjThus+1sH1VO0=;
 b=M8JFjH3hOq7XXkOCGk5taDT6E2pGQM10J/LWLtueVqL5Ef0QeTURSlh3eoOTtrRB9y
 fNs6IXY0iJMK6vhEOcbs5RNIJkiE2pVHEOA4mHe3poq38IrYMkaNGaBUPg6v7yIq1Zb5
 lH9EhBKUirAddx3FiZUFJwozmHOsSQhMg+7d0poUHJxN4UhzLD1a0tXwnMFZXHAY++hC
 oPm23GKpXimDeKOQ2htLrk2iQj6KxnEOgEIZgJGLOSi+F/Rnsj9aaDs0l6nUINVJC0ug
 lXhkYvgFRh0TPi1A0v3dwCbMMpNrQLgHDn847dDJvfCwX3O1g6x6fUsEVgj8mksighEg
 H8xw==
X-Gm-Message-State: APjAAAUOgNtNyuMtwL9JKmOBIXoJvORrNLEwWUcIjbYPwUYynLIO+kI4
 ArkDU1L4PW7uBz3C945nVVriAQ==
X-Google-Smtp-Source: APXvYqyNWRIWYrBMrEZC8POMivYqJE726L4BZ9LWUi0lr76+NdJQGfH6a/xGkKlsVQXVJu8cb+LQmw==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr20201081wrt.367.1578937085286; 
 Mon, 13 Jan 2020 09:38:05 -0800 (PST)
Received: from zen.linaroharston ([51.148.130.216])
 by smtp.gmail.com with ESMTPSA id x14sm14824060wmj.42.2020.01.13.09.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 09:38:04 -0800 (PST)
Received: from zen (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id 7EF811FF87;
 Mon, 13 Jan 2020 17:38:03 +0000 (GMT)
References: <20200110160511.17821-1-alex.bennee@linaro.org>
 <8455cdf6-e5c3-bd84-5b85-33ffad581d0e@arm.com>
User-agent: mu4e 1.3.6; emacs 28.0.50
From: Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [kvm-unit-tests PATCH] arm: expand the timer tests
In-reply-to: <8455cdf6-e5c3-bd84-5b85-33ffad581d0e@arm.com>
Date: Mon, 13 Jan 2020 17:38:03 +0000
Message-ID: <871rs3ntok.fsf@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_093808_924572_E4DE8205 
X-CRM114-Status: GOOD (  24.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkFsZXhhbmRydSBFbGlzZWkgPGFsZXhhbmRydS5lbGlzZWlAYXJtLmNvbT4gd3JpdGVzOgoKPiBI
aSwKPgo+IE9uIDEvMTAvMjAgNDowNSBQTSwgQWxleCBCZW5uw6llIHdyb3RlOgo+PiBUaGlzIHdh
cyBhbiBhdHRlbXB0IHRvIHJlcGxpY2F0ZSBhIFFFTVUgYnVnLiBIb3dldmVyIHRvIHRyaWdnZXIg
dGhlCj4+IGJ1ZyB5b3UgbmVlZCB0byBoYXZlIGFuIG9mZnNldCBzZXQgaW4gRUwyIHdoaWNoIGt2
bS11bml0LXRlc3RzIGlzCj4+IHVuYWJsZSB0byBkby4gSG93ZXZlciBpdCBkb2VzIGV4ZXJjaXNl
IHNvbWUgbW9yZSBjb3JuZXIgY2FzZXMuCj4+Cj4+IEJ1ZzogaHR0cHM6Ly9idWdzLmxhdW5jaHBh
ZC5uZXQvYnVncy8xODU5MDIxCj4KPiBJJ20gbm90IGF3YXJlIG9mIGFueSBCdWc6IHRhZ3MgaW4g
dGhlIExpbnV4IGtlcm5lbC4gSWYgeW91IHdhbnQgcGVvcGxlIHRvIGZvbGxvdwo+IHRoZSBsaW5r
IHRvIHRoZSBidWcsIGhvdyBhYm91dCByZWZlcmVuY2luZyBzb21ldGhpbmcgbGlrZSB0aGlzOgo+
Cj4gIlRoaXMgd2FzIGFuIGF0dGVtcHQgdG8gcmVwbGljYXRlIGEgUUVNVSBidWcgWzFdLiBbLi5d
Cj4KPiBbMV0gaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvcWVtdS8rYnVnLzE4NTkwMjEiCgpP
SywgSSdsbCBmaXggdGhhdCBpbiB2Mi4KCj4KPiBBbHNvLCBhcmUgbGF1bmNocGFkIGJ1ZyByZXBv
cnRzIHBlcm1hbmVudD8gV2lsbCB0aGUgbGluayBzdGlsbCB3b3JrIGluCj4gYSB5ZWFycycgdGlt
ZT8KClRoZXkgc2hvdWxkIGJlIC0gdGhleSBhcmUgYSB1bmlxdWUgaWQgYW5kIHdlIHVzZSB0aGVt
IGluIHRoZSBRRU1VIHNvdXJjZQp0cmVlLgoKPgo+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEJlbm7D
qWUgPGFsZXguYmVubmVlQGxpbmFyby5vcmc+Cj4+IC0tLQo+PiAgYXJtL3RpbWVyLmMgfCAyNyAr
KysrKysrKysrKysrKysrKysrKysrKysrKy0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcm0vdGltZXIuYyBiL2Fy
bS90aW1lci5jCj4+IGluZGV4IGYzOTBlOGUuLmFlMWQyOTkgMTAwNjQ0Cj4+IC0tLSBhL2FybS90
aW1lci5jCj4+ICsrKyBiL2FybS90aW1lci5jCj4+IEBAIC0yMTQsMjEgKzIxNCw0NiBAQCBzdGF0
aWMgdm9pZCB0ZXN0X3RpbWVyKHN0cnVjdCB0aW1lcl9pbmZvICppbmZvKQo+PiAgCSAqIHN0aWxs
IHJlYWQgdGhlIHBlbmRpbmcgc3RhdGUgZXZlbiBpZiBpdCdzIGRpc2FibGVkLiAqLwo+PiAgCXNl
dF90aW1lcl9pcnFfZW5hYmxlZChpbmZvLCBmYWxzZSk7Cj4+ICAKPj4gKwkvKiBWZXJpZnkgY291
bnQgZ29lcyB1cCAqLwo+PiArCXJlcG9ydChpbmZvLT5yZWFkX2NvdW50ZXIoKSA+PSBub3csICJj
b3VudGVyIGluY3JlbWVudHMiKTsKPj4gKwo+PiAgCS8qIEVuYWJsZSB0aGUgdGltZXIsIGJ1dCBz
Y2hlZHVsZSBpdCBmb3IgbXVjaCBsYXRlciAqLwo+PiAgCWluZm8tPndyaXRlX2N2YWwobGF0ZXIp
Owo+PiAgCWluZm8tPndyaXRlX2N0bChBUkNIX1RJTUVSX0NUTF9FTkFCTEUpOwo+PiAgCWlzYigp
Owo+PiAtCXJlcG9ydCghZ2ljX3RpbWVyX3BlbmRpbmcoaW5mbyksICJub3QgcGVuZGluZyBiZWZv
cmUiKTsKPj4gKwlyZXBvcnQoIWdpY190aW1lcl9wZW5kaW5nKGluZm8pLCAibm90IHBlbmRpbmcg
YmVmb3JlIDEwcyIpOwo+PiArCj4+ICsJLyogQ2hlY2sgd2l0aCBhIG1heGltdW0gcG9zc2libGUg
Y3ZhbCAqLwo+PiArCWluZm8tPndyaXRlX2N2YWwoVUlOVDY0X01BWCk7Cj4+ICsJaXNiKCk7Cj4+
ICsJcmVwb3J0KCFnaWNfdGltZXJfcGVuZGluZyhpbmZvKSwgIm5vdCBwZW5kaW5nIGJlZm9yZSBV
SU5UNjRfTUFYIik7Cj4+ICsKPj4gKwkvKiBhbHNvIGJ5IHNldHRpbmcgdHZhbCAqLwo+Cj4gQWxs
IHRoZSBjb21tZW50cyBpbiB0aGlzIGZpbGUgc2VlbSB0byBzdGFydCB3aXRoIGEgY2FwaXRhbCBs
ZXR0ZXIuCj4KPj4gKwlpbmZvLT53cml0ZV90dmFsKHRpbWVfMTBzKTsKPj4gKwlpc2IoKTsKPj4g
KwlyZXBvcnQoIWdpY190aW1lcl9wZW5kaW5nKGluZm8pLCAibm90IHBlbmRpbmcgYmVmb3JlIDEw
cyAodmlhIHR2YWwpIik7Cj4KPiBZb3UgY2FuIHJlbW92ZSB0aGUgIih2aWEgdHZhbCkiIHBhcnQg
LSB0aGUgbWVzc2FnZSBpcyB1bmlxdWUgZW5vdWdoIHRvIGZpZ3VyZSBvdXQKPiB3aGljaCBwYXJ0
IG9mIHRoZSB0ZXN0IGl0IHJlZmVycyB0by4KCkkgYWRkZWQgaXQgdG8gZGlmZmVyZW50aWF0ZSB3
aXRoIHRoZSBtZXNzYWdlIGEgbGl0dGxlIGZ1cnRoZXIgYWJvdmUuCgo+PiArCXJlcG9ydF9pbmZv
KCJUVkFMIGlzICVkIChkZWx0YSBDVkFMICVsZCkgdGlja3MiLAo+PiArCQkgICAgaW5mby0+cmVh
ZF90dmFsKCksIGluZm8tPnJlYWRfY3ZhbCgpIC0gaW5mby0+cmVhZF9jb3VudGVyKCkpOwo+Cj4g
SSdtIG5vdCBzdXJlIHdoYXQgeW91IGFyZSB0cnlpbmcgdG8gYWNoaWV2ZSB3aXRoIHRoaXMuIFlv
dSBjYW4gdHJhbnNmb3JtIGl0IHRvCj4gY2hlY2sgdGhhdCBUVkFMIGlzIGluZGVlZCBwb3NpdGl2
ZSBhbmQgKGFsbW9zdCkgZXF1YWwgdG8gY3ZhbCAtIGNudHBjdCwgc29tZXRoaW5nCj4gbGlrZSB0
aGlzOgo+Cj4gKwlzMzIgdHZhbCA9IGluZm8tPnJlYWRfdHZhbCgpOwo+ICsJcmVwb3J0KHR2YWwg
PiAwICYmIHR2YWwgPD0gaW5mby0+cmVhZF9jdmFsKCkgLQo+IGluZm8tPnJlYWRfY291bnRlcigp
LCAiVFZBTCBtZWFzdXJlcyB0aW1lIHRvIG5leHQgaW50ZXJydXB0Iik7CgpZZXMgaXQgd2FzIHB1
cmVseSBpbmZvcm1hdGlvbmFsIHRvIHNheSB0dmFsIGRlY3JlbWVudHMgdG93YXJkcyB0aGUgbmV4
dApJUlEuIEkgY2FuIG1ha2UgaXQgYSBwdXJlIHRlc3QuCgo+Cj4+ICAKPj4gKyAgICAgICAgLyog
Y2hlY2sgcGVuZGluZyBvbmNlIGN2YWwgaXMgYmVmb3JlIG5vdyAqLwo+Cj4gVGhpcyBjb21tZW50
IGFkZHMgbm90aGluZyB0byB0aGUgdGVzdC4KCmRyb3BwZWQuCgo+Cj4+ICAJaW5mby0+d3JpdGVf
Y3ZhbChub3cgLSAxKTsKPj4gIAlpc2IoKTsKPj4gIAlyZXBvcnQoZ2ljX3RpbWVyX3BlbmRpbmco
aW5mbyksICJpbnRlcnJ1cHQgc2lnbmFsIHBlbmRpbmciKTsKPj4gKwlyZXBvcnRfaW5mbygiVFZB
TCBpcyAlZCB0aWNrcyIsIGluZm8tPnJlYWRfdHZhbCgpKTsKPgo+IFlvdSBjYW4gdGVzdCB0aGF0
IFRWQUwgaXMgbmVnYXRpdmUgaGVyZSBpbnN0ZWFkIG9mIHByaW50aW5nIHRoZSB2YWx1ZS4KCm9r
LgoKPgo+PiAgCj4+ICAJLyogRGlzYWJsZSB0aGUgdGltZXIgYWdhaW4gYW5kIHByZXBhcmUgdG8g
dGFrZSBpbnRlcnJ1cHRzICovCj4+ICAJaW5mby0+d3JpdGVfY3RsKDApOwo+PiAgCXNldF90aW1l
cl9pcnFfZW5hYmxlZChpbmZvLCB0cnVlKTsKPj4gIAlyZXBvcnQoIWdpY190aW1lcl9wZW5kaW5n
KGluZm8pLCAiaW50ZXJydXB0IHNpZ25hbCBubyBsb25nZXIgcGVuZGluZyIpOwo+PiAgCj4+ICsJ
LyogUUVNVSBidWcgd2hlbiBjbnR2b2ZmX2VsMiA+IDAKPj4gKwkgKiBodHRwczovL2J1Z3MubGF1
bmNocGFkLm5ldC9idWdzLzE4NTkwMjEgKi8KPgo+IFRoaXMgbG9va3MgY29uZnVzaW5nIHRvIG1l
LiBGcm9tIHRoZSBjb21taXQgbWVzc2FnZSwgSSBnb3QgdGhhdCBrdm0tdW5pdC10ZXN0cwo+IG5l
ZWRzIHFlbXUgdG8gc2V0IGEgc3BlY2lhbCB2YWx1ZSBmb3IgQ05UVk9GRl9FTDIuIEJ1dCB0aGUg
Y29tbWVudHMgc2VlbXMgdG8KPiBzdWdnZXN0IHRoYXQga3ZtLXVuaXQtdGVzdHMgY2FuIHRyaWdn
ZXIgdGhlIGJ1ZyB3aXRob3V0IHFlbXUgZG9pbmcgYW55dGhpbmcKPiBzcGVjaWFsLiBDYW4geW91
IGVsYWJvcmF0ZSB1bmRlciB3aGljaCBjb25kaXRpb24ga3ZtLXVuaXQtdGVzdHMgY2FuCj4gdHJp
Z2dlciB0aGUgYnVnPwoKSXQgY2FuJ3Qgd2l0aG91dCBzb21lIHNvcnQgb2YgbWVjaGFuaXNtIHRv
IHNldCB0aGUgaHlwZXJ2aXNvciByZWdpc3RlcnMKYmVmb3JlIHJ1bm5pbmcgdGhlIHRlc3QuIFRo
ZSBRRU1VIGJ1ZyBpcyBhbiBvdmVyZmxvdyB3aGVuIGN2YWwgb2YgVUlOVDY0X01BWAp3aXRoIGEg
bm9uLXplcm8gQ05UVk9GRl9FTDIuCgpSdW5uaW5nIHVuZGVyIEtWTSB0aGUgaG9zdCBrZXJuZWwg
d2lsbCBoYXZlIGxpa2VseSBzZXQgQ05UVk9GRl9FTDIgdG8Kc29tZSBzb3J0IG9mIHZhbHVlIHdp
dGg6CgoJdXBkYXRlX3Z0aW1lcl9jbnR2b2ZmKHZjcHUsIGt2bV9waHlzX3RpbWVyX3JlYWQoKSk7
Cgo+Cj4+ICsJaW5mby0+d3JpdGVfY3RsKEFSQ0hfVElNRVJfQ1RMX0VOQUJMRSk7Cj4+ICsJaW5m
by0+d3JpdGVfY3ZhbChVSU5UNjRfTUFYKTsKPgo+IFRoZSBvcmRlciBpcyB3cm9uZyAtIHlvdSB3
cml0ZSBDVkFMIGZpcnN0LCAqdGhlbiogZW5hYmxlIHRvIHRpbWVyLiBPdGhlcndpc2UgeW91Cj4g
bWlnaHQgZ2V0IGFuIGludGVycnVwdCBiZWNhdXNlIG9mIHRoZSBwcmV2aW91cyBDVkFMIHZhbHVl
Lgo+Cj4gVGhlIHByZXZpb3VzIHZhbHVlIGZvciBDVkFMIHdhcyBub3cgLTEsIHNvIHlvdXIgY2hh
bmdlIHRyaWdnZXJzIGFuIHVud2FudGVkCj4gaW50ZXJydXB0IGFmdGVyIGVuYWJsaW5nIHRoZSB0
aW1lci4gVGhlIGludGVycnVwdCBoYW5kbGVyIG1hc2tzIHRoZSB0aW1lcgo+IGludGVycnVwdCBh
dCB0aGUgdGltZXIgbGV2ZWwsIHdoaWNoIG1lYW5zIHRoYXQgYXMgZmFyIGFzIHRoZSBnaWMgaXMg
Y29uY2VybmVkIHRoZQo+IGludGVycnVwdCBpcyBub3QgcGVuZGluZywgbWFraW5nIHRoZSByZXBv
cnQgY2FsbCBhZnRlcndhcmRzIHVzZWxlc3MuCj4KPj4gKwlpc2IoKTsKPj4gKwlyZXBvcnQoIWdp
Y190aW1lcl9wZW5kaW5nKGluZm8pLCAibm90IHBlbmRpbmcgYmVmb3JlIFVJTlQ2NF9NQVggKGly
cXMgb24pIik7Cj4KPiBUaGlzIGNoZWNrIGNhbiBiZSBpbXByb3ZlZC4gWW91IHdhbnQgdG8gY2hl
Y2sgdGhlIHRpbWVyIENUTC5JU1RBVFVTIGhlcmUsIG5vdCB0aGUKPiBnaWMuIEEgZGV2aWNlIChp
biB0aGlzIGNhc2UsIHRoZSB0aW1lcikgY2FuIGFzc2VydCB0aGUgaW50ZXJydXB0LCBidXQgdGhl
IGdpYyBkb2VzCj4gbm90IHNhbXBsZSBpdCBpbW1lZGlhdGVseS4gQ29tZSB0byB0aGluayBvZiBp
dCwgdGhlIGVudGlyZSB0aW1lciB0ZXN0IGlzIHdyb25nCj4gYmVjYXVzZSBvZiB0aGlzLgoKSXMg
aXQgd29ydGggc3RpbGwgY2hlY2tpbmcgdGhlIEdJQyBvciBqdXN0IHJlcGxhY2luZyBldmVyeXRo
aW5nIHdpdGgKY2FsbHMgdG86CgogIHN0YXRpYyBib29sIHRpbWVyX3BlbmRpbmcoc3RydWN0IHRp
bWVyX2luZm8gKmluZm8pCiAgewogICAgICAgICAgcmV0dXJuIGluZm8tPnJlYWRfY3RsKCkgJiBB
UkNIX1RJTUVSX0NUTF9JU1RBVFVTOwogIH0KCj4KPiBUaGFua3MsCj4gQWxleAo+PiArCWluZm8t
PndyaXRlX2N0bCgwKTsKPj4gKwo+PiAgCXJlcG9ydCh0ZXN0X2N2YWxfMTBtc2VjKGluZm8pLCAi
bGF0ZW5jeSB3aXRoaW4gMTAgbXMiKTsKPj4gIAlyZXBvcnQoaW5mby0+aXJxX3JlY2VpdmVkLCAi
aW50ZXJydXB0IHJlY2VpdmVkIik7Cj4+ICAKCgotLSAKQWxleCBCZW5uw6llCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
