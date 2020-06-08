Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCC61F17D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LQ+UVPdrnH173ETewU+QKxmld7jAXHLUZZ87T4oSB6c=; b=PatfnR1RUhcDIuMRI66cHqwnY
	4EIsTn8X9Cg1ljD8OX6Dw/LAbGL6qidDRyzgL2+fdGQuSGGxK4Ebwh8xputY9Td++xMjRgCRVYHPF
	N4z0M8VjOhiew4VR+YXqPY9lqtHttECLPJwUVzqR3QxBUtab66z4kGIkVqg+Cga1d/Po1nEiLL34p
	xUvMNxjY6r0dzglAgLU2Foa2s2dS3WX1z/117tG49L6natLKd18e5Wp9RIZmqh/8ZBtOWWdfGlV9K
	UZGkp4MLMfw2Isb0HVZvWJDKQU3kQhsWdTKhRQNi62Gv3mSVCOYsCJCqg2/6elRZc//lm0yfPI9QE
	rEmOH2F2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFvl-0003vw-PD; Mon, 08 Jun 2020 11:27:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFva-0003vY-8y
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 11:26:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 915C01FB;
 Mon,  8 Jun 2020 04:26:53 -0700 (PDT)
Received: from [10.57.9.113] (unknown [10.57.9.113])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7FFEC3F73D;
 Mon,  8 Jun 2020 04:26:52 -0700 (PDT)
Subject: Re: [RFC PATCH] iommu/arm-smmu: Remove shutdown callback
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>
References: <20200607110918.1733-1-saiprakash.ranjan@codeaurora.org>
 <20200608081846.GA1542@willie-the-truck>
 <08c293eefc20bc2c67f2d2639b93f0a5@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e072f61a-d6cf-2e34-efd5-c1db38c5c622@arm.com>
Date: Mon, 8 Jun 2020 12:26:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <08c293eefc20bc2c67f2d2639b93f0a5@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_042654_407566_C28B4603 
X-CRM114-Status: GOOD (  24.25  )
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
Cc: linux-arm-msm@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNi0wOCAxMDoxMywgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhpIFdpbGws
Cj4gCj4gT24gMjAyMC0wNi0wOCAxMzo0OCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+IE9uIFN1biwg
SnVuIDA3LCAyMDIwIGF0IDA0OjM5OjE4UE0gKzA1MzAsIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90
ZToKPj4+IFJlbW92ZSBTTU1VIHNodXRkb3duIGNhbGxiYWNrIHNpbmNlIGl0IHNlZW1zIHRvIGNh
dXNlIG1vcmUKPj4+IHByb2JsZW1zIHRoYW4gYmVuZWZpdHMuIFdpdGggdGhpcyBjYWxsYmFjaywg
d2UgbmVlZCB0byBtYWtlCj4+PiBzdXJlIHRoYXQgYWxsIGNsaWVudHMvY29uc3VtZXJzIG9mIFNN
TVUgZG8gbm90IHBlcmZvcm0gYW55Cj4+PiBETUEgYWN0aXZpdHkgb25jZSB0aGUgU01NVSBpcyBz
aHV0ZG93biBhbmQgdHJhbnNsYXRpb24gaXMKPj4+IGRpc2FibGVkLiBJbiBvdGhlciB3b3JkcyB3
ZSBuZWVkIHRvIGFkZCBzaHV0ZG93biBjYWxsYmFja3MKPj4+IGZvciBhbGwgdGhvc2UgY2xpZW50
cyB0byBtYWtlIHN1cmUgdGhleSBkbyBub3QgcGVyZm9ybSBhbnkKPj4+IERNQSBvciBlbHNlIHdl
IHNlZSBhbGwga2luZHMgb2Ygd2VpcmQgY3Jhc2hlcyBkdXJpbmcgcmVib290Cj4+PiBvciBzaHV0
ZG93bi4gVGhpcyBpcyBjbGVhcmx5IG5vdCBzY2FsYWJsZSBhcyB0aGUgbnVtYmVyIG9mCj4+PiBj
bGllbnRzIG9mIFNNTVUgd291bGQgdmFyeSBhY3Jvc3MgU29DcyBhbmQgd2Ugd291bGQgbmVlZCB0
bwo+Pj4gYWRkIHNodXRkb3duIGNhbGxiYWNrcyB0byBhbG1vc3QgYWxsIGRyaXZlcnMgZXZlbnR1
YWxseS4KPj4+IFRoaXMgY2FsbGJhY2sgd2FzIGFkZGVkIGZvciBrZXhlYyB1c2VjYXNlIHdoZXJl
IGl0IHdhcyBrbm93bgo+Pj4gdG8gY2F1c2UgbWVtb3J5IGNvcnJ1cHRpb25zIHdoZW4gU01NVSB3
YXMgbm90IHNodXRkb3duIGJ1dAo+Pj4gdGhhdCBkb2VzIG5vdCBkaXJlY3RseSByZWxhdGUgdG8g
U01NVSBiZWNhdXNlIHRoZSBtZW1vcnkKPj4+IGNvcnJ1cHRpb24gY291bGQgYmUgYmVjYXVzZSBv
ZiB0aGUgY2xpZW50IG9mIFNNTVUgd2hpY2ggaXMKPj4+IG5vdCBzaHV0ZG93biBwcm9wZXJseSBi
ZWZvcmUgYm9vdGluZyBpbnRvIG5ldyBrZXJuZWwuIFNvIGluCj4+PiB0aGF0IGNhc2UsIHdlIG5l
ZWQgdG8gaWRlbnRpZnkgdGhlIGNsaWVudCBvZiBTTU1VIGNhdXNpbmcKPj4+IHRoZSBtZW1vcnkg
Y29ycnVwdGlvbiBhbmQgYWRkIGFwcHJvcHJpYXRlIHNodXRkb3duIGNhbGxiYWNrCj4+PiB0byB0
aGUgY2xpZW50IHJhdGhlciB0aGFuIHRvIHRoZSBTTU1VLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IFNhaSBQcmFrYXNoIFJhbmphbiA8c2FpcHJha2FzaC5yYW5qYW5AY29kZWF1cm9yYS5vcmc+Cj4+
PiAtLS0KPj4+IMKgZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jIHwgNiAtLS0tLS0KPj4+IMKg
ZHJpdmVycy9pb21tdS9hcm0tc21tdS5jwqDCoMKgIHwgNiAtLS0tLS0KPj4+IMKgMiBmaWxlcyBj
aGFuZ2VkLCAxMiBkZWxldGlvbnMoLSkKPj4KPj4gVGhpcyBmZWVscyBsaWtlIGEgZ2lhbnQgYm9k
Z2UgdG8gbWUgYW5kIEkgdGhpbmsgdGhhdCBhbnkgZHJpdmVyIHdoaWNoCj4+IGNvbnRpbnVlcyB0
byBwZXJmb3JtIERNQSBhZnRlciBpdHMgLT5zaHV0ZG93bigpIGZ1bmN0aW9uIGhhcyBiZWVuIGlu
dm9rZWQKPj4gaXMgYnVnZ3kuIFdvdWxkbid0IHRoYXQgY2F1c2UgcHJvYmxlbXMgd2l0aCBrZXhl
YygpLCBmb3IgZXhhbXBsZT8KPj4KPiAKPiBZZXMgaXQgaXMgZGVmaW5pdGVseSBhIGJ1ZyBpbiB0
aGUgY2xpZW50IGRyaXZlciBpZiBETUEgaXMgcGVyZm9ybWVkCj4gYWZ0ZXIgc2h1dGRvd24gY2Fs
bGJhY2sgb2YgdGhhdCByZXNwZWN0aXZlIGRyaXZlciBpcyBpbnZva2VkIGFuZCBpdCBtdXN0Cj4g
YmUgZml4ZWQgaW4gdGhhdCBkcml2ZXIuIEJ1dCBoZXJlIHRoZSBwcm9ibGVtIEkgd2FzIGRlc2Ny
aWJpbmcgaXMgbm90IHRoYXQsCj4gbW9zdCBvZiB0aGUgZHJpdmVycyBkbyBub3QgaGF2ZSBhIHNo
dXRkb3duIGNhbGxiYWNrIHRvIGJlZ2luIHdpdGggYW5kIAo+IGFkZGluZwo+IGl0IGp1c3QgYmVj
YXVzZSBvZiBzaHV0ZG93biBkZXBlbmRlbmN5IG9uIFNNTVUgZG9lc24ndCBzZWVtIHNvIHdlbGwg
YmVjYXVzZQo+IHdlIGNhbiBoYXZlIG1hbnkgbW9yZSBzdWNoIGNsaWVudHMgaW4gdGhlIGZ1dHVy
ZSBhbmQgdGhlbiB3ZSBoYXZlIHRvIAo+IGp1c3QgZ28KPiBvbiBhZGRpbmcgdGhlIHNodXRkb3du
IGNhbGxiYWNrcyBldmVyeXdoZXJlLgoKWWVzLCBpbmRlZWQgd2UgZG8uIExpa2UgaXQgb3Igbm90
LCBrZXhlYyBpcyBhIHRoaW5nLCBhbmQgYWJvdXQgOTglIG9mIApkcml2ZXJzIHdpbGwgaGF2ZSBi
ZWVuIHdyaXR0ZW4gd2l0aG91dCBjb25zaWRlcmluZyBpdC4KCklmIGZpeGluZyBvbmUgcHJvYmxl
bSBleHBvc2VzIGxvdHMgb2Ygb3RoZXIgcHJvYmxlbXMsIGNhbiB5b3UgaG9uZXN0bHkgCnNheSB0
aGF0IHRoZSBiZXN0IHNvbHV0aW9uIGlzIHRvIGdvIGJhY2sgYW5kIHJlLWJyZWFrIHRoZSBvcmln
aW5hbCB0aGluZz8KCj4+IFRoZXJlJ3MgYSBjbGVhciBzaHV0ZG93biBkZXBlbmRlbmN5IG9yZGVy
aW5nLCB3aGVyZSB0aGUgY2xpZW50cyBvZiB0aGUKPj4gU01NVSBuZWVkIHRvIHNodXRkb3duIGJl
Zm9yZSB0aGUgU01NVSBpdHNlbGYsIGJ1dCB0aGF0J3Mgbm90IHJlYWxseQo+PiB0aGUgU01NVSBk
cml2ZXIncyBwcm9ibGVtIHRvIHNvbHZlLgo+Pgo+IAo+IFRoZSBwcm9ibGVtIHdpdGgga2V4ZWMg
bWF5IG5vdCBiZSBkaXJlY3RseSByZWxhdGVkIHRvIFNNTVUgYXMgeW91IHNhaWQKPiBhYm92ZSBp
ZiBETUEgaXMgcGVyZm9ybWVkIGFmdGVyIHRoZSBjbGllbnQgc2h1dGRvd24gY2FsbGJhY2ssIHRo
ZW4gaXRzIGEKPiBidWcgaW4gdGhlIGNsaWVudCBkcml2ZXIsIHNvIHRoYXQgbmVlZHMgdG8gYmUg
Zml4ZWQgaW4gdGhlIGNsaWVudCBkcml2ZXIsCj4gbm90IHRoZSBTTU1VLiBTbyBpcyB0aGVyZSBh
bnkgcG9pbnQgaW4gaGF2aW5nIHRoZSBTTU1VIHNodXRkb3duIGNhbGxiYWNrPwoKVGhlIHBvaW50
IGlzIHRoYXQga2V4ZWMgbmVlZHMgdG8gcmV0dXJuIHRoZSBzeXN0ZW0gdG8gYSBzdGF0ZSBhcyBj
bG9zZSAKdG8gcmVzZXQgYXMgcG9zc2libGUuIFRoZSBTTU1VIGlzIGF0IGxlYXN0IGFzIHJlbGV2
YW50IGFzIGFueSBvdGhlciAKZGV2aWNlIGluIHRoYXQgcmVnYXJkLCBpZiBub3QgZmFyIG1vcmUg
c28gLSBjb25zaWRlciBpZiB0aGUgZmlyc3Qga2VybmVsIAoqZGlkKiBsZWF2ZSBpdCBlbmFibGVk
IHdpdGggd2hhdGV2ZXIgbGVmdC1vdmVyIHRyYW5zbGF0aW9ucyBpbiBwbGFjZSwgCmFuZCBrZXhl
YydlZCBpbnRvIGFub3RoZXIgT1MgdGhhdCB3YXNuJ3QgU01NVS1hd2FyZS4uLgoKPiBBcyB5b3Ug
c2VlLCB3aXRoIHRoaXMgU01NVSBzaHV0ZG93biBjYWxsYmFjaywgd2UgbmVlZCB0byBhZGQgc2h1
dGRvd24KPiBjYWxsYmFja3MgaW4gYWxsIHRoZSBjbGllbnQgZHJpdmVycy4KClllcy4gQW5kIGlm
IHlvdSByZWFsbHkgd2FudCB0byBhcmd1ZSBhZ2FpbnN0IHRoYXQsIHRoZW4gYXQgbGVhc3QgYmUg
CmNvbnNpc3RlbnQgYW5kIHByb3Bvc2UgcmVtb3Zpbmcgc2h1dGRvd24gZnJvbSAqYWxsKiB0aGUg
SU9NTVUgZHJpdmVycy4gCkFuZCB0aGVuIHByb2JhYmx5IHByb3Bvc2UgcmVtb3Zpbmcga2V4ZWMg
c3VwcG9ydCBmcm9tIGFsbCB0aGVpciAKcmVzcGVjdGl2ZSBhcmNoaXRlY3R1cmVzLi4uIDspCgpS
b2Jpbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
