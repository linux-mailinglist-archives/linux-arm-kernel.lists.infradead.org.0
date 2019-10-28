Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2133BE6C5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 07:21:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+wvBM/P75pJUcjd/EJ37y5ebifpFoqZznq/ZbWqgKg=; b=W97VeB1ZuiiWJ+
	2G3eIvy2L5E7sqYsQZ5H3nj9x9gFmFPGUzD1owE9yuqb4/6g2r7ieeOnNX/O69wNoFaXTZlrLNhJd
	5xX4g0r6fcfZ9P6VaND2qR0nj5py9ea2dyrhUGv4HZqmaOx0AOKUkxaOjEgqLzRkQvQB27qJ6kfHv
	dG9dnFI9SMSLCaxxftYsXsBC5AxgFN2yqUVFKLueiui2EbcKF+Bmpq3oNRIdsHgrqDQil9zw8JC4z
	DTNySASYecH+sAZ0lorxBp9iIOrrgHfBGW7WTzrn6mqjPXTt61acW7hoymLuB9PUqO9+qIDxd351H
	TsPrSqylWEp5DYGldtyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOyOk-00030M-JM; Mon, 28 Oct 2019 06:21:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOyOX-0002zc-7S
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 06:20:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id s1so8544306wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 23:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=llIvbuQZkok97wxZ5YRzO3v5zhC8IGckqKQjrjYjIvg=;
 b=d3E9ue+06kHNnDqAASgZVQs/YYZm26QWcDV4BRilYMu3mXLeqlJpXcO7TsWL4VEC1B
 U5baMJLe2nuHQhhmLqbRt9G9bqGwExWe3GJQm0JQojFqw89YGNume05u6vLVAiVbqHmq
 KjSs5ceqISrnvxnkmEOQiEmR9LdMCwCjBV3D5cJFimAYkt8h0UOr7V+SNSG96E94rsX6
 SlzEeXtmT9EgMqfBmvrAW4Ye1p/YOsxT44Q6L9xcxzLjwIUItSlJZas4NdtrdjQA5Wbr
 PNVipujcRYKFhyq7c67FPQfhJAwY7evKX2BS9edqjjkYql8kEk0vU2zm6XNzOfrUY9so
 fVTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=llIvbuQZkok97wxZ5YRzO3v5zhC8IGckqKQjrjYjIvg=;
 b=qCALu31r7GRCUm3h7+GhuDrlsAq87mDisZFEjx2zbLvEW1uxPdtksY+C6AW5gBNQqF
 Z+B8MyEYhlHxxOz9EcfRGqNKJePqVABC+x68MTyyWZ/X/cMo68fLuirf9zcUemsaSp5C
 2mlM7sqxlNcULcz5eekVAmSVdkO/ydDFPl2DKqYF6b2VVBfS+dOMyDQPYCuApa0cor1g
 fvDVj5RcLctLSHM9Uxmb6m/51gETapwH/I1x4JTsBSS/yNbCTJlCAVqlzBomc/MXsqtN
 J75yjw+gpM7eV5hGKZYrqiQbECOft2Mv0+z1L6Yk42txDvV6FrjBXmErzbAbW5yng5G5
 VH1g==
X-Gm-Message-State: APjAAAXMrTrIHYGkHnJBTO4Vhv9rh8OUaR9eqk7SDZu6CRSwZEE22dJA
 AsiXuMnj8peSNQ4d3wIHe81xNRJKoxAGu9JDGVm2Pg==
X-Google-Smtp-Source: APXvYqye8DOAQTy1Hj4f6CRnt/bU9Z4QL9MThZazl8GIFUUj2m62vpBP4gdeyTTTWSk1fon9mHeW5jk5uMptdg4X/NM=
X-Received: by 2002:adf:8289:: with SMTP id 9mr14429527wrc.0.1572243647698;
 Sun, 27 Oct 2019 23:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
 <20191024132345.5236-25-ard.biesheuvel@linaro.org>
 <74d5c30d-d842-5bdb-ebb8-2aa47ffb5e8d@c-s.fr>
 <CAKv+Gu8V57Z2WixfYZSdT+rqsobqDYZ-Hyer6Aq9khUNeUsxmQ@mail.gmail.com>
 <be890dfd-a1aa-86e1-b1c7-99b72ad137d0@c-s.fr>
In-Reply-To: <be890dfd-a1aa-86e1-b1c7-99b72ad137d0@c-s.fr>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 28 Oct 2019 07:20:46 +0100
Message-ID: <CAKv+Gu98fsPOZ3reGs6wXd+hzNa_pdVZ6+XDFoXhey7C39sfFw@mail.gmail.com>
Subject: Re: [PATCH v2 24/27] crypto: talitos - switch to skcipher API
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_232049_270116_06DA8FCE 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyNyBPY3QgMjAxOSBhdCAxNDowNSwgQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3Bo
ZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+Cj4KPgo+IExlIDI3LzEwLzIwMTkgw6AgMTI6MDUsIEFy
ZCBCaWVzaGV1dmVsIGEgw6ljcml0IDoKPiA+IE9uIFN1biwgMjcgT2N0IDIwMTkgYXQgMTE6NDUs
IENocmlzdG9waGUgTGVyb3kgPGNocmlzdG9waGUubGVyb3lAYy1zLmZyPiB3cm90ZToKPiA+Pgo+
ID4+Cj4gPj4KPiA+PiBMZSAyNC8xMC8yMDE5IMOgIDE1OjIzLCBBcmQgQmllc2hldXZlbCBhIMOp
Y3JpdCA6Cj4gPj4+IENvbW1pdCA3YTdmZmU2NWM4YzUgKCJjcnlwdG86IHNrY2lwaGVyIC0gQWRk
IHRvcC1sZXZlbCBza2NpcGhlciBpbnRlcmZhY2UiKQo+ID4+PiBkYXRlZCAyMCBhdWd1c3QgMjAx
NSBpbnRyb2R1Y2VkIHRoZSBuZXcgc2tjaXBoZXIgQVBJIHdoaWNoIGlzIHN1cHBvc2VkIHRvCj4g
Pj4+IHJlcGxhY2UgYm90aCBibGtjaXBoZXIgYW5kIGFibGtjaXBoZXIuIFdoaWxlIGFsbCBjb25z
dW1lcnMgb2YgdGhlIEFQSSBoYXZlCj4gPj4+IGJlZW4gY29udmVydGVkIGxvbmcgYWdvLCBzb21l
IHByb2R1Y2VycyBvZiB0aGUgYWJsa2NpcGhlciByZW1haW4sIGZvcmNpbmcKPiA+Pj4gdXMgdG8g
a2VlcCB0aGUgYWJsa2NpcGhlciBzdXBwb3J0IHJvdXRpbmVzIGFsaXZlLCBhbG9uZyB3aXRoIHRo
ZSBtYXRjaGluZwo+ID4+PiBjb2RlIHRvIGV4cG9zZSBbYV1ibGtjaXBoZXJzIHZpYSB0aGUgc2tj
aXBoZXIgQVBJLgo+ID4+Pgo+ID4+PiBTbyBzd2l0Y2ggdGhpcyBkcml2ZXIgdG8gdGhlIHNrY2lw
aGVyIEFQSSwgYWxsb3dpbmcgdXMgdG8gZmluYWxseSBkcm9wIHRoZQo+ID4+PiBibGtjaXBoZXIg
Y29kZSBpbiB0aGUgbmVhciBmdXR1cmUuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IEFyZCBC
aWVzaGV1dmVsIDxhcmQuYmllc2hldXZlbEBsaW5hcm8ub3JnPgo+ID4+Cj4gPj4gV2l0aCB0aGlz
IHNlcmllcywgSSBnZXQgdGhlIGZvbGxvd2luZyBPb3BzIGF0IGJvb3Q6Cj4gPj4KPiA+Cj4gPiBU
aGFua3MgZm9yIHRoZSByZXBvcnQuCj4gPgo+ID4gR2l2ZW4gdGhhdCB0aGUgc2VyaWVzIG9ubHkg
bW9kaWZpZXMgYWJsa2NpcGhlciBpbXBsZW1lbnRhdGlvbnMsIGl0IGlzCj4gPiByYXRoZXIgY3Vy
aW91cyB0aGF0IHRoZSBjcmFzaCBvY2N1cnMgaW4gYWhhc2hfaW5pdCgpLiBDYW4geW91IGNvbmZp
cm0KPiA+IHRoYXQgdGhlIGNyYXNoIGRvZXMgbm90IG9jY3VyIHdpdGggdGhpcyBwYXRjaCByZXZl
cnRlZD8KPgo+IFllcyBJIGNvbmZpcm0uCj4KPiBZb3UgY2hhbmdlZCB0YWxpdG9zX2NyYV9pbml0
X2FoYXNoKCkuIHRhbGl0b3NfaW5pdF9jb21tb24oKSBpcyBub3QKPiBjYWxsZWQgYW55bW9yZS4g
SSB0aGluayB0aGF0J3MgdGhlIHJlYXNvbi4KPgoKVGhhbmtzIGEgbG90IGZvciBkaWdnaW5nIGlu
dG8gdGhpcwoKRG9lcyB0aGlzIGZpeCB0aGluZ3MgZm9yIHlvdT8KCmluZGV4IGMyOWY4YzAyZWEw
NS4uZDcxZDY1ODQ2ZTQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2NyeXB0by90YWxpdG9zLmMKKysr
IGIvZHJpdmVycy9jcnlwdG8vdGFsaXRvcy5jCkBAIC0zMDUzLDcgKzMwNTMsNyBAQCBzdGF0aWMg
aW50IHRhbGl0b3NfY3JhX2luaXRfYWhhc2goc3RydWN0IGNyeXB0b190Zm0gKnRmbSkKICAgICAg
ICBjcnlwdG9fYWhhc2hfc2V0X3JlcXNpemUoX19jcnlwdG9fYWhhc2hfY2FzdCh0Zm0pLAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplb2Yoc3RydWN0IHRhbGl0b3NfYWhhc2hf
cmVxX2N0eCkpOwoKLSAgICAgICByZXR1cm4gMDsKKyAgICAgICByZXR1cm4gdGFsaXRvc19pbml0
X2NvbW1vbihjdHgsIHRhbGl0b3NfYWxnKTsKIH0KCiBzdGF0aWMgdm9pZCB0YWxpdG9zX2NyYV9l
eGl0KHN0cnVjdCBjcnlwdG9fdGZtICp0Zm0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
