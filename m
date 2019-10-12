Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E1AD52B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 23:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=As3jww8q6Xg6ZRQXU/bEBnBI35thWbpWlDqmNxwfsHU=; b=kAiF4NuPZXyKdE
	h8OOe6sTT0VqCGRVWwwEPVYj0+k/k5HH4iC7XKNa/hhP7VkrWOPRnRHntZNDuwGKu8gBEJVDIzx/K
	TYmnkCz8DBUxz+mPVa/vtLGmIL98hiMhvCHJXa0MSA9GD0IqWBeMTAZYeHtz9Vl+6mTBjno2sD3dY
	TW7P50V7dgXhxQCTtZ3e6MXphSushUcB214O/4WO2S1vKPFXSXkqCgWMo3yASNSwj5zPyMLol3tY8
	LI0IxsAQrB2/Cc7EKbauAxdrk+3Van9ui5fivinXcEpoW8KMWCVxchAF268WZ+RaOmMFmhVDfvwzn
	AHro2zAhpg/LuihJJ5Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJOzv-000788-RB; Sat, 12 Oct 2019 21:32:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJOzo-00077L-M7; Sat, 12 Oct 2019 21:32:18 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iJOzm-0000bP-6Y; Sat, 12 Oct 2019 23:32:14 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
Date: Sat, 12 Oct 2019 23:32:12 +0200
Message-ID: <5801053.xxhhKtLrcJ@diego>
In-Reply-To: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
References: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_143216_871722_0CCC2A8C 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>, Kangjie Lu <kjlu@umn.edu>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen McCamant <smccaman@umn.edu>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org,
 Navid Emamdoost <emamd001@umn.edu>, Aditya Pakki <pakki001@umn.edu>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFya3VzLAoKQW0gU2Ftc3RhZywgMTIuIE9rdG9iZXIgMjAxOSwgMTU6NTU6NDQgQ0VTVCBz
Y2hyaWViIE1hcmt1cyBFbGZyaW5nOgo+IEkgdHJpZWQgYW5vdGhlciBzY3JpcHQgZm9yIHRoZSBz
ZW1hbnRpYyBwYXRjaCBsYW5ndWFnZSBvdXQuCj4gVGhpcyBzb3VyY2UgY29kZSBhbmFseXNpcyBh
cHByb2FjaCBwb2ludHMgb3V0IHRoYXQgdGhlIGltcGxlbWVudGF0aW9uCj4gb2YgdGhlIGZ1bmN0
aW9uIOKAnHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9wbGzigJ0gY29udGFpbnMgYWxzbyBhIGNhbGwK
PiBvZiB0aGUgZnVuY3Rpb24g4oCca21lbWR1cOKAnS4KPiBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJz
L2Nsay9yb2NrY2hpcC9jbGstcGxsLmM/aWQ9MWMwY2M1ZjFhZTVlZTVhNjkxMzcwNGMwZDc1YTZl
OTk2MDRlZTMwYSNuOTEzCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuNC1y
YzIvc291cmNlL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1wbGwuYyNMOTEzCj4gCj4gKiBEbyB5
b3UgZmluZCB0aGUgdXNhZ2Ugb2YgdGhlIGZvcm1hdCBzdHJpbmcg4oCcJXM6IGNvdWxkIG5vdCBh
bGxvY2F0ZQo+ICAgcmF0ZSB0YWJsZSBmb3IgJXNcbuKAnSBzdGlsbCBhcHByb3ByaWF0ZSBhdCB0
aGlzIHBsYWNlPwoKSWYgdGhlcmUgaXMgYW4gaW50ZXJuYWwgIm5vLW1lbW9yeSIgb3V0cHV0IGZy
b20gaW5zaWRlIGttZW1kdXAgbm93LApJIGd1ZXNzIHRoZSBvbmUgaW4gdGhlIGNsb2NrIGRyaXZl
ciB3b3VsZCBiZSBhIGR1cGxpY2F0ZSBhbmQgY291bGQgZ28gYXdheS4KCj4gKiBJcyB0aGVyZSBh
IG5lZWQgdG8gYWRqdXN0IHRoZSBlcnJvciBoYW5kbGluZyBoZXJlPwoKVGhlcmUgaXMgbm8gbmVl
ZCBmb3IgYWRkaXRpb25hbCBlcnJvciBoYW5kbGluZy4gTGlrZSBpZiB0aGUgcmF0ZS10YWJsZQpj
b3VsZCBub3QgYmUgZHVwbGljYXRlZCwgdGhlIGNsb2NrIHdpbGwgc3RpbGwgcmVwb3J0IHRoZSBj
b3JyZWN0IGNsb2NrcmF0ZQp5b3UgY2FuIGp1c3Qgbm90IHNldCBhIG5ldyByYXRlLgoKQW5kIGZv
ciBhIHN5c3RlbSBpdCdzIGFsd2F5cyBiZXR0ZXIgdG8gaGF2ZSB0aGUgY2xvY2sgZHJpdmVyIHBy
ZXNlbnQKdGhhbiBmb3IgYWxsIGRldmljZS1kcml2ZXJzIHRvIGZhaWwgcHJvYmluZy4gRXNwZWNp
YWxseSBhcyB0aGlzIHN0YXJ0IGFzCmNvcmUgY2xvY2sgZHJpdmVyLCBzbyB0aGVyZSBpcyBubyBk
ZWZlcnJpbmcgcG9zc2libGUuCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
