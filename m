Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF19CB0C22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwE3NmqGAk1MwaQG+nBJ1qU92cVbMJsvLFWkoMijuUw=; b=rPedfd6WnKxB85
	/radQ4LQQ2eKOGP19y3yrajY+/T5x1aUx0+7lBb7V3WLdiaJg6DWz8x3OZekxgg3/doZEBUiFp8Op
	Lk7Dw0FwsHXXCqbz3386O6Y3fiQfm0OnzGL/HRmrXYFhktmAHBp9M675jkvWVtKZ2MIQPAM56fXnD
	/uiwt/nk4IxAUCnKYbD2yRsq056JKo8vXnywARgbRWz8Y0gYEXlPxaYJiykzoNmZgqcRQsd1JpUat
	8cAh7O3fs7u8sGSr/7wcsbRQFXlnPS8HIf3e3LP89ow0BcmX5bpFxKcZeM9bZCejPXwocVW3slYfZ
	J4yR3HpHxAYEZhduQe6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LvW-0001Hl-Cp; Thu, 12 Sep 2019 10:02:10 +0000
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LvK-0001HK-Ow
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:02:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id C08D39C01E4;
 Thu, 12 Sep 2019 06:01:55 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id LbxnRGPrx1J3; Thu, 12 Sep 2019 06:01:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id CD51C9C0202;
 Thu, 12 Sep 2019 06:01:54 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Q4heQjoc48wB; Thu, 12 Sep 2019 06:01:54 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
 [192.168.48.237])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 768E99C01E4;
 Thu, 12 Sep 2019 06:01:54 -0400 (EDT)
Date: Thu, 12 Sep 2019 06:01:54 -0400 (EDT)
From: Gilles Doffe <gilles.doffe@savoirfairelinux.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <978100557.7721358.1568282514403.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <20190722075341.e4ve45rneusiogtk@pengutronix.de>
References: <20190719104615.5329-1-gilles.doffe@savoirfairelinux.com>
 <20190722075341.e4ve45rneusiogtk@pengutronix.de>
Subject: Re: [PATCH v2] arm: dts: imx6qdl: add gpio expander pca9535
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC76 (Linux)/8.8.11_GA_3737)
Thread-Topic: imx6qdl: add gpio expander pca9535
Thread-Index: X3FtlLOdQwdk2SX5U0uhcvyPGHIXGw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_030158_947154_EF41DD37 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.88.110.44 listed in list.dnswl.org]
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
Cc: mark rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, shawnguo <shawnguo@kernel.org>,
 s hauer <s.hauer@pengutronix.de>, rennes <rennes@savoirfairelinux.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, robh+dt <robh+dt@kernel.org>,
 linux-imx <linux-imx@nxp.com>, kernel <kernel@pengutronix.de>,
 =?utf-8?Q?J=C3=A9rome?= Oufella <jerome.oufella@savoirfairelinux.com>,
 festevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpUaGFua3MgZm9yIHlvdXIgcmVwbHkgYW5kIHNvcnJ5IGFib3V0IHRoZSBkZWxh
eS4KCi0tLS0tIExlIDIyIEp1aWwgMTksIMOgIDk6NTMsIE1hcmNvIEZlbHNjaCBtLmZlbHNjaEBw
ZW5ndXRyb25peC5kZSBhIMOpY3JpdCA6Cgo+IEhpIEdpbGxlcywKPiAKPiBjYW4geW91IGFkYXB0
IHRoZSBwYXRjaCB0aXRsZSwgSSBhc3N1bWVkIHRoYXQgdGhlIGJhc2UgZHRzaSBpcyBhZGRpbmcg
YQo+IGdwaW8tZXhwYW5kZXIgd2hpY2ggbWFrZXMgbm8gc2Vuc2UuCgpNeSBmaXJzdCBpbnRlbnQg
d2FzIHRvIGFkZCB0aGUgZ3Bpby1leHBhbmRlciBwY2E5NTM1IGludG8gdGhlIGlteDZxLXJleC1w
cm8uZHRzIGFuZCBpbiBhIGZ1dHVyZSBpbXg2cXAtcmV4LXVsdHJhLmR0cwpIb3dldmVyIEkgbm90
aWNlZCB0aGF0IHRoZSBzZ3RsNTAwMCB3YXMgYWxyZWFkeSBpbiB0aGUgZHRzaS4KSXQgaXMgbWF5
YmUgZHVlIHRvIHRoZSBmYWN0IHRoYXQgbGlrZSB0aGUgcGNhOTUzNSwgdGhlIHNndGw1MDAwIGlz
IHByZXNlbnQgb24gdGhlIGJhc2Vib2FyZCBub3Qgb24gdGhlIFNPTS4KVGh1cyBJIGd1ZXNzIHRo
YXQgYmFzZWJvYXJkIHN0dWZmIGNvbW1vbiB0byBhbGwgcmV4IFNPTSBzaG91bGQgYmUgaW4gaW14
NnFkbC1yZXguZHRzaSBhbmQgbm90IGluIHRoZSBkdHMuCkRvZXMtaXQgc2VlbSBjb3JyZWN0IHRv
IHlvdSA/Cgo+IAo+IE9uIDE5LTA3LTE5IDEyOjQ2LCBHaWxsZXMgRE9GRkUgd3JvdGU6Cj4+IFRo
ZSBwY2E5NTM1IGdwaW8gZXhwYW5kZXIgaXMgcHJlc2VudCBvbiB0aGUgUmV4IGJhc2Vib2FyZCwg
YnV0IG1pc3NpbmcKPj4gZnJvbSB0aGUgZHRzaS4KPj4gCj4+IEFkZCB0aGUgbmV3IGdwaW8gY29u
dHJvbGxlciBhbmQgdGhlIGFzc29jaWF0ZWQgaW50ZXJydXB0IGxpbmUKPj4gTVg2UURMX1BBRF9O
QU5ERl9DUzNfX0dQSU82X0lPMTYuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBHaWxsZXMgRE9GRkUg
PGdpbGxlcy5kb2ZmZUBzYXZvaXJmYWlyZWxpbnV4LmNvbT4KPj4gLS0tCj4gCj4gSGF2aW5nIGEg
Y2hhbmdlbG9nIHdvdWxkIGJlIG5pY2UgdG9vLgo+IAo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnFkbC1yZXguZHRzaSB8IDE5ICsrKysrKysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxOSBpbnNlcnRpb25zKCspCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnFkbC1yZXguZHRzaQo+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcmV4LmR0c2kK
Pj4gaW5kZXggOTdmMTY1OTE0NGVhLi5iNTE3ZWZiMjJmY2IgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gv
YXJtL2Jvb3QvZHRzL2lteDZxZGwtcmV4LmR0c2kKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnFkbC1yZXguZHRzaQo+PiBAQCAtMTM2LDYgKzEzNiwxOSBAQAo+PiAgCQljb21wYXRpYmxl
ID0gImF0bWVsLDI0YzAyIjsKPj4gIAkJcmVnID0gPDB4NTc+Owo+PiAgCX07Cj4+ICsKPj4gKwlw
Y2E5NTM1OiBncGlvOEAyNyB7Cj4+ICsJCWNvbXBhdGlibGUgPSAibnhwLHBjYTk1MzUiOwo+PiAr
CQlyZWcgPSA8MHgyNz47Cj4gCj4gVGhlIGkyYyBkZXZpY2VzIGFyZSBvcmRlcmQgYnkgdGhlaXIg
aTJjLWFkZHJlc3NlcyBzdGFydGluZyBmcm9tIHRoZQo+IGxvd2VzdC4KPgoKQWNrLgoKPj4gKwkJ
Z3Bpby1jb250cm9sbGVyOwo+PiArCQkjZ3Bpby1jZWxscyA9IDwyPjsKPj4gKwkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPj4gKwkJcGluY3RybC0wID0gPCZwaW5jdHJsX3BjYTk1MzU+Owo+
PiArCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvNj47Cj4+ICsJCWludGVycnVwdHMgPSA8MTYg
SVJRX1RZUEVfTEVWRUxfTE9XPjsKPj4gKwkJaW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4+ICsJCSNp
bnRlcnJ1cHQtY2VsbHMgPSA8Mj47Cj4+ICsJfTsKPj4gIH07Cj4+ICAKPj4gICZpMmMzIHsKPj4g
QEAgLTIzNyw2ICsyNTAsMTIgQEAKPj4gIAkJCT47Cj4+ICAJCX07Cj4+ICAKPj4gKwkJcGluY3Ry
bF9wY2E5NTM1OiBwY2E5NTM1IHsKPj4gKwkJCWZzbCxwaW5zID0gPAo+PiArCQkJCU1YNlFETF9Q
QURfTkFOREZfQ1MzX19HUElPNl9JTzE2CTB4MDAwMTcwNTkKPiAKPiBUaGUgcGlubXV4IGJlbG93
IGRvbid0IHVzZSB0aGUgbGVhZGluZyB6ZXJvJ3MgaWYgeW91IGFyZSB0aGUgZmlyc3QgSQo+IHdv
dWxkIGRyb3AgdGhhdC4KPiAKPiBSZWdhcmRzLAo+ICBNYXJjbwo+CgpBY2suCgpSZWdhcmRzLApH
aWxsZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
