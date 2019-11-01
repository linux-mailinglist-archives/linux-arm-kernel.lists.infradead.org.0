Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A94AEC5A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7nkJNBNxo8CysduE2ttrhs1zzjxFreaZKeC3ivgtr5g=; b=o7gu+aqjwvGJKHQA/zzJ+BtIt
	3QWWOhHGpqlmQFITRD+nCmuRpYCoYYT+fZraRTBX5w3fVIboL1yELbowhNqvp8GjtxjUYbadpkHMv
	Zwa0Khf5/T7GB6Ss05jfcZe8hdNxZv5p1Xg2SorqvrVyXED8U3SPFxQBpaE5KmQDMrGuxG3OIBTlK
	/zZLwWaLHYqVILztJHSnR+4riQmxbgR8sii9QWEu1DyMsk0xUW9H2PujRsR1TVKFNId0KgsnoEPf7
	+STBhdRb6iRnuOebO8YlTWy8DxDICAVGsrXwjWlAzx26LTRqD3obzWrd9hv2l/ERpPhaRIwSlwQiY
	cbDXXqD9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQYt4-0004OO-6I; Fri, 01 Nov 2019 15:30:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQYsx-0004N3-P4
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:30:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 842A731F;
 Fri,  1 Nov 2019 08:30:40 -0700 (PDT)
Received: from [10.0.2.15] (unknown [10.37.12.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A2133F719;
 Fri,  1 Nov 2019 08:30:37 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] perf cs-etm: Continuously record last branches
To: Leo Yan <leo.yan@linaro.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach
 <mike.leach@linaro.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>
References: <20191101020750.29063-1-leo.yan@linaro.org>
 <20191101020750.29063-2-leo.yan@linaro.org>
From: Robert Walker <robert.walker@arm.com>
Message-ID: <3dd30190-b266-826d-3e2d-91f1446cc5fc@arm.com>
Date: Fri, 1 Nov 2019 15:30:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191101020750.29063-2-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_083047_903126_56195D89 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEvMTEvMjAxOSAwMjowNywgTGVvIFlhbiB3cm90ZToKPiBFdmVyeSB0aW1lIHN5bnRoZXNp
emUgaW5zdHJ1Y3Rpb24gc2FtcGxlLCB0aGUgbGFzdCBicmFuY2hlcyByZWNvcmRpbmcKPiB3aWxs
IGJlIHJlc2V0LiAgVGhpcyB3b3VsZCBiZSBmaW5lIGlmIHRoZSBpbnN0cnVjdGlvbiBwZXJpb2Qg
aXMgYmlnCj4gZW5vdWdoLCBmb3IgZXhhbXBsZSBpZiB3ZSB1c2UgdGhlIG9wdGlvbiAnLS1pdHJh
Y2U9aTEwMDAwMCcsIHRoZSBsYXN0Cj4gYnJhbmNoIGFycmF5IGlzIHJlc2V0IGZvciBldmVyeSBp
bnN0cnVjdGlvbiBzYW1wbGUgKDEwMDAwIGluc3RydWN0aW9ucwo+IHBlciBwZXJpb2QpOyBiZWZv
cmUgZ2VuZXJhdGUgdGhlIG5leHQgaW5zdHJ1Y3Rpb24gc2FtcGxlLCB0aGVyZSBoYXMgdGhlCj4g
ZW5vdWdoIHBhY2tldHMgY29taW5nIHRvIGZpbGwgbGFzdCBicmFuY2ggYXJyYXkuICBPbiB0aGUg
b3RoZXIgaGFuZCwKPiBpZiBzZXQgYSB2ZXJ5IHNtYWxsIHBlcmlvZCwgdGhlIHBhY2tldHMgd2ls
bCBiZSBzaWduaWZpY2FudGx5IHJlZHVjZWQKPiBiZXR3ZWVuIHR3byBjb250aW51b3VzIGluc3Ry
dWN0aW9uIHNhbXBsZXMsIHRodXMgaWYgdGhlIGxhc3QgYnJhbmNoCj4gYXJyYXkgaXMgcmVzZXQg
Zm9yIHRoZSBwcmV2aW91cyBpbnN0cnVjdGlvbiBzYW1wbGUsIGl0J3MgYWxtb3N0IGVtcHR5Cj4g
Zm9yIHRoZSBuZXh0IGluc3RydWN0aW9uIHNhbXBsZS4KPgo+IFRvIGFsbG93IHRoZSBsYXN0IGJy
YW5jaGVzIHRvIHdvcmsgZm9yIGFueSBpbnN0cnVjdGlvbiBwZXJpb2RzLCB0aGlzCj4gcGF0Y2gg
YXZvaWRzIHRvIHJlc2V0IHRoZSBsYXN0IGJyYW5jaGVzIGZvciBldmVyeSBpbnN0cnVjdGlvbiBz
YW1wbGUKPiBhbmQgb25seSByZXNldCBpdCB3aGVuIGZsdXNoIHRoZSB0cmFjZSBkYXRhLiAgVGhl
IGxhc3QgYnJhbmNoZXMgd2lsbAo+IGJlIHJlc2V0IG9ubHkgZm9yIHR3byBjYXNlcywgb25lIGlz
IGZvciB0cmFjZSBzdGFydGluZywgYW5vdGhlciBjYXNlCj4gaXMgZm9yIGRpc2NvbnRpbnVvdXMg
dHJhY2U7IHRodXMgaXQgY2FuIGNvbnRpbnVvdXNseSByZWNvcmQgbGFzdAo+IGJyYW5jaGVzLgoK
SXMgdGhpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8/wqAgVGhpcyB3b3VsZCBjYXVzZSBwcm9maWxp
bmcgdG9vbHMgdG8gCmNvdW50IHRoZSBzYW1lIGJyYW5jaCBzZXZlcmFsIHRpbWVzIGlmIGl0IGFw
cGVhcnMgaW4gbXVsdGlwbGUgCmluc3RydWN0aW9uIHNhbXBsZXMsIHdoaWNoIGNvdWxkIHJlc3Vs
dCBpbiBhIGJpYXNlZCBwcm9maWxlLgoKVGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gbWF0Y2hl
cyB0aGUgYmVoYXZpb3Igb2YgaW50ZWxfcHQgd2hlcmUgdGhlIApicmFuY2ggYnVmZmVyIGlzIHJl
c2V0IGFmdGVyIGVhY2ggc2FtcGxlLCBzb8KgIHRoZSBpbnN0cnVjdGlvbiBzYW1wbGUgCm9ubHkg
aW5jbHVkZXMgYnJhbmNoZXMgc2luY2UgdGhlIHByZXZpb3VzIHNhbXBsZS4KCkhvd2V2ZXIgeDg2
IGxiciAocGVyZiByZWNvcmQgLWIpIGRvZXMgYXBwZWFyIHRvIHJlcGVhdCB0aGUgc2FtZSBmdWxs
IApicmFuY2ggc3RhY2sgb24gc2V2ZXJhbCBzYW1wbGVzIHVudGlsIGEgbmV3IHN0YWNrIGlzIGNh
cHR1cmVkLgoKSSdtIG5vdCBzdXJlIHdoYXQgdGhlIHJpZ2h0IG9yIHdyb25nIGFuc3dlciBpcyBo
ZXJlLsKgIEZvciBBdXRvRkRPLCB3ZSdyZSAKbGlrZWx5IHRvIHVzZSBhIG11Y2ggYmlnZ2VyIHBl
cmlvZCAoPjEwMDAwIGluc3RydWN0aW9ucykgc28gd29uJ3QgYmUgCmFmZmVjdGVkLCBidXQgb3Ro
ZXIgdG9vbHMgbWlnaHQgYmUuCgpSZWdhcmRzCgoKUm9iCgoKPiBTaWduZWQtb2ZmLWJ5OiBMZW8g
WWFuIDxsZW8ueWFuQGxpbmFyby5vcmc+Cj4gLS0tCj4gICB0b29scy9wZXJmL3V0aWwvY3MtZXRt
LmMgfCA3ICsrKystLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvcGVyZi91dGlsL2NzLWV0bS5jIGIvdG9v
bHMvcGVyZi91dGlsL2NzLWV0bS5jCj4gaW5kZXggZjVmODU1ZmZmNDEyLi44YmU2ZDAxMGFlODQg
MTAwNjQ0Cj4gLS0tIGEvdG9vbHMvcGVyZi91dGlsL2NzLWV0bS5jCj4gKysrIGIvdG9vbHMvcGVy
Zi91dGlsL2NzLWV0bS5jCj4gQEAgLTExNTMsOSArMTE1Myw2IEBAIHN0YXRpYyBpbnQgY3NfZXRt
X19zeW50aF9pbnN0cnVjdGlvbl9zYW1wbGUoc3RydWN0IGNzX2V0bV9xdWV1ZSAqZXRtcSwKPiAg
IAkJCSJDUyBFVE0gVHJhY2U6IGZhaWxlZCB0byBkZWxpdmVyIGluc3RydWN0aW9uIGV2ZW50LCBl
cnJvciAlZFxuIiwKPiAgIAkJCXJldCk7Cj4gICAKPiAtCWlmIChldG0tPnN5bnRoX29wdHMubGFz
dF9icmFuY2gpCj4gLQkJY3NfZXRtX19yZXNldF9sYXN0X2JyYW5jaF9yYih0aWRxKTsKPiAtCj4g
ICAJcmV0dXJuIHJldDsKPiAgIH0KPiAgIAo+IEBAIC0xNDg2LDYgKzE0ODMsMTAgQEAgc3RhdGlj
IGludCBjc19ldG1fX2ZsdXNoKHN0cnVjdCBjc19ldG1fcXVldWUgKmV0bXEsCj4gICAJCXRpZHEt
PnByZXZfcGFja2V0ID0gdG1wOwo+ICAgCX0KPiAgIAo+ICsJLyogUmVzZXQgbGFzdCBicmFuY2hl
cyBhZnRlciBmbHVzaCB0aGUgdHJhY2UgKi8KPiArCWlmIChldG0tPnN5bnRoX29wdHMubGFzdF9i
cmFuY2gpCj4gKwkJY3NfZXRtX19yZXNldF9sYXN0X2JyYW5jaF9yYih0aWRxKTsKPiArCj4gICAJ
cmV0dXJuIGVycjsKPiAgIH0KPiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
