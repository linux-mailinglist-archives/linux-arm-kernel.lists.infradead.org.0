Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9F0345ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eyio5CB9KybtEjta+jm3sCHFLmsDXPC9HXEYp1aCh1g=; b=DPvXFtGLX/2xI/
	f72eh3li1L1oJYKPo/D7XLDx1RgQWdQhfDtIbk1aQ0J7i97bTdiu9prpKY28m1vtHq9bBsbgBl/jU
	tXm3KL6+eqVnTzIaz/ALI7gMiynUqKRoxvjf2lC9xwMkD71hn8oGqnAVTpy9Mn+dRQMQZpjXCpVxm
	jEgXNiowy6Ze4LVNQhxoJUKD2t8nuc5nE1BIRZ2aQoRHKRScW/JUrJ9MYbvI+3nalQ+DOaLAOhpnq
	CY8DhJROnvV4b+6i9uph/XoeUOWRLlA4KSneRoPQACLuqRIOxNJL0TXxk9fCDYrigzPWN6gzC/7kW
	8rPLlK6YpKlWgpm99D9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7yt-0003N7-Te; Tue, 04 Jun 2019 11:51:55 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7yl-0003E7-UE
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:51:49 +0000
Received: by mail-io1-xd42.google.com with SMTP id n5so17047186ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 04:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ctXpeCX0AxM4RYKUyVbwJ2R6UgJFQv3+Pa+PYtxVFHc=;
 b=pudC1KhsPV84ajbQA+BM423HpNSAO9/CMMGE4g+cWm4vUy8Q92eQFrK1crIuA0NARm
 1X5EpvW3ACzNVRVrUIFjwvyBNXz0f/Ye1kg8UXEjlQkQ3V85NXvolHfD7NlhWCfkwVVE
 Vad1BrtQ8WXf3qoa7bnfUcNEMFvWt4vFzk94l7alSEJfip58cmpVdw1cxTS6u/OgssF0
 pgvHVVXeHa78vCrMOFgwxx0fUdRnQ+uxzn4HyDw1QfMyMKdXKf0eFtIeDhvMCGwNEBOm
 V0eWECn1Mv2cBa5Rsz7S80PDycYsFZpl5ja3UbNqvg0F4SRbkhl9iEcMN3abzi+X7F3O
 GWTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ctXpeCX0AxM4RYKUyVbwJ2R6UgJFQv3+Pa+PYtxVFHc=;
 b=OeFN2S6sit9Xuq2ZYDQwH8NSpaK7TSdKd4iSf+g5iqbEukf/hoErUFxTqjIdY1DAfN
 ZkJaohDqT1oKqWvgKeVuwpnEG6kOwuW37fUcD7/XYy+iKcRUGnaJ5bcOWPDDfStR8DTT
 QzrYGQtPMylDk9x9N8KbHhsSpIcNJkLlES8lMt27woFaEZGG15AX1OLdnQdLG4+eBY5n
 5C0xHmZ6yLQTFtobUT7FcQHG9NFuHEjuyMK6IwQt1DAVHs/MblNvjPRmFTZUf2ogcbA7
 jlFOGA40bxg7dlHSRIxTEKyjofi8GAaxVztDzvNNNKhZDv4WoA1ME/O7Nk86MC3WWvRq
 Kchw==
X-Gm-Message-State: APjAAAWRZ6RGhlwBt4Z33oIQzrCbthOc2toFvinxpHvJ971MNEvO3Ld1
 9zdK4qgYoZ9nwoJ2XDDHp3/copdKxbU6UnSSRR/GA5S7dr4=
X-Google-Smtp-Source: APXvYqy28dC4lXHjCwWvlgyer2cB3l7b3MWFgaWtoSf+BcR86Y/zlrZtuIUUtRPoqnNwbzPXBRrADoj843+wlXe5gqI=
X-Received: by 2002:a5e:a712:: with SMTP id b18mr18407846iod.220.1559649106700; 
 Tue, 04 Jun 2019 04:51:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190531224333.3335-1-linus.walleij@linaro.org>
In-Reply-To: <20190531224333.3335-1-linus.walleij@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 4 Jun 2019 13:51:35 +0200
Message-ID: <CAMRc=Mf8G-5F978VvrO+47REdHYGfyME-mQp_f3F7wDrvbWoLg@mail.gmail.com>
Subject: Re: [PATCH] ARM: davinci: Use GPIO lookup table for DA850 LEDs
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_045148_015488_5087777B 
X-CRM114-Status: GOOD (  21.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sekhar Nori <nsekhar@ti.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

c29iLiwgMSBjemUgMjAxOSBvIDAwOjQzIExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGlu
YXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4KPiBUaGlzIHN3aXRjaGVzIHRoZSBEQTg1MCBib2FyZCB0
byB1c2UgYSBHUElPIGxvb2t1cCB0YWJsZSB0bwo+IGxvb2sgdXAgdGhlIEdQSU8gTEVEcy4gVGhh
bmtzIHRvIHRoZSBvZmZzZXQgaGFuZGxpbmcgd2hlbgo+IHdlIGRlZmluZSBHUElPcyBhcyBhbiBv
ZmZzZXQgaW50byB0aGUgY2hpcCwgd2UgY2FuIGRyb3AKPiBzb21lIGNvbXBsZXggY29kZS4KPgo+
IFNpZ25lZC1vZmYtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4K
PiAtLS0KPiBTZWtoYXIsIEJhcnRvc3o6IEkgaGFkIHRoaXMgcGF0Y2ggc2l0dGluZyBhcm91bmQg
aW4gbXkKPiB0cmVlLCBjYW4gYW55IG9mIHlvdSB0ZXN0IGl0IGFuZC9vciBhcHBseSBpdD8gVGhl
Cj4gcHJlcmVxdWlzaXRlIHBhdGNoIG5hbWluZyB0aGUgR1BJTyBleHBhbmRlciBwcm9wZXJseQo+
IGFmdGVyIC5kZXZfbmFtZSB3YXMgY29tbWl0ZWQgYSB3aGlsZSBiYWNrLgo+IC0tLQo+ICBhcmNo
L2FybS9tYWNoLWRhdmluY2kvYm9hcmQtZGE4NTAtZXZtLmMgfCA0MyArKysrKysrKysrKysrLS0t
LS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWRhdmluY2kvYm9hcmQtZGE4NTAt
ZXZtLmMgYi9hcmNoL2FybS9tYWNoLWRhdmluY2kvYm9hcmQtZGE4NTAtZXZtLmMKPiBpbmRleCA0
ZWU2NWE4YTNiODAuLmFjZjMwMTNmNGFlNSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLWRh
dmluY2kvYm9hcmQtZGE4NTAtZXZtLmMKPiArKysgYi9hcmNoL2FybS9tYWNoLWRhdmluY2kvYm9h
cmQtZGE4NTAtZXZtLmMKPiBAQCAtNjMxLDEzICs2MzEsMTIgQEAgc3RhdGljIHZvaWQgZGE4NTBf
ZXZtX2JiX2tleXNfaW5pdCh1bnNpZ25lZCBncGlvKQo+ICAgICAgICAgfQo+ICB9Cj4KPiAtI2Rl
ZmluZSBEQTg1MF9OX0JCX1VTRVJfTEVEICAgIDIKPiAtCj4gIHN0YXRpYyBzdHJ1Y3QgZ3Bpb19s
ZWQgZGE4NTBfZXZtX2JiX2xlZHNbXSA9IHsKPiAtICAgICAgIFswIC4uLiBEQTg1MF9OX0JCX1VT
RVJfTEVEIC0gMV0gPSB7Cj4gLSAgICAgICAgICAgICAgIC5hY3RpdmVfbG93ID0gMSwKPiAtICAg
ICAgICAgICAgICAgLmdwaW8gPSAtMSwgLyogYXNzaWduZWQgYXQgcnVudGltZSAqLwo+IC0gICAg
ICAgICAgICAgICAubmFtZSA9IE5VTEwsIC8qIGFzc2lnbmVkIGF0IHJ1bnRpbWUgKi8KPiArICAg
ICAgIHsKPiArICAgICAgICAgICAgICAgLm5hbWUgPSAidXNlcl9sZWQyIiwKPiArICAgICAgIH0s
Cj4gKyAgICAgICB7Cj4gKyAgICAgICAgICAgICAgIC5uYW1lID0gInVzZXJfbGVkMSIsCj4gICAg
ICAgICB9LAo+ICB9Owo+Cj4gQEAgLTY0Niw2ICs2NDUsMjAgQEAgc3RhdGljIHN0cnVjdCBncGlv
X2xlZF9wbGF0Zm9ybV9kYXRhIGRhODUwX2V2bV9iYl9sZWRzX3BkYXRhID0gewo+ICAgICAgICAg
Lm51bV9sZWRzID0gQVJSQVlfU0laRShkYTg1MF9ldm1fYmJfbGVkcyksCj4gIH07Cj4KPiArc3Rh
dGljIHN0cnVjdCBncGlvZF9sb29rdXBfdGFibGUgZGE4NTBfZXZtX2JiX2xlZHNfZ3Bpb190YWJs
ZSA9IHsKPiArICAgICAgIC5kZXZfaWQgPSAibGVkcy1ncGlvIiwKPiArICAgICAgIC50YWJsZSA9
IHsKPiArICAgICAgICAgICAgICAgR1BJT19MT09LVVBfSURYKCJpMmMtYmItZXhwYW5kZXIiLAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgREE4NTBfRVZNX0JCX0VYUF9VU0VSX0xF
RDIsIE5VTEwsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLCBHUElPX0FDVElW
RV9MT1cpLAo+ICsgICAgICAgICAgICAgICBHUElPX0xPT0tVUF9JRFgoImkyYy1iYi1leHBhbmRl
ciIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEQTg1MF9FVk1fQkJfRVhQX1VT
RVJfTEVEMiArIDEsIE5VTEwsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxLCBH
UElPX0FDVElWRV9MT1cpLAo+ICsKPiArICAgICAgICAgICAgICAgeyB9LAo+ICsgICAgICAgfSwK
PiArfTsKPiArCj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlIGRhODUwX2V2bV9iYl9s
ZWRzX2RldmljZSA9IHsKPiAgICAgICAgIC5uYW1lICAgICAgICAgICA9ICJsZWRzLWdwaW8iLAo+
ICAgICAgICAgLmlkICAgICAgICAgICAgID0gLTEsCj4gQEAgLTY1NCwyMCArNjY3LDYgQEAgc3Rh
dGljIHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgZGE4NTBfZXZtX2JiX2xlZHNfZGV2aWNlID0gewo+
ICAgICAgICAgfQo+ICB9Owo+Cj4gLXN0YXRpYyB2b2lkIGRhODUwX2V2bV9iYl9sZWRzX2luaXQo
dW5zaWduZWQgZ3BpbykKPiAtewo+IC0gICAgICAgaW50IGk7Cj4gLSAgICAgICBzdHJ1Y3QgZ3Bp
b19sZWQgKmxlZDsKPiAtCj4gLSAgICAgICBmb3IgKGkgPSAwOyBpIDwgREE4NTBfTl9CQl9VU0VS
X0xFRDsgaSsrKSB7Cj4gLSAgICAgICAgICAgICAgIGxlZCA9ICZkYTg1MF9ldm1fYmJfbGVkc1tp
XTsKPiAtCj4gLSAgICAgICAgICAgICAgIGxlZC0+Z3BpbyA9IGdwaW8gKyBEQTg1MF9FVk1fQkJf
RVhQX1VTRVJfTEVEMiArIGk7Cj4gLSAgICAgICAgICAgICAgIGxlZC0+bmFtZSA9Cj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgZGE4NTBfZXZtX2JiX2V4cFtEQTg1MF9FVk1fQkJfRVhQX1VTRVJf
TEVEMiArIGldOwo+IC0gICAgICAgfQo+IC19Cj4gLQo+ICBzdGF0aWMgaW50IGRhODUwX2V2bV9i
Yl9leHBhbmRlcl9zZXR1cChzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGdwaW8sIHVuc2ln
bmVkIG5ncGlvLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHZvaWQgKmMpCj4gQEAgLTY4NSw3ICs2ODQsNyBAQCBzdGF0aWMgaW50IGRhODUwX2V2bV9i
Yl9leHBhbmRlcl9zZXR1cChzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAo+ICAgICAgICAgICAg
ICAgICBnb3RvIGlvX2V4cF9zZXR1cF9zd19mYWlsOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICBk
YTg1MF9ldm1fYmJfbGVkc19pbml0KGdwaW8pOwo+ICsgICAgICAgZ3Bpb2RfYWRkX2xvb2t1cF90
YWJsZSgmZGE4NTBfZXZtX2JiX2xlZHNfZ3Bpb190YWJsZSk7Cj4gICAgICAgICByZXQgPSBwbGF0
Zm9ybV9kZXZpY2VfcmVnaXN0ZXIoJmRhODUwX2V2bV9iYl9sZWRzX2RldmljZSk7Cj4gICAgICAg
ICBpZiAocmV0KSB7Cj4gICAgICAgICAgICAgICAgIHByX3dhcm4oIkNvdWxkIG5vdCByZWdpc3Rl
ciBiYXNlYm9hcmQgR1BJTyBleHBhbmRlciBMRURzIik7Cj4gQEAgLTcyOSwxMCArNzI4LDEyIEBA
IHN0YXRpYyBzdHJ1Y3QgaTJjX2JvYXJkX2luZm8gX19pbml0ZGF0YSBkYTg1MF9ldm1faTJjX2Rl
dmljZXNbXSA9IHsKPiAgICAgICAgIH0sCj4gICAgICAgICB7Cj4gICAgICAgICAgICAgICAgIEky
Q19CT0FSRF9JTkZPKCJ0Y2E2NDE2IiwgMHgyMCksCj4gKyAgICAgICAgICAgICAgIC5kZXZfbmFt
ZSA9ICJ1aS1leHBhbmRlciIsCj4gICAgICAgICAgICAgICAgIC5wbGF0Zm9ybV9kYXRhID0gJmRh
ODUwX2V2bV91aV9leHBhbmRlcl9pbmZvLAo+ICAgICAgICAgfSwKPiAgICAgICAgIHsKPiAgICAg
ICAgICAgICAgICAgSTJDX0JPQVJEX0lORk8oInRjYTY0MTYiLCAweDIxKSwKPiArICAgICAgICAg
ICAgICAgLmRldl9uYW1lID0gImJiLWV4cGFuZGVyIiwKPiAgICAgICAgICAgICAgICAgLnBsYXRm
b3JtX2RhdGEgPSAmZGE4NTBfZXZtX2JiX2V4cGFuZGVyX2luZm8sCj4gICAgICAgICB9LAo+ICB9
Owo+IC0tCj4gMi4yMC4xCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCkhpIExpbnVzLAoKdGhpcyBleHBhbmRl
ciBmYWlscyB0byBwcm9iZSBvbiBkYTg1MC1ldm0gaW4gY3VycmVudCBtYWlubGluZToKCnBjYTk1
M3ggMS0wMDIxOiBpbmNvbXBsZXRlIGNvbnN0cmFpbnRzLCBkdW1teSBzdXBwbGllcyBub3QgYWxs
b3dlZApwY2E5NTN4IDEtMDAyMTogcmVnIGdldCBlcnI6IC0xOQoKSSdtIG5vdCBzdXJlIGhvdyBs
b25nIGl0J3MgYmVlbiB0aGlzIHdheSBidXQgaXQgc2hvdWxkIGJlIGVhc3kgdG8gZml4LgpVbmZv
cnR1bmF0ZWx5IEknbSB2ZXJ5IGJ1c3kgdGhpcyB3ZWVrIGFuZCBsZWF2aW5nIG9uIHZhY2F0aW9u
IGZvciB0aGUKbmV4dCB0d28gd2Vla3MsIHNvIHRoaXMgaGFzIHRvIHdhaXQgb24gbXkgc2lkZS4K
CkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
