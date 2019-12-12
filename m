Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEF111C9F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 10:55:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2y7vfsh8HWRY7ePrWd0Mr742kKfxFENS1Dpq20ZW7Hg=; b=SQ7MEee3zNlEfffQ8vyxZgxDV
	euRGHvfzVu/8B/U4nK0DAoBOwHThT7yPNLSpJ/s0Tv6HW+dW+Hdq57GAExGM6C2xtwZEycRofiJVP
	HeIKRsLNoja6b29QvYf1yj/N5E9WeUDXllFcolJfe5s278B0Cd/irnazCjkqeMXIGkfBospdILceN
	xfJAcTyEHDrMJwq6h+iH2UG48cjwWgkDTorQsKCAPwNLumDxDR3qhRdBrIdPk2Pmcv0CI8S4gAC/c
	Sox0Dhr+DBZW2i4q4lFdugDsnwcNZUyBlOr/Jeb/wNKbGbIlOAkQvGdYwHTHzf098OraZtsGUlSQ5
	HiqG4h3oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLCC-0007wF-NR; Thu, 12 Dec 2019 09:55:44 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLC5-0007um-2V
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 09:55:38 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifLC0-0007AX-PZ; Thu, 12 Dec 2019 10:55:32 +0100
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Ensure 'params' is initialised when looking
 up sys register
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 12 Dec 2019 09:55:32 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191212094049.12437-1-will@kernel.org>
References: <20191212094049.12437-1-will@kernel.org>
Message-ID: <a4b931f697b2fc7ec6ef5356b84a3939@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 suzuki.poulose@arm.com, kernel-team@android.com, stable@vger.kernel.org,
 vijaya.kumar@cavium.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_015537_262197_D1962F42 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: suzuki.poulose@arm.com, stable@vger.kernel.org,
 Vijaya Kumar K <vijaya.kumar@cavium.com>, james.morse@arm.com,
 kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0xMiAwOTo0MCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gQ29tbWl0IDRiOTI3Yjk0
ZDVkZiAoIktWTTogYXJtL2FybTY0OiB2Z2ljOiBJbnRyb2R1Y2UgCj4gZmluZF9yZWdfYnlfaWQo
KSIpCj4gaW50cm9kdWNlZCAnZmluZF9yZWdfYnlfaWQoKScsIHdoaWNoIGxvb2tzIHVwIGEgc3lz
dGVtIHJlZ2lzdGVyIG9ubHkgCj4gaWYKPiB0aGUgJ2lkJyBpbmRleCBwYXJhbWV0ZXIgaWRlbnRp
ZmllcyBhIHZhbGlkIHN5c3RlbSByZWdpc3Rlci4gQXMgcGFydCAKPiBvZgo+IHRoZSBwYXRjaCwg
ZXhpc3RpbmcgY2FsbGVycyBvZiAnZmluZF9yZWcoKScgd2VyZSBwb3J0ZWQgb3ZlciB0byB0aGUg
Cj4gbmV3Cj4gaW50ZXJmYWNlLCBidXQgdGhpcyBicmVha3MgJ2luZGV4X3RvX3N5c19yZWdfZGVz
YygpJyBpbiB0aGUgY2FzZSB0aGF0IAo+IHRoZQo+IGluaXRpYWwgbG9va3VwIGluIHRoZSB2Q1BV
IHRhcmdldCB0YWJsZSBmYWlscyBiZWNhdXNlIHdlIHdpbGwgdGhlbiAKPiBjYWxsCj4gaW50byAn
ZmluZF9yZWcoKScgZm9yIHRoZSBzeXN0ZW0gcmVnaXN0ZXIgdGFibGUgd2l0aCBhbiB1bmluaXRp
YWxpc2VkCj4gJ3BhcmFtJyBhcyB0aGUga2V5IHRvIHRoZSBsb29rdXAuCj4KPiBHQ0MgMTAgaXMg
YnJpZ2h0IGVub3VnaCB0byBzcG90IHRoaXMgKGFtb25nc3QgYSB0b25uZSBvZiBmYWxzZSAKPiBw
b3NpdGl2ZXMsCj4gYnV0IGhleSEpOgo+Cj4gICB8IGFyY2gvYXJtNjQva3ZtL3N5c19yZWdzLmM6
IEluIGZ1bmN0aW9uIAo+IOKAmGluZGV4X3RvX3N5c19yZWdfZGVzYy5wYXJ0LjAuaXNyYeKAmToK
PiAgIHwgYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYzo5ODM6MzM6IHdhcm5pbmc6IOKAmHBhcmFt
cy5PcDLigJkgbWF5IGJlIAo+IHVzZWQgdW5pbml0aWFsaXplZCBpbiB0aGlzIGZ1bmN0aW9uIFst
V21heWJlLXVuaW5pdGlhbGl6ZWRdCj4gICB8ICAgOTgzIHwgICAodTMyKSh4KS0+Q1JuLCAodTMy
KSh4KS0+Q1JtLCAodTMyKSh4KS0+T3AyKTsKPiAgIHwgWy4uLl0KPgo+IFJldmVydCB0aGUgaHVu
ayBvZiA0YjkyN2I5NGQ1ZGYgd2hpY2ggYnJlYWtzIAo+ICdpbmRleF90b19zeXNfcmVnX2Rlc2Mo
KScgc28KPiB0aGF0IHRoZSBvbGQgYmVoYXZpb3VyIG9mIGNoZWNraW5nIHRoZSBpbmRleCB1cGZy
b250IGlzIHJlc3RvcmVkLgoKSHVodWguLi4gV2VsbCBzcG90dGVkIEdDQyAxMCEgQW5kIHRoYW5r
cyBXaWxsIGZvciB0aGUgZml4LgoKPgo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4KPiBD
YzogTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4KPiBDYzogVmlqYXlhIEt1bWFyIEsgPFZp
amF5YS5LdW1hckBjYXZpdW0uY29tPgo+IEZpeGVzOiA0YjkyN2I5NGQ1ZGYgKCJLVk06IGFybS9h
cm02NDogdmdpYzogSW50cm9kdWNlIAo+IGZpbmRfcmVnX2J5X2lkKCkiKQo+IFNpZ25lZC1vZmYt
Ynk6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGFyY2gvYXJtNjQva3Zt
L3N5c19yZWdzLmMgfCA1ICsrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5j
IGIvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwo+IGluZGV4IDQ2ODIyYWZjNTdlMC4uMDFhNTE1
ZTAxNzFlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQva3ZtL3N5c19yZWdzLmMKPiArKysgYi9h
cmNoL2FybTY0L2t2bS9zeXNfcmVncy5jCj4gQEAgLTIzNjAsOCArMjM2MCwxMSBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHN5c19yZWdfZGVzYwo+ICppbmRleF90b19zeXNfcmVnX2Rlc2Moc3RydWN0
IGt2bV92Y3B1ICp2Y3B1LAo+ICAJaWYgKChpZCAmIEtWTV9SRUdfQVJNX0NPUFJPQ19NQVNLKSAh
PSBLVk1fUkVHX0FSTTY0X1NZU1JFRykKPiAgCQlyZXR1cm4gTlVMTDsKPgo+ICsJaWYgKCFpbmRl
eF90b19wYXJhbXMoaWQsICZwYXJhbXMpKQo+ICsJCXJldHVybiBOVUxMOwo+ICsKPiAgCXRhYmxl
ID0gZ2V0X3RhcmdldF90YWJsZSh2Y3B1LT5hcmNoLnRhcmdldCwgdHJ1ZSwgJm51bSk7Cj4gLQly
ID0gZmluZF9yZWdfYnlfaWQoaWQsICZwYXJhbXMsIHRhYmxlLCBudW0pOwo+ICsJciA9IGZpbmRf
cmVnKCZwYXJhbXMsIHRhYmxlLCBudW0pOwo+ICAJaWYgKCFyKQo+ICAJCXIgPSBmaW5kX3JlZygm
cGFyYW1zLCBzeXNfcmVnX2Rlc2NzLCBBUlJBWV9TSVpFKHN5c19yZWdfZGVzY3MpKTsKCkFwcGxp
ZWQsIHRoYW5rcy4KCiAgICAgICAgIE0uCi0tIApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNt
ZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
