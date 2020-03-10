Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA0B1805CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:07:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=045CqqdTw+r4FBg3boE57sHN0PSNAzQb8+4TIw1Tn4Y=; b=lYh193DJXYG4Kel1Uz3qJvKeE
	blfz4CWhzD0owy+Zu0NBC/4vhe7EO1/qBHDVZEtH6++hacb1s5S6lDaapfZ1zfctPj8lupCf+ZyM4
	bwsSHJtFwDWWoTBzlx0wKcXtXwMT0oOQjrE1j52sHuZMiWIooVqQDx+Zc4B7bAuy/mkub2zF2zziI
	qn5EY19iwAPEBrMeakODKLfrvjPzA3xjKOkZ0y4Cy3D3H9D9dpJKzt29rz00RoF1ws2uBBopzTT03
	sieZZrxBsWSEz79i5ef+5lXNgWgiGGn0oHzIbQvl0hfh4CH06R5NfaMCt40VjQkzn0C2CzhKL5lXe
	o+Wcd7iOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjHj-0008E7-10; Tue, 10 Mar 2020 18:07:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjHa-0008Dc-H4
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:07:11 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 110802146E;
 Tue, 10 Mar 2020 18:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583863630;
 bh=rHYS2dfliP5kBBFI8WXzNz2+NnXttJ2pOTUrYGHzrPs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NvQi3eK//4yMrQUAifYnYu1PWXL+qiDJEyW/u+fxmWzYSscjcFAkzncBvknsJMDgu
 yJVMiSJom2dyM3axRabWI01RADaSXS3ohbIc7WSgmuyu7pFmH/xcwQop4RRQTv5EiD
 wIkQwTkihaIqbjVQ6J4yoIjMS4YMwZfM+Ge2tS48=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jBjHY-00Bh7w-9n; Tue, 10 Mar 2020 18:07:08 +0000
MIME-Version: 1.0
Date: Tue, 10 Mar 2020 18:07:08 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v2 2/2] KVM: arm64: Document PMU filtering API
In-Reply-To: <867c7926-df43-7ab0-d20a-211a59d7612d@redhat.com>
References: <20200309124837.19908-1-maz@kernel.org>
 <20200309124837.19908-3-maz@kernel.org>
 <7943c896-013b-d9cb-ba89-2040b46437fe@redhat.com>
 <07f4ef9b5ff6c6c5086c9723c64c035f@kernel.org>
 <867c7926-df43-7ab0-d20a-211a59d7612d@redhat.com>
Message-ID: <79f80ab568138e1287d0a515e0caa98c@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, robin.murphy@arm.com,
 mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_110710_610641_C50005A6 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0xMCAxNzozMCwgQXVnZXIgRXJpYyB3cm90ZToKPiBIaSBNYXJjLAo+IAo+IE9u
IDMvMTAvMjAgMTI6NTQgUE0sIE1hcmMgWnluZ2llciB3cm90ZToKPj4gT24gMjAyMC0wMy0wOSAx
ODoxNywgQXVnZXIgRXJpYyB3cm90ZToKPj4+IEhpIE1hcmMsCj4+PiAKPj4+IE9uIDMvOS8yMCAx
OjQ4IFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+Pj4gQWRkIGEgc21hbGwgYmx1cmIgZGVzY3Jp
YmluZyBob3cgdGhlIGV2ZW50IGZpbHRlcmluZyBBUEkgZ2V0cyB1c2VkLgo+Pj4+IAo+Pj4+IFNp
Z25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4+Pj4gLS0tCj4+Pj4g
wqBEb2N1bWVudGF0aW9uL3ZpcnQva3ZtL2RldmljZXMvdmNwdS5yc3QgfCA0MCAKPj4+PiArKysr
KysrKysrKysrKysrKysrKysrKysrCj4+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgNDAgaW5zZXJ0aW9u
cygrKQo+Pj4+IAo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3ZpcnQva3ZtL2Rldmlj
ZXMvdmNwdS5yc3QKPj4+PiBiL0RvY3VtZW50YXRpb24vdmlydC9rdm0vZGV2aWNlcy92Y3B1LnJz
dAo+Pj4+IGluZGV4IDk5NjNlNjgwNzcwYS4uNzI2MmMwNDY5ODU2IDEwMDY0NAo+Pj4+IC0tLSBh
L0RvY3VtZW50YXRpb24vdmlydC9rdm0vZGV2aWNlcy92Y3B1LnJzdAo+Pj4+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vdmlydC9rdm0vZGV2aWNlcy92Y3B1LnJzdAo+Pj4+IEBAIC01NSw2ICs1NSw0NiBA
QCBSZXF1ZXN0IHRoZSBpbml0aWFsaXphdGlvbiBvZiB0aGUgUE1VdjMuwqAgSWYgCj4+Pj4gdXNp
bmcKPj4+PiB0aGUgUE1VdjMgd2l0aCBhbiBpbi1rZXJuZWwKPj4+PiDCoHZpcnR1YWwgR0lDIGlt
cGxlbWVudGF0aW9uLCB0aGlzIG11c3QgYmUgZG9uZSBhZnRlciBpbml0aWFsaXppbmcgCj4+Pj4g
dGhlCj4+Pj4gaW4ta2VybmVsCj4+Pj4gwqBpcnFjaGlwLgo+Pj4+IAo+Pj4+ICsxLjMgQVRUUklC
VVRFOiBLVk1fQVJNX1ZDUFVfUE1VX1YzX0ZJTFRFUgo+Pj4+ICstLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+PiArCj4+Pj4gKzpQYXJhbWV0ZXJzOiBpbiBrdm1fZGV2
aWNlX2F0dHIuYWRkciB0aGUgYWRkcmVzcyBmb3IgYSBQTVUgZXZlbnQKPj4+PiBmaWx0ZXIgaXMg
YQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG9pbnRlciB0byBhIHN0cnVjdCBrdm1f
cG11X2V2ZW50X2ZpbHRlcgo+Pj4+ICsKPj4+PiArOlJldHVybnM6Cj4+Pj4gKwo+Pj4+ICvCoMKg
wqDCoCA9PT09PT09wqAgCj4+Pj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09Cj4+Pj4gK8KgwqDCoMKgIC1FTk9ERVY6IFBNVXYzIG5vdCBzdXBw
b3J0ZWQgb3IgR0lDIG5vdCBpbml0aWFsaXplZAo+Pj4+ICvCoMKgwqDCoCAtRU5YSU86wqAgUE1V
djMgbm90IHByb3Blcmx5IGNvbmZpZ3VyZWQgb3IgaW4ta2VybmVsIGlycWNoaXAgCj4+Pj4gbm90
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbmZpZ3VyZWQgYXMgcmVxdWlyZWQgcHJpb3Ig
dG8gY2FsbGluZyB0aGlzIGF0dHJpYnV0ZQo+Pj4+ICvCoMKgwqDCoCAtRUJVU1k6wqAgUE1VdjMg
YWxyZWFkeSBpbml0aWFsaXplZAo+Pj4gbWF5YmUgZG9jdW1lbnQgLUVJTlZBTD8KPj4gCj4+IFl1
cCwgZGVmaW5pdGVseS4KPj4gCj4+Pj4gK8KgwqDCoMKgID09PT09PT3CoCAKPj4+PiA9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4+PiArCj4+
Pj4gK1JlcXVlc3QgdGhlIGluc3RhbGxhdGlvbiBvZiBhIFBNVSBldmVudCBmaWx0ZXIgZGVzY3Jp
YmUgYXMgZm9sbG93czoKPj4+IHMvZGVzY3JpYmUvZGVzY3JpYmVkCj4+Pj4gKwo+Pj4+ICtzdHJ1
Y3Qga3ZtX3BtdV9ldmVudF9maWx0ZXIgewo+Pj4+ICvCoMKgwqAgX191MTbCoMKgwqAgYmFzZV9l
dmVudDsKPj4+PiArwqDCoMKgIF9fdTE2wqDCoMKgIG5ldmVudHM7Cj4+Pj4gKwo+Pj4+ICsjZGVm
aW5lIEtWTV9QTVVfRVZFTlRfQUxMT1fCoMKgwqAgMAo+Pj4+ICsjZGVmaW5lIEtWTV9QTVVfRVZF
TlRfREVOWcKgwqDCoCAxCj4+Pj4gKwo+Pj4+ICvCoMKgwqAgX191OMKgwqDCoCBhY3Rpb247Cj4+
Pj4gK8KgwqDCoCBfX3U4wqDCoMKgIHBhZFszXTsKPj4+PiArfTsKPj4+PiArCj4+Pj4gK0EgZmls
dGVyIHJhbmdlIGlzIGRlZmluZWQgYXMgdGhlIHJhbmdlIFtAYmFzZV9ldmVudCwgQGJhc2VfZXZl
bnQgKwo+Pj4+IEBuZXZlbnRzWywKPj4+PiArdG9nZXRoZXIgd2l0aCBhbiBAYWN0aW9uIChLVk1f
UE1VX0VWRU5UX0FMTE9XIG9yCj4+Pj4gS1ZNX1BNVV9FVkVOVF9ERU5ZKS4gVGhlCj4+Pj4gK2Zp
cnN0IHJlZ2lzdGVyZWQgcmFuZ2UgZGVmaW5lcyB0aGUgZ2xvYmFsIHBvbGljeSAoZ2xvYmFsIEFM
TE9XIGlmCj4+Pj4gdGhlIGZpcnN0Cj4+Pj4gK0BhY3Rpb24gaXMgREVOWSwgZ2xvYmFsIERFTlkg
aWYgdGhlIGZpcnN0IEBhY3Rpb24gaXMgQUxMT1cpLgo+Pj4+IE11bHRpcGxlIHJhbmdlcwo+Pj4+
ICtjYW4gYmUgcHJvZ3JhbW1lZCwgYW5kIG11c3QgZml0IHdpdGhpbiB0aGUgMTZiaXQgc3BhY2Ug
ZGVmaW5lZCBieQo+Pj4+IHRoZSBBUk12OC4xCj4+Pj4gK1BNVSBhcmNoaXRlY3R1cmUuCj4+PiB3
aGF0IGFib3V0IGJlZm9yZSA4LjEgd2hlcmUgdGhlIHJhbmdlIHdhcyAxMCBiaXRzPyBTaG91bGQg
aXQgYmUgCj4+PiB0ZXN0ZWQKPj4+IGluIHRoZSBjb2RlPwo+PiAKPj4gSXQncyBhIGdvb2QgcG9p
bnQuIFdlIGNvdWxkIHRlc3QgdGhhdCB1cG9uIGluc3RhbGxpbmcgdGhlIGZpbHRlciBhbmQgCj4+
IGxpbWl0Cj4+IHRoZSBiaXRtYXAgYWxsb2NhdGlvbiB0byB0aGUgbWluaW11bS4KPj4gCj4+PiBu
aXRwaWNraW5nOiBJdCBpcyBub3QgdG90YWxseSBvYnZpb3VzIHdoYXQgZG9lcyBoYXBwZW4gaWYg
dGhlIHVzZXIgCj4+PiBzcGFjZQo+Pj4gc2V0cyBhIGRlbnkgZmlsdGVyIG9uIGEgcmFuZ2UgYW5k
IHRoZW4gYW4gYWxsb3cgZmlsdGVyIG9uIHRoZSBzYW1lCj4+PiByYW5nZS4gaXQgaXMgc3VwcG9y
dGVkIGJ1dCBtYXkgYmUgd29ydGggdGVsbGluZyBzbz8gQWxzbyBleHBsYWluIHRoZSAKPj4+IHRo
ZQo+Pj4gZGVmYXVsdCBmaWx0ZXJpbmcgcmVtYWlucyAiYWxsb3ciIGJ5IGRlZmF1bHQ/Cj4+IAo+
PiBPdmVybGFwcGluZyBmaWx0ZXJzIGFyZSBlYXN5OiB0aGUgbGFzdCBvbmUgd2lucy4gQW5kIHll
cywgbm8gZmlsdGVyIAo+PiBtZWFucwo+PiBqdXN0IHRoYXQ6IG5vIGZpbHRlci4KPiBBY3R1YWxs
eSB0aGUgcG9pbnQgSSB3YW50ZWQgdG8gcHV0IGZvcndhcmQgaXMKPiAxKSBzZXQgYWxsb3cgZmls
dGVyIG9uIHJhbmdlIFswLWFdIC0+IGRlZmF1bHQgc2V0dGluZyBpcyBkZW55IGFuZCBhbGxvdwo+
IFswLWFdIG9ubHkKPiAyKSBkZW55IGRlbnkgZmlsdGVyIG9uIHJhbmcgWzAtYV0gLT4gdGhlcmUg
aXMgbm8gInJlYWwiIGFjdGl2ZSAKPiBmaWx0ZXJpbmcKPiBhbnltb3JlIGJ1dCBkZWZhdWx0IGJl
aGF2aW9yIHN0aWxsIGlzIGRlbnkuIGllLiB5b3UgZG8gbm90IGRlc3Ryb3kgdGhlCj4gYml0bWFw
IG9uIHRoZSBsYXN0IGZpbHRlciByZW1vdmFsIGJ1dCBvbiB0aGUgVk0gcmVtb3ZhbC4KCkFoLCBn
b3RjaGEuIFllcywgdGhpcyBpcyBvZGQuIFRoZSBzb2x1dGlvbiB0byB0aGlzIGlzIHRvIHJlLWFw
cGx5IGEgCmRlZmF1bHQKYmVoYXZpb3VyLiBCdXQgdGhpcyBuZWVkcyBkb2N1bWVudGluZy4uLgoK
VGhhbmtzLAoKICAgICAgICBNLgotLSAKSmF6eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVsbHMg
ZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
