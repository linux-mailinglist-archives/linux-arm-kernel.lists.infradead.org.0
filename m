Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90269F252
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 20:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7AtxzrJ8HiAQaAXxGw6RVlnDQxAdplGk9wi3tC3/s0=; b=gdxXNViWeQH0F3
	uQ+QJ3wserdCWcwpxYPYnkMl972XGcPlzKrs7loCyXBoo38r3yCJmn5dlL6ffhjYBQmZXJzvbOYuN
	iRGM9qTL1zmXpEa3OYhL55OfRrIvjyGbW6UpAFkjbfarY3NAoKtp79lmZL7MwsbPJ5ejjH6qp9a7w
	liynOlGo+gabWJNZ9ltfirfGf420H+t0HGYytEfS8ZcXOhCzTcBlOMIwxSaDZjHkKmT2j316XQ2EE
	LopcjPWsFDaLPuIT2E71AjGTwrIFJwQ1arrBHQACNINd4ReSzgFDACU9TUhIPIi1gXodId+RnSL02
	CxWC1RRAGgfbftiNMi9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2gF5-0002Cw-2c; Tue, 27 Aug 2019 18:30:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2gEx-0002Cc-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 18:30:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73E582070B;
 Tue, 27 Aug 2019 18:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566930645;
 bh=wTQIw1+SW7GPHfpXBg6LSL6Q/9Vl/aIUdTIhykvT7RI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nLCy23LWH7mRF8Tw11p3gzTs0GugmHeu4GL3I+H3byz8ubOBX+S69Mb1JQPKVEumJ
 FBadwjeCIqdHMJq0X/iE42ob7vpZ92C7Vzk73ONMqJFdNhAtddZk5mmDiJmsoCjjJZ
 U/sNBNTpQ1AERQFc/em+Gme+mEbEA/6M0z0pGH54=
Date: Tue, 27 Aug 2019 19:30:41 +0100
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V7 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Message-ID: <20190827183040.633fcj2m2xb6vfow@willie-the-truck>
References: <20190827023557.7071-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827023557.7071-1-qiangqing.zhang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_113047_603046_975247F6 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9ha2ltLAoKT24gVHVlLCBBdWcgMjcsIDIwMTkgYXQgMDI6Mzk6MzJBTSArMDAwMCwgSm9h
a2ltIFpoYW5nIHdyb3RlOgo+IEFYSSBmaWx0ZXJpbmcgaXMgdXNlZCBieSBDU1YgbW9kZXMgMHg0
MSBhbmQgMHg0MiB0byBjb3VudCByZWFkcyBvcgo+IHdyaXRlcyB3aXRoIGFuIEFSSUQgb3IgQVdJ
RCBtYXRjaGluZyBmaWx0ZXIgc2V0dGluZy4gR3JhbnVsYXJpdHkgaXMgYXQKPiBzdWJzeXN0ZW0g
bGV2ZWwuIEltcGxlbWVudGF0aW9uIGRvZXMgbm90IGFsbG93IGZpbHRyaW5nIGJldHdlZW4gbWFz
dGVycwo+IHdpdGhpbiBhIHN1YnN5c3RlbS4gRmlsdGVyIGlzIGRlZmluZWQgd2l0aCAyIGNvbmZp
Z3VyYXRpb24gcGFyYW1ldGVycy4KPiAKPiAtLUFYSV9JRCBkZWZpbmVzIEF4SUQgbWF0Y2hpbmcg
dmFsdWUKPiAtLUFYSV9NQVNLSU5HIGRlZmluZXMgd2hpY2ggYml0cyBvZiBBeElEIGFyZSBtZWFu
aW5nZnVsIGZvciB0aGUgbWF0Y2hpbmcKPiAJMO+8mmNvcnJlc3BvbmRpbmcgYml0IGlzIG1hc2tl
ZAo+IAkxOiBjb3JyZXNwb25kaW5nIGJpdCBpcyBub3QgbWFza2VkLCBpLmUuIHVzZWQgdG8gZG8g
dGhlIG1hdGNoaW5nCj4gCj4gV2hlbiBub24tbWFza2VkIGJpdHMgYXJlIG1hdGNoaW5nIGNvcnJl
c3BvbmRpbmcgQVhJX0lEIGJpdHMgdGhlbiBjb3VudGVyCj4gaXMgaW5jcmVtZW50ZWQuIFRoaXMg
ZmlsdGVyIGFsbG93cyBjb3VudGluZyByZWFkIG9yIHdyaXRlIGFjY2VzcyBmcm9tIGEKPiBzdWJz
eXN0ZW0gb3IgbXVsdGlwbGUgc3Vic3lzdGVtcy4KPiAKPiBQZXJmIGNvdW50ZXIgaXMgaW5jcmVt
ZW50ZWQgaWYgQXhJRCAmJiBBWElfTUFTS0lORyA9PSBBWElfSUQgJiYgQVhJX01BU0tJTkcKPiAK
PiBBWElfSUQgYW5kIEFYSV9NQVNLSU5HIGFyZSBtYXBwZWQgb24gRFBDUjEgcmVnaXN0ZXIgaW4g
cGVyZm9ybWFuY2UgY291bnRlci4KPiAKPiBSZWFkIGFuZCB3cml0ZSBBWEkgSUQgZmlsdGVyIHNo
b3VsZCB3cml0ZSBzYW1lIHZhbHVlIHRvIERQQ1IxIGlmIHdhbnQgdG8KPiBzcGVjaWZ5IGF0IHRo
ZSBzYW1lIHRpbWUgYXMgdGhpcyBmaWx0ZXIgaXMgc2hhcmVkIGJldHdlZW4gY291bnRlcnMuCj4g
Cj4gZS5nLgo+IHBlcmYgc3RhdCAtYSAtZSBpbXg4X2RkcjAvYXhpZC1yZWFkLGF4aV9pZD0weE1N
TU1ERERELyxpbXg4X2RkcjAvYXhpZC13cml0ZSxheGlfaWQ9MHhNTU1NRERERC8gY21kCj4gTU1N
TTogQVhJX01BU0tJTkcgIEREREQ6IEFYSV9JRAo+IHBlcmYgc3RhdCAtYSAtZSBpbXg4X2RkcjAv
YXhpZC1yZWFkLGF4aV9pZD0weDEyLyBjbWQsIHdoaWNoIHdpbGwgbW9uaXRvciBBUklEPTB4MTIK
PiAKPiBOT1RFOiBBWElfTUFTS0lORyBpcyBpbnZlcnRlZCBhdCBkcml2ZXIoaS5lLiBzZXQgYml0
cyBhcmUgYml0cyB0byBtYXNrKSwgc28KPiB0aGF0IHRoZSB1c2VyIGNhbiBqdXN0IHNwZWNpZnkg
YXhpX2lkIHRvIG1vbml0b3IgYSBzcGVjaWZpYyBpZCwgcmF0aGVyIHRoYW4KPiBoYXZpbmcgdG8g
c3BlY2lmeSBheGlfaWQ9MHhmZmZmPGlkPi4KClsuLi5dCgo+IEBAIC0xMzgsOSArMTU2LDExIEBA
IHN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwIGRkcl9wZXJmX2V2ZW50c19hdHRyX2dyb3Vw
ID0gewo+ICB9Owo+ICAKPiAgUE1VX0ZPUk1BVF9BVFRSKGV2ZW50LCAiY29uZmlnOjAtNyIpOwo+
ICtQTVVfRk9STUFUX0FUVFIoYXhpX2lkLCAiY29uZmlnMTowLTMxIik7CgpJIHN0aWxsIGRvbid0
IHRoaW5rIHRoaXMgaXMgcXVpdGUgd2hhdCBNYXJrIHdhcyBzdWdnZXN0aW5nLiBNeSB1bmRlcnN0
YW5kaW5nCm9mIGhpcyBlbWFpbCBbMV0gd2FzIHRoYXQgeW91IHdvdWxkIGRvIHNvbWV0aGluZyBs
aWtlOgoKICBQTVVfRk9STUFUX0FUVFIoYXhpX2lkLCAiY29uZmlnMTowLTE1Iik7CiAgUE1VX0ZP
Uk1BVF9BVFRSKGF4aV9tYXNrLCAiY29uZmlnMToxNi0zMSIpOwoKYW5kIHRoZW4gaWYgdGhlIHVz
ZXIgb21pdHMgdG8gc3BlY2lmeSBheGlfbWFzaywgaXQgaGFzIGEgdmFsdWUgb2YgMCB3aGljaApt
ZWFucyB0aGF0IGFsbCBvZiB0aGUgYXhpX2lkIGJpdHMgYXJlIG1hdGNoZWQgKGkuZS4gdGhlIGRy
aXZlciBpbnZlcnRzCnRoZSBtYXNrIGludGVybmFsbHkpLiBJIHRoaW5rIHRoYXQncyBhY3R1YWxs
eSB3aGF0IHlvdXIgY29kZSBpcyBkb2luZzoKCj4gQEAgLTI4OCw2ICszMzcsMjEgQEAgc3RhdGlj
IGludCBkZHJfcGVyZl9ldmVudF9hZGQoc3RydWN0IHBlcmZfZXZlbnQgKmV2ZW50LCBpbnQgZmxh
Z3MpCj4gIAlzdHJ1Y3QgaHdfcGVyZl9ldmVudCAqaHdjID0gJmV2ZW50LT5odzsKPiAgCWludCBj
b3VudGVyOwo+ICAJaW50IGNmZyA9IGV2ZW50LT5hdHRyLmNvbmZpZzsKPiArCWludCBjZmcxID0g
ZXZlbnQtPmF0dHIuY29uZmlnMTsKPiArCj4gKwlpZiAocG11LT5kZXZ0eXBlX2RhdGEtPnF1aXJr
cyAmIEREUl9DQVBfQVhJX0lEX0ZJTFRFUikgewo+ICsJCWludCBpOwo+ICsKPiArCQlmb3IgKGkg
PSAxOyBpIDwgTlVNX0NPVU5URVJTOyBpKyspIHsKPiArCQkJaWYgKHBtdS0+ZXZlbnRzW2ldICYm
Cj4gKwkJCSAgICAhZGRyX3BlcmZfZmlsdGVyc19jb21wYXRpYmxlKGV2ZW50LCBwbXUtPmV2ZW50
c1tpXSkpCj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsKPiArCQl9Cj4gKwo+ICsJCS8qIHJldmVydCBh
eGlfaWQgbWFza2luZyB2YWx1ZSAqLwo+ICsJCWNmZzEgXj0gQVhJX01BU0tJTkdfUkVWRVJUOwoK
aXQncyBqdXN0IHRoYXQgdGhlIHVzZXIgQUJJIHNob3VsZCBwcm9iYWJseSBzZXBhcmF0ZSB0aGVz
ZSB0d28gZmllbGRzIG91dAphcyBhYm92ZS4KCkkgd2FzIGdvaW5nIHRvIG1ha2UgdGhlIGNoYW5n
ZSB3aGVuIG1lcmdpbmcgdGhpcyBwYXRjaCwgYnV0IHlvdSBuZWVkIHRvCnVwZGF0ZSB0aGUgRG9j
dW1lbnRhdGlvbiBpbiB0aGUgc2Vjb25kIHBhdGNoIHRvby4KCldpbGwKClsxXSBodHRwczovL2xr
bWwua2VybmVsLm9yZy9yLzIwMTkwODIzMTI1NzE5LkdENTU0ODBAbGFrcmlkcy5jYW1icmlkZ2Uu
YXJtLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
