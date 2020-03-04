Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F7017926C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:37:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4thEp0k33g1R1pTj2EThaCANRPuqdyjkLCFmbd2VM8s=; b=PMN9oSlk3w1gZK
	nsEr9TmZpdszEo9wMJrXBxP+GZ3Xx1xOcmIt/X21yANC1970GXem51LmLxl5nHVMiiuWdyOLjxsfN
	VSb9lwhdyAEP/vgqHHKkjyoRJNbqQMItHML6uqs6SLP0Z+kJhOkbIerHYYGfeykwc20BM7GRq6yrN
	mlOIXRRlHJE6RMfr/72fOaGt/zyO4H2kqXb2O5GU3FG+i2c9eTHidhjBXhacZVsMD+xJbamTZAhvx
	KNfB4Dn03MgN7MEx9MJN4jrqOL6Q1VXLEhwDOBUEkRU4FdtbGI5XGnyOO0L98YoVDI8+bP4lztMU8
	OBhGYCuBggSrii+t87ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9V94-0002KU-Iu; Wed, 04 Mar 2020 14:37:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9V8u-0002Jy-Vr
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:37:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C35931B;
 Wed,  4 Mar 2020 06:37:00 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 750E13F6CF;
 Wed,  4 Mar 2020 06:36:59 -0800 (PST)
Date: Wed, 4 Mar 2020 14:36:57 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 2/3] arm64: shrink the tramp_alias macro
Message-ID: <20200304143657.GE3575@lakrids.cambridge.arm.com>
References: <20200304093631.191200-2-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304093631.191200-2-remi@remlab.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_063701_072454_12672A37 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMTE6MzY6MzBBTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291
cm1vbnQgd3JvdGU6Cj4gRnJvbTogUmVtaSBEZW5pcy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3Vy
bW9udEBodWF3ZWkuY29tPgo+IAo+IEFsaWFzZXMgc2hvdWxkIGJlIG5lZ2F0aXZlIDQ4LWJpdHMg
dmFsdWVzLiBUaGV5IGNhbiBiZSBnZW5lcmF0ZWQgd2l0aAo+IDMgaW5zdHJ1Y3Rpb25zOiBNT1ZO
IChsc2wgMzIpLCBNT1ZLIChsc2wgMSkgYW5kIE1PVksuCj4gCj4gU28gZmFyLCB0aGUgbW92X3Eg
bWFjcm8gc2V0IGJpdHMgNjMtMTIsIGFuZCBhIHNlcGFyYXRlIEFERCBpbnN0cnVjdGlvbgo+IHNl
dHMgdGhlIGxvdyAxMiBiaXRzLiBUaGlzIHBhdGNoIHRha2VzIHRoZSBsYXN0IE1PVksgb3V0IG9m
IHRoZSBtb3ZfcQo+IG1hY3JvLCBhbmQgbWVyZ2VzIGl0IHdpdGggdGhlIEFERCBpbnN0cnVjdGlv
bi4gKFRoaXMgZGVwZW5kcyBvbiB0aGUKPiBlYXJsaWVyIG1vdl9xIHBhdGNoLikKPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBSZW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJtb250QGh1YXdl
aS5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMgfCA0ICsrLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyBiL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5
LlMKPiBpbmRleCAyMDI1OWU2YTJmZDcuLmFlOTliZjhiYjBhZSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybTY0L2tlcm5lbC9lbnRyeS5TCj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUwo+
IEBAIC0xMjAsOCArMTIwLDggQEAgYWx0ZXJuYXRpdmVfZWxzZV9ub3BfZW5kaWYKPiAgCS5lbmRt
Cj4gIAo+ICAJLm1hY3JvIHRyYW1wX2FsaWFzLCBkc3QsIHN5bQo+IC0JbW92X3EJXGRzdCwgVFJB
TVBfVkFMSUFTCj4gLQlhZGQJXGRzdCwgXGRzdCwgIyhcc3ltIC0gLmVudHJ5LnRyYW1wLnRleHQp
Cj4gKwltb3ZfcQlcZHN0LCAoVFJBTVBfVkFMSUFTIHwgMHhmZmZmKQo+ICsJbW92awlcZHN0LCAj
KFRSQU1QX1ZBTElBUyArIFxzeW0gLSAuZW50cnkudHJhbXAudGV4dCkgJiAweGZmZmYKPiAgCS5l
bmRtCgpJIHRoaW5rIHRoaXMgaXMgbW9yZSBsZWdpYmxlIGFzLWlzLCBhbmQgd291bGQgcHJlZmVy
IHRvIGxlYXZlIGl0IHRoYXQKd2F5LgoKVGhhbmtzLApNYXJrLgoKPiAgCj4gIAkvLyBUaGlzIG1h
Y3JvIGNvcnJ1cHRzIHgwLXgzLiBJdCBpcyB0aGUgY2FsbGVyJ3MgZHV0eQo+IC0tIAo+IDIuMjUu
MQo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
