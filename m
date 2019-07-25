Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C658174EA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPuQUltfVHurN6yPsZbJ5nTt+KGrwYrdLaabSG02mjY=; b=W00UBzRcOX93gX
	dDTPyA2EiXyuDraPlycJwn0Qlaatcs4fb9eHkojWlUS49sVpDNrHF2GrfXVfNotkuf23SfiLfAbo4
	vrafR8NjKEzFlASFO4R5zecsaix0U6EmwiIyluwfreqag3GmU8OnFXscJJu7EhLUMbOIOFCzMP0zr
	ODKbf2HEZrU3s/rskm+8ecOuURnBC6c+9pzjTL9ZuAv5aHy2vAuJGEdORORNTyUssdSh/wB4TmY/7
	ixnx//uJLvZmaIeIXWIUjCPPTvP4NFc8e/Rlw2y9wMLKQq33IDjbOgpc0gUlMYgI/rOY5VcldoLhC
	FBZ0QEon6osYqm4pVoUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdJY-0004hp-Uq; Thu, 25 Jul 2019 12:57:44 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdJG-0004gu-VJ
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:57:28 +0000
Received: by mail-lf1-x143.google.com with SMTP id b29so27222480lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 05:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=xM6KrE+i6GTD27vbYKn5cqDmPVp4Sc2Sjq00mSvmh2U=;
 b=XXpK0Ruyln89lB3FtPJQlFIHzkNrM+OFf+i4hux201WJ2ZQ8HIQVoKrEtlgpvzYKl8
 oMsc2mWrk11bd2G5oHFfJO1z+s0WY7Dl0onn1RinPh3VwNrcKIGFzJOq9Qe6lhWUu3O7
 Q//XStbzPtGgslB+AyFj7C9tNlGfnBI+gRo9FIMgyx0jEwMeLn2x4F8wKA6r5N3IX9ub
 wCJNweqMuL6PuOwrtsjlvREok7Xhb1Sh6VxWtKC+zMYOCm8oUvl5uU6BQ/NfWo+uDRP7
 UjdD/7nLSbX5rRAp8Cy+mf/717jZ4SR7ewR9CiHXWoYJNISCHqvUACA5Bth2MyT6Bu1t
 9G8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=xM6KrE+i6GTD27vbYKn5cqDmPVp4Sc2Sjq00mSvmh2U=;
 b=TxAycCEd/rrHfhzWaiQu95JPDZgAybNYES2qC7bDD921VQBamQ2szTMq48qcesWjBd
 utGJWjTF8dzaZ0YnIrIBsGZ1b7svMpCq+102oep4UJ8msC+shuuIgx+jn8gdLCmnG6G4
 oCWcZB8xmUNdULU0oK8p+82ZMNStjF2IYMvpOLz7A1DwDiyharZjqqWb8OAwVuBspS2T
 mvQ/tAcsuyHzONgbLqZvn6MOUagymTpMX0NooEHnl8PXYx/71NuNmlO+WTwrp/Hx2EQa
 Xe1ifi6010WJRl1jql4Cgmyj6cLcjFBBdtcyvRl10yGIV0IgW1mhLFRq4q6j33Lf6DUZ
 w7Fg==
X-Gm-Message-State: APjAAAVfyzs2Es+Tf2oX0gsinOXm2R/osavcgTLqSXnofKJVcFVxr1Ye
 50BMsx3V9AMhMElyJYhBwQ9zRxA1t6kLGZjUD+U=
X-Google-Smtp-Source: APXvYqy87nc1SZfVl4oFMMftjXVfgZz3Rbm0BYNTg4fKAWIu9Eqqr7bor/GS6c2HKFxbPTv05+jyugcTeGyUoK+wC+g=
X-Received: by 2002:ac2:42ca:: with SMTP id n10mr23728905lfl.121.1564059445077; 
 Thu, 25 Jul 2019 05:57:25 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190723122024eucas1p1ff060d072132bfbc8a8a1d10fa1f90f8@eucas1p1.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-4-a.swigon@partner.samsung.com>
In-Reply-To: <20190723122016.30279-4-a.swigon@partner.samsung.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
Date: Thu, 25 Jul 2019 21:56:48 +0900
Message-ID: <CAGTfZH09n9UOLMwNrCvcdeRCHYFO4TiB-YG2rMVuxA4bxuLCVw@mail.gmail.com>
Subject: Re: [RFC PATCH 03/11] devfreq: exynos-bus: Change goto-based logic to
 if-else logic
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_055727_041787_8B309922 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

MjAxOeuFhCA37JuUIDI07J28ICjsiJgpIOyYpOyghCA4OjA4LCBBcnR1ciDFmndpZ2/FhCA8YS5z
d2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gVGhpcyBwYXRjaCBp
bXByb3ZlcyBjb2RlIHJlYWRhYmlsaXR5IGJ5IGNoYW5naW5nIHRoZSBmb2xsb3dpbmcgY29uc3Ry
dWN0Ogo+Cj4gPiAgICBpZiAoY29uZCkKPiA+ICAgICAgICBnb3RvIHBhc3NpdmU7Cj4gPiAgICBm
b28oKTsKPiA+ICAgIGdvdG8gb3V0Owo+ID5wYXNzaXZlOgo+ID4gICAgYmFyKCk7Cj4gPm91dDoK
Pgo+IGludG8gdGhpczoKPgo+ID4gICAgaWYgKGNvbmQpCj4gPiAgICAgICAgYmFyKCk7Cj4gPiAg
ICBlbHNlCj4gPiAgICAgICAgZm9vKCk7Cj4KPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/F
hCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVx
L2V4eW5vcy1idXMuYyB8IDI0ICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMu
Ywo+IGluZGV4IGNmNmY2Y2JkMGY1NS4uNGJiODNiOTQ1YmY3IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1
cy5jCj4gQEAgLTUwNSwyNSArNTA1LDE5IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgbm9kZSA9IG9mX3BhcnNlX3Bo
YW5kbGUoZGV2LT5vZl9ub2RlLCAiZGV2ZnJlcSIsIDApOwo+ICAgICAgICAgaWYgKG5vZGUpIHsK
PiAgICAgICAgICAgICAgICAgb2Zfbm9kZV9wdXQobm9kZSk7Cj4gLSAgICAgICAgICAgICAgIGdv
dG8gcGFzc2l2ZTsKPiArICAgICAgICAgICAgICAgcmV0ID0gZXh5bm9zX2J1c19wcm9maWxlX2lu
aXRfcGFzc2l2ZShidXMsIHByb2ZpbGUpOwo+ICsgICAgICAgICAgICAgICBpZiAocmV0IDwgMCkK
PiArICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycjsKPiAgICAgICAgIH0gZWxzZSB7Cj4g
ICAgICAgICAgICAgICAgIHJldCA9IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKG5wLCBidXMp
Owo+ICsgICAgICAgICAgICAgICBpZiAocmV0IDwgMCkKPiArICAgICAgICAgICAgICAgICAgICAg
ICBnb3RvIGVycjsKPiArCj4gKyAgICAgICAgICAgICAgIHJldCA9IGV4eW5vc19idXNfcHJvZmls
ZV9pbml0KGJ1cywgcHJvZmlsZSk7Cj4gKyAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICBp
ZiAocmV0IDwgMCkKPiAtICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gLQo+IC0gICAgICAgcmV0
ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXQoYnVzLCBwcm9maWxlKTsKPiAtICAgICAgIGlmIChy
ZXQgPCAwKQo+IC0gICAgICAgICAgICAgICBnb3RvIGVycjsKPiAtCj4gLSAgICAgICBnb3RvIG91
dDsKPiAtcGFzc2l2ZToKPiAtICAgICAgIHJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9pbml0X3Bh
c3NpdmUoYnVzLCBwcm9maWxlKTsKPiAtICAgICAgIGlmIChyZXQgPCAwKQo+IC0gICAgICAgICAg
ICAgICBnb3RvIGVycjsKPiAtCj4gLW91dDoKPiAgICAgICAgIG1heF9zdGF0ZSA9IGJ1cy0+ZGV2
ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlOwo+ICAgICAgICAgbWluX2ZyZXEgPSAoYnVzLT5kZXZm
cmVxLT5wcm9maWxlLT5mcmVxX3RhYmxlWzBdIC8gMTAwMCk7Cj4gICAgICAgICBtYXhfZnJlcSA9
IChidXMtPmRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFibGVbbWF4X3N0YXRlIC0gMV0gLyAxMDAw
KTsKPiAtLQo+IDIuMTcuMQo+CgpJdCBzZWVtcyBtb3JlIHNpbXBsZSB0aGFuIGJlZm9yZS4KSW5z
dGVhZCwgcGxlYXNlIG1lcmdlIHBhdGNoMS8yLzMgdG8gb25lIHBhdGNoLiBhbmQgZHJvcCB0aGUg
cGF0Y2g0LgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
