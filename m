Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDA11B0B8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAtIEN6BTzd5NwkFl7G+vRx6ihgzOcbV3q/rH4Vfb60=; b=jHGq2LNoPWMURw
	eB9xlXRgpJzPIliPHf0Hf/Hv/U17tUV9VVRgGoEfAss1hYor8EiZwY31sxrxzwfiBZ+/1bS+4+es1
	gmQVyrFWdIbKiKUXAGwFVMaJTJnHUARTwTMrPaMCSJQvFEfQLs3XRtmY413u94FL7jRdtPggcN47j
	IyJp7+lkUevJvmcttlU3rPU08i4u774dtNLiurRMkqDRFku3slEzJpZ5utK3MZDWvq3Yrz1E0A6yh
	ficgUDDGihll6DYX5Vpps1SvaEpzLiJEumqik6ZqN3v9nVSX4bPCdEandecLzdPd5q5+RkqXawDBo
	VOVzavAIlF9r3Ub74uHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVyl-0007UT-Iw; Mon, 20 Apr 2020 12:56:51 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVyd-0007TT-4o
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:56:44 +0000
Received: by mail-io1-xd42.google.com with SMTP id u11so10803025iow.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 05:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pcI0qWNc1N4Zlqa5f3AfBQvRhwW8Vt/U+TEuOLUSgd0=;
 b=cJ4W1US+K62mAFMlX3vEoTunFkNtMdkgjMA9cd/b+CXfHHy+KLOwqk2tlEbEwPbuRH
 xSXmkoHN++WSy+dCUUzGCY9SP3HjreMrDx4yidSHof12jzx8gg1S3xdgSKdfPYb+FdIV
 e58IZzVYnDquHfGCiK/uyNtevWXNWmZG79zBz7IhlF5/0YRxcwiucINo/h7GiOA+LjbD
 LngMieEa3T/tmA3/889Ic5nwImTg272p+BuXfPa7v3y+2FG5H44LloARO7mVe6vUzyGj
 kpzB3udH8cimAN/yo/GqL27F79VRBj98oNpDXitS54sCr29fXiiMvwx1b6a0S0Lq8rQz
 pH2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pcI0qWNc1N4Zlqa5f3AfBQvRhwW8Vt/U+TEuOLUSgd0=;
 b=Yw4tV+JFhoN+gp/cLnoMyj02pR/+c5rUe3dnY1cCs7yd9F/EDaWgjp99rrXtEFcP/k
 iSy4c7tH+2Yv1ZNvnhfh52AFqJDEB43a3455sxJSV08KDTyag2Q3FowCR7YSVRzNpc3J
 D6slmtTa03BlYhTxb62L2AKf/W/26wqvcKIyF8T0sqxlAkbUlGCSsG6e2xVtjmUB3UHm
 4lKz8EaFqw9yGeglEjAqTIfg2umCkPvJgtj6lrzqEuBnJJrQGrjbusxaeThX2BsPyaOw
 F8dZc/Lxu5j13nkKUT616/ONdFRiiLQEPXSsTx/qOMNCQXw44gVkVwrZXJDvO4yzN9/m
 BFqg==
X-Gm-Message-State: AGi0PubGb62pgweu8ICjr5MW+Y1oyopDj0ljyv+IRAsdLf6CgSH8aWpp
 8nYipr1YWCFPnTrS9ne9UbZDlmVxmsJGtdorbbw=
X-Google-Smtp-Source: APiQypJ157MeGNo8bgnTMRGL69DR4CbiKXoMr5w1w97C8gzFpIW/y2Ja9T72EhZhF6SM+EgLpNS1I3CzKErckee77Lc=
X-Received: by 2002:a05:6602:2fcd:: with SMTP id
 v13mr15163961iow.124.1587387402154; 
 Mon, 20 Apr 2020 05:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200418224435.23672-1-peron.clem@gmail.com>
 <20200418224435.23672-5-peron.clem@gmail.com>
 <20200420124452.5vaoyw73n76jwmey@gilmour.lan>
In-Reply-To: <20200420124452.5vaoyw73n76jwmey@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 20 Apr 2020 14:56:31 +0200
Message-ID: <CAJiuCccAFk3X03OV2MhGuqY7YW0HtM_1gJO9cW0=6OoTkSB6gg@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] ASoC: sun4i-i2s: Set sign extend sample
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_055643_185123_2CC03A4F 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCAyMCBBcHIgMjAyMCBhdCAxNDo0NCwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+Cj4gT24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6
NDQ6MzJBTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gRnJvbTogTWFyY3VzIENv
b3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+Cj4gPgo+ID4gT24gdGhlIG5ld2VyIFNvQ3Mgc3Vj
aCBhcyB0aGUgSDMgYW5kIEE2NCB0aGlzIGlzIHNldCBieSBkZWZhdWx0Cj4gPiB0byB0cmFuc2Zl
ciBhIDAgYWZ0ZXIgZWFjaCBzYW1wbGUgaW4gZWFjaCBzbG90LiBIb3dldmVyIHRoZSBBMTAKPiA+
IGFuZCBBMjAgU29DcyB0aGF0IHRoaXMgZHJpdmVyIHdhcyBkZXZlbG9wZWQgb24gaGFkIGEgZGVm
YXVsdAo+ID4gc2V0dGluZyB3aGVyZSBpdCBwYWRkZWQgdGhlIGF1ZGlvIGdhaW4gd2l0aCB6ZXJv
cy4KPiA+Cj4gPiBUaGlzIGlzbid0IGEgcHJvYmxlbSB3aGlsc3Qgd2UgaGF2ZSBvbmx5IHN1cHBv
cnQgZm9yIDE2Yml0IGF1ZGlvCj4gPiBidXQgd2l0aCBsYXJnZXIgc2FtcGxlIHJlc29sdXRpb24g
cmF0ZXMgaW4gdGhlIHBpcGVsaW5lIHRoZW4gU0VYVAo+ID4gYml0cyBzaG91bGQgYmUgY2xlYXJl
ZCBzbyB0aGF0IHRoZXkgYWxzbyBwYWQgYXQgdGhlIExTQi4gV2l0aG91dAo+ID4gdGhpcyB0aGUg
YXVkaW8gZ2V0cyBkaXN0b3J0ZWQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTWFyY3VzIENvb3Bl
ciA8Y29kZWtpcHBlckBnbWFpbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6ly
b24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgc291bmQvc29jL3N1bnhpL3N1
bjRpLWkycy5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAyMiBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9zdW54aS9z
dW40aS1pMnMuYyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwo+ID4gaW5kZXggYTIzYzlm
MmEzZjhjLi42MThiYmM1MTU2ZjEgMTAwNjQ0Cj4gPiAtLS0gYS9zb3VuZC9zb2Mvc3VueGkvc3Vu
NGktaTJzLmMKPiA+ICsrKyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwo+ID4gQEAgLTQ4
LDYgKzQ4LDkgQEAKPiA+ICAjZGVmaW5lIFNVTjRJX0kyU19GTVQwX0ZNVF9JMlMgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgKDAgPDwgMCkKPiA+Cj4gPiAgI2RlZmluZSBTVU40SV9JMlNf
Rk1UMV9SRUcgICAgICAgICAgIDB4MDgKPiA+ICsjZGVmaW5lIFNVTjRJX0kyU19GTVQxX1JFR19T
RVhUX01BU0sgICAgICAgICBCSVQoOCkKPiA+ICsjZGVmaW5lIFNVTjRJX0kyU19GTVQxX1JFR19T
RVhUKHNleHQpICAgICAgICAgICAgICAgICAgICAgICAgKChzZXh0KSA8PCA4KQo+ID4gKwo+ID4g
ICNkZWZpbmUgU1VONElfSTJTX0ZJRk9fVFhfUkVHICAgICAgICAgICAgICAgIDB4MGMKPiA+ICAj
ZGVmaW5lIFNVTjRJX0kyU19GSUZPX1JYX1JFRyAgICAgICAgICAgICAgICAweDEwCj4gPgo+ID4g
QEAgLTEwNSw2ICsxMDgsOSBAQAo+ID4gICNkZWZpbmUgU1VOOElfSTJTX0ZNVDBfQkNMS19QT0xB
UklUWV9JTlZFUlRFRCAgICAgICAgICAgICAgICAoMSA8PCA3KQo+ID4gICNkZWZpbmUgU1VOOElf
STJTX0ZNVDBfQkNMS19QT0xBUklUWV9OT1JNQUwgICAgICAgICAgKDAgPDwgNykKPiA+Cj4gPiAr
I2RlZmluZSBTVU44SV9JMlNfRk1UMV9SRUdfU0VYVF9NQVNLICAgICAgICAgR0VOTUFTSyg1LDQp
Cj4gPiArI2RlZmluZSBTVU44SV9JMlNfRk1UMV9SRUdfU0VYVChzZXh0KSAgICAgICAgICAgICAg
ICAgICAgICAgICgoc2V4dCkgPDwgNCkKPiA+ICsKPiA+ICAjZGVmaW5lIFNVTjhJX0kyU19JTlRf
U1RBX1JFRyAgICAgICAgICAgICAgICAweDBjCj4gPiAgI2RlZmluZSBTVU44SV9JMlNfRklGT19U
WF9SRUcgICAgICAgICAgICAgICAgMHgyMAo+ID4KPiA+IEBAIC02NjMsNiArNjY5LDEyIEBAIHN0
YXRpYyBpbnQgc3VuNGlfaTJzX3NldF9zb2NfZm10KGNvbnN0IHN0cnVjdCBzdW40aV9pMnMgKmky
cywKPiA+ICAgICAgIH0KPiA+ICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwg
U1VONElfSTJTX0NUUkxfUkVHLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgIFNVTjRJX0ky
U19DVFJMX01PREVfTUFTSywgdmFsKTsKPiA+ICsKPiA+ICsgICAgIC8qIFNldCBzaWduIGV4dGVu
c2lvbiB0byBwYWQgb3V0IExTQiB3aXRoIDAgKi8KPiA+ICsgICAgIHJlZ21hcF91cGRhdGVfYml0
cyhpMnMtPnJlZ21hcCwgU1VONElfSTJTX0ZNVDFfUkVHLAo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgIFNVTjRJX0kyU19GTVQxX1JFR19TRVhUX01BU0ssCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgU1VONElfSTJTX0ZNVDFfUkVHX1NFWFQoMCkpOwo+ID4gKwo+ID4gICAgICAgcmV0
dXJuIDA7Cj4gPiAgfQo+ID4KPiA+IEBAIC03NjUsNiArNzc3LDExIEBAIHN0YXRpYyBpbnQgc3Vu
OGlfaTJzX3NldF9zb2NfZm10KGNvbnN0IHN0cnVjdCBzdW40aV9pMnMgKmkycywKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICBTVU44SV9JMlNfQ1RSTF9CQ0xLX09VVCB8IFNVTjhJX0kyU19D
VFJMX0xSQ0tfT1VULAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgIHZhbCk7Cj4gPgo+ID4g
KyAgICAgLyogU2V0IHNpZ24gZXh0ZW5zaW9uIHRvIHBhZCBvdXQgTFNCIHdpdGggMCAqLwo+ID4g
KyAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKGkycy0+cmVnbWFwLCBTVU40SV9JMlNfRk1UMV9SRUcs
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgU1VOOElfSTJTX0ZNVDFfUkVHX1NFWFRfTUFT
SywKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBTVU44SV9JMlNfRk1UMV9SRUdfU0VYVCgw
KSk7Cj4gPiArCj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICB9Cj4gPgo+ID4gQEAgLTg2Nyw2ICs4
ODQsMTEgQEAgc3RhdGljIGludCBzdW41MGlfaTJzX3NldF9zb2NfZm10KGNvbnN0IHN0cnVjdCBz
dW40aV9pMnMgKmkycywKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICBTVU44SV9JMlNfQ1RS
TF9CQ0xLX09VVCB8IFNVTjhJX0kyU19DVFJMX0xSQ0tfT1VULAo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgIHZhbCk7Cj4gPgo+ID4gKyAgICAgLyogU2V0IHNpZ24gZXh0ZW5zaW9uIHRvIHBh
ZCBvdXQgTFNCIHdpdGggMCAqLwo+ID4gKyAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKGkycy0+cmVn
bWFwLCBTVU40SV9JMlNfRk1UMV9SRUcsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgU1VO
OElfSTJTX0ZNVDFfUkVHX1NFWFRfTUFTSywKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBT
VU44SV9JMlNfRk1UMV9SRUdfU0VYVCgwKSk7Cj4gPiArCj4KPiBJZiB0aGlzIGlzIGFuIGlzc3Vl
IG9ubHkgb24gdGhlIEExMCAvIEEyMCwgd2h5IGFyZSB5b3Ugc2V0dGluZyBpdCB1cCBvbiB0aGUK
PiBvdGhlciBnZW5lcmF0aW9ucyB0b28/CgpUbyBrZWVwIGNvaGVyZW5jeSBiZXR3ZWVuIGFsbCBz
ZXRfc29jX2Zvcm1hdCgpLCBhbmQgYWxzbyBhdm9pZCB0aGlzCmtpbmQgb2YgaXNzdWUgZm9yIGZ1
dHVyZSBnZW5lcmF0aW9uLgpBcyB0aGlzIGRvZXNuJ3QgY29zdCBtdWNoIGFmdGVyIGFsbCwgYW5k
IGl0IGF2b2lkIHRvIHJlbHkgb24gZGVmYXVsdCwKYnV0IHdoYXQgZG8geW91IHRoaW5rID8KCkNs
ZW1lbnQKCj4KPiBNYXhpbWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
