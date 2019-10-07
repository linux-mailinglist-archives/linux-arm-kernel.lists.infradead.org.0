Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286ECCDE6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 11:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuYP3HJfh7BXefnCBuhilcmU3JzTWHIUfv33dE/XmR8=; b=FUO9f6T5SZhqST
	UWwoLy8e9y+9nSjhn8qDGi28mvziwJHYoqgaU2Mk7ltEwSgl03LuhAd9mUG9sURZyhhVaCZ/t3BRu
	rpS3PFt7c+3CSPjjX1dSZpsFzYb76mo7HwsnZ5KybfcWP/87u1/tE9IeY8wDbFqstpZXdhNtAGtzp
	TX7pvH1HGM74fNbFVXJYip0RzV97QNRotIkCuFoRI67WyM8TueVhT5R9WlwtdMMqm3AkU/1wA3/BL
	wHbdmfmzyO4eXpyk5h9MxIyvI9Uf0D+5LhfKP74KwDS1bDO4tv73cjFWTZDer2jEC7hMeWrrqnE69
	SsUHIMO024h2QSS14zbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHPZH-0005zx-Vq; Mon, 07 Oct 2019 09:44:39 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHPZ7-0005yv-CA
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 09:44:31 +0000
Received: from [IPv6:2001:983:e9a7:1:3d61:cdd2:8085:cc8]
 ([IPv6:2001:983:e9a7:1:3d61:cdd2:8085:cc8])
 by smtp-cloud7.xs4all.net with ESMTPA
 id HPZ0iLENKjZ8vHPZ1i5nUm; Mon, 07 Oct 2019 11:44:24 +0200
Subject: Re: [PATCH v2 3/6] media: v4l2-mem2mem: add
 stateless_(try_)decoder_cmd ioctl helpers
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <20190929200023.215831-4-jernej.skrabec@siol.net>
 <6c7eeaf1-18bb-1c7e-7938-a3eb5af100b6@xs4all.nl>
 <2840939.OS9t7MgvnY@jernej-laptop>
 <cce04c8e-8211-0fdc-bd62-650aceeb3af1@xs4all.nl>
Message-ID: <bc9e3e73-c2aa-c70e-5d81-f77d1bf898e7@xs4all.nl>
Date: Mon, 7 Oct 2019 11:44:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cce04c8e-8211-0fdc-bd62-650aceeb3af1@xs4all.nl>
Content-Language: en-US
X-CMAE-Envelope: MS4wfBhg/py6knYnvxMkJcNfVQ+HaYw1/5QCmKHnBYtRPv76Qm2AoD1c/Ql55QjfH0qG5LPLO1GSLVNPHUFKeJlbTOeuOz7RbyBpURJPL14hyhGGupB0RNCp
 mRKRFdLcj/L52Oxde2u3TfEr9XaNfGHsAfgV3C9SN6kvhZPBjvcMRd2eXePmKr43x76IDztL9jl7Dykw8+7wOgOqBbqyzKD/MvQMpZWjCL2WX4WiYdtGjDNW
 x3QLglAwFbVgyGcn8zmLoFn469yVAP1AmOwY58Uy7WCNxhvofVAyc1vfsn7nRUhcXIyQl4A75L9SrOVWvBmCqnQV/7UHRidLfMr8rRUgQG74dIvpwmdfLLit
 IaYQp/ZbAe8g2wf39hvt5sqMeccaLxo9liVvx9p1BplHSykj/XUSSx3kjsSxRwjidSSl2jJ+p6GRxT8Mq8NhNXihAyHMQxgRl1qwKyVg8V3uJZDNT1En7ndD
 TvT7Y3o2lD7kjTOx773li/ShhTUO03Rb0KNWN41ZondLwOtrhdk5dxRy9Eyo9e5Vhgf/SsMTasQ4t8y0FyNBURY6pCECM2eWv/PZMHLjG8zcJ52tHccbu2tH
 tY0NliwdJTMkxVb+CloozwUHKG+iE/sWOBPGHVPFZNf7GWk+VxncTNjC5dRKV2Z70y7FOkttLisWv60oWmTItcad0A7cUiU0vmc+vjIPK/aFo2CHsXfIQKwS
 n3t0r5yi3Q3mokY5rkoTseCC7cQTmcLVGgd4q0IT33WoLzcGwXvedEEybcr92xfrbIjFv49/SFv3ACNBnaGGelMyhxZZv0ps8jMRvSvrJAXWcVbVMNPcABz2
 2qJ/vX1ll17fLGgpykc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_024429_572012_77A23FDD 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvNy8xOSAxMDozMiBBTSwgSGFucyBWZXJrdWlsIHdyb3RlOgo+IE9uIDEwLzcvMTkgODow
MiBBTSwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+PiBEbmUgcGV0ZWssIDA0LiBva3RvYmVyIDIw
MTkgb2IgMTE6MjE6MTIgQ0VTVCBqZSBIYW5zIFZlcmt1aWwgbmFwaXNhbChhKToKPj4+IE9uIDkv
MjkvMTkgMTA6MDAgUE0sIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+Pj4+IFRoZXNlIGhlbHBlcnMg
YXJlIHVzZWQgYnkgc3RhdGVsZXNzIGNvZGVjcyB3aGVuIHRoZXkgc3VwcG9ydCBtdWx0aXBsZQo+
Pj4+IHNsaWNlcyBwZXIgZnJhbWUgYW5kIGhvbGQgY2FwdHVyZSBidWZmZXIgZmxhZyBpcyBzZXQu
IEl0J3MgZXhwZWN0ZWQgdGhhdAo+Pj4+IGFsbCBzdWNoIGNvZGVjcyB3aWxsIHVzZSB0aGlzIGNv
ZGUuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFi
ZWNAc2lvbC5uZXQ+Cj4+Pj4gLS0tCj4+Pj4KPj4+PiAgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUv
djRsMi1tZW0ybWVtLmMgfCAzNSArKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+ICBpbmNs
dWRlL21lZGlhL3Y0bDItbWVtMm1lbS5oICAgICAgICAgICB8ICA0ICsrKwo+Pj4+ICAyIGZpbGVz
IGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3Y0bDItY29yZS92NGwyLW1lbTJtZW0uYwo+Pj4+IGIvZHJpdmVycy9tZWRpYS92NGwy
LWNvcmUvdjRsMi1tZW0ybWVtLmMgaW5kZXggMTk5MzdkZDNjNmY2Li4yNjc3YTA3ZTRjOWIKPj4+
PiAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLW1lbTJtZW0u
Ywo+Pj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItbWVtMm1lbS5jCj4+Pj4g
QEAgLTExNTQsNiArMTE1NCw0MSBAQCBpbnQgdjRsMl9tMm1faW9jdGxfdHJ5X2RlY29kZXJfY21k
KHN0cnVjdCBmaWxlCj4+Pj4gKmZpbGUsIHZvaWQgKmZoLD4gCj4+Pj4gIH0KPj4+PiAgRVhQT1JU
X1NZTUJPTF9HUEwodjRsMl9tMm1faW9jdGxfdHJ5X2RlY29kZXJfY21kKTsKPj4+Pgo+Pj4+ICtp
bnQgdjRsMl9tMm1faW9jdGxfc3RhdGVsZXNzX3RyeV9kZWNvZGVyX2NtZChzdHJ1Y3QgZmlsZSAq
ZmlsZSwgdm9pZCAqZmgsCj4+Pj4gKwkJCQkJICAgICBzdHJ1Y3QgCj4+IHY0bDJfZGVjb2Rlcl9j
bWQgKmRjKQo+Pj4+ICt7Cj4+Pj4gKwlpZiAoZGMtPmNtZCAhPSBWNEwyX0RFQ19DTURfRkxVU0gp
Cj4+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+Pj4gKwo+Pj4+ICsJZGMtPmZsYWdzID0gMDsKPj4+
PiArCj4+Pj4gKwlyZXR1cm4gMDsKPj4+PiArfQo+Pj4+ICtFWFBPUlRfU1lNQk9MX0dQTCh2NGwy
X20ybV9pb2N0bF9zdGF0ZWxlc3NfdHJ5X2RlY29kZXJfY21kKTsKPj4+PiArCj4+Pj4gK2ludCB2
NGwyX20ybV9pb2N0bF9zdGF0ZWxlc3NfZGVjb2Rlcl9jbWQoc3RydWN0IGZpbGUgKmZpbGUsIHZv
aWQgKnByaXYsCj4+Pj4gKwkJCQkJIHN0cnVjdCAKPj4gdjRsMl9kZWNvZGVyX2NtZCAqZGMpCj4+
Pj4gK3sKPj4+PiArCXN0cnVjdCB2NGwyX2ZoICpmaCA9IGZpbGUtPnByaXZhdGVfZGF0YTsKPj4+
PiArCXN0cnVjdCB2YjJfdjRsMl9idWZmZXIgKm91dF92YiwgKmNhcF92YjsKPj4+PiArCWludCBy
ZXQ7Cj4+Pj4gKwo+Pj4+ICsJcmV0ID0gdjRsMl9tMm1faW9jdGxfc3RhdGVsZXNzX3RyeV9kZWNv
ZGVyX2NtZChmaWxlLCBwcml2LCBkYyk7Cj4+Pj4gKwlpZiAocmV0IDwgMCkKPj4+PiArCQlyZXR1
cm4gcmV0Owo+Pj4+ICsKPj4+PiArCW91dF92YiA9IHY0bDJfbTJtX2xhc3Rfc3JjX2J1ZihmaC0+
bTJtX2N0eCk7Cj4+Pj4gKwljYXBfdmIgPSB2NGwyX20ybV9sYXN0X2RzdF9idWYoZmgtPm0ybV9j
dHgpOwo+Pj4KPj4+IEkgdGhpbmsgdGhpcyBzaG91bGQgYmUgdjRsMl9tMm1fbmV4dF9kc3RfYnVm
LiBJZiBtdWx0aXBsZSBjYXB0dXJlIGJ1ZmZlcnMKPj4+IHdlcmUgcXVldWVkIHVwLCB0aGVuIGl0
IGNhbiBvbmx5IGJlIHRoZSBmaXJzdCBjYXB0dXJlIGJ1ZmZlciB0aGF0IGNhbiBiZQo+Pj4gJ0hF
TEQnLgo+Pgo+PiBJJ20gcHJldHR5IHN1cmUgdjRsMl9tMm1fbGFzdF9kc3RfYnVmKCkgaXMgY29y
cmVjdC4gV2Ugd2FudCB0byBhZmZlY3QgbGFzdCBqb2IgCj4+IGluIHRoZSBxdWV1ZSwgYWxsIGpv
YnMgYmVmb3JlIGFyZSBhbHJlYWR5IHByb3Blcmx5IGhhbmRsZWQgYnkgY29tcGFyaW5nIAo+PiB0
aW1lc3RhbXBzLgo+IAo+IFlvdSdyZSBhYnNvbHV0ZWx5IHJpZ2h0Lgo+IAo+Pgo+Pj4KPj4+IFRo
aXMgbWlnaHQgc29sdmUgdGhlIHJhY2UgY29uZGl0aW9uIHlvdSBzYXcgd2l0aCBmZm1wZWcuCj4+
Cj4+IFRoaXMgYWN0dWFsbHkgZG9lc24ndCBjaGFuZ2UgYW55dGhpbmcuIGZmbXBlZyBjdXJyZW50
bHkgcXVldWVzIG9ubHkgb25lIGpvYiBhbmQgCj4+IHRoZW4gd2FpdHMgdW50aWwgaXQncyBleGVj
dXRlZC4gSW4gdGhpcyBjYXNlIGl0IGFjdHVhbGx5IGRvZXNuJ3QgbWF0dGVyIGlmIAo+PiAibGFz
dCIgb3IgIm5leHQiIHZhcmlhbnQgaXMgdXNlZC4KPiAKPiBDYW4geW91IGRlYnVnIHRoaXMgYSBi
aXQgZnVydGhlcj8gSSBkb24ndCB3YW50IHRvIG1lcmdlIHRoaXMgdW5sZXNzIHdlIGtub3cgd2hh
dCdzCj4gZ29pbmcgd3Jvbmcgd2l0aCBmZm1wZWcuCj4gCj4gSSBzdXNwZWN0IGl0IGlzIGEgcmFj
ZSBjb25kaXRpb24uIEknbGwgcmVwbHkgdG8gcGF0Y2ggNi82IHdpdGggbW9yZSBpbmZvLgoKSSd2
ZSBkZWNpZGVkIHRvIG1ha2UgYSB2MyBvZiB0aGlzIHNlcmllcy4gVGhlcmUgYXJlIG1ham9yIGxv
Y2tpbmcgaXNzdWVzIHdpdGggdGhpcwphbmQgdGhpcyB3aWxsIHJlcXVpcmUgYSBiaXQgb2YgcmV3
b3JrLgoKUmVnYXJkcywKCglIYW5zCgo+IAo+IFJlZ2FyZHMsCj4gCj4gCUhhbnMKPiAKPj4KPj4g
QmVzdCByZWdhcmRzLAo+PiBKZXJuZWoKPj4KPj4+Cj4+PiBSZWdhcmRzLAo+Pj4KPj4+IAlIYW5z
Cj4+Pgo+Pj4+ICsKPj4+PiArCWlmIChvdXRfdmIpCj4+Pj4gKwkJb3V0X3ZiLT5mbGFncyAmPSB+
VjRMMl9CVUZfRkxBR19NMk1fSE9MRF9DQVBUVVJFX0JVRjsKPj4+PiArCWVsc2UgaWYgKGNhcF92
YiAmJiBjYXBfdmItPmlzX2hlbGQpCj4+Pj4gKwkJdjRsMl9tMm1fYnVmX2RvbmUoY2FwX3ZiLCBW
QjJfQlVGX1NUQVRFX0RPTkUpOwo+Pj4+ICsKPj4+PiArCXJldHVybiAwOwo+Pj4+ICt9Cj4+Pj4g
K0VYUE9SVF9TWU1CT0xfR1BMKHY0bDJfbTJtX2lvY3RsX3N0YXRlbGVzc19kZWNvZGVyX2NtZCk7
Cj4+Pj4gKwo+Pj4+Cj4+Pj4gIC8qCj4+Pj4gIAo+Pj4+ICAgKiB2NGwyX2ZpbGVfb3BlcmF0aW9u
cyBoZWxwZXJzLiBJdCBpcyBhc3N1bWVkIGhlcmUgc2FtZSBsb2NrIGlzIHVzZWQKPj4+PiAgICog
Zm9yIHRoZSBvdXRwdXQgYW5kIHRoZSBjYXB0dXJlIGJ1ZmZlciBxdWV1ZS4KPj4+Pgo+Pj4+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL3Y0bDItbWVtMm1lbS5oIGIvaW5jbHVkZS9tZWRpYS92
NGwyLW1lbTJtZW0uaAo+Pj4+IGluZGV4IGM5ZmE5NmM4ZWVkMS4uOGFlMmY1NmM3ZmEzIDEwMDY0
NAo+Pj4+IC0tLSBhL2luY2x1ZGUvbWVkaWEvdjRsMi1tZW0ybWVtLmgKPj4+PiArKysgYi9pbmNs
dWRlL21lZGlhL3Y0bDItbWVtMm1lbS5oCj4+Pj4gQEAgLTcxNCw2ICs3MTQsMTAgQEAgaW50IHY0
bDJfbTJtX2lvY3RsX3RyeV9lbmNvZGVyX2NtZChzdHJ1Y3QgZmlsZSAqZmlsZSwKPj4+PiB2b2lk
ICpmaCw+IAo+Pj4+ICAJCQkJICAgc3RydWN0IHY0bDJfZW5jb2Rlcl9jbWQgKmVjKTsKPj4+PiAg
Cj4+Pj4gIGludCB2NGwyX20ybV9pb2N0bF90cnlfZGVjb2Rlcl9jbWQoc3RydWN0IGZpbGUgKmZp
bGUsIHZvaWQgKmZoLAo+Pj4+ICAKPj4+PiAgCQkJCSAgIHN0cnVjdCB2NGwyX2RlY29kZXJfY21k
ICpkYyk7Cj4+Pj4KPj4+PiAraW50IHY0bDJfbTJtX2lvY3RsX3N0YXRlbGVzc190cnlfZGVjb2Rl
cl9jbWQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKmZoLAo+Pj4+ICsJCQkJCSAgICAgc3RydWN0
IAo+PiB2NGwyX2RlY29kZXJfY21kICpkYyk7Cj4+Pj4gK2ludCB2NGwyX20ybV9pb2N0bF9zdGF0
ZWxlc3NfZGVjb2Rlcl9jbWQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsCj4+Pj4gKwkJ
CQkJIHN0cnVjdCAKPj4gdjRsMl9kZWNvZGVyX2NtZCAqZGMpOwo+Pj4+Cj4+Pj4gIGludCB2NGwy
X20ybV9mb3BfbW1hcChzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2
bWEpOwo+Pj4+ICBfX3BvbGxfdCB2NGwyX20ybV9mb3BfcG9sbChzdHJ1Y3QgZmlsZSAqZmlsZSwg
cG9sbF90YWJsZSAqd2FpdCk7Cj4+Cj4+Cj4+Cj4+Cj4gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
