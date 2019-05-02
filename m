Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C0211732
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3RynuPhXv91sqHgyVlITYa/mS2ztAvswQKMV48UFyyU=; b=KW50UNbgFA1dsPnBiEj9o065f
	jR62s0nEQHfMo7uzU7B/oCVs2ps+dFnhGyEjKkUQ/qFNi1VNvT65mdMfUSnPYmcyBVFhO80s517eY
	MjRQAlCnpzJUHW+5tBRRpl2lf2tZnHh4wsuVzkt/QOyrSxypvaV0RHSArDShaCAccTbalVH5HgdPD
	Reit5RJxTK7HCGZUmCm/FSVubzYk0wrj6BsuQKUeWIJkdd7zKPlF478x281p4zSQYnM+Bj2/5brM9
	Rcj4SXVRiONL/B06lyM+b5o5xLqqPnIlktHiwYGvlxl9ZSbrEriW94BrXQ+kKS/DM/60P5xu/PmVS
	Tb0w0d7dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM8uI-0002W9-K9; Thu, 02 May 2019 10:25:38 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM8uB-0002Vo-0w
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 10:25:32 +0000
Received: from [172.17.0.2] (unknown [186.137.130.251])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPA id 4FC087B05A2;
 Thu,  2 May 2019 07:25:27 -0300 (-03)
Subject: Re: [linux-sunxi] Re: [PATCH v5 3/7] ARM: dts: sun8i: v40:
 bananapi-m2-berry: Enable GMAC ethernet controller
To: maxime.ripard@bootlin.com
References: <1556040365-10913-1-git-send-email-pgreco@centosproject.org>
 <1556040365-10913-4-git-send-email-pgreco@centosproject.org>
 <20190502073904.yng5dz5kwgulw6ha@flea>
From: =?UTF-8?Q?Pablo_Sebasti=c3=a1n_Greco?= <pgreco@centosproject.org>
Message-ID: <2af6a523-adeb-7f7d-c2b1-de852aa3c562@centosproject.org>
Date: Thu, 2 May 2019 07:25:25 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502073904.yng5dz5kwgulw6ha@flea>
Content-Language: en-US
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: 4FC087B05A2.A2B5A
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_032531_240639_8FD6FE66 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkVsIDIvNS8xOSBhIGxhcyAwNDozOSwgTWF4aW1lIFJpcGFyZCBlc2NyaWJpw7M6Cj4gT24gVHVl
LCBBcHIgMjMsIDIwMTkgYXQgMDI6MjY6MDBQTSAtMDMwMCwgUGFibG8gR3JlY28gd3JvdGU6Cj4+
IEp1c3QgbGlrZSB0aGUgQmFuYW5hcGkgTTIgVWx0cmEsIHRoZSBCYW5hbmFwaSBNMiBCZXJyeSBo
YXMgYSBSZWFsdGVrCj4+IFJUTDgyMTFFIFJHTUlJIFBIWSB0aWVkIHRvIHRoZSBHTUFDLgo+PiBU
aGUgUE1JQydzIERDMVNXIG91dHB1dCBwcm92aWRlcyBwb3dlciBmb3IgdGhlIFBIWSwgd2hpbGUg
dGhlIEFMRE8yCj4+IG91dHB1dCBwcm92aWRlcyBJL08gdm9sdGFnZXMgb24gYm90aCBzaWRlcy4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogUGFibG8gR3JlY28gPHBncmVjb0BjZW50b3Nwcm9qZWN0Lm9y
Zz4KPj4gLS0tCj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktdjQwLWJhbmFuYXBpLW0yLWJl
cnJ5LmR0cyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQs
IDI5IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1
bjhpLXY0MC1iYW5hbmFwaS1tMi1iZXJyeS5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS12
NDAtYmFuYW5hcGktbTItYmVycnkuZHRzCj4+IGluZGV4IDJjYjJjZTAuLjU2MTMxOWIgMTAwNjQ0
Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLXY0MC1iYW5hbmFwaS1tMi1iZXJyeS5k
dHMKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktdjQwLWJhbmFuYXBpLW0yLWJlcnJ5
LmR0cwo+PiBAQCAtNTAsNiArNTAsNyBAQAo+PiAgIAljb21wYXRpYmxlID0gInNpbm92b2lwLGJw
aS1tMi1iZXJyeSIsICJhbGx3aW5uZXIsc3VuOGktcjQwIjsKPj4KPj4gICAJYWxpYXNlcyB7Cj4+
ICsJCWV0aGVybmV0MCA9ICZnbWFjOwo+PiAgIAkJc2VyaWFsMCA9ICZ1YXJ0MDsKPj4gICAJfTsK
Pj4KPj4gQEAgLTkyLDYgKzkzLDIyIEBACj4+ICAgCXN0YXR1cyA9ICJva2F5IjsKPj4gICB9Owo+
Pgo+PiArJmdtYWMgewo+PiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsJcGluY3Ry
bC0wID0gPCZnbWFjX3JnbWlpX3BpbnM+Owo+PiArCXBoeS1oYW5kbGUgPSA8JnBoeTE+Owo+PiAr
CXBoeS1tb2RlID0gInJnbWlpIjsKPj4gKwlwaHktc3VwcGx5ID0gPCZyZWdfZGMxc3c+Owo+PiAr
CXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZnbWFjX21kaW8gewo+PiArCXBoeTE6
IGV0aGVybmV0LXBoeUAxIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVlZTgw
Mi4zLWMyMiI7Cj4+ICsJCXJlZyA9IDwxPjsKPj4gKwl9Owo+PiArfTsKPj4gKwo+PiAgICZpMmMw
IHsKPj4gICAJc3RhdHVzID0gIm9rYXkiOwo+Pgo+PiBAQCAtMTMzLDYgKzE1MCwxMiBAQAo+PiAg
IAl2Y2MtcGctc3VwcGx5ID0gPCZyZWdfZGxkbzE+Owo+PiAgIH07Cj4+Cj4+ICsmcmVnX2FsZG8y
IHsKPj4gKwlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwyNTAwMDAwPjsKPj4gKwlyZWd1bGF0
b3ItbWF4LW1pY3Jvdm9sdCA9IDwyNTAwMDAwPjsKPj4gKwlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2Mt
cGEiOwo+PiArfTsKPj4gKwo+IFNob3VsZG4ndCB0aGlzIG9uZSBiZSBhZGRlZCB0byB0aGUgcGF0
Y2ggMj8KPgo+IFRoYW5rcwo+IE1heGltZQpZZXMsIEknbGwgZG8gdGhhdCBpbiBuZXh0IHZlcnNp
b24KPiAtLQo+IE1heGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBMaW51eCBhbmQgS2Vy
bmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQo+ClBhYmxvLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
