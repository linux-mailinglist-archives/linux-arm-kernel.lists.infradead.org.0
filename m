Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9437A487F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVytzI5GUnqQA1Wo8jW5DA8xoCewn5wBUtb4e0wEQAE=; b=G/4wmNp60zsNwU
	vKzkpukKr1jCkxn75l42XL/iUh4V01lukB6mupKSJLCBMuIPqkKgZh7LwIYuEga11/FkXOpdqx05i
	9bZ+NOihwZGSuwR3MkMKHeyxlVJa7rPwdX8dSeuQBclqGqNMNCqBg4An7H/zzJNjE7TniWZe1oJYV
	R3g1VRXPdindyoCTgMH1RTPfq5/yux4EqZu9dWJHXnlrOVNxsAYpHSxaUlEm4VZ+2zy46KjBd/nIh
	6VpXaI9cr849qAAH0cGTWlfQ+4zt86pePnVUW3ixAYZ11+72e5C7z/9chMtTyzaTQy1l5SxaqzJ8z
	9NMYaS0BnmwvCtzEHdRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctxX-0008NI-8G; Mon, 17 Jun 2019 15:54:15 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctxH-0008MM-VQ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:54:01 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HFrq23004775;
 Mon, 17 Jun 2019 10:53:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560786832;
 bh=erG+uvBOMa+8xX2nRvZBiq/ybYqVpwg2fajITY2mcv0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Ns8A78edmhW8KxAcDpphcGuin44oJRy4uhhFbMKdZjGmerj2adWQ1IwKOStleCYun
 Ek/EgOnAKR2/mnS82XYpS2iXDuh99AKCtqVbnpXatMLIAtmkuKIkuFK5jFciarKCvN
 O3Jfxi5zPuMmjEpdSicjGCaqZyYpicDGw+92JaLY=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HFrqAk125367
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 10:53:52 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 10:53:51 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 10:53:51 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HFrprR061194;
 Mon, 17 Jun 2019 10:53:51 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in
 interconnect node
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
References: <20190529211344.18014-1-s-anna@ti.com>
 <20190530104903.ldcmkunjnk7a5y3c@akan>
 <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <b1f7aa31-4f3b-b9d9-6951-092f3a87d078@ti.com>
Date: Mon, 17 Jun 2019 10:53:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_085400_122311_6BC3C43E 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi8xNy8xOSA5OjU0IEFNLCBUZXJvIEtyaXN0byB3cm90ZToKPiBPbiAzMC8wNS8yMDE5IDEz
OjQ5LCBOaXNoYW50aCBNZW5vbiB3cm90ZToKPj4gT24gMTY6MTMtMjAxOTA1MjksIFN1bWFuIEFu
bmEgd3JvdGU6Cj4+PiBGcm9tOiBSb2dlciBRdWFkcm9zIDxyb2dlcnFAdGkuY29tPgo+Pj4KPj4+
IEFkZCB0aGUgTVNDTSBSQU0gYWRkcmVzcyBzcGFjZSB0byB0aGUgcmFuZ2VzIHByb3BlcnR5IG9m
IHRoZSBjYmFzc19tYWluCj4+PiBpbnRlcmNvbm5lY3Qgbm9kZSBzbyB0aGF0IHRoZSBhZGRyZXNz
ZXMgY2FuIGJlIHRyYW5zbGF0ZWQgcHJvcGVybHkuCj4+Pgo+Pj4gVGhpcyBmaXhlcyB0aGUgcHJv
YmUgZmFpbHVyZSBpbiB0aGUgc3JhbSBkcml2ZXIgZm9yIHRoZSBNU01DIFJBTSBub2RlLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IFJvZ2VyIFF1YWRyb3MgPHJvZ2VycUB0aS5jb20+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBTdW1hbiBBbm5hIDxzLWFubmFAdGkuY29tPgo+Pj4gLS0tCj4+Pgo+Pj4gVGhl
IGZvbGxvd2luZyBlcnJvciBtZXNzYWdlIGlzIHNlZW4gd2l0aG91dCB0aGlzOgo+Pj4gW8KgwqDC
oCAwLjQ4MDI2MV0gc3JhbSBpbnRlcmNvbm5lY3RAMTAwMDAwOnNyYW1ANzAwMDAwMDA6IGZvdW5k
IG5vCj4+PiBtZW1vcnkgcmVzb3VyY2UKPj4+IFvCoMKgwqAgMC40ODc0OTddIHNyYW06IHByb2Jl
IG9mIGludGVyY29ubmVjdEAxMDAwMDA6c3JhbUA3MDAwMDAwMAo+Pj4gZmFpbGVkIHdpdGggZXJy
b3IgLTIyCj4+Pgo+Pj4gcmVnYXJkcwo+Pj4gU3VtYW4KPj4+Cj4+PiDCoCBhcmNoL2FybTY0L2Jv
b3QvZHRzL3RpL2szLWFtNjUuZHRzaSB8IDEgKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMt
YW02NS5kdHNpCj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS5kdHNpCj4+PiBp
bmRleCA1MGY0YmUyMDQ3YTkuLjY4YjNmOTU0ZjFkMSAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvdGkvazMtYW02NS5kdHNpCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3RpL2szLWFtNjUuZHRzaQo+Pj4gQEAgLTY4LDYgKzY4LDcgQEAKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPDB4MDAgMHgwMDkwMDAwMCAweDAwIDB4MDA5MDAwMDAgMHgwMCAweDAw
MDEyMDAwPiwgLyoKPj4+IHNlcmRlcyAqLwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8MHgwMCAweDAxMDAwMDAwIDB4MDAgMHgwMTAwMDAwMCAweDAwIDB4MGFmMDI0MDA+LCAvKgo+
Pj4gTW9zdCBwZXJpcGhlcmFscyAqLwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
MHgwMCAweDMwODAwMDAwIDB4MDAgMHgzMDgwMDAwMCAweDAwIDB4MGJjMDAwMDA+LCAvKgo+Pj4g
TUFJTiBOQVZTUyAqLwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MHgwMCAweDcwMDAw
MDAwIDB4MDAgMHg3MDAwMDAwMCAweDAwIDB4MDAyMDAwMDA+LCAvKgo+Pj4gTVNNQyBTUkFNICov
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIE1DVVNTIFJhbmdlICovCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwweDAwIDB4MjgzODAwMDAgMHgwMCAweDI4Mzgw
MDAwIDB4MDAgMHgwMzg4MDAwMD4sCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDww
eDAwIDB4NDAyMDAwMDAgMHgwMCAweDQwMjAwMDAwIDB4MDAgMHgwMDkwMDEwMD4sCj4+PiAtLcKg
Cj4+PiAyLjIxLjAKPj4+Cj4+Cj4+IEFycmdoLi4gTmljZSBjYXRjaC4gVGhhbmtzLiBXZSBzaG91
bGQgY29uc2lkZXIgcHVsbGluZyB0aGlzIGluIGFzIHBhcnQKPj4gb2YgZWFybHkgcmMgZml4ZXMg
cGxlYXNlLgo+Pgo+PiBBY2tlZC1ieTogTmlzaGFudGggTWVub24gPG5tQHRpLmNvbT4KPiAKPiBI
bW0sIHdoYXQgaXMgdGhlIGZhaWx1cmUgdGhpcyBjYXVzZXMsIGV4Y2VwdCB0aGUgcHJvYmUgbWVz
c2FnZT8gU1JBTQo+IGRyaXZlciBvYnZpb3VzbHkgd29uJ3Qgd29yayBidXQgaXMgaXQgdXNlZCBm
b3IgYW55dGhpbmcgYXQgdGhlIG1vbWVudAo+IGFueXdheXM/Cj4gCj4gSSB3b3VsZCByYXRoZXIg
cXVldWUgdGhpcyB0b3dhcmRzIDUuMy4KCk9LLCBJIGFtIGZpbmUgZWl0aGVyIHdheS4KCnJlZ2Fy
ZHMKU3VtYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
