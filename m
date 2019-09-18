Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1D8B5E30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 09:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPZqoymK/m0Q6Tmf2iDCQZ3hXUfli4gzN4Rwt9ErJiE=; b=S0/6C5+HGR5ICe
	pylrJ6HMFDFVdGWHi+mLYE1ZAKOIPP2s20J/e4gvOWc7mU5hoK08zuLR996Bd0xu2K1mCC7eNw7L/
	NPv8peLs56zGmTFgC9sjwcaxSlrwnJgTIhlndpmYnsMQEMAtpcOHva2cVOWZopw/QpXIksLParGmt
	I79LqMLueOFE8BjaIFFXSA6LgJOkHX+RtArSKOHEyB3LpEoioBq+Z1P/RcSz17gmMmzXUMeu3ZSZe
	7TWDkbQVMuNVqq/4M2gMmwAA92UJs/+5k/2KW9VRhHbxtgCv/VQeoLS4LEDM0k1753pdso03uSGvE
	6MG1Y2EOQLZmB7vNkqBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUWH-0003cm-Qh; Wed, 18 Sep 2019 07:36:58 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUW4-0003cJ-7j
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 07:36:45 +0000
Received: by mail-oi1-x242.google.com with SMTP id k25so5114175oiw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 00:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SnfA/z7sYmS4p90KugFRDGYAqrClHJ5yHTUJ5IzMHDY=;
 b=0xf9mIzBD0QKbX2cTIovmV63drg+4bFZ2C0WEIGQX/8kD+lr9PORvLVtvWmqVnY2Hx
 uw6DicmbP6IePdEL+n95cmQOhIk9nc9GgRhtNYYJFFx8kR2SMvvfw+iR+wMyZPY2QiZM
 md2HIIXPM/RJGfNbpnUv1aW3b9YljxNxM2NMjyzQBN+kSUwhhZXHtxxKAStdhjx5QFD8
 3KvY9Szt5E08abh4wEt9bmoKmO/hkpkb7RvSD+/em/plmFxXU63xHCMO8Mr5AC43Sh/k
 ZcIkXW27Uor7Z0rF/d/YLluWqH4CrJj/sIPPcJOZIGn5/c/qjkI6XwbN6/QEUjRJmGoM
 qgBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SnfA/z7sYmS4p90KugFRDGYAqrClHJ5yHTUJ5IzMHDY=;
 b=sOXUbunM4ZS65Jys4kuoA40P11rveiMWTrqS9bd9xQiDoDxtfwYiH/qEZ6dPHjxUrr
 GNCOpaHwHF4+fiyay6AoQmzsoeD27AIsrxV7YvMcNWWe5LoS+kM9FCO/8aA0Wwd4wvtT
 toBb+cpxI4iLLPugs+PA/n/TYXtfqNYwqrjtf4DS9HxTzzqSy75Wd+FTfLZ1a4EvZjlT
 U5wvibt0zV3SE4Mv3SC1m+HnErOdYXYJ3kW8WXwbtwgoY8/trpMG8xZ0bzIAtYFiEp37
 pn4fq/ioxA1lI8obfR1thNnWOdExievUCB1qBqPfAmZRXicKNho57wude9vbKVx9YeLm
 IWQA==
X-Gm-Message-State: APjAAAX6qiHC1hOlyXGkq0tPuV4rXtnszM7N2qag7+fxYPKWveXMbc8R
 GBu+Jmn52ovmD/cmA0QcHY0Z65l5rnQ53Wrb+Jd+kw==
X-Google-Smtp-Source: APXvYqwMYiX7Vw6JmKe0Ol7MjxXPzGf9u9TbL2LZE7CKgVXuTc8ckQF2o5+GS64CpIQUfJoykEUEW8e0A9Ky5L8I4v8=
X-Received: by 2002:aca:ad09:: with SMTP id w9mr1346998oie.114.1568792202394; 
 Wed, 18 Sep 2019 00:36:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190916055817.43425-1-hui.song_1@nxp.com>
In-Reply-To: <20190916055817.43425-1-hui.song_1@nxp.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 18 Sep 2019 09:36:31 +0200
Message-ID: <CAMpxmJU6-nSCK0bVdJq_U9pKsWyVEE8G2G74Yyg_o2kyqnXhjw@mail.gmail.com>
Subject: Re: [PATCH v5] gpio/mpc8xxx: change irq handler from chained to normal
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_003644_277395_A894C234 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, linux-gpio <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgMTYgd3J6IDIwMTkgbyAwODowOCBIdWkgU29uZyA8aHVpLnNvbmdfMUBueHAuY29tPiBu
YXBpc2HFgihhKToKPgo+IEZyb206IFNvbmcgSHVpIDxodWkuc29uZ18xQG54cC5jb20+Cj4KPiBN
b3JlIHRoYW4gb25lIGdwaW8gY29udHJvbGxlcnMgY2FuIHNoYXJlIG9uZSBpbnRlcnJ1cHQsIGNo
YW5nZSB0aGUKPiBkcml2ZXIgdG8gcmVxdWVzdCBzaGFyZWQgaXJxLgo+Cj4gU2lnbmVkLW9mZi1i
eTogTGF1cmVudGl1IFR1ZG9yIDxMYXVyZW50aXUuVHVkb3JAbnhwLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBBbGV4IE1hcmdpbmVhbiA8YWxleGFuZHJ1Lm1hcmdpbmVhbkBueHAuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFNvbmcgSHVpIDxodWkuc29uZ18xQG54cC5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBp
biB2NToKPiAgICAgICAgIC0gYWRkIHRyYXZlcnNlIGV2ZXJ5IGJpdCBmdW5jdGlvbi4KPiBDaGFu
Z2VzIGluIHY0Ogo+ICAgICAgICAgLSBjb252ZXJ0ICdwcl9lcnInIHRvICdkZXZfZXJyJy4KPiBD
aGFuZ2VzIGluIHYzOgo+ICAgICAgICAgLSB1cGRhdGUgdGhlIHBhdGNoIGRlc2NyaXB0aW9uLgo+
IENoYW5nZXMgaW4gdjI6Cj4gICAgICAgICAtIGRlbGV0ZSB0aGUgY29tcGF0aWJsZSBvZiBsczEw
ODhhLgo+ICBkcml2ZXJzL2dwaW8vZ3Bpby1tcGM4eHh4LmMgfCAzMCArKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDExIGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLW1wYzh4eHguYyBi
L2RyaXZlcnMvZ3Bpby9ncGlvLW1wYzh4eHguYwo+IGluZGV4IDE2YTQ3ZGUuLjNhMDZjYTkgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tbXBjOHh4eC5jCj4gKysrIGIvZHJpdmVycy9n
cGlvL2dwaW8tbXBjOHh4eC5jCj4gQEAgLTIyLDYgKzIyLDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4
L2lycS5oPgo+ICAjaW5jbHVkZSA8bGludXgvZ3Bpby9kcml2ZXIuaD4KPiAgI2luY2x1ZGUgPGxp
bnV4L2JpdG9wcy5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4KPiAgI2RlZmlu
ZSBNUEM4WFhYX0dQSU9fUElOUyAgICAgIDMyCj4KPiBAQCAtMTI3LDIwICsxMjgsMjAgQEAgc3Rh
dGljIGludCBtcGM4eHh4X2dwaW9fdG9faXJxKHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25l
ZCBvZmZzZXQpCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRU5YSU87Cj4gIH0KPgo+IC1zdGF0
aWMgdm9pZCBtcGM4eHh4X2dwaW9faXJxX2Nhc2NhZGUoc3RydWN0IGlycV9kZXNjICpkZXNjKQo+
ICtzdGF0aWMgaXJxcmV0dXJuX3QgbXBjOHh4eF9ncGlvX2lycV9jYXNjYWRlKGludCBpcnEsIHZv
aWQgKmRhdGEpCj4gIHsKPiAtICAgICAgIHN0cnVjdCBtcGM4eHh4X2dwaW9fY2hpcCAqbXBjOHh4
eF9nYyA9IGlycV9kZXNjX2dldF9oYW5kbGVyX2RhdGEoZGVzYyk7Cj4gLSAgICAgICBzdHJ1Y3Qg
aXJxX2NoaXAgKmNoaXAgPSBpcnFfZGVzY19nZXRfY2hpcChkZXNjKTsKPiArICAgICAgIHN0cnVj
dCBtcGM4eHh4X2dwaW9fY2hpcCAqbXBjOHh4eF9nYyA9IChzdHJ1Y3QgbXBjOHh4eF9ncGlvX2No
aXAgKilkYXRhOwoKVGhlcmUncyBubyBuZWVkIHRvIGNhc3Qgdm9pZCBwb2ludGVycy4KCj4gICAg
ICAgICBzdHJ1Y3QgZ3Bpb19jaGlwICpnYyA9ICZtcGM4eHh4X2djLT5nYzsKPiAgICAgICAgIHVu
c2lnbmVkIGludCBtYXNrOwo+ICsgICAgICAgaW50IGk7Cj4KPiAgICAgICAgIG1hc2sgPSBnYy0+
cmVhZF9yZWcobXBjOHh4eF9nYy0+cmVncyArIEdQSU9fSUVSKQo+ICAgICAgICAgICAgICAgICAm
IGdjLT5yZWFkX3JlZyhtcGM4eHh4X2djLT5yZWdzICsgR1BJT19JTVIpOwo+IC0gICAgICAgaWYg
KG1hc2spCj4gKyAgICAgICBmb3JfZWFjaF9zZXRfYml0KGksICZtYXNrLCAzMikKPiAgICAgICAg
ICAgICAgICAgZ2VuZXJpY19oYW5kbGVfaXJxKGlycV9saW5lYXJfcmV2bWFwKG1wYzh4eHhfZ2Mt
PmlycSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDMyIC0gZmZzKG1hc2spKSk7Cj4gLSAgICAgICBpZiAoY2hpcC0+aXJxX2VvaSkKPiAtICAg
ICAgICAgICAgICAgY2hpcC0+aXJxX2VvaSgmZGVzYy0+aXJxX2RhdGEpOwo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMzEgLSBpKSk7Cj4gKwo+
ICsgICAgICAgcmV0dXJuIElSUV9IQU5ETEVEOwo+ICB9Cj4KPiAgc3RhdGljIHZvaWQgbXBjOHh4
eF9pcnFfdW5tYXNrKHN0cnVjdCBpcnFfZGF0YSAqZCkKPiBAQCAtMzg4LDggKzM4OSw4IEBAIHN0
YXRpYyBpbnQgbXBjOHh4eF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Cj4g
ICAgICAgICByZXQgPSBncGlvY2hpcF9hZGRfZGF0YShnYywgbXBjOHh4eF9nYyk7Cj4gICAgICAg
ICBpZiAocmV0KSB7Cj4gLSAgICAgICAgICAgICAgIHByX2VycigiJXBPRjogR1BJTyBjaGlwIHJl
Z2lzdHJhdGlvbiBmYWlsZWQgd2l0aCBzdGF0dXMgJWRcbiIsCj4gLSAgICAgICAgICAgICAgICAg
ICAgICBucCwgcmV0KTsKPiArICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiJXBP
RjogR1BJTyBjaGlwIHJlZ2lzdHJhdGlvbiBmYWlsZWQgd2l0aCBzdGF0dXMgJWRcbiIsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgbnAsIHJldCk7Cj4gICAgICAgICAgICAgICAgIGdvdG8gZXJy
Owo+ICAgICAgICAgfQo+Cj4gQEAgLTQwOSw4ICs0MTAsMTUgQEAgc3RhdGljIGludCBtcGM4eHh4
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICBpZiAoZGV2dHlw
ZS0+Z3Bpb19kaXJfaW5faW5pdCkKPiAgICAgICAgICAgICAgICAgZGV2dHlwZS0+Z3Bpb19kaXJf
aW5faW5pdChnYyk7Cj4KPiAtICAgICAgIGlycV9zZXRfY2hhaW5lZF9oYW5kbGVyX2FuZF9kYXRh
KG1wYzh4eHhfZ2MtPmlycW4sCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBtcGM4eHh4X2dwaW9faXJxX2Nhc2NhZGUsIG1wYzh4eHhfZ2MpOwo+ICsgICAgICAgcmV0
ID0gcmVxdWVzdF9pcnEobXBjOHh4eF9nYy0+aXJxbiwgbXBjOHh4eF9ncGlvX2lycV9jYXNjYWRl
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgSVJRRl9OT19USFJFQUQgfCBJUlFGX1NIQVJF
RCwgImdwaW8tY2FzY2FkZSIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICBtcGM4eHh4X2dj
KTsKCllvdSBuZXZlciBmcmVlIHRoaXMgaXJxLiBNYXliZSB1c2UgZGV2bV9yZXF1ZXN0X2lycSgp
PwoKQmFydAoKPiArICAgICAgIGlmIChyZXQpIHsKPiArICAgICAgICAgICAgICAgZGV2X2Vycigm
cGRldi0+ZGV2LCAiJXM6IGZhaWxlZCB0byByZXF1ZXN0X2lycSglZCksIHJldCA9ICVkXG4iLAo+
ICsgICAgICAgICAgICAgICAgICAgICAgIG5wLT5mdWxsX25hbWUsIG1wYzh4eHhfZ2MtPmlycW4s
IHJldCk7Cj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICsgICAgICAgfQo+ICsKPiAgICAg
ICAgIHJldHVybiAwOwo+ICBlcnI6Cj4gICAgICAgICBpb3VubWFwKG1wYzh4eHhfZ2MtPnJlZ3Mp
Owo+IC0tCj4gMi45LjUKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
