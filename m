Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD9A76348
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:15:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8WTCk+u7V1CuKAjtjBi4nVHxDe9Geze6CWHc19C31Ak=; b=TZXVJigXZEx22+K1JFEdiTW+g
	RK8AVwPOmTZRPWPPMF2L8qw1QhXbV/MtJrWVtqAn/OZNe2U97Re6kVz4mL+ocYjWwVX60+wh5NB22
	yb3JaVN8kl1+FjSpIfgJTzDDRxiuJswpkP7Vxa0+0SkEGnw1mu5zKjIFvfSkiuaHdr9Atp4c/SU8J
	Zu1xriQGRNNWQ+DxieeaQJX8gU3u3TDkZ4cEsOUBWR8GtDf3RSypXre1OoHYkhmXfBrMDwYGUK/ll
	xCanY0/jQBUeyVVjTb7IsH0Wvl8TqERL+6qAG/0L4YnjqaEPK9FMI9bcKaWvKpFMnDwm/qOQlQsru
	QVIjL1NFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxFc-000717-HC; Fri, 26 Jul 2019 10:15:00 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxFO-00070h-61
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:14:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C182960592; Fri, 26 Jul 2019 10:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564136085;
 bh=jvQxmzWvpok8BXHCVML4PDBkl58pFVq1DH9k7A72xrI=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=Hbcvsw+jUAUwQUyIS0UEH1vlmY7SG3UGJxFTRFN2VeZ9+HwWFM2suO3MOqNljgdbo
 nHBGnexfVZVPzvgLbOR7G2OC9q/hGeibKn21XkjU+3O/K3rlVhWHVld69zhmUZG25D
 7V/d3CxEF63KkXnge/psrRtHmoSaUm612Kg3rXkk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D408260247;
 Fri, 26 Jul 2019 10:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564136084;
 bh=jvQxmzWvpok8BXHCVML4PDBkl58pFVq1DH9k7A72xrI=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=OjBrgcz+rtbPEy8asULLePhQI4rc2BAZgXIVXF4aCn4H0/mg66gBhsLZGH3EYpLpO
 ao5RZP7zE6KeY8usw2suKqShAETpklB5PxtpnhxmleaQ+tuzeAa21s5GpEBVZqJUcK
 YlOCTw7ajTj3LJNyEWoL5lEugzEY6Hkavzdd8k20=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D408260247
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
 <20190726070429.GA15714@kroah.com>
 <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
 <20190726084127.GA28470@kroah.com>
 <097942a1-6914-2542-450f-65a6147dc7aa@codeaurora.org>
Message-ID: <6d48f996-6297-dc69-250b-790be6d2670c@codeaurora.org>
Date: Fri, 26 Jul 2019 15:44:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <097942a1-6914-2542-450f-65a6147dc7aa@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_031446_254643_6A4B5591 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8yNi8yMDE5IDM6MTQgUE0sIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90ZToKPiBPbiA3LzI2
LzIwMTkgMjoxMSBQTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+PiBPbiBGcmksIEp1bCAy
NiwgMjAxOSBhdCAwMTo1MDoyN1BNICswNTMwLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+
PiBPbiA3LzI2LzIwMTkgMTI6MzQgUE0sIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToKPj4+PiBP
biBGcmksIEp1bCAyNiwgMjAxOSBhdCAxMTo0OToxOUFNICswNTMwLCBTYWkgUHJha2FzaCBSYW5q
YW4gd3JvdGU6Cj4+Pj4+IEhpLAo+Pj4+Pgo+Pj4+PiBXaGVuIHRyeWluZyB0byB0ZXN0IG15IGNv
cmVzaWdodCBwYXRjaGVzLCBJIGZvdW5kIHRoYXQgZXRyLGV0ZiBhbmQgc3RtCj4+Pj4+IGRldmlj
ZSBub2RlcyBhcmUgbWlzc2luZyBmcm9tIC9kZXYuCj4+Pj4KPj4+PiBJIGhhdmUgbm8gaWRlYSB3
aGF0IHRob3NlIGRldmljZSBub2RlcyBhcmUuCj4+Pj4KPj4+Pj4gQmlzZWN0aW9uIGdpdmVzIHRo
aXMgYXMgdGhlIGJhZCBjb21taXQuCj4+Pj4+Cj4+Pj4+IDFiZTAxZDRhNTcxNDJkZWQyM2JkYjll
MGM4ZDkzNjllNjkzYjI2Y2MgaXMgdGhlIGZpcnN0IGJhZCBjb21taXQKPj4+Pj4gY29tbWl0IDFi
ZTAxZDRhNTcxNDJkZWQyM2JkYjllMGM4ZDkzNjllNjkzYjI2Y2MKPj4+Pj4gQXV0aG9yOiBHZWVy
dCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+Pj4+PiBEYXRlOsKgwqAg
VGh1IE1hciAxNCAxMjoxMzo1MCAyMDE5ICswMTAwCj4+Pj4+Cj4+Pj4+IMKgwqDCoMKgwqAgZHJp
dmVyOiBiYXNlOiBEaXNhYmxlIENPTkZJR19VRVZFTlRfSEVMUEVSIGJ5IGRlZmF1bHQKPj4+Pj4K
Pj4+Pj4gwqDCoMKgwqDCoCBTaW5jZSBjb21taXQgNzkzNDc3OWE2OWYxMTg0ZiAoIkRyaXZlci1D
b3JlOiBkaXNhYmxlIAo+Pj4+PiAvc2Jpbi9ob3RwbHVnIGJ5Cj4+Pj4+IMKgwqDCoMKgwqAgZGVm
YXVsdCIpLCB0aGUgaGVscCB0ZXh0IGZvciB0aGUgL3NiaW4vaG90cGx1ZyBmb3JrLWJvbWIgc2F5
cwo+Pj4+PiDCoMKgwqDCoMKgICJUaGlzIHNob3VsZCBub3QgYmUgdXNlZCB0b2RheSBbLi4uXSBj
cmVhdGVzIGEgaGlnaCBzeXN0ZW0gCj4+Pj4+IGxvYWQsIG9yCj4+Pj4+IMKgwqDCoMKgwqAgWy4u
Ll0gb3V0LW9mLW1lbW9yeSBzaXR1YXRpb25zIGR1cmluZyBib290dXAiLsKgIFRoZSByYXRpb25h
bGUgCj4+Pj4+IGZvciB0aGlzCj4+Pj4+IMKgwqDCoMKgwqAgd2FzIHRoYXQgbm8gcmVjZW50IG1h
aW5zdHJlYW0gc3lzdGVtIHVzZWQgdGhpcyBhbnltb3JlIChpbiAKPj4+Pj4gMjAxMCEpLgo+Pj4+
Pgo+Pj4+PiDCoMKgwqDCoMKgIEEgZmV3IHllYXJzIGxhdGVyLCB0aGUgY29tcGxldGUgdWV2ZW50
IGhlbHBlciBzdXBwb3J0IHdhcyAKPj4+Pj4gbWFkZSBvcHRpb25hbAo+Pj4+PiDCoMKgwqDCoMKg
IGluIGNvbW1pdCA4NmQ1NjEzNGYxYjY3ZDBjICgia29iamVjdDogTWFrZSBzdXBwb3J0IGZvciAK
Pj4+Pj4gdWV2ZW50X2hlbHBlcgo+Pj4+PiDCoMKgwqDCoMKgIG9wdGlvbmFsLiIpLsKgIEhvd2V2
ZXIsIGlmIHdhcyBzdGlsbCBsZWZ0IGVuYWJsZWQgYnkgZGVmYXVsdCwgCj4+Pj4+IHRvIHN1cHBv
cnQKPj4+Pj4gwqDCoMKgwqDCoCBhbmNpZW50IHVzZXJsYW5kLgo+Pj4+Pgo+Pj4+PiDCoMKgwqDC
oMKgIFRpbWUgcGFzc2VkIGJ5LCBhbmQgbm90aGluZyBzaG91bGQgdXNlIHRoaXMgYW55bW9yZSwg
c28gaXQgCj4+Pj4+IGNhbiBiZQo+Pj4+PiDCoMKgwqDCoMKgIGRpc2FibGVkIGJ5IGRlZmF1bHQu
Cj4+Pj4+Cj4+Pj4+IMKgwqDCoMKgwqAgU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVu
IDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPj4+Pj4gwqDCoMKgwqDCoCBTaWduZWQtb2ZmLWJ5
OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+Pj4+Pgo+
Pj4+PiDCoMKgIGRyaXZlcnMvYmFzZS9LY29uZmlnIHwgMSAtCj4+Pj4+IMKgwqAgMSBmaWxlIGNo
YW5nZWQsIDEgZGVsZXRpb24oLSkKPj4+Pj4KPj4+Pj4KPj4+Pj4gQW55IGlkZWEgb24gdGhpcz8K
Pj4+Pgo+Pj4+IFRoYXQgbWVhbnMgdGhhdCB3aG8gZXZlciBjcmVhdGVkIHRob3NlIGRldmljZSBu
b2RlcyBpcyByZWx5aW5nIG9uIHVkZXYKPj4+PiB0byBkbyB0aGlzLCBhbmQgaXMgbm90IGRvaW5n
IHRoZSBjb3JyZWN0IHRoaW5nIHdpdGhpbiB0aGUga2VybmVsIGFuZAo+Pj4+IHVzaW5nIGRldnRt
cGZzLgo+Pj4+Cj4+Pj4gQW55IHBvaW50ZXJzIHRvIHdoZXJlIGluIHRoZSBrZXJuZWwgdGhvc2Ug
ZGV2aWNlcyBhcmUgdHJ5aW5nIHRvIGJlCj4+Pj4gY3JlYXRlZD8KPj4+Pgo+Pj4KPj4+IFNvbWV3
aGVyZSBpbiBkcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvKiBwcm9iYWJseS4gSSBhbSBub3Qg
c3VyZSwKPj4+IE1hdGhpZXUvU3V6dWtpIHdvdWxkIGJlIGFibGUgdG8gcG9pbnQgeW91IHRvIHRo
ZSBleGFjdCBjb2RlLgo+Pj4KPj4+IEFsc28ganVzdCB0byBhZGQgb24gc29tZSBtb3JlIGRldGFp
bHMsIEkgYW0gdXNpbmcgKmluaXRyYW1mcyoKPj4KPj4gQXJlIHlvdSB1c2luZyBkZXZ0bXBmcyBm
b3IgeW91ciAvZGV2LyBtb3VudD8KPj4KPiAKPiBJIGFtIG5vdCBtb3VudGluZyBkZXZ0bXBmcy4g
SG93ZXZlcgo+IAo+ICDCoENPTkZJR19ERVZUTVBGUz15Cj4gIMKgQ09ORklHX0RFVlRNUEZTX01P
VU5UPXkKPiAKCk9rIG15IGluaXRyYW1mcyBpcyB1c2luZyBtZGV2OgoKKi9zYmluL21kZXYgLXMq
CgpUaGlzIHNvbWVob3cgaXMgbm90IG1vdW50aW5nIGV0ciwgZXRmLCBzdG0gZGV2aWNlcyB3aGVu
IHVldmVudC1oZWxwZXIgaXMKZGlzYWJsZWQuIEFueXdheXMgYXMgU3V6dWtpIG1lbnRpb25lZCwg
dXNpbmcgZGV2dG1wZnMgZG9lcyBmaXggdGhlIGlzc3VlLgoKVGhhbmtzLApTYWkKCi0tIApRVUFM
Q09NTSBJTkRJQSwgb24gYmVoYWxmIG9mIFF1YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMu
IGlzIGEgbWVtYmVyCm9mIENvZGUgQXVyb3JhIEZvcnVtLCBob3N0ZWQgYnkgVGhlIExpbnV4IEZv
dW5kYXRpb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
