Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BC2BBB6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 23:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NkOrNiLPkr88/+n+xAN4/LbF2fp/HqHe8NF5ql1dRw=; b=NW6j0z2GtQGTOl
	R7VuT6y9Sfrtqycc+rsFWqnJ7vrZ8oE/wRaM4sKie2qidsCpoRPeakoFOu80iOu8HVM7IcsLYbJGR
	1vMoms7R7J7RVKvwSW5DGhwzRtjYbp+D6vBhfSYysQznA2hllTVAsh38s+vFlBteM4NV7ZDY6bQZA
	6fvD+UQk6ZzWr2ijWXcXoOcfMS0VRS0XpY+WoYRGnmLiRKXHHeicFdTBEh1XuOGO0k7T48GvY7Wi6
	Vdd8DgOmGf5nUEGlMjBt2FHP92ZDBdhYLeHskeAhZHWNUzSnQowabiUSFBekAILM0ytSJUOxrga1q
	dj4VUo5tqVOn/6c0sgSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKrUz-0000mY-4B; Sun, 28 Apr 2019 21:38:13 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKrUh-0000ey-Vg
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 21:37:58 +0000
Received: from dellmb.labs.office.nic.cz (unknown [172.20.6.125])
 by mail.nic.cz (Postfix) with ESMTP id 55691636A3;
 Sun, 28 Apr 2019 23:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1556487470; bh=te3tq9X2QsEkapazCxcv2ZaxZVOxL+VTLJVD0LnVz34=;
 h=From:To:Date;
 b=qqxX4vTQWkK+pEAvnHeHjW/UAyPSVTEB1Mshh73qlBsyfoqz4p2hkZxTDogd/bkBy
 EX46ImI798JpBnfs7wDtzh+S/F1hUbSZGUtgriaQjIpPm6z2u52WxYmiYdYSqOY/Yz
 SMwJ7ZEOe9okVCUwdUSOZ1MJZ22ljYslP+FiQj+s=
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v5 armsoc/drivers/bus+gpio 2/5] dt-bindings: bus: Document
 moxtet bus binding
Date: Sun, 28 Apr 2019 23:37:46 +0200
Message-Id: <20190428213749.7017-3-marek.behun@nic.cz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190428213749.7017-1-marek.behun@nic.cz>
References: <20190428213749.7017-1-marek.behun@nic.cz>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_143756_346793_E78ED701 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBhZGRzIGRldmljZSB0cmVlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIE1veHRl
dCBidXMsIGEgYnVzCnZpYSB3aGljaCB0aGUgZGlmZmVyZW50IG1vZHVsZXMgY29ubmVjdGVkIHRv
IHRoZSBUdXJyaXMgTW94IHJvdXRlciBjYW4KYmUgY29uZmlndXJlZC4KClNpZ25lZC1vZmYtYnk6
IE1hcmVrIEJlaMO6biA8bWFyZWsuYmVodW5AbmljLmN6PgpSZXZpZXdlZC1ieTogUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz4KLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9idXMvbW94
dGV0LnR4dCAgICAgICAgfCA0NiArKysrKysrKysrKysrKysrKysrCiBNQUlOVEFJTkVSUyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDQ3
IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYnVzL21veHRldC50eHQKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYnVzL21veHRldC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYnVzL21veHRldC50eHQKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi5mYjUwZmM4NjUzMzYKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvYnVzL21veHRldC50eHQKQEAgLTAsMCArMSw0NiBAQAorVHVy
cmlzIE1veCBtb2R1bGUgc3RhdHVzIGFuZCBjb25maWd1cmF0aW9uIGJ1cyAob3ZlciBTUEkpCisK
K1JlcXVpcmVkIHByb3BlcnRpZXM6CisgLSBjb21wYXRpYmxlCQk6IFNob3VsZCBiZSAiY3puaWMs
bW94dGV0IgorIC0gI2FkZHJlc3MtY2VsbHMJOiBIYXMgdG8gYmUgMQorIC0gI3NpemUtY2VsbHMJ
CTogSGFzIHRvIGJlIDAKKyAtIHNwaS1jcG9sCQk6IFJlcXVpcmVkIGludmVydGVkIGNsb2NrIHBv
bGFyaXR5CisgLSBzcGktY3BoYQkJOiBSZXF1aXJlZCBzaGlmdGVkIGNsb2NrIHBoYXNlCisgLSBp
bnRlcnJ1cHRzCQk6IE11c3QgY29udGFpbiByZWZlcmVuY2UgdG8gdGhlIHNoYXJlZCBpbnRlcnJ1
cHQgbGluZQorIC0gaW50ZXJydXB0LWNvbnRyb2xsZXIJOiBSZXF1aXJlZAorIC0gI2ludGVycnVw
dC1jZWxscwk6IEhhcyB0byBiZSAxCisKK0ZvciBvdGhlciByZXF1aXJlZCBhbmQgb3B0aW9uYWwg
cHJvcGVydGllcyBvZiBTUEkgc2xhdmUgbm9kZXMgcGxlYXNlIHJlZmVyIHRvCisuLi9zcGkvc3Bp
LWJ1cy50eHQuCisKK1JlcXVpcmVkIHByb3BlcnRpZXMgb2Ygc3Vibm9kZXM6CisgLSByZWcJCQk6
IFNob3VsZCBiZSBwb3NpdGlvbiBvbiB0aGUgTW94dGV0IGJ1cyAoaG93IG1hbnkgTW94dGV0CisJ
CQkgIG1vZHVsZXMgYXJlIGJldHdlZW4gdGhpcyBtb2R1bGUgYW5kIENQVSBtb2R1bGUsIHNvCisJ
CQkgIGVpdGhlciAwIG9yIGEgcG9zaXRpdmUgaW50ZWdlcikKKworVGhlIGRyaXZlciBmaW5kcyB0
aGUgZGV2aWNlcyBjb25uZWN0ZWQgdG8gdGhlIGJ1cyBieSBpdHNlbGYsIGJ1dCBpdCBtYXkgYmUK
K25lZWRlZCB0byByZWZlcmVuY2Ugc29tZSBvZiB0aGVtIGZyb20gb3RoZXIgcGFydHMgb2YgdGhl
IGRldmljZSB0cmVlLiBJbiB0aGF0CitjYXNlIHRoZSBkZXZpY2VzIGNhbiBiZSBkZWZpbmVkIGFz
IHN1Ym5vZGVzIG9mIHRoZSBtb3h0ZXQgbm9kZS4KKworRXhhbXBsZToKKworCW1veHRldEAxIHsK
KwkJY29tcGF0aWJsZSA9ICJjem5pYyxtb3h0ZXQiOworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsK
KwkJI3NpemUtY2VsbHMgPSA8MD47CisJCXJlZyA9IDwxPjsKKwkJc3BpLW1heC1mcmVxdWVuY3kg
PSA8MTAwMDAwMDA+OworCQlzcGktY3BvbDsKKwkJc3BpLWNwaGE7CisJCWludGVycnVwdC1jb250
cm9sbGVyOworCQkjaW50ZXJydXB0LWNlbGxzID0gPDE+OworCQlpbnRlcnJ1cHQtcGFyZW50ID0g
PCZncGlvc2I+OworCQlpbnRlcnJ1cHRzID0gPDUgSVJRX1RZUEVfRURHRV9GQUxMSU5HPjsKKwor
CQltb3h0ZXRfc2ZwOiBncGlvQDAgeworCQkJY29tcGF0aWJsZSA9ICJjem5pYyxtb3h0ZXQtZ3Bp
byI7CisJCQlncGlvLWNvbnRyb2xsZXI7CisJCQkjZ3Bpby1jZWxscyA9IDwyPjsKKwkJCXJlZyA9
IDwwPjsKKwkJfQorCX07CmRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCmlu
ZGV4IDYzMGFkOTI0ZDhkNS4uMmI1ZmYzMzY4MDU5IDEwMDY0NAotLS0gYS9NQUlOVEFJTkVSUwor
KysgYi9NQUlOVEFJTkVSUwpAQCAtMTU0MSw2ICsxNTQxLDcgQEAgQVJNL0NaLk5JQyBUVVJSSVMg
TU9YIFNVUFBPUlQKIE06CU1hcmVrIEJlaHVuIDxtYXJlay5iZWh1bkBuaWMuY3o+CiBXOglodHRw
Oi8vbW94LnR1cnJpcy5jegogUzoJTWFpbnRhaW5lZAorRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2J1cy9tb3h0ZXQudHh0CiBGOglpbmNsdWRlL2xpbnV4L21veHRldC5oCiBG
Oglkcml2ZXJzL2J1cy9tb3h0ZXQuYwogCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
