Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EF435D19
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpRvVINtHtxsZ+nsrQcPGBF2IicCNpbkcyhibiFHNoU=; b=ShNnbD0E0WljAq
	BrE/Q6qSs0qSkt5FFWktWmOrKcaxeerOqGis0qfJPGzvBAnwqAigwc3B1kUbbE1lOuLWkBICeE0ix
	PV23sUUPDAeyrlWGCdPrxmOpGE7lfBEeUz6ye1OM45uNO9q2fOPew3aJY8VS1HKgF1ZFJXbXKu16O
	yjgwJBielQm8PxjlydMMMeuZajrjCS8xAUdkBiiQWAK1ROp1SuHkRhjDQ/nJ7jSbNW6+8tvZHh6Qn
	l4J8f9S3YViLPKDcXiHqMvZQvRYDQny6oK8nmaqb0pV7bAw4M1qeXss8X+GyUPlq6rnagkSZsdK2t
	MdF6q7O6o29RXCk7IIsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVHG-0004lF-4p; Wed, 05 Jun 2019 12:44:26 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVH9-0004kT-A9
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:44:20 +0000
Received: by mail-yb1-xb43.google.com with SMTP id c5so3473569ybk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 05:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xi2EvDvX1o5a9FG2uTIFVqZhlEAgWZPRI+I6e9eKWDA=;
 b=Fv7/k7a9r4amkCrKI+VwwbKV67Pg6mruQZNeLTqihnSgQaggIJUtMx2rmAl7PlxGml
 2oi+ybtMM6nhyiSI/NAC2ikNhDm3JyvTAE0bdi1xoAraGXyIOKAeCWEw0kx9plShaYRu
 73rVdnZAwsTNw0ZRvAxgqjUnXIZlCozkOXdibujrNjp+Gp3G2WadNfhkTXtXKd/uJRRJ
 n6pM5OFFQ5CxiUlQA1nKorGAvXCzdE2ZD/bdQ4VzyST4XyV2Av0wV2g8rCKI1KYP4/hx
 kSTvIi37vF429N2y3Y9rNWMwKfj1MA2RhMoOaSexaLVUKGjvAv46Sx+HHcT1HHu19vnB
 UhwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xi2EvDvX1o5a9FG2uTIFVqZhlEAgWZPRI+I6e9eKWDA=;
 b=TuS/WCdpleURt7ug7dbUiUJOB878c9c0p+/rOhHAlKuPwfJIpz9tzDAniP1yPhkQ7U
 SdaJXj1nybsycR6wlqifugDb9Fc60C71H0Pm/7Jbhd4aCZVIxz9Xz6HkW7T3RhabuZKO
 9g8p1Hy3+uj+biTOrmUeFqfjp1+7mees4YEsk3RsWRkcTVfyO0uYToEsblX7VXqF3yKu
 38qJyerhMEr9Mz00eQ7OLsqjycouPMnneZaubD+vJ3O0b8Dbpo5qfcchijzqaKaHbH3+
 SM71HWtj07MQ3rlQI4XOowhqZWT1+dazWgfMvAU87eW+bymIlSrgSWRXqIX6u36VFXmK
 6PBg==
X-Gm-Message-State: APjAAAXQK6auIwiUaXgCSOrVDtYFGBGtT4Lvcnw2afJYapFvsE/GZyqO
 2lXurEamlC4IJgV4VDPpc9h/ScIWSOZtdYlSSP0=
X-Google-Smtp-Source: APXvYqyNydPnvstKf3mleSA1trFVpSWc/CJWb4PuLa9jX2KFdsZOVXxyiG1PQefvl++ce+LJ3J7EvkwU6iNd8X+t88g=
X-Received: by 2002:a25:9b47:: with SMTP id u7mr18656221ybo.396.1559738657457; 
 Wed, 05 Jun 2019 05:44:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190604162959.29199-1-peron.clem@gmail.com>
 <20190604162959.29199-5-peron.clem@gmail.com>
 <20190605095141.psrq6mhk63zto77s@flea>
In-Reply-To: <20190605095141.psrq6mhk63zto77s@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 5 Jun 2019 14:44:06 +0200
Message-ID: <CAJiuCceZa=WEiF8_LK+jDdiXOn1i8+z8Smr6YKCpo9_XftgueQ@mail.gmail.com>
Subject: Re: [PATCH v4 04/13] media: rc: sunxi: Add RXSTA bits definition
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_054419_372877_E2D28B59 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gV2VkLCA1IEp1biAyMDE5IGF0IDExOjUxLCBNYXhpbWUgUmlwYXJkIDxt
YXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgSnVuIDA0LCAyMDE5
IGF0IDA2OjI5OjUwUE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IFdlIGFyZSB1
c2luZyBSWElOVCBiaXRzIGRlZmluaXRpb24gd2hlbiBsb29raW5nIGF0IFJYU1RBIHJlZ2lzdGVy
Lgo+ID4KPiA+IFRoZXNlIGJpdHMgYXJlIGVxdWFsIGJ1dCBpdCdzIG5vdCByZWFsbHkgcHJvcGVy
Lgo+ID4KPiA+IEludHJvZHVjZSB0aGUgUlhTVEEgYml0cyBhbmQgdXNlIHRoZW0gdG8gaGF2ZSBj
b2hlcmVuY3kuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5j
bGVtQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMg
fCAxOCArKysrKysrKysrKystLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9y
Yy9zdW54aS1jaXIuYyBiL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKPiA+IGluZGV4IDA1
MDRlYmZjODMxZi4uNTcyYmQyMjU3ZDM1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9y
Yy9zdW54aS1jaXIuYwo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYwo+ID4g
QEAgLTQ4LDExICs0OCwxMSBAQAo+ID4KPiA+ICAvKiBSeCBJbnRlcnJ1cHQgRW5hYmxlICovCj4g
PiAgI2RlZmluZSBTVU5YSV9JUl9SWElOVF9SRUcgICAgMHgyQwo+ID4gLS8qIFJ4IEZJRk8gT3Zl
cmZsb3cgKi8KPiA+ICsvKiBSeCBGSUZPIE92ZXJmbG93IEludGVycnVwdCBFbmFibGUgKi8KPiA+
ICAjZGVmaW5lIFJFR19SWElOVF9ST0lfRU4gICAgICAgICAgICAgQklUKDApCj4gPiAtLyogUngg
UGFja2V0IEVuZCAqLwo+ID4gKy8qIFJ4IFBhY2tldCBFbmQgSW50ZXJydXB0IEVuYWJsZSAqLwo+
ID4gICNkZWZpbmUgUkVHX1JYSU5UX1JQRUlfRU4gICAgICAgICAgICBCSVQoMSkKPiA+IC0vKiBS
eCBGSUZPIERhdGEgQXZhaWxhYmxlICovCj4gPiArLyogUnggRklGTyBEYXRhIEF2YWlsYWJsZSBJ
bnRlcnJ1cHQgRW5hYmxlICovCj4gPiAgI2RlZmluZSBSRUdfUlhJTlRfUkFJX0VOICAgICAgICAg
ICAgIEJJVCg0KQo+ID4KPiA+ICAvKiBSeCBGSUZPIGF2YWlsYWJsZSBieXRlIGxldmVsICovCj4g
PiBAQCAtNjAsNiArNjAsMTIgQEAKPiA+Cj4gPiAgLyogUnggSW50ZXJydXB0IFN0YXR1cyAqLwo+
ID4gICNkZWZpbmUgU1VOWElfSVJfUlhTVEFfUkVHICAgIDB4MzAKPiA+ICsvKiBSeCBGSUZPIE92
ZXJmbG93ICovCj4gPiArI2RlZmluZSBSRUdfUlhTVEFfUk9JICAgICAgICAgICAgICAgICAgICAg
ICAgQklUKDApCj4gPiArLyogUnggUGFja2V0IEVuZCAqLwo+ID4gKyNkZWZpbmUgUkVHX1JYU1RB
X1JQRSAgICAgICAgICAgICAgICAgICAgICAgIEJJVCgxKQo+ID4gKy8qIFJ4IEZJRk8gRGF0YSBB
dmFpbGFibGUgKi8KPiA+ICsjZGVmaW5lIFJFR19SWFNUQV9SQSAgICAgICAgICAgICAgICAgQklU
KDQpCj4KPiBJJ20gZmluZSB3aXRoIGl0IG9uIHByaW5jaXBsZSwgYnV0IGlmIHRoZSBjb25zaXN0
ZW5jeSBuZWVkcyB0byBiZQo+IG1haW50YWluZWQgdGhlbiB3ZSBjb3VsZCBqdXN0IHJldXNlIHRo
ZSBhYm92ZSBkZWZpbmVzCgpUaGVyZSBpcyBubyBjb21tZW50IHdoeSB3ZSBjYW4gcmV1c2UgdGhl
bSwgdGhleSBjYW4gYWxzbyBiZSBzb21lIHdyb25nCmNhc2UgZm9yIGV4YW1wbGUgdGhlIFJYSU5U
X0RSUV9FTiBiaXQgaXMgbm90IHByZXNlbnQgaW4gUlhTVEEgYW5kIHNhbWUKZm9yIFNUQVQgYml0
IHByZXNlbnQgaW4gUlhTVEEgYW5kIG5vdCBwcmVzZW50IGluIFJYSU5ULgoKSSBoYXZlIGRpc2Nv
dmVyIGFuZCByZWFkIHRoaXMgY29kZSBhIG1vbnRoIGFnbyBhbmQgdGhpcyBsb2dpYyBpcwpyZWFs
bHkgbm90IG9idmlvdXMgbm9yIGV4cGxhaW4uCgpNYXliZSB0aGlzIGhhY2sgY291bGQgYmUgZG9u
ZSB3aGVuIHdlIHdpbGwgaW50cm9kdWNlIGEgcXVpcmtzLCBidXQgZm9yCnRoZSBtb21lbnQgSSBy
ZWFsbHkgdGhpbmsgdGhhdCBpdCdzIG1vcmUgcHJvcGVyIGFuZCByZWFkYWJsZSB0bwppbnRyb2R1
Y2UgdGhlbSBwcm9wZXJseS4KClJlZ2FyZHMsCkNsw6ltZW50Cgo+Cj4gTWF4aW1lCj4KPiAtLQo+
IE1heGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2lu
ZWVyaW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
