Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47D87AC52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibEnGrWGpW9JJBw3WmT84qpfFsGWzRYZFISH05f4VE4=; b=RnjKEmLiGmR2qx
	YKZAfG2VH7g1upmNdAZvSDOKcvDHqllawT6pqHFoCI9uXrChe7eG5XlngiFHcFfYOADu5v4MRLmrw
	GJp35uuNq68BvlrY0FvdokZdYrb8R7uNlZrCnTM4URb3I8yrwzt01epjpcxXKj63nDIcUPlBGf/ln
	KF8aYgW5H3pQrHJkL3xYgHE+F8dMY4WDuPSP/m5EpboPgmD6JHA1onAqAocu1/KYnbdjG+x+c3D+w
	sISPkwLF1oJFN9a5JXrEiT+rgUQMIrjj+JJn1uv9O/Lw8i4w+E1l1YfU4Hz0OK8ts9u/1A+RRbbJ2
	Y+mcG8mzs0yrs36VIeqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsU13-0001RW-H6; Tue, 30 Jul 2019 15:26:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsU0s-0001Qj-24
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:26:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46D89206E0;
 Tue, 30 Jul 2019 15:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564500365;
 bh=cyeRiBni7SuzwXceJSbBai+SAVPR79ccBM2xDiF7Qsg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lqV1ZTJo+V6m8AOFtBhU9I32ADwWfOw/v5O54IHwgGH9d6LTFPbEo5tcntliWrtRB
 xP3CnUpzrubt1AH+/OzUsf5kgjV6+Uv3oh6HfTa2E5YFSEnxge64zSwPPnW9UtURRp
 KSadpsgy9Rp680FRBFXkOhVzfeaWaIUI2E2ZxH5g=
Date: Tue, 30 Jul 2019 16:26:01 +0100
From: Will Deacon <will@kernel.org>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH v2] iommu: arm-smmu-v3: Mark expected switch fall-through
Message-ID: <20190730152600.643mg43y6567pchi@willie-the-truck>
References: <20190730152012.2615-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730152012.2615-1-anders.roxell@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_082606_121639_9E94EBD1 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: joro@8bytes.org, robin.murphy@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDU6MjA6MTFQTSArMDIwMCwgQW5kZXJzIFJveGVsbCB3
cm90ZToKPiBOb3cgdGhhdCAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoIGlzIHBhc3NlZCB0byBHQ0Mg
YnkgZGVmYXVsdCwgdGhlCj4gZm9sbG93aW5nIHdhcm5pbmcgc2hvd3MgdXA6Cj4gCj4gLi4vZHJp
dmVycy9pb21tdS9hcm0tc21tdS12My5jOiBJbiBmdW5jdGlvbiDigJhhcm1fc21tdV93cml0ZV9z
dHJ0YWJfZW504oCZOgo+IC4uL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMuYzoxMTg5Ojc6IHdh
cm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsCj4gIHRocm91Z2ggWy1XaW1wbGljaXQtZmFs
bHRocm91Z2g9XQo+ICAgICBpZiAoZGlzYWJsZV9ieXBhc3MpCj4gICAgICAgIF4KPiAuLi9kcml2
ZXJzL2lvbW11L2FybS1zbW11LXYzLmM6MTE5MTozOiBub3RlOiBoZXJlCj4gICAgZGVmYXVsdDoK
PiAgICBefn5+fn5+Cj4gCj4gUmV3b3JrIHNvIHRoYXQgdGhlIGNvbXBpbGVyIGRvZXNuJ3Qgd2Fy
biBhYm91dCBmYWxsLXRocm91Z2guIE1ha2UgaXQKPiBjbGVhcmVyIGJ5IGNhbGxpbmcgJ0JVR19P
TigpJyB3aGVuIGRpc2FibGVfYnlwYXNzIGlzIHNldCwgYW5kIGFsd2F5cwo+ICdicmVhazsnCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3Jn
Pgo+IC0tLQo+ICBkcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmMgfCA0ICsrLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jIGIvZHJpdmVycy9pb21tdS9hcm0tc21tdS12
My5jCj4gaW5kZXggYTlhOWZhYmQzOTY4Li5jNWM5M2U0OGI0ZGIgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9pb21tdS9hcm0tc21tdS12My5jCj4gKysrIGIvZHJpdmVycy9pb21tdS9hcm0tc21tdS12
My5jCj4gQEAgLTExODYsOCArMTE4Niw4IEBAIHN0YXRpYyB2b2lkIGFybV9zbW11X3dyaXRlX3N0
cnRhYl9lbnQoc3RydWN0IGFybV9zbW11X21hc3RlciAqbWFzdGVyLCB1MzIgc2lkLAo+ICAJCQlz
dGVfbGl2ZSA9IHRydWU7Cj4gIAkJCWJyZWFrOwo+ICAJCWNhc2UgU1RSVEFCX1NURV8wX0NGR19B
Qk9SVDoKPiAtCQkJaWYgKGRpc2FibGVfYnlwYXNzKQo+IC0JCQkJYnJlYWs7Cj4gKwkJCUJVR19P
TighZGlzYWJsZV9ieXBhc3MpOwo+ICsJCQlicmVhazsKPiAgCQlkZWZhdWx0Ogo+ICAJCQlCVUco
KTsgLyogU1RFIGNvcnJ1cHRpb24gKi8KPiAgCQl9Cj4gLS0gCj4gMi4yMC4xCgpBY2tlZC1ieTog
V2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KCkpvZXJnIC0tIGlmIHlvdSdkIGxpa2UgdG8g
cGljayB0aGlzIHVwIGFzIGEgZml4LCBmZWVsIGZyZWUsIG90aGVyd2lzZSBJJ2xsCmluY2x1ZGUg
aXQgaW4gbXkgcHVsbCByZXF1ZXN0IGZvciA1LjQuCgpDaGVlcnMsCgpXaWxsCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
