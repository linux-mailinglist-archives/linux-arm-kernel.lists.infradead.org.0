Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E052B19F9C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rxxP0t5SN266ocv8aFtkQ2WxpoWDD9YMogSqpjS/dkM=; b=BknYhg1KYkIAsBh/vMfBdqFFa
	cJ9vbMzKccKqYSLt2JzKpPJQwt0GlwygLweNXxL6SUIB+Y/fxio+1k+0zWrNbhvYDyyNHn+qe07kj
	D7h0jrJPcg7S3Qs+68VUsIAiYtB9DsLEnA8z4cyiGaNGKN9iV37oGArX5nSRlez91PT4UqC4XB5hW
	C+DVyZzSEK7bb0XwRYo0/TgNci20FZgwMApdr4kqWsAIfbRy0Y+ZUTzIfXlncUxzovwsKWVY2VogC
	SSjpYdBEb2CnZV1+miDVYbydEoNisAO10mIYkfO3jISV1otkDOEYhVhYEbEhOLsk8pWMmpjI9mlGB
	vLyQpuHEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUHc-0007Xj-H0; Mon, 06 Apr 2020 16:07:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUHV-0007Wc-6q; Mon, 06 Apr 2020 16:07:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D1B01FB;
 Mon,  6 Apr 2020 09:07:23 -0700 (PDT)
Received: from [10.37.12.4] (unknown [10.37.12.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C9D73F68F;
 Mon,  6 Apr 2020 09:07:13 -0700 (PDT)
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
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <2a70b4ed-f18f-c1e6-1e8c-e4747807f276@arm.com>
Date: Mon, 6 Apr 2020 17:07:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6b980e2a-c15c-0718-14b8-e8aa7510c832@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_090725_336530_1CF18022 
X-CRM114-Status: GOOD (  21.30  )
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

CgpPbiA0LzYvMjAgMzo1OCBQTSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gCj4gSGkgTHVrYXN6
LAo+IAo+IAo+IE9uIDA2LzA0LzIwMjAgMTU6MjksIEx1a2FzeiBMdWJhIHdyb3RlOgo+PiBIaSBE
YW5pZWwsCj4+Cj4+IFRoYW5rIHlvdSBmb3IgdGhlIHJldmlldy4KPj4KPj4gT24gNC8zLzIwIDU6
MDUgUE0sIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+Pj4KPj4+IEhpIEx1a2FzeiwKPj4+Cj4+Pgo+
Pj4gT24gMTgvMDMvMjAyMCAxMjo0NSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+Pj4gQWRkIHN1cHBv
cnQgb2Ygb3RoZXIgZGV2aWNlcyBpbnRvIHRoZSBFbmVyZ3kgTW9kZWwgZnJhbWV3b3JrIG5vdCBv
bmx5Cj4+Pj4gdGhlCj4+Pj4gQ1BVcy4gQ2hhbmdlIHRoZSBpbnRlcmZhY2UgdG8gYmUgbW9yZSB1
bmlmaWVkIHdoaWNoIGNhbiBoYW5kbGUgb3RoZXIKPj4+PiBkZXZpY2VzIGFzIHdlbGwuCj4+Pgo+
Pj4gdGhhbmtzIGZvciB0YWtpbmcgY2FyZSBvZiB0aGF0LiBPdmVyYWxsIEkgbGlrZSB0aGUgY2hh
bmdlcyBpbiB0aGlzIHBhdGNoCj4+PiBidXQgaXQgaGFyZCB0byByZXZpZXcgaW4gZGV0YWlscyBi
ZWNhdXNlIHRoZSBwYXRjaCBpcyB0b28gYmlnIDovCj4+Pgo+Pj4gQ291bGQgeW91IHNwbGl0IHRo
aXMgcGF0Y2ggaW50byBzbWFsbGVyIG9uZXM/Cj4+Pgo+Pj4gZWcuIChhdCB5b3VyIGNvbnZlbmll
bmNlKQo+Pj4KPj4+ICDCoCAtIE9uZSBwYXRjaCByZW5hbWluZyBzL2NhcC9wZXJmLwo+Pj4KPj4+
ICDCoCAtIE9uZSBwYXRjaCBhZGRpbmcgYSBuZXcgZnVuY3Rpb246Cj4+Pgo+Pj4gIMKgwqDCoMKg
IGVtX2Rldl9yZWdpc3Rlcl9wZXJmX2RvbWFpbihzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBucl9zdGF0ZXMsCj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBlbV9kYXRhX2NhbGxiYWNrICpj
Yik7Cj4+Pgo+Pj4gIMKgwqDCoCAoKyBFWFBPUlRfU1lNQk9MX0dQTCkKPj4+Cj4+PiAgwqDCoMKg
wqAgQW5kIGVtX3JlZ2lzdGVyX3BlcmZfZG9tYWluKCkgdXNpbmcgaXQuCj4+Pgo+Pj4gIMKgIC0g
T25lIGNvbnZlcnRpbmcgdGhlIGVtX3JlZ2lzdGVyX3BlcmZfZG9tYWluKCkgdXNlciB0bwo+Pj4g
IMKgwqDCoMKgZW1fZGV2X3JlZ2lzdGVyX3BlcmZfZG9tYWluCj4+Pgo+Pj4gIMKgIC0gT25lIGFk
ZGluZyB0aGUgZGlmZmVyZW50IG5ldyAnZW0nIGZ1bmN0aW9ucwo+Pj4KPj4+ICDCoCAtIEFuZCBm
aW5hbGx5IG9uZSByZW1vdmluZyBlbV9yZWdpc3Rlcl9wZXJmX2RvbWFpbigpLgo+Pgo+PiBJIGFn
cmVlIGFuZCB3aWxsIGRvIHRoZSBzcGxpdC4gSSBjb3VsZCBhbHNvIGJyZWFrIHRoZSBkZXBlbmRl
bmNpZXMKPj4gZm9yIGZ1dHVyZSBlYXNpZXIgbWVyZ2UuCj4+Cj4+Pgo+Pj4KPj4+PiBBY2tlZC1i
eTogUXVlbnRpbiBQZXJyZXQgPHFwZXJyZXRAZ29vZ2xlLmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5
OiBMdWthc3ogTHViYSA8bHVrYXN6Lmx1YmFAYXJtLmNvbT4KPj4+PiAtLS0KPj4+Cj4+PiBbIC4u
LiBdCj4+Pgo+Pj4+ICDCoCAyLiBDb3JlIEFQSXMKPj4+PiBAQCAtNzAsMTQgKzcyLDE2IEBAIENP
TkZJR19FTkVSR1lfTU9ERUwgbXVzdCBiZSBlbmFibGVkIHRvIHVzZSB0aGUgRU0KPj4+PiBmcmFt
ZXdvcmsuCj4+Pj4gIMKgIERyaXZlcnMgYXJlIGV4cGVjdGVkIHRvIHJlZ2lzdGVyIHBlcmZvcm1h
bmNlIGRvbWFpbnMgaW50byB0aGUgRU0KPj4+PiBmcmFtZXdvcmsgYnkKPj4+PiAgwqAgY2FsbGlu
ZyB0aGUgZm9sbG93aW5nIEFQSTo6Cj4+Pj4gIMKgIC3CoCBpbnQgZW1fcmVnaXN0ZXJfcGVyZl9k
b21haW4oY3B1bWFza190ICpzcGFuLCB1bnNpZ25lZCBpbnQKPj4+PiBucl9zdGF0ZXMsCj4+Pj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGVtX2RhdGFfY2FsbGJh
Y2sgKmNiKTsKPj4+PiArwqAgaW50IGVtX3JlZ2lzdGVyX3BlcmZfZG9tYWluKHN0cnVjdCBkZXZp
Y2UgKmRldiwgdW5zaWduZWQgaW50Cj4+Pj4gbnJfc3RhdGVzLAo+Pj4+ICvCoMKgwqDCoMKgwqDC
oCBzdHJ1Y3QgZW1fZGF0YV9jYWxsYmFjayAqY2IsIGNwdW1hc2tfdCAqY3B1cyk7Cj4+Pgo+Pj4g
SXNuJ3QgcG9zc2libGUgdG8gZ2V0IHJpZCBvZiB0aGlzIGNwdW1hc2sgYnkgdXNpbmcKPj4+IGNw
dWZyZXFfY3B1X2dldCgpIHdoaWNoIHJldHVybnMgdGhlIGNwdWZyZXEncyBwb2xpY3kgYW5kIGZy
b20gdGhlaXIgZ2V0Cj4+PiB0aGUgcmVsYXRlZCBjcHVzID8KPj4KPj4gV2UgaGFkIHNpbWlsYXIg
dGhvdWdodHMgd2l0aCBRdWVudGluIGFuZCBJJ3ZlIGNoZWNrZWQgdGhpcy4KPiAKPiBZZWFoLCBJ
IHN1c3BlY3RlZCB5b3UgYWxyZWFkeSB0aGluayBhYm91dCB0aGF0IDopCj4gCj4+IFVuZm9ydHVu
YXRlbHksIGlmIHRoZSBwb2xpY3kgaXMgYSAnbmV3IHBvbGljeScgWzFdIGl0IGdldHMKPj4gYWxs
b2NhdGVkIGFuZCBwYXNzZWQgaW50byBjcHVmcmVxIGRyaXZlciAtPmluaXQocG9saWN5KSBbMl0u
Cj4+IFRoZW4gdGhhdCBwb2xpY3kgaXMgc2V0IGludG8gcGVyX2NwdSBwb2ludGVyIGZvciBlYWNo
IHJlbGF0ZWRfY3B1IFszXToKPj4KPj4gZm9yX2VhY2hfY3B1KGosIHBvbGljeS0+cmVsYXRlZF9j
cHVzKQo+PiAgwqDCoMKgwqBwZXJfY3B1KGNwdWZyZXFfY3B1X2RhdGEsIGopID0gcG9saWN5Owo+
Pgo+PiAgIAo+PiBUaHVzLCBhbnkgY2FsbHMgb2YgZnVuY3Rpb25zIChpLmUuIGNwdWZyZXFfY3B1
X2dldCgpKSB3aGljaCB0cnkgdG8KPj4gdGFrZSB0aGlzIHB0ciBiZWZvcmUgWzNdIHdvbid0IHdv
cmsuCj4+Cj4+IFdlIGFyZSB0cnlpbmcgdG8gcmVnaXN0ZXIgRU0gZnJvbSBjcHVmcmVxX2RyaXZl
ci0+aW5pdChwb2xpY3kpIGFuZCB0aGUKPj4gcGVyX2NwdSBwb2xpY3kgaXMgbGlrZWx5IHRvIGJl
IG5vdCBwb3B1bGF0ZWQgYXQgdGhhdCBwaGFzZS4KPiAKPiBXaGF0IGlzIHRoZSBwcm9ibGVtIG9m
IHJlZ2lzdGVyaW5nIGF0IHRoZSBlbmQgb2YgdGhlIGNwdWZyZXFfb25saW5lID8KCldlIHdhbnQg
dG8gZW5hYmxlIGRyaXZlciBkZXZlbG9wZXJzIHRvIGNob29zZSBvbmUgb2YgdHdvIG9wdGlvbnMg
Zm9yIHRoZQpyZWdpc3RyYXRpb24gb2YgRW5lcmd5IE1vZGVsOgoxLiBhIHNpbXBsZSBvbmUgdmlh
IGRldl9wbV9vcHBfb2ZfcmVnaXN0ZXJfZW0oKSwgd2hpY2ggdXNlcyBkZWZhdWx0CiAgICBjYWxs
YmFjayBmdW5jdGlvbiBjYWxjdWxhdGluZyBwb3dlciBiYXNlZCBvbjogdm9sdGFnZSwgZnJlcQog
ICAgYW5kIERUIGVudHJ5ICdkeW5hbWljLXBvd2VyLWNvZWZmaWNpZW50JyBmb3IgZWFjaCBPUFAK
Mi4gYSBtb3JlIHNvcGhpc3RpY2F0ZWQsIHdoZW4gZHJpdmVyIHByb3ZpZGVzIGNhbGxiYWNrIGZ1
bmN0aW9uLCB3aGljaAogICB3aWxsIGJlIGNhbGxlZCBmcm9tIEVNIGZvciBlYWNoIE9QUCB0byBh
c2sgZm9yIHJlbGF0ZWQgcG93ZXI7CiAgIFRoaXMgaW50ZXJmYWNlIGNvdWxkIGFsc28gYmUgdXNl
ZCBieSBkZXZpY2VzIHdoaWNoIHJlbGF5IG5vdCBvbmx5CiAgIG9uIG9uZSBzb3VyY2Ugb2YgJ3Zv
bHRhZ2UnLCBpLmUuIG1hbmlwdWxhdGUgYm9keSBiaWFzIG9yIGhhdmUKICAgb3RoZXIgY29udHJv
bGxpbmcgdm9sdGFnZSBmb3IgZ2F0ZXMgaW4gdGhlIG5ldyAzRCB0cmFuc2lzdG9ycy4gVGhleQog
ICBtaWdodCBwcm92aWRlIGN1c3RvbSBjYWxsYmFjayBmdW5jdGlvbiBpbiB0aGVpciBjcHVmcmVx
IGRyaXZlci4KICAgVGhpcyBpcyB1c2VkIGkuZS4gaW4gY3B1ZnJlcSBkcml2ZXJzIHdoaWNoIHVz
ZSBmaXJtd2FyZSB0byBnZXQgcG93ZXIsCiAgIGxpa2Ugc2NtaS1jcHVmcmVxLmM7CgpUbyBtZWV0
IHRoaXMgcmVxdWlyZW1lbnQgdGhlIHJlZ2lzdHJhdGlvbiBvZiBFTSBpcyBtb3ZlZCBpbnRvIGNw
dWZyZXEKZHJpdmVycywgbm90IGluIHRoZSBmcmFtZXdvcmsgaS5lIGNwdWZyZXFfb25saW5lKCku
IElmIHdlIGNvdWxkIGxpbWl0CnRoZSBzdXBwb3J0IGZvciBvbmx5IG9wdGlvbiAxLiB0aGVuIHdl
IGNvdWxkIG1vdmUgdGhlIHJlZ2lzdHJhdGlvbgpjYWxsIGludG8gY3B1ZnJlcSBmcmFtZXdvcmsg
YW5kIGNsZWFuIHRoZSBjcHVmcmVxIGRyaXZlcnMuCgpSZWdhcmRzLApMdWthc3oKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
