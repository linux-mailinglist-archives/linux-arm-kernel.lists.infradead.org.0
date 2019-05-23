Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B202871F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 21:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELZFtnCiFAyyyfelOcWVAlNiJjsFbY5kQ22P0KgVpZI=; b=HkjntbIHDcG0jO
	XkGDv6O25doJet+7j+tgeidgzcJUh6r3LaNSSWgO74bWfjR7aJyQV2g3abQjZjH3wxIBhBwuKbbrU
	nqH+bpmUMhuYQWMoaadAJsRbi3iG3GRjp+CBGtMZmNfBXZRZT3dvvf7W8UAyhuj3XzTJcpEafJWVz
	cXOFxUexIr3sYiqG6ulOW+D4eLPpEQp6WuqFgYA3mIux4TTSDUi184r2IVvOZiNEda5ifWGVCSe7M
	R1Fep24gS1VLmEDuxJ+E68pfrshqbH7wWweom53rPL1V2X9mPCybdac14sNNbhYwlnS/gTPmJt8bB
	pLJwx9My7i+Wx6kkiYiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTtEw-00026d-6c; Thu, 23 May 2019 19:18:58 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtEp-000269-GU
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 19:18:52 +0000
Received: by mail-lf1-x142.google.com with SMTP id y13so5202352lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 12:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7Xq8hDRQty0iPHxqWBmFMiHP5/NEYwgv6qrN0Vc4nP8=;
 b=ElJnN4SIqyVX33y7h7nGUs3agYvp1XeedQRemgpNbRIk5YlpyMiZcdC55lWgxLgh11
 KGA9kvQoiXXYs/58eF04FaDku2dDlD83wtRBSt+M6G1ZAh4arkTz+KAL9TD9eCPYRb/s
 Ml/yCA3Aye5kHbDL64GQjMNXaH7xxCsjKFKk57fS61mAwZZbM5zYQIgvTjCECVGeIZvS
 Vu8BchtkGC9SqVmc9zM+HUOnm3qts+3oDP4vc86hWfjkeMINYmjeEB+owqaNfIjKGnt1
 gaT8dQa9c8myhvRDjgnSpTJpspt1aTRyCZ621kdINUkw1wzbTQr7dwLOXa4U8fvDlT2D
 Gyvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7Xq8hDRQty0iPHxqWBmFMiHP5/NEYwgv6qrN0Vc4nP8=;
 b=JSe+N9VHdC8AMyD6aSjv3QordGJHejiXWTECLBgK71wIkrrFyEmzkBizBeKHaK4v7s
 r6SbOLqHTjJ248cmfxVHicFGTmoGudLUZ3YZVPwX814FKxb73MuQIlMC8gOtiUveU88h
 NiVuYdUz3LWFMaCwsPbVPRTFwjvM67oL793z6eHzHXw6KnzAp0tl9ZTiilD5Gmb314IV
 H71Xd9r8C5vF/egHZe5vhsHIts9RvDX+BNx5Ai49p+nSe+BSQhSvcUBEmdejxPKVtbkR
 kanbB3xScCuyNwQzI3XJb7zUaA9withMw3rTpbh9a9N7/nvgo04ngvGGCspHeamttOTw
 hLOA==
X-Gm-Message-State: APjAAAWRMLpgTwglgga7HJPTaf3ug4fkiZtCN1QzPCev3sXsm3rh3fuM
 WxCXMvXgWQP98q9WVblVeLmzPJAThKi84MOXGji7oA==
X-Google-Smtp-Source: APXvYqw1XbYiFz5hQUalCxrVjKiO6TIO71hT0hyMX6W3pIGmpBG9+vju9MG+sHieuLq/jz7BZlnOc90KWMXZK2Bxibs=
X-Received: by 2002:a19:189:: with SMTP id 131mr46796309lfb.74.1558639129364; 
 Thu, 23 May 2019 12:18:49 -0700 (PDT)
MIME-Version: 1.0
References: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
 <20190522054833.GB4574@dell> <eb8425ec-989a-9701-7fee-61bd1d2b93c1@st.com>
 <20190522084133.GF4574@dell> <bc1b5f1d-23b0-141d-f58f-b54ac303fe20@st.com>
 <CACRpkdYmdpwEvCBrL6i1V+Zxd0OSpZmD8BJPSZu9jYNeJkoimQ@mail.gmail.com>
 <08ea97544018430caf53af36677902b7@SFHDAG3NODE2.st.com>
In-Reply-To: <08ea97544018430caf53af36677902b7@SFHDAG3NODE2.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 May 2019 21:18:37 +0200
Message-ID: <CACRpkdZLbMJ5dKiL9J1x=PozBVH777kNNABZi-n0LxD0BOp8mw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
To: Amelie DELAUNAY <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_121851_556617_EA4A5743 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgNDoxMSBQTSBBbWVsaWUgREVMQVVOQVkgPGFtZWxpZS5k
ZWxhdW5heUBzdC5jb20+IHdyb3RlOgo+IE9uIDUvMjIvMTkgMTE6NDggUE0sIExpbnVzIFdhbGxl
aWogd3JvdGU6Cj4gPiBPbiBXZWQsIE1heSAyMiwgMjAxOSBhdCAxMToyMSBBTSBBbWVsaWUgREVM
QVVOQVkgPGFtZWxpZS5kZWxhdW5heUBzdC5jb20+IHdyb3RlOgo+ID4KPiA+PiAuLi9kcml2ZXJz
L3BpbmN0cmwvcGluY3RybC1zdG1meC5jOjQwOToyMDogZXJyb3I6Cj4gPj4g4oCYcGluY29uZl9n
ZW5lcmljX2R0X25vZGVfdG9fbWFwX3BpbuKAmSB1bmRlY2xhcmVkIGhlcmUgKG5vdCBpbiBhIGZ1
bmN0aW9uKQo+ID4+ICAgICAuZHRfbm9kZV90b19tYXAgPSBwaW5jb25mX2dlbmVyaWNfZHRfbm9k
ZV90b19tYXBfcGluLAo+ID4+Cj4gPj4gT0ZfR1BJTyBkZXBlbmRzIG9uIE9GLgo+ID4+Cj4gPj4g
U28gZWl0aGVyCj4gPj4gICAgICAgZGVwZW5kcyBvbiBPRiB8fCAoT0YgJiYgQ09NUElMRV9URVNU
KQo+ID4+IG9yCj4gPj4gICAgICAgZGVwZW5kcyBvbiBPRiB8fCAoT0ZfR1BJTyAmJiBDT01QSUxF
X1RFU1QpCj4gPj4KPiA+PiBhbmQKPiA+Pgo+ID4+ICAgICAgIHNlbGVjdCBPRl9HUElPCj4gPgo+
ID4gSSB3b3VsZCB1c2UganVzdDoKPiA+Cj4gPiBkZXBlbmRzIG9uIE9GX0dQSU8KPiA+Cj4gPiBC
ZWNhdXNlIE9GX0dQSU8gYWxyZWFkeSBkZXBlbmRzIG9uIE9GLCBhbmQKPiA+IGNvbXBpbGUgdGVz
dHMgd2lsbCBub3Qgd29yayB3aXRob3V0IE9GX0dQSU8gd2hpY2gKPiA+IHJlcXVpcmUgT0Ygc28u
Li4KPiA+Cj4gPiBCZXNpZGVzIGl0IGlzIHdoYXQgbW9zdCBvdGhlciBHUElPIGRyaXZlcnMgZG8u
Cj4gPgo+ID4gU28ganVzdCBrZWVwIHRoYXQgb25lIGxpbmUgYW5kIGRyb3AgdGhlIHJlc3QuCj4g
Pgo+ID4gWW91cnMsCj4gPiBMaW51cyBXYWxsZWlqCj4gPgo+Cj4gT2sgc28gSSBjYW4gZ2V0IHJp
ZCBvZiBDT01QSUxFX1RFU1QgPwo+ICAgICAgICAgZGVwZW5kcyBvbiBJMkMKPiAgICAgICAgIGRl
cGVuZHMgb24gT0ZfR1BJTwo+ICAgICAgICAgc2VsZWN0IEdFTkVSSUNfUElOQ09ORgo+ICAgICAg
ICAgc2VsZWN0IEdQSU9MSUJfSVJRQ0hJUAo+ICAgICAgICAgc2VsZWN0IE1GRF9TVE1GWAoKWWVw
IGp1c3QgbGlrZSB0aGF0LgoKPiBCZWNhdXNlIEkndmUgbm8gYXJjaCB0byBiYWxhbmNlIENPTVBJ
TEVfVEVTVC4gT3IgbWF5YmUgc29tZXRoaW5nIGxpa2UKPiAgICAgICAgIGRlcGVuZHMgb24gT0Zf
R1BJTyAmJiAoT0YgfHwgQ09NUElMRV9URVNUKQo+IGV2ZW4gaWYgT0ZfR1BJTyAmJiBPRiBpcyBy
ZWR1bmRhbnQgPwoKQ09NUElMRV9URVNUIGlzIGp1c3QgdG8gbWFrZSBzb21ldGhpbmcgYXZhaWxh
YmxlIGZvciB0ZXN0aW5nCm9uIG90aGVyIGFyY2hpdGVjdHVyZXMsIHN1Y2ggYXMgdGVzdGluZyBB
Uk0tc3BlY2lmaWMgZHJpdmVycwpvbiB4ODYuCgpXaXRoIGp1c3QgT0ZfR1BJTyBhcyBkZXBlbmRl
bmN5LCBpdCB3aWxsIGJlIGNvbXBpbGUgdGVzdGVkIGFueXdheXMKYmVjYXVzZSB4ODYgYWxseWVz
Y29uZmlnIHdpbGwgZW5hYmxlIE9GIGFuZCBPRl9HUElPLCBhbmQgYWxzbwphbGwgdGhlIFNUTUZY
IGRyaXZlcnMuCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
