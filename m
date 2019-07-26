Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534F4765BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0fqGH8GwigLkyxMzHqnQ3HNJccn2PYC0JfvUasCI2U=; b=aWfgiU+5ZDTKmL
	YkKzfsu31I76qtTeNLaJp8rBIUDvuHdMYhZRc2h3a7dbanO3Yw7JGbVSsgmBL7b/1gBDsYnuFrIRt
	+2rFGBBpeh68kcDCDk59mm8ZebPzmgOmrHmihHa4f5sKW9uQJeN8OyhGMQ8zccyc3P6hS972BjzSi
	upxd0UPBqyFPxIi9CTWwcAZIN+zL5wQCiLqRc5rsoNFU1oRAasVjWBOU0Rd/l0td05kKmcQ1wMW9Q
	9arwhYvVhPCDDok7xtYOeRrfshzpXvVbBst/YpSEudUemkBp5MumR4d76hko1YM0PHYOvWjlZWaRr
	ZlcZ7hj0bLS50pbhxy0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzMd-0004QR-ET; Fri, 26 Jul 2019 12:30:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzMG-0004GA-CL
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:30:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5430D337;
 Fri, 26 Jul 2019 05:29:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86E413F694;
 Fri, 26 Jul 2019 05:29:58 -0700 (PDT)
Date: Fri, 26 Jul 2019 13:29:56 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH] arm_pmu: Mark expected switch fall-through
Message-ID: <20190726122956.GC26088@lakrids.cambridge.arm.com>
References: <20190726112737.19309-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726112737.19309-1-anders.roxell@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_053000_465017_8D78A777 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: lorenzo.pieralisi@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mjc6MzdQTSArMDIwMCwgQW5kZXJzIFJveGVsbCB3
cm90ZToKPiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBieSBkZWZhdWx0
IHRoZSBmb2xsb3dpbmcgd2FybmluZwo+IHdhcyBzdGFydGluZyB0byBzaG93IHVwOgo+IAo+IC4u
L2RyaXZlcnMvcGVyZi9hcm1fcG11LmM6IEluIGZ1bmN0aW9uIOKAmGNwdV9wbV9wbXVfbm90aWZ5
4oCZOgo+IC4uL2RyaXZlcnMvcGVyZi9hcm1fcG11LmM6NzI2OjM6IHdhcm5pbmc6IHRoaXMgc3Rh
dGVtZW50IG1heSBmYWxsCj4gIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ICAg
IGNwdV9wbV9wbXVfc2V0dXAoYXJtcG11LCBjbWQpOwo+ICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+Cj4gLi4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzo3Mjc6Mjogbm90ZTogaGVyZQo+
ICAgY2FzZSBDUFVfUE1fRU5URVJfRkFJTEVEOgo+ICAgXn5+fgo+IAo+IFJld29yayBzbyB0aGF0
IHRoZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJvdWdoLgo+IAo+IEZpeGVz
OiBkOTM1MTJlZjBmMGUgKCJNYWtlZmlsZTogR2xvYmFsbHkgZW5hYmxlIGZhbGwtdGhyb3VnaCB3
YXJuaW5nIikKPiBTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxp
bmFyby5vcmc+Cj4gLS0tCj4gCj4gSSdtIG5vdCBjb252aW5jZWQgdGhhdCB0aGlzIGlzIHRoZSBj
b3JyZWN0IHBhdGNoIHRvIGZpeCB0aGlzIGlzc3VlLgo+IEhvd2V2ZXIsIEkgY2FuJ3Qgc2VlIHdo
eSB3ZSBkbyAnYXJtcG11LT5zdGFydChhcm1wbXUpOycgb25seSBpbiAnY2FzZQo+IENQVV9QTV9F
TlRFUl9GQUlMRUQnIGFuZCB3aHkgd2Ugbm90IGNhbGwgZnVuY3Rpb24gY3B1X3BtX3BtdV9zZXR1
cCgpCj4gdGhlcmUgYWxzbywgc2luY2UgaW4gY3B1X3BtX3BtdV9zZXR1cCgpIGhhcyBhIGNhc2Ug
cHJlcGFyZWQgZm9yCj4gQ1BVX1BNX0VOVEVSX0ZBSUxFRC4KCkkgYWdyZWUsIHRoaW5rIHRoYXQg
c2hvdWxkIGJlOgoKCWNhc2UgQ1BVX1BNX0VYSVQ6CgljYXNlIENQVV9QTV9FTlRFUl9GQUlMRUQ6
CgkJY3B1X3BtX3BtdV9zZXR1cChhcm1wbXUsIGNtZCk7CgkJYXJtcG11LT5zdGFydChhcm1wbXUp
OwoJCWJyZWFrOwoKLi4uIHNvIHRoYXQgd2UgcmUtc3RhcnQgdGhlIGV2ZW50cyBiZWZvcmUgd2Ug
c3RhcnQgdGhlIFBNVS4KClRoYXQgd291bGQgYmUgYSBmaXggZm9yIGNvbW1pdDoKCiAgZGE0ZTRm
MThhZmUwZjM3MiAoImRyaXZlcnMvcGVyZjogYXJtX3BtdTogaW1wbGVtZW50IENQVV9QTSBub3Rp
ZmllciIpCiAKVGhhbmtzLApNYXJrLgoKPiAKPiAgZHJpdmVycy9wZXJmL2FybV9wbXUuYyB8IDEg
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wZXJmL2FybV9wbXUuYyBiL2RyaXZlcnMvcGVyZi9hcm1fcG11LmMKPiBpbmRleCAyZDA2
YjgwOTVhMTkuLjQ2NWExNTcwNWJhYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BlcmYvYXJtX3Bt
dS5jCj4gKysrIGIvZHJpdmVycy9wZXJmL2FybV9wbXUuYwo+IEBAIC03MjQsNiArNzI0LDcgQEAg
c3RhdGljIGludCBjcHVfcG1fcG11X25vdGlmeShzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKmIsIHVu
c2lnbmVkIGxvbmcgY21kLAo+ICAJCWJyZWFrOwo+ICAJY2FzZSBDUFVfUE1fRVhJVDoKPiAgCQlj
cHVfcG1fcG11X3NldHVwKGFybXBtdSwgY21kKTsKPiArCQkvKiBGYWxsIHRocm91Z2ggKi8KPiAg
CWNhc2UgQ1BVX1BNX0VOVEVSX0ZBSUxFRDoKPiAgCQlhcm1wbXUtPnN0YXJ0KGFybXBtdSk7Cj4g
IAkJYnJlYWs7Cj4gLS0gCj4gMi4yMC4xCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
