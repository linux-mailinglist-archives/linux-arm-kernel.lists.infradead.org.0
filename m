Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EC619BBBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 08:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=STmLMff2KCXwjeCq3jewTpQw9JXwTeO7ZDwCGNjFklY=; b=YglnJUqrYfXQQArJJy+7ZdX4t
	iMmQMwGuiuQ6IH27A60aiYUMa6cgqQ1m1Yyax++j/mFrFnWx9XuRhM75LEGeNkeaYeOn0Ovt/les6
	voWkdxXEikG0iv18N4Fkv5euA/0nRj94jTRXMGZGG0vKUGH4eYt0BXJVHhp9Qdttj1uBRJOZ/ybk2
	gH0r61v94fnREu1qNk41pGiUECfRxrA1d6ODFEpmXNDnS4m2XsdooQbpsKw7qFDA6G4t9+CZnL/yi
	3BaZAKm6Ng856REQBuW6TBNMcWhTb4C1PxMP693/Zwrw2oxa1AoXqJqR22Hheh1ff4D8G/8Y8XOdB
	XJmzhuZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJtRf-00050V-DI; Thu, 02 Apr 2020 06:35:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJtRZ-0004zq-DJ; Thu, 02 Apr 2020 06:35:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id AC1E528ED5B
Subject: Re: [PATCH v2 2/2] clk: rockchip: rk3288: Handle clock tree for
 rk3288w
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20200401153513.423683-1-mylene.josserand@collabora.com>
 <20200401153513.423683-3-mylene.josserand@collabora.com>
 <CAMuHMdXvFOKqmZ-MLJV4SAeLN-PDzqPvMvbVpcD=jyip9tbdnA@mail.gmail.com>
From: Mylene Josserand <mylene.josserand@collabora.com>
Message-ID: <7c21a7d6-a24f-dbc6-4eaa-548ddfc0f73e@collabora.com>
Date: Thu, 2 Apr 2020 08:35:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXvFOKqmZ-MLJV4SAeLN-PDzqPvMvbVpcD=jyip9tbdnA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_233513_581031_BA46DEBE 
X-CRM114-Status: GOOD (  22.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kever.yang@rock-chips.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VlcnQsCgpPbiA0LzEvMjAgNjo1NiBQTSwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
IEhpIE15bMOobmUsCj4gCj4gT24gV2VkLCBBcHIgMSwgMjAyMCBhdCA1OjM1IFBNIE15bMOobmUg
Sm9zc2VyYW5kCj4gPG15bGVuZS5qb3NzZXJhbmRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+IFRo
ZSByZXZpc2lvbiByazMyODh3IGhhcyBhIGRpZmZlcmVudCBjbG9jayB0cmVlIGFib3V0Cj4+ICJo
Y2xrX3ZpbyIgY2xvY2ssIGFjY29yZGluZyB0byB0aGUgQlNQIGtlcm5lbCBjb2RlLgo+Pgo+PiBU
aGlzIHBhdGNoIGhhbmRsZXMgdGhpcyBkaWZmZXJlbmNlIGJ5IGRldGVjdGluZyB3aGljaCBTT0Mg
aXQgaXMKPj4gYW5kIGNyZWF0aW5nIHRoZSBkaXYgYWNjb3JkaW5nbHkuIEJlY2F1c2Ugd2UgYXJl
IHVzaW5nCj4+IHNvY19kZXZpY2VfbWF0Y2ggZnVuY3Rpb24sIHdlIG5lZWQgdG8gZGVsYXkgdGhl
IHJlZ2lzdHJhdGlvbgo+PiBvZiB0aGlzIGNsb2NrIGxhdGVyIHRoYW4gb3RoZXJzIHRvIGhhdmUg
dGltZSB0byBnZXQgU29DIHJldmlzaW9uLgo+Pgo+PiBPdGhlcndpc2UsIGJlY2F1c2Ugb2YgQ0xL
X09GX0RFQ0xBUkUgdXNlcywgY2xvY2sgdHJlZSB3aWxsIGJlCj4+IGNyZWF0ZWQgdG9vIHNvb24g
dG8gaGF2ZSB0aW1lIHRvIGRldGVjdCBTb0MncyByZXZpc2lvbi4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogTXlsw6huZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRAY29sbGFib3JhLmNvbT4KPiAK
PiBUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IQoKPiAKPj4g
LS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzI4OC5jCj4+ICsrKyBiL2RyaXZlcnMv
Y2xrL3JvY2tjaGlwL2Nsay1yazMyODguYwo+PiBAQCAtOTE0LDEwICs5MjMsMTUgQEAgc3RhdGlj
IHN0cnVjdCBzeXNjb3JlX29wcyByazMyODhfY2xrX3N5c2NvcmVfb3BzID0gewo+PiAgICAgICAg
ICAucmVzdW1lID0gcmszMjg4X2Nsa19yZXN1bWUsCj4+ICAgfTsKPj4KPj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3Qgc29jX2RldmljZV9hdHRyaWJ1dGUgcmszMjg4d1tdID0gewo+PiArICAgICAgIHsg
LnNvY19pZCA9ICJSSzMyeHgiLCAucmV2aXNpb24gPSAiUkszMjg4dyIgfSwKPj4gKyAgICAgICB7
IC8qIHNlbnRpbmVsICovIH0KPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBf
Y2xrX3Byb3ZpZGVyICpjdHg7Cj4+ICsKPj4gICBzdGF0aWMgdm9pZCBfX2luaXQgcmszMjg4X2Ns
a19pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4+ICAgewo+PiAtICAgICAgIHN0cnVjdCBy
b2NrY2hpcF9jbGtfcHJvdmlkZXIgKmN0eDsKPj4gLQo+PiAgICAgICAgICByazMyODhfY3J1X2Jh
c2UgPSBvZl9pb21hcChucCwgMCk7Cj4+ICAgICAgICAgIGlmICghcmszMjg4X2NydV9iYXNlKSB7
Cj4+ICAgICAgICAgICAgICAgICAgcHJfZXJyKCIlczogY291bGQgbm90IG1hcCBjcnUgcmVnaW9u
XG4iLCBfX2Z1bmNfXyk7Cj4+IEBAIC05NTUsMyArOTY5LDE3IEBAIHN0YXRpYyB2b2lkIF9faW5p
dCByazMyODhfY2xrX2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCkKPj4gICAgICAgICAgcm9j
a2NoaXBfY2xrX29mX2FkZF9wcm92aWRlcihucCwgY3R4KTsKPj4gICB9Cj4+ICAgQ0xLX09GX0RF
Q0xBUkUocmszMjg4X2NydSwgInJvY2tjaGlwLHJrMzI4OC1jcnUiLCByazMyODhfY2xrX2luaXQp
Owo+PiArCj4+ICtzdGF0aWMgaW50IF9faW5pdCByazMyODhfaGNsa3Zpb19yZWdpc3Rlcih2b2lk
KQo+PiArewo+IAo+IFRoaXMgZnVuY3Rpb24gd2lsbCBhbHdheXMgYmUgY2FsbGVkLCBldmVuIHdo
ZW4gcnVubmluZyBhIChtdWx0aS1wbGF0Zm9ybSkKPiBrZXJuZWwgb24gYSBub24tcmszMjg4IHBs
YXRmb3JtLiAgU28geW91IG5lZWQgc29tZSBwcm90ZWN0aW9uIGFnYWluc3QKPiB0aGF0LgoKZXJn
LCBnb29kIHBvaW50LCBJIGRpZG4ndCB0aGluayBhYm91dCB0aGF0LgoKPiAKPj4gKyAgICAgICAv
KiBDaGVjayBmb3IgdGhlIHJrMzI4OHcgcmV2aXNpb24gYXMgY2xvY2sgdHJlZSBpcyBkaWZmZXJl
bnQgKi8KPj4gKyAgICAgICBpZiAoc29jX2RldmljZV9tYXRjaChyazMyODh3KSkKPj4gKyAgICAg
ICAgICAgICAgIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlcyhjdHgsIHJrMzI4OHdfaGNs
a3Zpb19icmFuY2gsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgQVJSQVlfU0laRShyazMyODh3X2hjbGt2aW9fYnJhbmNoKSk7Cj4+ICsgICAgICAgZWxz
ZQo+PiArICAgICAgICAgICAgICAgcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzKGN0eCwg
cmszMjg4X2hjbGt2aW9fYnJhbmNoLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIEFSUkFZX1NJWkUocmszMjg4X2hjbGt2aW9fYnJhbmNoKSk7Cj4gCj4g
Tm90ZSB0aGF0IHNvY19kZXZpY2VfbWF0Y2goKSByZXR1cm5zIGEgc3RydWN0IHNvY19kZXZpY2Vf
YXR0cmlidXRlCj4gcG9pbnRlci4gIElmIHlvdSB3b3VsZCBzdG9yZSB0aGUgcm9ja2NoaXBfY2xr
X2JyYW5jaCBhcnJheSBwb2ludGVyIGFuZAo+IHNpemUgaW4gcmszMjg4d1suLi5dLmRhdGEgKGku
ZS4gYSBwb2ludGVyIHRvIGEgc3RydWN0IGNvbnRhaW5pbmcgdGhhdAo+IGluZm8pLCBmb3IgYm90
aCB0aGUgcjgzMjg4dyBhbmQgbm9ybWFsIHJrMzI4OCB2YXJpYW50cywgeW91IGNvdWxkCj4gc2lt
cGxpZnkgdGhpcyB0bzoKPiAKPiAgICAgIGF0dHIgPSBzb2NfZGV2aWNlX21hdGNoKHJrMzI4OHcp
Owo+ICAgICAgaWYgKGF0dHIpIHsKPiAgICAgICAgICAgICAgc3RydWN0IHJrMzI4OF9icmFuY2hf
YXJyYXkgKnAgPSBhdHRyLT5kYXRhOwo+ICAgICAgICAgICAgICByb2NrY2hpcF9jbGtfcmVnaXN0
ZXJfYnJhbmNoZXMoY3R4LCBwLT5icmFuY2hlcywgcC0+bGVuKTsKPiAgICAgIH0KPiAKPiBUaGF0
IHdvdWxkIGhhbmRsZSB0aGUgbm90LXJ1bm5pbmctb24tcmszMjg4IGlzc3VlIGFzIHdlbGwuCgpO
aWNlLCB0aGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlvbiBhbmQgdGhlIGNvZGUsIHZlcnkgdXNl
ZnVsIDopCgpCZXN0IHJlZ2FyZHMsCgpNeWzDqG5lCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
