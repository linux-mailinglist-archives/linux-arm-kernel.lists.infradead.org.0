Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FEE1B3DDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5tNS416J+rOiP7lziQ1cNyM1ljxGdVqB2OJJgKT7DU=; b=cuzvYxOBcKLyhw
	CxiDU+mOWi5fOvWnQJHmUj7M0rdIY2zfDfAF73M5BJPusYITnUiwV2ef6ZKtmtoTHnfd6lBQY79Z5
	8l4L/PnDAvW3/v96ZDSZ/3N6ALd449rPYRtAOCMuwLE9OSMaiX0jCjlr7BCxE/HfC9rTHiTFm1wE/
	7YWttDSmQE29yZ8qNVpabAjF8wwYMQ8h13yyNxCYxhkaSHLxzltu/oQ0/g/sn9lqlbPLEi7xZO0Sy
	7qJ0ncEu1Uzx4TYBVZJDqmxZ/uvAKb+DZyN6Ldlid/4fLNHMV/3yTpVQdfEqwQ6YR9Q7A9cKjdYIx
	ggCnL492vXicuXLnrlaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCV8-0004Kj-TZ; Wed, 22 Apr 2020 10:21:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCUr-0004Ev-2D
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:20:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E3ED831B;
 Wed, 22 Apr 2020 03:20:47 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C22383F68F;
 Wed, 22 Apr 2020 03:20:47 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 66E24682F3E; Wed, 22 Apr 2020 11:20:46 +0100 (BST)
Date: Wed, 22 Apr 2020 11:20:46 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 06/17] clk: versatile: Only enable SP810 on 32-bit by
 default
Message-ID: <20200422102046.GR364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-7-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-7-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_032049_167388_2D209C06 
X-CRM114-Status: GOOD (  16.89  )
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

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDc6NTlQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gV2hpbGUgNjQtYml0IEFybSByZWZlcmVuY2UgcGxhdGZvcm1zIGhhdmUgU1A4MTAgZm9y
IGNsb2NrcyBmb3IgU1A4MDQKPiB0aW1lcnMsIHRoZXkgYXJlIG5vdCBuZWVkZWQgc2luY2UgdGhl
IGFyY2ggdGltZXJzIGFyZSB1c2VkIGluc3RlYWQuCj4gCj4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8
Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5v
cmc+Cj4gQ2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKQWNrZWQtYnk6IExp
dml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKPiBDYzogU3VkZWVwIEhvbGxhIDxzdWRl
ZXAuaG9sbGFAYXJtLmNvbT4KPiBDYzogTG9yZW56byBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFs
aXNpQGFybS5jb20+Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9y
Zz4KPiBDYzogU3RlcGhlbiBCb3lkIDxzYm95ZEBrZXJuZWwub3JnPgo+IENjOiBsaW51eC1jbGtA
dmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KPiAtLS0KPiAgZHJpdmVycy9jbGsvdmVyc2F0aWxlL0tjb25maWcgfCAyICstCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2Nsay92ZXJzYXRpbGUvS2NvbmZpZyBiL2RyaXZlcnMvY2xrL3ZlcnNhdGls
ZS9LY29uZmlnCj4gaW5kZXggMzQ2NWZiMjkxOTk4Li41YmRkNWM5ODk5MGIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9jbGsvdmVyc2F0aWxlL0tjb25maWcKPiArKysgYi9kcml2ZXJzL2Nsay92ZXJz
YXRpbGUvS2NvbmZpZwo+IEBAIC05LDcgKzksNyBAQCBjb25maWcgSUNTVAo+ICAKPiAgY29uZmln
IENMS19TUDgxMAo+ICAJYm9vbCAiQ2xvY2sgZHJpdmVyIGZvciBBUk0gU1A4MTAgU3lzdGVtIENv
bnRyb2xsZXIiCj4gLQlkZWZhdWx0IHkgaWYgQVJDSF9WRVhQUkVTUwo+ICsJZGVmYXVsdCB5IGlm
IChBUkNIX1ZFWFBSRVNTICYmIEFSTSkKPiAgCS0tLWhlbHAtLS0KPiAgCSAgU3VwcG9ydHMgY2xv
Y2sgbXV4aW5nIChSRUZDTEsvVElNQ0xLIHRvIFRJTUVSQ0xLRU4wLTMpIGNhcGFiaWxpdGllcwo+
ICAJICBvZiB0aGUgQVJNIFNQODEwIFN5c3RlbSBDb250cm9sbGVyIGNlbGwuCj4gLS0gCj4gMi4y
MC4xCj4gCgotLSAKPT09PT09PT09PT09PT09PT09PT0KfCBJIHdvdWxkIGxpa2UgdG8gfAp8IGZp
eCB0aGUgd29ybGQsICB8CnwgYnV0IHRoZXkncmUgbm90IHwKfCBnaXZpbmcgbWUgdGhlICAgfAog
XCBzb3VyY2UgY29kZSEgIC8KICAtLS0tLS0tLS0tLS0tLS0KICAgIMKvXF8o44OEKV8vwq8KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
