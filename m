Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CA9153FC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTYC1f22Lq3jFjOuY+AF1GOu69SUFOqItJtjbQeH7+4=; b=PYi3UzERgfTuhX
	Mne49ny0w8acdcg68k32mBCX7QNUjWSAxwxPFADPMN0XFuln4Dg/yV7PpG9VAp5p6GqRpq17Ky9g4
	Fz1HlvydvbfHTq55rY8nvlWUcyUkHiKhHISKdWfbhgmCFdNHn1/FTF4pWmq5s0a1fIoqBBNKVooEx
	FCO9GhDZnfcxtBUaS0kAp1WT21AvRLPleeZzslQucVY0hGlTifHywLUAr2qTaXkggDmJ3QXMhdyLZ
	pS+o9ef3TAEM9HfzpTkW+WvfZNv9UNLKhydwWgP5h1y+U5+jw+w16TY1SL0gBujClFAu5oaLeCoim
	YtCDq7Y1x3yCiCTRWzMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izcCv-0004bJ-Vg; Thu, 06 Feb 2020 08:08:17 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcCm-0004Zt-L9
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:08:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id w12so5978309wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 00:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TG5tj3645N85QhmNWU8D99xKObIizGYbAhAWICc+ygs=;
 b=e6y6Xc0CKTFK7D8lnZI+oqP6txhyrqcYHKag2cJFvZTCEIr3SECDvQXDx3itQzDjB5
 VcImhKBHPPvajvrhMq019JiXtDYI7rPkHENrWf+RlWoff8hhxIoqXAAGG539WvLMo9Wn
 4D71P/luHvNXtl8DTwCvA3ORNz+HUOP5ZxL1UO5APiCaTC8/ZPNQzeTJ6hTbYrnu0n3f
 ZaxlWdiXnlcIYCRRWCP4VcRWCxRH2Ckcf4JgKak0CIzSdjzVGZ18XYVyTCcb2Rg8OQIw
 y+eDECeAol8gs70LYTttGQEDtfFZ6a61YDj707iOvZFeg4203wX2gX3bv4I2qHAf9rfB
 JnBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=TG5tj3645N85QhmNWU8D99xKObIizGYbAhAWICc+ygs=;
 b=TEGQB2/tM65gIgKX8SIWVOIz1BD2OYhTdWkZDxUFAMAhqlF7NoARNbbKg5qJ3a8rsd
 tvLYsIsI44ke5JPMzg5c7VVjQM2Q2mIKs21g9iQ2S3t0uhMpXMO/Tosa2DRNPSXr5RhI
 l8lQfkK1/zsiogxX4BldZYMkxKY1ZIVLubtpLtT0W5M9UVXBkbgMftbMLstkLjyO6SWT
 UbKu5fogY0472exVVeATYklNZ6kA6GjoVBfOR8AFaqkLKsIN3Qzr+c/N2iarAy29fcso
 pn73XE+qWGDR+MaNPC2B2FrE+YL6i63cfbShOYwHaDI1u7FIBbLAMbffWgrWhUd1PaBr
 sGAQ==
X-Gm-Message-State: APjAAAXtk4Qeb2I/gVTwtv6R+vyJQKr4HwHx9eDOAaKLE2VVNClKym6i
 ph+ltzMrD43rejiQxZh77H/W+Q==
X-Google-Smtp-Source: APXvYqz9axYJCUH9PKldohM4SKpY8oaob9MbNHZHJR5bIvM99Z2dv6KBImKigANHI+cIqIl6FqvNTg==
X-Received: by 2002:adf:c145:: with SMTP id w5mr2426249wre.205.1580976486971; 
 Thu, 06 Feb 2020 00:08:06 -0800 (PST)
Received: from ?IPv6:2a01:e35:2ec0:82b0:7d33:17f7:8097:ecc7?
 ([2a01:e35:2ec0:82b0:7d33:17f7:8097:ecc7])
 by smtp.gmail.com with ESMTPSA id o4sm3096110wrx.25.2020.02.06.00.08.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Feb 2020 00:08:06 -0800 (PST)
Subject: Re: [PATCH v3 5/5] media: meson: vdec: add VP9 decoder support
To: Nicolas Dufresne <nicolas@ndufresne.ca>, mchehab@kernel.org,
 hans.verkuil@cisco.com
References: <20200116133437.2443-1-narmstrong@baylibre.com>
 <20200116133437.2443-6-narmstrong@baylibre.com>
 <a4efcb4e1591ac9cf305742d34337335b6ff7f29.camel@ndufresne.ca>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <49e6168b-ffed-6011-3b1f-455224d3130b@baylibre.com>
Date: Thu, 6 Feb 2020 09:08:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <a4efcb4e1591ac9cf305742d34337335b6ff7f29.camel@ndufresne.ca>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_000808_695251_91591EF2 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMvMDIvMjAyMCAwNDoxMSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBIaSBOZWlsLAo+
IAo+IExlIGpldWRpIDE2IGphbnZpZXIgMjAyMCDDoCAxNDozNCArMDEwMCwgTmVpbCBBcm1zdHJv
bmcgYSDDqWNyaXQgOgo+PiBGcm9tOiBNYXhpbWUgSm91cmRhbiA8bWpvdXJkYW5AYmF5bGlicmUu
Y29tPgo+Pgo+PiBUaGlzIGFkZHMgVlA5IGRlY29kaW5nIGZvciB0aGUgQW1sb2dpYyBHWEwsIEcx
MkEgJiBTTTEgU29DcywgdXNpbmcKPj4gdGhlIGNvbW1vbmcgIkhFVkMiIEhXIGRlY29kZXIuCj4+
Cj4+IEZvciBHMTJBICYgU00xLCBpdCB1c2VzIHRoZSBJT01NVSBzdXBwb3J0IGZyb20gdGhlIGZp
cm13YXJlLgo+Pgo+PiBGb3IgMTBiaXQgZGVjb2RpbmcsIHRoZSBmaXJtd2FyZSBjYW4gb25seSBk
ZWNvZGUgaW4gdGhlIHByb3ByaWV0YXJ5Cj4+IEFtbG9naWMgRnJhbWVidWZmZXIgQ29tcHJlc3Np
b24gZm9ybWF0LCBidXQgY2FuIG91dHB1dCBpbiA4Yml0IE5WMTIKPj4gYnVmZmVyIHdoaWxlIHdy
aXRpbmcgdGhlIGRlY29kZWQgZnJhbWUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBKb3Vy
ZGFuIDxtam91cmRhbkBiYXlsaWJyZS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IE5laWwgQXJtc3Ry
b25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvbWVzb24vdmRlYy9NYWtlZmlsZSAgICAgfCAgICAyICstCj4+ICBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvbWVzb24vdmRlYy9jb2RlY192cDkuYyAgfCAyMTM5ICsrKysrKysrKysrKysrKysr
Cj4+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvbWVzb24vdmRlYy9jb2RlY192cDkuaCAgfCAgIDEz
ICsKPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL2hldmNfcmVncy5oICB8ICAg
IDcgKwo+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL21lc29uL3ZkZWMvdmRlYy5jICAgICAgIHwg
ICAgNSArCj4+ICAuLi4vc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfaGVscGVycy5jICAg
fCAgICA0ICsKPj4gIC4uLi9zdGFnaW5nL21lZGlhL21lc29uL3ZkZWMvdmRlY19wbGF0Zm9ybS5j
ICB8ICAgMzggKwo+PiAgNyBmaWxlcyBjaGFuZ2VkLCAyMjA3IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvbWVz
b24vdmRlYy9jb2RlY192cDkuYwo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9tZXNvbi92ZGVjL2NvZGVjX3ZwOS5oCj4+CgpbLi4uXQoKPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfcGxhdGZvcm0uYyBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfcGxhdGZvcm0uYwo+PiBpbmRleCBlOTM1
NmE0NjgyOGYuLjcyYTgzM2IxY2ViZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL21lc29uL3ZkZWMvdmRlY19wbGF0Zm9ybS5jCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9tZXNvbi92ZGVjL3ZkZWNfcGxhdGZvcm0uYwo+PiBAQCAtOCw4ICs4LDEwIEBACj4+ICAj
aW5jbHVkZSAidmRlYy5oIgo+PiAgCj4+ICAjaW5jbHVkZSAidmRlY18xLmgiCj4+ICsjaW5jbHVk
ZSAidmRlY19oZXZjLmgiCj4+ICAjaW5jbHVkZSAiY29kZWNfbXBlZzEyLmgiCj4+ICAjaW5jbHVk
ZSAiY29kZWNfaDI2NC5oIgo+PiArI2luY2x1ZGUgImNvZGVjX3ZwOS5oIgo+PiAgCj4+ICBzdGF0
aWMgY29uc3Qgc3RydWN0IGFtdmRlY19mb3JtYXQgdmRlY19mb3JtYXRzX2d4YmJbXSA9IHsKPj4g
IAl7Cj4+IEBAIC01MSw2ICs1MywxOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFtdmRlY19mb3Jt
YXQgdmRlY19mb3JtYXRzX2d4YmJbXSA9IHsKPj4gIAo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBh
bXZkZWNfZm9ybWF0IHZkZWNfZm9ybWF0c19neGxbXSA9IHsKPj4gIAl7Cj4+ICsJCS5waXhmbXQg
PSBWNEwyX1BJWF9GTVRfVlA5LAo+PiArCQkubWluX2J1ZmZlcnMgPSAxNiwKPj4gKwkJLm1heF9i
dWZmZXJzID0gMjQsCj4+ICsJCS5tYXhfd2lkdGggPSAzODQwLAo+PiArCQkubWF4X2hlaWdodCA9
IDIxNjAsCj4+ICsJCS52ZGVjX29wcyA9ICZ2ZGVjX2hldmNfb3BzLAo+PiArCQkuY29kZWNfb3Bz
ID0gJmNvZGVjX3ZwOV9vcHMsCj4+ICsJCS5maXJtd2FyZV9wYXRoID0gIm1lc29uL3ZkZWMvZ3hs
X3ZwOS5iaW4iLAo+IAo+IElzIHRoZXJlIGEgcHVsbCByZXF1ZXN0IHBlbmRpbmcgZm9yIHRoaXMg
ZmlybXdhcmUgPyBJIGNvdWxkIG5vdCB0ZXN0IGFzCj4gdGhpcyBmaXJtd2FyZSB3YXMgbWlzc2lu
Zy4gTm90ZSB0aGF0IGl0IGNvdWxkIGJlIG5pY2UgdG8gcmVtb3ZlIHRoZQo+IGZvcm1hdCBmcm9t
IHRoZSBlbnVtZXJhdGlvbiBpbiB0aGF0IGNhc2UsIGFzIGl0J3MgdmVyeSBjb25mdXNpbmcKPiBp
bml0aWFsbHkuCgpJdCBoYXMgYmVlbiBtZXJnZWQgeWVzdGVyZGF5LCBzb3JyeSBmb3IgdGhlIGRl
bGF5LgoKV2l0aCBtYXhpbWUncyBwYXRjaCwgd2UgdGVzdGVkIGl0IHVzaW5nIGZmbXBlZyBtYXN0
ZXIsIG1wdiBtYXN0ZXIgd2l0aCBkcm0tcHJpbWUKcmVuZGVyaW5nLiBXZSBoYXZlIGEgYnVpbGRy
b290IHJlcG8gd2l0aCB0aGUgY2hhbmdlZCBuZWVkZWQgOgoKaHR0cHM6Ly9naXRsYWIuY29tL2Jh
eWxpYnJlL2FtbG9naWMvYXR2L2J1aWxkcm9vdC15dWthd2EKCkkgd2lsbCByZXNwaW4gYSB2NCB3
aXRoIHRoZSBzbWFsbCBmaXggZnJvbSBtYXhpbWUuCgpOZWlsCgoKPiAKPj4gKwkJLnBpeGZtdHNf
Y2FwID0geyBWNEwyX1BJWF9GTVRfTlYxMk0sIDAgfSwKPj4gKwkJLmZsYWdzID0gVjRMMl9GTVRf
RkxBR19DT01QUkVTU0VEIHwKPj4gKwkJCSBWNEwyX0ZNVF9GTEFHX0RZTl9SRVNPTFVUSU9OLAo+
PiArCX0sIHsKPj4gIAkJLnBpeGZtdCA9IFY0TDJfUElYX0ZNVF9IMjY0LAo+PiAgCQkubWluX2J1
ZmZlcnMgPSAyLAo+PiAgCQkubWF4X2J1ZmZlcnMgPSAyNCwKPj4gQEAgLTEyNyw2ICsxNDEsMTgg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhbXZkZWNfZm9ybWF0IHZkZWNfZm9ybWF0c19neG1bXSA9
IHsKPj4gIAo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBhbXZkZWNfZm9ybWF0IHZkZWNfZm9ybWF0
c19nMTJhW10gPSB7Cj4+ICAJewo+PiArCQkucGl4Zm10ID0gVjRMMl9QSVhfRk1UX1ZQOSwKPj4g
KwkJLm1pbl9idWZmZXJzID0gMTYsCj4+ICsJCS5tYXhfYnVmZmVycyA9IDI0LAo+PiArCQkubWF4
X3dpZHRoID0gMzg0MCwKPj4gKwkJLm1heF9oZWlnaHQgPSAyMTYwLAo+PiArCQkudmRlY19vcHMg
PSAmdmRlY19oZXZjX29wcywKPj4gKwkJLmNvZGVjX29wcyA9ICZjb2RlY192cDlfb3BzLAo+PiAr
CQkuZmlybXdhcmVfcGF0aCA9ICJtZXNvbi92ZGVjL2cxMmFfdnA5LmJpbiIsCj4+ICsJCS5waXhm
bXRzX2NhcCA9IHsgVjRMMl9QSVhfRk1UX05WMTJNLCAwIH0sCj4+ICsJCS5mbGFncyA9IFY0TDJf
Rk1UX0ZMQUdfQ09NUFJFU1NFRCB8Cj4+ICsJCQkgVjRMMl9GTVRfRkxBR19EWU5fUkVTT0xVVElP
TiwKPj4gKwl9LCB7Cj4+ICAJCS5waXhmbXQgPSBWNEwyX1BJWF9GTVRfSDI2NCwKPj4gIAkJLm1p
bl9idWZmZXJzID0gMiwKPj4gIAkJLm1heF9idWZmZXJzID0gMjQsCj4+IEBAIC0xNjUsNiArMTkx
LDE4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYW12ZGVjX2Zvcm1hdCB2ZGVjX2Zvcm1hdHNfZzEy
YVtdID0gewo+PiAgCj4+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGFtdmRlY19mb3JtYXQgdmRlY19m
b3JtYXRzX3NtMVtdID0gewo+PiAgCXsKPj4gKwkJLnBpeGZtdCA9IFY0TDJfUElYX0ZNVF9WUDks
Cj4+ICsJCS5taW5fYnVmZmVycyA9IDE2LAo+PiArCQkubWF4X2J1ZmZlcnMgPSAyNCwKPj4gKwkJ
Lm1heF93aWR0aCA9IDM4NDAsCj4+ICsJCS5tYXhfaGVpZ2h0ID0gMjE2MCwKPj4gKwkJLnZkZWNf
b3BzID0gJnZkZWNfaGV2Y19vcHMsCj4+ICsJCS5jb2RlY19vcHMgPSAmY29kZWNfdnA5X29wcywK
Pj4gKwkJLmZpcm13YXJlX3BhdGggPSAibWVzb24vdmRlYy9nMTJhX3ZwOS5iaW4iLAo+PiArCQku
cGl4Zm10c19jYXAgPSB7IFY0TDJfUElYX0ZNVF9OVjEyTSwgMCB9LAo+PiArCQkuZmxhZ3MgPSBW
NEwyX0ZNVF9GTEFHX0NPTVBSRVNTRUQgfAo+PiArCQkJIFY0TDJfRk1UX0ZMQUdfRFlOX1JFU09M
VVRJT04sCj4+ICsJfSwgewo+PiAgCQkucGl4Zm10ID0gVjRMMl9QSVhfRk1UX0gyNjQsCj4+ICAJ
CS5taW5fYnVmZmVycyA9IDIsCj4+ICAJCS5tYXhfYnVmZmVycyA9IDI0LAo+IAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
