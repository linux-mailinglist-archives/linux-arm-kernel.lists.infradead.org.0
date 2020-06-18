Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DF51FF0C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amjfNNv2MWU4Of/hfbz50iqqaxX0ZqDYB5Sxuawa6nk=; b=cJl6zXEo5+wZbJ
	yzODkzPq6U2zXqkNfhnVkjqKZZUbv4XiLQcq7w+PjIJv+SjEpk3LIPZzR9KkzuRnewLuAwt66o1CM
	FQia3pPRknJxOCg/rZM0/swTPIt53E2FZYVaGWlLK2KsvD4aaRtf80pwvj5Trh0MnhKXO79bilPj6
	B802tle4A2dG0pynrbjHoIny+cS5m7wVrhRVgZEOpqUYlBvl0cA6S7c28mzDwI930KhzMNdUnuE9L
	JQiGRXFzET0TM+Ym7e39XXPgAe9TbeK8GZkg3cBiZQ+Br0SRDxTKSCBA59xWGSnMWvIheVoSUfuuR
	rn6jwbF/7X0SCEl+R2+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlspq-00036T-IK; Thu, 18 Jun 2020 11:35:58 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlspW-0002vY-74; Thu, 18 Jun 2020 11:35:39 +0000
Received: by mail-il1-x142.google.com with SMTP id h3so5369534ilh.13;
 Thu, 18 Jun 2020 04:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JoImTQwHdtw7/u/D4MJchsr+Ube0p5e5ttJYUSlUpgQ=;
 b=Lt1Mz1UBqn4v0w8t7F1YhIpWSQuFgNS/kCO/yeKmffOJRhoRO+kswwtX1bZg/CpcA3
 FxITHVZSEmAmA71HhXzsRUZdkJRwqWC/a11ZPhaaLg6rMCnRBLYv1ulNZC3rlSblgSsg
 k8csSswosgP0RAkGNLL+0jYWSnrCKIuPRd5q+02CaO853Vig0Z/gZciiWM/Kh9cyOPV1
 6PKpS3M6+0MwYqXDcONvLlJkdVAorcB7+EJxZLfr/dUH54KK9+bXAhlQMtNbW2bzG3sI
 fpmMu60fQv0YuJ5GdrONJuc9o8D0fY4wEI8Nab6IdBIoUEaedWlE/XAFBRE9l1vWozHB
 9nkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JoImTQwHdtw7/u/D4MJchsr+Ube0p5e5ttJYUSlUpgQ=;
 b=pGS3Pz6JcQy6jlSSvmpBudw5QjkNIH7TksGtfrLkhoOhQR+yBEpWHuFc3hBCUl2fsD
 +Oj6O3C8Dk2ZB37xQWucmLcT8bzHwiFdv+v8+n5m/WalPXhWIkyAuGIDi7QktAj9w6O9
 y55m4WTMLbGNGAfkrmOhR7xfVPwAQJjMw3BMM5Jqk7MVdLjXbQQQj4b3Jh10nfaABW2z
 ajue5I04HGvUVilBEPOTwm/Oj1HIbVsZPE0ykuOolIMfxZnD1+u1d974YoigXud3qXCA
 Cl9x3xNGBDOs4an4fnil60Zw9IOZ4R2nRzHHKjXQkn7dKjdxIOnANLnTgtGWj3+L2gaI
 LHjA==
X-Gm-Message-State: AOAM531dODYKv7Eyk6Igsm5Ra1KnlqLQTXKHK6UVzPRvd4s/pF31JNK6
 pLnIgyQRZSkpiSN2JIC4xOG4h7x+wQQqip650uE=
X-Google-Smtp-Source: ABdhPJzYeEnhdGZ/i7kYQ2XISNyEFrlAzlCA0rOukEZlRzPYdf0l9uZob5Z3q9PBbsJtN04Vv2QSj45/3Ti31rK/Pts=
X-Received: by 2002:a92:ab04:: with SMTP id v4mr3631570ilh.186.1592480136715; 
 Thu, 18 Jun 2020 04:35:36 -0700 (PDT)
MIME-Version: 1.0
References: <1591254387-10304-1-git-send-email-gene.chen.richtek@gmail.com>
 <20200604133943.GE6644@sirena.org.uk>
In-Reply-To: <20200604133943.GE6644@sirena.org.uk>
From: Gene Chen <gene.chen.richtek@gmail.com>
Date: Thu, 18 Jun 2020 19:35:24 +0800
Message-ID: <CAE+NS34dkz6p6Zgr0SU5ETPMe0uuDiVUOrqT4W0g_m=SnvNg3g@mail.gmail.com>
Subject: Re: [PATCH] regulator: mt6360: Add support for MT6360 regulator
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_043538_273354_EF6FD4D2 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Gene Chen <gene_chen@richtek.com>, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, cy_huang@richtek.com, benjamin.chao@mediatek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPiDmlrwgMjAyMOW5tDbmnIg05pelIOmAseWb
myDkuIvljYg5OjM55a+r6YGT77yaCj4KPiBPbiBUaHUsIEp1biAwNCwgMjAyMCBhdCAwMzowNjoy
N1BNICswODAwLCBHZW5lIENoZW4gd3JvdGU6Cj4KPiBUaGlzIGxvb2tzIG5pY2UgYW5kIHNpbXBs
ZSwgYSBmZXcgZmFpcmx5IHNtYWxsIGNvbW1lbnRzIGJlbG93IGJ1dCBoaWdoCj4gbGV2ZWwgaXQn
cyBiYXNpY2FsbHkgZmluZS4KPgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvZHJpdmVycy9y
ZWd1bGF0b3IvbXQ2MzYwLXJlZ3VsYXRvci5jCj4gPiBAQCAtMCwwICsxLDU3MSBAQAo+ID4gKy8v
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiArLyoKPiA+ICsgKiBDb3B5cmln
aHQgKGMpIDIwMjAgTWVkaWFUZWsgSW5jLgo+Cj4gUGxlYXNlIG1ha2UgdGhlIGVudGlyZSBjb21t
ZW50IGEgQysrIG9uZSBzbyB0aGluZ3MgbG9vayBtb3JlCj4gaW50ZW50aW9uYWwuCj4KCkFDSwoK
PiA+ICsgICAgIGZvciAoaSA9IDA7IGkgPCBkZXZkYXRhLT5udW1faXJxX2Rlc2NzOyBpKyspIHsK
PiA+ICsgICAgICAgICAgICAgaXJxX2Rlc2MgPSBkZXZkYXRhLT5pcnFfZGVzY3MgKyBpOwo+ID4g
KyAgICAgICAgICAgICBpZiAodW5saWtlbHkoIWlycV9kZXNjLT5uYW1lKSkKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBjb250aW51ZTsKPgo+IERvIHdlIHJlYWxseSBuZWVkIGFuIHVubGlrZWx5
IGhlcmU/ICBUaGlzIHNob3VsZG4ndCBiZSBhIGhvdCBwYXRoLgo+Cj4gPiArc3RhdGljIGludCBt
dDYzNjBfcmVndWxhdG9yX3NldF9tb2RlKAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgcmVndWxhdG9yX2RldiAqcmRldiwgdW5zaWduZWQgaW50IG1vZGUpCj4gPiAr
ewo+Cj4gPiArICAgICBzd2l0Y2ggKDEgPDwgKGZmcyhtb2RlKSAtIDEpKSB7Cj4gPiArICAgICBj
YXNlIFJFR1VMQVRPUl9NT0RFX05PUk1BTDoKPgo+IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgdGhp
cyBpc24ndCBqdXN0IGEgc3RyYWlnaHQgc3dpdGNoIG9uIG1vZGU/Cj4KCkFDSywgd2Ugd2lsbCBm
aXggaXQKCj4gPiArc3RhdGljIHVuc2lnbmVkIGludCBtdDYzNjBfcmVndWxhdG9yX2dldF9tb2Rl
KHN0cnVjdCByZWd1bGF0b3JfZGV2ICpyZGV2KQo+ID4gK3sKPiA+ICsgICAgIGNvbnN0IHN0cnVj
dCBtdDYzNjBfcmVndWxhdG9yX2Rlc2MgKmRlc2MgPQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAoY29uc3Qgc3RydWN0IG10NjM2MF9yZWd1bGF0b3JfZGVzYyAqKXJkZXYtPmRlc2M7
Cj4gPiArICAgICBpbnQgc2hpZnQgPSBmZnMoZGVzYy0+bW9kZV9nZXRfbWFzaykgLSAxLCByZXQ7
Cj4gPiArICAgICB1bnNpZ25lZCBpbnQgdmFsID0gMDsKPiA+ICsKPiA+ICsgICAgIGRlZmF1bHQ6
Cj4gPiArICAgICAgICAgICAgIHJldCA9IDA7Cj4gPiArICAgICB9Cj4KPiBJZiB3ZSBjYW4ndCBw
YXJzZSBhIHZhbGlkIHZhbHVlIGZyb20gdGhlIGhhcmR3YXJlIHRoZW4gdGhhdCdzIGFuIGVycm9y
Lgo+CgpBQ0sKCj4gPiArc3RhdGljIGludCBtdDYzNjBfcmVndWxhdG9yX3JlZ193cml0ZSh2b2lk
ICpjb250ZXh0LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWdu
ZWQgaW50IHJlZywgdW5zaWduZWQgaW50IHZhbCkKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgbXQ2
MzYwX3JlZ3VsYXRvcl9kYXRhICptcmQgPSBjb250ZXh0Owo+ID4gKyAgICAgdTggY2h1bmtbNF0g
PSB7MH07Cj4gPiArCj4gPiArICAgICAvKiBjaHVuayAwIC0+aTJjIGFkZHIsIDEgLT4gcmVnX2Fk
ZHIsIDIgLT4gcmVnX3ZhbCAzLT4gY3JjOCAqLwo+ID4gKyAgICAgY2h1bmtbMF0gPSAobXJkLT5p
MmMtPmFkZHIgJiAweDdmKSA8PCAxOwo+ID4gKyAgICAgY2h1bmtbMV0gPSByZWcgJiAweDNmOwo+
ID4gKyAgICAgY2h1bmtbMl0gPSAodTgpdmFsOwo+ID4gKyAgICAgY2h1bmtbM10gPSBjcmM4KG1y
ZC0+Y3JjOF90YWJsZSwgY2h1bmssIDMsIDApOwo+ID4gKyAgICAgLyogYWxzbyBkdW1teSBvbmUg
Ynl0ZSAqLwo+ID4gKyAgICAgcmV0dXJuIGkyY19zbWJ1c193cml0ZV9pMmNfYmxvY2tfZGF0YSht
cmQtPmkyYywgY2h1bmtbMV0sIDMsIGNodW5rICsgMik7Cj4gPiArfQo+Cj4gT2gsIHdvdyAtIHRo
YXQncyBhIGZ1biBJL08gaW50ZXJmYWNlIQo+CgpNVDYzNjAgUE1JQy9MRE8gcGFydCB1c2UgQ1JD
IHRvIGF2b2lkIGkyYyB3cml0ZSBtaXN0YWtlbgoKPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCBfX21heWJlX3VudXNlZCBtdDYzNjBfcmVndWxhdG9yX29mX2lkW10gPSB7Cj4g
PiArICAgICB7Cj4gPiArICAgICAgICAgICAgIC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10NjM2
MF9wbWljIiwKPiA+ICsgICAgICAgICAgICAgLmRhdGEgPSAodm9pZCAqKSZtdDYzNjBfcG1pY19k
ZXZkYXRhLAo+ID4gKyAgICAgfSwKPiA+ICsgICAgIHsKPiA+ICsgICAgICAgICAgICAgLmNvbXBh
dGlibGUgPSAibWVkaWF0ZWssbXQ2MzYwX2xkbyIsCj4gPiArICAgICAgICAgICAgIC5kYXRhID0g
KHZvaWQgKikmbXQ2MzYwX2xkb19kZXZkYXRhLAo+ID4gKyAgICAgfSwKPiA+ICsgICAgIHt9LAo+
ID4gK307Cj4gPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgbXQ2MzYwX3JlZ3VsYXRvcl9vZl9p
ZCk7Cj4KPiBJIGRvbid0IHNlZSBhbnkgRFQgYmluZGluZ3MgZG9jdW1lbnRhdGlvbiBmb3IgdGhp
cywgZG9jdW1lbnRhdGlvbiBpcwo+IHJlcXVpcmVkIGZvciBhbGwgbmV3IGJpbmRpbmdzLgo+CgpB
Q0ssIHdlIHdpbGwgdXBkYXRlIGJpbmRpbmcgZG9jdW1lbnQKCj4gPiArICAgICBtcmQtPnJlZ21h
cCA9IGRldm1fcmVnbWFwX2luaXQoJihtcmQtPmkyYy0+ZGV2KSwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBOVUxMLCBtcmQsIGRldmRhdGEtPnJlZ21hcF9jb25maWcp
Owo+ID4gKyAgICAgaWYgKElTX0VSUihtcmQtPnJlZ21hcCkpIHsKPiA+ICsgICAgICAgICAgICAg
ZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIHJlZ2lzdGVyIHJlZ21hcFxuIik7Cj4gPiAr
ICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKG1yZC0+cmVnbWFwKTsKPiA+ICsgICAgIH0KPgo+
IFRoaXMgbG9va3MgbGlrZSBhIE1GRCBzbyBpdCdzIHN1cnByaXNpbmcgdG8gc2VlIHVzIGRlZmlu
aW5nIGEgcmVnbWFwIGF0Cj4gdGhpcyBsZXZlbC4gIFdoeSBhcmUgd2UgZG9pbmcgdGhpcz8KCmJl
Y2F1c2Ugb3RoZXIgc3ViLWRldmljZSAoZS5nLiBDSEFSR0VSL0xFRC9BREMpIG5vIG5lZWQgQ1JD
IHdoZW4gaTJjIFIvVwp3ZSB3aWxsIG1lcmdlIHJlbWdhcCBpbnRvIG1mZCwgYW5kIHVzZSAiYmFu
ayIgc3RyYXRlZ3kgdG8gZGlzdGluZ3Vpc2gKZGlmZmVyZW50IHBhcnQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
