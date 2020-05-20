Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BBC1DB08B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeeKV4Fnu6ovK8PEEmtAH+HbxSVSe8Z9cuPk8H7krfU=; b=Rqn2eHHV2jn2aA
	elCLxvJOor4+D6Vt8sC03nhht+3ZYw3UPAUhzGIxRiJl/8oVyMK7NUg6l+Uj8pvC94TvsA+Rv+DOJ
	y9S/uZWmJJFLkNYtwNHATUsTXswb5h2bU3veTyCFrpa/4qTnrSwwmbWACal48LgIBnekGlJF3hbXK
	1y0y4FWWwgH1Y6PG8jSNOEuaQXV5ls9wQuU8H2u5WmHkLflxcDD001fHuZR5K0hOIowx2B57BypL/
	ha7SBvaDAtiMBiuWZQ7zetsHubgQudVvUOZLt2iSWfHVLrHQ47V8pM/u89VwN1nBNJK1QwavRSL0p
	YAaHSrgOieXPNVsvsf9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMGp-0000Wg-QS; Wed, 20 May 2020 10:48:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMGe-0000WL-FV
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:48:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1025D207C4;
 Wed, 20 May 2020 10:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589971688;
 bh=dRZhX+i5GeRnONVgLFaTpbS6BTuDVY2/APlohMSthgw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q3ktETcN5EX9Okvh1zTFhTL37mptcCPxA/kDk0qVkOJRrKZOaUwDJFC342zkONSFN
 Y9GZ3UInfF2hr9q7Lc0sx5hU10Ny3R/Sqoe/R7PrrHNwuOUo2DY5FrmPBO5tTC6Xsh
 mTLwEJyOP9hXHbSj7nRxp6aGH3PAhYbnbOwVDQMs=
Date: Wed, 20 May 2020 11:48:03 +0100
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/2] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Message-ID: <20200520104803.GA25694@willie-the-truck>
References: <20200519162821.16857-1-will@kernel.org>
 <20200519162821.16857-3-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519162821.16857-3-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_034808_541252_F7D5DF86 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 kernel-team@android.com, Dave Martin <dave.martin@arm.com>,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDU6Mjg6MjFQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gRGFuaWVsIHJlcG9ydHMgdGhhdCB0aGUgLmNmaV9zdGFydHByb2MgaXMgbWlzcGxhY2Vk
IGZvciB0aGUgc2lncmV0dXJuCj4gdHJhbXBvbGluZSwgd2hpY2ggY2F1c2VzIExMVk0ncyB1bndp
bmRlciB0byBtaXNiZWhhdmU6Cj4gCj4gICB8IEkgcnVuIGludG8gdGhpcyB3aXRoIExMVk3igJlz
IHVud2luZGVyLgo+ICAgfCBUaGlzIGNvbWJpbmF0aW9uIHdhcyBhbHdheXMgYnJva2VuLgo+IAo+
IFRoaXMgcHJvbXB0ZWQgRGF2ZSB0byBxdWVzdGlvbiBvdXIgdXNlIG9mIENGSSBkaXJlY3RpdmVz
IG1vcmUgZ2VuZXJhbGx5LAo+IGFuZCBJIGVuZGVkIHVwIGdvaW5nIGRvd24gYSByYWJiaXQgaG9s
ZSB0cnlpbmcgdG8gZmlndXJlIG91dCBob3cgdGhpcwo+IHZlcnkgcG9vcmx5IGRvY3VtZW50ZWQg
c3R1ZmYgZ2V0cyB1c2VkLgo+IAo+IE1vdmUgdGhlIENGSSBkaXJlY3RpdmVzIHNvIHRoYXQgdGhl
ICJteXN0ZXJpb3VzIE5PUCIgaXMgaW5jbHVkZWQgaW4KPiB0aGUgLmNmaV97c3RhcnQsZW5kfXBy
b2MgYmxvY2sgYW5kIGFkZCBhIGJ1bmNoIG9mIGNvbW1lbnRzIHNvIHRoYXQgSQo+IGNhbiBzYXZl
IG15c2VsZiBhbm90aGVyIGhlYWRhY2hlIGluIGZ1dHVyZS4KPiAKPiBDYzogVGFtYXMgWnNvbGRv
cyA8dGFtYXMuenNvbGRvc0Bhcm0uY29tPgo+IFJlcG9ydGVkLWJ5OiBEYXZlIE1hcnRpbiA8ZGF2
ZS5tYXJ0aW5AYXJtLmNvbT4KPiBSZXBvcnRlZC1ieTogRGFuaWVsIEtpc3MgPGRhbmllbC5raXNz
QGFybS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4K
PiAtLS0KPiAgYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4uUyB8IDQwICsrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvdmRz
by9zaWdyZXR1cm4uUyBiL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMKPiBpbmRl
eCAwYzkyMTEzMDAwMmEuLmNiNDdkZmIzYmQ1YSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2tl
cm5lbC92ZHNvL3NpZ3JldHVybi5TCj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdy
ZXR1cm4uUwo+IEBAIC0xLDcgKzEsMTEgQEAKPiAgLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAtb25seSAqLwo+ICAvKgo+ICAgKiBTaWdyZXR1cm4gdHJhbXBvbGluZSBmb3IgcmV0
dXJuaW5nIGZyb20gYSBzaWduYWwgd2hlbiB0aGUgU0FfUkVTVE9SRVIKPiAtICogZmxhZyBpcyBu
b3Qgc2V0Lgo+ICsgKiBmbGFnIGlzIG5vdCBzZXQuIEl0IHNlcnZlcyBwcmltYXJpbHkgYXMgYSBo
YWxsIG9mIHNoYW1lIGZvciBjcmFwcHkKPiArICogdW53aW5kZXJzIGFuZCBmZWF0dXJlcyBhbiBl
eGNpdGluZyBidXQgbXlzdGVyaW91cyBOT1AgaW5zdHJ1Y3Rpb24uCj4gKyAqCj4gKyAqIEl0J3Mg
YWxzbyBmcmFnaWxlIGFzIGhlbGwsIHNvIHBsZWFzZSB0aGluayB0d2ljZSBiZWZvcmUgY2hhbmdp
bmcgYW55dGhpbmcKPiArICogaW4gaGVyZS4KPiAgICoKPiAgICogQ29weXJpZ2h0IChDKSAyMDEy
IEFSTSBMaW1pdGVkCj4gICAqCj4gQEAgLTE0LDcgKzE4LDM0IEBACj4gIAo+ICAJLnRleHQKPiAg
Cj4gLQlub3AKPiArLyogRW5zdXJlIHRoYXQgdGhlIG15c3RlcmlvdXMgTk9QIGNhbiBiZSBhc3Nv
Y2lhdGVkIHdpdGggYSBmdW5jdGlvbi4gKi8KPiArCS5jZmlfc3RhcnRwcm9jCj4gKwo+ICsvKgo+
ICsgKiAuY2ZpX3NpZ25hbF9mcmFtZSBjYXVzZXMgdGhlIGNvcnJlc3BvbmRpbmcgRnJhbWUgRGVz
Y3JpcHRpb24gRW50cnkgaW4gdGhlCj4gKyAqIC5laF9mcmFtZSBzZWN0aW9uIHRvIGJlIGFubm90
YXRlZCBhcyBhIHNpZ25hbCBmcmFtZS4gVGhpcyBhbGxvd3MgRFdBUkYKPiArICogdW53aW5kZXJz
IChlLmcuIGxpYnN0ZGMrKykgdG8gaW1wbGVtZW50IF9VbndpbmRfR2V0SVBJbmZvKCksIHdoaWNo
IHBlcm1pdHMKPiArICogdW53aW5kaW5nIG91dCBvZiB0aGUgc2lnbmFsIHRyYW1wb2xpbmUgd2l0
aG91dCB0aGUgbmVlZCBmb3IgdGhlIG15c3RlcmlvdXMKPiArICogTk9QLgo+ICsgKi8KPiArCS5j
Zmlfc2lnbmFsX2ZyYW1lCj4gKwo+ICsvKgo+ICsgKiBUZWxsIHRoZSB1bndpbmRlciB3aGVyZSB0
byBsb2NhdGUgdGhlIGZyYW1lIHJlY29yZCBsaW5raW5nIGJhY2sgdG8gdGhlCj4gKyAqIGludGVy
cnVwdGVkIGNvbnRleHQuCj4gKyAqLwo+ICsJLmNmaV9kZWZfY2ZhICAgIHgyOSwgMAo+ICsJLmNm
aV9vZmZzZXQgICAgIHgyOSwgMCAqIDgKPiArCS5jZmlfb2Zmc2V0ICAgICB4MjksIDEgKiA4CgpP
b3BzLCBqdXN0IHNwb3R0ZWQgdGhpcyBidWc6IHNlY29uZCBlbnRyeSBzaG91bGQgYmUgeDMwLgoK
V2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
