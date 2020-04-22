Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F681B3DE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKimHV8iuiDv0sM73+UBAEVfnJkWCE8FAWmZqfB2s50=; b=ecAOJIQXm4XW8f
	iYFn40HeDfehgBLpz603y1OoIUE+TTSUD2XriJTi4SfWzF9poVYwZUUXhGwrw/TVvQ3ic3DkSoVl4
	OS86iLI3JQh0E+riZMOsh/C8OJgYCHh+HzMkfSdUlaN8OWL2SaJNPGTBlxms+tlT34YC5zGMZY3wI
	WUoHaj5m7iCh6tLXXCPOavJXDUlAvoURvHpEo944B0xYnxd1zYTT1zH0iNdOH1wIpOv+ElJRuTvjF
	BSO0Xc0lGJYqdopoZLcESugXlpqFZmJ/OG0+cOpFLT76BHaXMwhMOCHoARoqJO6rQBoL6GYqOb1RI
	69rslGaDPRDjaNv3o7Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCVp-0004rn-Ut; Wed, 22 Apr 2020 10:21:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCVd-0004qx-KJ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:21:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F0D131B;
 Wed, 22 Apr 2020 03:21:37 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2D1B3F68F;
 Wed, 22 Apr 2020 03:21:36 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 9CCBE682F3D; Wed, 22 Apr 2020 11:21:35 +0100 (BST)
Date: Wed, 22 Apr 2020 11:21:35 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 07/17] clk: vexpress-osc: Use the devres clock API variants
Message-ID: <20200422102135.GS364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-8-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-8-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_032137_709590_A9DDC809 
X-CRM114-Status: GOOD (  18.96  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDg6MDBQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gSW4gcHJlcGFyYXRpb24gdG8gZW5hYmxlIHRoZSB2ZXhwcmVzcy1vc2MgY2xvY2sgZHJp
dmVyIGFzIGEgbW9kdWxlLAo+IGNvbnZlcnQgdGhlIGRyaXZlciB0byB1c2UgdGhlIG1hbmFnZWQg
ZGV2cmVzIGNsb2NrIEFQSSB2YXJpYW50cy4gV2l0aAo+IHRoaXMsIGEgZHJpdmVyIC5yZW1vdmUo
KSBob29rIGlzIG5vdCBuZWVkZWQuCj4gCj4gQ2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBh
cm0uY29tPgoKQWNrZWQtYnk6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKPiBD
YzogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4KPiBDYzogTG9yZW56byBQaWVy
YWxpc2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxp
bnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPiBDYzogU3RlcGhlbiBCb3lkIDxzYm95ZEBrZXJuZWwu
b3JnPgo+IENjOiBsaW51eC1jbGtAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogUm9i
IEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9jbGsvdmVyc2F0aWxl
L2Nsay12ZXhwcmVzcy1vc2MuYyB8IDEwICsrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
bGsvdmVyc2F0aWxlL2Nsay12ZXhwcmVzcy1vc2MuYyBiL2RyaXZlcnMvY2xrL3ZlcnNhdGlsZS9j
bGstdmV4cHJlc3Mtb3NjLmMKPiBpbmRleCA3YWRlMTQ2YTNlYTkuLjViYjFkNWE3MTRkMCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay92ZXJzYXRpbGUvY2xrLXZleHByZXNzLW9zYy5jCj4gKysr
IGIvZHJpdmVycy9jbGsvdmVyc2F0aWxlL2Nsay12ZXhwcmVzcy1vc2MuYwo+IEBAIC02NSw4ICs2
NSw4IEBAIHN0YXRpYyBpbnQgdmV4cHJlc3Nfb3NjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gIHsKPiAgCXN0cnVjdCBjbGtfaW5pdF9kYXRhIGluaXQ7Cj4gIAlzdHJ1Y3Qg
dmV4cHJlc3Nfb3NjICpvc2M7Cj4gLQlzdHJ1Y3QgY2xrICpjbGs7Cj4gIAl1MzIgcmFuZ2VbMl07
Cj4gKwlpbnQgcmV0Owo+ICAKPiAgCW9zYyA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXpl
b2YoKm9zYyksIEdGUF9LRVJORUwpOwo+ICAJaWYgKCFvc2MpCj4gQEAgLTkyLDExICs5MiwxMSBA
QCBzdGF0aWMgaW50IHZleHByZXNzX29zY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ICAKPiAgCW9zYy0+aHcuaW5pdCA9ICZpbml0Owo+ICAKPiAtCWNsayA9IGNsa19yZWdp
c3RlcihOVUxMLCAmb3NjLT5odyk7Cj4gLQlpZiAoSVNfRVJSKGNsaykpCj4gLQkJcmV0dXJuIFBU
Ul9FUlIoY2xrKTsKPiArCXJldCA9IGRldm1fY2xrX2h3X3JlZ2lzdGVyKCZwZGV2LT5kZXYsICZv
c2MtPmh3KTsKPiArCWlmIChyZXQgPCAwKQo+ICsJCXJldHVybiByZXQ7Cj4gIAo+IC0Jb2ZfY2xr
X2FkZF9wcm92aWRlcihwZGV2LT5kZXYub2Zfbm9kZSwgb2ZfY2xrX3NyY19zaW1wbGVfZ2V0LCBj
bGspOwo+ICsJZGV2bV9vZl9jbGtfYWRkX2h3X3Byb3ZpZGVyKCZwZGV2LT5kZXYsIG9mX2Nsa19o
d19zaW1wbGVfZ2V0LCAmb3NjLT5odyk7Cj4gIAljbGtfaHdfc2V0X3JhdGVfcmFuZ2UoJm9zYy0+
aHcsIG9zYy0+cmF0ZV9taW4sIG9zYy0+cmF0ZV9tYXgpOwo+ICAKPiAgCWRldl9kYmcoJnBkZXYt
PmRldiwgIlJlZ2lzdGVyZWQgY2xvY2sgJyVzJ1xuIiwgaW5pdC5uYW1lKTsKPiAtLSAKPiAyLjIw
LjEKPiAKCi0tIAo9PT09PT09PT09PT09PT09PT09PQp8IEkgd291bGQgbGlrZSB0byB8CnwgZml4
IHRoZSB3b3JsZCwgIHwKfCBidXQgdGhleSdyZSBub3QgfAp8IGdpdmluZyBtZSB0aGUgICB8CiBc
IHNvdXJjZSBjb2RlISAgLwogIC0tLS0tLS0tLS0tLS0tLQogICAgwq9cXyjjg4QpXy/CrwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
