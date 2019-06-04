Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953E234C77
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/yRdWY8cN7KCyF1b2ml2lIiarbSFcoIUfeAMXXGvrk=; b=ry9mG7EzIyrooe
	9GhZQCxIGtloke0fvbklyMK37sQijV+ev/cfdWq4IuiMPeT2KCXEtfYSONeCVC3+NNfschS7svK5h
	ZxXX8CKYm2GSqDTd3dZZVQlEbTFe/HkKcK4ELBb0z7GfErga8qbb3pgFSqCo1O6FLMDR2ZXUMiddp
	KwknUCU1GntPXM1PkTBzMUHcNE6mp5iwmz3X0397IhUDPsICxTXXiv9r9BPDiJCsIUuZpn/3cFnFv
	qz4DI/ZmEBw5P1npXdNTGayR+yf7FMwRQQPJSnrRoHUHamlrEiLgoMJisTlE60Wire2WFohD5WlGg
	zTysJ9I3T5nUWSvzq0qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBZk-0004Uw-EA; Tue, 04 Jun 2019 15:42:12 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBZ0-0003jc-4o
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:41:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1559662884; bh=QKcBPWY3CbkjfYN89rLEZysY97rw4wPAuVtD6U6xPrg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m3ngXj4qq1GciQjkwDqUoYqSmjqED0N54diMTYXwe3lWOM52GaID2qkX7+cE/wroZ
 KD+HABGKCwc431teBRH27R/UH8Yj2NZa2otOhUErymlHORylXTsDPB5gjmYltRSfVL
 vqIlAry4sXUPqEW7ue6gnlmOHvTEkIC1u3qYXZKs=
Date: Tue, 4 Jun 2019 17:41:24 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH] clk: sunxi-ng: sun50i-h6-r: Fix incorrect
 W1 clock gate register
Message-ID: <20190604154124.lalh3uhshx43l3rs@core.my.home>
Mail-Followup-To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 linux-sunxi@googlegroups.com,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
References: <20190604150054.17683-1-megous@megous.com>
 <20522585.shqbOC0eQD@jernej-laptop>
 <20190604153120.zcxfn4kh2qjfktgo@core.my.home>
 <2504206.OUqqUFhxAD@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2504206.OUqqUFhxAD@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_084127_148015_9B83DD7B 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-sunxi@googlegroups.com,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gSmVybmVqLAoKT24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMDU6MzU6NDhQTSArMDIwMCwg
SmVybmVqIMWga3JhYmVjIHdyb3RlOgo+IEhpIQo+IAo+IERuZSB0b3JlaywgMDQuIGp1bmlqIDIw
MTkgb2IgMTc6MzE6MjAgQ0VTVCBqZSAnT25kxZllaiBKaXJtYW4nIHZpYSBsaW51eC1zdW54aSAK
PiBuYXBpc2FsKGEpOgo+ID4gSGkgSmVybmVqLAo+ID4gCj4gPiBPbiBUdWUsIEp1biAwNCwgMjAx
OSBhdCAwNTowMzo1NVBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiA+IERuZSB0
b3JlaywgMDQuIGp1bmlqIDIwMTkgb2IgMTc6MDA6NTQgQ0VTVCBqZSBtZWdvdXMgdmlhIGxpbnV4
LXN1bnhpCj4gPiA+IAo+ID4gPiBuYXBpc2FsKGEpOgo+ID4gPiA+IEZyb206IE9uZHJlaiBKaXJt
YW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gPiA+IAo+ID4gPiA+IFRoZSBjdXJyZW50IGNvZGUg
ZGVmaW5lcyBXMSBjbG9jayBnYXRlIHRvIGJlIGF0IDB4MWNjLCBvdmVybGF5aW5nIGl0Cj4gPiA+
ID4gd2l0aCB0aGUgSVIgZ2F0ZS4KPiA+ID4gPiAKPiA+ID4gPiBDbG9jayBnYXRlIGZvciByLWFw
YjEtdzEgaXMgYXQgMHgxZWMuIFRoaXMgZml4ZXMgaXNzdWVzIHdpdGggSVIgcmVjZWl2ZXIKPiA+
ID4gPiBjYXVzaW5nIGludGVycnVwdCBmbG9vZHMgb24gSDYgKGJlY2F1c2UgaW50ZXJydXB0IGZs
YWdzIGNhbid0IGJlCj4gPiA+ID4gY2xlYXJlZCwKPiA+ID4gPiBkdWUgdG8gSVIgbW9kdWxlJ3Mg
YnVzIGJlaW5nIGRpc2FibGVkKS4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRy
ZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+ID4gCj4gPiA+IFlvdSBzaG91bGQgYWRk
IEZpeGVzIHRhZyBhbmQgQ0Mgc3RhYmxlIHdpdGggdGhpcy4KPiA+IAo+ID4gTm90IG5lY2Vzc2Fy
eSwgc2luY2UgSDYgSVIgaXMgbm90IHlldCBzdXBwb3J0ZWQgb24gbWFpbmxpbmUuCj4gCj4gV2Vs
bCwgQ0Npbmcgc3RhYmxlIGlzIHByb2JhYmx5IHJlYWxseSBub3QgbmVjZXNzYXJ5LCBidXQgeW91
IGFyZSBmaXhpbmcgYnVnIGluIAo+IGV4aXN0aW5nIGRyaXZlciAoY2xrKSwgZml4ZXMgdGFnIHN0
aWxsIGFwcGx5LgoKUmlnaHQsIHJlc2VudCB2Mi4KCnRoYW5rIHlvdSBhbmQgcmVnYXJkcywKCW8u
Cgo+IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKPiAKPiA+IAo+ID4gcmVnYXJkcywKPiA+IAlvLgo+
ID4gCj4gPiA+IEJlc3QgcmVnYXJkcywKPiA+ID4gSmVybmVqCj4gPiA+IAo+ID4gPiAKPiA+ID4g
Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
PiA+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiA+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiAKPiAKPiAKPiAKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
