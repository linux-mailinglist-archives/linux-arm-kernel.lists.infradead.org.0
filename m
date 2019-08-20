Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5790E958C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g1kOLoqHsJ107d7AoEVMdXaXPh/Fs6cxtZtRgl7YIMA=; b=ko4c57eEGfgScb7dBT4NQKUyr
	pHY92FT7bSNKo0hBWhm4BQX8pTm+ZGdYDL0elu93P+qwXhby7xLb2FTMoO8WB+/YmmRdUIcr3LDDy
	TRjyknPc9KzOs60gxSptBuMnaMpECy8JbarLsAAt+2E+MIyvvk+N66Xa0hkBB7u2f/KIksWQ8m0s8
	H1gLAoNgL627lN+XHI7nv4rZGjoUROfJbbL0WKmgjBh4WaTuTGEcZtmD7gYdBhTPdqSf2FMg/RCnA
	OKNfYDgRowf1fz334CuEDh39mfIaCNh5bmQw9vDqxI8IYC1vBnOv6hsKmOKg6+PT0mE/fGsXeqzJ+
	bHyi4XaBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyqd-0004Za-RS; Tue, 20 Aug 2019 07:46:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyqF-0004ZF-Hl
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:46:09 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7K7k3bv098380;
 Tue, 20 Aug 2019 02:46:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566287163;
 bh=1WWOCuKvAKIkqQJVS+YQn04mQIvtXgGAzqkiaS8xpqg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=X2vjbuJTyQJSiUu0gSrdIXJvktO6ZWz6YymAaIi3tcVpAGJGgWHupBNAq7+wCEC3q
 aGBUD38CAg4EKe28eJ4LL/uGbLZJLMacr7yx2egs52EUBuHIxQcjruskGasWEcqo03
 b9m6pq53aB5YMwzP/VjGryMrlkp5eKOBS125zpig=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7K7k3Km062802
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 20 Aug 2019 02:46:03 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 02:46:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 02:46:01 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7K7jx5x103222;
 Tue, 20 Aug 2019 02:45:59 -0500
Subject: Re: [PATCH 1/8] dt-bindings: omap: add new binding for PRM instances
To: Suman Anna <s-anna@ti.com>, Keerthy <j-keerthy@ti.com>,
 <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-2-git-send-email-t-kristo@ti.com>
 <6bf4194b-23c0-2de0-3f9c-e99195336dc7@ti.com>
 <aa5538ae-76b4-942b-dc98-6e55628cf36a@ti.com>
 <b6506850-f4fc-43be-b5b7-b83cd77b5d66@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <c485156c-735f-40d3-d6a9-1b277e9c3d1d@ti.com>
Date: Tue, 20 Aug 2019 10:45:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b6506850-f4fc-43be-b5b7-b83cd77b5d66@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_004607_673321_988A7224 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAuOC4yMDE5IDAuMjgsIFN1bWFuIEFubmEgd3JvdGU6Cj4gSGkgVGVybywKPiAKPiBPbiA4
LzE5LzE5IDQ6MjggQU0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+PiBPbiAwOC8wOC8yMDE5IDA3OjM1
LCBLZWVydGh5IHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiAwNy8wOC8xOSAxOjE4IFBNLCBUZXJvIEty
aXN0byB3cm90ZToKPj4+PiBBZGQgbmV3IGJpbmRpbmcgZm9yIE9NQVAgUFJNIChQb3dlciBhbmQg
UmVzZXQgTWFuYWdlcikgaW5zdGFuY2VzLiBFYWNoCj4+Pj4gb2YgdGhlc2Ugd2lsbCBhY3QgYXMg
YSBwb3dlciBkb21haW4gY29udHJvbGxlciBhbmQgcG90ZW50aWFsbHkgYXMgYQo+Pj4+IHJlc2V0
Cj4+Pj4gcHJvdmlkZXIuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBUZXJvIEtyaXN0byA8dC1r
cmlzdG9AdGkuY29tPgo+Pj4+IC0tLQo+Pj4+ICDCoCAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vb21hcC9wcm0taW5zdC50eHTCoMKgwqDCoMKgIHwgMjQKPj4+PiArKysrKysrKysrKysrKysr
KysrKysrCj4+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCj4+Pj4gIMKg
IGNyZWF0ZSBtb2RlIDEwMDY0NAo+Pj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9hcm0vb21hcC9wcm0taW5zdC50eHQKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL29tYXAvcHJtLWluc3QudHh0Cj4+Pj4gYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL29tYXAvcHJtLWluc3QudHh0Cj4+Pj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+PiBpbmRleCAwMDAwMDAwLi5lMGFlODdiCj4+Pj4gLS0t
IC9kZXYvbnVsbAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vb21hcC9wcm0taW5zdC50eHQKPj4+PiBAQCAtMCwwICsxLDI0IEBACj4+Pj4gK09NQVAgUFJN
IGluc3RhbmNlIGJpbmRpbmdzCj4+Pj4gKwo+Pj4+ICtQb3dlciBhbmQgUmVzZXQgTWFuYWdlciBp
cyBhbiBJUCBibG9jayBvbiBPTUFQIGZhbWlseSBvZiBkZXZpY2VzIHdoaWNoCj4+Pj4gK2hhbmRs
ZSB0aGUgcG93ZXIgZG9tYWlucyBhbmQgdGhlaXIgY3VycmVudCBzdGF0ZSwgYW5kIHByb3ZpZGUg
cmVzZXQKPj4+PiAraGFuZGxpbmcgZm9yIHRoZSBkb21haW5zIGFuZC9vciBzZXBhcmF0ZSBJUCBi
bG9ja3MgdW5kZXIgdGhlIHBvd2VyCj4+Pj4gZG9tYWluCj4+Pj4gK2hpZXJhcmNoeS4KPiAKPiBT
bywgSSBzZWUgdGhhdCB5b3UgYXJlIGFkZGluZyB0aGVzZSBhcyBmbGF0IG5vZGVzIGRpcmVjdGx5
IHVuZGVyIHRoZSBwcm0KPiBub2RlcyB3aGVyZSB3ZSBoYXZlIHRoZSBjbG9ja3MgYW5kIGNsb2Nr
X2RvbWFpbnMuIEFyZSB5b3UgYW50aWNpcGF0aW5nIGEKPiBzaW5nbGUgRFQgbm9kZSBhbmQvb3Ig
ZHJpdmVyIG1hbmFnaW5nIGJvdGggcG93ZXItZG9tYWlucyBhbmQgcmVzZXRzPwoKU2luZ2xlIERU
IG5vZGUgKyBkcml2ZXIgZm9yIGJvdGggcG93ZXItZG9tYWlucyAvIHJlc2V0cy4gWW91IGNhbiAK
cHJvYmFibHkgc2VlIGZyb20gdGhlIGRyaXZlciBjb2RlIHRoYXQgdGhlIHJlc2V0IHByb2Jpbmcg
aXMgY2FsbGVkIApzZXBhcmF0ZWx5IGZyb20gdGhlIG1haW4gcHJvYmUgZnVuY3Rpb247IHBvd2Vy
IGRvbWFpbiBzdXBwb3J0IHNob3VsZCBiZSAKYWRkZWQgaW4gc2ltaWxhciBtYW5uZXIgdW5kZXIg
aXQuCgo+IAo+Pj4+ICsKPj4+PiArUmVxdWlyZWQgcHJvcGVydGllczoKPj4+PiArLSBjb21wYXRp
YmxlOsKgwqDCoCBNdXN0IGJlIG9uZSBvZjoKPj4+PiArwqDCoMKgwqDCoMKgwqAgInRpLGFtMy1w
cm0taW5zdCIKPj4+PiArwqDCoMKgwqDCoMKgwqAgInRpLGFtNC1wcm0taW5zdCIKPj4+PiArwqDC
oMKgwqDCoMKgwqAgInRpLG9tYXA0LXBybS1pbnN0Igo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAidGks
b21hcDUtcHJtLWluc3QiCj4+Pj4gK8KgwqDCoMKgwqDCoMKgICJ0aSxkcmE3LXBybS1pbnN0Igo+
IAo+IFdoYXQgYWJvdXQgT01BUDIsIE9NQVAzLCBETTgxNHgsIERNODE2eD8KCk9NQVAyLzMgYXJj
aGl0ZWN0dXJlcyBhcmUgc2xpZ2h0bHkgZGlmZmVyZW50IGJlYXN0IHRvIHRhY2tsZSwgc28gCnBs
YW5uaW5nIHRvIHdvcmsgb24gdGhvc2UgbGF0ZXIgb24uCgotVGVybwoKPiAKPiByZWdhcmRzCj4g
U3VtYW4KPiAKPj4+PiArLSByZWc6wqDCoMKgwqDCoMKgwqAgQ29udGFpbnMgUFJNIGluc3RhbmNl
IHJlZ2lzdGVyIGFkZHJlc3MgcmFuZ2UKPj4+PiArwqDCoMKgwqDCoMKgwqAgKGJhc2UgYWRkcmVz
cyBhbmQgbGVuZ3RoKQo+Pj4KPj4+IEhvdyBhYm91dCByZXNldC1jZWxscyBwcm9wZXJ0eSwgSXNu
J3QgdGhhdCBhIG1hbmRhdG9yeSBwcm9wZXJ0eT8KPj4KPj4gSXQgaXMgb3B0aW9uYWwsIGJ1dCB5
b3UgYXJlIHJpZ2h0LCBzaG91bGQgYmUgYWRkZWQgdG8gdGhpcy4KPj4KPj4gLVRlcm8KPj4KPj4+
Cj4+Pj4gKwo+Pj4+ICtFeGFtcGxlOgo+Pj4+ICsKPj4+PiArcHJtX2RzcDI6IHBybUAxYjAwIHsK
Pj4+PiArwqDCoMKgIGNvbXBhdGlibGUgPSAidGksZHJhNy1wcm0taW5zdCI7Cj4+Pj4gK8KgwqDC
oCByZWcgPSA8MHgxYjAwIDB4NDA+Owo+Pj4+ICvCoMKgwqAgI3Jlc2V0LWNlbGxzID0gPDE+Owo+
Pj4+ICt9Owo+Pj4+Cj4+Cj4+IC0tIAo+IAoKLS0KVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBP
eSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuIFktdHVubnVzL0J1c2luZXNzIElE
OiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
