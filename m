Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E88121BAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 18:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6eTjIJyQRd26Rq/nyVhXI7KPQanhgkv3nzYkkEF5S64=; b=MwJXomU3MBqCNbT5bpCPyH7Sks
	P876n668iAwq7ru+aaddvrgPzBxh6lR2ZO6yDPR3NTo9NTiO1JJbikN7TDB5lLe8SpUwFMOnP0wa7
	4rjF+HAmVV4Lr2K0Ln/JVMQ9d+IR2agJjcLL43MlfNpsk5wqLnrOwZc5XTH71S18LgvY/WAE5XZIh
	BGglh4l68F9SjHjacIopqR4qg7ioY8OD95rwUI/nd7S2K2RXZ9taYJeSEw8gn3lCnWaR6T+CMM6VA
	f9KFQk0IYt9TsCrEArHLCAlAGy5aG+ofME+N9krm34umPJJJAnZna1RgAVdPbeaekajt8fL7/WI11
	GP9Vp/SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfpG-0003oO-6K; Fri, 17 May 2019 16:35:18 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfp8-0003ni-NQ
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 16:35:12 +0000
Received: by mail-it1-x141.google.com with SMTP id a190so12924040ite.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 09:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=k3eLPJeFfTPv6TDvaqkmkbLRpKbPkalLozF0uKgDS0w=;
 b=a655/08pvA5tAEYJxcg8wgkRU0hsAMqB0mXWuqtMtdvgNCbMuUP9B3X6dotZ6kLaiS
 R1H/lm3y+/WgbsK24NoYfJvZAeVDOJWcXFUkXz5YX8aoOultAe4JHcXGVoEjGx4qTMZC
 QMRXdkkggogxS/Xfu132Ukr93FYGAXS6w4myVLum3ttDhkTZ3eUivku7XTO4YnKcqpdL
 2YqucLNb7zrvr46crgHA6h9IG/dFEG82Cehlcp+JqfQalNiLmRqNxNQXKUkX1gmrP4co
 ggb0iBorZVzcQ9GiqvuNATt/2nSpUpda5btDqL2RpDp+i6C20Fa6Is5119dMApE6oQ9c
 UEAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=k3eLPJeFfTPv6TDvaqkmkbLRpKbPkalLozF0uKgDS0w=;
 b=JtrunWdKU1ewOpfMO3W+CjaP5ycFgc54AQqk1VRpaCz+qwc0vjd9f7Vfm3F4+NhMUS
 i+erNQuK5b/Dd+ydHLlJ3haxjZWVzIsbNsnlWIdFVKHYbNoFmS1f3B+YEe4/DPZV8LQI
 SNUihfYCtmjPntQreWBYPdBeAau0PlFoRdT79emEVHS+PvQfQ1EFMY/y8pWRkVTEh6oj
 XZvwc5+Vxmptiffx2aXAmRtG1pV7U3sZF2R1GIL8UPBzbQGohWTnS7mIvzNeP7PltTA/
 dSSRGbDikvMc+/wDYWbXflfAm48p0F4k2tFiLtBF28b4Xds3W0wTDvm43oFYg8aT1suL
 s0pA==
X-Gm-Message-State: APjAAAXYhxOH/qKqNgAWy5KcUzowj0OI86sUmiWduHs5t/oNKllIU3SA
 ZceONRcP7VfQdJV28FMLHpgxErju78Tzuv8Q6Gw=
X-Google-Smtp-Source: APXvYqzDym+y/WmoJ7mUwnMdhz5ZNgY4qEk+9h4TgQdw2Wcyk7OG0owfEtQTfsiZZUF6M67quXcikzQQAqQXIcmZU8w=
X-Received: by 2002:a24:ac49:: with SMTP id m9mr11819158iti.174.1558110909642; 
 Fri, 17 May 2019 09:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512221612.ubmknvim4utnqpl4@core.my.home>
 <CAEExFWv5A5mhpV7afQT=AaYx2ko5QnfbM6HvfuTgT1Na=ssOcw@mail.gmail.com>
 <20190516182936.h6xdzp3gtg4ikave@core.my.home>
In-Reply-To: <20190516182936.h6xdzp3gtg4ikave@core.my.home>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sat, 18 May 2019 00:34:57 +0800
Message-ID: <CAEExFWvDO3wJd6wp1hFudf3EGF0NixgKAwAd5-b1=VLF+7-jCw@mail.gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
To: Frank Lee <tiny.windzz@gmail.com>, rui.zhang@intel.com, 
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, robh+dt@kernel.org, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, catalin.marinas@arm.com, will.deacon@arm.com, 
 David Miller <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan.Cameron@huawei.com, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, paulmck@linux.ibm.com, 
 Andy Gross <andy.gross@linaro.org>, olof@lixom.net, bjorn.andersson@linaro.org,
 Jagan Teki <jagan@amarulasolutions.com>, marc.w.gonzalez@free.fr, 
 stefan.wahren@i2se.com, enric.balletbo@collabora.com, 
 devicetree@vger.kernel.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux PM <linux-pm@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_093510_791603_79E9E9C9 
X-CRM114-Status: GOOD (  27.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SEksCgpPbiBGcmksIE1heSAxNywgMjAxOSBhdCAyOjI5IEFNIE9uZMWZZWogSmlybWFuIDxtZWdv
dXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4KPiBIaSBZYW5ndGFvLAo+Cj4gdGhhbmsgeW91IGZvciB3
b3JrIG9uIHRoaXMgZHJpdmVyLgo+Cj4gT24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMDI6MDY6NTNB
TSArMDgwMCwgRnJhbmsgTGVlIHdyb3RlOgo+ID4gSEkgT25kxZllaiwKPiA+Cj4gPiBPbiBNb24s
IE1heSAxMywgMjAxOSBhdCA2OjE2IEFNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNv
bT4gd3JvdGU6Cj4gPiA+ID4gKwo+ID4gPiA+ICsvKiBUZW1wIFVuaXQ6IG1pbGxpZGVncmVlIENl
bHNpdXMgKi8KPiA+ID4gPiArc3RhdGljIGludCB0c2Vuc19yZWcydGVtcChzdHJ1Y3QgdHNlbnNf
ZGV2aWNlICp0bWRldiwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IHJl
ZykKPiA+ID4KPiA+ID4gUGxlYXNlIG5hbWUgYWxsIGZ1bmN0aW9ucyBzbyB0aGF0IHRoZXkgYXJl
IG1vcmUgY2xlYXJseSBpZGVudGlmaWFibGUKPiA+ID4gaW4gc3RhY2sgdHJhY2VzIGFzIGJlbG9u
Z2luZyB0byB0aGlzIGRyaXZlci4gRm9yIGV4YW1wbGU6Cj4gPiA+Cj4gPiA+ICAgc3VuOGlfdGhz
X3JlZzJ0ZW1wCj4gPiA+Cj4gPiA+IFRoZSBzYW1lIGFwcGxpZXMgZm9yIGFsbCB0c2Vuc18qIGZ1
bmN0aW9ucyBiZWxvdy4gdHNlbnNfKiBpcyB0b28KPiA+ID4gZ2VuZXJpYy4KPiA+Cj4gPiBEb25l
IGJ1dCBubyBzdW44aV90aHNfcmVnMnRlbXAuCj4gPgo+ID4gdGhzX3JlZzJ0ZW0oKSBzaG91bGQg
YmUgYSBnZW5lcmljIGZ1bmMuCj4gPiBJIHRoaW5rIGl0IHNob3VsZCBiZSBzdWl0YWJsZSBmb3Ig
YWxsIHBsYXRmb3Jtc++8jCBzbyBubyBwbGF0Zm9ybSBwcmVmaXguCj4KPiBZb3UndmUgbWlzc2Vk
IG15IHBvaW50LiBUaGUgZHJpdmVyIG5hbWUgaXMgc3VuOGlfdGhlcm1hbCBhbmQgaWYgeW91IGdl
dAo+IGFuZCBvb3BzIGZyb20gdGhlIGtlcm5lbCB5b3UnbGwgZ2V0IGEgc3RhY2sgdHJhY2Ugd2hl
cmUgdGhlcmUgYXJlIGp1c3QgZnVuY3Rpb24KPiBuYW1lcy4gSWYgeW91IHVzZSB0b28gZ2VuZXJp
YyBmdW5jdGlvbiBuYW1lcywgaXQgd2lsbCBub3QgYmUgY2xlYXIgd2hpY2gKPiBkcml2ZXIgaXMg
b29wc2luZy4KPgo+ICAgLSBzdW44aV90aHNfcmVnMnRlbXAgd2lsbCB0ZWxsIHlvdSBtdWNoIG1v
cmUgY2xlYXJseSB3aGVyZSB0byBzZWFyY2ggdGhhbgo+ICAgLSB0aHNfcmVnMnRlbXAKPgo+IE9m
IGNvdXJzZSB5b3UgY2FuIGFsd2F5cyBncmVwLCBidXQgbW9zdCB0aGVybWFsIGRyaXZlcnMgYXJl
IHRoZXJtYWwgc2Vuc29yICh0aHMpCj4gZHJpdmVycywgYW5kIGlmIG11bHRpcGxlIG9mIHRoZW0g
dXNlZCB0aGlzIHRvby1nZW5lcmljIG5hbWluZyBzY2hlbWUgeW91J2QKPiBoYXZlIGhhcmQgdGlt
ZSBkZWJ1Z2dpbmcuCj4KPiBMb29rIGF0IG90aGVyIHRoZXJtYWwgZHJpdmVycy4gVGhleSB1c3Vh
bGx5IGVuY29kZSBkcml2ZXIgbmFtZSBpbiB0aGUgZnVuY3Rpb24KPiBuYW1lcyB0byBoZWxwIHdp
dGggaWRlbnRpZmljYXRpb24gKGV2ZW4gaWYgdGhlc2UgYXJlIHN0YXRpYyBkcml2ZXItbG9jYWwK
PiBmdW5jdGlvbnMpLgo+CgpDYW4gd2UgY2hhbmdlIHRvIHN1bnhpX3Roc18gcHJlZml4PwoKPiA+
ID4gPiArc3RhdGljIGludCB0c2Vuc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ID4gPiA+ICt7Cj4gPiA+ID4gKyAgICAgc3RydWN0IHRzZW5zX2RldmljZSAqdG1kZXY7Cj4g
PiA+ID4gKyAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+ID4gPiArICAg
ICBpbnQgcmV0Owo+ID4gPiA+ICsKPiA+ID4gPiArICAgICB0bWRldiA9IGRldm1fa3phbGxvYyhk
ZXYsIHNpemVvZigqdG1kZXYpLCBHRlBfS0VSTkVMKTsKPiA+ID4gPiArICAgICBpZiAoIXRtZGV2
KQo+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gPiA+ID4gKwo+ID4gPiA+
ICsgICAgIHRtZGV2LT5kZXYgPSBkZXY7Cj4gPiA+ID4gKyAgICAgdG1kZXYtPmNoaXAgPSBvZl9k
ZXZpY2VfZ2V0X21hdGNoX2RhdGEoJnBkZXYtPmRldik7Cj4gPiA+ID4gKyAgICAgaWYgKCF0bWRl
di0+Y2hpcCkKPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gPiA+ICsK
PiA+ID4gPiArICAgICByZXQgPSB0c2Vuc19pbml0KHRtZGV2KTsKPiA+ID4gPiArICAgICBpZiAo
cmV0KQo+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4gPiArCj4gPiA+ID4g
KyAgICAgcmV0ID0gdHNlbnNfcmVnaXN0ZXIodG1kZXYpOwo+ID4gPiA+ICsgICAgIGlmIChyZXQp
Cj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPgo+ID4gPiBXaHkgc3BsaXQg
dGhpcyBvdXQgb2YgcHJvYmUgaW50byBzZXBhcmF0ZSBmdW5jdGlvbnM/Cj4gPiA+Cj4gPiA+ID4g
KyAgICAgcmV0ID0gdG1kZXYtPmNoaXAtPmVuYWJsZSh0bWRldik7Cj4gPiA+ID4gKyAgICAgaWYg
KHJldCkKPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gKwo+ID4gPiA+
ICsgICAgIHBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHRtZGV2KTsKPiA+ID4gPiArCj4gPiA+
ID4gKyAgICAgcmV0dXJuIHJldDsKPiA+ID4gPiArfQo+ID4gPiA+ICsKPiA+ID4gPiArc3RhdGlj
IGludCB0c2Vuc19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gPiAr
ewo+ID4gPiA+ICsgICAgIHN0cnVjdCB0c2Vuc19kZXZpY2UgKnRtZGV2ID0gcGxhdGZvcm1fZ2V0
X2RydmRhdGEocGRldik7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIHRtZGV2LT5jaGlwLT5kaXNh
YmxlKHRtZGV2KTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgcmV0dXJuIDA7Cj4gPiA+ID4gK30K
PiA+ID4gPiArCj4gPiA+ID4gK3N0YXRpYyBpbnQgc3VuNTBpX3RoZXJtYWxfZW5hYmxlKHN0cnVj
dCB0c2Vuc19kZXZpY2UgKnRtZGV2KQo+ID4gPiA+ICt7Cj4gPiA+ID4gKyAgICAgaW50IHJldCwg
dmFsOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICByZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0
KHRtZGV2LT5yZXNldCk7Cj4gPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiArICAgICAgICAg
ICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIHJldCA9IGNsa19wcmVwYXJl
X2VuYWJsZSh0bWRldi0+YnVzX2Nsayk7Cj4gPiA+ID4gKyAgICAgaWYgKHJldCkKPiA+ID4gPiAr
ICAgICAgICAgICAgIGdvdG8gYXNzZXJ0X3Jlc2V0Owo+ID4gPiA+ICsKPiA+ID4gPiArICAgICBy
ZXQgPSB0c2Vuc19jYWxpYnJhdGUodG1kZXYpOwo+ID4gPiA+ICsgICAgIGlmIChyZXQpCj4gPiA+
ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPgo+ID4gPiBJZiB0aGlzIGZhaWxzIChp
dCBtYXkgbGlrZWx5IGZhaWwgd2l0aCBFUFJPQkVfREVGRVIpIHlvdSBhcmUgbGVhdmluZyByZXNl
dAo+ID4gPiBkZWFzc2VydGVkLCBhbmQgY2xvY2sgZW5hYmxlZC4KPiA+ID4KPiA+ID4gT3ZlcmFs
bCwgSSB0aGluaywgcmVzZXQvY2xvY2sgbWFuYWdlbWVudCBhbmQgbnZtZW0gcmVhZGluZyB3aWxs
IGJlIGNvbW1vbgo+ID4gPiB0byBhbGwgdGhlIEhXIHZhcmlhbnRzLCBzbyBpdCBkb2Vzbid0IG1h
a2UgbXVjaCBzZW5zZSBzcGxpdHRpbmcgaXQgb3V0Cj4gPiA+IG9mIHByb2JlIGludG8gc2VwYXJh
dGUgZnVuY3Rpb25zLCBhbmQgbWFrZXMgaXQgbW9yZSBlcnJvciBwcm9uZS4KPiA+Cj4gPiBPdXIg
bG9uZy10ZXJtIGdvYWwgaXMgdG8gc3VwcG9ydCBhbGwgcGxhdGZvcm1zLgo+ID4gQmFjaWNhbGx0
IHRoZXJlIGlzIGEgZGlmZmVyZW5jciBiZXR3ZWVuIGVhY2ggZ2VuZXJhdGlvbi4KPiA+IFNvIEkg
ZmVlbCBpdCBuZWNlc3NhcnkgdG8gaXNvbGF0ZSB0aGVzZSBkaWZmZXJlbmNlcy4KPiA+Cj4gPiBN
YXliZToKPiA+IEF0IHNvbWUgcG9pbnQsIHdlIGNhbiBkcmF3IGEgcGFydCBvZiB0aGUgcHVibGlj
IHBhcnQgYW5kIHBsYXRmb3JtCj4gPiBkaWZmZXJlbmNlIGludG8gZGlmZmVyZW50Cj4gPiBmaWxl
cy4gc29tZXRoaW5nIGxpa2UgcWNvbSB0aGVybWFsIGRyaXZlci4KPgo+IEkgdW5kZXJzdGFuZCwg
YnV0IEkgd3JvdGUgdGhzIGRyaXZlcnMgZm9yIEgzL0g1L0E4M1QgYW5kIGl0IHNvIGZhciBpdCBs
b29rcyBsaWtlCj4gYWxsIG9mIHRoZW0gd291bGQgc2hhcmUgdGhlc2UgMyBjYWxscy4KPgo+IFlv
dSdsbCBiZSBlbmFibGluZyBjbG9jay9yZXNldCBhbmQgY2FsbGlicmF0aW5nIGV2ZXJ5d2hlcmUu
IFNvIHB1dHRpbmcgdGhpcyB0bwo+IHBlci1Tb0MgZnVuY3Rpb24gc2VlbXMgcHJlbWF0dXJlLgoK
SW4gZmFjdCwgZW5hbGJlIGFuZCBkaXNhYmxlIGFyZSB0aGUgc3VzcGVuZCBhbmQgcmVzdW1lIGZ1
bmN0aW9ucy4oUE0KY2FsbGJhY2sgd2lsbCBiZSBhZGRlZCBpbiB0aGUgZnV0dXJlKQpXaGVuIGV4
aXRpbmcgZnJvbSBzMnJhbSwgdGhlIHJlZ2lzdGVyIHdpbGwgYmVjb21lIHRoZSBpbml0aWFsIHZh
bHVlLgpXZSBuZWVkIHRvIGRvIGFsbCB0aGUgd29yaywgZW5hYmxpbmcgcmVzZXQvY2xrICxjYWxp
YnJhdGluZyBhbmQKaW5pdGlhbGl6aW5nIG90aGVyIHJlZy4KClNvIEkgdGhpbmsgaXQgaXMgbm8g
bmVlZCB0byBwdXQgZW5hYmxpbmcgcmVzZXQvY2xrIGFuZCBjYWxpYnJhdGluZyB0bwpwcm9iZSBm
dW5jLCBhbmQgSSdkIGxpa2UKdG8ga2VlcCBlbmFibGUgYW5kIGRpc2FibGUgZnVuYy4KCj4KPiB0
aGFuayB5b3UgYW5kIHJlZ2FyZHMsCj4gICAgICAgICBvLgo+Cj4gPiBSZWdhcmRzLAo+ID4gWWFu
Z3RhbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
