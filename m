Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E556F6D68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:49:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irTLbXgK5PvshA6UP516a+H9Kv/l+cZZ8MpCsMVFf9g=; b=EmP4WgvzKlot1+
	cZJGcJtbWqFETA8vRvSGa1cDBT78OGtz+PYaqkavPCEpSLVyruhFnqWhU2kUR7R1NHI1Bxixr7Isj
	GogtYoVJyhClkn/wJIGgncEZUEvNsMELc7/tTXdElSvG2A148mlSgEpKJHoyzOj4a4Ogh2RtHpcSQ
	5Xd3WqtZwXXFxzPprZRw1dO2X05oOoySkFVlY5oc2MVvU+ypxUbUkIS6spCTTjPeaeQL1r2voyYle
	C511ZXqGGqquakAjMMQxA6r5QGq087DOTRQHVV3J8PXV9s3zpkypP6zn9YTBLpn1sQg9Tj+ElYTFm
	0lNOWHbJqThWULKkhp9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU0i1-0002ml-NG; Mon, 11 Nov 2019 03:49:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU0hr-0002mB-UC; Mon, 11 Nov 2019 03:49:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 12AB1B038;
 Mon, 11 Nov 2019 03:49:34 +0000 (UTC)
Subject: Re: [PATCH v2 2/2] arm64: dts: Initial RTD1619 SoC and Realtek
 Mjolnir EVB support
To: James Tai <james.tai@realtek.com>
References: <43B123F21A8CFE44A9641C099E4196FFCF91F9D6@RTITMBSVM04.realtek.com.tw>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <098f58e9-9b85-e4ca-7e4d-ed9f660d991d@suse.de>
Date: Mon, 11 Nov 2019 04:49:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <43B123F21A8CFE44A9641C099E4196FFCF91F9D6@RTITMBSVM04.realtek.com.tw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_194936_269483_215AF0F5 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAwOC4xMS4xOSB1bSAxMDo0MiBzY2hyaWViIEphbWVzIFRhaToKPiBBZGQg
RGV2aWNlIFRyZWVzIGZvciBSZWFsdGVrIFJURDE2MTkgU29DIGZhbWlseSwgUlREMTYxOSBTb0Mg
YW5kCj4gUmVhbHRlayBNam9sbmlyIEVWQi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBUYWkg
PGphbWVzLnRhaUByZWFsdGVrLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yZWFs
dGVrL01ha2VmaWxlICAgICAgICAgIHwgICAyICsKPiAgLi4uL2Jvb3QvZHRzL3JlYWx0ZWsvcnRk
MTYxOS1tam9sbmlyLmR0cyAgICAgIHwgIDQwICsrKysrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cmVhbHRlay9ydGQxNjE5LmR0c2kgICAgICB8ICAxMiArKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvcnRkMTZ4eC5kdHNpICAgICAgfCAxNTQgKysrKysrKysrKysrKysrKysrCj4gIDQg
ZmlsZXMgY2hhbmdlZCwgMjA4IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNjE5LW1qb2xuaXIuZHRzCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTYxOS5kdHNpCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNp
Cj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9NYWtlZmlsZSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9NYWtlZmlsZQo+IGluZGV4IDU1NTYzOGFkYTcy
MS4uOGY2YWE3N2MyNjViIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRl
ay9NYWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9NYWtlZmlsZQo+
IEBAIC03LDMgKzcsNSBAQCBkdGItJChDT05GSUdfQVJDSF9SRUFMVEVLKSArPSBydGQxMjk1LXBy
b2JveDItYXZhLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9SRUFMVEVLKSArPSBydGQxMjk1LXpp
ZG9vLXg5cy5kdGIKPiAgCj4gIGR0Yi0kKENPTkZJR19BUkNIX1JFQUxURUspICs9IHJ0ZDEyOTYt
ZHM0MTguZHRiCj4gKwo+ICtkdGItJChDT05GSUdfQVJDSF9SRUFMVEVLKSArPSBydGQxNjE5LW1q
b2xuaXIuZHRiCj4gXCBObyBuZXdsaW5lIGF0IGVuZCBvZiBmaWxlCgpOb3cgd2UncmUgYXQgdGhl
IG90aGVyIGV4dHJlbWU6IFRoYXQgd2FybmluZyBzaG91bGQgbm90IGJlIHRoZXJlIGVpdGhlci4K
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNjE5LW1qb2xu
aXIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2MTktbWpvbG5pci5kdHMK
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uZmQ1OWIwODZlNWQ4
Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
NjE5LW1qb2xuaXIuZHRzCj4gQEAgLTAsMCArMSw0MCBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKQo+ICsvKgo+ICsgKiBD
b3B5cmlnaHQgKGMpIDIwMTkgUmVhbHRlayBTZW1pY29uZHVjdG9yIENvcnAuCj4gKyAqLwo+ICsK
PiArL2R0cy12MS87Cj4gKwo+ICsjaW5jbHVkZSAicnRkMTYxOS5kdHNpIgo+ICsKPiArLyB7Cj4g
Kwljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTYxOSIsInJlYWx0ZWssbWpvbG5pciI7CgpQbGVh
c2UgbGVhdmUgYSBzaW5nbGUgc3BhY2UgYWZ0ZXIgdGhlIGNvbW1hIGJldHdlZW4gc3RyaW5ncyAo
bGlrZSBJIGRpZAp3aGVuIHN1Z2dlc3RpbmcgaXQpLgoKVGhlIG9yZGVyIGlzIHdyb25nLCBpdCBn
b2VzIGZyb20gbW9zdCBzcGVjaWZpYyB0byBsZWFzdCBzcGVjaWZpYywgYW5kCnZpb2xhdGVzIHlv
dXIgYmluZGluZy4KCj4gKwltb2RlbD0gIlJlYWx0ZWsgTWpvbG5pciBFVkIiOwo+ICsKPiArCW1l
bW9yeUAwIHsKPiArCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOwo+ICsJCXJlZyA9IDwweDAgMHgw
IDB4MCAweDgwMDAwMDAwPjsKPiArCX07Cj4gKwo+ICsJY2hvc2VuIHsKPiArCQlzdGRvdXQtcGF0
aCA9ICJzZXJpYWwwOjExNTIwMG44IjsKPiArCX07Cj4gKwo+ICsJYWxpYXNlcyB7Cj4gKwkJc2Vy
aWFsMCA9ICZ1YXJ0MDsKPiArCQlzZXJpYWwxID0gJnVhcnQxOwo+ICsJCXNlcmlhbDIgPSAmdWFy
dDI7Cj4gKwl9Owo+ICt9Owo+ICsKPiArJnVhcnQwIHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiAr
fTsKPiArCj4gKyZ1YXJ0MSB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmdWFy
dDIgewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9OwoKUGxlYXNlIGFkZCBjb21tZW50cyBiZWZv
cmUgZWFjaCBub2RlIHdoZXJlIHRoZXkgYXJlIG9uIHRoZSBib2FyZCAtIGtlZXAKaW4gbWluZCB0
aGF0IGZldyByZXZpZXdlcnMgYW5kIGNvbnRyaWJ1dG9ycyBpbmNsdWRpbmcgbXlzZWxmIHdpbGwg
aGF2ZQphY2Nlc3MgdG8geW91ciBib2FyZCdzIGRvY3VtZW50YXRpb24uCgpVQVJUMCBpcyBjaG9z
ZW4gYXMgZGVidWcgY29uc29sZSBhYm92ZS4KVUFSVDEgYXBwZWFycyB0byBiZSBvbiBvbmUgb2Yg
dGhlIE0uMj8KV2hlcmUgaXMgVUFSVDIgdXNlZCwgR1BJTyBjb25uZWN0b3Igb3IgdGhlIHNlY29u
ZCBNLjI/CgpXaGlsZSB5b3UncmUgd2VsY29tZSB0byBoYXZlIGFsbCB0aGVzZSBub2RlIHJlZmVy
ZW5jZXMgaGVyZSBmb3IKZG9jdW1lbnRhdGlvbiBpZiBhY2Nlc3NpYmxlLCBwbGVhc2Ugb25seSBl
bmFibGUgZGV2aWNlcyB0aGF0IGFyZQphY3R1YWxseSB1c2FibGUuIEkuZS4sIHNldCBzdGF0dXMg
PSAiZGlzYWJsZWQiIGlmIHRoZSBib290bG9hZGVyIGRvZXMKbm90IHR1cm4gdGhlIGNsb2NrIGdh
dGVzIG9uLCB0YWtlIHRoZW0gb3V0IG9mIHJlc2V0LCBzZXQgdGhlIHBpbm11eApjb3JyZWN0bHks
IGV0Yy4gKFllcywgeW91IGNhbiByZXBlYXQgaXQgaGVyZSBldmVuIGlmIGluIC5kdHNpLikKCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxNjE5LmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTYxOS5kdHNpCj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmU1MmJmNzA4YjA0ZQo+IC0tLSAvZGV2L251bGwK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTYxOS5kdHNpCj4gQEAgLTAs
MCArMSwxMiBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0
ZXIgT1IgQlNELTItQ2xhdXNlKQo+ICsvKgo+ICsgKiBSZWFsdGVrIFJURDE2MTkgU29DCj4gKyAq
Cj4gKyAqIENvcHlyaWdodCAoYykgMjAxOSBSZWFsdGVrIFNlbWljb25kdWN0b3IgQ29ycC4KPiAr
ICovCj4gKwo+ICsjaW5jbHVkZSAicnRkMTZ4eC5kdHNpIgo+ICsKPiArLyB7Cj4gKwljb21wYXRp
YmxlID0gInJlYWx0ZWsscnRkMTYxOSI7Cj4gK307Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0
ZWsvcnRkMTZ4eC5kdHNpCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAw
MDAuLmIyM2U2NzVlMjgxNgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpCj4gQEAgLTAsMCArMSwxNTQgQEAKPiArLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9yLWxhdGVyIE9SIEJTRC0yLUNsYXVzZSkKPiAr
LyoKPiArICogUmVhbHRlayBSVEQxNnh4IFNvQyBmYW1pbHkKPiArICoKPiArICogQ29weXJpZ2h0
IChjKSAyMDE5IFJlYWx0ZWsgU2VtaWNvbmR1Y3RvciBDb3JwLgo+ICsgKi8KPiArCj4gKyNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4gKyNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4KPiArCj4gKy97Cj4g
KwlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Owo+ICsJI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4g
Kwkjc2l6ZS1jZWxscyA9IDwyPjsKPiArCj4gKwljcHVzIHsKPiArCQkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKPiArCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiArCj4gKwkJY3B1MDogY3B1QDAgewo+ICsJ
CQlkZXZpY2VfdHlwZSA9ICJjcHUiOwo+ICsJCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTU1
IjsKPiArCQkJcmVnID0gPDB4MD47Cj4gKwkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7Cj4gKwkJ
CW5leHQtbGV2ZWwtY2FjaGUgPSA8JmwyPjsKPiArCQl9Owo+ICsKPiArCQljcHUxOiBjcHVAMTAw
IHsKPiArCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKPiArCQkJY29tcGF0aWJsZSA9ICJhcm0sY29y
dGV4LWE1NSI7Cj4gKwkJCXJlZyA9IDwweDEwMD47Cj4gKwkJCWVuYWJsZS1tZXRob2QgPSAicHNj
aSI7Cj4gKwkJCW5leHQtbGV2ZWwtY2FjaGUgPSA8JmwzPjsKPiArCQl9Owo+ICsKPiArCQljcHUy
OiBjcHVAMjAwIHsKPiArCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKPiArCQkJY29tcGF0aWJsZSA9
ICJhcm0sY29ydGV4LWE1NSI7Cj4gKwkJCXJlZyA9IDwweDIwMD47Cj4gKwkJCWVuYWJsZS1tZXRo
b2QgPSAicHNjaSI7Cj4gKwkJCW5leHQtbGV2ZWwtY2FjaGUgPSA8JmwzPjsKPiArCQl9Owo+ICsK
PiArCQljcHUzOiBjcHVAMzAwIHsKPiArCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKPiArCQkJY29t
cGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1NSI7Cj4gKwkJCXJlZyA9IDwweDMwMD47Cj4gKwkJCWVu
YWJsZS1tZXRob2QgPSAicHNjaSI7Cj4gKwkJCW5leHQtbGV2ZWwtY2FjaGUgPSA8JmwzPjsKPiAr
CQl9Owo+ICsKPiArCQljcHU0OiBjcHVANDAwIHsKPiArCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsK
PiArCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1NSI7Cj4gKwkJCXJlZyA9IDwweDQwMD47
Cj4gKwkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7Cj4gKwkJCW5leHQtbGV2ZWwtY2FjaGUgPSA8
JmwzPjsKPiArCQl9Owo+ICsKPiArCQljcHU1OiBjcHVANTAwIHsKPiArCQkJZGV2aWNlX3R5cGUg
PSAiY3B1IjsKPiArCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1NSI7Cj4gKwkJCXJlZyA9
IDwweDUwMD47Cj4gKwkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7Cj4gKwkJCW5leHQtbGV2ZWwt
Y2FjaGUgPSA8JmwzPjsKPiArCQl9Owo+ICsKPiArCQlsMjogbDItY2FjaGUgewo+ICsJCQljb21w
YXRpYmxlID0gImNhY2hlIjsKPiArCQkJbmV4dC1sZXZlbC1jYWNoZSA9IDwmbDM+Owo+ICsKPiAr
CQl9Owo+ICsKPiArCQlsMzogbDMtY2FjaGUgewo+ICsJCQljb21wYXRpYmxlID0gImNhY2hlIjsK
PiArCQl9Owo+ICsJfTsKPiArCj4gKwl0aW1lciB7Cj4gKwkJY29tcGF0aWJsZSA9ICJhcm0sYXJt
djgtdGltZXIiOwo+ICsJCWludGVycnVwdHMgPSA8R0lDX1BQSSAxMyBJUlFfVFlQRV9MRVZFTF9M
T1c+LAo+ICsJCQkgICAgIDxHSUNfUFBJIDE0IElSUV9UWVBFX0xFVkVMX0xPVz4sCj4gKwkJCSAg
ICAgPEdJQ19QUEkgMTEgSVJRX1RZUEVfTEVWRUxfTE9XPiwKPiArCQkJICAgICA8R0lDX1BQSSAx
MCBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+ICsJfTsKPiArCj4gKwlhcm1fcG11OiBwbXUgewo+ICsJ
CWNvbXBhdGlibGUgPSAiYXJtLGFybXY4LXBtdXYzIjsKPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19Q
UEkgNyBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+ICsJfTsKPiArCj4gKwlwc2NpIHsKPiArCQljb21w
YXRpYmxlID0gImFybSxwc2NpLTEuMCI7CgpObyBmZWVkYmFjayBmcm9tIExvcmVuem8gb3IgUm9i
IGZvciB2MSBoZXJlIHlldC4uLgoKPiArCQltZXRob2QgPSAic21jIjsKPiArCX07Cj4gKwo+ICsJ
b3NjMjdNOiBvc2Mgewo+ICsJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwo+ICsJCWNsb2Nr
LWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47Cj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gIm9zYzI3
TSI7Cj4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJfTsKPiArCj4gKwlyYnVzOiByLWJ1c0A5
ODAwMDAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsKPiArCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPiArCQkjc2l6ZS1jZWxscyA9IDwxPjsKPiArCQlyYW5nZXMgPSA8MHg5ODAw
MDAwMCAweDAgMHg5ODAwMDAwMCAweDIwMDAwMD47CgpUaGlzIHdhcyBub3Qgd2hhdCBJIG1lYW50
LiBJIHJlYWxpemUgbXkgaW5kZW50YXRpb24gbWF5IGhhdmUgYmVlbgphbWJpZ3VvdXMgdGhlcmUs
IG9uZSBsZXZlbCB0b28gbGl0dGxlLiBUaGUgaWRlYSB3YXMgdG8ga2VlcCB0aGUgc29jCm5vZGUs
IGV4dGVuZCBpdCB3aXRoIHJhbmdlcyBhbmQgd2l0aG91dCB0aGUgc29jIG5vZGUgaGF2ZSBhbiBy
LWJ1cyBub2RlCihvciByYnVzPykgdGhhdCBhbGxvd3MgdXMgdG8gdW5pZnkgdGhlIGFkZHJlc3Np
bmcuIFBsZWFzZSBjb21wYXJlIG15ClJURDEzOTUgcGF0Y2hzZXQgYW5kIGxlYXZlIGlubGluZSBj
b21tZW50cy4gT25lIGlzc3VlIEkgc2VlIGlzIHRoYXQKd2UncmUgc2VlaW5nIHdpbGRseSBkaWZm
ZXJlbnQgc2l6ZXMgZm9yIHItYnVzIGRlcGVuZGluZyBvbiB3aGVyZSB3ZSBsb29rCi0gMHg3MDAw
MCwgMHgxMDAwMDAsIDB4MjAwMDAwLCAweDEwMDAwMDAsIC4uLiBQbGVhc2UgZG91YmxlLWNoZWNr
IGJvdGgKaGVyZSBhbmQgaW4gbXkgcGF0Y2hlcy4KCj4gKwo+ICsJCXVhcnQwOiBzZXJpYWwwQDk4
MDA3ODAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKPiArCQkJcmVn
ID0gPDB4OTgwMDc4MDAgMHg0MDA+Owo+ICsJCQlyZWctc2hpZnQgPSA8Mj47Cj4gKwkJCXJlZy1p
by13aWR0aCA9IDw0PjsKPiArCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDY4IElSUV9UWVBFX0xF
VkVMX0hJR0g+Owo+ICsJCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+Owo+ICsJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOwo+ICsJCX07Cj4gKwo+ICsJCXVhcnQxOiBzZXJpYWwxQDk4MDFiMjAw
IHsKPiArCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKPiArCQkJcmVnID0gPDB4
OTgwMWIyMDAgMHg0MDA+Owo+ICsJCQlyZWctc2hpZnQgPSA8Mj47Cj4gKwkJCXJlZy1pby13aWR0
aCA9IDw0PjsKPiArCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDg5IElSUV9UWVBFX0xFVkVMX0hJ
R0g+Owo+ICsJCQljbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKPiArCQkJc3RhdHVzID0g
ImRpc2FibGVkIjsKPiArCQl9Owo+ICsKPiArCQl1YXJ0Mjogc2VyaWFsMkA5ODAxYjQwMCB7Cj4g
KwkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7Cj4gKwkJCXJlZyA9IDwweDk4MDFi
NDAwIDB4NDAwPjsKPiArCQkJcmVnLXNoaWZ0ID0gPDI+Owo+ICsJCQlyZWctaW8td2lkdGggPSA8
ND47Cj4gKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA5MCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsK
PiArCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47Cj4gKwkJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4gKwkJfTsKClRoYW5rcyBmb3IgYWRkaW5nIHRoZXNlLgoKPiArCX07Cj4gKwo+ICsJ
Z2ljOiBpbnRlcnJ1cHQtY29udHJvbGxlckBmZjEwMDAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJh
cm0sZ2ljLXYzIjsKPiArCQlyZWcgPSA8MHgwIDB4ZmYxMDAwMDAgMHgwIDB4MTAwMDA+LAo+ICsJ
CSAgICAgIDwweDAgMHhmZjE0MDAwMCAweDAgMHhjMDAwMD47Cj4gKwkJaW50ZXJydXB0LWNvbnRy
b2xsZXI7Cj4gKwkJI2ludGVycnVwdC1jZWxscyA9IDwzPjsKPiArCQlpbnRlcnJ1cHRzID0gPEdJ
Q19QUEkgOSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCX07Cj4gK307Cj4gKwo+ICsmYXJtX3Bt
dSB7Cj4gKwlpbnRlcnJ1cHQtYWZmaW5pdHkgPSA8JmNwdTA+LCA8JmNwdTE+LCA8JmNwdTI+LAo+
ICsJCTwmY3B1Mz4sIDwmY3B1ND4sIDwmY3B1NT47Cj4gK307CgpSZWdhcmRzLApBbmRyZWFzCgot
LSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkw
NDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAo
QUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
