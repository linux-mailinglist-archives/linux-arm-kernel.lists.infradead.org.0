Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77104E6FCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 11:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHUxeFvI6TQkPiPuXNtdwg0Jqr+f3ktjk4Qlp+t2CSQ=; b=SVTbHxbgk1ZbGV
	ItoFCfNlHGhAuUCIezLesgMDf0FX8IaMlnsKBmXSCV8xD2OgIAoRoKi8UHMK0PabNfbX/ajsiv0tb
	HIMrR4rRUV/5BU8JdvYlOCpQvbMV/PIbrenMLbYXjR24Rqa9IxXQbSx17dfCS8ar5Vg+Rgv1uSdRk
	7fLQZGBEobD2a3icJpT9Dk5z+FzMXXbmllkNPqQSngNB32TRYcI4LQXwiyL/vPIj022NVPRjSt4TF
	iewHGF4+h1NhNejMR0szUaS/XpUXHjmBV2JYmZXIyJUhyogGrJomH2wRwgJIFxodDJNMbO/5v41/k
	QZVIToE1MYhix+Q48yWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2Rf-0003F5-N8; Mon, 28 Oct 2019 10:40:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2RW-0003DV-ED
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 10:40:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id 11so8882194wmk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 03:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Wr2jB851O+Opabs2ncsRBVcciUPBCA3lrlYshLldd9k=;
 b=s34NV/eBsfrsmnM8gawO9IncDU29TJ/OixXrJIVh9DoAAwbw19pfRB7a3xNHY2dpvH
 XaA9sRueiyAR9tinh2M/ifZZIt8RW4da5AFBDID0yLqznNVe5UVq6CuZ/brLO/wSyf/k
 6WRV7+tm7FrTPVSujilPRL0E+PIQT7X+QyVw5C2PB/V1WBcutFYAHcQURajbhvHrraJq
 uDlLW3jpzA9CCh50ITWucj/GTGPrCLiQwdpvCRTUWDzNezlcQaW2M9C7k3k4LlbXdI0C
 8WNFQciSk+YcaJSlM3IPAOdP+vkvtgCXO/uU/OD88aT8RC1lq0sI60ux3k6c3RFeByRz
 58vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Wr2jB851O+Opabs2ncsRBVcciUPBCA3lrlYshLldd9k=;
 b=IwIj+UU1IHfHjT8wzOWEyEquu+JgMnjc2fJ+/G4tnkQ9MYBvD8O/OvDOSB5qu4lPr1
 ioJe3FeMp2E18iMY+9WFSqwoZeIoiiRvayh71wJLX25T2sXR/H8h0ulLirpcaVaRhaKV
 D7ykrrF2cCXyHYm6KeiJrHz0AQTtaRUk6LG6m32/Iqjmf9XZpNSGmQmDi204EEgmQgWP
 x47b//R8zjlYDxO9Jq1KoZkBB+WlvbnFo2ECimCdEVa0cR7IdaswHRsUbPdHjwqozaA0
 9Bx5yjstv+JNdTxKbaTSh6ePzfZWIrmBiSh1zP+f+8fqQx8qkIfEzO5NigonkSzo4rlJ
 LxKg==
X-Gm-Message-State: APjAAAUxpEr7qic7qIo3u2ywCwwImLID4Ynsk4dfTHPWjVf0WYaVUY9d
 mJIM88ajHkr2vQx1YOqisI6KV5MUTajLKLMP7obvcg==
X-Google-Smtp-Source: APXvYqwVH/fSKEI9S8WWgBlBjFIJOCDGaL3B4OioYYnEABa3hVfQzfE+jwprVk0jomziwhcZsLU1d89FsuBk7OXUeSE=
X-Received: by 2002:a1c:64d6:: with SMTP id
 y205mr14021992wmb.136.1572259208307; 
 Mon, 28 Oct 2019 03:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
 <20191024132345.5236-25-ard.biesheuvel@linaro.org>
 <74d5c30d-d842-5bdb-ebb8-2aa47ffb5e8d@c-s.fr>
 <CAKv+Gu8V57Z2WixfYZSdT+rqsobqDYZ-Hyer6Aq9khUNeUsxmQ@mail.gmail.com>
 <be890dfd-a1aa-86e1-b1c7-99b72ad137d0@c-s.fr>
 <CAKv+Gu98fsPOZ3reGs6wXd+hzNa_pdVZ6+XDFoXhey7C39sfFw@mail.gmail.com>
 <63c941df-ae15-733f-3b0b-35fc0ce6af51@c-s.fr>
In-Reply-To: <63c941df-ae15-733f-3b0b-35fc0ce6af51@c-s.fr>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 28 Oct 2019 11:39:57 +0100
Message-ID: <CAKv+Gu9G5LxE3UCV0TizkucXWsGGn78crPxTDBRJFQuaqN0wPw@mail.gmail.com>
Subject: Re: [PATCH v2 24/27] crypto: talitos - switch to skcipher API
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_034010_491940_8A634ADB 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gTW9uLCAyOCBPY3QgMjAxOSBhdCAxMTozNiwgQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3Bo
ZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+Cj4KPgo+IExlIDI4LzEwLzIwMTkgw6AgMDc6MjAsIEFy
ZCBCaWVzaGV1dmVsIGEgw6ljcml0IDoKPiA+IE9uIFN1biwgMjcgT2N0IDIwMTkgYXQgMTQ6MDUs
IENocmlzdG9waGUgTGVyb3kgPGNocmlzdG9waGUubGVyb3lAYy1zLmZyPiB3cm90ZToKPiA+Pgo+
ID4+Cj4gPj4KPiA+PiBMZSAyNy8xMC8yMDE5IMOgIDEyOjA1LCBBcmQgQmllc2hldXZlbCBhIMOp
Y3JpdCA6Cj4gPj4+IE9uIFN1biwgMjcgT2N0IDIwMTkgYXQgMTE6NDUsIENocmlzdG9waGUgTGVy
b3kgPGNocmlzdG9waGUubGVyb3lAYy1zLmZyPiB3cm90ZToKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4K
PiA+Pj4+IExlIDI0LzEwLzIwMTkgw6AgMTU6MjMsIEFyZCBCaWVzaGV1dmVsIGEgw6ljcml0IDoK
PiA+Pj4+PiBDb21taXQgN2E3ZmZlNjVjOGM1ICgiY3J5cHRvOiBza2NpcGhlciAtIEFkZCB0b3At
bGV2ZWwgc2tjaXBoZXIgaW50ZXJmYWNlIikKPiA+Pj4+PiBkYXRlZCAyMCBhdWd1c3QgMjAxNSBp
bnRyb2R1Y2VkIHRoZSBuZXcgc2tjaXBoZXIgQVBJIHdoaWNoIGlzIHN1cHBvc2VkIHRvCj4gPj4+
Pj4gcmVwbGFjZSBib3RoIGJsa2NpcGhlciBhbmQgYWJsa2NpcGhlci4gV2hpbGUgYWxsIGNvbnN1
bWVycyBvZiB0aGUgQVBJIGhhdmUKPiA+Pj4+PiBiZWVuIGNvbnZlcnRlZCBsb25nIGFnbywgc29t
ZSBwcm9kdWNlcnMgb2YgdGhlIGFibGtjaXBoZXIgcmVtYWluLCBmb3JjaW5nCj4gPj4+Pj4gdXMg
dG8ga2VlcCB0aGUgYWJsa2NpcGhlciBzdXBwb3J0IHJvdXRpbmVzIGFsaXZlLCBhbG9uZyB3aXRo
IHRoZSBtYXRjaGluZwo+ID4+Pj4+IGNvZGUgdG8gZXhwb3NlIFthXWJsa2NpcGhlcnMgdmlhIHRo
ZSBza2NpcGhlciBBUEkuCj4gPj4+Pj4KPiA+Pj4+PiBTbyBzd2l0Y2ggdGhpcyBkcml2ZXIgdG8g
dGhlIHNrY2lwaGVyIEFQSSwgYWxsb3dpbmcgdXMgdG8gZmluYWxseSBkcm9wIHRoZQo+ID4+Pj4+
IGJsa2NpcGhlciBjb2RlIGluIHRoZSBuZWFyIGZ1dHVyZS4KPiA+Pj4+Pgo+ID4+Pj4+IFNpZ25l
ZC1vZmYtYnk6IEFyZCBCaWVzaGV1dmVsIDxhcmQuYmllc2hldXZlbEBsaW5hcm8ub3JnPgo+ID4+
Pj4KPiA+Pj4+IFdpdGggdGhpcyBzZXJpZXMsIEkgZ2V0IHRoZSBmb2xsb3dpbmcgT29wcyBhdCBi
b290Ogo+ID4+Pj4KPiA+Pj4KPiA+Pj4gVGhhbmtzIGZvciB0aGUgcmVwb3J0Lgo+ID4+Pgo+ID4+
PiBHaXZlbiB0aGF0IHRoZSBzZXJpZXMgb25seSBtb2RpZmllcyBhYmxrY2lwaGVyIGltcGxlbWVu
dGF0aW9ucywgaXQgaXMKPiA+Pj4gcmF0aGVyIGN1cmlvdXMgdGhhdCB0aGUgY3Jhc2ggb2NjdXJz
IGluIGFoYXNoX2luaXQoKS4gQ2FuIHlvdSBjb25maXJtCj4gPj4+IHRoYXQgdGhlIGNyYXNoIGRv
ZXMgbm90IG9jY3VyIHdpdGggdGhpcyBwYXRjaCByZXZlcnRlZD8KPiA+Pgo+ID4+IFllcyBJIGNv
bmZpcm0uCj4gPj4KPiA+PiBZb3UgY2hhbmdlZCB0YWxpdG9zX2NyYV9pbml0X2FoYXNoKCkuIHRh
bGl0b3NfaW5pdF9jb21tb24oKSBpcyBub3QKPiA+PiBjYWxsZWQgYW55bW9yZS4gSSB0aGluayB0
aGF0J3MgdGhlIHJlYXNvbi4KPiA+Pgo+ID4KPiA+IFRoYW5rcyBhIGxvdCBmb3IgZGlnZ2luZyBp
bnRvIHRoaXMKPiA+Cj4gPiBEb2VzIHRoaXMgZml4IHRoaW5ncyBmb3IgeW91Pwo+Cj4gWWVzIGl0
IGRvZXMuCj4gVGhhbmtzLgo+IENocmlzdG9waGUKPgoKVGhhbmtzIGEgbG90IGZvciBjb25maXJt
aW5nLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
