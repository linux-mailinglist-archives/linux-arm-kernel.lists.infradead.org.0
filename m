Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D2F76C77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 17:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAfkSFE0hkRO4dqtL2b8zj1hH/0XYH7PJBY0cFuBrns=; b=PLT/qQsbbz9awT
	WdzyVMdCHjCxOVQnstAo2Nm27NoxWOQhdEjNBfjiJYgV1tMC/Z6j0LYzkZqmMEfBwMwU32OpYi4GW
	0SNuhFw6HJyiB5gJhILxGW1rHzELp4xFwE/XiWEXBAhhpGAQwl+QnYYl4QDE3o81je+pT6HCi5zbn
	rKhdSISry8m0bzZ3Krv9txwOU+rdTGNJJmPvMqXz+7LgjnSsuLxc17Q2UT7eF6J3UOr2+NKsT82oT
	pZwj+kkoZsHJwHyCuKg0G1BY4x8xHV80FzLl6jaxvEhukL29WNHgfepw8vIjU6H7b0MhcWq7M/ahm
	8OX34rjDjrjkMoibMe2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr1zY-0000Bi-Ev; Fri, 26 Jul 2019 15:18:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr1zO-0000Aw-IQ
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 15:18:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3959D337;
 Fri, 26 Jul 2019 08:18:31 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BC0D3F71F;
 Fri, 26 Jul 2019 08:18:30 -0700 (PDT)
Date: Fri, 26 Jul 2019 16:18:25 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm_pmu: Mark expected switch fall-through
Message-ID: <20190726151825.GA12552@e121166-lin.cambridge.arm.com>
References: <20190726112737.19309-1-anders.roxell@linaro.org>
 <20190726122956.GC26088@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726122956.GC26088@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_081834_655212_DB6650BB 
X-CRM114-Status: GOOD (  21.31  )
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
Cc: will@kernel.org, Anders Roxell <anders.roxell@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mjk6NTZQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjI3OjM3UE0gKzAyMDAsIEFuZGVycyBS
b3hlbGwgd3JvdGU6Cj4gPiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBi
eSBkZWZhdWx0IHRoZSBmb2xsb3dpbmcgd2FybmluZwo+ID4gd2FzIHN0YXJ0aW5nIHRvIHNob3cg
dXA6Cj4gPiAKPiA+IC4uL2RyaXZlcnMvcGVyZi9hcm1fcG11LmM6IEluIGZ1bmN0aW9uIOKAmGNw
dV9wbV9wbXVfbm90aWZ54oCZOgo+ID4gLi4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzo3MjY6Mzog
d2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwKPiA+ICB0aHJvdWdoIFstV2ltcGxpY2l0
LWZhbGx0aHJvdWdoPV0KPiA+ICAgIGNwdV9wbV9wbXVfc2V0dXAoYXJtcG11LCBjbWQpOwo+ID4g
ICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+IC4uL2RyaXZlcnMvcGVyZi9hcm1f
cG11LmM6NzI3OjI6IG5vdGU6IGhlcmUKPiA+ICAgY2FzZSBDUFVfUE1fRU5URVJfRkFJTEVEOgo+
ID4gICBefn5+Cj4gPiAKPiA+IFJld29yayBzbyB0aGF0IHRoZSBjb21waWxlciBkb2Vzbid0IHdh
cm4gYWJvdXQgZmFsbC10aHJvdWdoLgo+ID4gCj4gPiBGaXhlczogZDkzNTEyZWYwZjBlICgiTWFr
ZWZpbGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxsLXRocm91Z2ggd2FybmluZyIpCj4gPiBTaWduZWQt
b2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFyby5vcmc+Cj4gPiAtLS0K
PiA+IAo+ID4gSSdtIG5vdCBjb252aW5jZWQgdGhhdCB0aGlzIGlzIHRoZSBjb3JyZWN0IHBhdGNo
IHRvIGZpeCB0aGlzIGlzc3VlLgo+ID4gSG93ZXZlciwgSSBjYW4ndCBzZWUgd2h5IHdlIGRvICdh
cm1wbXUtPnN0YXJ0KGFybXBtdSk7JyBvbmx5IGluICdjYXNlCj4gPiBDUFVfUE1fRU5URVJfRkFJ
TEVEJyBhbmQgd2h5IHdlIG5vdCBjYWxsIGZ1bmN0aW9uIGNwdV9wbV9wbXVfc2V0dXAoKQo+ID4g
dGhlcmUgYWxzbywgc2luY2UgaW4gY3B1X3BtX3BtdV9zZXR1cCgpIGhhcyBhIGNhc2UgcHJlcGFy
ZWQgZm9yCj4gPiBDUFVfUE1fRU5URVJfRkFJTEVELgo+IAo+IEkgYWdyZWUsIHRoaW5rIHRoYXQg
c2hvdWxkIGJlOgo+IAo+IAljYXNlIENQVV9QTV9FWElUOgo+IAljYXNlIENQVV9QTV9FTlRFUl9G
QUlMRUQ6Cj4gCQljcHVfcG1fcG11X3NldHVwKGFybXBtdSwgY21kKTsKPiAJCWFybXBtdS0+c3Rh
cnQoYXJtcG11KTsKPiAJCWJyZWFrOwo+IAo+IC4uLiBzbyB0aGF0IHdlIHJlLXN0YXJ0IHRoZSBl
dmVudHMgYmVmb3JlIHdlIHN0YXJ0IHRoZSBQTVUuCj4gCj4gVGhhdCB3b3VsZCBiZSBhIGZpeCBm
b3IgY29tbWl0Ogo+IAo+ICAgZGE0ZTRmMThhZmUwZjM3MiAoImRyaXZlcnMvcGVyZjogYXJtX3Bt
dTogaW1wbGVtZW50IENQVV9QTSBub3RpZmllciIpCgpZZXMgdGhhdCdzIGNvcnJlY3QsIGFwb2xv
Z2llcy4gUHJvYmFibHkgd2UgZGlkIG5vdCBoaXQgaXQgYmVjYXVzZSBDUFUgUE0Kbm90aWZpZXIg
ZW50cnkgZmFpbHVyZXMgYXJlIGEgcHJldHR5IHJhcmUgZXZlbnQ7IHJlZ2FyZGxlc3M6CgpBY2tl
ZC1ieTogTG9yZW56byBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+CgpJIGNh
biBzZW5kIHRoZSB1cGRhdGVkIGZpeCwganVzdCBsZXQgbWUga25vdy4KClRoYW5rcywKTG9yZW56
bwoKPiBUaGFua3MsCj4gTWFyay4KPiAKPiA+IAo+ID4gIGRyaXZlcnMvcGVyZi9hcm1fcG11LmMg
fCAxICsKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGVyZi9hcm1fcG11LmMgYi9kcml2ZXJzL3BlcmYvYXJtX3BtdS5jCj4g
PiBpbmRleCAyZDA2YjgwOTVhMTkuLjQ2NWExNTcwNWJhYiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvcGVyZi9hcm1fcG11LmMKPiA+ICsrKyBiL2RyaXZlcnMvcGVyZi9hcm1fcG11LmMKPiA+IEBA
IC03MjQsNiArNzI0LDcgQEAgc3RhdGljIGludCBjcHVfcG1fcG11X25vdGlmeShzdHJ1Y3Qgbm90
aWZpZXJfYmxvY2sgKmIsIHVuc2lnbmVkIGxvbmcgY21kLAo+ID4gIAkJYnJlYWs7Cj4gPiAgCWNh
c2UgQ1BVX1BNX0VYSVQ6Cj4gPiAgCQljcHVfcG1fcG11X3NldHVwKGFybXBtdSwgY21kKTsKPiA+
ICsJCS8qIEZhbGwgdGhyb3VnaCAqLwo+ID4gIAljYXNlIENQVV9QTV9FTlRFUl9GQUlMRUQ6Cj4g
PiAgCQlhcm1wbXUtPnN0YXJ0KGFybXBtdSk7Cj4gPiAgCQlicmVhazsKPiA+IC0tIAo+ID4gMi4y
MC4xCj4gPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
