Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E431C55E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 14:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llKOl3EOLhpRxU8TfslMzrkwDmxzc4Bx8rBXHTTxU3Q=; b=oeciZBA5Py/u3c
	S6ubNcq2bSOjtVE93EX6ZtNqJmA6rjes16WMGdO1RXwBq9OIPq8Y/q3Xr1nz92kXhdM8RMrKMtG4E
	Ylz1xHmJWARkQNDrEHrO6GzQdKyzRXSI7cI6CBJULJr3JevX7tz10KEMwNLE1gtKDu1oLsBO1luGQ
	FH2KUs3S5OmZwPv9mwmLvdekUhaUg43SBG4+9fKVerAdrcv8DPdcesFxcxlz/Eix/tNqi8IOEVoOz
	6g8yeAD+czrcXca3GpwJYtu6l14MCzzhaHHhuMOAi6V3QqrsZJo8SdJGZvHEqe7nVDJwqUIKAgL6x
	tmj1Dg0RDIDoj+SKwKRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVwxQ-0001Yl-0W; Tue, 05 May 2020 12:45:56 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVwxI-0001YF-HS
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 12:45:50 +0000
Received: by mail-ed1-x544.google.com with SMTP id p16so1633345edm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 05:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YMVoM8MB/DmaYSfgc1C7r97WJiRJ98Zuz8O8b2fB1Tk=;
 b=YZDlR7wbgPixPGqp6u7w1A7c0PPVBfjS74wwW7ww4Ig5XezgZvl9QiF9A0RFr/W9Ih
 rwj2bR4V3i7wXxokh95QBlfNsec5zxioWSkkvqgXo2Jgr9pUUnw45qBqaNiG9N2sbBdZ
 VNT78i2Uaat8Os2U8RbN0mHi2SZjlpTYFnafK3h7c0cts4BjvSTLmL+AQ0sOHj1OfrJx
 VyRIhjHZ85wtcQMoCHETeWA3CSUcPMQ35mZiZOAAJA/KIfWTwuxPJ/NfT9UqUXsOBTCq
 Ol/NeYcxTHXH1dJk4OIDZsX8vpsCtpkW96uaiICi5xxxIu2m8QY/ymo0aAf1b1VjYe5g
 ovyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YMVoM8MB/DmaYSfgc1C7r97WJiRJ98Zuz8O8b2fB1Tk=;
 b=eJyrklk8kKN1EqzQ+Zgcla8m9zwdcHpenH4aT8j7um444N+IedmsGiHkmVbbpD4xtI
 VOXh+35xCYWt/rRRImJTQHWGsORxgC5YRMNJ81fDnuepYscZAub8B3hYrmTWEYamzQ/I
 Nue5LgiJTdErsGZwNHQEXDv96HLKut857TBBD2hDbCLO7Xu2ZPq5NgAVoEMS2DXVqF5w
 b9J+2zrk5S2hSW5OwVqk1FZZ5XjTE+qU/K9ZG6a2BS+As8s/HKoQ27lM090e5Hc50qFj
 6z/HiQHvgN9YkZMhMPkbtvQb9VT/7CKizj45j0dz/oR1niormv+ygCWUpWWco6sEXdJc
 28Yg==
X-Gm-Message-State: AGi0Pua/XkwmLeMVW+wuPvoCpSid2/DNzuVmqzlfJCzNUbTZidpJMPEE
 NVtV89wAKgh3iUBrsLehdjTYdqVKQLTgz2gOUufsuw==
X-Google-Smtp-Source: APiQypKckLPqHpRxF9lpdKOAJMSVW/WHsfxFruoN9Jp/mBAEIJISr+H5BCKREAnltXZk8VCTHOkQ5PA01iVWPjvSa2Y=
X-Received: by 2002:a05:6402:1587:: with SMTP id
 c7mr2263913edv.61.1588682746473; 
 Tue, 05 May 2020 05:45:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200422040410.6251-1-samuel@sholland.org>
In-Reply-To: <20200422040410.6251-1-samuel@sholland.org>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 5 May 2020 09:45:35 -0300
Message-ID: <CAAEAJfCffyB_7xUVsJsScXNpO7iMuwsQ8Cu5p_xw3dtqqQgwbg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 1/2] media: cedrus: Program output format
 during each run
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_054548_650486_2E5F1073 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-sunxi@googlegroups.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMiBBcHIgMjAyMCBhdCAwMTowMCwgU2FtdWVsIEhvbGxhbmQgPHNhbXVlbEBzaG9s
bGFuZC5vcmc+IHdyb3RlOgo+Cj4gUHJldmlvdXNseSwgdGhlIG91dHB1dCBmb3JtYXQgd2FzIHBy
b2dyYW1tZWQgYXMgcGFydCBvZiB0aGUgaW9jdGwoKQo+IGhhbmRsZXIuIEhvd2V2ZXIsIHRoaXMg
aGFzIHR3byBwcm9ibGVtczoKPgo+ICAgMSkgSWYgdGhlcmUgYXJlIG11bHRpcGxlIGFjdGl2ZSBz
dHJlYW1zIHdpdGggZGlmZmVyZW50IG91dHB1dAo+ICAgICAgZm9ybWF0cywgdGhlIGhhcmR3YXJl
IHdpbGwgdXNlIHdoaWNoZXZlciBmb3JtYXQgd2FzIHNldCBsYXN0Cj4gICAgICBmb3IgYm90aCBz
dHJlYW1zLiBTaW1pbGFyeSwgYW4gaW9jdGwoKSBkb25lIGluIGFuIGluYWN0aXZlCj4gICAgICBj
b250ZXh0IHdpbGwgd3JvbmdseSBhZmZlY3Qgb3RoZXIgYWN0aXZlIGNvbnRleHRzLgo+ICAgMikg
VGhlIHJlZ2lzdGVycyBhcmUgd3JpdHRlbiB3aGlsZSB0aGUgZGV2aWNlIGlzIG5vdCBhY3RpdmVs
eQo+ICAgICAgc3RyZWFtaW5nLiBUbyBlbmFibGUgcnVudGltZSBQTSB0aWVkIHRvIHRoZSBzdHJl
YW1pbmcgc3RhdGUsCj4gICAgICBhbGwgaGFyZHdhcmUgYWNjZXNzIG5lZWRzIHRvIGJlIG1vdmVk
IGluc2lkZSBjZWRydXNfZGV2aWNlX3J1bigpLgo+Cj4gVGhlIGNhbGwgdG8gY2VkcnVzX2RzdF9m
b3JtYXRfc2V0KCkgaXMgbm93IHBsYWNlZCBqdXN0IGJlZm9yZSB0aGUKPiBjb2RlYy1zcGVjaWZp
YyBjYWxsYmFjayB0aGF0IHByb2dyYW1zIHRoZSBoYXJkd2FyZS4KPgoKQ2M6IDxzdGFibGVAdmdl
ci5rZXJuZWwub3JnPgoKPiBGaXhlczogNTBlNzYxNTE2ZjJiICgibWVkaWE6IHBsYXRmb3JtOiBB
ZGQgQ2VkcnVzIFZQVSBkZWNvZGVyIGRyaXZlciIpCj4gU3VnZ2VzdGVkLWJ5OiBKZXJuZWogxaBr
cmFiZWMgPGplcm5lai5za3JhYmVjQGdtYWlsLmNvbT4KPiBTdWdnZXN0ZWQtYnk6IFBhdWwgS29j
aWFsa293c2tpIDxwYXVsLmtvY2lhbGtvd3NraUBib290bGluLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBTYW11ZWwgSG9sbGFuZCA8c2FtdWVsQHNob2xsYW5kLm9yZz4KClJldmlld2VkLWJ5OiBFemVx
dWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+CgpUaGFua3MsCkV6ZXF1aWVsCgo+
IC0tLQo+Cj4gdjI6IGFkZGVkIHBhdGNoCj4KPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlh
L3N1bnhpL2NlZHJ1cy9jZWRydXNfZGVjLmMgICB8IDIgKysKPiAgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8uYyB8IDMgLS0tCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2RlYy5jIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfZGVjLmMKPiBpbmRleCA0YTJmYzMzYTFkNzku
LjU4YzQ4ZTRmZGZlOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkv
Y2VkcnVzL2NlZHJ1c19kZWMuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9j
ZWRydXMvY2VkcnVzX2RlYy5jCj4gQEAgLTc0LDYgKzc0LDggQEAgdm9pZCBjZWRydXNfZGV2aWNl
X3J1bih2b2lkICpwcml2KQo+Cj4gICAgICAgICB2NGwyX20ybV9idWZfY29weV9tZXRhZGF0YShy
dW4uc3JjLCBydW4uZHN0LCB0cnVlKTsKPgo+ICsgICAgICAgY2VkcnVzX2RzdF9mb3JtYXRfc2V0
KGRldiwgJmN0eC0+ZHN0X2ZtdCk7Cj4gKwo+ICAgICAgICAgZGV2LT5kZWNfb3BzW2N0eC0+Y3Vy
cmVudF9jb2RlY10tPnNldHVwKGN0eCwgJnJ1bik7Cj4KPiAgICAgICAgIC8qIENvbXBsZXRlIHJl
cXVlc3QocykgY29udHJvbHMgaWYgbmVlZGVkLiAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c192aWRlby5jIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfdmlkZW8uYwo+IGluZGV4IDE1Y2YxZjEwMjIxYi4u
ZWQzZjUxMWYwNjZmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9j
ZWRydXMvY2VkcnVzX3ZpZGVvLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkv
Y2VkcnVzL2NlZHJ1c192aWRlby5jCj4gQEAgLTI3Myw3ICsyNzMsNiBAQCBzdGF0aWMgaW50IGNl
ZHJ1c19zX2ZtdF92aWRfY2FwKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHY0bDJfZm9ybWF0ICpmKQo+ICB7Cj4g
ICAgICAgICBzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4ID0gY2VkcnVzX2ZpbGUyY3R4KGZpbGUpOwo+
IC0gICAgICAgc3RydWN0IGNlZHJ1c19kZXYgKmRldiA9IGN0eC0+ZGV2Owo+ICAgICAgICAgc3Ry
dWN0IHZiMl9xdWV1ZSAqdnE7Cj4gICAgICAgICBpbnQgcmV0Owo+Cj4gQEAgLTI4Nyw4ICsyODYs
NiBAQCBzdGF0aWMgaW50IGNlZHJ1c19zX2ZtdF92aWRfY2FwKHN0cnVjdCBmaWxlICpmaWxlLCB2
b2lkICpwcml2LAo+Cj4gICAgICAgICBjdHgtPmRzdF9mbXQgPSBmLT5mbXQucGl4Owo+Cj4gLSAg
ICAgICBjZWRydXNfZHN0X2Zvcm1hdF9zZXQoZGV2LCAmY3R4LT5kc3RfZm10KTsKPiAtCj4gICAg
ICAgICByZXR1cm4gMDsKPiAgfQo+Cj4gLS0KPiAyLjI0LjEKPgo+IC0tCj4gWW91IHJlY2VpdmVk
IHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdy
b3VwcyAibGludXgtc3VueGkiIGdyb3VwLgo+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91
cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gbGlu
dXgtc3VueGkrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPiBUbyB2aWV3IHRoaXMgZGlz
Y3Vzc2lvbiBvbiB0aGUgd2ViLCB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNn
aWQvbGludXgtc3VueGkvMjAyMDA0MjIwNDA0MTAuNjI1MS0xLXNhbXVlbCU0MHNob2xsYW5kLm9y
Zy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
