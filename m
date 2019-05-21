Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E07257FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 21:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWmEsTp2mSjWXRFNjjUIopFh2Oh4kjmdqVr/M1IGRgw=; b=KfcQ/DiFWPOvOs
	P2ii37DUpZoebFXoW92rG4/T+axw/kGT6fbkbjVTGzDhptaO4dbHlvs+h1/OYGWNC3H7xselz5/LW
	TAa0TRezsuhZw7w2QkAxPBtjH++jpoUdj+pzwhGLbT4OZMuNYwgci8ZPwQNH2V0UG+zDcg01k3yO8
	5tZ0cC2QMY17q/61oNWB4t0bZydy5v4ARJe8GzC6LicR9WncT+jOgtF9zxYiO7z/Qqah505HIO1U4
	wNv2eenXZ4hZUWTOp7ZDoYumumWNJnmMFPKOEMl/EolVuywzYjzttBe3AMeunWGqZxZa/t4Dihk8Y
	YLSlHLiYjlQ1a4hBRmXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTA6Y-0006Pp-Nk; Tue, 21 May 2019 19:07:18 +0000
Received: from gateway33.websitewelcome.com ([192.185.146.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTA6R-0006Ow-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 19:07:12 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway33.websitewelcome.com (Postfix) with ESMTP id A402F733DE
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 14:06:57 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id TA6DhsBfMdnCeTA6DhYUJt; Tue, 21 May 2019 14:06:57 -0500
X-Authority-Reason: nr=8
Received: from [189.250.47.159] (port=33246 helo=[192.168.1.76])
 by gator4166.hostgator.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hTA6C-003W0t-O4; Tue, 21 May 2019 14:06:56 -0500
Subject: Re: [PATCH] can: mark expected switch fall-throughs
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S. Miller" <davem@davemloft.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
References: <20190129180612.GA28650@embeddedor>
 <31d206cd-65f2-66be-ed79-583210a88d57@pengutronix.de>
 <0527d7c5-78f8-d581-1960-7ceda8bc3f49@embeddedor.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <0f2d0366-d384-c247-e144-32a2480e0817@embeddedor.com>
Date: Tue, 21 May 2019 14:06:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0527d7c5-78f8-d581-1960-7ceda8bc3f49@embeddedor.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.250.47.159
X-Source-L: No
X-Exim-ID: 1hTA6C-003W0t-O4
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.76]) [189.250.47.159]:33246
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 9
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_120711_359867_8186C421 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.146.195 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.185.146.195 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-can@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKClRoaXMgcGF0Y2ggaGFzIGJlZW4gaW4gbGludXgtY2FuLW5leHQgc2luY2UgRmVi
cnVhcnksIGJ1dCBmb3Igc29tZSByZWFzb24KaXQgaGFzbid0IGJlZW4gbWVyZ2VkIGludG8gbmV0
IHlldCwgbm90IGV2ZW4gb25jZSBpbnRvIGxpbnV4LW5leHQuCgpJIGNhbiBhZGQgaXQgdG8gbXkg
dHJlZSBpZiB5b3UgZG9uJ3QgbWluZC4KClRoYW5rcwotLQpHdXN0YXZvCgpPbiA1LzgvMTkgMTI6
MzAgUE0sIEd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6Cj4gSGkgTWFyYywKPiAKPiBPbiAyLzI2
LzE5IDI6MDIgQU0sIE1hcmMgS2xlaW5lLUJ1ZGRlIHdyb3RlOgo+PiBPbiAxLzI5LzE5IDc6MDYg
UE0sIEd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6Cj4+PiBJbiBwcmVwYXJhdGlvbiB0byBlbmFi
bGluZyAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoLCBtYXJrIHN3aXRjaCBjYXNlcwo+Pj4gd2hlcmUg
d2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2guCj4+Pgo+Pj4gVGhpcyBwYXRjaCBmaXhl
cyB0aGUgZm9sbG93aW5nIHdhcm5pbmdzOgo+Pj4KPj4+IGRyaXZlcnMvbmV0L2Nhbi9wZWFrX2Nh
bmZkL3BlYWtfcGNpZWZkX21haW4uYzo2Njg6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5
IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4+PiBkcml2ZXJzL25ldC9j
YW4vc3BpL21jcDI1MXguYzo4NzU6Nzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwg
dGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4+PiBkcml2ZXJzL25ldC9jYW4vdXNi
L3BlYWtfdXNiL3BjYW5fdXNiLmM6NDIyOjY6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBm
YWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+Pj4gZHJpdmVycy9uZXQvY2Fu
L2F0OTFfY2FuLmM6ODk1OjY6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91
Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+Pj4gZHJpdmVycy9uZXQvY2FuL2F0OTFfY2Fu
LmM6OTUzOjE1OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2lt
cGxpY2l0LWZhbGx0aHJvdWdoPV0KPj4+IGRyaXZlcnMvbmV0L2Nhbi91c2IvcGVha191c2IvcGNh
bl91c2IuYzogSW4gZnVuY3Rpb24g4oCYcGNhbl91c2JfZGVjb2RlX2Vycm9y4oCZOgo+Pj4gZHJp
dmVycy9uZXQvY2FuL3VzYi9wZWFrX3VzYi9wY2FuX3VzYi5jOjQyMjo2OiB3YXJuaW5nOiB0aGlz
IHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPj4+
ICAgIGlmIChuICYgUENBTl9VU0JfRVJST1JfQlVTX0xJR0hUKSB7Cj4+PiAgICAgICBeCj4+PiBk
cml2ZXJzL25ldC9jYW4vdXNiL3BlYWtfdXNiL3BjYW5fdXNiLmM6NDI4OjI6IG5vdGU6IGhlcmUK
Pj4+ICAgY2FzZSBDQU5fU1RBVEVfRVJST1JfV0FSTklORzoKPj4+ICAgXn5+fgo+Pj4KPj4+IFdh
cm5pbmcgbGV2ZWwgMyB3YXMgdXNlZDogLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD0zCj4+Pgo+Pj4g
VGhpcyBwYXRjaCBpcyBwYXJ0IG9mIHRoZSBvbmdvaW5nIGVmZm9ydHMgdG8gZW5hYmxpbmcKPj4+
IC1XaW1wbGljaXQtZmFsbHRocm91Z2guCj4+Pgo+Pj4gTm90aWNlIHRoYXQgaW4gc29tZSBjYXNl
cyBzcGVsbGluZyBtaXN0YWtlcyB3ZXJlIGZpeGVkLgo+Pj4gSW4gb3RoZXIgY2FzZXMsIHRoZSAv
KiBmYWxsIHRocm91Z2ggKi8gY29tbWVudCBpcyBwbGFjZWQKPj4+IGF0IHRoZSBib3R0b20gb2Yg
dGhlIGNhc2Ugc3RhdGVtZW50LCB3aGljaCBpcyB3aGF0IEdDQwo+Pj4gaXMgZXhwZWN0aW5nIHRv
IGZpbmQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2
b0BlbWJlZGRlZG9yLmNvbT4KPj4KPj4gQWRkZWQgdG8gbGludXgtY2FuLW5leHQuCj4+Cj4gCj4g
SSB3b25kZXIgaWYgdGhlcmUgaXMgYW55IGNoYW5jZSBmb3IgdGhpcyBwYXRjaCB0byBiZSBxdWV1
ZWQgdXAgZm9yIDUuMi1yYzEuCj4gCj4gVGhhbmtzCj4gLS0KPiBHdXN0YXZvCj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
