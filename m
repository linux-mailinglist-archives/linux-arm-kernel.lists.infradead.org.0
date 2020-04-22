Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7DF1B3DA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VLcVXbGozbdCD9vrwW2FszHYpGj0jHMKekhW+3T5dI=; b=Je5VfFNhVfElD1
	15pscJ/73LTDJqYJEXWc8kw7TdiUBDr02q9UvlhfxBj5qjY7CufQTW8YOCcRMgz0IPpAKYHRZCLu7
	B8LMBLQWDyRRtl0e5BOM+5nDYgJyIL2jJgMFi7NaLC4zACByLcnjeRk68Ki2/komXssMDNWVpjvyM
	nfssstM/XB7JcmE1+BYJrzCVdoJlCPSmJab2ZU7+wBXuufoE6snM0mz7JzfANq71zuJ1CYkQhwGUA
	U726RSquQp5z0r4qy0c3T4CMKHmwK1KBJrVOZ3XAymr5k1eHNkXuN4G5tJtPcT5inGdAY/2Pqsn9W
	xHhZQ1Bs/AtC6Vr5pxeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCRx-0000Li-9M; Wed, 22 Apr 2020 10:17:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCQC-0008T3-Ce
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:16:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D734C31B;
 Wed, 22 Apr 2020 03:15:56 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 990B93F68F;
 Wed, 22 Apr 2020 03:15:56 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 46D24682F3E; Wed, 22 Apr 2020 11:15:55 +0100 (BST)
Date: Wed, 22 Apr 2020 11:15:55 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 01/17] ARM: vexpress: Move vexpress_flags_set() into arch
 code
Message-ID: <20200422101555.GP364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-2-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-2-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_031600_517887_E9298615 
X-CRM114-Status: GOOD (  23.35  )
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

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDc6NTRQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gdmV4cHJlc3NfZmxhZ3Nfc2V0KCkgaXMgb25seSB1c2VkIGJ5IHRoZSBwbGF0Zm9ybSBT
TVAgcmVsYXRlZCBjb2RlIGFuZAo+IGhhcyBub3RoaW5nIHRvIGRvIHdpdGggdGhlIHZleHByZXNz
LXN5c3JlZyBNRkQgZHJpdmVyIG90aGVyIHRoYW4gYm90aAo+IGFjY2VzcyB0aGUgc2FtZSBoL3cg
YmxvY2suIEl0J3MgYWxzbyBvbmx5IG5lZWRlZCBmb3IgMzItYml0IHN5c3RlbXMgYW5kCj4gbXVz
dCBiZSBidWlsdC1pbiBmb3IgdGhlbS4gTGV0J3MgbW92ZSB2ZXhwcmVzc19mbGFnc19zZXQoKSBj
bG9zZXIgdG8KPiB3aGVyZSBpdCBpcyBiZWluZyB1c2VkLiBUaGlzIHdpbGwgYWxsb3cgZm9yIHZl
eHByZXNzLXN5c3JlZyB0byBiZSBidWlsdAo+IGFzIGEgbW9kdWxlLgo+IAo+IENjOiBMaXZpdSBE
dWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KCkFja2VkLWJ5OiBMaXZpdSBEdWRhdSA8bGl2aXUu
ZHVkYXVAYXJtLmNvbT4KClVuZm9ydHVuYXRlbHkgSSBkaWQgbm90IGhhZCB0aGUgZm9yZXRob3Vn
aHQgdG8gbGVhdmUgbXkgVmVyc2F0aWxlIEV4cHJlc3MgYm9hcmQKcGx1Z2dlZCBpbiBiZWZvcmUg
b3VyIG9mZmljZSBsb2NrZG93biwgc28gSSB3aWxsIG5vdCBoYXZlIGEgY2hhbmNlIHRvIHRlc3Qg
dGhlCnNlcmllcy4KCkJlc3QgcmVnYXJkcywKTGl2aXUKCj4gQ2M6IFN1ZGVlcCBIb2xsYSA8c3Vk
ZWVwLmhvbGxhQGFybS5jb20+Cj4gQ2M6IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJh
bGlzaUBhcm0uY29tPgo+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5v
cmc+Cj4gQ2M6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gU2lnbmVkLW9mZi1i
eTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm0vbWFjaC12
ZXhwcmVzcy9LY29uZmlnIHwgIDEgLQo+ICBhcmNoL2FybS9tYWNoLXZleHByZXNzL2NvcmUuaCAg
fCAgMSArCj4gIGFyY2gvYXJtL21hY2gtdmV4cHJlc3MvZGNzY2IuYyB8ICAxICsKPiAgYXJjaC9h
cm0vbWFjaC12ZXhwcmVzcy92Mm0uYyAgIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysKPiAg
ZHJpdmVycy9tZmQvdmV4cHJlc3Mtc3lzcmVnLmMgIHwgMTkgLS0tLS0tLS0tLS0tLS0tLS0tLQo+
ICBpbmNsdWRlL2xpbnV4L3ZleHByZXNzLmggICAgICAgfCAgNCAtLS0tCj4gIDYgZmlsZXMgY2hh
bmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvS2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtdmV4cHJlc3Mv
S2NvbmZpZwo+IGluZGV4IDcyNmE2ODA4NWMzYi4uMTg5NTFjZDIwZDlkIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvS2NvbmZpZwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtdmV4
cHJlc3MvS2NvbmZpZwo+IEBAIC0yMiw3ICsyMiw2IEBAIG1lbnVjb25maWcgQVJDSF9WRVhQUkVT
Uwo+ICAJc2VsZWN0IFJFR1VMQVRPUl9GSVhFRF9WT0xUQUdFIGlmIFJFR1VMQVRPUgo+ICAJc2Vs
ZWN0IFZFWFBSRVNTX0NPTkZJRwo+ICAJc2VsZWN0IFZFWFBSRVNTX1NZU0NGRwo+IC0Jc2VsZWN0
IE1GRF9WRVhQUkVTU19TWVNSRUcKPiAgCWhlbHAKPiAgCSAgVGhpcyBvcHRpb24gZW5hYmxlcyBz
dXBwb3J0IGZvciBzeXN0ZW1zIHVzaW5nIENvcnRleCBwcm9jZXNzb3IgYmFzZWQKPiAgCSAgQVJN
IGNvcmUgYW5kIGxvZ2ljIChGUEdBKSB0aWxlcyBvbiB0aGUgVmVyc2F0aWxlIEV4cHJlc3MgbW90
aGVyYm9hcmQsCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvY29yZS5oIGIv
YXJjaC9hcm0vbWFjaC12ZXhwcmVzcy9jb3JlLmgKPiBpbmRleCBmNGE3NTE5MDg0ZjEuLmJkYTc4
Njc1YzU1ZCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXZleHByZXNzL2NvcmUuaAo+ICsr
KyBiL2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvY29yZS5oCj4gQEAgLTEsMyArMSw0IEBACj4gIGJv
b2wgdmV4cHJlc3Nfc21wX2luaXRfb3BzKHZvaWQpOwo+ICt2b2lkIHZleHByZXNzX2ZsYWdzX3Nl
dCh1MzIgZGF0YSk7Cj4gIAo+ICBleHRlcm4gY29uc3Qgc3RydWN0IHNtcF9vcGVyYXRpb25zIHZl
eHByZXNzX3NtcF9kdF9vcHM7Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtdmV4cHJlc3Mv
ZGNzY2IuYyBiL2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvZGNzY2IuYwo+IGluZGV4IDQ2YTkwM2M4
OGM2YS4uYTA1NTRkN2QwNGY3IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtdmV4cHJlc3Mv
ZGNzY2IuYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvZGNzY2IuYwo+IEBAIC0yMCw2
ICsyMCw3IEBACj4gICNpbmNsdWRlIDxhc20vY3B1dHlwZS5oPgo+ICAjaW5jbHVkZSA8YXNtL2Nw
MTUuaD4KPiAgCj4gKyNpbmNsdWRlICJjb3JlLmgiCj4gIAo+ICAjZGVmaW5lIFJTVF9IT0xEMAkw
eDAKPiAgI2RlZmluZSBSU1RfSE9MRDEJMHg0Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gt
dmV4cHJlc3MvdjJtLmMgYi9hcmNoL2FybS9tYWNoLXZleHByZXNzL3YybS5jCj4gaW5kZXggOTU4
ODZiM2JiOWRkLi5mZmU3YzdhODVhZTkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC12ZXhw
cmVzcy92Mm0uYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvdjJtLmMKPiBAQCAtMSw4
ICsxLDMxIEBACj4gIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gKyNpbmNs
dWRlIDxsaW51eC9vZi5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgo+ICAjaW5j
bHVkZSA8YXNtL21hY2gvYXJjaC5oPgo+ICAKPiAgI2luY2x1ZGUgImNvcmUuaCIKPiAgCj4gKyNk
ZWZpbmUgU1lTX0ZMQUdTU0VUCQkweDAzMAo+ICsjZGVmaW5lIFNZU19GTEFHU0NMUgkJMHgwMzQK
PiArCj4gK3ZvaWQgdmV4cHJlc3NfZmxhZ3Nfc2V0KHUzMiBkYXRhKQo+ICt7Cj4gKwlzdGF0aWMg
dm9pZCBfX2lvbWVtICpiYXNlOwo+ICsKPiArCWlmICghYmFzZSkgewo+ICsJCXN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbm9kZSA9IG9mX2ZpbmRfY29tcGF0aWJsZV9ub2RlKE5VTEwsIE5VTEwsCj4gKwkJ
CQkiYXJtLHZleHByZXNzLXN5c3JlZyIpOwo+ICsKPiArCQliYXNlID0gb2ZfaW9tYXAobm9kZSwg
MCk7Cj4gKwl9Cj4gKwo+ICsJaWYgKFdBUk5fT04oIWJhc2UpKQo+ICsJCXJldHVybjsKPiArCj4g
Kwl3cml0ZWwofjAsIGJhc2UgKyBTWVNfRkxBR1NDTFIpOwo+ICsJd3JpdGVsKGRhdGEsIGJhc2Ug
KyBTWVNfRkxBR1NTRVQpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHYy
bV9kdF9tYXRjaFtdIF9faW5pdGNvbnN0ID0gewo+ICAJImFybSx2ZXhwcmVzcyIsCj4gIAlOVUxM
LAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC92ZXhwcmVzcy1zeXNyZWcuYyBiL2RyaXZlcnMv
bWZkL3ZleHByZXNzLXN5c3JlZy5jCj4gaW5kZXggYzY4ZmY1NmRiZGIxLi4wYjljYzY3NzA2Yzcg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZmQvdmV4cHJlc3Mtc3lzcmVnLmMKPiArKysgYi9kcml2
ZXJzL21mZC92ZXhwcmVzcy1zeXNyZWcuYwo+IEBAIC04LDcgKzgsNiBAQAo+ICAjaW5jbHVkZSA8
bGludXgvZXJyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9pby5oPgo+ICAjaW5jbHVkZSA8bGludXgv
bWZkL2NvcmUuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KPiAgI2luY2x1ZGUg
PGxpbnV4L29mX3BsYXRmb3JtLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kYXRhL3N5
c2Nvbi5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gQEAgLTQyLDI0
ICs0MSw2IEBACj4gIAo+ICAjZGVmaW5lIFNZU19NSVNDX01BU1RFUlNJVEUJKDEgPDwgMTQpCj4g
IAo+IC12b2lkIHZleHByZXNzX2ZsYWdzX3NldCh1MzIgZGF0YSkKPiAtewo+IC0Jc3RhdGljIHZv
aWQgX19pb21lbSAqYmFzZTsKPiAtCj4gLQlpZiAoIWJhc2UpIHsKPiAtCQlzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5vZGUgPSBvZl9maW5kX2NvbXBhdGlibGVfbm9kZShOVUxMLCBOVUxMLAo+IC0JCQkJ
ImFybSx2ZXhwcmVzcy1zeXNyZWciKTsKPiAtCj4gLQkJYmFzZSA9IG9mX2lvbWFwKG5vZGUsIDAp
Owo+IC0JfQo+IC0KPiAtCWlmIChXQVJOX09OKCFiYXNlKSkKPiAtCQlyZXR1cm47Cj4gLQo+IC0J
d3JpdGVsKH4wLCBiYXNlICsgU1lTX0ZMQUdTQ0xSKTsKPiAtCXdyaXRlbChkYXRhLCBiYXNlICsg
U1lTX0ZMQUdTU0VUKTsKPiAtfQo+IC0KPiAgLyogVGhlIHN5c3JlZyBibG9jayBpcyBqdXN0IGEg
cmFuZG9tIGNvbGxlY3Rpb24gb2YgdmFyaW91cyBmdW5jdGlvbnMuLi4gKi8KPiAgCj4gIHN0YXRp
YyBzdHJ1Y3Qgc3lzY29uX3BsYXRmb3JtX2RhdGEgdmV4cHJlc3Nfc3lzcmVnX3N5c19pZF9wZGF0
YSA9IHsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92ZXhwcmVzcy5oIGIvaW5jbHVkZS9s
aW51eC92ZXhwcmVzcy5oCj4gaW5kZXggMGUxMzBiNTA3N2E1Li4yZWM3OTkyYjA1NGMgMTAwNjQ0
Cj4gLS0tIGEvaW5jbHVkZS9saW51eC92ZXhwcmVzcy5oCj4gKysrIGIvaW5jbHVkZS9saW51eC92
ZXhwcmVzcy5oCj4gQEAgLTQwLDggKzQwLDQgQEAgc3RydWN0IGRldmljZSAqdmV4cHJlc3NfY29u
ZmlnX2JyaWRnZV9yZWdpc3RlcihzdHJ1Y3QgZGV2aWNlICpwYXJlbnQsCj4gIAo+ICBzdHJ1Y3Qg
cmVnbWFwICpkZXZtX3JlZ21hcF9pbml0X3ZleHByZXNzX2NvbmZpZyhzdHJ1Y3QgZGV2aWNlICpk
ZXYpOwo+ICAKPiAtLyogUGxhdGZvcm0gY29udHJvbCAqLwo+IC0KPiAtdm9pZCB2ZXhwcmVzc19m
bGFnc19zZXQodTMyIGRhdGEpOwo+IC0KPiAgI2VuZGlmCj4gLS0gCj4gMi4yMC4xCj4gCgotLSAK
PT09PT09PT09PT09PT09PT09PT0KfCBJIHdvdWxkIGxpa2UgdG8gfAp8IGZpeCB0aGUgd29ybGQs
ICB8CnwgYnV0IHRoZXkncmUgbm90IHwKfCBnaXZpbmcgbWUgdGhlICAgfAogXCBzb3VyY2UgY29k
ZSEgIC8KICAtLS0tLS0tLS0tLS0tLS0KICAgIMKvXF8o44OEKV8vwq8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
