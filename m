Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE3D103ECE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYUJ9K3j9Z+bDcjQZoPz2OkIILAAmSVHJT4kgpErkJw=; b=p7pwigLpYxQ0T7
	2VgeH0BDSXPeIj0TWq8RZqc/SsENuKOBAOOODNCWYfBBcNrcvHXHKFMAPJWgdvaX/AjOaYHhlZkhp
	VbEPDDLgKo6Ju8vqAL6iQgVa3ILGXiU6G8pe8lFt34AXW5y5Xtklvhj4PA+f4IzKzNu0MxcAME0Q5
	k9DQwD5ezMa8JJbqh3GBetDr1jxXy8E6SE4hbwcAyaBAswESjC2zFm7cPQruLYsa1M2z706/KccEV
	1ptKzFxgq0Bh8cukMrnhQjOqo/z0oa8bhkxjO6NYGLpr3yk6t3zfnl+nCNkiQoREqmv5gQH8pnbr9
	3UOyD23uHCKS9Bm1dHNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXRzS-0004gu-Sd; Wed, 20 Nov 2019 15:33:58 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXRzF-0004gD-To
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:33:50 +0000
Received: by mail-oi1-x22f.google.com with SMTP id v138so114512oif.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 07:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XIz71A93vT2GZir/cbd6mjWyCS4Rwn+5UeGeUtq83rI=;
 b=XhcSuygsIBwuCOL9xXeVVWfKx6OA4pTVpYUr5oiWXKDaiMqAXeLa0e4xJYBglzpgLi
 /r50b5WVPxR45+xRT0n1oir0gfEkbzcVd2at+obobIM1v+1voNKef59puPe7oDc0pqZw
 I1kaR9TPOL61ysviDLLLtf8BsXgRYZaBPZF0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XIz71A93vT2GZir/cbd6mjWyCS4Rwn+5UeGeUtq83rI=;
 b=ezccjusFf4Iy1+wSs6Su/s4BzEcxA1D7gLZoIhfh/1qYUZP5BbNiskAPPqaBs7WocV
 UeWEr9lDrs87giV4G+1fBA2/FBS+nR7bSQRGgVgtWVVbe1sAiD/yzQJyzmSfnpz14DxY
 u76OHrbn41uex+zGoKaW4WXZZoHgS5AEsiOf3t/dtJXBt+6DGDmwHl8fkKiMvYRRMLJk
 Q7Bc8cgmjp6IbeFMhq8msGmoMkeFVU6AkU9WMd9LADA5jylYb7ilwqfCj9nOnWX5vgK+
 DBTY802jB3HHCQNCfH/lro5iOi7fUo8V7akJS3kvDpzoKCrm9n5O840obz5a/fO4J3U+
 V8gg==
X-Gm-Message-State: APjAAAX/NBp6kVCTZeiif1s1JjkdrQBKtiFtimJMmesFbMaMuWHbtjN6
 sje0XkavkuSTnGq45WRFvKyuUj4gMqO/QHZozQoVyg==
X-Google-Smtp-Source: APXvYqzFZ1Nv/DhX4G1ZPrfrmut25uY1BdnJKjyKvD6eMew7XmgYRuai2w90HTpHiKhhksOu8ivhmtv9cpmYUF09//4=
X-Received: by 2002:aca:320a:: with SMTP id y10mr3250705oiy.152.1574264024897; 
 Wed, 20 Nov 2019 07:33:44 -0800 (PST)
MIME-Version: 1.0
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
 <5644395.EDGZVd1YuU@diego>
 <CAMty3ZA+p2pWokLrwnkv6_q0G8d76AntE5Kar4JN8MN48O9VSw@mail.gmail.com>
 <12496011.EUIoF19S7S@diego>
In-Reply-To: <12496011.EUIoF19S7S@diego>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 20 Nov 2019 21:03:33 +0530
Message-ID: <CAMty3ZCLYQYvOuOzRXjxDmLsFbYBYOQjymsn+pCvctTaQG2Y0g@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: dts: rockchip: Add Radxa Carrier board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_073349_374621_6413627B 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>, Tom Cubie <tom@radxa.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiBXZWQsIE5vdiAyMCwgMjAxOSBhdCA3OjIzIFBNIEhlaWtvIFN0w7xibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgSmFnYW4sCj4KPiBBbSBNaXR0d29jaCwg
MjAuIE5vdmVtYmVyIDIwMTksIDE0OjQ1OjM1IENFVCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gPiBP
biBXZWQsIE5vdiAyMCwgMjAxOSBhdCA2OjU1IFBNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+ID4gPiBBbSBNaXR0d29jaCwgMjAuIE5vdmVtYmVyIDIwMTksIDEyOjM5
OjIyIENFVCBzY2hyaWViIEphZ2FuIFRla2k6Cj4gPiA+ID4gQ2FycmllciBib2FyZCBvZnRlbiBy
ZWZlcnJlZCBhcyBiYXNlYm9hcmQuIEZvciBtYWtpbmcKPiA+ID4gPiBjb21wbGV0ZSBTQkMsIHRo
ZSBhc3NvY2lhdGVkIFNPTSB3aWxsIG1vdW50IG9uIHRvcCBvZgo+ID4gPiA+IHRoaXMgY2Fycmll
ciBib2FyZC4KPiA+ID4gPgo+ID4gPiA+IFJhZHhhIGhhcyBhIGNhcnJpZXIgYm9hcmQgd2hpY2gg
c3VwcG9ydHMgb24gYm9hcmQKPiA+ID4gPiBwZXJpcGhlcmFscywgcG9ydHMgbGlrZSBVU0ItMi4w
LCBVU0ItMy4wLCBIRE1JLCBNSVBJIERTSS9DU0ksCj4gPiA+ID4gZURQLCBFdGhlcm5ldCwgUENJ
ZSwgVVNCLUMsIDQwLVBpbiBHUElPIGhlYWRlciBhbmQgZXRjLgo+ID4gPiA+Cj4gPiA+ID4gQ3Vy
cmVudGx5IHRoaXMgY2FycmllciBib2FyZCBjYW4gYmUgdXNlZCB0b2dldGhlciB3aXRoCj4gPiA+
ID4gVk1BUkMgUkszMzk5UG9yIFNPTSBmb3IgbWFraW5nIFJvY2sgUEkgTjEwIFNCQy4KPiA+ID4g
Pgo+ID4gPiA+IFNvIGFkZCB0aGlzIGNhcnJpZXIgYm9hcmQgZHRzaSBhcyBhIHNlcGFyYXRlIGZp
bGUgaW4KPiA+ID4gPiBBUk0gZGlyZWN0b3J5LCBzby10aGF0IHRoZSBzYW1lIGNhbiByZXVzZSBp
dCBpbiBib3RoCj4gPiA+ID4gYXJtMzIgYW5kIGFybTY0IHZhcmlhbnRzIG9mIFJvY2tjaGlwIFNP
TXMuCj4gPiA+Cj4gPiA+IERvIHlvdSByZWFsbHkgdGhpbmsgc29tZW9uZSB3aWxsIGNyZWF0ZSBh
biBhcm0zMiBzb2MgdXNpbmcgdGhhdAo+ID4gPiBjYXJyaWVyIGJvYXJkPwo+ID4KPiA+IFllcywg
d2UgaGF2ZSBSb2NrIFBpIE44IHdoaWNoIGlzIHVzaW5nIHNhbWUgY2FycmllciBib2FyZCBkZXNp
Z24gd2l0aAo+ID4gKCsgZXh0ZXJuYWwgY29kZWMpIG9uIHRvcCBvZiBSSzMyODggU09NLiBJIGRp
ZG4ndCBtZW50aW9uZWQgb24gdGhlCj4gPiBjb21taXQgbWVzc2FnZSBzaW5jZSByYWR4YSBkb2Vz
bid0IG9mZmljaWFsbHkgYW5ub3VuY2VkIG9uIHRoZQo+ID4gd2Vic2l0ZS4KPiA+Cj4gPiA+Cj4g
PiA+IFNpbWlsYXJseSBzbyBmYXIgSSBkb24ndCB0aGluayB3ZSBoYXZlbid0IGV2ZW4gc2VlbiBh
IGxvdCBvZiByZXVzZQo+ID4gPiBvZiBleGlzdGluZyBjYXJyaWVyIGJvYXJkcyBhdCBhbGwsIG90
aGVyIHRoYW4gdGhlaXIgaW5pdGlhbCBjb21iaW5hdGlvbi4KPiA+ID4KPiA+ID4gU28gbWF5YmUg
anVzdCBoYXZpbmcgdGhlIGNvbnRlbnQgb2YgeW91cgo+ID4gPiAgICAgICAgIHJvY2tjaGlwLXJh
ZHhhLWNhcnJpZXJib2FyZC5kdHNpCj4gPiA+IGluCj4gPiA+ICAgICAgICAgcm9ja2NoaXAvcmsz
Mzk5cHJvLXJvY2stcGktbjEwLmR0cwo+ID4gPiBmcm9tIHBhdGNoIDUgbWlnaHQgYmUgYSBiZXR0
ZXIgc3RhcnQgLSBhdCBsZWFzdCB1bnRpbCB0aGVyZSBpcyBhbnkKPiA+ID4gZnVydGhlciB1c2Fn
ZSAtIGlmIGF0IGFsbD8KPiA+Cj4gPiBCdXQsIHRoaXMgcGFydGljdWxhciBkZXNpZ24gaGFzIHBy
b3BlciB1c2UgY2FzZS4KPiA+IDEuIHJrMzM5OXBybyBTT00gKyBjYXJyaWVyIGJvYXJkIChSb2Nr
IFBpIE4xMCkKPiA+IDIuIHJrMzI4OCBTT00gKyBjYXJyaWVyIGJvYXJkIChSb2NrIFBpIE44KQo+
ID4KPiA+ID4KPiA+ID4gQWxzbyByb2NrY2hpcC1yYWR4YS1jYXJyaWVyYm9hcmQgbWlnaHQgZXZl
biBiZSBvdmVybHkgZ2VuZXJpYwo+ID4gPiBhcyB0aGVyZSBtYXkgYmUgbXVsdGlwbGUgY2Fycmll
cmJvYXJkcyBmcm9tIFJhZHhhIGxhdGVyIG9uLgo+ID4KPiA+IEknbSBzbGlnaHRseSBkaXNhZ3Jl
ZSBvZiBoYXZpbmcgb3ZlcmxheSBoZXJlLCBzaW5jZSB0aGVzZSBhcmUgZml4ZWQKPiA+IGRlc2ln
biBjb21iaW5hdGlvbnMuIHdoZXJlIFNPTSB3aXRoIHJlc3BlY3RpdmUgY2FycmllciBib2FyZCBp
cwo+ID4gbWFuZGF0b3J5IHRvIG1ha2UgZmluYWwgYm9hcmQuIFVuZGVyc3RhbmQgdGhhdCB3ZSBj
YW4gaGF2ZSBhCj4gPiBtYWludGVuYW5jZSBvdmVyLWFoZWFkIGlmIHdlIGhhdmUgbXVsdGlwbGUg
Y2FycmllciBib2FyZHMsIGJ1dCByaWdodAo+ID4gbm93IHJhZHhhIGhhcyBvbmx5IG9uZSBjYXJy
aWVyIGJvYXJkIHdpdGggMiBzZXRzIG9mIFNPTSdzIGNvbWJpbmF0aW9ucwo+ID4gdGhhdCBpbmRl
ZWQgZml0IGxpa2UgYSBkZXYgYm9hcmQsIHNvIHRoZXJlIGlzIHVudXNlZCBjYXJyaWVyIGJvYXJk
Lgo+Cj4gQWxsIGlzIGdvb2QgLi4uIHdpdGggdGhhdCBpbmZvcm1hdGlvbiBmcm9tIGFib3ZlIChy
azMyODgpIHRoaXMgZGVmaW5pdGx5Cj4gbWFrZXMgbW9yZSBzZW5zZSA6LSkKPgo+IFRoZSBuYW1p
bmcgb2YgdGhlIGZpbGUgaXMgc3RpbGwgYSB0aW55IHN0cnVnZ2xlIHRob3VnaC4gRG9lcyB0aGlz
IGJvYXJkCj4gbWF5YmUgaGF2ZSBzb21lIGFjdHVhbCBwcm9kdWN0IG5hbWUgb3IgaXMgaXQgcmVh
bGx5IGp1c3QgY2FsbGVkCj4gImNhcnJpZXJib2FyZCI/IDotKQoKVHJ1ZSwgSSBmZWx0IHRoZSBz
YW1lLiBKdXN0IG5vdyBUb20gaGFzIG5hbWVkIHRoaXMgYXMgJ0RhbGFuZyBDYXJyaWVyCmJvYXJk
JyBzbyB3ZSBjYW4gaGF2ZSByb2NrY2hpcC1yYWR4YS1kYWxhbmcuZHRzaSBvcgpyb2NrY2hpcC1y
YWR4YS1kYWxhbmctY2Fycmllci5kdHNpIGFzIGZpbGUgbmFtZXMuIG9yIGxldCBtZSBrbm93IGlm
CnlvdSBoYXZlIGFueSBzdWdnZXN0aW9ucyBvbiB0aGUgZmlsZSBuYW1lPwoKSmFnYW4uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
