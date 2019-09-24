Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B110BCB97
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WjORAHQlT2TuAUO5vP8y2TmvcVm+81yhOtVqdWUWkU=; b=YlBCRUBKuVyqCN
	ia8u8at1pJFv8kpVBXJesZnw77RSmdfCw2VB01XG3bHcMNCj+5IfQPLQZEi39652m03bAfgG3uPkS
	UxuzBI2Ag098+vCqeYCG9mB53dOZu4EcFob2TaC25pgNbZnHX3xXZtH+Bm74wvofPvOmYH8kfZToX
	TdRQuRfmaApTPJMJGX8Fr3QwPrwH55vBR+vlY7/W0oBGMRwmT208aAsoKiiU4rFGopbJMMUKiM8YL
	xB71dQML5M9fdDZPdsRGPKjO7egLR4/ZedQfn675lKVMSuPcpv6boOEmFrS1DxIm1VcCZCY0/PqRX
	DaK/B0ZplS7iuEWdj4hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmpu-0001tg-BN; Tue, 24 Sep 2019 15:34:42 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmpR-0001lK-2X; Tue, 24 Sep 2019 15:34:14 +0000
Received: by mail-io1-xd41.google.com with SMTP id c6so5439936ioo.13;
 Tue, 24 Sep 2019 08:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=p4IW7lVwom9cm/5ki431GVwm+aXbWnyT6RgawcJ7NnM=;
 b=VPSkrDuuF8B7LOfygF6XX12A1DAJBaPDC1Z7i9Mds8nvKyDAkGRiYs32RSB6C7UAYY
 Jnk1bY0YKPBVv2nyiAXzzeojgFMEuCU4kWmE2VnjUyH/AEw1My987cPOQIE1eXOp3OcE
 Y/kONFZzy1s3xHT6BNAVtO5xwgV8TQckhOpw3ZZZ7XJ5jpnLZ+RW0OrxZeCV3s0u9ZEw
 IU/iUXcxacjBmlH4j+rRtexrhzRZaMYunPGanO1QWMSb8rEltZ3YgxFIjFyDHW3Guzj4
 S/hy7+Pxpr5pYAnybV9Ym6CtfYQqhKAi7ZYf+84KD9AQNU2oCHo17fvE2l7XieGruAha
 FGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=p4IW7lVwom9cm/5ki431GVwm+aXbWnyT6RgawcJ7NnM=;
 b=fXsJXjL+2zWGn+jWjjfPTOEoLVqbi7t6JWh7eofbRc87HTzRG+S00lE8oH+QIbUz7i
 Max4NHIwVqBqIEk1hO3+9tJcoO9rfjV/aAsiBOyYDFEFQy4d4NKVw21c260HfqcaT22+
 9vK0pJynOaf2YuRzkf3WF6gDr6tbxoeALUzwbMkBZMof9h97dLgpbXUzFVJ62KfIwkei
 2bdGY6zw031vHeCkVLfi4w5Ihhj2o54G76xa18h9VHlVcmIeZE4i6gAxq58VlWcLFD8+
 iX/eCWlVsjZElK95agU+HVXtKZmIzeLU2JzyFTxkCC7t5Qcr81YL4qPaNBE8Sdny/On4
 rirw==
X-Gm-Message-State: APjAAAV2N3t1tobJHWTexiyQlfD7au3t0yNAxhbIje4Qd0YT1B0WepHe
 3KBlLzbkvLtKmUrmE/f0MOna/n8Z/CZXtt04HHNa9g==
X-Google-Smtp-Source: APXvYqwpV4pqbOSw/YoZK3q6p6UwZL/wN0ZWhYwEUFSJSUW3FqByMH7MMtTQpWMy0gA+5+LK8lNHif4RRFEthdqHjL4=
X-Received: by 2002:a6b:7b01:: with SMTP id l1mr1739481iop.292.1569339252384; 
 Tue, 24 Sep 2019 08:34:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a92:a04a:0:0:0:0:0 with HTTP; Tue, 24 Sep 2019 08:34:11
 -0700 (PDT)
In-Reply-To: <20190919071828.GC5016@dell>
References: <1568801744-21380-1-git-send-email-gene.chen.richtek@gmail.com>
 <20190918105121.GB5016@dell>
 <CAE+NS37XG+kfbj6yJrL5A-d2O_aiRU90yV5TUk3Kfa0Rv7dWmw@mail.gmail.com>
 <20190919071828.GC5016@dell>
From: Gene Chen <gene.chen.richtek@gmail.com>
Date: Tue, 24 Sep 2019 23:34:11 +0800
Message-ID: <CAE+NS342Kn6OEz4D9Y0yfXStnW6KQ6N2yuQtgN2q2bXafofShg@mail.gmail.com>
Subject: Re: [PATCH] mfd: mt6360: add pmic mt6360 driver
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_083413_166118_0F72565E 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gene.chen.richtek[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOS0wOS0xOSAxNToxOCBHTVQrMDg6MDAsIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5v
cmc+Ogo+IE9uIFRodSwgMTkgU2VwIDIwMTksIEdlbmUgQ2hlbiB3cm90ZToKPgo+PiBMZWUgSm9u
ZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPiDmlrwgMjAxOeW5tDnmnIgxOOaXpSDpgLHkuIkg5LiL
5Y2INjo1MeWvq+mBk++8mgo+PiA+Cj4+ID4gT24gV2VkLCAxOCBTZXAgMjAxOSwgR2VuZSBDaGVu
IHdyb3RlOgo+PiA+Cj4+ID4gPiBGcm9tOiBHZW5lIENoZW4gPGdlbmVfY2hlbkByaWNodGVrLmNv
bT4KPj4gPiA+Cj4+ID4gPiBBZGQgbWZkIGRyaXZlciBmb3IgbXQ2MzYwIHBtaWMgY2hpcCBpbmNs
dWRlCj4+ID4gPiBCYXR0ZXJ5IENoYXJnZXIvVVNCX1BEL0ZsYXNoIExFRC9SR0IgTEVEL0xETy9C
dWNrCj4+ID4gPgo+PiA+ID4gU2lnbmVkLW9mZi1ieTogR2VuZSBDaGVuIDxnZW5lX2NoZW5Acmlj
aHRlay5jb20KPj4gPiA+IC0tLQo+PiA+Cj4+ID4gVGhpcyBsb29rcyBkaWZmZXJlbnQgZnJvbSB0
aGUgb25lIHlvdSBzZW50IGJlZm9yZSwgYnV0IEkgZG9uJ3Qgc2VlIGEKPj4gPiB2ZXJzaW9uIGJ1
bXAgb3IgYW55IGNoYW5nZWxvZyBpbiB0aGlzIHNwYWNlLiAgUGxlYXNlIHJlLXN1Ym1pdCB3aXRo
Cj4+ID4gdGhlIGRpZmZlcmVuY2VzIG5vdGVkLgo+PiA+Cj4+Cj4+IHRoZSBjaGFuZ2UgaXMKPj4g
MS4gYWRkIG1pc3NpbmcgaW5jbHVkZSBmaWxlCj4+IDIuIG1vZGlmeSBjb21taXQgbWVzc2FnZQo+
Pgo+PiB0aGlzIHBhdGNoIGlzIHJlZ2FyZGVkIGFzIHZlcnNpb24gMQo+Cj4gSXQncyBkaWZmZXJl
bnQgdG8gdGhlIGZpcnN0IG9uZSB5b3Ugc2VudCB0byB0aGUgbGlzdCwgc28gaXQgbmVlZHMgYQo+
IHZlcnNpb24gYnVtcCBhbmQgYSBjaGFuZ2UgbG9nLiAgVGhlcmUgYWxzbyBhcHBlYXJzIHRvIHN0
aWxsIGJlIGlzc3Vlcwo+IHdpdGggaXQsIGlmIHRoZSBhdXRvLWJ1aWxkZXJzIGFyZSB0byBiZSBi
ZWxpZXZlZC4KPgo+IERvIGVuc3VyZSB5b3UgdGhvcm91Z2hseSB0ZXN0IHlvdXIgcGF0Y2hlcyBi
ZWZvcmUgc2VuZGluZyB1cHN0cmVhbS4KPgo+IFBsZWFzZSBmaXggdGhlIGlzc3VlcyBhbmQgcmVz
dWJtaXQgeW91ciB2MyB3aXRoIGEgbmljZSBjaGFuZ2Vsb2cuCj4KCnRoYW5rIHlvdSBmb3Igc3Vn
Z2VzdGlvbgptYXkgaSBhc2sgaG93IHRvIGRpc2FibGUga2J1aWxkIHRlc3QgcmVib290IGZvciBz
MzkwL3g4Nl82NC9pYTY0Pwp3ZSB3YW50IHN1cHBvcnQgb25seSBjcm9zcyBjb21waWxlciA9ICBh
YXJjaDY0LWxpbnV4LWdudS0KYW5kIHdlIGhhdmUgdGVzdCBidWlsZCBwYXNzIHdpdGggb3VyIHBh
dGNoCgo+PiA+ID4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMTIgKwo+
PiA+ID4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgICAgICAgICAgfCAgIDEgKwo+PiA+ID4g
IGRyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMgICAgICAgICAgfCA0NjMKPj4gPiA+ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gPiA+ICBpbmNsdWRlL2xpbnV4L21mZC9t
dDYzNjAtcHJpdmF0ZS5oIHwgMjc5ICsrKysrKysrKysrKysrKysrKysrKysKPj4gPiA+ICBpbmNs
dWRlL2xpbnV4L21mZC9tdDYzNjAuaCAgICAgICAgIHwgIDMzICsrKwo+PiA+ID4gIDUgZmlsZXMg
Y2hhbmdlZCwgNzg4IGluc2VydGlvbnMoKykKPj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9tZmQvbXQ2MzYwLWNvcmUuYwo+PiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRl
L2xpbnV4L21mZC9tdDYzNjAtcHJpdmF0ZS5oCj4+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGlu
Y2x1ZGUvbGludXgvbWZkL210NjM2MC5oCj4+ID4KPgo+IC0tCj4gTGVlIEpvbmVzIFvmnY7nkLzm
lq9dCj4gTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCj4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCj4gRm9sbG93IExpbmFybzogRmFjZWJvb2sg
fCBUd2l0dGVyIHwgQmxvZwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
