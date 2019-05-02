Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E671172D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jxaCeLOx9z5RMmfbJ7FbwXlaT4r/aukLmskAqx70EEs=; b=dJPJANCCMa8bXW6eDEAs6KFGn
	CYWNgeLs5+66JjhcDGZ0uGvExtQmN3C2u5q+VbYkVxCJ+nKGS9VUBCYT8u+srCNENZGLzqNAihU1s
	lHsNz+nRoOIEOqeBPhwahXvKwaPOgT/ipvG4LMhKs7kG4PgbwjJR2q0kUQNxTs6tJh5vXJxRSDqLS
	30eAUSDfUfWT4GZDdBXjnXf2RvpnLEFp/qY76zyIRElTxqQt6bsjeNvn4Ss4Dh7SRteNoKGGPlZxR
	diRXDUhJRBY3ZCZPVfqGydGIauobDFUWBRnMWDrJeHpZy4ywKft91YVaIJ4kEdew3L7Kx9Lg3BBXU
	qBi1pE6bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM8tW-0000x4-2t; Thu, 02 May 2019 10:24:50 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM8tO-0000v9-8J
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 10:24:44 +0000
Received: from [172.17.0.2] (unknown [186.137.130.251])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPA id 023877B05A2;
 Thu,  2 May 2019 07:24:30 -0300 (-03)
Subject: Re: [linux-sunxi] Re: [PATCH v5 2/7] ARM: dts: sun8i: v40:
 bananapi-m2-berry: Add GPIO pin-bank regulator supplies
To: maxime.ripard@bootlin.com
References: <1556040365-10913-1-git-send-email-pgreco@centosproject.org>
 <1556040365-10913-3-git-send-email-pgreco@centosproject.org>
 <20190502073815.56ktbpiieviqr4ss@flea>
From: =?UTF-8?Q?Pablo_Sebasti=c3=a1n_Greco?= <pgreco@centosproject.org>
Message-ID: <c1bc4831-ba63-fd51-9e0c-7c988096b1f4@centosproject.org>
Date: Thu, 2 May 2019 07:24:29 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502073815.56ktbpiieviqr4ss@flea>
Content-Language: en-US
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: 023877B05A2.A1029
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_032442_468660_93882104 
X-CRM114-Status: GOOD (  12.82  )
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

CkVsIDIvNS8xOSBhIGxhcyAwNDozOCwgTWF4aW1lIFJpcGFyZCBlc2NyaWJpw7M6Cj4gT24gVHVl
LCBBcHIgMjMsIDIwMTkgYXQgMDI6MjU6NTlQTSAtMDMwMCwgUGFibG8gR3JlY28gd3JvdGU6Cj4+
IFRoZSBiYW5hbmFwaS1tMi1iZXJyeSBoYXMgdGhlIFBNSUMgcHJvdmlkaW5nIHZvbHRhZ2UgdG8g
YWxsIHRoZSBwaW4tYmFuawo+PiBzdXBwbHkgcmFpbHMgZnJvbSBpdHMgdmFyaW91cyByZWd1bGF0
b3Igb3V0cHV0cywgdGllIHRoZW0gdG8gdGhlIHBpbwo+PiBub2RlLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBQYWJsbyBHcmVjbyA8cGdyZWNvQGNlbnRvc3Byb2plY3Qub3JnPgo+PiAtLS0KPj4gICBh
cmNoL2FybS9ib290L2R0cy9zdW44aS12NDAtYmFuYW5hcGktbTItYmVycnkuZHRzIHwgMTAgKysr
KysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdW44aS12NDAtYmFuYW5hcGktbTItYmVycnkuZHRz
IGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktdjQwLWJhbmFuYXBpLW0yLWJlcnJ5LmR0cwo+PiBp
bmRleCBmMDVjYWJkLi4yY2IyY2UwIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9z
dW44aS12NDAtYmFuYW5hcGktbTItYmVycnkuZHRzCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L3N1bjhpLXY0MC1iYW5hbmFwaS1tMi1iZXJyeS5kdHMKPj4gQEAgLTEyMyw2ICsxMjMsMTYgQEAK
Pj4gICAJc3RhdHVzID0gIm9rYXkiOwo+PiAgIH07Cj4+Cj4+ICsmcGlvIHsKPj4gKwlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwo+IEEgcGluY3RybC1uYW1lcyBwcm9wZXJ0eSB3aXRob3V0IGFu
eSBvdGhlciBvbmU/Cj4KPiBMb29rcyBnb29kIG90aGVyd2lzZSwgdGhhbmtzCj4gTWF4aW1lClJp
Z2h0LCBJJ2xsIG1vdmUgdGhpcyB0byB0aGUgcGF0Y2ggdGhhdCBhZGRzIHBpbmN0cmwtMAo+IC0t
Cj4gTWF4aW1lIFJpcGFyZCwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5n
aW5lZXJpbmcKPiBodHRwczovL2Jvb3RsaW4uY29tCj4KUGFibG8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
