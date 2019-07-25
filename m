Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E255F74EBF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5lEiIu8HEOQUR3Fw+mrHVv4RT2zjgUbwPVUS87I7TY=; b=sW4ec9cqc2Il3E
	RjqZeUGt2R4Hj/SmycCUFubDXUtj9PoJChb5LLk6Rqbkw7c7b/oOhlnQdPp3y3H94+bfsTUHgyo7b
	p96VGDf7tqF7UdwmfS3wCL5nop59v4TNIW0XFs1PG62m8WjHud2HJnjADgf63Kk50HgUCAVGpg1C1
	ITq7YyPdFj4XNu+rS2nNRgtuIUUjB7J9A0mh3p8atcIrzsvgRcusRiu/WGFBfWBdMEJSslEMMl/Zd
	vC5cLmzlra/wPFLfr1KOK5eoSa0S+8nfaQ53pz0uRttlv5Y2QZ0j25ktoCZlj9vKsBuLcCyXNBlEu
	GbAqNuQGqsLRsiKnZRnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdOn-0007Rr-9e; Thu, 25 Jul 2019 13:03:09 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdOX-0007RE-TU
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:02:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id s19so34480292lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=WXiBayTqTdkKTq09rjY6tipJqJtsUSTf9qvOhgtptXE=;
 b=l61Pt9f2xC+aDtypRt0x2wON8TQwif0kEQaB9wG4yMNYHVMH1B56FKjgcRsrZ0faFe
 3GPlEaprv7OncIBA5s1Q6ImyRuZk3GXPShB9sE1juXK0z8yUwR8pPeC5l1WP9dWUPafi
 Ed/34bGH+qMk1dUj3ViF+UCHnhe6jLJ/mA5UOdxt4r+fMOWRXX6s8EhNBRJBisWWy3j0
 +pbOkjPCzOqgohgd3/NWnJ7UluS8cZQ0/Vkrz6RUUz4YOgdztrfBgkGGz91I6PW/0o1d
 DIuFSkZ2HBg61DLk/SG1shV9emIytsU40xnOcaY8vMyvbw+tB6Cy97HfuGXZRpvtsz5T
 BZLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=WXiBayTqTdkKTq09rjY6tipJqJtsUSTf9qvOhgtptXE=;
 b=dSFsvhOejbIycZxWFWEw2EtmjYP9lrsmoMHll+LWTxggGPX1KP6LVxfkyDbmh63053
 15i9TruCZUy/0+PcpnI9CPpMIf8DFB4eTSM7qdVViEnTZTcTVr8JikRggSw6/Xo/sAxa
 HMjifZUrIFs8X6hATckjrQhDTah84FN1XqpkWFf9RyOTkbOcTGMz6DXCyxSGkRAFoViN
 frd/wN0TN3AKoTsDtDQOH/1vAJW8pzYrT8zjTNKahd8fvxI8UVidyLur6Eopv1ZjqHB6
 PSD0AMdHgtD3nPsQNISXVni4i+ZahAl/6iHxJ4j3z71CZqc0m+Yu68hOBF6ucZtmMyB3
 y2gw==
X-Gm-Message-State: APjAAAUqS1R7lhbuhDJKMtN5u9Hlk0DrPjUdB4W2sL8A9wb6sonbRevL
 7hKLqenGh5+uoTp3GMNm9ftC7Rl0KeFf+xOkhKL0zlR9rlo=
X-Google-Smtp-Source: APXvYqw4Ed1+h8H7qf66p3bgbVK3gmUySWTmYzoU/O47r6Wa7RjMhhccNUNPE6lXOnU4XDyXX1GQMhICP//rsdR1lZc=
X-Received: by 2002:ac2:47e8:: with SMTP id b8mr25974255lfp.84.1564059772302; 
 Thu, 25 Jul 2019 06:02:52 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190723122024eucas1p1ff060d072132bfbc8a8a1d10fa1f90f8@eucas1p1.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-4-a.swigon@partner.samsung.com>
 <CAGTfZH09n9UOLMwNrCvcdeRCHYFO4TiB-YG2rMVuxA4bxuLCVw@mail.gmail.com>
In-Reply-To: <CAGTfZH09n9UOLMwNrCvcdeRCHYFO4TiB-YG2rMVuxA4bxuLCVw@mail.gmail.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
Date: Thu, 25 Jul 2019 22:02:14 +0900
Message-ID: <CAGTfZH2pPh5VVQuHV1d_8Wj1N3TPAh6w4KUkQtssBhEdPgQiuA@mail.gmail.com>
Subject: Re: [RFC PATCH 03/11] devfreq: exynos-bus: Change goto-based logic to
 if-else logic
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_060253_955812_93065897 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (cwchoi00[at]gmail.com)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (cwchoi00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cwchoi00[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: cwchoi00@gmail.com
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOeuFhCA37JuUIDI17J28ICjrqqkpIOyYpO2bhCA5OjU2LCBDaGFud29vIENob2kgPGN3Y2hv
aTAwQGdtYWlsLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gMjAxOeuFhCA37JuUIDI07J28ICjsiJgp
IOyYpOyghCA4OjA4LCBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNv
bT7ri5jsnbQg7J6R7ISxOgo+ID4KPiA+IFRoaXMgcGF0Y2ggaW1wcm92ZXMgY29kZSByZWFkYWJp
bGl0eSBieSBjaGFuZ2luZyB0aGUgZm9sbG93aW5nIGNvbnN0cnVjdDoKPiA+Cj4gPiA+ICAgIGlm
IChjb25kKQo+ID4gPiAgICAgICAgZ290byBwYXNzaXZlOwo+ID4gPiAgICBmb28oKTsKPiA+ID4g
ICAgZ290byBvdXQ7Cj4gPiA+cGFzc2l2ZToKPiA+ID4gICAgYmFyKCk7Cj4gPiA+b3V0Ogo+ID4K
PiA+IGludG8gdGhpczoKPiA+Cj4gPiA+ICAgIGlmIChjb25kKQo+ID4gPiAgICAgICAgYmFyKCk7
Cj4gPiA+ICAgIGVsc2UKPiA+ID4gICAgICAgIGZvbygpOwo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6
IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+ID4gLS0tCj4g
PiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDI0ICsrKysrKysrKy0tLS0tLS0tLS0t
LS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJp
dmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ID4gaW5kZXggY2Y2ZjZjYmQwZjU1Li40YmI4M2I5
NDViZjcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gPiAr
KysgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gPiBAQCAtNTA1LDI1ICs1MDUsMTkg
QEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gPiAgICAgICAgIG5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKGRldi0+b2Zfbm9kZSwgImRl
dmZyZXEiLCAwKTsKPiA+ICAgICAgICAgaWYgKG5vZGUpIHsKPiA+ICAgICAgICAgICAgICAgICBv
Zl9ub2RlX3B1dChub2RlKTsKPiA+IC0gICAgICAgICAgICAgICBnb3RvIHBhc3NpdmU7Cj4gPiAr
ICAgICAgICAgICAgICAgcmV0ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShidXMs
IHByb2ZpbGUpOwo+ID4gKyAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiAgICAgICAgIH0gZWxzZSB7Cj4gPiAgICAgICAg
ICAgICAgICAgcmV0ID0gZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2YobnAsIGJ1cyk7Cj4gPiAr
ICAgICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBn
b3RvIGVycjsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICByZXQgPSBleHlub3NfYnVzX3Byb2Zp
bGVfaW5pdChidXMsIHByb2ZpbGUpOwo+ID4gKyAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPiAgICAgICAgIH0KPiA+Cj4g
PiAtICAgICAgIGlmIChyZXQgPCAwKQo+ID4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ID4g
LQo+ID4gLSAgICAgICByZXQgPSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChidXMsIHByb2ZpbGUp
Owo+ID4gLSAgICAgICBpZiAocmV0IDwgMCkKPiA+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsK
PiA+IC0KPiA+IC0gICAgICAgZ290byBvdXQ7Cj4gPiAtcGFzc2l2ZToKPiA+IC0gICAgICAgcmV0
ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShidXMsIHByb2ZpbGUpOwo+ID4gLSAg
ICAgICBpZiAocmV0IDwgMCkKPiA+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+IC0KPiA+
IC1vdXQ6Cj4gPiAgICAgICAgIG1heF9zdGF0ZSA9IGJ1cy0+ZGV2ZnJlcS0+cHJvZmlsZS0+bWF4
X3N0YXRlOwo+ID4gICAgICAgICBtaW5fZnJlcSA9IChidXMtPmRldmZyZXEtPnByb2ZpbGUtPmZy
ZXFfdGFibGVbMF0gLyAxMDAwKTsKPiA+ICAgICAgICAgbWF4X2ZyZXEgPSAoYnVzLT5kZXZmcmVx
LT5wcm9maWxlLT5mcmVxX3RhYmxlW21heF9zdGF0ZSAtIDFdIC8gMTAwMCk7Cj4gPiAtLQo+ID4g
Mi4xNy4xCj4gPgo+Cj4gSXQgc2VlbXMgbW9yZSBzaW1wbGUgdGhhbiBiZWZvcmUuCj4gSW5zdGVh
ZCwgcGxlYXNlIG1lcmdlIHBhdGNoMS8yLzMgdG8gb25lIHBhdGNoLiBhbmQgZHJvcCB0aGUgcGF0
Y2g0LgoKQnV0LCBJIHRoaW5rIHRoYXQgeW91IGJldHRlciB0byBkcm9wIHRoZSBjbGVhbnVwIHBh
dGNoIGZyb20gdGhpcyBzZXJpZXMKYmVjYXVzZSB0aGUgc2VyaWVzWzFdIHRvdWNoIHRoZSBleHlu
b3MtYnVzLmMgZHJpdmVyIGZvciBjb3VwbGVkIHJlZ3VsYXRvci4KWzFdIGh0dHBzOi8vd3d3LnNw
aW5pY3MubmV0L2xpc3RzL2FybS1rZXJuZWwvbXNnNzQxOTcxLmh0bWwKCkkgcmVjb21tZW5kIHRo
YXQgeW91IHNlbmQgdGhlIGNsZWFudXAgcGF0Y2ggd2l0aCBteSBjb21tZW50CmVpdGhlciBhZnRl
ciByZXZpZXdpbmcgdGhlIEthbWlsJ3MgcGF0Y2hbMV0gb3IgcmViYXNlIHRoaXMgc2VyaWVzIGJh
c2UKb24gcGF0Y2hbMV0uCgo+Cj4gLS0KPiBCZXN0IFJlZ2FyZHMsCj4gQ2hhbndvbyBDaG9pCgoK
Ci0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
