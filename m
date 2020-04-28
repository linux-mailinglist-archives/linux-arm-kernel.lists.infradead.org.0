Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830B61BC311
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TACNvSPdiOG/bYpY6c+Ycp9B2XQqiZ15IGYLGJlE+2Q=; b=fWep9APGESAWpjKrH0iEjMSI9
	IPQPdCcUV6n3K2j3o8brgBqMiQl+xB1I9hYk5e09OWm34Wu6l+mkK8IfBOJLbXC3Aawm1gjqd82uh
	Tmg0U+xj5bzQ5IQbHxGrVXUatQrvLfR4a2Eh/5304GzVUkXSzLCpPyuuPIXXZiH4vwaQm07IS7MP7
	D+20DIHoZbTHsgPEAol/bl8G5ynWetrFrcCR3My75oskFCkysVVz00i0TbX5WeKWZj3vMsBngurRZ
	7lX5iWJ+2wewn5/JVFtgZXIg99qqjL6VycCpJ7dBnN+GxI68D1EMvZ1rTt3gPHdq50l5aB+b669sl
	NA236eHkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTS3N-00046w-A3; Tue, 28 Apr 2020 15:21:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTS3D-00045E-9y
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:21:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B23530E;
 Tue, 28 Apr 2020 08:21:32 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E72243F305;
 Tue, 28 Apr 2020 08:21:30 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: dts: allwinner: h6: Use dummy regulator for
 Tanix TX6
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
References: <20200428142629.8950-1-peron.clem@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <98246e5d-ebef-bcb5-f0b8-d74b3834b835@arm.com>
Date: Tue, 28 Apr 2020 16:21:28 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428142629.8950-1-peron.clem@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_082135_393030_CAC22EAD 
X-CRM114-Status: GOOD (  22.35  )
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Piotr Oniszczuk <warpme@o2.pl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0yOCAzOjI2IHBtLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gVGFuaXggVFg2
IGhhcyBhIGZpeGVkIHJlZ3VsYXRvci4gQXMgRFZGUyBpcyBpbnN0cnVjdGVkIHRvIGNoYW5nZQo+
IHZvbHRhZ2UgdG8gbWVldCBPUFAgdGFibGUsIHRoZSBEVkZTIGlzIG5vdCB3b3JraW5nIGFzIGV4
cGVjdGVkLgoKSG1tLCBpc24ndCB0aGF0IHJlYWxseSBhIGJ1ZyBpbiB0aGUgRFZGUyBjb2RlPyBJ
IGd1ZXNzIGl0J3MganVzdCBibGluZGx5IApwcm9wYWdhdGluZyAtRUlOVkFMIGZyb20gdGhlIGZp
eGVkIHJlZ3VsYXRvcnMgbm90IGltcGxlbWVudGluZyAKc2V0X3ZvbHRhZ2UsIGJ1dCBBRkFJQ1Mg
aXQgaGFzIG5vIHJlYWwgZXhjdXNlIG5vdCB0byBiZSBjbGV2ZXJlciBhbmQgCnN0aWxsIGFsbG93
IHN3aXRjaGluZyBmcmVxdWVuY3kgYXMgbG9uZyBhcyB0aGUgdm9sdGFnZSAqaXMqIGhpZ2ggZW5v
dWdoIApmb3IgdGhlIGdpdmVuIE9QUC4gSSB3b25kZXIgaG93IHdlbGwgaXQgd29ya3MgaWYgdGhl
IHJlZ3VsYXRvciBpcyAKcHJvZ3JhbW1hYmxlIGJ1dCBzaGFyZWQgd2l0aCBvdGhlciBjb25zdW1l
cnMuLi4gdGhhdCBjYXNlIHByb2JhYmx5IGNhbid0IApiZSBoYWNrZWQgYXJvdW5kIGluIERULgoK
Um9iaW4uCgo+IEF2b2lkIHRvIGludHJvZHVjZSBhIG5ldyBkZWRpY2F0ZWQgT1BQIFRhYmxlIHdo
ZXJlIHZvbHRhZ2UgYXJlCj4gZXF1YWxzIHRvIHRoZSBmaXhlZCByZWd1bGF0b3IgYXMgaXQgd2ls
bCBvbmx5IGR1cGxpY2F0ZSBhbGwgdGhlIE9QUHMuCj4gSW5zdGVhZCByZW1vdmUgdGhlIGZpeGVk
IHJlZ3VsYXRvciBzbyB0aGUgRFZGUyBmcmFtZXdvcmsgd2lsbCBjcmVhdGUKPiBkdW1teSByZWd1
bGF0b3IgYW5kIHdpbGwgaGF2ZSB0aGUgc2FtZSBiZWhhdmlvci4KPiAKPiBBZGQgc29tZSBjb21t
ZW50cyB0byBleHBsYWluIHRoaXMgaW4gdGhlIGRldmljZS10cmVlLgo+IAo+IFJlcG9ydGVkLWJ5
OiBQaW90ciBPbmlzemN6dWsgPHdhcnBtZUBvMi5wbD4KPiBGaXhlczogYWRkMWUyN2ZiNzAzICgi
YXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogRW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBUYW5p
eCBUWDYiKQo+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFp
bC5jb20+Cj4gLS0tCj4gICAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10YW5peC10
eDYuZHRzIHwgMTggKysrKysrKysrKysrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4Ni5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgtdHg2LmR0cwo+IGluZGV4IGJlODEzMzBk
YjE0Zi4uM2U5NmZjYjMxN2VhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi10YW5peC10eDYuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4Ni5kdHMKPiBAQCAtNDgsNyArNDgsMTUgQEAK
PiAgIH07Cj4gICAKPiAgICZjcHUwIHsKPiAtCWNwdS1zdXBwbHkgPSA8JnJlZ192ZGRfY3B1X2dw
dT47Cj4gKwkvKgo+ICsJICogRG9uJ3Qgc3BlY2lmeSB0aGUgQ1BVIHJlZ3VsYXRvciwgYXMgaXQn
cyBhIGZpeGVkCj4gKwkgKiByZWd1bGF0b3IgRFZGUyB3aWxsIG5vdCB3b3JrIGFzIGl0IGlzIGlu
dHJ1Y3RlZAo+ICsJICogdG8gcmVhY2ggYSB2b2x0YWdlIHdoaWNoIGNhbid0IGJlIHJlYWNoZWQu
Cj4gKwkgKiBOb3Qgc3BlY2lmeWluZyBhIHJlZ3VsYXRvciB3aWxsIGNyZWF0ZSBhIGR1bW15Cj4g
KwkgKiByZWd1bGF0b3IgYWxsb3dpbmcgYWxsIE9QUHMuCj4gKwkgKgo+ICsJICogY3B1LXN1cHBs
eSA9IDwmcmVnX3ZkZF9jcHVfZ3B1PjsKPiArCSAqLwo+ICAgfTsKPiAgIAo+ICAgJmRlIHsKPiBA
QCAtNjgsNyArNzYsMTMgQEAKPiAgIH07Cj4gICAKPiAgICZncHUgewo+IC0JbWFsaS1zdXBwbHkg
PSA8JnJlZ192ZGRfY3B1X2dwdT47Cj4gKwkvKgo+ICsJICogRG9uJ3Qgc3BlY2lmeSB0aGUgR1BV
IHJlZ3VsYXRvciwgc2VlIGNvbW1lbnQKPiArCSAqIGFib3ZlIGZvciB0aGUgQ1BVIHN1cHBseS4K
PiArCSAqCj4gKwkgKiBtYWxpLXN1cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1PjsKPiArCSAqLwo+
ICsKPiAgIAlzdGF0dXMgPSAib2theSI7Cj4gICB9Owo+ICAgCj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
