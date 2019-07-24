Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EBE72C24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=slmRc9ShBfPbejyNHFa7/1DOfJ9OtqcNlqZaARfCokg=; b=meRI6Nao24xQtNJwOoMyW2qwC
	+f13peaQIoMwUneDIAo1/ZXPsST4FhrSzeo4UT5QB8l37tASn1GfeRWcyGm1PYs1E2mCjvxUdGpof
	d7fb+rq1FWRRLfDymrjshvhjkQ/UFXfU1aQjMaamzhgsRMtC9a2eJGBLytH+2RcATnmuQAu9VhWuA
	ub3PzSsMTVSAG64oMkTO9LIG/9qHaXItGcvElpV0nGWwKkwbojHKvvaBSAsb8srMOJxEEHqdcfIPI
	q7qC5ethZRaR2jaCmPesUoaeS5BReb9jSI6TTiscrFz8+fVwjBLDzlO11jptTGu2KdQcs3UI0rQaV
	iKuCMMqqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEEK-00074r-Vv; Wed, 24 Jul 2019 10:10:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqEE5-00074L-5E
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:10:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B657337;
 Wed, 24 Jul 2019 03:10:24 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 862743F71F;
 Wed, 24 Jul 2019 03:10:23 -0700 (PDT)
Subject: Re: [PATCH] dma: qcom: hidma_mgmt: Add of_node_put() before goto
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, okaya@kernel.org,
 agross@kernel.org, vkoul@kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org
References: <20190723103543.7888-1-nishkadg.linux@gmail.com>
 <b5b76ef6-c5f3-bab0-e981-cd47c7264959@arm.com>
 <6ef666c3-a155-130d-24bc-8c04b3485d44@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9d5a995d-74b6-742a-f5c2-ac9227f7cae0@arm.com>
Date: Wed, 24 Jul 2019 11:10:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6ef666c3-a155-130d-24bc-8c04b3485d44@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_031025_287382_BFB57C24 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDcvMjAxOSAwOTowNSwgTmlzaGthIERhc2d1cHRhIHdyb3RlOgo+IE9uIDIzLzA3LzE5
IDU6MzIgUE0sIFJvYmluIE11cnBoeSB3cm90ZToKPj4gT24gMjMvMDcvMjAxOSAxMTozNSwgTmlz
aGthIERhc2d1cHRhIHdyb3RlOgo+Pj4gRWFjaCBpdGVyYXRpb24gb2YgZm9yX2VhY2hfYXZhaWxh
YmxlX2NoaWxkX29mX25vZGUgcHV0cyB0aGUgcHJldmlvdXMKPj4+IG5vZGUsIGJ1dCBpbiB0aGUg
Y2FzZSBvZiBhIGdvdG8gZnJvbSB0aGUgbWlkZGxlIG9mIHRoZSBsb29wLCB0aGVyZSBpcwo+Pj4g
bm8gcHV0LCB0aHVzIGNhdXNpbmcgYSBtZW1vcnkgbGVhay4gQWRkIGFuIG9mX25vZGVfcHV0IGJl
Zm9yZSB0aGUKPj4+IGdvdG8gaW4gNCBwbGFjZXMuCj4+Cj4+IFdoeSBub3QganVzdCBhZGQgaXQg
b25jZSBhdCB0aGUgIm91dCIgbGFiZWwgaXRzZWxmPyAoQ29uc2lkZXIgdGhlIAo+PiBjb25kaXRp
b25zIGZvciB0aGUgbG9vcCB0ZXJtaW5hdGluZyBuYXR1cmFsbHkpCj4gCj4gSWYgdGhlIGxvb3Ag
dGVybWluYXRlcyBuYXR1cmFsbHkgdGhlbiwgYXMgZmFyIGFzIEkgdW5kZXJzdGFuZCwgY2hpbGQg
Cj4gd2lsbCBiZSBwdXQgYnkgdGhlIGxvb3AgaXRzZWxmOyB0aGVuIGFuIGV4dHJhIG9mX25vZGVf
cHV0KCkgdW5kZXIgdGhlIAo+IG91dCBsYWJlbCB3b3VsZCBwdXQgdGhlIGNoaWxkIG5vZGUgZXZl
biB0aG91Z2ggaXQgaGFzIGFscmVhZHkgYmVlbiBwdXQuIAo+IElmIEknbSB1bmRlcnN0YW5kaW5n
IHRoaXMgY29ycmVjdGx5IChhbmQgSSBtaWdodCBub3QgYmUpIGlzIGl0IG9rYXkgdG8gCj4gZGVj
cmVtZW50IHJlZmNvdW50IG1vcmUgdGltZXMgdGhhdCBpdCBpcyBpbmNyZW1lbnRlZD8KCkFoLCBi
dXQgaXMgaXQgcmVhbGx5IHRoZSBzYW1lIHRoaW5nIGJlaW5nIHB1dCBib3RoIHRpbWVzPyBUaGUg
bG9vcCAKKml0ZXJhdG9yKiB3aWxsIGluZGVlZCBkcm9wIGl0cyByZWZlcmVuY2Ugb24gdGhlIGxh
c3QgdmFsaWQgY2hpbGQgbm9kZSwgCmJ1dCB3aGF0J3MgdGhlIGFjdHVhbCB0ZXJtaW5hdGlvbiBj
b25kaXRpb24sIGFuZCB0aHVzIHRoZSBzdGF0ZSAKYWZ0ZXJ3YXJkcz8gOykKClJvYmluLgoKPj4g
QW5kIGlmIHlvdSdyZSBjbGVhbmluZyB1cCB0aGUgcmVmY291bnRpbmcgaGVyZSBhbnl3YXkgdGhl
biBJJ2QgYWxzbyAKPj4gbm90ZSB0aGF0IHRoZSByZWZlcmVuY2UgaGVsZCBieSB0aGUgbG9vcCBp
dGVyYXRvciBtYWtlcyB0aGUgZXh0cmEgCj4+IGdldC9wdXQgaW5zaWRlIHRoYXQgbG9vcCBlbnRp
cmVseSByZWR1bmRhbnQuIEl0J3MgYWx3YXlzIHdvcnRoIHRha2luZyAKPj4gYSBsb29rIGF0IHRo
ZSB3aWRlciBjb250ZXh0IHJhdGhlciB0aGFuIGp1c3QgYmxpbmRseSBmb2N1c2luZyBvbiB3aGF0
IAo+PiBhIGdpdmVuIHNjcmlwdCBwaWNrcyB1cCAtIGl0J3MgZmFpcmx5IHJhcmUgdGhhdCBhIHBp
ZWNlIG9mIGNvZGUgaGFzIAo+PiBvbmUgb2J2aW91cyBpc3N1ZSBidXQgaXMgb3RoZXJ3aXNlIHBl
cmZlY3QuCj4gCj4gVGhhbmvCoCB5b3UgZm9yIHBvaW50aW5nIHRoaXMgb3V0OyBJJ3ZlIGFkZGVk
IGl0IGluIHYyLgo+IAo+IFRoYW5raW5nIHlvdSwKPiBOaXNoa2EKPj4gUm9iaW4uCj4+Cj4+PiBJ
c3N1ZSBmb3VuZCB3aXRoIENvY2NpbmVsbGUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTmlzaGth
IERhc2d1cHRhIDxuaXNoa2FkZy5saW51eEBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZl
cnMvZG1hL3Fjb20vaGlkbWFfbWdtdC5jIHwgMTMgKysrKysrKysrKy0tLQo+Pj4gwqAgMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hL3Fjb20vaGlkbWFfbWdtdC5jIAo+Pj4gYi9kcml2ZXJzL2RtYS9x
Y29tL2hpZG1hX21nbXQuYwo+Pj4gaW5kZXggMzAyMmQ2NmU3YTMzLi4yMDlhZGM2Y2VhYmUgMTAw
NjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2RtYS9xY29tL2hpZG1hX21nbXQuYwo+Pj4gKysrIGIvZHJp
dmVycy9kbWEvcWNvbS9oaWRtYV9tZ210LmMKPj4+IEBAIC0zNjIsMTYgKzM2MiwyMiBAQCBzdGF0
aWMgaW50IF9faW5pdCAKPj4+IGhpZG1hX21nbXRfb2ZfcG9wdWxhdGVfY2hhbm5lbHMoc3RydWN0
IGRldmljZV9ub2RlICpucCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpuZXdfcGRldjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBvZl9hZGRyZXNz
X3RvX3Jlc291cmNlKGNoaWxkLCAwLCAmcmVzWzBdKTsKPj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAo
IXJldCkKPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIXJldCkgewo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgb2Zfbm9kZV9wdXQoY2hpbGQpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZ290byBvdXQ7Cj4+PiArwqDCoMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHJldCA9IG9mX2FkZHJlc3NfdG9fcmVzb3VyY2UoY2hpbGQsIDEsICZyZXNbMV0pOwo+Pj4gLcKg
wqDCoMKgwqDCoMKgIGlmICghcmV0KQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICghcmV0KSB7Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZl9ub2RlX3B1dChjaGlsZCk7Cj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gb2ZfaXJxX3RvX3Jlc291cmNlKGNoaWxkLCAwLCAmcmVz
WzJdKTsKPj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocmV0IDw9IDApCj4+PiArwqDCoMKgwqDCoMKg
wqAgaWYgKHJldCA8PSAwKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZl9ub2RlX3B1
dChjaGlsZCk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4+ICvC
oMKgwqDCoMKgwqDCoCB9Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbWVtc2V0KCZwZGV2aW5mbywg
MCwgc2l6ZW9mKHBkZXZpbmZvKSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcGRldmluZm8uZndu
b2RlID0gJmNoaWxkLT5md25vZGU7Cj4+PiBAQCAtMzg2LDYgKzM5Miw3IEBAIHN0YXRpYyBpbnQg
X19pbml0IAo+Pj4gaGlkbWFfbWdtdF9vZl9wb3B1bGF0ZV9jaGFubmVscyhzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5wKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIG5ld19wZGV2ID0gcGxhdGZvcm1fZGV2
aWNlX3JlZ2lzdGVyX2Z1bGwoJnBkZXZpbmZvKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
SVNfRVJSKG5ld19wZGV2KSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0g
UFRSX0VSUihuZXdfcGRldik7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZl9ub2RlX3B1
dChjaGlsZCk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCB9Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgb2Zfbm9kZV9nZXQoY2hp
bGQpOwo+Pj4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
