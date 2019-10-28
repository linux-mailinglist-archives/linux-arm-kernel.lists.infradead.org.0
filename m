Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0925CE6FB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 11:37:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F0CE+Jk21Wnc6Tg/8sMzy3VXAN75c96CfNIYeMW77d8=; b=GSIAmapHZ2pjbu03muePSuv2U
	IE4vAUsSkkuGQSsZgZarM3548QaVCNnpwKUArgstdTLHwck2BTfWx0xyAtWwOWvB7L4xxbiMAZPXt
	NIEMbNfcPgp3NDhlwzzJ14qkW74rVQGa7vuSOlxWUZuSbswrTRNgtv7+wJgeU7wyPtqLbTpEAreQn
	cvqLEezJGfMQQtYFUQcNaQkJ7vmgV3BjC3YB5aEV7mkIbvFJ+yJo/qfg4LGZKFVwGDyvPyBeNMA4G
	gyg+9MwzqGXHts1Ouf2Q2HCWnZcnz3vs05OCwhJUN3zwOGLXIA5K/3M/C8pUEuGjfwybg/T77ZJHQ
	WEUB8Uu0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2Oh-0001Mw-FR; Mon, 28 Oct 2019 10:37:15 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2OU-0001MA-Ap
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 10:37:04 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 471rkC5P31zB09ZS;
 Mon, 28 Oct 2019 11:36:51 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=gQ5p3n8u; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id HtoiVrcFoKSO; Mon, 28 Oct 2019 11:36:51 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 471rkC4Gd4zB09Zg;
 Mon, 28 Oct 2019 11:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572259011; bh=CkktF4NAbt0+QaAe/+XEmO6xRyETWYPJidqV/UaYi4g=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=gQ5p3n8uwGbqZg4yJM7VCNWatvChUwMheC1RCkmkEL471TZDLxL7+d7vA8wWRpiaD
 iaOYuqy2tZSHICNYfZ9Xv8dQd2ZJhNfz+1TiSwAOSf+zNAJqEK99daMykGftWPCa3b
 E2BFESaoJop5kNaSE5I0Xpa4PsXZJVqJG2rAJDH4=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6AE428B80E;
 Mon, 28 Oct 2019 11:36:56 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id Z42IZMl3TysI; Mon, 28 Oct 2019 11:36:56 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D4F168B809;
 Mon, 28 Oct 2019 11:36:55 +0100 (CET)
Subject: Re: [PATCH v2 24/27] crypto: talitos - switch to skcipher API
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
 <20191024132345.5236-25-ard.biesheuvel@linaro.org>
 <74d5c30d-d842-5bdb-ebb8-2aa47ffb5e8d@c-s.fr>
 <CAKv+Gu8V57Z2WixfYZSdT+rqsobqDYZ-Hyer6Aq9khUNeUsxmQ@mail.gmail.com>
 <be890dfd-a1aa-86e1-b1c7-99b72ad137d0@c-s.fr>
 <CAKv+Gu98fsPOZ3reGs6wXd+hzNa_pdVZ6+XDFoXhey7C39sfFw@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <63c941df-ae15-733f-3b0b-35fc0ce6af51@c-s.fr>
Date: Mon, 28 Oct 2019 11:36:55 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu98fsPOZ3reGs6wXd+hzNa_pdVZ6+XDFoXhey7C39sfFw@mail.gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_033702_868288_3070D06C 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyOC8xMC8yMDE5IMOgIDA3OjIwLCBBcmQgQmllc2hldXZlbCBhIMOpY3JpdMKgOgo+IE9u
IFN1biwgMjcgT2N0IDIwMTkgYXQgMTQ6MDUsIENocmlzdG9waGUgTGVyb3kgPGNocmlzdG9waGUu
bGVyb3lAYy1zLmZyPiB3cm90ZToKPj4KPj4KPj4KPj4gTGUgMjcvMTAvMjAxOSDDoCAxMjowNSwg
QXJkIEJpZXNoZXV2ZWwgYSDDqWNyaXQgOgo+Pj4gT24gU3VuLCAyNyBPY3QgMjAxOSBhdCAxMTo0
NSwgQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+Pj4+
Cj4+Pj4KPj4+Pgo+Pj4+IExlIDI0LzEwLzIwMTkgw6AgMTU6MjMsIEFyZCBCaWVzaGV1dmVsIGEg
w6ljcml0IDoKPj4+Pj4gQ29tbWl0IDdhN2ZmZTY1YzhjNSAoImNyeXB0bzogc2tjaXBoZXIgLSBB
ZGQgdG9wLWxldmVsIHNrY2lwaGVyIGludGVyZmFjZSIpCj4+Pj4+IGRhdGVkIDIwIGF1Z3VzdCAy
MDE1IGludHJvZHVjZWQgdGhlIG5ldyBza2NpcGhlciBBUEkgd2hpY2ggaXMgc3VwcG9zZWQgdG8K
Pj4+Pj4gcmVwbGFjZSBib3RoIGJsa2NpcGhlciBhbmQgYWJsa2NpcGhlci4gV2hpbGUgYWxsIGNv
bnN1bWVycyBvZiB0aGUgQVBJIGhhdmUKPj4+Pj4gYmVlbiBjb252ZXJ0ZWQgbG9uZyBhZ28sIHNv
bWUgcHJvZHVjZXJzIG9mIHRoZSBhYmxrY2lwaGVyIHJlbWFpbiwgZm9yY2luZwo+Pj4+PiB1cyB0
byBrZWVwIHRoZSBhYmxrY2lwaGVyIHN1cHBvcnQgcm91dGluZXMgYWxpdmUsIGFsb25nIHdpdGgg
dGhlIG1hdGNoaW5nCj4+Pj4+IGNvZGUgdG8gZXhwb3NlIFthXWJsa2NpcGhlcnMgdmlhIHRoZSBz
a2NpcGhlciBBUEkuCj4+Pj4+Cj4+Pj4+IFNvIHN3aXRjaCB0aGlzIGRyaXZlciB0byB0aGUgc2tj
aXBoZXIgQVBJLCBhbGxvd2luZyB1cyB0byBmaW5hbGx5IGRyb3AgdGhlCj4+Pj4+IGJsa2NpcGhl
ciBjb2RlIGluIHRoZSBuZWFyIGZ1dHVyZS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogQXJk
IEJpZXNoZXV2ZWwgPGFyZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc+Cj4+Pj4KPj4+PiBXaXRoIHRo
aXMgc2VyaWVzLCBJIGdldCB0aGUgZm9sbG93aW5nIE9vcHMgYXQgYm9vdDoKPj4+Pgo+Pj4KPj4+
IFRoYW5rcyBmb3IgdGhlIHJlcG9ydC4KPj4+Cj4+PiBHaXZlbiB0aGF0IHRoZSBzZXJpZXMgb25s
eSBtb2RpZmllcyBhYmxrY2lwaGVyIGltcGxlbWVudGF0aW9ucywgaXQgaXMKPj4+IHJhdGhlciBj
dXJpb3VzIHRoYXQgdGhlIGNyYXNoIG9jY3VycyBpbiBhaGFzaF9pbml0KCkuIENhbiB5b3UgY29u
ZmlybQo+Pj4gdGhhdCB0aGUgY3Jhc2ggZG9lcyBub3Qgb2NjdXIgd2l0aCB0aGlzIHBhdGNoIHJl
dmVydGVkPwo+Pgo+PiBZZXMgSSBjb25maXJtLgo+Pgo+PiBZb3UgY2hhbmdlZCB0YWxpdG9zX2Ny
YV9pbml0X2FoYXNoKCkuIHRhbGl0b3NfaW5pdF9jb21tb24oKSBpcyBub3QKPj4gY2FsbGVkIGFu
eW1vcmUuIEkgdGhpbmsgdGhhdCdzIHRoZSByZWFzb24uCj4+Cj4gCj4gVGhhbmtzIGEgbG90IGZv
ciBkaWdnaW5nIGludG8gdGhpcwo+IAo+IERvZXMgdGhpcyBmaXggdGhpbmdzIGZvciB5b3U/CgpZ
ZXMgaXQgZG9lcy4KVGhhbmtzLgpDaHJpc3RvcGhlCgo+IAo+IGluZGV4IGMyOWY4YzAyZWEwNS4u
ZDcxZDY1ODQ2ZTQ3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY3J5cHRvL3RhbGl0b3MuYwo+ICsr
KyBiL2RyaXZlcnMvY3J5cHRvL3RhbGl0b3MuYwo+IEBAIC0zMDUzLDcgKzMwNTMsNyBAQCBzdGF0
aWMgaW50IHRhbGl0b3NfY3JhX2luaXRfYWhhc2goc3RydWN0IGNyeXB0b190Zm0gKnRmbSkKPiAg
ICAgICAgICBjcnlwdG9fYWhhc2hfc2V0X3JlcXNpemUoX19jcnlwdG9fYWhhc2hfY2FzdCh0Zm0p
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplb2Yoc3RydWN0IHRhbGl0
b3NfYWhhc2hfcmVxX2N0eCkpOwo+IAo+IC0gICAgICAgcmV0dXJuIDA7Cj4gKyAgICAgICByZXR1
cm4gdGFsaXRvc19pbml0X2NvbW1vbihjdHgsIHRhbGl0b3NfYWxnKTsKPiAgIH0KPiAKPiAgIHN0
YXRpYyB2b2lkIHRhbGl0b3NfY3JhX2V4aXQoc3RydWN0IGNyeXB0b190Zm0gKnRmbSkKPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
