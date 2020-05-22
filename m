Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0597D1DE147
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 09:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPN0IsS6K9DiYvWJJGAo8oP1FfN+7MzV2w5twTuMcSk=; b=ogSWIZE4REti6r
	+Z2k33/UhcdZAT+2dGcRxIZjm+rticR+r79VZi1QkuNGjRiSFUdOC3FswyS680UBB4D4FFhyqpVk3
	ai1cfrDt9BJJkw8jEt+QcMTeQEDvfu1JO1vW55ePcveREUxyTAs75gOn7XN+1Y8wtcwnOIBfnBRzy
	VclepdfU6HCqQrnec58PG/k+tY12PUM91x/TtnYCui8706RoW6L+IHkuDcFTnL0SfjU/B1wd/BM7z
	R8F5SBYg6VQ+l2LBSE3ZhYgJ4er4wcCMoEkC9c5p5UE+6eCUeD7Np0ZJtJ/Vyygz3IWh4fp9nEXMy
	mk/JaMHYTPA4xO6c4WuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2Ri-0005xy-Cv; Fri, 22 May 2020 07:50:22 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2RX-00058U-KA; Fri, 22 May 2020 07:50:13 +0000
Received: from mail-qv1-f52.google.com ([209.85.219.52]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N8EdM-1iyQNb1CBU-0149I5; Fri, 22 May 2020 09:50:07 +0200
Received: by mail-qv1-f52.google.com with SMTP id f89so4333577qva.3;
 Fri, 22 May 2020 00:50:06 -0700 (PDT)
X-Gm-Message-State: AOAM530R0t3h1hLMYn7jbao71H246fmuPZyPOxR07eCscGCHmYfH2Lse
 U1G5oz+8aKC8DtGRBkH4wMcuEFFyLj+PJUotIFc=
X-Google-Smtp-Source: ABdhPJzTX2r7xydKqbJAwhK2+QTpPNnz3LZTzzTI94w3ZoU1ZULE1GyhxQ/7OzXgkRXqp42O1WffI9SLJ6KlmPBCdgc=
X-Received: by 2002:a05:6214:1392:: with SMTP id
 g18mr2340434qvz.210.1590133805879; 
 Fri, 22 May 2020 00:50:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200520112523.30995-1-brgl@bgdev.pl>
 <20200520112523.30995-7-brgl@bgdev.pl>
 <CAK8P3a3jhrQ3p1JsqMNMOOnfo9t=rAPWaOAwAdDuFMh7wUtZQw@mail.gmail.com>
 <CAMRc=MeuQk9rFDFGWK0ijsiM-r296cVz9Rth8hWhW5Aeeti_cA@mail.gmail.com>
 <CAK8P3a1nhPj6kRhwyXzDK3BGbh66XG6Fmp44QuM1NhFPPBTtPQ@mail.gmail.com>
 <CAMRc=MfVkbDSfEV71SD57dpYthdx5epD0FOvjRx8qQGT+SgsTQ@mail.gmail.com>
In-Reply-To: <CAMRc=MfVkbDSfEV71SD57dpYthdx5epD0FOvjRx8qQGT+SgsTQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 22 May 2020 09:49:49 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3qXf2NSDEoMHOQnChZmqQdVF--f_PFFHCyOKPhA=iW_w@mail.gmail.com>
Message-ID: <CAK8P3a3qXf2NSDEoMHOQnChZmqQdVF--f_PFFHCyOKPhA=iW_w@mail.gmail.com>
Subject: Re: [PATCH v4 06/11] net: ethernet: mtk-eth-mac: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-Provags-ID: V03:K1:USBbwF6HgbAE/UaI9FWkNynmcR1PFTWqvmWH4lSbDsyAAw6HGXY
 4ioLuoUXEDP0t0NTtzpNK4QZnA2GWw0TwkrNVZTyk9Ialx8Nu29bKn9ULDIPF0lE2VoVWGn
 y++Tsp95zgOsvHGOgLMKJKIwl1FUwBMJkGSFxcZ75d/coDgO30UHRVDOiIz6HW9bBmdXzeq
 uO74xgyqbLA/1rbzR6Bcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O+aWlIl/z2c=:Jb5hFpu6STZPpArs9bqCCK
 1J/ok7Etq+sBifGaHb81AyxsP5U15kQQxfHqFrT09HoaA3jH9mpV02DqgIqbw90YWch3D+TTU
 +M8jWmEmM3CFWpYLxrHHvVukFOsbyAWWBWu3Cz5ARzeHt24M/9H2q8/e+KMv6EV+jOz+99ik3
 QgduYzGyGhmTXnmfobt9cnRvBQzk/ICN1UsAAyb0KoHC5w0lBXYo3LLoZ1ZpwAmReMyzfnXNo
 /vyZSFEcL2OU+B3lqEuEIZUw+f5IFSxHj+eBDqpWST30x8jmz0pWaM2OdB4KV3uu4tOoSXQY/
 hmKH+XdVfOk2SfvI307RRUAmXJtAGE2xEUfmL7tPHgwc56ocNgb321jT14tr3IQl4nFrzHDpy
 V/dUp/jeirJp4GERqY54bQLzE3p4pVohdSJk4a40CtfN3nKU9UAI6SdPx/bcWh+z6cifcsMpT
 OA/2XffAfnPyKzTMPIa6+z2KGbPq/nN20rhEn8FCEvjBYVjxzl+Pv9Ti4KGmX6ceYuS7OIFni
 /506e2Gj+PMseOuWfmYZO9ODWYb9CQbAlr+nHovcTm+4k9JgesAypomlgRNtd5KtTFt2hQAzL
 VN/U7Av1+eIAAkbRMtGU/zzOY30x4A/kAVWQQ6sAk5IYDUTwZ3laMNJXGKBpj6dIMRh4Ch/Cc
 p9jFchpU1s/FGRIMDx3iyuBgnZaZ7GxjOU0dthtcVSyYwJQEemiNKLs349+CM22nvVNzv79vg
 JGfFxj2ZRDe5SGA9WxTT0044P7QsDevxclXIdUUPsQBD3+Vu8xHcJywq2IfoB2qLSsaI/NwQ0
 pH5X60a+kHvz+0zKHQ5o/NEcEVRtHyTi1Ejvl7tb5Je1DHBVRY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_005011_975939_ADAFC220 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, DTML <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Networking <netdev@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjIsIDIwMjAgYXQgOTo0NCBBTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmds
QGJnZGV2LnBsPiB3cm90ZToKPiDFm3IuLCAyMCBtYWogMjAyMCBvIDIzOjIzIEFybmQgQmVyZ21h
bm4gPGFybmRAYXJuZGIuZGU+IG5hcGlzYcWCKGEpOgo+ID4gT24gV2VkLCBNYXkgMjAsIDIwMjAg
YXQgNzozNSBQTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2LnBsPiB3cm90ZToKPiA+
ID4gxZtyLiwgMjAgbWFqIDIwMjAgbyAxNjozNyBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRl
PiBuYXBpc2HFgihhKToKCj4gPiA+IE15IHRoaW5raW5nIHdhcyB0aGlzOiBpZiBJIG1hc2sgdGhl
IHJlbGV2YW50IGludGVycnVwdCAoVFgvUlgKPiA+ID4gY29tcGxldGUpIGFuZCBhY2sgaXQgcmln
aHQgYXdheSwgdGhlIHN0YXR1cyBiaXQgd2lsbCBiZSBhc3NlcnRlZCBvbgo+ID4gPiB0aGUgbmV4
dCBwYWNrZXQgcmVjZWl2ZWQvc2VudCBidXQgdGhlIHByb2Nlc3Mgd29uJ3QgZ2V0IGludGVycnVw
dGVkCj4gPiA+IGFuZCB3aGVuIEkgdW5tYXNrIGl0LCBpdCB3aWxsIGZpcmUgcmlnaHQgYXdheSBh
bmQgSSB3b24ndCBoYXZlIHRvCj4gPiA+IHJlY2hlY2sgdGhlIHN0YXR1cyByZWdpc3Rlci4gSSBu
b3RpY2VkIHRoYXQgaWYgSSBhY2sgaXQgYXQgdGhlIGVuZCBvZgo+ID4gPiBuYXBpIHBvbGwgY2Fs
bGJhY2ssIEkgZW5kIHVwIG1pc3NpbmcgY2VydGFpbiBUWCBjb21wbGV0ZSBpbnRlcnJ1cHRzCj4g
PiA+IGFuZCBlbmQgdXAgc2VlaW5nIGEgbG90IG9mIHJldHJhbnNtaXNzaW9ucyBldmVuIGlmIEkg
cmVyZWFkIHRoZSBzdGF0dXMKPiA+ID4gcmVnaXN0ZXIuIEknbSBub3QgeWV0IHN1cmUgd2hlcmUg
dGhpcyByYWNlIGhhcHBlbnMuCj4gPgo+ID4gUmlnaHQsIEkgc2VlLiBJZiB5b3UganVzdCBhY2sg
YXQgdGhlIGVuZCBvZiB0aGUgcG9sbCBmdW5jdGlvbiwgeW91IG5lZWQKPiA+IHRvIGNoZWNrIHRo
ZSByaW5ncyBhZ2FpbiB0byBlbnN1cmUgeW91IGRpZCBub3QgbWlzcyBhbiBpbnRlcnJ1cHQKPiA+
IGJldHdlZW4gY2hlY2tpbmcgb2JzZXJ2aW5nIGJvdGggcmluZ3MgdG8gYmUgZW1wdHkgYW5kIHRo
ZSBpcnEtYWNrLgo+ID4KPiA+IEkgc3VzcGVjdCBpdCdzIHN0aWxsIGNoZWFwZXIgdG8gY2hlY2sg
dGhlIHR3byByaW5ncyB3aXRoIGFuIHVuY2FjaGVkCj4gPiByZWFkIGZyb20gbWVtb3J5IHRoYW4g
dG8gdG8gZG8gdGhlIHJlYWQtbW9kaWZ5LXdyaXRlIG9uIHRoZSBtbWlvLAo+ID4gYnV0IHlvdSdk
IGhhdmUgdG8gbWVhc3VyZSB0aGF0IHRvIGJlIHN1cmUuCj4gPgo+Cj4gVW5mb3J0dW5hdGVseSB0
aGUgUEhZIG9uIHRoZSBib2FyZCBJIGhhdmUgaXMgMTAwTWJwcyB3aGljaCBpcyB0aGUKPiBsaW1p
dGluZyBmYWN0b3IgaW4gYmVuY2htYXJraW5nIHRoaXMgZHJpdmVyLiA6KAo+Cj4gSWYgeW91J3Jl
IGZpbmUgd2l0aCB0aGlzIC0gSSdkIGxpa2UgdG8gZml4IHRoZSBtaW5vciBpc3N1ZXMgeW91Cj4g
cG9pbnRlZCBvdXQgYW5kIHN0aWNrIHdpdGggdGhlIGN1cnJlbnQgYXBwcm9hY2ggZm9yIG5vdy4g
V2UgY2FuIGFsd2F5cwo+IGZpeCB0aGUgaW1wbGVtZW50YXRpb24gaW4gdGhlIGZ1dHVyZSBvbmNl
IGEgYm9hcmQgd2l0aCBhIEdpZ2FiaXQgUEhZCj4gaXMgb3V0LiBNb3N0IGV0aGVybmV0IGRyaXZl
cnMgZG9uJ3QgdXNlIHN1Y2ggZmluZS1ncmFpbmVkIGludGVycnVwdAo+IGNvbnRyb2wgYW55d2F5
LiBJIGV4cGVjdCB0aGUgcGVyZm9ybWFuY2UgZGlmZmVyZW5jZXMgdG8gYmUgbWluaXNjdWxlCj4g
cmVhbGx5LgoKT2ssIGZhaXIgZW5vdWdoLiBUaGUgQlFMIGxpbWl0aW5nIGlzIHRoZSBwYXJ0IHRo
YXQgbWF0dGVycyB0aGUgbW9zdApmb3IgcGVyZm9ybWFuY2Ugb24gc2xvdyBsaW5lcyAocHJldmVu
dGluZyBsb25nIGxhdGVuY2llcyBmcm9tCmJ1ZmZlciBibG9hdCksIGFuZCAgeW91IGhhdmUgdGhh
dCBub3cuCgogICAgICAgQXJuZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
