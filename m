Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F606D7346
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 12:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7a+YMCyKcF4K+khrRxSlzj/+c06wM8+I59NpuKePTEM=; b=MRelxY1lN6Eo9Q
	Pyn5+15u1TMQXzCXp+2chvaUmYKT/WnF+lNXqUAl8O7mhEq+oQm5NwH6Hm9/iVCkhGt1mD72Ivk/0
	4XfYyJ51jBn8lLfUclrh0MMJUSwOBSGy/2K+pyR4kLFxNbVtmcDePs7B4io9l3dBMg5/zuZzPABpt
	t02Ap8mRC2U5w/PK3W1P1yiyvHe3GgBCGDXtneEQTkUBiKgPk8UNMG5YfizeSbzlr4w1mmQpqQYjc
	jhehynWTVakqr4UyNxRIB2hpVhmu0BjaHbHS0XK1Tlarl9uAGTuZQvMRNIvXxgnpZozufqJfF2CW5
	bik7C/rdo192mnNFfvIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKK7M-00070J-Oq; Tue, 15 Oct 2019 10:31:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKK7D-0006zq-HR
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 10:31:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id b24so19688974wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 03:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NyesQWTuvXO6kEAohzVxND+5nW0ZsL+t3l5nme1Rsn0=;
 b=OhSbn61m0jwUeoM2Gbtb8R350ZOWMXmrO8gesaATTj3rlHsl7HvG2SpwjW50lSEiBJ
 zt7g5hu0MbBC9PEdNN90xjkKR5C3i1ggatfNeTzAAVjntlp5dSLpCkAUQMqg0Q+lA1ix
 NrNbGvlFiTzv8S8RHToxrG/W/8mKaRdb6DHgQNNcorTlYIBQspVRq8QwiNYR93rsaqCT
 S9o5aXMHvOL7eiOWNnL78IDx4CTMWTrAbk0x73A+90DHlJI2BKha/1U0eLo6WftgWS1C
 Zvja1fgaH27eAByigY+5Xm71MFLBXwmk8I6VSmrXS8XpjeTFsErTqquR3YbubMh7tR5O
 7RGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NyesQWTuvXO6kEAohzVxND+5nW0ZsL+t3l5nme1Rsn0=;
 b=hzdIvsaeQ0EigY86XbK2Iuqo/noQY/g5rfBwxIhBEi4FLyzNvvbTAogf+rq8DnkKPn
 kucEjHme9Q2XAFtS0ub9uhXHBLEPXcr8um2ztJxt2GYHKI0a10kq94+9Yn0ZAWBcxTHj
 tzP8nO4MGOuHahG4YuOIaRvYD/Aa2CrV6xdNBtS1mgG33cCIH7PPNN++4ZkeBvKp3wzc
 iiG8htaxWYJZVkFc57BBWCxUtLzv76NyAc8vFRzn+4uPJI9VvT9aqsVeFGSXaSNpBFQ2
 MjueKzGp0Zm9AsVGkzcGrjkhtnqV+nWaI9PdpxykRSfsO93dCNQftY00Te1JlnWnVWUL
 yLDA==
X-Gm-Message-State: APjAAAVjg4cYrih0XcNlFJjtOyXZBTiVckd6GEGCyTbf49qZyzJoxKYC
 AkgkuxbX5OSsJB2h0MChbQ4lLsEB+JNE6s1V4ACHiA==
X-Google-Smtp-Source: APXvYqwK8OH6ITdP8Q0rR5rvn0rGj0Xy6S+TZjr6jM71xBorVP8lcKUWlmOcxNuRU2ut7HUSNRPf7f05SmvXO5g7uEw=
X-Received: by 2002:a1c:a9c5:: with SMTP id s188mr17099745wme.61.1571135502001; 
 Tue, 15 Oct 2019 03:31:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-9-ard.biesheuvel@linaro.org>
 <2e544398-5407-430c-84b6-3f946f5dea0c@microchip.com>
In-Reply-To: <2e544398-5407-430c-84b6-3f946f5dea0c@microchip.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 15 Oct 2019 12:31:31 +0200
Message-ID: <CAKv+Gu_OueNR9ecHrqx5ROG9Pvvci69myASAW6kmj=KNuK26hQ@mail.gmail.com>
Subject: Re: [PATCH 08/25] crypto: atmel-aes - switch to skcipher API
To: Tudor-Dan Ambarus <Tudor.Ambarus@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_033143_585174_F22479ED 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Ludovic Desroches <Ludovic.Desroches@microchip.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxNSBPY3QgMjAxOSBhdCAxMjoxNywgPFR1ZG9yLkFtYmFydXNAbWljcm9jaGlwLmNv
bT4gd3JvdGU6Cj4KPiBIaSwgQXJkLAo+Cj4gVGhhbmtzIGZvciB3b3JraW5nIG9uIHRoaXMuCj4K
PiBPbiAxMC8xNC8yMDE5IDAzOjE4IFBNLCBBcmQgQmllc2hldXZlbCB3cm90ZToKPiA+IENvbW1p
dCA3YTdmZmU2NWM4YzUgKCJjcnlwdG86IHNrY2lwaGVyIC0gQWRkIHRvcC1sZXZlbCBza2NpcGhl
ciBpbnRlcmZhY2UiKQo+ID4gZGF0ZWQgMjAgYXVndXN0IDIwMTUgaW50cm9kdWNlZCB0aGUgbmV3
IHNrY2lwaGVyIEFQSSB3aGljaCBpcyBzdXBwb3NlZCB0bwo+ID4gcmVwbGFjZSBib3RoIGJsa2Np
cGhlciBhbmQgYWJsa2NpcGhlci4gV2hpbGUgYWxsIGNvbnN1bWVycyBvZiB0aGUgQVBJIGhhdmUK
PiA+IGJlZW4gY29udmVydGVkIGxvbmcgYWdvLCBzb21lIHByb2R1Y2VycyBvZiB0aGUgYWJsa2Np
cGhlciByZW1haW4sIGZvcmNpbmcKPiA+IHVzIHRvIGtlZXAgdGhlIGFibGtjaXBoZXIgc3VwcG9y
dCByb3V0aW5lcyBhbGl2ZSwgYWxvbmcgd2l0aCB0aGUgbWF0Y2hpbmcKPiA+IGNvZGUgdG8gZXhw
b3NlIFthXWJsa2NpcGhlcnMgdmlhIHRoZSBza2NpcGhlciBBUEkuCj4gPgo+ID4gU28gc3dpdGNo
IHRoaXMgZHJpdmVyIHRvIHRoZSBza2NpcGhlciBBUEksIGFsbG93aW5nIHVzIHRvIGZpbmFsbHkg
ZHJvcCB0aGUKPiA+IGJsa2NpcGhlciBjb2RlIGluIHRoZSBuZWFyIGZ1dHVyZS4KPiA+Cj4gPiBD
YzogTmljb2xhcyBGZXJyZSA8bmljb2xhcy5mZXJyZUBtaWNyb2NoaXAuY29tPgo+ID4gQ2M6IEFs
ZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBib290bGluLmNvbT4KPiA+IENjOiBM
dWRvdmljIERlc3JvY2hlcyA8bHVkb3ZpYy5kZXNyb2NoZXNAbWljcm9jaGlwLmNvbT4KPiA+IFNp
Z25lZC1vZmYtYnk6IEFyZCBCaWVzaGV1dmVsIDxhcmQuYmllc2hldXZlbEBsaW5hcm8ub3JnPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9jcnlwdG8vYXRtZWwtYWVzLmMgfCA1MDcgKysrKysrKysrKy0t
LS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjQ0IGluc2VydGlvbnMoKyksIDI2MyBkZWxl
dGlvbnMoLSkKPgo+IGRyaXZlcnMvY3J5cHRvL2F0bWVsLWFlcy5jOiBJbiBmdW5jdGlvbiDigJhh
dG1lbF9hZXNfcmVnaXN0ZXJfYWxnc+KAmToKPiBkcml2ZXJzL2NyeXB0by9hdG1lbC1hZXMuYzoy
NTE1OjI0OiBlcnJvcjogcGFzc2luZyBhcmd1bWVudCAxIG9mIOKAmGNyeXB0b191bnJlZ2lzdGVy
X2FsZ+KAmSBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUgWy1XZXJyb3I9aW5jb21wYXRp
YmxlLXBvaW50ZXItdHlwZXNdCj4gICBjcnlwdG9fdW5yZWdpc3Rlcl9hbGcoJmFlc194dHNfYWxn
KTsKPiAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRy
aXZlcnMvY3J5cHRvL2F0bWVsLWFlcy5jOjMyOjA6Cj4gLi9pbmNsdWRlL2xpbnV4L2NyeXB0by5o
OjcwMzo1OiBub3RlOiBleHBlY3RlZCDigJhzdHJ1Y3QgY3J5cHRvX2FsZyAq4oCZIGJ1dCBhcmd1
bWVudCBpcyBvZiB0eXBlIOKAmHN0cnVjdCBza2NpcGhlcl9hbGcgKuKAmQo+ICBpbnQgY3J5cHRv
X3VucmVnaXN0ZXJfYWxnKHN0cnVjdCBjcnlwdG9fYWxnICphbGcpOwo+ICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fn5+Cj4KCkFwb2xvZ2llcyBmb3IgdGhhdC4gSSB3YXMgcHJldHR5IHN1cmUgSSBi
dWlsZCB0ZXN0ZWQgYWxsIHBhdGNoZXMsIHNvIEkKc2hvdWxkIGhhdmUgc3BvdHRlZCB0aGlzIG15
c2VsZi4KCj4gYW5kIHdoZW4gYXBwbHlpbmcgdGRlczoKPiBBcHBseWluZzogY3J5cHRvOiBhdG1l
bC10ZGVzIC0gc3dpdGNoIHRvIHNrY2lwaGVyIEFQSQo+IC5naXQvcmViYXNlLWFwcGx5L3BhdGNo
OjYzNzogdHJhaWxpbmcgd2hpdGVzcGFjZS4KPgo+IHdhcm5pbmc6IDEgbGluZSBhZGRzIHdoaXRl
c3BhY2UgZXJyb3JzLgo+Cj4gSSdsbCB0cnkgdG8gcmV2aWV3IHRoZSBhdG1lbCBwYXJ0IG5leHQg
d2Vlay4KPgo+IENoZWVycywKPiB0YQoKVGhhbmtzLAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
