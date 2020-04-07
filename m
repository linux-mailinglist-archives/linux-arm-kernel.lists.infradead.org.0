Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F951A0A38
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 11:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OlBXu8W7+3ByVXr+NPJaxkPSJG4gXu9lnhviD25yD5w=; b=bCE5ngKcGx7Vy/0Uwsr1JH2e2
	OmoPkYQIJo7Y2v+g32aFc/y1zeTmecFEzCAwbgX1Hw+dYPdjCd1eCqHEAYKO19zxSFdLyPm4X11c1
	e9MLSaIyLUSjhddXngT3wtY5lfyKYtgtk8f0fxifPGOmi2asAG1GZ79iWle8GAJfo7quR1McrCU/x
	3yasLSAV9UdpQbbwUrufRLEkFBwogqiBL2jM+DycM/RhNrVba8S1UZeSVzWRpY9R4R9a5zNEveg76
	TwkCoLyHQ7iPsU4G7eH17xxyHB+tCxqHgyYMXb+WkSpaXijvOl6wKnSrpBKnVdxbfaqh4Bq5t5X41
	chNE2jVKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkbm-0006Zc-OT; Tue, 07 Apr 2020 09:33:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkbV-0006TQ-1Z; Tue, 07 Apr 2020 09:33:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A29930E;
 Tue,  7 Apr 2020 02:33:08 -0700 (PDT)
Received: from [10.37.12.4] (unknown [10.37.12.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5A483F73D;
 Tue,  7 Apr 2020 02:32:57 -0700 (PDT)
Subject: Re: [PATCH v5 1/5] PM / EM: add devices to Energy Model
To: Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-2-lukasz.luba@arm.com>
 <09b680a5-a118-8c6e-0ae1-03ab5f10c573@linaro.org>
 <cb7f670a-a04f-ba6f-1486-0421f3cce2e9@arm.com>
 <6b980e2a-c15c-0718-14b8-e8aa7510c832@linaro.org>
 <2a70b4ed-f18f-c1e6-1e8c-e4747807f276@arm.com>
 <4cee98ce-62a6-7448-a99c-3a1af6c87cf4@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <6c2fcd42-5245-ff45-1852-0f2ec800517f@arm.com>
Date: Tue, 7 Apr 2020 10:32:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4cee98ce-62a6-7448-a99c-3a1af6c87cf4@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_023309_297485_4C433386 
X-CRM114-Status: GOOD (  23.59  )
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, mgorman@suse.de, rui.zhang@intel.com,
 alyssa.rosenzweig@collabora.com, orjan.eide@arm.com, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, rostedt@goodmis.org,
 matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com, airlied@linux.ie,
 javi.merino@arm.com, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, mka@chromium.org, rdunlap@infradead.org, rjw@rjwysocki.net,
 agross@kernel.org, kernel@pengutronix.de, sudeep.holla@arm.com,
 patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzYvMjAgMTA6MTcgUE0sIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+IE9uIDA2LzA0LzIw
MjAgMTg6MDcsIEx1a2FzeiBMdWJhIHdyb3RlOgo+Pgo+Pgo+PiBPbiA0LzYvMjAgMzo1OCBQTSwg
RGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Pgo+Pj4gSGkgTHVrYXN6LAo+Pj4KPj4+Cj4+PiBPbiAw
Ni8wNC8yMDIwIDE1OjI5LCBMdWthc3ogTHViYSB3cm90ZToKPj4+PiBIaSBEYW5pZWwsCj4+Pj4K
Pj4+PiBUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuCj4+Pj4KPj4+PiBPbiA0LzMvMjAgNTowNSBQ
TSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IEhpIEx1a2FzeiwKPj4+Pj4KPj4+
Pj4KPj4+Pj4gT24gMTgvMDMvMjAyMCAxMjo0NSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+Pj4+PiBB
ZGQgc3VwcG9ydCBvZiBvdGhlciBkZXZpY2VzIGludG8gdGhlIEVuZXJneSBNb2RlbCBmcmFtZXdv
cmsgbm90IG9ubHkKPj4+Pj4+IHRoZQo+Pj4+Pj4gQ1BVcy4gQ2hhbmdlIHRoZSBpbnRlcmZhY2Ug
dG8gYmUgbW9yZSB1bmlmaWVkIHdoaWNoIGNhbiBoYW5kbGUgb3RoZXIKPj4+Pj4+IGRldmljZXMg
YXMgd2VsbC4KPj4+Pj4KPj4+Pj4gdGhhbmtzIGZvciB0YWtpbmcgY2FyZSBvZiB0aGF0LiBPdmVy
YWxsIEkgbGlrZSB0aGUgY2hhbmdlcyBpbiB0aGlzCj4+Pj4+IHBhdGNoCj4+Pj4+IGJ1dCBpdCBo
YXJkIHRvIHJldmlldyBpbiBkZXRhaWxzIGJlY2F1c2UgdGhlIHBhdGNoIGlzIHRvbyBiaWcgOi8K
Pj4+Pj4KPj4+Pj4gQ291bGQgeW91IHNwbGl0IHRoaXMgcGF0Y2ggaW50byBzbWFsbGVyIG9uZXM/
Cj4+Pj4+Cj4+Pj4+IGVnLiAoYXQgeW91ciBjb252ZW5pZW5jZSkKPj4+Pj4KPj4+Pj4gIMKgwqAg
LSBPbmUgcGF0Y2ggcmVuYW1pbmcgcy9jYXAvcGVyZi8KPj4+Pj4KPj4+Pj4gIMKgwqAgLSBPbmUg
cGF0Y2ggYWRkaW5nIGEgbmV3IGZ1bmN0aW9uOgo+Pj4+Pgo+Pj4+PiAgwqDCoMKgwqDCoCBlbV9k
ZXZfcmVnaXN0ZXJfcGVyZl9kb21haW4oc3RydWN0IGRldmljZSAqZGV2LAo+Pj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IG5yX3N0YXRlcywKPj4+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBlbV9kYXRhX2NhbGxiYWNr
ICpjYik7Cj4+Pj4+Cj4+Pj4+ICDCoMKgwqDCoCAoKyBFWFBPUlRfU1lNQk9MX0dQTCkKPj4+Pj4K
Pj4+Pj4gIMKgwqDCoMKgwqAgQW5kIGVtX3JlZ2lzdGVyX3BlcmZfZG9tYWluKCkgdXNpbmcgaXQu
Cj4+Pj4+Cj4+Pj4+ICDCoMKgIC0gT25lIGNvbnZlcnRpbmcgdGhlIGVtX3JlZ2lzdGVyX3BlcmZf
ZG9tYWluKCkgdXNlciB0bwo+Pj4+PiAgwqDCoMKgwqDCoGVtX2Rldl9yZWdpc3Rlcl9wZXJmX2Rv
bWFpbgo+Pj4+Pgo+Pj4+PiAgwqDCoCAtIE9uZSBhZGRpbmcgdGhlIGRpZmZlcmVudCBuZXcgJ2Vt
JyBmdW5jdGlvbnMKPj4+Pj4KPj4+Pj4gIMKgwqAgLSBBbmQgZmluYWxseSBvbmUgcmVtb3Zpbmcg
ZW1fcmVnaXN0ZXJfcGVyZl9kb21haW4oKS4KPj4+Pgo+Pj4+IEkgYWdyZWUgYW5kIHdpbGwgZG8g
dGhlIHNwbGl0LiBJIGNvdWxkIGFsc28gYnJlYWsgdGhlIGRlcGVuZGVuY2llcwo+Pj4+IGZvciBm
dXR1cmUgZWFzaWVyIG1lcmdlLgo+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+PiBBY2tlZC1ieTogUXVl
bnRpbiBQZXJyZXQgPHFwZXJyZXRAZ29vZ2xlLmNvbT4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEx1
a2FzeiBMdWJhIDxsdWthc3oubHViYUBhcm0uY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+Cj4+Pj4+IFsg
Li4uIF0KPj4+Pj4KPj4+Pj4+ICDCoMKgIDIuIENvcmUgQVBJcwo+Pj4+Pj4gQEAgLTcwLDE0ICs3
MiwxNiBAQCBDT05GSUdfRU5FUkdZX01PREVMIG11c3QgYmUgZW5hYmxlZCB0byB1c2UgdGhlIEVN
Cj4+Pj4+PiBmcmFtZXdvcmsuCj4+Pj4+PiAgwqDCoCBEcml2ZXJzIGFyZSBleHBlY3RlZCB0byBy
ZWdpc3RlciBwZXJmb3JtYW5jZSBkb21haW5zIGludG8gdGhlIEVNCj4+Pj4+PiBmcmFtZXdvcmsg
YnkKPj4+Pj4+ICDCoMKgIGNhbGxpbmcgdGhlIGZvbGxvd2luZyBBUEk6Ogo+Pj4+Pj4gIMKgwqAg
LcKgIGludCBlbV9yZWdpc3Rlcl9wZXJmX2RvbWFpbihjcHVtYXNrX3QgKnNwYW4sIHVuc2lnbmVk
IGludAo+Pj4+Pj4gbnJfc3RhdGVzLAo+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGVtX2RhdGFfY2FsbGJhY2sgKmNiKTsKPj4+Pj4+ICvCoCBpbnQgZW1f
cmVnaXN0ZXJfcGVyZl9kb21haW4oc3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQKPj4+
Pj4+IG5yX3N0YXRlcywKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZW1fZGF0YV9jYWxs
YmFjayAqY2IsIGNwdW1hc2tfdCAqY3B1cyk7Cj4+Pj4+Cj4+Pj4+IElzbid0IHBvc3NpYmxlIHRv
IGdldCByaWQgb2YgdGhpcyBjcHVtYXNrIGJ5IHVzaW5nCj4+Pj4+IGNwdWZyZXFfY3B1X2dldCgp
IHdoaWNoIHJldHVybnMgdGhlIGNwdWZyZXEncyBwb2xpY3kgYW5kIGZyb20gdGhlaXIgZ2V0Cj4+
Pj4+IHRoZSByZWxhdGVkIGNwdXMgPwo+Pj4+Cj4+Pj4gV2UgaGFkIHNpbWlsYXIgdGhvdWdodHMg
d2l0aCBRdWVudGluIGFuZCBJJ3ZlIGNoZWNrZWQgdGhpcy4KPj4+Cj4+PiBZZWFoLCBJIHN1c3Bl
Y3RlZCB5b3UgYWxyZWFkeSB0aGluayBhYm91dCB0aGF0IDopCj4+Pgo+Pj4+IFVuZm9ydHVuYXRl
bHksIGlmIHRoZSBwb2xpY3kgaXMgYSAnbmV3IHBvbGljeScgWzFdIGl0IGdldHMKPj4+PiBhbGxv
Y2F0ZWQgYW5kIHBhc3NlZCBpbnRvIGNwdWZyZXEgZHJpdmVyIC0+aW5pdChwb2xpY3kpIFsyXS4K
Pj4+PiBUaGVuIHRoYXQgcG9saWN5IGlzIHNldCBpbnRvIHBlcl9jcHUgcG9pbnRlciBmb3IgZWFj
aCByZWxhdGVkX2NwdSBbM106Cj4+Pj4KPj4+PiBmb3JfZWFjaF9jcHUoaiwgcG9saWN5LT5yZWxh
dGVkX2NwdXMpCj4+Pj4gIMKgwqDCoMKgwqBwZXJfY3B1KGNwdWZyZXFfY3B1X2RhdGEsIGopID0g
cG9saWN5Owo+Pj4+Cj4+Pj4gIMKgIFRodXMsIGFueSBjYWxscyBvZiBmdW5jdGlvbnMgKGkuZS4g
Y3B1ZnJlcV9jcHVfZ2V0KCkpIHdoaWNoIHRyeSB0bwo+Pj4+IHRha2UgdGhpcyBwdHIgYmVmb3Jl
IFszXSB3b24ndCB3b3JrLgo+Pj4+Cj4+Pj4gV2UgYXJlIHRyeWluZyB0byByZWdpc3RlciBFTSBm
cm9tIGNwdWZyZXFfZHJpdmVyLT5pbml0KHBvbGljeSkgYW5kIHRoZQo+Pj4+IHBlcl9jcHUgcG9s
aWN5IGlzIGxpa2VseSB0byBiZSBub3QgcG9wdWxhdGVkIGF0IHRoYXQgcGhhc2UuCj4+Pgo+Pj4g
V2hhdCBpcyB0aGUgcHJvYmxlbSBvZiByZWdpc3RlcmluZyBhdCB0aGUgZW5kIG9mIHRoZSBjcHVm
cmVxX29ubGluZSA/Cj4+Cj4+IFdlIHdhbnQgdG8gZW5hYmxlIGRyaXZlciBkZXZlbG9wZXJzIHRv
IGNob29zZSBvbmUgb2YgdHdvIG9wdGlvbnMgZm9yIHRoZQo+PiByZWdpc3RyYXRpb24gb2YgRW5l
cmd5IE1vZGVsOgo+PiAxLiBhIHNpbXBsZSBvbmUgdmlhIGRldl9wbV9vcHBfb2ZfcmVnaXN0ZXJf
ZW0oKSwgd2hpY2ggdXNlcyBkZWZhdWx0Cj4+ICDCoMKgIGNhbGxiYWNrIGZ1bmN0aW9uIGNhbGN1
bGF0aW5nIHBvd2VyIGJhc2VkIG9uOiB2b2x0YWdlLCBmcmVxCj4+ICDCoMKgIGFuZCBEVCBlbnRy
eSAnZHluYW1pYy1wb3dlci1jb2VmZmljaWVudCcgZm9yIGVhY2ggT1BQCj4+IDIuIGEgbW9yZSBz
b3BoaXN0aWNhdGVkLCB3aGVuIGRyaXZlciBwcm92aWRlcyBjYWxsYmFjayBmdW5jdGlvbiwgd2hp
Y2gKPj4gIMKgIHdpbGwgYmUgY2FsbGVkIGZyb20gRU0gZm9yIGVhY2ggT1BQIHRvIGFzayBmb3Ig
cmVsYXRlZCBwb3dlcjsKPj4gIMKgIFRoaXMgaW50ZXJmYWNlIGNvdWxkIGFsc28gYmUgdXNlZCBi
eSBkZXZpY2VzIHdoaWNoIHJlbGF5IG5vdCBvbmx5Cj4+ICDCoCBvbiBvbmUgc291cmNlIG9mICd2
b2x0YWdlJywgaS5lLiBtYW5pcHVsYXRlIGJvZHkgYmlhcyBvciBoYXZlCj4+ICDCoCBvdGhlciBj
b250cm9sbGluZyB2b2x0YWdlIGZvciBnYXRlcyBpbiB0aGUgbmV3IDNEIHRyYW5zaXN0b3JzLiBU
aGV5Cj4+ICDCoCBtaWdodCBwcm92aWRlIGN1c3RvbSBjYWxsYmFjayBmdW5jdGlvbiBpbiB0aGVp
ciBjcHVmcmVxIGRyaXZlci4KPj4gIMKgIFRoaXMgaXMgdXNlZCBpLmUuIGluIGNwdWZyZXEgZHJp
dmVycyB3aGljaCB1c2UgZmlybXdhcmUgdG8gZ2V0IHBvd2VyLAo+PiAgwqAgbGlrZSBzY21pLWNw
dWZyZXEuYzsKPj4KPj4gVG8gbWVldCB0aGlzIHJlcXVpcmVtZW50IHRoZSByZWdpc3RyYXRpb24g
b2YgRU0gaXMgbW92ZWQgaW50byBjcHVmcmVxCj4+IGRyaXZlcnMsIG5vdCBpbiB0aGUgZnJhbWV3
b3JrIGkuZSBjcHVmcmVxX29ubGluZSgpLiBJZiB3ZSBjb3VsZCBsaW1pdAo+PiB0aGUgc3VwcG9y
dCBmb3Igb25seSBvcHRpb24gMS4gdGhlbiB3ZSBjb3VsZCBtb3ZlIHRoZSByZWdpc3RyYXRpb24K
Pj4gY2FsbCBpbnRvIGNwdWZyZXEgZnJhbWV3b3JrIGFuZCBjbGVhbiB0aGUgY3B1ZnJlcSBkcml2
ZXJzLgo+IAo+IEknbSBub3Qgc3VyZSB0byBnZXQgeW91ciBwb2ludCBidXQgSSB0aGluayBhIHNl
cmllcyBzZXR0aW5nIHRoZSBzY2VuZSBieQo+IG1vdmluZyB0aGUgZGV2X3BtX29wcF9vZl9yZWdp
c3Rlcl9lbSgpIHRvIGNwdWZyZXFfb25saW5lKCkgYW5kIHJlbW92ZQo+IHRoZSBjcHVtYXNrIG1h
eSBtYWtlIHNlbnNlLgoKU29tZSBvZiB0aGUgY3B1ZnJlcSBkcml2ZXJzIGRvbid0IHVzZSBkZXZf
cG1fb3BwX29mX3JlZ2lzdGVyX2VtKCkgYnV0IAppbnN0ZWFkIGVtX3JlZ2lzdGVyX3BlcmZfZG9t
YWluKCkgd2l0aCB0aGVpciBlbV9kYXRhX2NhbGxiYWNrIFsxXS4KSXQgaXMgYmVjYXVzZSBvZiBw
b2ludCAyLiBkZXNjcmliZWQgYWJvdmUuIFRoZSBkZXZfcG1fb3BwX29mX3JlZ2lzdGVyX2VtCndv
bid0IHdvcmsgZm9yIHRoZW0sIHNvIGl0J3Mgbm90IGEgZ29vZCBjYW5kaWRhdGUgdG8gY292ZXIg
YWxsIHVzZSBjYXNlcwppbiB0aGUgZnJhbWV3b3JrLgoKPiAKPiBDYW4geW91IHNlbmQgdGhlIHNw
bGl0IHZlcnNpb24gb2YgcGF0Y2ggMS81IGFzIGEgc2VyaWVzIHdpdGhvdXQgdGhlCj4gb3RoZXIg
Y2hhbmdlcyA/IFNvIHdlIGNhbiBmb2N1cyBvbiBmaXJzdCA/CgpTdXJlLCBJIHdpbGwgb25seSBz
cGxpdCBwYXRjaCAxLzUgYXMgeW91IHN1Z2dlc3RlZCBhbmQgc2VuZCB2Ni4KVGhhbmsgeW91IGZv
ciB5b3VyIHRpbWUgYW5kIGhlbHAuCgpSZWdhcmRzLApMdWthc3oKClsxXSAKaHR0cHM6Ly9lbGl4
aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2NwdWZyZXEvc2NtaS1j
cHVmcmVxLmMjTDIwMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
