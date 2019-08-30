Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6159DA3CD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 19:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fDO85VbxvNuP+ZSDr42atB1DBt/mF5/TzrtZ5wUsE2s=; b=ic9W08kCHJ2djc0AbIxCqd4+I
	0TMSCKioNgEprurmbKT7nNlUm8wDOTYgAUL9QwQTYByHQS2JGnqhdwAYlTtYrpJ9hvrwKc9szoVT8
	PQlF+s7byUwEqftbcRNhvWjITFgqlDc3qUVqOOHxtsVcPGYtiBBZeFyIBCfM1CCRXMau2d2gVjyC/
	VIuKYkDp4B/v5jjWdbODdlO7DSVkpJLr8+SKOI+zqPCBH7HY+1ugeiUtp/q0MDQyfKklP7/ZKwn/4
	IIlIaAdV9X1QCQieBPblsGlTOJOdkjmmyeiIlRujactc5BS5DZI7KRQs5zTzbl2QkSTVJWNggolWE
	Q8t3SGiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3kVa-00016W-N0; Fri, 30 Aug 2019 17:16:22 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3kVQ-00014h-Mt; Fri, 30 Aug 2019 17:16:15 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id E7DA95FC82;
 Fri, 30 Aug 2019 19:16:03 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="cFkj3+8T"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id A430A1DAE219;
 Fri, 30 Aug 2019 19:16:03 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com A430A1DAE219
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1567185363;
 bh=YVARbI/Cl7CtDXBi2526daUB1XB9B3qC3CMJs1E2HFI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cFkj3+8TkpuqANEkNHa+uM0tE7IqSIIh6pTsz9WJfUHR9IHR0Q3MaX5EHTFEcxnUx
 +NqjMjiHyulWG+mllj2rvznkNpMhJmqQA/Qn/ZmZJTxejrz0D+1+YtrN/HWSpMRBMo
 4UVUk+pQ53S6Hp1mrCEGMalp4UtuqJzdz8xFIZWd7AmehujnofaddiE6bkkawI3WBr
 dhz2/perY2Qk9y6hjGmVhJbcgTnt8VyT89VH5KvjtCWKLY1/9FKQH4oJrUxVvW6LER
 vCxgKonf/CcEe8xV0K28cQ1jEAPNoBXBtd5g2M5VJ2Ye+r0mTDa9d3mygtjwrVb+cv
 qB8RjBjqheYCg==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Fri, 30 Aug 2019 17:16:03 +0000
Date: Fri, 30 Aug 2019 17:16:03 +0000
Message-ID: <20190830171603.Horde.UeVVg_YU-C4f8bcYmFJ_1Gv@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH net-next v2 2/3] dt-bindings: net: dsa: mt7530: Add
 support for port 5
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190821144547.15113-3-opensource@vdorst.com>
 <20190827222251.GA30507@bogus>
 <20190828063520.Horde.4_ak7mcmFhVJlxZWWy2wo3V@www.vdorst.com>
In-Reply-To: <20190828063520.Horde.4_ak7mcmFhVJlxZWWy2wo3V@www.vdorst.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_101613_030417_EFC2C83C 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKPHNuaXA+Cgo+Pj4gU2VlIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvZHNhL2RzYS50eHQgZm9yIGEgbGlzdCAgCj4+PiBvZiBhZGRpdGlvbmFsCj4+PiByZXF1
aXJlZCwgb3B0aW9uYWwgcHJvcGVydGllcyBhbmQgaG93IHRoZSBpbnRlZ3JhdGVkIHN3aXRjaCBz
dWJub2RlcyBtdXN0Cj4+PiBiZSBzcGVjaWZpZWQuCj4+PiBAQCAtOTQsMyArMTMwLDE4NSBAQCBF
eGFtcGxlOgo+Pj4gCQkJfTsKPj4+IAkJfTsKPj4+IAl9Owo+Pj4gKwo+Pj4gK0V4YW1wbGUgMjog
TVQ3NjIxOiBQb3J0IDQgaXMgV0FOIHBvcnQ6IDJuZCBHTUFDIC0+IFBvcnQgNSAtPiBQSFkgcG9y
dCA0Lgo+Pj4gKwo+Pj4gKyZldGggewo+Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+Cj4+IERvbid0
IHNob3cgc3RhdHVzIGluIGV4YW1wbGVzLgo+Cj4gT0suCj4KPj4gVGhpcyBzaG91bGQgc2hvdyB0
aGUgY29tcGxldGUgbm9kZS4KPj4KPgoKSSBhc2tlZCB0aGlzIHF1ZXN0aW9uIGJlbG93IGluIG15
IHByZXZpb3VzIGVtYWlsLgpNYXkgYmUgeW91IG1pc3NlZCBpdCwgSSBob3BlIHRoYXQgeW91IGhh
dmUgdGltZSBzb29uIHRvIGFuc3dlciB0aGlzIHNvIHRoYXQgSQpjYW4gc2VuZCBhIG5ldyB2ZXJz
aW9uLgoKPiBUbyBiZSBjbGVhciwgSSBzaG91bGQgdGFrZSBldGhlcm5ldCBub2RlIGZyb20gdGhl
IG10NzYyMS5kdHNpIFswXSBvciAgCj4gbXQ3NjIzLmR0c2kgWzFdIGFuZCBpbnNlcnQgdGhlIGV4
YW1wbGUgYmVsb3c/LCByaWdodD8KCkdyZWF0cywKClJlbsOpCgo+Cj4gR3JlYXRzLAo+Cj4gUmVu
w6kKPgo+IFswXTogIAo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L2RhdmVtL25ldC1uZXh0LmdpdC90cmVlL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtZHRz
L210NzYyMS5kdHNpI24zOTcKPiBbMV06ICAKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC9kYXZlbS9uZXQtbmV4dC5naXQvdHJlZS9hcmNoL2FybS9ib290
L2R0cy9tdDc2MjMuZHRzaSNuMTAyMwo+Cj4+PiArCj4+PiArCWdtYWMwOiBtYWNAMCB7Cj4+PiAr
CQljb21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOwo+Pj4gKwkJcmVnID0gPDA+Owo+Pj4g
KwkJcGh5LW1vZGUgPSAicmdtaWkiOwo+Pj4gKwo+Pj4gKwkJZml4ZWQtbGluayB7Cj4+PiArCQkJ
c3BlZWQgPSA8MTAwMD47Cj4+PiArCQkJZnVsbC1kdXBsZXg7Cj4+PiArCQkJcGF1c2U7Cj4+PiAr
CQl9Owo+Pj4gKwl9Owo+Pj4gKwo+Pj4gKwlnbWFjMTogbWFjQDEgewo+Pj4gKwkJY29tcGF0aWJs
ZSA9ICJtZWRpYXRlayxldGgtbWFjIjsKPj4+ICsJCXJlZyA9IDwxPjsKPj4+ICsJCXBoeS1tb2Rl
ID0gInJnbWlpLXR4aWQiOwo+Pj4gKwkJcGh5LWhhbmRsZSA9IDwmcGh5ND47Cj4+PiArCX07Cj4+
PiArCj4+PiArCW1kaW86IG1kaW8tYnVzIHsKPj4+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+
Pj4gKwkJI3NpemUtY2VsbHMgPSA8MD47Cj4+PiArCj4+PiArCQkvKiBJbnRlcm5hbCBwaHkgKi8K
Pj4+ICsJCXBoeTQ6IGV0aGVybmV0LXBoeUA0IHsKPj4+ICsJCQlyZWcgPSA8ND47Cj4+PiArCQl9
Owo+Pj4gKwo+Pj4gKwkJbXQ3NTMwOiBzd2l0Y2hAMWYgewo+Pj4gKwkJCWNvbXBhdGlibGUgPSAi
bWVkaWF0ZWssbXQ3NjIxIjsKPj4+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4+ICsJCQkj
c2l6ZS1jZWxscyA9IDwwPjsKPj4+ICsJCQlyZWcgPSA8MHgxZj47Cj4+PiArCQkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPj4+ICsJCQltZWRpYXRlayxtY207Cj4+PiArCj4+PiArCQkJcmVz
ZXRzID0gPCZyc3RjdHJsIDI+Owo+Pj4gKwkJCXJlc2V0LW5hbWVzID0gIm1jbSI7Cj4+PiArCj4+
PiArCQkJcG9ydHMgewo+Pj4gKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4+ICsJCQkJI3Np
emUtY2VsbHMgPSA8MD47Cj4+PiArCj4+PiArCQkJCXBvcnRAMCB7Cj4+PiArCQkJCQlyZWcgPSA8
MD47Cj4+PiArCQkJCQlsYWJlbCA9ICJsYW4wIjsKPj4+ICsJCQkJfTsKPj4+ICsKPj4+ICsJCQkJ
cG9ydEAxIHsKPj4+ICsJCQkJCXJlZyA9IDwxPjsKPj4+ICsJCQkJCWxhYmVsID0gImxhbjEiOwo+
Pj4gKwkJCQl9Owo+Pj4gKwo+Pj4gKwkJCQlwb3J0QDIgewo+Pj4gKwkJCQkJcmVnID0gPDI+Owo+
Pj4gKwkJCQkJbGFiZWwgPSAibGFuMiI7Cj4+PiArCQkJCX07Cj4+PiArCj4+PiArCQkJCXBvcnRA
MyB7Cj4+PiArCQkJCQlyZWcgPSA8Mz47Cj4+PiArCQkJCQlsYWJlbCA9ICJsYW4zIjsKPj4+ICsJ
CQkJfTsKPj4+ICsKPj4+ICsvKiBDb21tZW50ZWQgb3V0LiBQb3J0IDQgaXMgaGFuZGxlZCBieSAy
bmQgR01BQy4KPj4+ICsJCQkJcG9ydEA0IHsKPj4+ICsJCQkJCXJlZyA9IDw0PjsKPj4+ICsJCQkJ
CWxhYmVsID0gImxhbjQiOwo+Pj4gKwkJCQl9Owo+Pj4gKyovCj4+PiArCj4+PiArCQkJCWNwdV9w
b3J0MDogcG9ydEA2IHsKPj4+ICsJCQkJCXJlZyA9IDw2PjsKPj4+ICsJCQkJCWxhYmVsID0gImNw
dSI7Cj4+PiArCQkJCQlldGhlcm5ldCA9IDwmZ21hYzA+Owo+Pj4gKwkJCQkJcGh5LW1vZGUgPSAi
cmdtaWkiOwo+Pj4gKwo+Pj4gKwkJCQkJZml4ZWQtbGluayB7Cj4+PiArCQkJCQkJc3BlZWQgPSA8
MTAwMD47Cj4+PiArCQkJCQkJZnVsbC1kdXBsZXg7Cj4+PiArCQkJCQkJcGF1c2U7Cj4+PiArCQkJ
CQl9Owo+Pj4gKwkJCQl9Owo+Pj4gKwkJCX07Cj4+PiArCQl9Owo+Pj4gKwl9Owo+Pj4gK307Cj4+
PiArCj4+PiArRXhhbXBsZSAzOiBNVDc2MjE6IFBvcnQgNSBpcyBjb25uZWN0ZWQgdG8gZXh0ZXJu
YWwgUEhZOiBQb3J0IDUgLT4gIAo+Pj4gZXh0ZXJuYWwgUEhZLgo+Pj4gKwo+Pj4gKyZldGggewo+
Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+PiArCj4+PiArCWdtYWMwOiBtYWNAMCB7Cj4+PiArCQlj
b21wYXRpYmxlID0gIm1lZGlhdGVrLGV0aC1tYWMiOwo+Pj4gKwkJcmVnID0gPDA+Owo+Pj4gKwkJ
cGh5LW1vZGUgPSAicmdtaWkiOwo+Pj4gKwo+Pj4gKwkJZml4ZWQtbGluayB7Cj4+PiArCQkJc3Bl
ZWQgPSA8MTAwMD47Cj4+PiArCQkJZnVsbC1kdXBsZXg7Cj4+PiArCQkJcGF1c2U7Cj4+PiArCQl9
Owo+Pj4gKwl9Owo+Pj4gKwo+Pj4gKwltZGlvOiBtZGlvLWJ1cyB7Cj4+PiArCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPj4+ICsJCSNzaXplLWNlbGxzID0gPDA+Owo+Pj4gKwo+Pj4gKwkJLyogRXh0
ZXJuYWwgcGh5ICovCj4+PiArCQllcGh5NTogZXRoZXJuZXQtcGh5QDcgewo+Pj4gKwkJCXJlZyA9
IDw3PjsKPj4+ICsJCX07Cj4+PiArCj4+PiArCQltdDc1MzA6IHN3aXRjaEAxZiB7Cj4+PiArCQkJ
Y29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc2MjEiOwo+Pj4gKwkJCSNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+Pj4gKwkJCSNzaXplLWNlbGxzID0gPDA+Owo+Pj4gKwkJCXJlZyA9IDwweDFmPjsKPj4+
ICsJCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4gKwkJCW1lZGlhdGVrLG1jbTsKPj4+
ICsKPj4+ICsJCQlyZXNldHMgPSA8JnJzdGN0cmwgMj47Cj4+PiArCQkJcmVzZXQtbmFtZXMgPSAi
bWNtIjsKPj4+ICsKPj4+ICsJCQlwb3J0cyB7Cj4+PiArCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+
Owo+Pj4gKwkJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPj4+ICsKPj4+ICsJCQkJcG9ydEAwIHsKPj4+
ICsJCQkJCXJlZyA9IDwwPjsKPj4+ICsJCQkJCWxhYmVsID0gImxhbjAiOwo+Pj4gKwkJCQl9Owo+
Pj4gKwo+Pj4gKwkJCQlwb3J0QDEgewo+Pj4gKwkJCQkJcmVnID0gPDE+Owo+Pj4gKwkJCQkJbGFi
ZWwgPSAibGFuMSI7Cj4+PiArCQkJCX07Cj4+PiArCj4+PiArCQkJCXBvcnRAMiB7Cj4+PiArCQkJ
CQlyZWcgPSA8Mj47Cj4+PiArCQkJCQlsYWJlbCA9ICJsYW4yIjsKPj4+ICsJCQkJfTsKPj4+ICsK
Pj4+ICsJCQkJcG9ydEAzIHsKPj4+ICsJCQkJCXJlZyA9IDwzPjsKPj4+ICsJCQkJCWxhYmVsID0g
ImxhbjMiOwo+Pj4gKwkJCQl9Owo+Pj4gKwo+Pj4gKwkJCQlwb3J0QDQgewo+Pj4gKwkJCQkJcmVn
ID0gPDQ+Owo+Pj4gKwkJCQkJbGFiZWwgPSAibGFuNCI7Cj4+PiArCQkJCX07Cj4+PiArCj4+PiAr
CQkJCXBvcnRANSB7Cj4+PiArCQkJCQlyZWcgPSA8NT47Cj4+PiArCQkJCQlsYWJlbCA9ICJsYW41
IjsKPj4+ICsJCQkJCXBoeS1tb2RlID0gInJnbWlpIjsKPj4+ICsJCQkJCXBoeS1oYW5kbGUgPSA8
JmVwaHk1PjsKPj4+ICsJCQkJfTsKPj4+ICsKPj4+ICsJCQkJY3B1X3BvcnQwOiBwb3J0QDYgewo+
Pj4gKwkJCQkJcmVnID0gPDY+Owo+Pj4gKwkJCQkJbGFiZWwgPSAiY3B1IjsKPj4+ICsJCQkJCWV0
aGVybmV0ID0gPCZnbWFjMD47Cj4+PiArCQkJCQlwaHktbW9kZSA9ICJyZ21paSI7Cj4+PiArCj4+
PiArCQkJCQlmaXhlZC1saW5rIHsKPj4+ICsJCQkJCQlzcGVlZCA9IDwxMDAwPjsKPj4+ICsJCQkJ
CQlmdWxsLWR1cGxleDsKPj4+ICsJCQkJCQlwYXVzZTsKPj4+ICsJCQkJCX07Cj4+PiArCQkJCX07
Cj4+PiArCQkJfTsKPj4+ICsJCX07Cj4+PiArCX07Cj4+PiArfTsKPj4+IC0tCj4+PiAyLjIwLjEK
Pj4+CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
