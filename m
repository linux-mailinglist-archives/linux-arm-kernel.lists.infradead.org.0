Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA791B8F92
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 13:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLCB14T5B6aCq5gXLNF/wDqyRktMBfYFHn0Cf7sv1Vw=; b=aYdF5Y/KASdJLg
	LIIEsgRzOCn6dXxxY2Bjh5EDn9PykFvU7VS1rb13pgkUg4//AcG3UC6NYrveYJpsSi0kT5K8GiKpA
	M7ED5TPeM0gsjT4ICFazdJijVs+hRxAduYTWNK9QKL2yCR5KnCulBwm2OwfjKH7Su1lm8bFx0Pz8N
	3BLzzjFcI7s5Pd+qe3wSDnkUZJ67i2VFN3/qJ7uXu8BjRN81xjioA5QMpJ7dbfYY6sVGg8y2b9p0g
	IImDXbwLKZNlUfsmlnXM+yZoDCIE4MFt5jx9oKT+4JGxUY7b252grUwKy54ll7BbK71aQ3ikO2rS5
	sVM9zOOUSU415RIoErWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSfoy-0002Xe-5r; Sun, 26 Apr 2020 11:51:40 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSfop-0002Wz-UF
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 11:51:33 +0000
Received: by mail-io1-xd42.google.com with SMTP id w4so15741938ioc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 04:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zzsgb0bSas/OG7O+OpGibPBYKUg7XSUZ1PjoBegHMxc=;
 b=DxAhqJJ/wQgFg6ol8/V/EbSESD9xxzG/GvqGW5TNxf5CI7dpnx/S2VKRj9wUtueIBV
 3mDmrZBjRzWztKSMmg+fkEVqU63CPy4S13gNdFfhkb8lkOByaay629I6VMGYG9snKt8u
 l5q3vM+e8+mFhbz0EFQQD810W+W7HUO+l9PnDlcXfeHD8pmg5UyrhaRG5rA5uIdErs2U
 d8TbZRSuC93nK0UTrKJbPlNAqcLfL3pJdoGstSmHRcz0qNxh3+RRVs+Cls5dNi1/aaPy
 6GjieOKiHsSoDg111lXJmfV38HDdh0SkvnjaqBxb60YPs4oT648UMCI/KI1EhHtJEwbp
 kTVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zzsgb0bSas/OG7O+OpGibPBYKUg7XSUZ1PjoBegHMxc=;
 b=OGW6CutD944Hw5wEcbFstYTf5bk8YoPhs308tGInBj6lcamyNYSajci5plaQeipDIL
 mSJ+bt794zcLIrnqmFSuj+bHBm7zF4g7NljNol0/dNaU8YrOeMYNJiZ0q5WmEDj7oUSA
 JNVMvT0iTacR4dEgfYwCM6RW03Qv4MIpqMFuLrxbmVTKqTAqq0JfaYzxeCc26JV2pSZU
 RXRPxexg159cSKtuvHUWAax7axGVQvFHEb1NoVfLrkyCSF5rlcF3G3+Q/Ega5/gGF8Tu
 SVvH4K+TLmTKCy9cjBM7RMVQo+Ky6CgTT4pVPXm68qc3JzQKZ0rpCwDXMdef985kWP6F
 A0JQ==
X-Gm-Message-State: AGi0PuYxeMcQxMMEN4EozmhhDGXT+L8jmyGhtkE1NyDGiNtx0QHjdFxW
 hMbw03IPVijObJYBSTPnNRuX2+MC47CqCiYl2SdiqPjyhNI=
X-Google-Smtp-Source: APiQypKq7oXcr9IeMjM8MZxjatFWiOsSh24aUP+LwC+13d1DBgzun3vwOHINHuAmcSK9qbROS4jgfWwkk4wJsA7yiA0=
X-Received: by 2002:a05:6602:2fcd:: with SMTP id
 v13mr16297176iow.124.1587901890849; 
 Sun, 26 Apr 2020 04:51:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-8-peron.clem@gmail.com>
In-Reply-To: <20200426104115.22630-8-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 26 Apr 2020 13:51:19 +0200
Message-ID: <CAJiuCcfkk3huywjBcHqfCimEXzH2iX=MYriWyhfrKWX47C=CvA@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] arm64: dts: sun50i-h6: Add HDMI audio to H6 DTSI
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_045131_998540_7AC49100 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIDI2IEFwciAyMDIwIGF0IDEyOjQxLCBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEZyb206IEplcm5laiBTa3JhYmVjIDxqZXJuZWou
c2tyYWJlY0BzaW9sLm5ldD4KPgo+IEFkZCBhIHNpbXBsZS1zb3VuZGNhcmQgdG8gbGluayBhdWRp
byBiZXR3ZWVuIEhETUkgYW5kIEkyUy4KPgo+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVj
IDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJjdXMgQ29vcGVy
IDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYuZHRzaSB8IDMxICsrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYuZHRzaQo+IGluZGV4IGE1ZWU2ODM4OGJkMy4uNTU4ZmU2MzczOWNiIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiBA
QCAtODgsNiArODgsMjQgQEAKPiAgICAgICAgICAgICAgICAgICAgICAgICAoR0lDX0NQVV9NQVNL
X1NJTVBMRSg0KSB8IElSUV9UWVBFX0xFVkVMX0hJR0gpPjsKPiAgICAgICAgIH07Cj4KPiArICAg
ICAgIHNvdW5kX2hkbWk6IHNvdW5kIHsKCkkgd2lsbCByZW5hbWUgdGhpcyB0bwpoZG1pX3NvdW5k
OiBoZG1pLXNvdW5kIHsKCmluIHRoZSBuZXh0IHZlcnNpb24KCj4gKyAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAic2ltcGxlLWF1ZGlvLWNhcmQiOwo+ICsgICAgICAgICAgICAgICBzaW1wbGUt
YXVkaW8tY2FyZCxmb3JtYXQgPSAiaTJzIjsKPiArICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlv
LWNhcmQsbmFtZSA9ICJhbGx3aW5uZXItaGRtaSI7Cj4gKyAgICAgICAgICAgICAgIHNpbXBsZS1h
dWRpby1jYXJkLG1jbGstZnMgPSA8MTI4PjsKPiArICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlv
LWNhcmQsZnJhbWUtaW52ZXJzaW9uOwoKQW5kIEkgd2lsbCBhZGQgYSBzdGF0dXM9ImRpc2FibGVk
IiBoZXJlIGFzIG5vdCBhbGwgYm9hcmQgaGF2ZSBhbiBoZG1pIGNvbm5lY3RvcgoKUmVnYXJkcywK
Q2xlbWVudAoKPiArCj4gKyAgICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1jYXJkLGNvZGVjIHsK
PiArICAgICAgICAgICAgICAgICAgICAgICBzb3VuZC1kYWkgPSA8JmhkbWk+Owo+ICsgICAgICAg
ICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsY3B1IHsK
PiArICAgICAgICAgICAgICAgICAgICAgICBzb3VuZC1kYWkgPSA8JmkyczE+Owo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGRhaS10ZG0tc2xvdC1udW0gPSA8Mj47Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZGFpLXRkbS1zbG90LXdpZHRoID0gPDMyPjsKPiArICAgICAgICAgICAgICAgfTsK
PiArICAgICAgIH07Cj4gKwo+ICAgICAgICAgc29jIHsKPiAgICAgICAgICAgICAgICAgY29tcGF0
aWJsZSA9ICJzaW1wbGUtYnVzIjsKPiAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8
MT47Cj4gQEAgLTU4MSw2ICs1OTksMTggQEAKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+
ICAgICAgICAgICAgICAgICB9Owo+Cj4gKyAgICAgICAgICAgICAgIGkyczE6IGkyc0A1MDkxMDAw
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICAjc291bmQtZGFpLWNlbGxzID0gPDA+Owo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1p
MnMiOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDA1MDkxMDAwIDB4MTAwMD47
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE5IElSUV9U
WVBFX0xFVkVMX0hJR0g+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2N1
IENMS19CVVNfSTJTMT4sIDwmY2N1IENMS19JMlMxPjsKPiArICAgICAgICAgICAgICAgICAgICAg
ICBjbG9jay1uYW1lcyA9ICJhcGIiLCAibW9kIjsKPiArICAgICAgICAgICAgICAgICAgICAgICBk
bWFzID0gPCZkbWEgND4sIDwmZG1hIDQ+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlc2V0
cyA9IDwmY2N1IFJTVF9CVVNfSTJTMT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZG1hLW5h
bWVzID0gInJ4IiwgInR4IjsKPiArICAgICAgICAgICAgICAgfTsKPiArCj4gICAgICAgICAgICAg
ICAgIHNwZGlmOiBzcGRpZkA1MDkzMDAwIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAjc291
bmQtZGFpLWNlbGxzID0gPDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjUwaS1oNi1zcGRpZiI7Cj4gQEAgLTcxMSw2ICs3NDEsNyBAQAo+ICAg
ICAgICAgICAgICAgICB9Owo+Cj4gICAgICAgICAgICAgICAgIGhkbWk6IGhkbWlANjAwMDAwMCB7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgI3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtZHct
aGRtaSI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MDYwMDAwMDAgMHgxMDAw
MD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcmVnLWlvLXdpZHRoID0gPDE+Owo+IC0tCj4g
Mi4yMC4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
