Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E591B1E436
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 23:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lz6dQupoy78ZADybgLZq3qMSq4YgE2QQRWsDtPTUYxw=; b=XN+03yLTGFEtTpNZAY9zzafHa
	/Wtryidz+I+d9PKaVELoes/qt2XiakfRvR+NZ+MaaT0aLljmaODmWfRmMzqB6ClUS28Fb7J1D6juJ
	M2KCAFPXcDTS8ErUl995FbbC12zu+0vZSm7OQBELiAG8Nu0eD0HlB/2rMWChALOjHukwUP+NCChH8
	c4KMD7QaYQ5TB4qd4HUcIAhDi51LmIMzO51ayuoi4BMyUramKTqmx9jxxXlrcP2799yhGrbZs4m0/
	9q44TwJqcj1JfGuG/jR0nwBS1VYqVFD/zyL9O9695fxkd92U86U0KeeC0vno7GX7aXGRijK1MuNYy
	qVqiQt8Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfQ7-0007X6-2b; Tue, 14 May 2019 21:57:11 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfPz-0007WT-NS
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 21:57:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4213374;
 Tue, 14 May 2019 14:57:00 -0700 (PDT)
Received: from [192.168.1.124] (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C9803F703;
 Tue, 14 May 2019 14:56:57 -0700 (PDT)
Subject: Re: [PATCH v4 0/8] Allwinner H6 Mali GPU support
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190513151405.GW17751@phenom.ffwll.local>
 <de50a9da-669f-ab25-2ef2-5ffb90f8ee03@baylibre.com>
 <CAJiuCccuEw0BK6MwROR+XUDvu8AJTmZ5tu=pYwZbGAuvO31pgg@mail.gmail.com>
 <CAJiuCccWa5UTML68JDQq6q8SyNZzVWwQWTOL=+84Bh4EMHGC3A@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3c2c9094-69d4-bace-d5ee-c02b7f56ac82@arm.com>
Date: Tue, 14 May 2019 22:56:50 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJiuCccWa5UTML68JDQq6q8SyNZzVWwQWTOL=+84Bh4EMHGC3A@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145703_773479_8147C34A 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNS0xNCAxMDoyMiBwbSwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+IEhpLAo+IAo+
IE9uIFR1ZSwgMTQgTWF5IDIwMTkgYXQgMTc6MTcsIENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xl
bUBnbWFpbC5jb20+IHdyb3RlOgo+Pgo+PiBIaSwKPj4KPj4gT24gVHVlLCAxNCBNYXkgMjAxOSBh
dCAxMjoyOSwgTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPiB3cm90ZToK
Pj4+Cj4+PiBIaSwKPj4+Cj4+PiBPbiAxMy8wNS8yMDE5IDE3OjE0LCBEYW5pZWwgVmV0dGVyIHdy
b3RlOgo+Pj4+IE9uIFN1biwgTWF5IDEyLCAyMDE5IGF0IDA3OjQ2OjAwUE0gKzAyMDAsIHBlcm9u
LmNsZW1AZ21haWwuY29tIHdyb3RlOgo+Pj4+PiBGcm9tOiBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPgo+Pj4+Pgo+Pj4+PiBIaSwKPj4+Pj4KPj4+Pj4gVGhlIEFsbHdpbm5l
ciBINiBoYXMgYSBNYWxpLVQ3MjAgTVAyLiBUaGUgZHJpdmVycyBhcmUKPj4+Pj4gb3V0LW9mLXRy
ZWUgc28gdGhpcyBzZXJpZXMgb25seSBpbnRyb2R1Y2UgdGhlIGR0LWJpbmRpbmdzLgo+Pj4+Cj4+
Pj4gV2UgZG8gaGF2ZSBhbiBpbi10cmVlIG1pZGdhcmQgZHJpdmVyIG5vdyAoc2luY2UgNS4yKS4g
RG9lcyB0aGlzIHN0dWZmIHdvcmsKPj4+PiB0b2dldGhlciB3aXRoIHlvdXIgZHQgY2hhbmdlcyBo
ZXJlPwo+Pj4KPj4+IE5vLCBidXQgaXQgc2hvdWxkIGJlIGVhc3kgdG8gYWRkLgo+PiBJIHdpbGwg
Z2l2ZSBpdCBhIHRyeSBhbmQgbGV0IHlvdSBrbm93Lgo+IEFkZGVkIHRoZSBidXNfY2xvY2sgYW5k
IGEgcmFtcCBkZWxheSB0byB0aGUgZ3B1X3ZkZCBidXQgdGhlIGRyaXZlcgo+IGZhaWwgYXQgcHJv
YmUuCj4gCj4gWyAgICAzLjA1MjkxOV0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGNsb2NrIHJhdGUg
PSA0MzIwMDAwMDAKPiBbICAgIDMuMDU4Mjc4XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogYnVzX2Ns
b2NrIHJhdGUgPSAxMDAwMDAwMDAKPiBbICAgIDMuMTc5NzcyXSBwYW5mcm9zdCAxODAwMDAwLmdw
dTogbWFsaS10NzIwIGlkIDB4NzIwIG1ham9yIDB4MQo+IG1pbm9yIDB4MSBzdGF0dXMgMHgwCj4g
WyAgICAzLjE4NzQzMl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGZlYXR1cmVzOiAwMDAwMDAwMCwx
MDMwOWU0MCwKPiBpc3N1ZXM6IDAwMDAwMDAwLDIxMDU0NDAwCj4gWyAgICAzLjE5NTUzMV0gcGFu
ZnJvc3QgMTgwMDAwMC5ncHU6IEZlYXR1cmVzOiBMMjoweDA3MTEwMjA2Cj4gU2hhZGVyOjB4MDAw
MDAwMDAgVGlsZXI6MHgwMDAwMDgwOSBNZW06MHgxIE1NVToweDAwMDAyODIxIEFTOjB4Zgo+IEpT
OjB4Nwo+IFsgICAgMy4yMDcxNzhdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBzaGFkZXJfcHJlc2Vu
dD0weDMgbDJfcHJlc2VudD0weDEKPiBbICAgIDMuMjM4MjU3XSBwYW5mcm9zdCAxODAwMDAwLmdw
dTogRmF0YWwgZXJyb3IgZHVyaW5nIEdQVSBpbml0Cj4gWyAgICAzLjI0NDE2NV0gcGFuZnJvc3Q6
IHByb2JlIG9mIDE4MDAwMDAuZ3B1IGZhaWxlZCB3aXRoIGVycm9yIC0xMgo+IAo+IFRoZSBFTk9N
RU0gaXMgY29taW5nIGZyb20gInBhbmZyb3N0X21tdV9pbml0Igo+IGFsbG9jX2lvX3BndGFibGVf
b3BzKEFSTV9NQUxJX0xQQUUsICZwZmRldi0+bW11LT5wZ3RibF9jZmcsCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGZkZXYpOwo+IAo+IFdoaWNoIGlzIGR1ZSB0
byBhIGNoZWNrIGluIHRoZSBwZ3RhYmxlIGFsbG9jICJjZmctPmlhcyAhPSA0OCIKPiBhcm0tbHBh
ZSBpby1wZ3RhYmxlOiBhcm1fbWFsaV9scGFlX2FsbG9jX3BndGFibGUgY2ZnLT5pYXMgMzMgY2Zn
LT5vYXMgNDAKPiAKPiBEUkkgc3RhY2sgaXMgdG90YWxseSBuZXcgZm9yIG1lLCBjb3VsZCB5b3Ug
Z2l2ZSBtZSBhIGxpdHRsZSBjbHVlIGFib3V0Cj4gdGhpcyBpc3N1ZSA/CgpIZWgsIHRoaXMgaXMg
cHJvYmFibHkgdGhlIG9uZSBiaXQgd2hpY2ggZG9lc24ndCByZWFsbHkgY291bnQgYXMgIkRSSSBz
dGFjayIuCgpUaGF0J3MgbWVyZWx5IGEgc29tZXdoYXQtY29uc2VydmF0aXZlIHNhbml0eSBjaGVj
ayAtIEknbSBwcmV0dHkgc3VyZSBpdCAKKnNob3VsZCogYmUgZmluZSB0byBjaGFuZ2UgdGhlIHRl
c3QgdG8gImNmZy0+aWFzID4gNDgiIChpby1wZ3RhYmxlIAppdHNlbGYgb3VnaHQgdG8gY29wZSku
IFlvdSdsbCBqdXN0IGdldCB0byBiZSB0aGUgZmlyc3QgdG8gYWN0dWFsbHkgdGVzdCAKYSBub24t
NDgtYml0IGNvbmZpZ3VyYXRpb24gaGVyZSA6KQoKUm9iaW4uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
