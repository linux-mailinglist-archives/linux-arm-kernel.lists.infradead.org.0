Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200DB1D356F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfYdzskxYCQo6IBVCNyl0xQVE1A6UBBB8uFDGITTajA=; b=MHlJRFF7hWOojG
	cb8kcRKaRaOaFcWJGgVtm9PdlqMr0BsCz1deP0eTic3E0lFHkbrZmiSH0p6/dfF1VZ9V7c+juNpS0
	uRJfVbvUuN+90vDFHxqL/dDw+nhL9gXWy5U0/OTr0UbuZr7HCNvQ3Q828ZqkBcYphs65hBOWzxDXQ
	DgOCnf5w5nGXLHBI4FqyyefMUEBKZCPUTU2jKttN7VQyn/FPM4vy71QToZJibPeZsOGLLkZi6+c4P
	Z36wYBxV7ZUBBUooLEJvXVzEiuFg87ZWGn6dQzQolWdixo9fVJ0TSX+IYTDLDp7kfB5H4xxr71gwU
	OwrCX0jqZFqjG3rCX+qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZG1i-0006lc-6d; Thu, 14 May 2020 15:44:02 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZG1b-0006lA-1N
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:43:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 08A7D2A2F7B
Message-ID: <9082c3117b9e9e65f35fc7ad91009c6ce412a842.camel@collabora.com>
Subject: Re: [PATCH] media: cedrus: Propagate OUTPUT resolution to CAPTURE
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 14 May 2020 11:43:40 -0400
In-Reply-To: <20200514153903.341287-1-nicolas.dufresne@collabora.com>
References: <20200514153903.341287-1-nicolas.dufresne@collabora.com>
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_084355_210193_87CC57A8 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, stable@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1ZGkgMTQgbWFpIDIwMjAgw6AgMTE6MzkgLTA0MDAsIE5pY29sYXMgRHVmcmVzbmUgYSDD
qWNyaXQgOgo+IEFzIHBlciBzcGVjLCB0aGUgQ0FQVFVSRSByZXNvbHV0aW9uIHNob3VsZCBiZSBh
dXRvbWF0aWNhbGx5IHNldCBiYXNlZCBvbgo+IHRoZSBPVFVQVVQgcmVzb2x1dGlvbi4gVGhpcyBw
YXRjaCBwcm9wZXJseSBwcm9wYWdhdGUgd2lkdGgvaGVpZ2h0IHRvIHRoZQo+IGNhcHR1cmUgd2hl
biB0aGUgT1VUUFVUIGZvcm1hdCBpcyBzZXQgYW5kIG92ZXJyaWRlIHRoZSB1c2VyIHByb3ZpZGVk
Cj4gd2lkdGgvaGVpZ2h0IHdpdGggY29uZmlndXJlZCBPVVRQVVQgcmVzb2x1dGlvbiB3aGVuIHRo
ZSBDQVBUVVJFIGZtdCBpcwo+IHVwZGF0ZWQuCj4gCj4gVGhpcyBhbHNvIHByZXZlbnRzIHVzZXJz
cGFjZSBmcm9tIHNlbGVjdGluZyBhIENBUFRVUkUgcmVzb2x1dGlvbiB0aGF0IGlzCj4gdG9vIHNt
YWxsLCBhdm9pZGluZyB1bndhbnRlZCBwYWdlIGZhdWx0cy4KClNpZGUgbm90ZSwgdGhpcyBwYXRj
aCBpcyBiYXNlZCBvbiB0b3Agb2YgIlNhbXVlbCBIb2xsYW5kIDxzYW11ZWxAc2hvbGxhbmQub3Jn
PiIKcGF0Y2hlczoKCglbUEFUQ0ggdjMgMS8yXSBtZWRpYTogY2VkcnVzOiBQcm9ncmFtIG91dHB1
dCBmb3JtYXQgZHVyaW5nIGVhY2ggcnVuCglbUEFUQ0ggdjMgMi8yXSBtZWRpYTogY2VkcnVzOiBJ
bXBsZW1lbnQgcnVudGltZSBQTQoKQXMgdGhlIHBhdGNoc2V0IGFsc28gZml4ZXMgY29uY3VycmVu
dCBkZWNvZGluZyBpc3N1ZXMuIFRoaXMgd2FzIHRlc3RlZCB1c2luZwpHU3RyZWFtZXIgaW1wbGVt
ZW50YXRpb24sIHdoaWNoIHN0cmljdGx5IGZvbGxvdyB0aGUgU3RhdGVsZXNzIENPREVDIHNwZWMg
YW5kCmV4cGVjdCBPVVRQVVQgdG8gQ0FQVFVSRSB3aWR0aC9oZWlnaHQgcHJvcGFnYXRpb24uCgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29s
bGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9j
ZWRydXNfdmlkZW8uYyB8IDcgKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9zdW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKPiBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX3ZpZGVvLmMKPiBpbmRleCAxNmQ4MjMwOWU3YjYuLmE2ZDZiMTVh
ZGMyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2Nl
ZHJ1c192aWRlby5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9j
ZWRydXNfdmlkZW8uYwo+IEBAIC0yNDcsNiArMjQ3LDggQEAgc3RhdGljIGludCBjZWRydXNfdHJ5
X2ZtdF92aWRfY2FwKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkCj4gKnByaXYsCj4gIAkJcmV0dXJu
IC1FSU5WQUw7Cj4gIAo+ICAJcGl4X2ZtdC0+cGl4ZWxmb3JtYXQgPSBmbXQtPnBpeGVsZm9ybWF0
Owo+ICsJcGl4X2ZtdC0+d2lkdGggPSBjdHgtPnNyY19mbXQud2lkdGg7Cj4gKwlwaXhfZm10LT5o
ZWlnaHQgPSBjdHgtPnNyY19mbXQuaGVpZ2h0Owo+ICAJY2VkcnVzX3ByZXBhcmVfZm9ybWF0KHBp
eF9mbXQpOwo+ICAKPiAgCXJldHVybiAwOwo+IEBAIC0zMTksMTEgKzMyMSwxNCBAQCBzdGF0aWMg
aW50IGNlZHJ1c19zX2ZtdF92aWRfb3V0KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkCj4gKnByaXYs
Cj4gIAkJYnJlYWs7Cj4gIAl9Cj4gIAo+IC0JLyogUHJvcGFnYXRlIGNvbG9yc3BhY2UgaW5mb3Jt
YXRpb24gdG8gY2FwdHVyZS4gKi8KPiArCS8qIFByb3BhZ2F0ZSBmb3JtYXQgaW5mb3JtYXRpb24g
dG8gY2FwdHVyZS4gKi8KPiAgCWN0eC0+ZHN0X2ZtdC5jb2xvcnNwYWNlID0gZi0+Zm10LnBpeC5j
b2xvcnNwYWNlOwo+ICAJY3R4LT5kc3RfZm10LnhmZXJfZnVuYyA9IGYtPmZtdC5waXgueGZlcl9m
dW5jOwo+ICAJY3R4LT5kc3RfZm10LnljYmNyX2VuYyA9IGYtPmZtdC5waXgueWNiY3JfZW5jOwo+
ICAJY3R4LT5kc3RfZm10LnF1YW50aXphdGlvbiA9IGYtPmZtdC5waXgucXVhbnRpemF0aW9uOwo+
ICsJY3R4LT5kc3RfZm10LndpZHRoID0gY3R4LT5zcmNfZm10LndpZHRoOwo+ICsJY3R4LT5kc3Rf
Zm10LmhlaWdodCA9IGN0eC0+c3JjX2ZtdC5oZWlnaHQ7Cj4gKwljZWRydXNfcHJlcGFyZV9mb3Jt
YXQoJmN0eC0+ZHN0X2ZtdCk7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
