Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BDF169E7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 07:32:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PISGcaAgvUbg9Ytm19Ig2Dukpl0BCY2stiVFRoPzgiU=; b=NSLjU92alhcV6Kl+owSthGvma
	jbbyYePQfU0PyK97/uWb7eB5qj/+YGXLCsi8lPiE/jKZMryqyOMktUmGhzC493OeGyZ+kTpQhgDha
	YnFGCKQCV0Yi+KdQ0ZYkdLaRC2VR2RFc3IMH6zeCY+8UgZ4/HdZIlngQyk5f4hp9skSVoaxNQmG+3
	J640hSQafmRX49KnTv3SATs6aSFIEyX5PZO7qebATb1FJSqBwk+g4s2DW+HZ7JOrhvKJ/Gi+0pBfu
	PMKuw24qlCKl/Np9JDPQid9BMOzk5myq8u69zoictUzMok9o/WfX6Bhqq7DXaqkKaQ8e+1FYM4G4y
	w1qUKCxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67I2-0006MM-Qp; Mon, 24 Feb 2020 06:32:26 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67H1-0005QH-Gn
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 06:31:25 +0000
Received: from 94.155.250.134 ([94.155.250.134]) by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Sun, 23 Feb 2020 22:31:11 -0800
Subject: Re: [linux-sunxi] Re: [PATCH 0/4] Add support for charger LED for
 AXP813 and TBS A711 Tablet
To: linux-sunxi@googlegroups.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200223131435.681620-1-megous@megous.com>
 <20200223132730.6g7tnm2f263oubhv@core.my.home>
 <20200223133517.hfqrg5dta2xk4zj3@core.my.home>
From: Stefan Mavrodiev <stefan@olimex.com>
Message-ID: <1464324b-2b69-c20e-4af8-f32ae5451ea6@olimex.com>
Date: Mon, 24 Feb 2020 08:31:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200223133517.hfqrg5dta2xk4zj3@core.my.home>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_223123_570248_92F72520 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIvMjMvMjAgMzozNSBQTSwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gT24gU3VuLCBGZWIg
MjMsIDIwMjAgYXQgMDI6Mjc6MzBQTSArMDEwMCwgbWVnb3VzIGhsYXZuaSB3cm90ZToKPj4gT24g
U3VuLCBGZWIgMjMsIDIwMjAgYXQgMDI6MTQ6MzFQTSArMDEwMCwgbWVnb3VzIGhsYXZuaSB3cm90
ZToKPj4+IFRoZSB0YWJsZXQgaGFzIGEgY2hhcmdlciBMRUQgZXhwb3NlZCBvbiB0aGUgdG9wLiBU
aGlzIExFRCBpcyBjb250cm9sbGVkCj4+PiBieSBBWFA4MTMgUE1JQy4gQWRkIHN1cHBvcnQgZm9y
IGVuYWJsaW5nIHRoZSBMRUQgYW5kIHVzaW5nIGl0IGVpdGhlcgo+Pj4gZm9yIGNoYXJnaW5nIGlu
ZGljYXRpb24gKGhhbmRsZWQgYnkgUE1JQyBhdXRvbWF0aWNhbGx5KSBvciBmb3Igb3RoZXIgdXNl
cwo+Pj4gdmlhIHVzZXIgY29udHJvbC4KPj4gRGFuZywgSSBqdXN0IG5vdGljZWQgc29tZW9uZSBz
ZW50IGEgc2ltaWxhciBkcml2ZXIgcmVjZW50bHksIGFsdGhvdWdoIEkgaGFkIHRoaXMKPj4gb25l
IHByZXBhcmVkIGZvciBxdWl0ZSBzb21lIHRpbWUgKHNpbmNlIDIwMTcpIGluIG15IHRyZWUuIEkg
Z3Vlc3MgSSBzaG91bGQgaGF2ZQo+PiBzZW50IGl0IGVhcmxpZXIuCj4+Cj4+IFBsZWFzZSBpZ25v
cmUuCj4gVGhvdWdoIHRoZSBtZWFuaW5nIG9mICJyZWNlbnRseSIgaXMgYSBiaXQgcmVsYXRpdmUu
IFRoZSBvdGhlciB3b3JrIHdhcyBzZW50IGluCj4gYSB5ZWFyIGFnby4gSGVyZSdzIGEgcmVmZXJl
bmNlOgo+Cj4gICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL2NvdmVyLzEwNDI3
NjQvCgpIaSwKCkknbSB0aGUgYXV0aG9yIG9mIHRoZSAnb3RoZXInIHdvcmsuIEkgZG9uJ3Qga25v
dyB0aGUgZnVsbCBzdG9yeSBoZXJlLCAKYnV0IEkgZG9uJ3QKbWluZCBzb21lb25lIGVsc2Ugc3Vi
bWl0dGluZyB0aGlzIHBhdGNoIGFzIGhpcy4KCldoZW4gSSBzdWJtaXR0ZWQgdGhlIGxhc3QgcGF0
Y2gsIHRoZXJlIHdhcyB0aGUgcHJvcG9zYWwgdG8gdXNlIHRoZSAKbGVkdHJpZy1wYXR0ZXJuIGlu
c3RlYWQKb2Ygc3lzZnMgZW50cmllcy4gQWxzbyBBWFAyMDkgaGFzIGludmVydGVkIENUUkwgYml0
LgoKUGxlYXNlIHJlYWQgdGhlIHRoZSAnb3RoZXInIGRpc2N1c3Npb24uCgpCZXN0IHJlZ2FyZHMs
ClN0ZWZhbiBNYXZyb2RpZXYKCj4KPj4gcmVnYXJkcywKPj4gCW8uCj4+Cj4+Cj4+PiBQbGVhc2Ug
dGFrZSBhIGxvb2suCj4+Pgo+Pj4gdGhhbmsgeW91IGFuZCByZWdhcmRzLAo+Pj4gICAgT25kcmVq
IEppcm1hbgo+Pj4KPj4+IE9uZHJlaiBKaXJtYW4gKDQpOgo+Pj4gICAgZHQtYmluZGluZ3M6IGxl
ZHM6IEFkZCBhIGJpbmRpbmcgZm9yIEFYUDgxMyBjaGFyZ2VyIGxlZAo+Pj4gICAgbGVkczogYXhw
MjB4OiBTdXBwb3J0IGNoYXJnZXIgTEVEIG9uIEFYUDIweCBsaWtlIFBNSUNzCj4+PiAgICBBUk06
IGR0czogYXhwODEzOiBBZGQgY2hhcmdlciBMRUQKPj4+ICAgIEFSTTogZHRzOiBzdW44aS1hODN0
LXRicy1hNzExOiBFbmFibGUgY2hhcmdpbmcgTEVECj4+Pgo+Pj4gICAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy9sZWRzL2xlZHMtYXhwMjB4LnlhbWwgfCAgMjQgKysKPj4+ICAgYXJjaC9hcm0vYm9v
dC9kdHMvYXhwODF4LmR0c2kgICAgICAgICAgICAgICAgIHwgICA1ICsKPj4+ICAgYXJjaC9hcm0v
Ym9vdC9kdHMvc3VuOGktYTgzdC10YnMtYTcxMS5kdHMgICAgIHwgICA0ICsKPj4+ICAgZHJpdmVy
cy9sZWRzL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsKPj4+ICAgZHJp
dmVycy9sZWRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPj4+ICAg
ZHJpdmVycy9sZWRzL2xlZHMtYXhwMjB4LmMgICAgICAgICAgICAgICAgICAgIHwgMjQwICsrKysr
KysrKysrKysrKysrKwo+Pj4gICBkcml2ZXJzL21mZC9heHAyMHguYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDMgKwo+Pj4gICA3IGZpbGVzIGNoYW5nZWQsIDI4NCBpbnNlcnRpb25zKCsp
Cj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbGVkcy9sZWRzLWF4cDIweC55YW1sCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2xlZHMvbGVkcy1heHAyMHguYwo+Pj4KPj4+IC0tIAo+Pj4gMi4yNS4xCj4+PgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
