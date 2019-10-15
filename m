Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56788D8101
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8hkqfl45T62KyfWKaAEZQSZxTmfH4dsLuL/fifd8hM=; b=FKj9PtDnSS7S1K
	G8rLIYP3t40TmHZDQbsZ2h+H2/uLIuDd+03L9wd1RwHFckRGUZl36r8NkbMaDIrX3VBuTdY4mt7WC
	75T1DIA4/0rbkTMnMU4asAMKqCElwz+c6zH+LHwl2+qpxbnh3KjihcxnIP+o6sWFdjWJm4hjqKDzC
	RhIQpoYT09oLF3ztLJKTwSP9uMrZzWbp/wKXu0qhgcc0Vcf6NsbCqcBPl0zbl+lciyaOsa3T4Cfye
	DfdfprM0SGPp/Z2k3qI1onUcOLOy8s8z6ukcLPJkDj66sb2MM8HLaL65v+K3jBr7hEEVz08/YLH7l
	87fvB6uU4bMgFIioK8Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTRc-0005rP-1l; Tue, 15 Oct 2019 20:29:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTRM-0005qw-Df; Tue, 15 Oct 2019 20:29:09 +0000
Received: from remote.shanghaihotelholland.com ([46.44.148.63]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iKTRI-00086W-DK; Tue, 15 Oct 2019 22:29:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
Date: Tue, 15 Oct 2019 22:29:03 +0200
Message-ID: <5173392.uhhkXBHGmO@phil>
In-Reply-To: <45588ab8-2a6c-3f29-61ff-bccf8d6fb291@web.de>
References: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
 <2588953.0pqkEXWxhN@phil> <45588ab8-2a6c-3f29-61ff-bccf8d6fb291@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_132908_611917_F4FD4AF9 
X-CRM114-Status: GOOD (  16.23  )
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

QW0gTW9udGFnLCAxNC4gT2t0b2JlciAyMDE5LCAwOToyNjo0MSBDRVNUIHNjaHJpZWIgTWFya3Vz
IEVsZnJpbmc6Cj4gPiBUaGUgb3RoZXIgb3B0aW9uIHdvdWxkIGJlIHRvIHBhbmljLCBidXQgdGhl
IGtlcm5lbCBzaG91bGQgbm90Cj4gPiBwYW5pYyBpZiBvdGhlciBvcHRpb25zIGFyZSBhdmFpbGFi
bGUgLSBhbmQgY29udGludWluZyB3aXRoIGEgc3RhdGljCj4gPiBwbGwgZnJlcXVlbmN5IGlzIGxl
c3MgaW52YXNpdmUgaW4gdGhlIGVycm9yIGNhc2UuCj4gCj4gSSB3b3VsZCBsaWtlIHRvIHBvaW50
IG91dCB0aGF0IHRoaXMgZnVuY3Rpb24gaW1wbGVtZW50YXRpb24gY29udGFpbnMKPiB0aGUgZm9s
bG93aW5nIHNvdXJjZSBjb2RlIGFscmVhZHkuCj4gCj4g4oCmCj4gCS8qIG5hbWUgdGhlIGFjdHVh
bCBwbGwgKi8KPiAJc25wcmludGYocGxsX25hbWUsIHNpemVvZihwbGxfbmFtZSksICJwbGxfJXMi
LCBuYW1lKTsKPiAKPiAJcGxsID0ga3phbGxvYyhzaXplb2YoKnBsbCksIEdGUF9LRVJORUwpOwo+
IAlpZiAoIXBsbCkKPiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+IOKApgo+IAo+IAo+IAo+
IOKApgo+ID4gKysrIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jCj4gPiBAQCAtOTA5
LDE0ICs5MDksMTYgQEAgc3RydWN0IGNsayAqcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX3BsbChzdHJ1
Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpjdHgsCj4g4oCmCj4gPiAtCQlwbGwtPnJhdGVfY291
bnQgPSBsZW47Cj4gPiAgCQlwbGwtPnJhdGVfdGFibGUgPSBrbWVtZHVwKHJhdGVfdGFibGUsCj4g
PiAgCQkJCQlwbGwtPnJhdGVfY291bnQgKgo+ID4gIAkJCQkJc2l6ZW9mKHN0cnVjdCByb2NrY2hp
cF9wbGxfcmF0ZV90YWJsZSksCj4gPiAgCQkJCQlHRlBfS0VSTkVMKTsKPiA+IC0JCVdBUk4oIXBs
bC0+cmF0ZV90YWJsZSwKPiA+IC0JCQkiJXM6IGNvdWxkIG5vdCBhbGxvY2F0ZSByYXRlIHRhYmxl
IGZvciAlc1xuIiwKPiA+IC0JCQlfX2Z1bmNfXywgbmFtZSk7Cj4gPiArCj4gPiArCQkvKgo+ID4g
KwkJICogU2V0IG51bSByYXRlcyB0byAwIGlmIGttZW1kdXAgZmFpbHMuIFRoYXQgd2F5IHRoZSBj
bG9jawo+ID4gKwkJICogYXQgbGVhc3QgY2FuIHJlcG9ydCBpdHMgcmF0ZSBhbmQgc3RheXMgdXNh
YmxlLgo+ID4gKwkJICovCj4gPiArCQlwbGwtPnJhdGVfY291bnQgPSBwbGwtPnJhdGVfdGFibGUg
PyBsZW4gOiAwOwo+IAo+IENhbiBhbiBvdGhlciBlcnJvciBoYW5kbGluZyBzdHJhdGVneSBtYWtl
IHNlbnNlIG9jY2FzaW9uYWxseT8KPgo+IAo+IOKApgo+IAkJaWYgKCFwbGwtPnJhdGVfdGFibGUp
IHsKPiAJCQljbGtfdW5yZWdpc3RlcihtdXhfY2xrKTsKPiAJCQltdXhfY2xrID0gRVJSX1BUUigt
RU5PTUVNKTsKPiAJCQlnb3RvIGVycl9tdXg7Cj4gCQl9Cj4g4oCmCj4gCj4gCj4gV291bGQgeW91
IGxpa2UgdG8gYWRqdXN0IHN1Y2ggZXhjZXB0aW9uIGhhbmRsaW5nIGFub3RoZXIgYml0PwoKTm9w
ZS4KClRoZSBiaWcgZGlmZmVyZW5jZSBpcyB0aGF0IGNsb2NrcyByZWx5IGhlYXZpbHkgb24gdGhl
aXIgbmFtZXMgdG8gZXN0YWJsaXNoCnRoZSBjbG9jayB0cmVlIHBhcmVudHNoaXAuIFNvIHRoZSBQ
TEwgY2Fubm90IHdvcmsgd2l0aG91dCB0aGUgbmFtZQpidXQgY2FuIHByb3ZpZGUgc29tZSBtZWFu
cyBvZiBmdW5jdGlvbmFsaXR5IHdpdGhvdXQgdGhlIHJhdGUtdGFibGUKZXNwZWNpYWxseSBhcyBi
b290bG9hZGVycyBkbyBnZW5lcmFsbHkgaW5pdGlhbGl6ZSBhIFBMTCB0byBzb21lIGZvcm0gb2YK
c2FuZSBmcmVxdWVuY3kuCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
