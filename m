Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525381B4325
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 13:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0AyObhMPv+SnonOzigS+ogkH832gRy0fIgyB5PIJV4=; b=PjDTXN/tthGy7c
	WCIoi//+zcI4S0kjJBv6N/GGd34Hk1VsgVjaMSiO2MuSGYDuajwTYIbysLkOLHtRDU0Tn1ASPiqf+
	M3caL+0LIR1fJFzTKUFV6NSAjhBsKkLNT2Slm0w8dd3bJYpXt9qDqTq99uoU/6VizXSk/lwe5mkRQ
	Fh8Si/h+LJckzRhbKNAWjZgiLmdBpTLtK8UTxWecz8FD4InVU2oBTmHA9r8HUTtd3PAaT+h7Yj0pE
	/Zz3vwxCQrFiu3OtASfwuSuUr79jeKbv9OUeDiKXvQpPxtJTTCsIQUGMighNY/xFEnC+UmxGpudGE
	ElJxxF6nQ6It31nD1Zig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRDSc-00086P-9i; Wed, 22 Apr 2020 11:22:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDSG-00082T-Kj
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 11:22:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 215C131B;
 Wed, 22 Apr 2020 04:22:12 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBF173F6CF;
 Wed, 22 Apr 2020 04:22:11 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 9219F682F3F; Wed, 22 Apr 2020 12:22:10 +0100 (BST)
Date: Wed, 22 Apr 2020 12:22:10 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 13/17] bus: vexpress-config: Merge vexpress-syscfg into
 vexpress-config
Message-ID: <20200422112210.GX364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-14-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-14-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_042213_558700_AC47DD4B 
X-CRM114-Status: GOOD (  28.59  )
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

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDg6MDZQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gVGhlIG9ubHkgdGhpbmcgdGhhdCB2ZXhwcmVzcy1zeXNjZmcgZG9lcyBpcyBwcm92aWRl
IGEgcmVnbWFwIHRvCj4gdmV4cHJlc3MtY29uZmlnIGJ1cyBjaGlsZCBkZXZpY2VzLiBUaGVyZSdz
IGxpdHRsZSByZWFzb24gdG8gaGF2ZSAyCj4gY29tcG9uZW50cyBmb3IgdGhpcy4gVGhlIGN1cnJl
bnQgc3RydWN0dXJlIHdpdGggaW5pdGNhbGwgb3JkZXJpbmcKPiByZXF1aXJlbWVudHMgbWFrZXMg
dHVybmluZyB0aGVzZSBjb21wb25lbnRzIGludG8gbW9kdWxlcyBtb3JlIGRpZmZpY3VsdC4KPiAK
PiBTbyBsZXQncyBzdGFydCB0byBzaW1wbGlmeSB0aGluZ3MgYW5kIG1lcmdlIHZleHByZXNzLXN5
c2NmZyBpbnRvCj4gdmV4cHJlc3MtY29uZmlnLiBUaGVyZSdzIG5vIGZ1bmN0aW9uYWwgY2hhbmdl
IGluIHRoaXMgY29tbWl0IGFuZCBpdCdzCj4gc3RpbGwgc2VwYXJhdGUgY29tcG9uZW50cyB1bnRp
bCBzdWJzZXF1ZW50IGNvbW1pdHMuCj4gCj4gQ2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBh
cm0uY29tPgoKQWNrZWQtYnk6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKPiBD
YzogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4KPiBDYzogTG9yZW56byBQaWVy
YWxpc2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxp
bnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPiBDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5k
ZT4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4K
PiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICBh
cmNoL2FybS9tYWNoLXZleHByZXNzL0tjb25maWcgfCAgIDEgLQo+ICBkcml2ZXJzL2J1cy92ZXhw
cmVzcy1jb25maWcuYyAgfCAyODMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4g
IGRyaXZlcnMvbWlzYy9LY29uZmlnICAgICAgICAgICB8ICAgOSAtLQo+ICBkcml2ZXJzL21pc2Mv
TWFrZWZpbGUgICAgICAgICAgfCAgIDEgLQo+ICBkcml2ZXJzL21pc2MvdmV4cHJlc3Mtc3lzY2Zn
LmMgfCAyODAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgaW5jbHVkZS9saW51
eC92ZXhwcmVzcy5oICAgICAgIHwgIDE3IC0tCj4gIDYgZmlsZXMgY2hhbmdlZCwgMjc0IGluc2Vy
dGlvbnMoKyksIDMxNyBkZWxldGlvbnMoLSkKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
bWlzYy92ZXhwcmVzcy1zeXNjZmcuYwo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXZl
eHByZXNzL0tjb25maWcgYi9hcmNoL2FybS9tYWNoLXZleHByZXNzL0tjb25maWcKPiBpbmRleCAy
ZDFmZGVjNGMyMzAuLjA2NWUxMjk5MTY2MyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXZl
eHByZXNzL0tjb25maWcKPiArKysgYi9hcmNoL2FybS9tYWNoLXZleHByZXNzL0tjb25maWcKPiBA
QCAtMjAsNyArMjAsNiBAQCBtZW51Y29uZmlnIEFSQ0hfVkVYUFJFU1MKPiAgCXNlbGVjdCBSRUdV
TEFUT1IgaWYgTU1DX0FSTU1NQ0kKPiAgCXNlbGVjdCBSRUdVTEFUT1JfRklYRURfVk9MVEFHRSBp
ZiBSRUdVTEFUT1IKPiAgCXNlbGVjdCBWRVhQUkVTU19DT05GSUcKPiAtCXNlbGVjdCBWRVhQUkVT
U19TWVNDRkcKPiAgCWhlbHAKPiAgCSAgVGhpcyBvcHRpb24gZW5hYmxlcyBzdXBwb3J0IGZvciBz
eXN0ZW1zIHVzaW5nIENvcnRleCBwcm9jZXNzb3IgYmFzZWQKPiAgCSAgQVJNIGNvcmUgYW5kIGxv
Z2ljIChGUEdBKSB0aWxlcyBvbiB0aGUgVmVyc2F0aWxlIEV4cHJlc3MgbW90aGVyYm9hcmQsCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvYnVzL3ZleHByZXNzLWNvbmZpZy5jIGIvZHJpdmVycy9idXMv
dmV4cHJlc3MtY29uZmlnLmMKPiBpbmRleCBmZjcwNTc1YjJkYjYuLjQzZjViZWFjOTgxMSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2J1cy92ZXhwcmVzcy1jb25maWcuYwo+ICsrKyBiL2RyaXZlcnMv
YnVzL3ZleHByZXNzLWNvbmZpZy5jCj4gQEAgLTYsMTAgKzYsNDggQEAKPiAgCj4gICNpbmNsdWRl
IDxsaW51eC9lcnIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2luaXQuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L2lvLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGxh
dGZvcm1fZGV2aWNlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiArI2luY2x1
ZGUgPGxpbnV4L3NjaGVkL3NpZ25hbC5oPgo+ICsjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICAj
aW5jbHVkZSA8bGludXgvdmV4cHJlc3MuaD4KPiAgCj4gKyNkZWZpbmUgU1lTX0NGR0RBVEEJCTB4
MAo+ICsKPiArI2RlZmluZSBTWVNfQ0ZHQ1RSTAkJMHg0Cj4gKyNkZWZpbmUgU1lTX0NGR0NUUkxf
U1RBUlQJKDEgPDwgMzEpCj4gKyNkZWZpbmUgU1lTX0NGR0NUUkxfV1JJVEUJKDEgPDwgMzApCj4g
KyNkZWZpbmUgU1lTX0NGR0NUUkxfRENDKG4pCSgoKG4pICYgMHhmKSA8PCAyNikKPiArI2RlZmlu
ZSBTWVNfQ0ZHQ1RSTF9GVU5DKG4pCSgoKG4pICYgMHgzZikgPDwgMjApCj4gKyNkZWZpbmUgU1lT
X0NGR0NUUkxfU0lURShuKQkoKChuKSAmIDB4MykgPDwgMTYpCj4gKyNkZWZpbmUgU1lTX0NGR0NU
UkxfUE9TSVRJT04obikJKCgobikgJiAweGYpIDw8IDEyKQo+ICsjZGVmaW5lIFNZU19DRkdDVFJM
X0RFVklDRShuKQkoKChuKSAmIDB4ZmZmKSA8PCAwKQo+ICsKPiArI2RlZmluZSBTWVNfQ0ZHU1RB
VAkJMHg4Cj4gKyNkZWZpbmUgU1lTX0NGR1NUQVRfRVJSCQkoMSA8PCAxKQo+ICsjZGVmaW5lIFNZ
U19DRkdTVEFUX0NPTVBMRVRFCSgxIDw8IDApCj4gKwo+ICsKPiArc3RydWN0IHZleHByZXNzX3N5
c2NmZyB7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gKwl2b2lkIF9faW9tZW0gKmJhc2U7Cj4g
KwlzdHJ1Y3QgbGlzdF9oZWFkIGZ1bmNzOwo+ICt9Owo+ICsKPiArc3RydWN0IHZleHByZXNzX3N5
c2NmZ19mdW5jIHsKPiArCXN0cnVjdCBsaXN0X2hlYWQgbGlzdDsKPiArCXN0cnVjdCB2ZXhwcmVz
c19zeXNjZmcgKnN5c2NmZzsKPiArCXN0cnVjdCByZWdtYXAgKnJlZ21hcDsKPiArCWludCBudW1f
dGVtcGxhdGVzOwo+ICsJdTMyIHRlbXBsYXRlW107IC8qIEtlZXAgaXQgbGFzdCEgKi8KPiArfTsK
PiArCj4gK3N0cnVjdCB2ZXhwcmVzc19jb25maWdfYnJpZGdlX29wcyB7Cj4gKwlzdHJ1Y3QgcmVn
bWFwICogKCpyZWdtYXBfaW5pdCkoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkICpjb250ZXh0KTsK
PiArCXZvaWQgKCpyZWdtYXBfZXhpdCkoc3RydWN0IHJlZ21hcCAqcmVnbWFwLCB2b2lkICpjb250
ZXh0KTsKPiArfTsKPiAgCj4gIHN0cnVjdCB2ZXhwcmVzc19jb25maWdfYnJpZGdlIHsKPiAgCXN0
cnVjdCB2ZXhwcmVzc19jb25maWdfYnJpZGdlX29wcyAqb3BzOwo+IEBAIC0yNywxNyArNjUsMTIg
QEAgdm9pZCB2ZXhwcmVzc19jb25maWdfc2V0X21hc3Rlcih1MzIgc2l0ZSkKPiAgCXZleHByZXNz
X2NvbmZpZ19zaXRlX21hc3RlciA9IHNpdGU7Cj4gIH0KPiAgCj4gLXUzMiB2ZXhwcmVzc19jb25m
aWdfZ2V0X21hc3Rlcih2b2lkKQo+IC17Cj4gLQlyZXR1cm4gdmV4cHJlc3NfY29uZmlnX3NpdGVf
bWFzdGVyOwo+IC19Cj4gLQo+IC12b2lkIHZleHByZXNzX2NvbmZpZ19sb2NrKHZvaWQgKmFyZykK
PiArc3RhdGljIHZvaWQgdmV4cHJlc3NfY29uZmlnX2xvY2sodm9pZCAqYXJnKQo+ICB7Cj4gIAlt
dXRleF9sb2NrKCZ2ZXhwcmVzc19jb25maWdfbXV0ZXgpOwo+ICB9Cj4gIAo+IC12b2lkIHZleHBy
ZXNzX2NvbmZpZ191bmxvY2sodm9pZCAqYXJnKQo+ICtzdGF0aWMgdm9pZCB2ZXhwcmVzc19jb25m
aWdfdW5sb2NrKHZvaWQgKmFyZykKPiAgewo+ICAJbXV0ZXhfdW5sb2NrKCZ2ZXhwcmVzc19jb25m
aWdfbXV0ZXgpOwo+ICB9Cj4gQEAgLTU5LDcgKzkyLDcgQEAgc3RhdGljIHZvaWQgdmV4cHJlc3Nf
Y29uZmlnX2ZpbmRfcHJvcChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUsCj4gIAl9Cj4gIH0KPiAg
Cj4gLWludCB2ZXhwcmVzc19jb25maWdfZ2V0X3RvcG8oc3RydWN0IGRldmljZV9ub2RlICpub2Rl
LCB1MzIgKnNpdGUsCj4gK3N0YXRpYyBpbnQgdmV4cHJlc3NfY29uZmlnX2dldF90b3BvKHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbm9kZSwgdTMyICpzaXRlLAo+ICAJCXUzMiAqcG9zaXRpb24sIHUzMiAq
ZGNjKQo+ICB7Cj4gIAl2ZXhwcmVzc19jb25maWdfZmluZF9wcm9wKG5vZGUsICJhcm0sdmV4cHJl
c3Msc2l0ZSIsIHNpdGUpOwo+IEBAIC0xMTMsNyArMTQ2LDcgQEAgc3RydWN0IHJlZ21hcCAqZGV2
bV9yZWdtYXBfaW5pdF92ZXhwcmVzc19jb25maWcoc3RydWN0IGRldmljZSAqZGV2KQo+ICB9Cj4g
IEVYUE9SVF9TWU1CT0xfR1BMKGRldm1fcmVnbWFwX2luaXRfdmV4cHJlc3NfY29uZmlnKTsKPiAg
Cj4gLXN0cnVjdCBkZXZpY2UgKnZleHByZXNzX2NvbmZpZ19icmlkZ2VfcmVnaXN0ZXIoc3RydWN0
IGRldmljZSAqcGFyZW50LAo+ICtzdGF0aWMgc3RydWN0IGRldmljZSAqdmV4cHJlc3NfY29uZmln
X2JyaWRnZV9yZWdpc3RlcihzdHJ1Y3QgZGV2aWNlICpwYXJlbnQsCj4gIAkJc3RydWN0IHZleHBy
ZXNzX2NvbmZpZ19icmlkZ2Vfb3BzICpvcHMsIHZvaWQgKmNvbnRleHQpCj4gIHsKPiAgCXN0cnVj
dCBkZXZpY2UgKmRldjsKPiBAQCAtMjAxLDMgKzIzNCwyMzUgQEAgc3RhdGljIGludCBfX2luaXQg
dmV4cHJlc3NfY29uZmlnX2luaXQodm9pZCkKPiAgfQo+ICBwb3N0Y29yZV9pbml0Y2FsbCh2ZXhw
cmVzc19jb25maWdfaW5pdCk7Cj4gIAo+ICtzdGF0aWMgaW50IHZleHByZXNzX3N5c2NmZ19leGVj
KHN0cnVjdCB2ZXhwcmVzc19zeXNjZmdfZnVuYyAqZnVuYywKPiArCQlpbnQgaW5kZXgsIGJvb2wg
d3JpdGUsIHUzMiAqZGF0YSkKPiArewo+ICsJc3RydWN0IHZleHByZXNzX3N5c2NmZyAqc3lzY2Zn
ID0gZnVuYy0+c3lzY2ZnOwo+ICsJdTMyIGNvbW1hbmQsIHN0YXR1czsKPiArCWludCB0cmllczsK
PiArCWxvbmcgdGltZW91dDsKPiArCj4gKwlpZiAoV0FSTl9PTihpbmRleCA+PSBmdW5jLT5udW1f
dGVtcGxhdGVzKSkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwljb21tYW5kID0gcmVhZGwo
c3lzY2ZnLT5iYXNlICsgU1lTX0NGR0NUUkwpOwo+ICsJaWYgKFdBUk5fT04oY29tbWFuZCAmIFNZ
U19DRkdDVFJMX1NUQVJUKSkKPiArCQlyZXR1cm4gLUVCVVNZOwo+ICsKPiArCWNvbW1hbmQgPSBm
dW5jLT50ZW1wbGF0ZVtpbmRleF07Cj4gKwljb21tYW5kIHw9IFNZU19DRkdDVFJMX1NUQVJUOwo+
ICsJY29tbWFuZCB8PSB3cml0ZSA/IFNZU19DRkdDVFJMX1dSSVRFIDogMDsKPiArCj4gKwkvKiBV
c2UgYSBjYW5hcnkgZm9yIHJlYWRzICovCj4gKwlpZiAoIXdyaXRlKQo+ICsJCSpkYXRhID0gMHhk
ZWFkYmVlZjsKPiArCj4gKwlkZXZfZGJnKHN5c2NmZy0+ZGV2LCAiZnVuYyAlcCwgY29tbWFuZCAl
eCwgZGF0YSAleFxuIiwKPiArCQkJZnVuYywgY29tbWFuZCwgKmRhdGEpOwo+ICsJd3JpdGVsKCpk
YXRhLCBzeXNjZmctPmJhc2UgKyBTWVNfQ0ZHREFUQSk7Cj4gKwl3cml0ZWwoMCwgc3lzY2ZnLT5i
YXNlICsgU1lTX0NGR1NUQVQpOwo+ICsJd3JpdGVsKGNvbW1hbmQsIHN5c2NmZy0+YmFzZSArIFNZ
U19DRkdDVFJMKTsKPiArCW1iKCk7Cj4gKwo+ICsJLyogVGhlIG9wZXJhdGlvbiBjYW4gdGFrZSBh
Z2VzLi4uIEdvIHRvIHNsZWVwLCAxMDB1cyBpbml0aWFsbHkgKi8KPiArCXRyaWVzID0gMTAwOwo+
ICsJdGltZW91dCA9IDEwMDsKPiArCWRvIHsKPiArCQlpZiAoIWlycXNfZGlzYWJsZWQoKSkgewo+
ICsJCQlzZXRfY3VycmVudF9zdGF0ZShUQVNLX0lOVEVSUlVQVElCTEUpOwo+ICsJCQlzY2hlZHVs
ZV90aW1lb3V0KHVzZWNzX3RvX2ppZmZpZXModGltZW91dCkpOwo+ICsJCQlpZiAoc2lnbmFsX3Bl
bmRpbmcoY3VycmVudCkpCj4gKwkJCQlyZXR1cm4gLUVJTlRSOwo+ICsJCX0gZWxzZSB7Cj4gKwkJ
CXVkZWxheSh0aW1lb3V0KTsKPiArCQl9Cj4gKwo+ICsJCXN0YXR1cyA9IHJlYWRsKHN5c2NmZy0+
YmFzZSArIFNZU19DRkdTVEFUKTsKPiArCQlpZiAoc3RhdHVzICYgU1lTX0NGR1NUQVRfRVJSKQo+
ICsJCQlyZXR1cm4gLUVGQVVMVDsKPiArCj4gKwkJaWYgKHRpbWVvdXQgPiAyMCkKPiArCQkJdGlt
ZW91dCAtPSAyMDsKPiArCX0gd2hpbGUgKC0tdHJpZXMgJiYgIShzdGF0dXMgJiBTWVNfQ0ZHU1RB
VF9DT01QTEVURSkpOwo+ICsJaWYgKFdBUk5fT05fT05DRSghdHJpZXMpKQo+ICsJCXJldHVybiAt
RVRJTUVET1VUOwo+ICsKPiArCWlmICghd3JpdGUpIHsKPiArCQkqZGF0YSA9IHJlYWRsKHN5c2Nm
Zy0+YmFzZSArIFNZU19DRkdEQVRBKTsKPiArCQlkZXZfZGJnKHN5c2NmZy0+ZGV2LCAiZnVuYyAl
cCwgcmVhZCBkYXRhICV4XG4iLCBmdW5jLCAqZGF0YSk7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7
Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgdmV4cHJlc3Nfc3lzY2ZnX3JlYWQodm9pZCAqY29udGV4
dCwgdW5zaWduZWQgaW50IGluZGV4LAo+ICsJCXVuc2lnbmVkIGludCAqdmFsKQo+ICt7Cj4gKwlz
dHJ1Y3QgdmV4cHJlc3Nfc3lzY2ZnX2Z1bmMgKmZ1bmMgPSBjb250ZXh0Owo+ICsKPiArCXJldHVy
biB2ZXhwcmVzc19zeXNjZmdfZXhlYyhmdW5jLCBpbmRleCwgZmFsc2UsIHZhbCk7Cj4gK30KPiAr
Cj4gK3N0YXRpYyBpbnQgdmV4cHJlc3Nfc3lzY2ZnX3dyaXRlKHZvaWQgKmNvbnRleHQsIHVuc2ln
bmVkIGludCBpbmRleCwKPiArCQl1bnNpZ25lZCBpbnQgdmFsKQo+ICt7Cj4gKwlzdHJ1Y3QgdmV4
cHJlc3Nfc3lzY2ZnX2Z1bmMgKmZ1bmMgPSBjb250ZXh0Owo+ICsKPiArCXJldHVybiB2ZXhwcmVz
c19zeXNjZmdfZXhlYyhmdW5jLCBpbmRleCwgdHJ1ZSwgJnZhbCk7Cj4gK30KPiArCj4gK3N0YXRp
YyBzdHJ1Y3QgcmVnbWFwX2NvbmZpZyB2ZXhwcmVzc19zeXNjZmdfcmVnbWFwX2NvbmZpZyA9IHsK
PiArCS5sb2NrID0gdmV4cHJlc3NfY29uZmlnX2xvY2ssCj4gKwkudW5sb2NrID0gdmV4cHJlc3Nf
Y29uZmlnX3VubG9jaywKPiArCS5yZWdfYml0cyA9IDMyLAo+ICsJLnZhbF9iaXRzID0gMzIsCj4g
KwkucmVnX3JlYWQgPSB2ZXhwcmVzc19zeXNjZmdfcmVhZCwKPiArCS5yZWdfd3JpdGUgPSB2ZXhw
cmVzc19zeXNjZmdfd3JpdGUsCj4gKwkucmVnX2Zvcm1hdF9lbmRpYW4gPSBSRUdNQVBfRU5ESUFO
X0xJVFRMRSwKPiArCS52YWxfZm9ybWF0X2VuZGlhbiA9IFJFR01BUF9FTkRJQU5fTElUVExFLAo+
ICt9Owo+ICsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgcmVnbWFwICp2ZXhwcmVzc19zeXNjZmdfcmVn
bWFwX2luaXQoc3RydWN0IGRldmljZSAqZGV2LAo+ICsJCXZvaWQgKmNvbnRleHQpCj4gK3sKPiAr
CWludCBlcnI7Cj4gKwlzdHJ1Y3QgdmV4cHJlc3Nfc3lzY2ZnICpzeXNjZmcgPSBjb250ZXh0Owo+
ICsJc3RydWN0IHZleHByZXNzX3N5c2NmZ19mdW5jICpmdW5jOwo+ICsJc3RydWN0IHByb3BlcnR5
ICpwcm9wOwo+ICsJY29uc3QgX19iZTMyICp2YWwgPSBOVUxMOwo+ICsJX19iZTMyIGVuZXJneV9x
dWlya1s0XTsKPiArCWludCBudW07Cj4gKwl1MzIgc2l0ZSwgcG9zaXRpb24sIGRjYzsKPiArCWlu
dCBpOwo+ICsKPiArCWVyciA9IHZleHByZXNzX2NvbmZpZ19nZXRfdG9wbyhkZXYtPm9mX25vZGUs
ICZzaXRlLAo+ICsJCQkJJnBvc2l0aW9uLCAmZGNjKTsKPiArCWlmIChlcnIpCj4gKwkJcmV0dXJu
IEVSUl9QVFIoZXJyKTsKPiArCj4gKwlwcm9wID0gb2ZfZmluZF9wcm9wZXJ0eShkZXYtPm9mX25v
ZGUsCj4gKwkJCSJhcm0sdmV4cHJlc3Mtc3lzcmVnLGZ1bmMiLCBOVUxMKTsKPiArCWlmICghcHJv
cCkKPiArCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiArCj4gKwludW0gPSBwcm9wLT5sZW5n
dGggLyBzaXplb2YodTMyKSAvIDI7Cj4gKwl2YWwgPSBwcm9wLT52YWx1ZTsKPiArCj4gKwkvKgo+
ICsJICogImFybSx2ZXhwcmVzcy1lbmVyZ3kiIGZ1bmN0aW9uIHVzZWQgdG8gYmUgZGVzY3JpYmVk
Cj4gKwkgKiBieSBpdHMgZmlyc3QgZGV2aWNlIG9ubHksIG5vdyBpdCByZXF1aXJlcyBib3RoCj4g
KwkgKi8KPiArCWlmIChudW0gPT0gMSAmJiBvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShkZXYtPm9m
X25vZGUsCj4gKwkJCSJhcm0sdmV4cHJlc3MtZW5lcmd5IikpIHsKPiArCQludW0gPSAyOwo+ICsJ
CWVuZXJneV9xdWlya1swXSA9ICp2YWw7Cj4gKwkJZW5lcmd5X3F1aXJrWzJdID0gKnZhbCsrOwo+
ICsJCWVuZXJneV9xdWlya1sxXSA9ICp2YWw7Cj4gKwkJZW5lcmd5X3F1aXJrWzNdID0gY3B1X3Rv
X2JlMzIoYmUzMl90b19jcHVwKHZhbCkgKyAxKTsKPiArCQl2YWwgPSBlbmVyZ3lfcXVpcms7Cj4g
Kwl9Cj4gKwo+ICsJZnVuYyA9IGt6YWxsb2Moc3RydWN0X3NpemUoZnVuYywgdGVtcGxhdGUsIG51
bSksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCFmdW5jKQo+ICsJCXJldHVybiBFUlJfUFRSKC1FTk9N
RU0pOwo+ICsKPiArCWZ1bmMtPnN5c2NmZyA9IHN5c2NmZzsKPiArCWZ1bmMtPm51bV90ZW1wbGF0
ZXMgPSBudW07Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IG51bTsgaSsrKSB7Cj4gKwkJdTMyIGZ1
bmN0aW9uLCBkZXZpY2U7Cj4gKwo+ICsJCWZ1bmN0aW9uID0gYmUzMl90b19jcHVwKHZhbCsrKTsK
PiArCQlkZXZpY2UgPSBiZTMyX3RvX2NwdXAodmFsKyspOwo+ICsKPiArCQlkZXZfZGJnKGRldiwg
ImZ1bmMgJXA6ICV1LyV1LyV1LyV1LyV1XG4iLAo+ICsJCQkJZnVuYywgc2l0ZSwgcG9zaXRpb24s
IGRjYywKPiArCQkJCWZ1bmN0aW9uLCBkZXZpY2UpOwo+ICsKPiArCQlmdW5jLT50ZW1wbGF0ZVtp
XSA9IFNZU19DRkdDVFJMX0RDQyhkY2MpOwo+ICsJCWZ1bmMtPnRlbXBsYXRlW2ldIHw9IFNZU19D
RkdDVFJMX1NJVEUoc2l0ZSk7Cj4gKwkJZnVuYy0+dGVtcGxhdGVbaV0gfD0gU1lTX0NGR0NUUkxf
UE9TSVRJT04ocG9zaXRpb24pOwo+ICsJCWZ1bmMtPnRlbXBsYXRlW2ldIHw9IFNZU19DRkdDVFJM
X0ZVTkMoZnVuY3Rpb24pOwo+ICsJCWZ1bmMtPnRlbXBsYXRlW2ldIHw9IFNZU19DRkdDVFJMX0RF
VklDRShkZXZpY2UpOwo+ICsJfQo+ICsKPiArCXZleHByZXNzX3N5c2NmZ19yZWdtYXBfY29uZmln
Lm1heF9yZWdpc3RlciA9IG51bSAtIDE7Cj4gKwo+ICsJZnVuYy0+cmVnbWFwID0gcmVnbWFwX2lu
aXQoZGV2LCBOVUxMLCBmdW5jLAo+ICsJCQkmdmV4cHJlc3Nfc3lzY2ZnX3JlZ21hcF9jb25maWcp
Owo+ICsKPiArCWlmIChJU19FUlIoZnVuYy0+cmVnbWFwKSkgewo+ICsJCXZvaWQgKmVyciA9IGZ1
bmMtPnJlZ21hcDsKPiArCj4gKwkJa2ZyZWUoZnVuYyk7Cj4gKwkJcmV0dXJuIGVycjsKPiArCX0K
PiArCj4gKwlsaXN0X2FkZCgmZnVuYy0+bGlzdCwgJnN5c2NmZy0+ZnVuY3MpOwo+ICsKPiArCXJl
dHVybiBmdW5jLT5yZWdtYXA7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHZleHByZXNzX3N5c2Nm
Z19yZWdtYXBfZXhpdChzdHJ1Y3QgcmVnbWFwICpyZWdtYXAsIHZvaWQgKmNvbnRleHQpCj4gK3sK
PiArCXN0cnVjdCB2ZXhwcmVzc19zeXNjZmcgKnN5c2NmZyA9IGNvbnRleHQ7Cj4gKwlzdHJ1Y3Qg
dmV4cHJlc3Nfc3lzY2ZnX2Z1bmMgKmZ1bmMsICp0bXA7Cj4gKwo+ICsJcmVnbWFwX2V4aXQocmVn
bWFwKTsKPiArCj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoZnVuYywgdG1wLCAmc3lzY2Zn
LT5mdW5jcywgbGlzdCkgewo+ICsJCWlmIChmdW5jLT5yZWdtYXAgPT0gcmVnbWFwKSB7Cj4gKwkJ
CWxpc3RfZGVsKCZzeXNjZmctPmZ1bmNzKTsKPiArCQkJa2ZyZWUoZnVuYyk7Cj4gKwkJCWJyZWFr
Owo+ICsJCX0KPiArCX0KPiArfQo+ICsKPiArc3RhdGljIHN0cnVjdCB2ZXhwcmVzc19jb25maWdf
YnJpZGdlX29wcyB2ZXhwcmVzc19zeXNjZmdfYnJpZGdlX29wcyA9IHsKPiArCS5yZWdtYXBfaW5p
dCA9IHZleHByZXNzX3N5c2NmZ19yZWdtYXBfaW5pdCwKPiArCS5yZWdtYXBfZXhpdCA9IHZleHBy
ZXNzX3N5c2NmZ19yZWdtYXBfZXhpdCwKPiArfTsKPiArCj4gKwo+ICtzdGF0aWMgaW50IHZleHBy
ZXNzX3N5c2NmZ19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlz
dHJ1Y3QgdmV4cHJlc3Nfc3lzY2ZnICpzeXNjZmc7Cj4gKwlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsK
PiArCXN0cnVjdCBkZXZpY2UgKmJyaWRnZTsKPiArCj4gKwlzeXNjZmcgPSBkZXZtX2t6YWxsb2Mo
JnBkZXYtPmRldiwgc2l6ZW9mKCpzeXNjZmcpLCBHRlBfS0VSTkVMKTsKPiArCWlmICghc3lzY2Zn
KQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsJc3lzY2ZnLT5kZXYgPSAmcGRldi0+ZGV2Owo+ICsJ
SU5JVF9MSVNUX0hFQUQoJnN5c2NmZy0+ZnVuY3MpOwo+ICsKPiArCXJlcyA9IHBsYXRmb3JtX2dl
dF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4gKwlzeXNjZmctPmJhc2UgPSBk
ZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsKPiArCWlmIChJU19FUlIoc3lz
Y2ZnLT5iYXNlKSkKPiArCQlyZXR1cm4gUFRSX0VSUihzeXNjZmctPmJhc2UpOwo+ICsKPiArCS8q
IE11c3QgdXNlIGRldi5wYXJlbnQgKE1GRCksIGFzIHRoYXQncyB3aGVyZSBEVCBwaGFuZGxlIHBv
aW50cyBhdC4uLiAqLwo+ICsJYnJpZGdlID0gdmV4cHJlc3NfY29uZmlnX2JyaWRnZV9yZWdpc3Rl
cihwZGV2LT5kZXYucGFyZW50LAo+ICsJCQkmdmV4cHJlc3Nfc3lzY2ZnX2JyaWRnZV9vcHMsIHN5
c2NmZyk7Cj4gKwo+ICsJcmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhicmlkZ2UpOwo+ICt9Cj4gKwo+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBsYXRmb3JtX2RldmljZV9pZCB2ZXhwcmVzc19zeXNjZmdf
aWRfdGFibGVbXSA9IHsKPiArCXsgInZleHByZXNzLXN5c2NmZyIsIH0sCj4gKwl7fSwKPiArfTsK
PiArCj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHZleHByZXNzX3N5c2NmZ19kcml2
ZXIgPSB7Cj4gKwkuZHJpdmVyLm5hbWUgPSAidmV4cHJlc3Mtc3lzY2ZnIiwKPiArCS5pZF90YWJs
ZSA9IHZleHByZXNzX3N5c2NmZ19pZF90YWJsZSwKPiArCS5wcm9iZSA9IHZleHByZXNzX3N5c2Nm
Z19wcm9iZSwKPiArfTsKPiArCj4gK3N0YXRpYyBpbnQgX19pbml0IHZleHByZXNzX3N5c2NmZ19p
bml0KHZvaWQpCj4gK3sKPiArCXJldHVybiBwbGF0Zm9ybV9kcml2ZXJfcmVnaXN0ZXIoJnZleHBy
ZXNzX3N5c2NmZ19kcml2ZXIpOwo+ICt9Cj4gK2NvcmVfaW5pdGNhbGwodmV4cHJlc3Nfc3lzY2Zn
X2luaXQpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21pc2MvS2NvbmZpZyBiL2RyaXZlcnMvbWlz
Yy9LY29uZmlnCj4gaW5kZXggOTllMTUxNDc1ZDhmLi5lZGQ1ZGQ1ZWJmZGMgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9taXNjL0tjb25maWcKPiArKysgYi9kcml2ZXJzL21pc2MvS2NvbmZpZwo+IEBA
IC00MjMsMTUgKzQyMyw2IEBAIGNvbmZpZyBTUkFNCj4gIGNvbmZpZyBTUkFNX0VYRUMKPiAgCWJv
b2wKPiAgCj4gLWNvbmZpZyBWRVhQUkVTU19TWVNDRkcKPiAtCWJvb2wgIlZlcnNhdGlsZSBFeHBy
ZXNzIFN5c3RlbSBDb25maWd1cmF0aW9uIGRyaXZlciIKPiAtCWRlcGVuZHMgb24gVkVYUFJFU1Nf
Q09ORklHCj4gLQlkZWZhdWx0IHkKPiAtCWhlbHAKPiAtCSAgQVJNIEx0ZC4gVmVyc2F0aWxlIEV4
cHJlc3MgdXNlcyBzcGVjaWFsaXNlZCBwbGF0Zm9ybSBjb25maWd1cmF0aW9uCj4gLQkgIGJ1cy4g
U3lzdGVtIENvbmZpZ3VyYXRpb24gaW50ZXJmYWNlIGlzIG9uZSBvZiB0aGUgcG9zc2libGUgbWVh
bnMKPiAtCSAgb2YgZ2VuZXJhdGluZyB0cmFuc2FjdGlvbnMgb24gdGhpcyBidXMuCj4gLQo+ICBj
b25maWcgUENJX0VORFBPSU5UX1RFU1QKPiAgCWRlcGVuZHMgb24gUENJCj4gIAlzZWxlY3QgQ1JD
MzIKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNjL01ha2VmaWxlIGIvZHJpdmVycy9taXNjL01h
a2VmaWxlCj4gaW5kZXggOWFiZjI5MjNkODMxLi5jN2JkMDFhYzYyOTEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9taXNjL01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9taXNjL01ha2VmaWxlCj4gQEAg
LTQ5LDcgKzQ5LDYgQEAgb2JqLSQoQ09ORklHX1NSQU1fRVhFQykJCSs9IHNyYW0tZXhlYy5vCj4g
IG9iai15CQkJCSs9IG1pYy8KPiAgb2JqLSQoQ09ORklHX0dFTldRRSkJCSs9IGdlbndxZS8KPiAg
b2JqLSQoQ09ORklHX0VDSE8pCQkrPSBlY2hvLwo+IC1vYmotJChDT05GSUdfVkVYUFJFU1NfU1lT
Q0ZHKQkrPSB2ZXhwcmVzcy1zeXNjZmcubwo+ICBvYmotJChDT05GSUdfQ1hMX0JBU0UpCQkrPSBj
eGwvCj4gIG9iai0kKENPTkZJR19QQ0lfRU5EUE9JTlRfVEVTVCkJKz0gcGNpX2VuZHBvaW50X3Rl
c3Qubwo+ICBvYmotJChDT05GSUdfT0NYTCkJCSs9IG9jeGwvCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWlzYy92ZXhwcmVzcy1zeXNjZmcuYyBiL2RyaXZlcnMvbWlzYy92ZXhwcmVzcy1zeXNjZmcu
Ywo+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IGE0MzE3ODdjMDg5OC4uMDAwMDAw
MDAwMDAwCj4gLS0tIGEvZHJpdmVycy9taXNjL3ZleHByZXNzLXN5c2NmZy5jCj4gKysrIC9kZXYv
bnVsbAo+IEBAIC0xLDI4MCArMCwwIEBACj4gLS8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkKPiAtLyoKPiAtICoKPiAtICogQ29weXJpZ2h0IChDKSAyMDE0IEFSTSBMaW1p
dGVkCj4gLSAqLwo+IC0KPiAtI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gLSNpbmNsdWRlIDxs
aW51eC9lcnIuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC9v
Zi5oPgo+IC0jaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gLSNpbmNsdWRlIDxs
aW51eC9zY2hlZC9zaWduYWwuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiAtI2luY2x1
ZGUgPGxpbnV4L3N5c2NvcmVfb3BzLmg+Cj4gLSNpbmNsdWRlIDxsaW51eC92ZXhwcmVzcy5oPgo+
IC0KPiAtCj4gLSNkZWZpbmUgU1lTX0NGR0RBVEEJCTB4MAo+IC0KPiAtI2RlZmluZSBTWVNfQ0ZH
Q1RSTAkJMHg0Cj4gLSNkZWZpbmUgU1lTX0NGR0NUUkxfU1RBUlQJKDEgPDwgMzEpCj4gLSNkZWZp
bmUgU1lTX0NGR0NUUkxfV1JJVEUJKDEgPDwgMzApCj4gLSNkZWZpbmUgU1lTX0NGR0NUUkxfREND
KG4pCSgoKG4pICYgMHhmKSA8PCAyNikKPiAtI2RlZmluZSBTWVNfQ0ZHQ1RSTF9GVU5DKG4pCSgo
KG4pICYgMHgzZikgPDwgMjApCj4gLSNkZWZpbmUgU1lTX0NGR0NUUkxfU0lURShuKQkoKChuKSAm
IDB4MykgPDwgMTYpCj4gLSNkZWZpbmUgU1lTX0NGR0NUUkxfUE9TSVRJT04obikJKCgobikgJiAw
eGYpIDw8IDEyKQo+IC0jZGVmaW5lIFNZU19DRkdDVFJMX0RFVklDRShuKQkoKChuKSAmIDB4ZmZm
KSA8PCAwKQo+IC0KPiAtI2RlZmluZSBTWVNfQ0ZHU1RBVAkJMHg4Cj4gLSNkZWZpbmUgU1lTX0NG
R1NUQVRfRVJSCQkoMSA8PCAxKQo+IC0jZGVmaW5lIFNZU19DRkdTVEFUX0NPTVBMRVRFCSgxIDw8
IDApCj4gLQo+IC0KPiAtc3RydWN0IHZleHByZXNzX3N5c2NmZyB7Cj4gLQlzdHJ1Y3QgZGV2aWNl
ICpkZXY7Cj4gLQl2b2lkIF9faW9tZW0gKmJhc2U7Cj4gLQlzdHJ1Y3QgbGlzdF9oZWFkIGZ1bmNz
Owo+IC19Owo+IC0KPiAtc3RydWN0IHZleHByZXNzX3N5c2NmZ19mdW5jIHsKPiAtCXN0cnVjdCBs
aXN0X2hlYWQgbGlzdDsKPiAtCXN0cnVjdCB2ZXhwcmVzc19zeXNjZmcgKnN5c2NmZzsKPiAtCXN0
cnVjdCByZWdtYXAgKnJlZ21hcDsKPiAtCWludCBudW1fdGVtcGxhdGVzOwo+IC0JdTMyIHRlbXBs
YXRlW107IC8qIEtlZXAgaXQgbGFzdCEgKi8KPiAtfTsKPiAtCj4gLQo+IC1zdGF0aWMgaW50IHZl
eHByZXNzX3N5c2NmZ19leGVjKHN0cnVjdCB2ZXhwcmVzc19zeXNjZmdfZnVuYyAqZnVuYywKPiAt
CQlpbnQgaW5kZXgsIGJvb2wgd3JpdGUsIHUzMiAqZGF0YSkKPiAtewo+IC0Jc3RydWN0IHZleHBy
ZXNzX3N5c2NmZyAqc3lzY2ZnID0gZnVuYy0+c3lzY2ZnOwo+IC0JdTMyIGNvbW1hbmQsIHN0YXR1
czsKPiAtCWludCB0cmllczsKPiAtCWxvbmcgdGltZW91dDsKPiAtCj4gLQlpZiAoV0FSTl9PTihp
bmRleCA+PSBmdW5jLT5udW1fdGVtcGxhdGVzKSkKPiAtCQlyZXR1cm4gLUVJTlZBTDsKPiAtCj4g
LQljb21tYW5kID0gcmVhZGwoc3lzY2ZnLT5iYXNlICsgU1lTX0NGR0NUUkwpOwo+IC0JaWYgKFdB
Uk5fT04oY29tbWFuZCAmIFNZU19DRkdDVFJMX1NUQVJUKSkKPiAtCQlyZXR1cm4gLUVCVVNZOwo+
IC0KPiAtCWNvbW1hbmQgPSBmdW5jLT50ZW1wbGF0ZVtpbmRleF07Cj4gLQljb21tYW5kIHw9IFNZ
U19DRkdDVFJMX1NUQVJUOwo+IC0JY29tbWFuZCB8PSB3cml0ZSA/IFNZU19DRkdDVFJMX1dSSVRF
IDogMDsKPiAtCj4gLQkvKiBVc2UgYSBjYW5hcnkgZm9yIHJlYWRzICovCj4gLQlpZiAoIXdyaXRl
KQo+IC0JCSpkYXRhID0gMHhkZWFkYmVlZjsKPiAtCj4gLQlkZXZfZGJnKHN5c2NmZy0+ZGV2LCAi
ZnVuYyAlcCwgY29tbWFuZCAleCwgZGF0YSAleFxuIiwKPiAtCQkJZnVuYywgY29tbWFuZCwgKmRh
dGEpOwo+IC0Jd3JpdGVsKCpkYXRhLCBzeXNjZmctPmJhc2UgKyBTWVNfQ0ZHREFUQSk7Cj4gLQl3
cml0ZWwoMCwgc3lzY2ZnLT5iYXNlICsgU1lTX0NGR1NUQVQpOwo+IC0Jd3JpdGVsKGNvbW1hbmQs
IHN5c2NmZy0+YmFzZSArIFNZU19DRkdDVFJMKTsKPiAtCW1iKCk7Cj4gLQo+IC0JLyogVGhlIG9w
ZXJhdGlvbiBjYW4gdGFrZSBhZ2VzLi4uIEdvIHRvIHNsZWVwLCAxMDB1cyBpbml0aWFsbHkgKi8K
PiAtCXRyaWVzID0gMTAwOwo+IC0JdGltZW91dCA9IDEwMDsKPiAtCWRvIHsKPiAtCQlpZiAoIWly
cXNfZGlzYWJsZWQoKSkgewo+IC0JCQlzZXRfY3VycmVudF9zdGF0ZShUQVNLX0lOVEVSUlVQVElC
TEUpOwo+IC0JCQlzY2hlZHVsZV90aW1lb3V0KHVzZWNzX3RvX2ppZmZpZXModGltZW91dCkpOwo+
IC0JCQlpZiAoc2lnbmFsX3BlbmRpbmcoY3VycmVudCkpCj4gLQkJCQlyZXR1cm4gLUVJTlRSOwo+
IC0JCX0gZWxzZSB7Cj4gLQkJCXVkZWxheSh0aW1lb3V0KTsKPiAtCQl9Cj4gLQo+IC0JCXN0YXR1
cyA9IHJlYWRsKHN5c2NmZy0+YmFzZSArIFNZU19DRkdTVEFUKTsKPiAtCQlpZiAoc3RhdHVzICYg
U1lTX0NGR1NUQVRfRVJSKQo+IC0JCQlyZXR1cm4gLUVGQVVMVDsKPiAtCj4gLQkJaWYgKHRpbWVv
dXQgPiAyMCkKPiAtCQkJdGltZW91dCAtPSAyMDsKPiAtCX0gd2hpbGUgKC0tdHJpZXMgJiYgIShz
dGF0dXMgJiBTWVNfQ0ZHU1RBVF9DT01QTEVURSkpOwo+IC0JaWYgKFdBUk5fT05fT05DRSghdHJp
ZXMpKQo+IC0JCXJldHVybiAtRVRJTUVET1VUOwo+IC0KPiAtCWlmICghd3JpdGUpIHsKPiAtCQkq
ZGF0YSA9IHJlYWRsKHN5c2NmZy0+YmFzZSArIFNZU19DRkdEQVRBKTsKPiAtCQlkZXZfZGJnKHN5
c2NmZy0+ZGV2LCAiZnVuYyAlcCwgcmVhZCBkYXRhICV4XG4iLCBmdW5jLCAqZGF0YSk7Cj4gLQl9
Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gLX0KPiAtCj4gLXN0YXRpYyBpbnQgdmV4cHJlc3Nfc3lzY2Zn
X3JlYWQodm9pZCAqY29udGV4dCwgdW5zaWduZWQgaW50IGluZGV4LAo+IC0JCXVuc2lnbmVkIGlu
dCAqdmFsKQo+IC17Cj4gLQlzdHJ1Y3QgdmV4cHJlc3Nfc3lzY2ZnX2Z1bmMgKmZ1bmMgPSBjb250
ZXh0Owo+IC0KPiAtCXJldHVybiB2ZXhwcmVzc19zeXNjZmdfZXhlYyhmdW5jLCBpbmRleCwgZmFs
c2UsIHZhbCk7Cj4gLX0KPiAtCj4gLXN0YXRpYyBpbnQgdmV4cHJlc3Nfc3lzY2ZnX3dyaXRlKHZv
aWQgKmNvbnRleHQsIHVuc2lnbmVkIGludCBpbmRleCwKPiAtCQl1bnNpZ25lZCBpbnQgdmFsKQo+
IC17Cj4gLQlzdHJ1Y3QgdmV4cHJlc3Nfc3lzY2ZnX2Z1bmMgKmZ1bmMgPSBjb250ZXh0Owo+IC0K
PiAtCXJldHVybiB2ZXhwcmVzc19zeXNjZmdfZXhlYyhmdW5jLCBpbmRleCwgdHJ1ZSwgJnZhbCk7
Cj4gLX0KPiAtCj4gLXN0YXRpYyBzdHJ1Y3QgcmVnbWFwX2NvbmZpZyB2ZXhwcmVzc19zeXNjZmdf
cmVnbWFwX2NvbmZpZyA9IHsKPiAtCS5sb2NrID0gdmV4cHJlc3NfY29uZmlnX2xvY2ssCj4gLQku
dW5sb2NrID0gdmV4cHJlc3NfY29uZmlnX3VubG9jaywKPiAtCS5yZWdfYml0cyA9IDMyLAo+IC0J
LnZhbF9iaXRzID0gMzIsCj4gLQkucmVnX3JlYWQgPSB2ZXhwcmVzc19zeXNjZmdfcmVhZCwKPiAt
CS5yZWdfd3JpdGUgPSB2ZXhwcmVzc19zeXNjZmdfd3JpdGUsCj4gLQkucmVnX2Zvcm1hdF9lbmRp
YW4gPSBSRUdNQVBfRU5ESUFOX0xJVFRMRSwKPiAtCS52YWxfZm9ybWF0X2VuZGlhbiA9IFJFR01B
UF9FTkRJQU5fTElUVExFLAo+IC19Owo+IC0KPiAtCj4gLXN0YXRpYyBzdHJ1Y3QgcmVnbWFwICp2
ZXhwcmVzc19zeXNjZmdfcmVnbWFwX2luaXQoc3RydWN0IGRldmljZSAqZGV2LAo+IC0JCXZvaWQg
KmNvbnRleHQpCj4gLXsKPiAtCWludCBlcnI7Cj4gLQlzdHJ1Y3QgdmV4cHJlc3Nfc3lzY2ZnICpz
eXNjZmcgPSBjb250ZXh0Owo+IC0Jc3RydWN0IHZleHByZXNzX3N5c2NmZ19mdW5jICpmdW5jOwo+
IC0Jc3RydWN0IHByb3BlcnR5ICpwcm9wOwo+IC0JY29uc3QgX19iZTMyICp2YWwgPSBOVUxMOwo+
IC0JX19iZTMyIGVuZXJneV9xdWlya1s0XTsKPiAtCWludCBudW07Cj4gLQl1MzIgc2l0ZSwgcG9z
aXRpb24sIGRjYzsKPiAtCWludCBpOwo+IC0KPiAtCWVyciA9IHZleHByZXNzX2NvbmZpZ19nZXRf
dG9wbyhkZXYtPm9mX25vZGUsICZzaXRlLAo+IC0JCQkJJnBvc2l0aW9uLCAmZGNjKTsKPiAtCWlm
IChlcnIpCj4gLQkJcmV0dXJuIEVSUl9QVFIoZXJyKTsKPiAtCj4gLQlwcm9wID0gb2ZfZmluZF9w
cm9wZXJ0eShkZXYtPm9mX25vZGUsCj4gLQkJCSJhcm0sdmV4cHJlc3Mtc3lzcmVnLGZ1bmMiLCBO
VUxMKTsKPiAtCWlmICghcHJvcCkKPiAtCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiAtCj4g
LQludW0gPSBwcm9wLT5sZW5ndGggLyBzaXplb2YodTMyKSAvIDI7Cj4gLQl2YWwgPSBwcm9wLT52
YWx1ZTsKPiAtCj4gLQkvKgo+IC0JICogImFybSx2ZXhwcmVzcy1lbmVyZ3kiIGZ1bmN0aW9uIHVz
ZWQgdG8gYmUgZGVzY3JpYmVkCj4gLQkgKiBieSBpdHMgZmlyc3QgZGV2aWNlIG9ubHksIG5vdyBp
dCByZXF1aXJlcyBib3RoCj4gLQkgKi8KPiAtCWlmIChudW0gPT0gMSAmJiBvZl9kZXZpY2VfaXNf
Y29tcGF0aWJsZShkZXYtPm9mX25vZGUsCj4gLQkJCSJhcm0sdmV4cHJlc3MtZW5lcmd5IikpIHsK
PiAtCQludW0gPSAyOwo+IC0JCWVuZXJneV9xdWlya1swXSA9ICp2YWw7Cj4gLQkJZW5lcmd5X3F1
aXJrWzJdID0gKnZhbCsrOwo+IC0JCWVuZXJneV9xdWlya1sxXSA9ICp2YWw7Cj4gLQkJZW5lcmd5
X3F1aXJrWzNdID0gY3B1X3RvX2JlMzIoYmUzMl90b19jcHVwKHZhbCkgKyAxKTsKPiAtCQl2YWwg
PSBlbmVyZ3lfcXVpcms7Cj4gLQl9Cj4gLQo+IC0JZnVuYyA9IGt6YWxsb2Moc3RydWN0X3NpemUo
ZnVuYywgdGVtcGxhdGUsIG51bSksIEdGUF9LRVJORUwpOwo+IC0JaWYgKCFmdW5jKQo+IC0JCXJl
dHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+IC0KPiAtCWZ1bmMtPnN5c2NmZyA9IHN5c2NmZzsKPiAt
CWZ1bmMtPm51bV90ZW1wbGF0ZXMgPSBudW07Cj4gLQo+IC0JZm9yIChpID0gMDsgaSA8IG51bTsg
aSsrKSB7Cj4gLQkJdTMyIGZ1bmN0aW9uLCBkZXZpY2U7Cj4gLQo+IC0JCWZ1bmN0aW9uID0gYmUz
Ml90b19jcHVwKHZhbCsrKTsKPiAtCQlkZXZpY2UgPSBiZTMyX3RvX2NwdXAodmFsKyspOwo+IC0K
PiAtCQlkZXZfZGJnKGRldiwgImZ1bmMgJXA6ICV1LyV1LyV1LyV1LyV1XG4iLAo+IC0JCQkJZnVu
Yywgc2l0ZSwgcG9zaXRpb24sIGRjYywKPiAtCQkJCWZ1bmN0aW9uLCBkZXZpY2UpOwo+IC0KPiAt
CQlmdW5jLT50ZW1wbGF0ZVtpXSA9IFNZU19DRkdDVFJMX0RDQyhkY2MpOwo+IC0JCWZ1bmMtPnRl
bXBsYXRlW2ldIHw9IFNZU19DRkdDVFJMX1NJVEUoc2l0ZSk7Cj4gLQkJZnVuYy0+dGVtcGxhdGVb
aV0gfD0gU1lTX0NGR0NUUkxfUE9TSVRJT04ocG9zaXRpb24pOwo+IC0JCWZ1bmMtPnRlbXBsYXRl
W2ldIHw9IFNZU19DRkdDVFJMX0ZVTkMoZnVuY3Rpb24pOwo+IC0JCWZ1bmMtPnRlbXBsYXRlW2ld
IHw9IFNZU19DRkdDVFJMX0RFVklDRShkZXZpY2UpOwo+IC0JfQo+IC0KPiAtCXZleHByZXNzX3N5
c2NmZ19yZWdtYXBfY29uZmlnLm1heF9yZWdpc3RlciA9IG51bSAtIDE7Cj4gLQo+IC0JZnVuYy0+
cmVnbWFwID0gcmVnbWFwX2luaXQoZGV2LCBOVUxMLCBmdW5jLAo+IC0JCQkmdmV4cHJlc3Nfc3lz
Y2ZnX3JlZ21hcF9jb25maWcpOwo+IC0KPiAtCWlmIChJU19FUlIoZnVuYy0+cmVnbWFwKSkgewo+
IC0JCXZvaWQgKmVyciA9IGZ1bmMtPnJlZ21hcDsKPiAtCj4gLQkJa2ZyZWUoZnVuYyk7Cj4gLQkJ
cmV0dXJuIGVycjsKPiAtCX0KPiAtCj4gLQlsaXN0X2FkZCgmZnVuYy0+bGlzdCwgJnN5c2NmZy0+
ZnVuY3MpOwo+IC0KPiAtCXJldHVybiBmdW5jLT5yZWdtYXA7Cj4gLX0KPiAtCj4gLXN0YXRpYyB2
b2lkIHZleHByZXNzX3N5c2NmZ19yZWdtYXBfZXhpdChzdHJ1Y3QgcmVnbWFwICpyZWdtYXAsIHZv
aWQgKmNvbnRleHQpCj4gLXsKPiAtCXN0cnVjdCB2ZXhwcmVzc19zeXNjZmcgKnN5c2NmZyA9IGNv
bnRleHQ7Cj4gLQlzdHJ1Y3QgdmV4cHJlc3Nfc3lzY2ZnX2Z1bmMgKmZ1bmMsICp0bXA7Cj4gLQo+
IC0JcmVnbWFwX2V4aXQocmVnbWFwKTsKPiAtCj4gLQlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
ZnVuYywgdG1wLCAmc3lzY2ZnLT5mdW5jcywgbGlzdCkgewo+IC0JCWlmIChmdW5jLT5yZWdtYXAg
PT0gcmVnbWFwKSB7Cj4gLQkJCWxpc3RfZGVsKCZzeXNjZmctPmZ1bmNzKTsKPiAtCQkJa2ZyZWUo
ZnVuYyk7Cj4gLQkJCWJyZWFrOwo+IC0JCX0KPiAtCX0KPiAtfQo+IC0KPiAtc3RhdGljIHN0cnVj
dCB2ZXhwcmVzc19jb25maWdfYnJpZGdlX29wcyB2ZXhwcmVzc19zeXNjZmdfYnJpZGdlX29wcyA9
IHsKPiAtCS5yZWdtYXBfaW5pdCA9IHZleHByZXNzX3N5c2NmZ19yZWdtYXBfaW5pdCwKPiAtCS5y
ZWdtYXBfZXhpdCA9IHZleHByZXNzX3N5c2NmZ19yZWdtYXBfZXhpdCwKPiAtfTsKPiAtCj4gLQo+
IC1zdGF0aWMgaW50IHZleHByZXNzX3N5c2NmZ19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+IC17Cj4gLQlzdHJ1Y3QgdmV4cHJlc3Nfc3lzY2ZnICpzeXNjZmc7Cj4gLQlzdHJ1
Y3QgcmVzb3VyY2UgKnJlczsKPiAtCXN0cnVjdCBkZXZpY2UgKmJyaWRnZTsKPiAtCj4gLQlzeXNj
ZmcgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpzeXNjZmcpLCBHRlBfS0VSTkVM
KTsKPiAtCWlmICghc3lzY2ZnKQo+IC0JCXJldHVybiAtRU5PTUVNOwo+IC0Jc3lzY2ZnLT5kZXYg
PSAmcGRldi0+ZGV2Owo+IC0JSU5JVF9MSVNUX0hFQUQoJnN5c2NmZy0+ZnVuY3MpOwo+IC0KPiAt
CXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4g
LQlzeXNjZmctPmJhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsK
PiAtCWlmIChJU19FUlIoc3lzY2ZnLT5iYXNlKSkKPiAtCQlyZXR1cm4gUFRSX0VSUihzeXNjZmct
PmJhc2UpOwo+IC0KPiAtCS8qIE11c3QgdXNlIGRldi5wYXJlbnQgKE1GRCksIGFzIHRoYXQncyB3
aGVyZSBEVCBwaGFuZGxlIHBvaW50cyBhdC4uLiAqLwo+IC0JYnJpZGdlID0gdmV4cHJlc3NfY29u
ZmlnX2JyaWRnZV9yZWdpc3RlcihwZGV2LT5kZXYucGFyZW50LAo+IC0JCQkmdmV4cHJlc3Nfc3lz
Y2ZnX2JyaWRnZV9vcHMsIHN5c2NmZyk7Cj4gLQo+IC0JcmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhi
cmlkZ2UpOwo+IC19Cj4gLQo+IC1zdGF0aWMgY29uc3Qgc3RydWN0IHBsYXRmb3JtX2RldmljZV9p
ZCB2ZXhwcmVzc19zeXNjZmdfaWRfdGFibGVbXSA9IHsKPiAtCXsgInZleHByZXNzLXN5c2NmZyIs
IH0sCj4gLQl7fSwKPiAtfTsKPiAtCj4gLXN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHZl
eHByZXNzX3N5c2NmZ19kcml2ZXIgPSB7Cj4gLQkuZHJpdmVyLm5hbWUgPSAidmV4cHJlc3Mtc3lz
Y2ZnIiwKPiAtCS5pZF90YWJsZSA9IHZleHByZXNzX3N5c2NmZ19pZF90YWJsZSwKPiAtCS5wcm9i
ZSA9IHZleHByZXNzX3N5c2NmZ19wcm9iZSwKPiAtfTsKPiAtCj4gLXN0YXRpYyBpbnQgX19pbml0
IHZleHByZXNzX3N5c2NmZ19pbml0KHZvaWQpCj4gLXsKPiAtCXJldHVybiBwbGF0Zm9ybV9kcml2
ZXJfcmVnaXN0ZXIoJnZleHByZXNzX3N5c2NmZ19kcml2ZXIpOwo+IC19Cj4gLWNvcmVfaW5pdGNh
bGwodmV4cHJlc3Nfc3lzY2ZnX2luaXQpOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3Zl
eHByZXNzLmggYi9pbmNsdWRlL2xpbnV4L3ZleHByZXNzLmgKPiBpbmRleCAyZWM3OTkyYjA1NGMu
LjY1MDk2Yzc5MmQ1NyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3ZleHByZXNzLmgKPiAr
KysgYi9pbmNsdWRlL2xpbnV4L3ZleHByZXNzLmgKPiBAQCAtMTgsMjMgKzE4LDYgQEAKPiAgLyog
Q29uZmlnIGluZnJhc3RydWN0dXJlICovCj4gIAo+ICB2b2lkIHZleHByZXNzX2NvbmZpZ19zZXRf
bWFzdGVyKHUzMiBzaXRlKTsKPiAtdTMyIHZleHByZXNzX2NvbmZpZ19nZXRfbWFzdGVyKHZvaWQp
Owo+IC0KPiAtdm9pZCB2ZXhwcmVzc19jb25maWdfbG9jayh2b2lkICphcmcpOwo+IC12b2lkIHZl
eHByZXNzX2NvbmZpZ191bmxvY2sodm9pZCAqYXJnKTsKPiAtCj4gLWludCB2ZXhwcmVzc19jb25m
aWdfZ2V0X3RvcG8oc3RydWN0IGRldmljZV9ub2RlICpub2RlLCB1MzIgKnNpdGUsCj4gLQkJdTMy
ICpwb3NpdGlvbiwgdTMyICpkY2MpOwo+IC0KPiAtLyogQ29uZmlnIGJyaWRnZSBBUEkgKi8KPiAt
Cj4gLXN0cnVjdCB2ZXhwcmVzc19jb25maWdfYnJpZGdlX29wcyB7Cj4gLQlzdHJ1Y3QgcmVnbWFw
ICogKCpyZWdtYXBfaW5pdCkoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkICpjb250ZXh0KTsKPiAt
CXZvaWQgKCpyZWdtYXBfZXhpdCkoc3RydWN0IHJlZ21hcCAqcmVnbWFwLCB2b2lkICpjb250ZXh0
KTsKPiAtfTsKPiAtCj4gLXN0cnVjdCBkZXZpY2UgKnZleHByZXNzX2NvbmZpZ19icmlkZ2VfcmVn
aXN0ZXIoc3RydWN0IGRldmljZSAqcGFyZW50LAo+IC0JCXN0cnVjdCB2ZXhwcmVzc19jb25maWdf
YnJpZGdlX29wcyAqb3BzLCB2b2lkICpjb250ZXh0KTsKPiAgCj4gIC8qIENvbmZpZyByZWdtYXAg
QVBJICovCj4gIAo+IC0tIAo+IDIuMjAuMQo+IAoKLS0gCj09PT09PT09PT09PT09PT09PT09Cnwg
SSB3b3VsZCBsaWtlIHRvIHwKfCBmaXggdGhlIHdvcmxkLCAgfAp8IGJ1dCB0aGV5J3JlIG5vdCB8
CnwgZ2l2aW5nIG1lIHRoZSAgIHwKIFwgc291cmNlIGNvZGUhICAvCiAgLS0tLS0tLS0tLS0tLS0t
CiAgICDCr1xfKOODhClfL8KvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
