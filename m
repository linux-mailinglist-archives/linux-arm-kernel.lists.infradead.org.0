Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009351B42FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 13:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Gz6bKyMM86LRV5KnHeCxkyxpU/c6I/Ik/Ypj5LFSD4=; b=OqBcYNWIvjKTMX
	04OYdOHvLr5OBawQTy8u21ZOpPCacrRNuTLaPCVetz6D8Ld1hFOMwGg5M+SZh2mrOCzE/8DLxgdy7
	+FbtXH7sdqAuRi+E418fi89L6F49RQ3IUXHvh7LmMBtnl1ZnpL51lph9eLZRLiz+vy0bs/DwCgmrN
	/xliCS0xWoWq0pKmKH60Ou7Z8+ovYIto7LQKr45rkVOcK+IHeWffEfritdiM8WewGiex8dQjvRcCP
	p0LXCL3fhmeqKTh42pHsxwmJUtn8IeNKgHa//skgH/np3DeP0c/PpjMMeQ9KocdWgRn0N3/lg7j2v
	/9RSIM9y6LRgOol7OVaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRDPJ-0003yy-IX; Wed, 22 Apr 2020 11:19:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDP7-0003xs-1e
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 11:18:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBE3B31B;
 Wed, 22 Apr 2020 04:18:55 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD23A3F6CF;
 Wed, 22 Apr 2020 04:18:55 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 99924682F3F; Wed, 22 Apr 2020 12:18:54 +0100 (BST)
Date: Wed, 22 Apr 2020 12:18:54 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 11/17] mfd: vexpress-sysreg: Use devres API variants
Message-ID: <20200422111854.GW364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-12-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-12-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_041857_127571_9A225BF8 
X-CRM114-Status: GOOD (  16.57  )
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

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDg6MDRQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gVXNlIHRoZSBtYW5hZ2VkIGRldm1fZ3Bpb2NoaXBfYWRkX2RhdGEoKSBhbmQgZGV2bV9t
ZmRfYWRkX2RldmljZXMoKQo+IGluc3RlYWQgb2YgdGhlaXIgdW5tYW5hZ2VkIGNvdW50ZXJwYXJ0
cy4gV2l0aCB0aGlzLCBubyAucmVtb3ZlKCkgaG9vayBpcwo+IG5lZWRlZCBmb3IgZHJpdmVyIHVu
YmluZC4KPiAKPiBDYzogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+CgpBY2tlZC1i
eTogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+Cgo+IENjOiBTdWRlZXAgSG9sbGEg
PHN1ZGVlcC5ob2xsYUBhcm0uY29tPgo+IENjOiBMb3JlbnpvIFBpZXJhbGlzaSA8bG9yZW56by5w
aWVyYWxpc2lAYXJtLmNvbT4KPiBDYzogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5h
cm8ub3JnPgo+IENjOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IFNpZ25lZC1v
ZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbWZk
L3ZleHByZXNzLXN5c3JlZy5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3ZleHBy
ZXNzLXN5c3JlZy5jIGIvZHJpdmVycy9tZmQvdmV4cHJlc3Mtc3lzcmVnLmMKPiBpbmRleCA5MGE0
ZWRhMmJhMmIuLjlmYjM3ZmE2ODllMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21mZC92ZXhwcmVz
cy1zeXNyZWcuYwo+ICsrKyBiL2RyaXZlcnMvbWZkL3ZleHByZXNzLXN5c3JlZy5jCj4gQEAgLTE0
MCw5ICsxNDAsOSBAQCBzdGF0aWMgaW50IHZleHByZXNzX3N5c3JlZ19wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJYmdwaW9faW5pdChtbWNfZ3Bpb19jaGlwLCAmcGRldi0+
ZGV2LCAweDQsIGJhc2UgKyBTWVNfTUNJLAo+ICAJCQlOVUxMLCBOVUxMLCBOVUxMLCBOVUxMLCAw
KTsKPiAgCW1tY19ncGlvX2NoaXAtPm5ncGlvID0gMjsKPiAtCWdwaW9jaGlwX2FkZF9kYXRhKG1t
Y19ncGlvX2NoaXAsIE5VTEwpOwo+ICsJZGV2bV9ncGlvY2hpcF9hZGRfZGF0YSgmcGRldi0+ZGV2
LCBtbWNfZ3Bpb19jaGlwLCBOVUxMKTsKPiAgCj4gLQlyZXR1cm4gbWZkX2FkZF9kZXZpY2VzKCZw
ZGV2LT5kZXYsIFBMQVRGT1JNX0RFVklEX0FVVE8sCj4gKwlyZXR1cm4gZGV2bV9tZmRfYWRkX2Rl
dmljZXMoJnBkZXYtPmRldiwgUExBVEZPUk1fREVWSURfQVVUTywKPiAgCQkJdmV4cHJlc3Nfc3lz
cmVnX2NlbGxzLAo+ICAJCQlBUlJBWV9TSVpFKHZleHByZXNzX3N5c3JlZ19jZWxscyksIG1lbSwg
MCwgTlVMTCk7Cj4gIH0KPiAtLSAKPiAyLjIwLjEKPiAKCi0tIAo9PT09PT09PT09PT09PT09PT09
PQp8IEkgd291bGQgbGlrZSB0byB8CnwgZml4IHRoZSB3b3JsZCwgIHwKfCBidXQgdGhleSdyZSBu
b3QgfAp8IGdpdmluZyBtZSB0aGUgICB8CiBcIHNvdXJjZSBjb2RlISAgLwogIC0tLS0tLS0tLS0t
LS0tLQogICAgwq9cXyjjg4QpXy/CrwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
