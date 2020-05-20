Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 058761DB101
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ru1sRI84QbtOnYXnPAWCUvIt+GkOEgl9zV3ItqwjtPk=; b=Lbon4ivKAk5wfv
	OyP/RCjKqliIjsIctwl4Wc3oTnpepdvH8+ZcQyMlsTjIGrUNMS7FQaNSNF3CR7IJmJOCKKhA902lp
	IiCg9y+6d5enOp3+DVqvRj+e+ENdrvNYg+JQfvbPHOhQhNiYsp38pIrpio/qS9dBQWhXf3QG+6lQY
	2RUSh9VuxylVQkVl4mKNNMlN0CBd2BXMm+O0XS78K1LtGiNvDNJ6bhGZr9dNVtVYsGL7mzx8A9QaA
	4BqZHOtkZSlQrnQX+vKHt3zL8d0awcir3yF67N3CbTA4QDDdSaNoyerUAshP4VUdIsINPORdN7DF1
	30dU+yTo4X7muMTTt6Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMZ1-00082s-L5; Wed, 20 May 2020 11:07:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMYq-00082Q-Kh
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:06:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F1C031B;
 Wed, 20 May 2020 04:06:56 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2AF153F68F;
 Wed, 20 May 2020 04:06:55 -0700 (PDT)
Date: Wed, 20 May 2020 12:06:53 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 2/2] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Message-ID: <20200520110652.GO5031@arm.com>
References: <20200519162821.16857-1-will@kernel.org>
 <20200519162821.16857-3-will@kernel.org>
 <20200520104803.GA25694@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520104803.GA25694@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_040656_719937_DBC347E3 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgMTE6NDg6MDNBTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDU6Mjg6MjFQTSArMDEwMCwgV2lsbCBEZWFj
b24gd3JvdGU6Cj4gPiBEYW5pZWwgcmVwb3J0cyB0aGF0IHRoZSAuY2ZpX3N0YXJ0cHJvYyBpcyBt
aXNwbGFjZWQgZm9yIHRoZSBzaWdyZXR1cm4KPiA+IHRyYW1wb2xpbmUsIHdoaWNoIGNhdXNlcyBM
TFZNJ3MgdW53aW5kZXIgdG8gbWlzYmVoYXZlOgo+ID4gCj4gPiAgIHwgSSBydW4gaW50byB0aGlz
IHdpdGggTExWTeKAmXMgdW53aW5kZXIuCj4gPiAgIHwgVGhpcyBjb21iaW5hdGlvbiB3YXMgYWx3
YXlzIGJyb2tlbi4KPiA+IAo+ID4gVGhpcyBwcm9tcHRlZCBEYXZlIHRvIHF1ZXN0aW9uIG91ciB1
c2Ugb2YgQ0ZJIGRpcmVjdGl2ZXMgbW9yZSBnZW5lcmFsbHksCj4gPiBhbmQgSSBlbmRlZCB1cCBn
b2luZyBkb3duIGEgcmFiYml0IGhvbGUgdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgaG93IHRoaXMKPiA+
IHZlcnkgcG9vcmx5IGRvY3VtZW50ZWQgc3R1ZmYgZ2V0cyB1c2VkLgo+ID4gCj4gPiBNb3ZlIHRo
ZSBDRkkgZGlyZWN0aXZlcyBzbyB0aGF0IHRoZSAibXlzdGVyaW91cyBOT1AiIGlzIGluY2x1ZGVk
IGluCj4gPiB0aGUgLmNmaV97c3RhcnQsZW5kfXByb2MgYmxvY2sgYW5kIGFkZCBhIGJ1bmNoIG9m
IGNvbW1lbnRzIHNvIHRoYXQgSQo+ID4gY2FuIHNhdmUgbXlzZWxmIGFub3RoZXIgaGVhZGFjaGUg
aW4gZnV0dXJlLgo+ID4gCj4gPiBDYzogVGFtYXMgWnNvbGRvcyA8dGFtYXMuenNvbGRvc0Bhcm0u
Y29tPgo+ID4gUmVwb3J0ZWQtYnk6IERhdmUgTWFydGluIDxkYXZlLm1hcnRpbkBhcm0uY29tPgo+
ID4gUmVwb3J0ZWQtYnk6IERhbmllbCBLaXNzIDxkYW5pZWwua2lzc0Bhcm0uY29tPgo+ID4gU2ln
bmVkLW9mZi1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gIGFy
Y2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMgfCA0MCArKysrKysrKysrKysrKysrKysr
KysrKystLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2ln
cmV0dXJuLlMgYi9hcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TCj4gPiBpbmRleCAw
YzkyMTEzMDAwMmEuLmNiNDdkZmIzYmQ1YSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQva2Vy
bmVsL3Zkc28vc2lncmV0dXJuLlMKPiA+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2ln
cmV0dXJuLlMKPiA+IEBAIC0xLDcgKzEsMTEgQEAKPiA+ICAvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vbmx5ICovCj4gPiAgLyoKPiA+ICAgKiBTaWdyZXR1cm4gdHJhbXBvbGlu
ZSBmb3IgcmV0dXJuaW5nIGZyb20gYSBzaWduYWwgd2hlbiB0aGUgU0FfUkVTVE9SRVIKPiA+IC0g
KiBmbGFnIGlzIG5vdCBzZXQuCj4gPiArICogZmxhZyBpcyBub3Qgc2V0LiBJdCBzZXJ2ZXMgcHJp
bWFyaWx5IGFzIGEgaGFsbCBvZiBzaGFtZSBmb3IgY3JhcHB5Cj4gPiArICogdW53aW5kZXJzIGFu
ZCBmZWF0dXJlcyBhbiBleGNpdGluZyBidXQgbXlzdGVyaW91cyBOT1AgaW5zdHJ1Y3Rpb24uCj4g
PiArICoKPiA+ICsgKiBJdCdzIGFsc28gZnJhZ2lsZSBhcyBoZWxsLCBzbyBwbGVhc2UgdGhpbmsg
dHdpY2UgYmVmb3JlIGNoYW5naW5nIGFueXRoaW5nCj4gPiArICogaW4gaGVyZS4KPiA+ICAgKgo+
ID4gICAqIENvcHlyaWdodCAoQykgMjAxMiBBUk0gTGltaXRlZAo+ID4gICAqCj4gPiBAQCAtMTQs
NyArMTgsMzQgQEAKPiA+ICAKPiA+ICAJLnRleHQKPiA+ICAKPiA+IC0Jbm9wCj4gPiArLyogRW5z
dXJlIHRoYXQgdGhlIG15c3RlcmlvdXMgTk9QIGNhbiBiZSBhc3NvY2lhdGVkIHdpdGggYSBmdW5j
dGlvbi4gKi8KPiA+ICsJLmNmaV9zdGFydHByb2MKPiA+ICsKPiA+ICsvKgo+ID4gKyAqIC5jZmlf
c2lnbmFsX2ZyYW1lIGNhdXNlcyB0aGUgY29ycmVzcG9uZGluZyBGcmFtZSBEZXNjcmlwdGlvbiBF
bnRyeSBpbiB0aGUKPiA+ICsgKiAuZWhfZnJhbWUgc2VjdGlvbiB0byBiZSBhbm5vdGF0ZWQgYXMg
YSBzaWduYWwgZnJhbWUuIFRoaXMgYWxsb3dzIERXQVJGCj4gPiArICogdW53aW5kZXJzIChlLmcu
IGxpYnN0ZGMrKykgdG8gaW1wbGVtZW50IF9VbndpbmRfR2V0SVBJbmZvKCksIHdoaWNoIHBlcm1p
dHMKPiA+ICsgKiB1bndpbmRpbmcgb3V0IG9mIHRoZSBzaWduYWwgdHJhbXBvbGluZSB3aXRob3V0
IHRoZSBuZWVkIGZvciB0aGUgbXlzdGVyaW91cwo+ID4gKyAqIE5PUC4KPiA+ICsgKi8KPiA+ICsJ
LmNmaV9zaWduYWxfZnJhbWUKPiA+ICsKPiA+ICsvKgo+ID4gKyAqIFRlbGwgdGhlIHVud2luZGVy
IHdoZXJlIHRvIGxvY2F0ZSB0aGUgZnJhbWUgcmVjb3JkIGxpbmtpbmcgYmFjayB0byB0aGUKPiA+
ICsgKiBpbnRlcnJ1cHRlZCBjb250ZXh0Lgo+ID4gKyAqLwo+ID4gKwkuY2ZpX2RlZl9jZmEgICAg
eDI5LCAwCj4gPiArCS5jZmlfb2Zmc2V0ICAgICB4MjksIDAgKiA4Cj4gPiArCS5jZmlfb2Zmc2V0
ICAgICB4MjksIDEgKiA4Cj4gCj4gT29wcywganVzdCBzcG90dGVkIHRoaXMgYnVnOiBzZWNvbmQg
ZW50cnkgc2hvdWxkIGJlIHgzMC4KCkRhbmcsIGRpZG4ndCBzcG90IHRoYXQuICBZZXMuCgpNdXN0
IGhhdmUgYmVlbiBtb21vcnkgY29ycnVwdGlvbiBpbiB5b3VyIGVkaXRvci4uLgoKQ2hlZXJzCi0t
LURhdmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
