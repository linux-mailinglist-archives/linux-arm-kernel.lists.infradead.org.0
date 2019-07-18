Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053606CC03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 11:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2kCXnWwVrTUjL4MpD/fn9m9MA7JioNQg7E3b4m/JTTo=; b=dIRT7X92rytuVigVzOI4s62LL
	tfxBkj6DvBoSTFaaVpRxVLHTn5vbP/ahImXsYxHluYZvbcC53nn5U+uzW8IPejtuGU/fB0fZ1CHAJ
	30aKDDpYXvQLmY/K+vfJ8RHQ4psMd7NDm8dIFUu8kWxYs1/cSV94EXWWdRyvc65qwPV6N90+XkXbk
	W2YmRIBNsi3vTAiCbDnoWW6/e31eUQx7lBUTtfpAtk4E782ClrRYnfVUMTxD0TBpOThpp5jDiEMJC
	Ei43jawAiFclsjU7ST9aOYlWVTs60oRPhrxYdsj4cCqIzbSHm72wh1qMKyV4fU16uKjJA12jzJvGz
	auNamjExg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho2r5-0006Lg-Me; Thu, 18 Jul 2019 09:37:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho2qq-0006Ku-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 09:37:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A992D28;
 Thu, 18 Jul 2019 02:37:22 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 89B973F71A;
 Thu, 18 Jul 2019 02:37:20 -0700 (PDT)
Subject: Re: [PATCHv8 2/5] arm64: dts: qcom: msm8998: Add Coresight support
To: saiprakash.ranjan@codeaurora.org, gregkh@linuxfoundation.org,
 mathieu.poirier@linaro.org, leo.yan@linaro.org,
 alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <e510df23f741205fac9030f2c95d06d607549caa.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <3b192063-f31f-b861-d913-61d737cecc57@arm.com>
 <4854b0f7-6a81-bc87-3e63-d2b7c68a44f6@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <281e3548-af53-f9a7-b9e4-813b448ab078@arm.com>
Date: Thu, 18 Jul 2019 10:37:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <4854b0f7-6a81-bc87-3e63-d2b7c68a44f6@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_023724_625516_BD023503 
X-CRM114-Status: GOOD (  16.11  )
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
Cc: rnayak@codeaurora.org, marc.w.gonzalez@free.fr,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 sibis@codeaurora.org, vivek.gautam@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxOC8wNy8yMDE5IDEwOjE0LCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4gSGkgU3V6
dWtpLAo+IAo+IE9uIDcvMTgvMjAxOSAxOjU4IFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+
PiBIaSBTYWksCj4+Cj4+Cj4+ICAgwqDCoMKgwqDCoMKgwqAgZXRyQDYwNDgwMDAgewo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJhcm0sY29yZXNpZ2h0LXRtYyIsICJh
cm0scHJpbWVjZWxsIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDA2MDQ4
MDAwIDB4MTAwMD47Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8
JnJwbWNjIFJQTV9TTURfUURTU19DTEs+LCA8JnJwbWNjCj4+PiBSUE1fU01EX1FEU1NfQV9DTEs+
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiYXBiX3BjbGsiLCAi
YXRjbGsiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXJtLHNjYXR0ZXItZ2F0aGVyOwo+
Pgo+PiBQbGVhc2UgY291bGQgeW91IGNvbmZpcm0gdGhhdCB5b3UgaGF2ZSB0ZXN0ZWQgdGhlIHNj
YXR0ZXItZ2F0aGVyIG1vZGUKPj4gd2l0aCBFVFIgPyBFaXRoZXIgdmlhIHBlcmYvc3lzZnMuIFBs
ZWFzZSBjb3VsZCB5b3Ugc2hhcmUgeW91ciByZXN1bHRzID8KPj4gVW5sZXNzIHZlcmlmaWVkCj4+
IHRoaXMgaXMgZ29pbmcgdG8gYmUgZmF0YWwgZm9yIHRoZSBzeXN0ZW0uCj4+Cj4+IFNpbWlsYXJs
eSBmb3Igb3RoZXIgcGxhdGZvcm1zLgo+Pgo+IAo+IFllcyBJIGhhdmUgdGVzdGVkIHdpdGggc2Nh
dHRlci1nYXRoZXIgbW9kZSB3aXRoIEVUUiBvbiBhbGwgcGxhdGZvcm1zCj4gd2hpY2ggSSBoYXZl
IHBvc3RlZCB2aWEgc3lzZnMobm90IHBlcmYpIGJlZm9yZSBvbiBwcmV2aW91cyB2ZXJzaW9ucyBv
Zgo+IHRoaXMgcGF0Y2ggc2VyaWVzIGFuZCBubyBpc3N1ZXMgd2VyZSBmb3VuZC4gQW5kIEkgc3Vw
cG9zZSB0aGlzIHdhcwo+IGRpc2N1c3NlZCBpbiB2MiBvZiB0aGlzIHBhdGNoIHNlcmllcyBbMV0u
CgpVc2luZyB0aGUgc3lzZnMgZG9lc24ndCBndWFyYW50ZWUgdGhhdCB0aGUgRVRSIGFjdHVhbGx5
IHVzZXMgU0cgbW9kZSwgdW5sZXNzCnRoZSBidWZmZXIgc2l6ZSBzZWxlY3RlZCBpcyA+IDFNLCB3
aGljaCBpcyB3aHkgSSBhbSBtb3JlIGludGVyZXN0ZWQgaW4gdGhlCnBlcmYgdXNhZ2UuIEFsdGVy
bmF0aXZlbHkgeW91IG1heSBjb25maWd1cmUgYSBsYXJnZXIgYnVmZmVyIHNpemUgKHNheSwgOE1C
KSB2aWE6CgplY2hvIDB4ODAwMDAwID4gL3N5cy9idXMvY29yZXNpZ2h0Ly4uLi90bWNfZXRyMC9i
dWZmZXJfc2l6ZQoKCj4gCj4gQXMgc2FpZCBpbiBvbmUgb2YgdGhlIHNlcmllcyBpbml0aWFsbHkg
WzFdLCBRQ09NIG1zbSBkb3duc3RyZWFtIGtlcm5lbHMKPiBoYXZlIGJlZW4gdXNpbmcgc2NhdHRl
ciBnYXRoZXIgbW9kZSBhbmQgd2UgaGF2ZW4ndCBzZWVuIGFueSBmYXRhbCBpc3N1ZXMuCj4gCj4g
WzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA3Njk1MzUvCgpJIGhhdmVu
J3Qgc2VlbiBhbnkgdGVzdCByZXN1bHRzIHRoZXJlIGVpdGhlci4KCkNoZWVycwpTdXp1a2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
