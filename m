Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097371B42F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 13:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGZNzO8HUdwKg7O8Rx/XKnjRWEzb1kxvCLhp5WzLByU=; b=hju9s2Dj8oNps1
	MXP3SNcIGrQabkHtWrQQ9Ftc545aI8Nrpq/71XlEIRjOTwD1fltO3mM65PaCD/cAFORkYJoFHAFnj
	LBe6V086sLeeSj01glrfrNmbkODa3KuNqk3yB+qqvjDszcI5/XmOLmMgm59dPVp7cZ5ANJ/uny+Lb
	f0i3hDBOLLNJHd2Tau8J1+xfFbp6PHQMbd1GwuIe/ZUmXCCNYEbQv/xualrCkMobFsB9YbXmsz88A
	xYU71SRGeB6I6Il5ObP6ogEUpjBFl3KDwsB29FAIWxi9ILR4m3v5qplrxQ1qaD9mPaLXcLGHaMnRQ
	SOSgwlc5irAknJ7pb8ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRDOU-0003Zp-8S; Wed, 22 Apr 2020 11:18:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDOK-0003Yl-Eq
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 11:18:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A34A31B;
 Wed, 22 Apr 2020 04:18:05 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6AE643F6CF;
 Wed, 22 Apr 2020 04:18:05 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 2CEA0682F3D; Wed, 22 Apr 2020 12:18:04 +0100 (BST)
Date: Wed, 22 Apr 2020 12:18:04 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 10/17] mfd: vexpress-sysreg: Drop unused syscon child
 devices
Message-ID: <20200422111804.GV364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-11-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-11-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_041808_585354_DE457557 
X-CRM114-Status: GOOD (  16.45  )
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

SGkgUm9iLAoKTWlzc2luZyBjb21taXQgbWVzc2FnZT8KCk9uIFN1biwgQXByIDE5LCAyMDIwIGF0
IDEyOjA4OjAzUE0gLTA1MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IENjOiBMaXZpdSBEdWRhdSA8
bGl2aXUuZHVkYXVAYXJtLmNvbT4KPiBDYzogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJt
LmNvbT4KPiBDYzogTG9yZW56byBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+
Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPiBDYzogTGVl
IEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICBkcml2ZXJzL21mZC92ZXhwcmVzcy1zeXNyZWcu
YyB8IDM2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvdmV4cHJl
c3Mtc3lzcmVnLmMgYi9kcml2ZXJzL21mZC92ZXhwcmVzcy1zeXNyZWcuYwo+IGluZGV4IDBiOWNj
Njc3MDZjNy4uOTBhNGVkYTJiYTJiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL3ZleHByZXNz
LXN5c3JlZy5jCj4gKysrIGIvZHJpdmVycy9tZmQvdmV4cHJlc3Mtc3lzcmVnLmMKPiBAQCAtNDMs
MTAgKzQzLDYgQEAKPiAgCj4gIC8qIFRoZSBzeXNyZWcgYmxvY2sgaXMganVzdCBhIHJhbmRvbSBj
b2xsZWN0aW9uIG9mIHZhcmlvdXMgZnVuY3Rpb25zLi4uICovCj4gIAo+IC1zdGF0aWMgc3RydWN0
IHN5c2Nvbl9wbGF0Zm9ybV9kYXRhIHZleHByZXNzX3N5c3JlZ19zeXNfaWRfcGRhdGEgPSB7Cj4g
LQkubGFiZWwgPSAic3lzX2lkIiwKPiAtfTsKPiAtCj4gIHN0YXRpYyBzdHJ1Y3QgYmdwaW9fcGRh
dGEgdmV4cHJlc3Nfc3lzcmVnX3N5c19sZWRfcGRhdGEgPSB7Cj4gIAkubGFiZWwgPSAic3lzX2xl
ZCIsCj4gIAkuYmFzZSA9IC0xLAo+IEBAIC02NSwyNCArNjEsOCBAQCBzdGF0aWMgc3RydWN0IGJn
cGlvX3BkYXRhIHZleHByZXNzX3N5c3JlZ19zeXNfZmxhc2hfcGRhdGEgPSB7Cj4gIAkubmdwaW8g
PSAxLAo+ICB9Owo+ICAKPiAtc3RhdGljIHN0cnVjdCBzeXNjb25fcGxhdGZvcm1fZGF0YSB2ZXhw
cmVzc19zeXNyZWdfc3lzX21pc2NfcGRhdGEgPSB7Cj4gLQkubGFiZWwgPSAic3lzX21pc2MiLAo+
IC19Owo+IC0KPiAtc3RhdGljIHN0cnVjdCBzeXNjb25fcGxhdGZvcm1fZGF0YSB2ZXhwcmVzc19z
eXNyZWdfc3lzX3Byb2NpZF9wZGF0YSA9IHsKPiAtCS5sYWJlbCA9ICJzeXNfcHJvY2lkIiwKPiAt
fTsKPiAtCj4gIHN0YXRpYyBzdHJ1Y3QgbWZkX2NlbGwgdmV4cHJlc3Nfc3lzcmVnX2NlbGxzW10g
PSB7Cj4gIAl7Cj4gLQkJLm5hbWUgPSAic3lzY29uIiwKPiAtCQkubnVtX3Jlc291cmNlcyA9IDEs
Cj4gLQkJLnJlc291cmNlcyA9IChzdHJ1Y3QgcmVzb3VyY2UgW10pIHsKPiAtCQkJREVGSU5FX1JF
U19NRU0oU1lTX0lELCAweDQpLAo+IC0JCX0sCj4gLQkJLnBsYXRmb3JtX2RhdGEgPSAmdmV4cHJl
c3Nfc3lzcmVnX3N5c19pZF9wZGF0YSwKPiAtCQkucGRhdGFfc2l6ZSA9IHNpemVvZih2ZXhwcmVz
c19zeXNyZWdfc3lzX2lkX3BkYXRhKSwKPiAtCX0sIHsKPiAgCQkubmFtZSA9ICJiYXNpYy1tbWlv
LWdwaW8iLAo+ICAJCS5vZl9jb21wYXRpYmxlID0gImFybSx2ZXhwcmVzcy1zeXNyZWcsc3lzX2xl
ZCIsCj4gIAkJLm51bV9yZXNvdXJjZXMgPSAxLAo+IEBAIC0xMDksMjIgKzg5LDYgQEAgc3RhdGlj
IHN0cnVjdCBtZmRfY2VsbCB2ZXhwcmVzc19zeXNyZWdfY2VsbHNbXSA9IHsKPiAgCQl9LAo+ICAJ
CS5wbGF0Zm9ybV9kYXRhID0gJnZleHByZXNzX3N5c3JlZ19zeXNfZmxhc2hfcGRhdGEsCj4gIAkJ
LnBkYXRhX3NpemUgPSBzaXplb2YodmV4cHJlc3Nfc3lzcmVnX3N5c19mbGFzaF9wZGF0YSksCj4g
LQl9LCB7Cj4gLQkJLm5hbWUgPSAic3lzY29uIiwKPiAtCQkubnVtX3Jlc291cmNlcyA9IDEsCj4g
LQkJLnJlc291cmNlcyA9IChzdHJ1Y3QgcmVzb3VyY2UgW10pIHsKPiAtCQkJREVGSU5FX1JFU19N
RU0oU1lTX01JU0MsIDB4NCksCj4gLQkJfSwKPiAtCQkucGxhdGZvcm1fZGF0YSA9ICZ2ZXhwcmVz
c19zeXNyZWdfc3lzX21pc2NfcGRhdGEsCj4gLQkJLnBkYXRhX3NpemUgPSBzaXplb2YodmV4cHJl
c3Nfc3lzcmVnX3N5c19taXNjX3BkYXRhKSwKPiAtCX0sIHsKPiAtCQkubmFtZSA9ICJzeXNjb24i
LAo+IC0JCS5udW1fcmVzb3VyY2VzID0gMSwKPiAtCQkucmVzb3VyY2VzID0gKHN0cnVjdCByZXNv
dXJjZSBbXSkgewo+IC0JCQlERUZJTkVfUkVTX01FTShTWVNfUFJPQ0lEMCwgMHg4KSwKPiAtCQl9
LAo+IC0JCS5wbGF0Zm9ybV9kYXRhID0gJnZleHByZXNzX3N5c3JlZ19zeXNfcHJvY2lkX3BkYXRh
LAo+IC0JCS5wZGF0YV9zaXplID0gc2l6ZW9mKHZleHByZXNzX3N5c3JlZ19zeXNfcHJvY2lkX3Bk
YXRhKSwKClRoZXNlIHdlcmUgdXNlZCBmb3IgY29tbXVuaWNhdGlvbiB3aXRoIHRoZSBkYXVnaHRl
cmJvYXJkcy4gQUZBSUsgdGhlcmUgaXMgbm8gdXBzdHJlYW0Kc3VwcG9ydCBmb3IgdGhhdCBpbiB0
aGUga2VybmVsIGFuZCBldmVuIGluc2lkZSBBcm0gSSBhbSBhbG1vc3Qgc3VyZSB0aGVyZSBhcmUg
bm8KdXNlcnMgbGVmdC4KCldpdGggdGhlIGNvbW1pdCBtZXNzYWdlIGFkZGVkOgoKQWNrZWQtYnk6
IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKQmVzdCByZWdhcmRzLApMaXZpdQoK
Cj4gIAl9LCB7Cj4gIAkJLm5hbWUgPSAidmV4cHJlc3Mtc3lzY2ZnIiwKPiAgCQkubnVtX3Jlc291
cmNlcyA9IDEsCj4gLS0gCj4gMi4yMC4xCj4gCgotLSAKPT09PT09PT09PT09PT09PT09PT0KfCBJ
IHdvdWxkIGxpa2UgdG8gfAp8IGZpeCB0aGUgd29ybGQsICB8CnwgYnV0IHRoZXkncmUgbm90IHwK
fCBnaXZpbmcgbWUgdGhlICAgfAogXCBzb3VyY2UgY29kZSEgIC8KICAtLS0tLS0tLS0tLS0tLS0K
ICAgIMKvXF8o44OEKV8vwq8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
