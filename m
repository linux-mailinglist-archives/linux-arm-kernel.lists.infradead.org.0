Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F675638A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uwx0HYFknRZJC/FGv9C4L9UWuABOMtd5+fmPHK2xfHk=; b=Og4GMYIHrKBX0J
	zSRbKCCeYj/EY1hKLZFGVpJ60yRCLV2uMluu2K5VA4UFLM0JvR5OI3iE1E4srpblX2BF7XFmiPSA7
	CUnspa8ucECIGc0ySRpe6pEJzZmYgCgcuNyHWlqvLjjo1BXZQi7b6HNybkImfcASSf6JyJg9O4KEI
	gzDWY2cx97UjJAG4J9WvG6I8ET6vayE3JB66Gb854ykD1HIWc35CVfO2F0cNQQ2QhDyD6hG7giM6U
	KGsHYfOPFno6ZMWqjkNxXPZZrSVV3O3jgAgZ98UXNp1yfmL/TeG1hi2hUwgpQkd+ocZjyItPkd67H
	PwI/cnFpUKSw6xbbP9mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hks54-0004Rh-54; Tue, 09 Jul 2019 15:30:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hks4u-0004RI-M1
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:30:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE3F32B;
 Tue,  9 Jul 2019 08:30:44 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F09C3F246;
 Tue,  9 Jul 2019 08:30:43 -0700 (PDT)
Subject: Re: Could info leak in preserve_iwmmxt_context() ?
To: Yang Yingliang <yangyingliang@huawei.com>
References: <5D24AD2E.8080102@huawei.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <6e4deac8-9f9b-f5d1-977a-5a46de109418@arm.com>
Date: Tue, 9 Jul 2019 16:30:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5D24AD2E.8080102@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_083048_768577_150B2B1E 
X-CRM114-Status: GOOD (  18.76  )
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFuZywKCk9uIDA5LzA3LzIwMTkgMTY6MDUsIFlhbmcgWWluZ2xpYW5nIHdyb3RlOgo+IEhp
LCBKdWxpZW4KPiAKPiBJbiB0aGlzIGNvbW1pdCA3MzgzOTc5OGFmN2UgKCJBUk06IDg3OTAvMTog
c2lnbmFsOiBhbHdheXMgdXNlCj4gX19jb3B5X3RvX3VzZXIgdG8gc2F2ZSBpd21teHQgY29udGV4
dCIpOgo+IAo+IC0tLSBhL2FyY2gvYXJtL2tlcm5lbC9zaWduYWwuYwo+ICsrKyBiL2FyY2gvYXJt
L2tlcm5lbC9zaWduYWwuYwo+IEBAIC03Nyw4ICs3Nyw2IEBAIHN0YXRpYyBpbnQgcHJlc2VydmVf
aXdtbXh0X2NvbnRleHQoc3RydWN0Cj4gaXdtbXh0X3NpZ2ZyYW1lIF9fdXNlciAqZnJhbWUpCj4g
wqDCoMKgwqDCoMKgwqDCoCBrZnJhbWUtPm1hZ2ljID0gSVdNTVhUX01BR0lDOwo+IMKgwqDCoMKg
wqDCoMKgwqAga2ZyYW1lLT5zaXplID0gSVdNTVhUX1NUT1JBR0VfU0laRTsKPiDCoMKgwqDCoMKg
wqDCoMKgIGl3bW14dF90YXNrX2NvcHkoY3VycmVudF90aHJlYWRfaW5mbygpLCAma2ZyYW1lLT5z
dG9yYWdlKTsKPiAtCj4gLcKgwqDCoMKgwqDCoMKgIGVyciA9IF9fY29weV90b191c2VyKGZyYW1l
LCBrZnJhbWUsIHNpemVvZigqZnJhbWUpKTsKPiDCoMKgwqDCoCB9IGVsc2Ugewo+IMKgwqDCoMKg
wqDCoMKgwqAgLyoKPiDCoMKgwqDCoMKgwqDCoMKgwqAgKiBGb3IgYnVnLWNvbXBhdGliaWxpdHkg
d2l0aCBvbGRlciBrZXJuZWxzLCBzb21lIHNwYWNlCj4gQEAgLTg2LDEwICs4NCwxNCBAQCBzdGF0
aWMgaW50IHByZXNlcnZlX2l3bW14dF9jb250ZXh0KHN0cnVjdAo+IGl3bW14dF9zaWdmcmFtZSBf
X3VzZXIgKmZyYW1lKQo+IMKgwqDCoMKgwqDCoMKgwqDCoCAqIFNldCB0aGUgbWFnaWMgYW5kIHNp
emUgYXBwcm9wcmlhdGVseSBzbyB0aGF0IHByb3Blcmx5Cj4gwqDCoMKgwqDCoMKgwqDCoMKgICog
d3JpdHRlbiB1c2Vyc3BhY2UgY2FuIHNraXAgaXQgcmVsaWFibHk6Cj4gwqDCoMKgwqDCoMKgwqDC
oMKgICovCj4gLcKgwqDCoMKgwqDCoMKgIF9fcHV0X3VzZXJfZXJyb3IoRFVNTVlfTUFHSUMsICZm
cmFtZS0+bWFnaWMsIGVycik7Cj4gLcKgwqDCoMKgwqDCoMKgIF9fcHV0X3VzZXJfZXJyb3IoSVdN
TVhUX1NUT1JBR0VfU0laRSwgJmZyYW1lLT5zaXplLCBlcnIpOwo+ICvCoMKgwqDCoMKgwqDCoCAq
a2ZyYW1lID0gKHN0cnVjdCBpd21teHRfc2lnZnJhbWUpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAubWFnaWMgPSBEVU1NWV9NQUdJQywKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAuc2l6
ZcKgID0gSVdNTVhUX1NUT1JBR0VfU0laRSwKPiArwqDCoMKgwqDCoMKgwqAgfTsKPiAKPiBUaGUg
c3RvcmFnZSBtZW1iZXIgb2Yga2ZyYW1lIGlzIHVuaW5pdGlhbGl6ZWQsIGl0IHNlZW1zIHdpbGwg
bGVhZCBhIGluZm8KPiBsZWFrIHRvIHVzZXJzcGFjZSA/Cj4gCj4gSW4gc2VjdGlvbiAyLjQuMi4z
IEluaXRpYWxpemluZyBTdHJ1Y3R1cmUgTWVtYmVycyBvZiBnbnUtYy1tYW51YWwsIGl0Cj4gaGFz
IG5vIHNwZWNpZmljIGJlaGF2aW9yCj4gdG8gZGVmaW5lIHRoZSB1bmluaXRpYWxpemVkIG1lbWJl
ci4KPiAKPiBQbGVhc2UgY29ycmVjdCBtZSBpZiBJIGFtIHdyb25nLgo+IAoKTXkgdW5kZXJzdGFu
ZGluZyBpcyB0aGF0IHdoZW4gdXNpbmcgYSBjb21wb3VuZCBpbml0aWFsaXplciAoZWl0aGVyIGF0
CnZhcmlhYmxlIGRlY2xhcmF0aW9uIG9yIGJ5IGFzc2lnbmluZyBhIGNvbXBvdW5kIGxpdGVyYWwg
bGlrZSBpbiB0aGlzCmNhc2UpLCB0aGUgdW5zcGVjaWZpZWQgbWVtYmVycyBnZXQgaW5pdGlhbGl6
ZWQgdG8gMC4KCkluIHRoZSBHTlUtQyBzZWN0aW9uIHlvdSBtZW50aW9uZWQgWzFdICwgdGhlcmUg
aXMgYW4gZXhhbXBsZToKCiAgICBZb3UgY2FuIGFsc28gaW5pdGlhbGl6ZSBmZXdlciB0aGFuIGFs
bCBvZiBhIHN0cnVjdHVyZSB2YXJpYWJsZeKAmXMKICAgIG1lbWJlcnM6CgogICAgc3RydWN0IHBv
aW50eQogICAgICB7CiAgICAgICAgaW50IHgsIHk7CiAgICAgICAgY2hhciAqcDsKICAgICAgfTsK
ICAgIHN0cnVjdCBwb2ludHkgZmlyc3RfcG9pbnR5ID0geyA1IH07CgogICAgSGVyZSwgeCBpcyBp
bml0aWFsaXplZCB3aXRoIDUsIHkgaXMgaW5pdGlhbGl6ZWQgd2l0aCAwLCBhbmQgcCBpcwogICAg
aW5pdGlhbGl6ZWQgd2l0aCBOVUxMLiBUaGUgcnVsZSBoZXJlIGlzIHRoYXQgeSBhbmQgcCBhcmUg
aW5pdGlhbGl6ZWQKICAgIGp1c3QgYXMgdGhleSB3b3VsZCBiZSBpZiB0aGV5IHdlcmUgc3RhdGlj
IHZhcmlhYmxlcy4KCgpTbyBldmVuIHdoZW4gdGhlIG1hbnVhbCByZWZlcnMgdG8gbm90IGluaXRp
YWxpemluZyBtZW1iZXJzLCBJIHRoaW5rIGl0Cmp1c3QgbWVhbnMgdGhhdCB0aGV5IGFyZSBub3Qg
ZXhwbGljaXRseSBpbml0aWFsaXplZCwgaS5lLiBieSB0aGUKZGV2ZWxvcGVyLiBBbGwgdGhlIG1l
bWJlcnMgb2YgdGhlIHN0cnVjdHVyZSBzdGlsbCBnZXRzIGluaXRpYWxpemVkIHRvCmtub3duIHZh
bHVlcyB3aGVuIGRvaW5nIGFuIGFzc2lnbm1lbnQgdG8gdGhlIHdob2xlIHN0cnVjdHVyZS4KCk9u
ZSB0aGluZyB0aGF0IFJ1c3NlbGwgZGlkIG1lbnRpb24gd2FzIHRoYXQgaW5pdGlhbGl6YXRpb24g
b2YgcGFkZGluZwpieXRlcyAodGhhdCBhcmVuJ3QgcGFydCBvZiBhIHN0cnVjdHVyZSBtZW1iZXIg
YnV0IHN0aWxsIHdpdGhpbiB0aGUKc3RydWN0dXJlJ3Mgc3BhY2UpIGlzIHVuc3BlY2lmaWVkLiBC
dXQgaW4gdGhlIGNhc2Ugb2YgaXdtbXh0X3NpZ2ZyYW1lCnRoZXJlIGlzIG5vIHBhZGRpbmcuCgpb
MV0KaHR0cHM6Ly93d3cuZ251Lm9yZy9zb2Z0d2FyZS9nbnUtYy1tYW51YWwvZ251LWMtbWFudWFs
Lmh0bWwjSW5pdGlhbGl6aW5nLVN0cnVjdHVyZS1NZW1iZXJzCgpDaGVlcnMsCgotLSAKSnVsaWVu
IFRoaWVycnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
