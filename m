Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2171B11F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bR2DrxvueGd5he58OW2ReprJjI5Vx1olGa8+b6Kppo=; b=D3673tMEWA3yrz
	uu8dhi+sGxNELN5ec6OGVXXsH0rU7qBg0l4xs434qOjAYXGgHAzuM+iZwMM0RDB+zKxQxSjGbwPp4
	pwnj+a+GdfoCWrBI4tfx6oPJl2qZD4PuCxFrdSXQNfsTi5VW/TRHIOomdS+V9b/aaTnGhPh5OFBa0
	i+wokCHI70cByjD449WJJyt30rhPY0J++t+O4qUE3q/WkzE3iMs7gzmXVCSmo1zztFiS8HCloNY5p
	GdeOy3JARvvYfoTOeR30nPV4wS+tCvA9Asd31PP/EQyNEXTMPvIfzdCL0UPBNmi+d9ATIV6Mpa/6r
	eaHT6G0JczHzRnIse5Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZUH-0003pw-UI; Mon, 20 Apr 2020 16:41:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZU8-0003oy-4Y
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:41:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id s10so3871816wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 09:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pHkfqaZsrvViCrU4vsZGcZiXBeGIBVSy7YBzRqpKWdA=;
 b=DocS62iBm+MaxthEy8q58x+ZJU00CguRHCiYuW6dSG4/U6ZyGPWmJrpqRaNjkRtbF7
 /RdZSQWSQ5H6mteZjuHLXUdo5lFRpI3NnH8AfGByJ9+aIiSkz/qzxmyb5XOd0oKkuUsG
 5IetuYNfruFqMLFvjQX8+VAgTEgvRhLcCFAVYfSpeNrSsewv1pjunDnWaVYCwjh2Ec5N
 /3t24EgrtLPIjg2mkbufRaGlL+k6ZWxTG60iMpCC+tZKDq3qJ9vY+fbowAm6WE53kEhc
 o9nC28ByOnpk4pqSScAIK+vx+0Bn7EcqO7v0rNdv5mDmP2rkenwq4oordoJJOvDWy/aI
 NbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pHkfqaZsrvViCrU4vsZGcZiXBeGIBVSy7YBzRqpKWdA=;
 b=evmc1wJvqamqsf2vf9HD9Rq3NMYnYi4ktQS1aJ036YpVSenWYl73CsdpxhZH0taX7T
 RtPeVBoUC+Khv7LaOBhIyRStDUYp1+oIWmDm16pv9fStQtVqZ36ri5UrXOT0QWtAMlsk
 wCugXNmDmBB0XrFFe73pZwDJTN5UZ0ljtVfDAzBNBb+grApxB1x50887uKF9yyad3NQv
 WTjD4gd+dR6J8jw9I3G49rNNBj0xMZUd7QnCHieasFKTeIqHzaMdeqXoVRgeQxU+Xzul
 06N5pZ+nueQSaUJYHn9zfdCON7Y+X1oZWK3bfNKmZnjW4vLA0GJ5c4zpnqMqzmcwg9pH
 r35g==
X-Gm-Message-State: AGi0PuZE8W7J2BHfHTnVkIcIvc6pC1RU37MHP/9FEGEaeWvUBLtQHXgd
 piCGqhPnEhmd+mkzmt6hrAI=
X-Google-Smtp-Source: APiQypIu7Usjxv+iYA4v7BBaqwgthc4mJlRmQjaEIvh6W/U/9yhM0xy2y9UlKGHHHnWU6b0Gch+giQ==
X-Received: by 2002:a5d:6148:: with SMTP id y8mr19160703wrt.236.1587400886434; 
 Mon, 20 Apr 2020 09:41:26 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id j13sm48180wro.51.2020.04.20.09.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 09:41:25 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Samuel Holland <samuel@sholland.org>, linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
Date: Mon, 20 Apr 2020 18:41:23 +0200
Message-ID: <5590139.lOV4Wx5bFT@jernej-laptop>
In-Reply-To: <20200420151010.GL125838@aptenodytes>
References: <20200408010232.48432-1-samuel@sholland.org>
 <244922ec-ed3a-eca7-6640-49de7ad9c605@sholland.org>
 <20200420151010.GL125838@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_094128_179214_0DF9D900 
X-CRM114-Status: GOOD (  29.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jernej.skrabec[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-sunxi@googlegroups.com, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHBvbmVkZWxqZWssIDIwLiBhcHJpbCAyMDIwIG9iIDE3OjEwOjEwIENFU1QgamUgUGF1bCBL
b2NpYWxrb3dza2kgCm5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gT24gU3VuIDE5IEFwciAyMCwgMTU6
MjgsIFNhbXVlbCBIb2xsYW5kIHdyb3RlOgo+ID4gT24gNC84LzIwIDExOjAxIEFNLCBKZXJuZWog
xaBrcmFiZWMgd3JvdGU6Cj4gPiA+IEhpIFNhbXVlbCEKPiA+ID4gCj4gPiA+IERuZSBzcmVkYSwg
MDguIGFwcmlsIDIwMjAgb2IgMDM6MDI6MzIgQ0VTVCBqZSBTYW11ZWwgSG9sbGFuZCBuYXBpc2Fs
KGEpOgo+ID4gPj4gVGhpcyBhbGxvd3MgdGhlIFZFIGNsb2NrcyBhbmQgUExMX1ZFIHRvIGJlIGRp
c2FibGVkIG1vc3Qgb2YgdGhlIHRpbWUuCj4gPiA+PiAKPiA+ID4+IFNpbmNlIHRoZSBkZXZpY2Ug
aXMgc3RhdGVsZXNzLCBlYWNoIGZyYW1lIGdldHMgYSBzZXBhcmF0ZSBydW50aW1lIFBNCj4gPiA+
PiByZWZlcmVuY2UuIEVuYWJsZSBhdXRvc3VzcGVuZCBzbyB0aGUgUE0gY2FsbGJhY2tzIGFyZSBu
b3QgcnVuIGJlZm9yZQo+ID4gPj4gYW5kCj4gPiA+PiBhZnRlciBldmVyeSBmcmFtZS4KPiA+ID4+
IAo+ID4gPj4gU2lnbmVkLW9mZi1ieTogU2FtdWVsIEhvbGxhbmQgPHNhbXVlbEBzaG9sbGFuZC5v
cmc+Cj4gPiA+PiAtLS0KPiA+ID4+IAo+ID4gPj4gSSB0ZXN0ZWQgdGhpcyB3aXRoIHY0bDItcmVx
dWVzdC10ZXN0LiBJIGRvbid0IGhhdmUgdGhlIHNldHVwIHRvIGRvCj4gPiA+PiBhbnl0aGluZyBt
b3JlIGNvbXBsaWNhdGVkIGF0IHRoZSBtb21lbnQuCj4gPiA+PiAKPiA+ID4+IC0tLQo+ID4gPj4g
Cj4gPiA+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMuYyAgIHwg
ICA3ICsrCj4gPiA+PiAgLi4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19ody5j
ICAgIHwgMTE1ICsrKysrKysrKysrKy0tLS0tLQo+ID4gPj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1
bnhpL2NlZHJ1cy9jZWRydXNfaHcuaCAgICB8ICAgMyArCj4gPiA+PiAgMyBmaWxlcyBjaGFuZ2Vk
LCA4OCBpbnNlcnRpb25zKCspLCAzNyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gW3NuaXBdCj4gPiAK
PiA+ID4gUmVzZXQgYWJvdmUgY2F1c2VzIHByb2JsZW0uIFdoZW4gZm9ybWF0IGlzIHNldCBpbiBj
ZWRydXNfc19mbXRfdmlkX2NhcCgpCj4gPiA+IGEKPiA+ID4gZnVuY3Rpb24gaXMgY2FsbGVkLCB3
aGljaCBzZXRzIGZldyByZWdpc3RlcnMgaW4gSFcuIE9mIGNvdXJzZSwgdGhlcmUgaXMKPiA+ID4g
bm8KPiA+ID4gZ3VhcmFudGVlIHRoYXQgc29tZW9uZSB3aWxsIHN0YXJ0IGRlY29kaW5nIGltbWVk
aWF0ZWx5IGFmdGVyIGNhcHR1cmUKPiA+ID4gZm9ybWF0IGlzIHNldC4gU28sIGlmIHRoZSBkcml2
ZXIgcHV0cyBWUFUgdG8gc2xlZXAgaW4gdGhlIG1lYW4gdGltZSwKPiA+ID4gcmVzZXQgd2lsbCBj
bGVhciB0aG9zZSByZWdpc3RlcnMgYW5kIGRlY29kZWQgdmlkZW8gd2lsbCBiZSBpbiBkaWZmZXJl
bnQKPiA+ID4gZm9ybWF0IHRoYW4gZXhwZWN0ZWQuIEl0IGNvdWxkIGJlIGV2ZW4gYXJndWVkIHRo
YXQgcmVnaXN0ZXJzIHNob3VsZCBub3QKPiA+ID4gYmUgc2V0IGluIHRoYXQgZnVuY3Rpb24gYW5k
IHRoYXQgdGhpcyBpcyBkZXNpZ24gaXNzdWUgb3IgYnVnIGluIGRyaXZlci4KPiA+IAo+ID4gWW91
J3JlIHJpZ2h0LiBJIGRpZG4ndCBzZWUgdGhhdCBjZWRydXNfZHN0X2Zvcm1hdF9zZXQoKSB3YXMg
Y2FsbGVkIG91dHNpZGUKPiA+IGNlZHJ1c19lbmdpbmVfZW5hYmxlL2Rpc2FibGUoKS4KPiAKPiBU
aGlzIG1pZ2h0IGluZGVlZCBiZSBhbiBpc3N1ZSB3aXRoIG11bHRpcGxlIGRlY29kaW5nIGNvbnRl
eHRzIGluIHBhcmFsbGVsLAo+IHdpdGggcG90ZW50aWFsbHkgZGlmZmVyZW50IGZvcm1hdHMuIEZv
ciB0aGF0IHJlYXNvbiwgaXQgbG9va3MgbGlrZSB0aGUKPiByaWdodCB0aGluZyB0byBkbyB3b3Vs
ZCBiZSB0byBzZXQgdGhlIGZvcm1hdCBhdCBlYWNoIGRlY29kaW5nIHJ1biBiYXNlZCBvbgo+IHRo
ZSBmb3JtYXQgc2V0IGluIHRoZSBjb250ZXh0IGJ5IHNfZm10LgoKU28geW91IGFyZSBzdWdnZXN0
aW5nIHRoYXQgY2VkcnVzX2RzdF9mb3JtYXRfc2V0KCkgc2hvdWxkIGJlIG1vdmVkIHRvIApjZWRy
dXNfZGV2aWNlX3J1bigpLCByaWdodD8gVGhpcyB3YXkgYWxsIHJlZ2lzdGVycyBhcmUgc2V0IGF0
IGVhY2ggcnVuLCB3aGljaCAKaXMgdGhlbiB0cnVseSBzdGF0ZWxlc3MuCgpCZXN0IHJlZ2FyZHMs
Ckplcm5lagoKPiAKPiA+ID4gQW55d2F5LCBJIG1hZGUgYSBydW50aW1lIFBNIHN1cHBvcnQgbG9u
ZyB0aW1lIGFnbywgYnV0IG5ldmVyIGRvIGFueXRoaW5nCj4gPiA+IGJlc2lkZXMgcnVubmluZyBm
ZXcgdGVzdHM6Cj4gPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9qZXJuZWpzay9saW51eC0xL2NvbW1p
dC8KPiA+ID4gZDI0NWI3ZmEyYTI2ZTUxOWZmNjc1YTI1NWM0NTIzMDU3NWE0YTg0OAo+ID4gPiAK
PiA+ID4gSXQgdGFrZXMgYSBiaXQgZGlmZmVyZW50IGFwcHJvYWNoLiBQb3dlciBpcyBlbmFibGVk
IGluIHN0YXJ0IHN0cmVhbWluZwo+ID4gPiBhbmQKPiA+ID4gZGlzYWJsZWQgaW4gc3RvcCBzdHJl
YW1pbmcuIFRoaXMgaXMgc2ltcGxlciBhcHByb2FjaCBhbmQgZG9lc24ndCBuZWVkCj4gPiA+IGF1
dG9zdXNwZW5kIGZ1bmN0aW9uYWxpdHkuIEkgYWxzbyBtb3ZlZCBjYWxsIHRvIGEgZnVuY3Rpb24g
d2hpY2ggc2V0cwo+ID4gPiBmb3JtYXQgaW4gSFcgcmVnaXN0ZXJzIHRvIHN0YXJ0IHN0cmVhbWlu
ZyBoYW5kbGVyLCBzbyBpdCdzIGd1YXJhbnRlZWQKPiA+ID4gdG8gYmUgc2V0IGF0IHRoZSBiZWdp
bm5pbmcuCj4gPiAKPiA+IEFzc3VtaW5nIGNlZHJ1c19kZXZpY2VfcnVuKCkgb25seSBnZXRzIGNh
bGxlZCBiZXR3ZWVuIHN0cmVhbW9uIGFuZAo+ID4gc3RyZWFtb2ZmICh3aGljaCBhcHBlYXJzIHRv
IGJlIHRoZSBjYXNlKSwgdGhpcyBsb29rcyBsaWtlIGEgYmV0dGVyCj4gPiBkZXNpZ24uCj4gCj4g
WWVzLCB0aGlzIGlzIGRlZmludGllbHkgZW5zdXJlZCBieSB0aGUgVjRMMiBmcmFtZXdvcmsuIEkg
YWdyZWUgdGhhdAo+IHN0cmVhbW9uL29mZiBhcmUgdGhlIGNvcnJlY3Qgc3luYyBwb2ludHMuCj4g
Cj4gPiA+IE5vdGUgdGhhdCBzb21lIHJlZ2lzdGVycyBhcmUgb25seSBzZXQgaW4gc3RhcnQgc3Ry
ZWFtaW5nIGhhbmRsZXIuIFdpdGgKPiA+ID4geW91cgo+ID4gPiBhcHByb2FjaCwgaWYgZmlyc3Qg
ZnJhbWUgaXMgc3VibWl0dGVkIHRvbyBsYXRlLCBhc3NlcnRpbmcgYW5kCj4gPiA+IGRlLWFzc2Vy
dGluZwo+ID4gPiByZXNldCBsaW5lIGNvdWxkIHJlc2V0IHRob3NlIHJlZ2lzdGVycy4KPiA+IAo+
ID4gSSBvbmx5IHNlZSByZWdpc3RlcnMgYmVpbmcgc2V0IGluIGNlZHJ1c19zdGFydF9zdHJlYW1p
bmcoKSBhZnRlciB5b3VyCj4gPiBwYXRjaCwgd2hlcmUgeW91IGFkZCBhIGNhbGwgdG8gY2VkcnVz
X2RzdF9mb3JtYXRfc2V0KCkuIEkgY2FuJ3QgZmluZCBhbnkKPiA+IHJlZ2lzdGVycyBiZWluZyB3
cml0dGVuIGluIGFueSBvZiB0aGUgLT5zdGFydCgpIGNhbGxiYWNrcy4KPiA+IAo+ID4gSSdsbCBz
ZW5kIGEgdjIgd2hpY2ggY29tYmluZXMgdGhlIHR3byBwYXRjaGVzOiB5b3VycyB3aGljaCBoYW5k
bGVzIHRoZQo+ID4gcnVudGltZSBwYXJ0IGJldHRlciwgYW5kIG1pbmUgd2hpY2ggaGFuZGxlcyB0
aGUgcHJvYmUvcmVtb3ZlIHBhcnQgYmV0dGVyCj4gPiB3aXRoICFDT05GSUdfUE0uCj4gVGhhbmtz
LCB0aGF0IHNob3VsZCBkbyBpdCEKPiAKPiBDaGVlcnMsCj4gCj4gUGF1bAoKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
