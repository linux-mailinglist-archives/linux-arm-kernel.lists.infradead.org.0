Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096E2128F2A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 18:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9L8eG0OfUTTiQbXZTR1spBF+d/zT07+VfkwLBXrfv0=; b=VbpdDuRuedQ5Kb
	5c+OXUtEIQScl2KQxykAk9KFQGuu0t2rA4MrLio9SJ9BFCMqSNM5/+gPWd405VauVb9HU+4fLHdGh
	+Hoag3cXhgDQE8tocs1LE+UbjYfQkHS9vNOutfXgLVNJd4l3eboKAdOxIk6YmnRqrbS5mjoL+GiMp
	79EY3dEGya5L1szoVyopqX4aVwB4da6hf3qWov5/69P5mM1vhAvMG9HX+LFaHsSalL0qYKmA0NBzb
	Xv8adzgWIj6AdG3sis9CP6jsiC5uDf/41gfqtaae0T0bs3z8vOllriT+VikLMOrtqV3v7F2yOiDk8
	0kbLmY/1lyCYymCVy3NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij5Ki-0007dL-88; Sun, 22 Dec 2019 17:48:00 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij5KX-0007br-EM
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 17:47:50 +0000
Received: by mail-io1-xd42.google.com with SMTP id z8so14167731ioh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 09:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cXV560NztAEyf3QDB9vqOOSo8xQQ1EuVI594ay/V1a0=;
 b=mhl+f14sIzO6v8IsTbkTnbhaRdufq3zfWQfi6Df8LI0VJjjz3dRfeoo5uE5XAFwTRa
 ooZKiYQiTn1JgPl3MJpOSzCZIELxSzUc2H9ugBb3A/+SBhXxvQCs6U60PF1w5hj5j9dy
 aF2knVluG3eKMrX91w+2SZtEvKtzvZ6PhoVmJb1XV3yZX/sCe29/76D2aOhmrz2Q+9Es
 bdV55vsGNk2eEfNKbtute1UFurvy4Xd7z9hH5Y1zkOytY8Z7QQLjkltpdRbk24sTW6fe
 VDdXi9VRoh/q/1XrVaTjIpfdr1OC4YgNGRHVMN2fIcNwqg+t0uOytBm2zUssB1CBe1ck
 2zIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cXV560NztAEyf3QDB9vqOOSo8xQQ1EuVI594ay/V1a0=;
 b=rQzEk8+qWz1NklIuI9pJNhXTkDHm0b049Ss/v96VyE25DdT5FBUNAWZPrXaM/AXmIs
 zyYeM2fkV6Zz0R52ZBY0IbN6rBlWJrM99gouHjsyw7357yCOsf04nZ6nlCDJI9ai5zTY
 A5GgBErjeHl88SUu8OsvxG97o39rch9os/C56HMqzqr3//Pryic2AhJJRO6VJYwa7GGO
 jQy+VxO/V8832526VwYN4EE5RlB0wAGkRXJYJzG8MV3mbcBJz3u0mFOwKpHhlPJa5wyx
 9DJ1nHVeOO9KMjcgAkDrc0BF0oUuvwtQpJ9IosOobK1E5El7NdTlwzf7q6S6yLOLmkOH
 5glA==
X-Gm-Message-State: APjAAAULhnTs54bkZgS1JLh8z9DPJS43KUsiHUXpjy7c7KjygpKDsyNr
 yuAQpvp4oPTzHpObDMOY4mSZB/NWiqvwr78oUq4=
X-Google-Smtp-Source: APXvYqyqUD6V4nvBIWhPs+C6CdFKb8TEp89BFkN5R9+8ioRXvOtarOaPqoj/gFFYH7cG7aXPZrRFpdpOhInv7dyjAu4=
X-Received: by 2002:a6b:b941:: with SMTP id j62mr18408028iof.168.1577036864950; 
 Sun, 22 Dec 2019 09:47:44 -0800 (PST)
MIME-Version: 1.0
References: <20191221181855.31380-1-tiny.windzz@gmail.com>
 <20191221181855.31380-2-tiny.windzz@gmail.com>
 <CAGTfZH2vqk1R9Hkv4DjO8ktmpHEW+mV-+xreUHPyp6ZT2D7AxA@mail.gmail.com>
In-Reply-To: <CAGTfZH2vqk1R9Hkv4DjO8ktmpHEW+mV-+xreUHPyp6ZT2D7AxA@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Mon, 23 Dec 2019 01:47:33 +0800
Message-ID: <CAEExFWsGJ7Mv=z0tf2pvA2UooEd1bU0+Bo4ZaCMzA5randTr=w@mail.gmail.com>
Subject: Re: [PATCH 2/2] PM / devfreq: exynos-bus: add missing
 exynos_bus_disable_edev in exynos_bus_profile_init
To: Chanwoo Choi <chanwoo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_094749_483758_B7D621F6 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgMjMsIDIwMTkgYXQgMTowMiBBTSBDaGFud29vIENob2kgPGNoYW53b29Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBIaSwKPgo+IFBsZWFzZSB1c2UgY2FwaXRhbCBsZXR0ZXIgZm9y
IHRoZSBmaXJzdCBjaGFyIG9mIHBhdGNoIHRpdGxlCj4gYW5kIGJldHRlciB0byBlZGl0IHRoZSBw
YXRjaCB0aXRsZSBhcyBmb2xsb3dpbmc6Cj4gQWN0dWFsbHksIGl0IGlzIGRpZmZpY3VsdCB0byB1
bmRlcnN0YW5kIHRoZSByb2xlIGJ5IG9ubHkgcmVhZGluZwo+IHRoZSBmdW5jdGlvbiBuYW1lLiBJ
dCBkZXBlbmRzIG9uIG9ubHkgdGhpcyBkcml2ZXIuCj4gU28sIGJldHRlciB0byBlZGl0IGl0IGFz
IGZvbGxvd2luZyBiZWNhdXNlIGRldmZyZXEtZXZlbnQKPiBpcyBzdGFuZGFyZCBuYW1lIGluIGxp
bnV4IGtlcm5lbC4gSSB0aGluayBpdCBpcyBlYXN5IHRvIHVuZGVyc3RhbmQKPiB3aGF0IHRoZSBw
YXRjaCBkb2VzLgo+Cj4gLSBQTSAvIGRldmZyZXE6IGV4eW5vcy1idXM6IERpc2FibGUgdGhlIGRl
dmZyZXEtZXZlbnQgZGV2aWNlIHdoZW4gZmFpbGVkCj4KPgo+IDIwMTnrhYQgMTLsm5QgMjLsnbwg
KOydvCkg7Jik7KCEIDM6MjEsIFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT7ri5js
nbQg7J6R7ISxOgo+ID4KPiA+IFRoZSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdCBwcm9jZXNzIG1h
eSBmYWlsLCBidXQgdGhlIGRldmZyZXEgZXZlbnQgZGV2aWNlCj4gPiByZW1haW5zIGVuYWJsZWQu
IENhbGwgZGV2ZnJlcV9ldmVudF9kaXNhYmxlX2VkZXYgb24gdGhlIGVycm9yIHJldHVybiBwYXRo
Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNv
bT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCA2ICsrKysrLQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2
ZnJlcS9leHlub3MtYnVzLmMKPiA+IGluZGV4IDdmNTkxN2Q1OTA3Mi4uNWU1NGVhZjNjZmM2IDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ID4gKysrIGIvZHJp
dmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ID4gQEAgLTMzNSwxMCArMzM1LDE0IEBAIHN0YXRp
YyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKPiA+
ICAgICAgICAgcmV0ID0gZXh5bm9zX2J1c19zZXRfZXZlbnQoYnVzKTsKPiA+ICAgICAgICAgaWYg
KHJldCA8IDApIHsKPiA+ICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBz
ZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiA+IC0gICAgICAgICAgICAg
ICByZXR1cm4gcmV0Owo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX2Rpc2FibGVfZWRldjsK
PiA+ICAgICAgICAgfQo+ID4KPiA+ICAgICAgICAgcmV0dXJuIDA7Cj4gPiArCj4gPiArZXJyX2Rp
c2FibGVfZWRldjoKPgo+IGVycl9lZGV2IGlzIGVub3VnaCBpbnN0ZWFkIG9mICdlcnJfZGlzYWJs
ZV9lZGV2Jwo+Cj4gPiArICAgICAgIGV4eW5vc19idXNfZGlzYWJsZV9lZGV2KGJ1cyk7Cj4KPiBl
eHlub3NfYnVzX2Rpc2FibGVfZWRldigpIGhhcyByZXR1cm4gdmFsdWUgZm9yIGRldGVjdGluZyB0
aGUgZXJyb3IuCj4gTmVlZCB0byBhZGQgZm9sbG93aW5nIHdhcm5pbmcgbWVzc2FnZS4KPgo+IGlm
IChyZXQgPCAwKQo+ICAgICAgZGV2X3dhcm4oZGV2LCAiZmFpbGVkIHRvIGRpc2FibGUgdGhlIGRl
dmZyZXEtZXZlbnQgZGV2aWNlc1xuIik7CgpJJ20gbm90IHN1cmUgaWYgaXQgc2hvdWxkIGJlIGxp
a2UgdGhpcywKaXQgbWF5IHJld3JpdGUgdGhlIGFib3ZlIGVycm9yIGNvZGUuCgpZYW5ndGFvCgo+
Cj4KPiA+ICsgICAgICAgcmV0dXJuIHJldDsKPiA+ICB9Cj4gPgo+ID4gIHN0YXRpYyBpbnQgZXh5
bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ID4g
LS0KPiA+IDIuMTcuMQo+ID4KPgo+Cj4gLS0KPiBCZXN0IFJlZ2FyZHMsCj4gQ2hhbndvbyBDaG9p
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
