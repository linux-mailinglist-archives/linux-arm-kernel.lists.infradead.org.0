Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F8418A2FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 20:11:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6OOf3h7L1LmHpTdqTls3YIER5h9D/9RC1NBCaEqYScY=; b=nW0tg7e0JuQteNTReLIb6hiFY
	Z11sSMYxkXMb+ah/y3+8Uq9XCueJfyjHpeepT1gwZtlPI6GTJvZ4H5bfWfCkYTupyD3pXYQwKhkPu
	buSfiZ+0mHG3bHjtLb1jmWBgaOYjVDqOgvd2zoDoWSmpDxy+290LFPYkmdQjNiZQ6fSMRMRtrTGzy
	6U3iRlF/53DACy85P+EQB8OmgBbV1aBMqjn8mCAQ8BKYaiC5x+iMDAbxRYv5QRF1zxCdTPiNUSUjH
	2XyKi/ZJUAc0x+IDnW2XwCr4H2U9NNtH7+cl71QMGeitwF9oDspV3UXXKrJ2oYBDqaOL2+v8MbO8D
	pcx2y7odQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEe60-00027b-4j; Wed, 18 Mar 2020 19:11:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEe5r-00026p-Ul
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 19:11:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6795320768;
 Wed, 18 Mar 2020 19:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584558667;
 bh=i8/4x4L6BzJAkJGRo/v8prKLCHA1ASdllNL4i+xuPoM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Dt0nHeg7Qcu0KW7uQbQ2qwUrNujsVAuLeAiJrrKBfvfGCVCeKWWsB3VlZn9e3qlsd
 QyqJnS9r2Z3UhO8B52td/QEWvjPisF6g94G9C+MWp7pHHwNHTABvj0mCKpZDUQqGSq
 HNXZA2KunSE7Uzunjz/1sR2GT5XB7FE8uNPWTvbY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEe5p-00Diha-NV; Wed, 18 Mar 2020 19:11:05 +0000
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 19:11:05 +0000
From: Marc Zyngier <maz@kernel.org>
To: Sungbo Eo <mans0n@gorani.run>
Subject: Re: [PATCH] irqchip/versatile-fpga: Handle chained IRQs properly
In-Reply-To: <bdb90bd8-ede1-63d5-816c-57f6bf0417a4@gorani.run>
References: <20200318170904.1461278-1-mans0n@gorani.run>
 <112cdab389aa9cc30189c7aec0baded2@kernel.org>
 <bdb90bd8-ede1-63d5-816c-57f6bf0417a4@gorani.run>
Message-ID: <002b72cab9896fa5ac76a52e0cb503ff@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mans0n@gorani.run, linux-oxnas@groups.io,
 linus.walleij@linaro.org, tglx@linutronix.de, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 narmstrong@baylibre.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_121108_031585_C035FE57 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-oxnas@groups.io,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0xOCAxODoyMCwgU3VuZ2JvIEVvIHdyb3RlOgo+IEhpIE1hcmMsCj4gCj4gT24g
MjAyMC0wMy0xOSAwMjo0OCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+PiBIaSBTdW5nYm8sCj4+IAo+
PiBPbiAyMDIwLTAzLTE4IDE3OjA5LCBTdW5nYm8gRW8gd3JvdGU6Cj4+PiBFbmNsb3NlIHRoZSBj
aGFpbmVkIGhhbmRsZXIgd2l0aCBjaGFpbmVkX2lycV97ZW50ZXIsZXhpdH0oKSwgc28gdGhhdCAK
Pj4+IHRoZQo+Pj4gbXV4ZWQgaW50ZXJydXB0cyBnZXQgcHJvcGVybHkgYWNrZWQuCj4+PiAKPj4+
IFRoaXMgcGF0Y2ggYWxzbyBmaXhlcyBhIHJlYm9vdCBidWcgb24gT1g4MjAgU29DLCB3aGVyZSB0
aGUgamlmZmllcyAKPj4+IHRpbWVyCj4+PiBpbnRlcnJ1cHQgaXMgbmV2ZXIgYWNrZWQuIFRoZSBr
ZXJuZWwgd2FpdHMgYSBjbG9jayB0aWNrIGZvcmV2ZXIgaW4KPj4+IGNhbGlicmF0ZV9kZWxheV9j
b252ZXJnZSgpLCB3aGljaCBsZWFkcyB0byBhIGJvb3QgaGFuZy4KPj4gCj4+IE5pY2UgY2F0Y2gu
Cj4+IAo+Pj4gCj4+PiBTaWduZWQtb2ZmLWJ5OiBTdW5nYm8gRW8gPG1hbnMwbkBnb3JhbmkucnVu
Pgo+Pj4gQ2M6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPj4+IC0t
LQo+Pj4gwqBkcml2ZXJzL2lycWNoaXAvaXJxLXZlcnNhdGlsZS1mcGdhLmMgfCA5ICsrKysrKysr
LQo+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+
PiAKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNoaXAvaXJxLXZlcnNhdGlsZS1mcGdhLmMK
Pj4+IGIvZHJpdmVycy9pcnFjaGlwL2lycS12ZXJzYXRpbGUtZnBnYS5jCj4+PiBpbmRleCA5Mjg4
NThkYWRhNzUuLjA4ZmFhYjJmZWMzZSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9p
cnEtdmVyc2F0aWxlLWZwZ2EuYwo+Pj4gKysrIGIvZHJpdmVycy9pcnFjaGlwL2lycS12ZXJzYXRp
bGUtZnBnYS5jCj4+PiBAQCAtNiw2ICs2LDcgQEAKPj4+IMKgI2luY2x1ZGUgPGxpbnV4L2lycS5o
Pgo+Pj4gwqAjaW5jbHVkZSA8bGludXgvaW8uaD4KPj4+IMKgI2luY2x1ZGUgPGxpbnV4L2lycWNo
aXAuaD4KPj4+ICsjaW5jbHVkZSA8bGludXgvaXJxY2hpcC9jaGFpbmVkX2lycS5oPgo+Pj4gwqAj
aW5jbHVkZSA8bGludXgvaXJxY2hpcC92ZXJzYXRpbGUtZnBnYS5oPgo+Pj4gwqAjaW5jbHVkZSA8
bGludXgvaXJxZG9tYWluLmg+Cj4+PiDCoCNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPj4+IEBA
IC02OCwxMiArNjksMTUgQEAgc3RhdGljIHZvaWQgZnBnYV9pcnFfdW5tYXNrKHN0cnVjdCBpcnFf
ZGF0YSAqZCkKPj4+IAo+Pj4gwqBzdGF0aWMgdm9pZCBmcGdhX2lycV9oYW5kbGUoc3RydWN0IGly
cV9kZXNjICpkZXNjKQo+Pj4gwqB7Cj4+PiArwqDCoMKgIHN0cnVjdCBpcnFfY2hpcCAqY2hpcCA9
IGlycV9kZXNjX2dldF9jaGlwKGRlc2MpOwo+Pj4gwqDCoMKgwqAgc3RydWN0IGZwZ2FfaXJxX2Rh
dGEgKmYgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+Pj4gwqDCoMKgwqAgdTMy
IHN0YXR1cyA9IHJlYWRsKGYtPmJhc2UgKyBJUlFfU1RBVFVTKTsKPj4+IAo+Pj4gK8KgwqDCoCBj
aGFpbmVkX2lycV9lbnRlcihjaGlwLCBkZXNjKTsKPj4+ICsKPj4gCj4+IEl0J3MgcHJvYmFibHkg
bm90IGEgYmlnIGRlYWwsIGJ1dCBJJ20gbm90IGZvbmQgb2Ygc3RhcnRpbmcgdGFsa2luZyB0bwo+
PiB0aGUgbXV4aW5nIGlycWNoaXAgYmVmb3JlIGhhdmluZyBkb25lIHRoZSBjaGFpbmVkX2lycV9l
bnRlcigpIGNhbGwuCj4+IAo+PiBNb3ZpbmcgdGhhdCByZWFkIGhlcmUgd291bGQgcHJvYmFibHkg
YmUgc2FmZXIuCj4gCj4gT29wcywgSSBtaXNzZWQgaXQuIFRoYW5rcyBmb3IgcG9pbnRpbmcgaXQg
b3V0Lgo+IAo+PiAKPj4+IMKgwqDCoMKgIGlmIChzdGF0dXMgPT0gMCkgewo+Pj4gwqDCoMKgwqDC
oMKgwqDCoCBkb19iYWRfSVJRKGRlc2MpOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4+
ICvCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4+IMKgwqDCoMKgIH0KPj4+IAo+Pj4gwqDCoMKg
wqAgZG8gewo+Pj4gQEAgLTgyLDYgKzg2LDkgQEAgc3RhdGljIHZvaWQgZnBnYV9pcnFfaGFuZGxl
KHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKPj4+IMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzICY9IH4o
MSA8PCBpcnEpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBnZW5lcmljX2hhbmRsZV9pcnEoaXJxX2Zp
bmRfbWFwcGluZyhmLT5kb21haW4sIGlycSkpOwo+Pj4gwqDCoMKgwqAgfSB3aGlsZSAoc3RhdHVz
KTsKPj4+ICsKPj4+ICtvdXQ6Cj4+PiArwqDCoMKgIGNoYWluZWRfaXJxX2V4aXQoY2hpcCwgZGVz
Yyk7Cj4+PiDCoH0KPj4+IAo+Pj4gwqAvKgo+PiAKPj4gT3RoZXJ3aXNlIGxvb2tzIGdvb2QuIElm
IHlvdSBzZW5kIGl0IGFnYWluIHdpdGggdGhlIGFib3ZlIGZpeGVkCj4+IGFuZCBhIEZpeGVzOiB0
YWcsIEknbGwgcXVldWUgaXQuCj4gCj4gSXQgc2VlbXMgdGhlIGhhbmRsZXIgaGFkIGJlZW4gYnJv
a2VuIGZyb20gdGhlIHZlcnkgYmVnaW5uaW5nLiBDb3VsZAo+IHlvdSBnaXZlIG1lIGEgaGludCBv
biBob3cgdGhlIHRhZyBzaG91bGQgYmUgbGlrZT8KCkluZGVlZCwgaXQgaGFzIGJlZW4gYnJva2Vu
IGZvcmV2ZXIuIEknbSB0ZW1wdGVkIHRvIHNheToKCkZpeGVzOiBjNDFiMTZmOGM5ZDlkICgiQVJN
OiBpbnRlZ3JhdG9yL3ZlcnNhdGlsZTogY29uc29saWRhdGUgRlBHQSBJUlEgCmhhbmRsaW5nIGNv
ZGUiKQoKZXZlbiBpZiBpdCBwcm9iYWJseSBwcmVkYXRlcyB0aGUgaW50cm9kdWN0aW9uIG9mIHRo
ZSBjaGFpbmVkX2lycV9lbnRlcigpIApoZWxwZXJzLgpUaGlzIHdpbGwgZW5zdXJlIHRoaXMgZ2V0
cyBiYWNrcG9ydGVkIHRvIG9sZGVyIGtlcm5lbHMuLi4KClRoYW5rcywKCiAgICAgICAgIE0uCi0t
IApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
