Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94492C72F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tPVRwidxw9up0FLoPFeVxF1ggMj71SS5l1ypwEA3OEQ=; b=WdQyZfw1xbQ5BojAS1AxAo6PW
	gbC2OvCoorqafVY2UN7Bo20VE+dzv8BKuFIvRd9rspq8wC2d1Zd4k/40xbBUOCR9kX6WTYoNhufdT
	NSKhwu4sk9co0T3PrxfUCdGk98FSAODaOUSVkV52VaWP9SvoPbuDhqUval9s+ooK7O9o/G205F2Ai
	s6eY5P/zla1GkNt/bZOCOP0JUcJMciw4d+0kaC+KVxoSt08PS28tqfW6M2Q1EECtLFJD7T1x0TCZs
	U65d3kpvhgFIpIqmm7ceNkvPmPMCzhZNmZ2on6PHCfEDPh5pbP0arQZytGw5OfhkvQqjOW0CIEMub
	ykx+OFASQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbiQ-0000Gm-Md; Tue, 28 May 2019 13:00:30 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbiF-0000CU-W7
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:00:21 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id C5BEC4E204B; Tue, 28 May 2019 13:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1559048419; bh=DuNG9eraJBekzRo7JMy/lt3azKRg+Ejt3Pynd/LUpQw=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=Gcq2zKVu0wYuEKx1clJT+CFI/Qm8Qg193Gq70Ah2BlMkn2oz/I6TTnc0xhDdkNjT2
 oVS0ni69EfFkHZcePiIwstfo+zNZOlrY23KjNmj0tM5GctNlBJKiLCFEZVHRwwS7pb
 2Bh+KPihajSNbxME+mHygXhqiDjAT7m7klszc4Sk=
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: fsl: imx8mq: enable the svns power key
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Tue, 28 May 2019 06:00:19 -0700
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <1559047905.4039.15.camel@pengutronix.de>
References: <20190528124406.29730-1-angus@akkea.ca>
 <1559047905.4039.15.camel@pengutronix.de>
Message-ID: <9a2361a08a0b8a1be1e2f5921026661f@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_060020_040966_C4E4961B 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTHVjYXMsCgpPbiAyMDE5LTA1LTI4IDA1OjUxLCBMdWNhcyBTdGFjaCB3cm90ZToKPiBIaSBB
bmd1cywKPiAKPiBBbSBEaWVuc3RhZywgZGVuIDI4LjA1LjIwMTksIDA1OjQ0IC0wNzAwIHNjaHJp
ZWIgQW5ndXMgQWluc2xpZSAKPiAoUHVyaXNtKToKPj4gQWRkIHRoZSBzbnZzIHBvd2VyIGtleS4K
Pj4gCj4+ID4gU2lnbmVkLW9mZi1ieTogQW5ndXMgQWluc2xpZSAoUHVyaXNtKSA8YW5ndXNAYWtr
ZWEuY2E+Cj4+IC0tLQo+PiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5k
dHNpIHwgOSArKysrKysrKysKPj4gwqAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4+
IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0
c2kgCj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPj4gaW5k
ZXggNDVkMTBkOGVmZDE0Li41ZjkzZmQ5NjYyYWUgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4+IEBAIC04LDYgKzgsNyBAQAo+PiDCoCNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9wb3dlci9pbXg4bXEtcG93ZXIuaD4KPj4gwqAjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvcmVzZXQvaW14OG1xLXJlc2V0Lmg+Cj4+IMKgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dw
aW8vZ3Bpby5oPgo+PiArI2luY2x1ZGUgImR0LWJpbmRpbmdzL2lucHV0L2lucHV0LmgiCj4+IMKg
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPj4g
wqAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvdGhlcm1hbC90aGVybWFsLmg+Cj4+IMKgI2luY2x1ZGUg
ImlteDhtcS1waW5mdW5jLmgiCj4+IEBAIC00NjMsNiArNDY0LDE0IEBACj4+ID4gwqAJCQkJCWlu
dGVycnVwdHMgPSA8R0lDX1NQSSAxOSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPj4gPiDCoAkJCQkJ
CTxHSUNfU1BJIDIwIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiA+IMKgCQkJCX07Cj4+ICsKPj4g
PiArCQkJCXNudnNfcHdya2V5OiBzbnZzLXBvd2Vya2V5IHsKPj4gPiArCQkJCQljb21wYXRpYmxl
ID0gImZzbCxzZWMtdjQuMC1wd3JrZXkiOwo+PiA+ICsJCQkJCXJlZ21hcCA9IDwmc252cz47Cj4+
ID4gKwkJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+
ID4gKwkJCQkJbGludXgsa2V5Y29kZSA9IDxLRVlfUE9XRVI+Owo+PiArCQkJCQl3YWtldXAtc291
cmNlOwo+IAo+IE5vdCBhbGwgaS5NWDhNUSBzeXN0ZW1zIHdpbGwgaGF2ZSB0aGlzIGZ1bmN0aW9u
YWxpdHkgd2lyZWQgdXAgYXQgdGhlCj4gYm9hcmQgbGV2ZWwsIHNvIHRoaXMgbm9kZSBuZWVkcyB0
byBiZSBkaXNhYmxlZCBieSBkZWZhdWx0LiBUaGUgZXhpc3RpbmcKPiAgaS5NWDYgYW5kIGkuTVg3
IERUcyBzZWVtIHRvIGdldCB0aGlzIHdyb25nLgo+IAoKT2sgSSdsbCBmaXggdGhhdCBmb3IgdGhl
IG5leHQgcmV2LgoKVGhhbmtzCkFuZ3VzCgo+IFJlZ2FyZHMsCj4gTHVjYXMKPiAKPj4gKwkJCQl9
Owo+PiA+IMKgCQkJfTsKPj4gwqAKPj4gPiA+IMKgCQkJY2xrOiBjbG9jay1jb250cm9sbGVyQDMw
MzgwMDAwIHsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
