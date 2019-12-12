Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB7811CF70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 15:11:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OygR/QeSyS0mZsVsWAbQdWLB9x71B1xEfmqkt8FBAco=; b=QQrdMuuYNSpAy8
	XBMVw6JNHk8cJdYXVqW70ClB0K5fJxfK52O+svDSbOXTBAp+H2T+1tuoFJYI9LETAIVE3UHA0GnbD
	bq2rJcNp3Go7hbTI7OSWgFwg0qWIA04bhBn/pwxdffDbPBkEH7e16q59+8oXFwFmxNoX3LErTnLcc
	LKZ1itfu0zDOIZFnyy4R1GFUHR5i5Qntg1jBXYZoIZUKU3skYkBMXjJQ/66qDRYqhrmYEz2iwWBkH
	ni9YzxsY86dEUAW6PZSJTGdWF9jgw+q5Gljf4zoeiX4+uqmiW8NRBYTRm9mxyyGes4PRmJ1/ec8zL
	HAc6dfiFkkZK88FySPGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPBG-0004DN-6O; Thu, 12 Dec 2019 14:11:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifPB7-0004CW-Uc; Thu, 12 Dec 2019 14:10:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 90F17ACE1;
 Thu, 12 Dec 2019 14:10:51 +0000 (UTC)
Subject: Re: [RFC 19/25] leds: tm1628: Add 7-segment display support
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-20-afaerber@suse.de>
 <CAMuHMdWeqoqQBtsdN2Q=Urc22Ezj5nBRFPk1_V5gvGV9BGuMkw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <a9bacb0d-eccf-ec42-5d09-ce042aff2f41@suse.de>
Date: Thu, 12 Dec 2019 15:10:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWeqoqQBtsdN2Q=Urc22Ezj5nBRFPk1_V5gvGV9BGuMkw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_061054_131924_5C7411AB 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-realtek-soc@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Murphy <dmurphy@ti.com>, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VlcnQsCgpBbSAxMi4xMi4xOSB1bSAwOTozMyBzY2hyaWViIEdlZXJ0IFV5dHRlcmhvZXZl
bjoKPiBPbiBUaHUsIERlYyAxMiwgMjAxOSBhdCA0OjQyIEFNIEFuZHJlYXMgRsOkcmJlciA8YWZh
ZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cj4+IERldGVjdCBEVCBjaGlsZCBub2RlcyBjb3ZlcmluZyBt
b3JlIHRoYW4gb25lIExFRCBjb21wb25lbnQgYW5kIGltcGxlbWVudAo+PiBhIHRleHQgdG8gNy1z
ZWdtZW50IGRpc3BsYXkgbWFwcGluZy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6Ry
YmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+IAo+PiAtLS0gYS9kcml2ZXJzL2xlZHMvbGVkcy10bTE2
MjguYwo+PiArKysgYi9kcml2ZXJzL2xlZHMvbGVkcy10bTE2MjguYwo+IAo+PiArc3RhdGljIGNv
bnN0IHN0cnVjdCB0bTE2Mjhfc3NkX2NoYXIgdG0xNjI4X2NoYXJfc3NkX21hcFtdID0gewo+PiAr
ICAgICAgIHsgJzAnLCBTU0RfVE9QIHwgU1NEX1RPUF9MRUZUIHwgU1NEX1RPUF9SSUdIVCB8Cj4+
ICsgICAgICAgICAgICAgIFNTRF9CT1RUT01fTEVGVCB8IFNTRF9CT1RUT01fUklHSFQgfCBTU0Rf
Qk9UVE9NIH0sCj4gCj4gUGxlYXNlIHVzZSBpbmNsdWRlL3VhcGkvbGludXgvbWFwX3RvXzdzZWdt
ZW50LmgKPiBZZXMsIGl0IGlzIHdlbGwgaGlkZGVuIDstKS4KCk1hbnkgdGhhbmtzIGZvciB0aGF0
IHBvaW50ZXIhIEV2ZW4gbWF0Y2hlcyB0aGUgc2VnbWVudC9iaXQgb3JkZXIgb2YgbXkKZGF0YXNo
ZWV0cy9kZWZpbmVzLgoKVGhlIHNtYWxsIHQgbWF5IGJlIGRpZmZlcmVudCAoVD8pLCBhbmQgSSBk
b24ndCBzZWUgaXQgbWFwcGluZyBjb21iaW5lZApjaGFyYWN0ZXJzIChwYXRjaCAyMi8yNSkuIFRo
ZSByZWNvbW1lbmRlZCBzeXNmcyBtYXBfN3NlZyBhdHRyaWJ1dGUgbWF5CmhlbHAgZGVhbCB3aXRo
IHRoYXQsIGJ1dCBzZWVtcyB0ZXJyaWJseSB1bmhhbmR5IGZvciBteSBidXN5Ym94IGluaXRyZC4K
CkhvcGUgeW91IGFsc28gcmVhZCB0aGUgY292ZXIgbGV0dGVyLCB3aGVyZSBub3QgZmluZGluZyB0
aGlzIGFuZCBtYW55Cm90aGVyIGlzc3VlcyB3ZXJlIGRpc2N1c3NlZC4gSSB3YXMgZXhwZWN0aW5n
IHNvbWUgLmMgZmlsZSBpbiBlaXRoZXIKZHJpdmVycy9sZWRzIG9yIGF1eGRpc3BsYXkgLSBpbnB1
dCBpcyBpbmRlZWQgdW5leHBlY3RlZCBmb3Igb3V0cHV0LgoKU3RpbGwgd29uZGVyaW5nIHdoZXRo
ZXIgd2UgY2FuIHNvbWVob3cgZGVzY3JpYmUgdGhvc2UgIlZGRCIgZGlzcGxheXMgaW4KYSBtb3Jl
IHJldXNhYmxlIHdheSwgbGlrZSB3ZSBkbyBmb3IgTUlQSSBEU0kgcGFuZWxzLgoKQ2hlZXJzLApB
bmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRz
dHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhS
QiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
