Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A76334C46
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ui1OxOB6GPri1v5RFOKDdlzIBEreKNZnwASz6OVWL6E=; b=rglikObIQrETxB
	OkkJZY2tbKpaBhwBRevC5olMDhQTEWxGFeTly48ojSLvP1M/Xg904dfIN65NcJQNa0nTLDK1tS+Z5
	6GxSpu76ZDdytED2/Ic4tBzYigRZPbI9D9VsERX5m8SyHGfOmdJNLSM3EgSgX+9eH5jaoBIK6ibyA
	f6xoHifolZdY3XxQCWwVGF4AmFBg8PyZDtvXbvKmbnzPw1xu0gHPgzDUsPlh1IFDNfhuLMbhDinzo
	+eycw81kA/ibnlMzTHsz2yBImHOVoaq9OvdlL7p/N58fTwD9i9HklyEB9UuS7eFQxZM8wp2aK3N/+
	rqCQOcIp9rkNe5IgepIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBPN-00088i-I2; Tue, 04 Jun 2019 15:31:29 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBPF-000883-VR
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:31:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1559662280; bh=EgCgHGDKwboiv0UTlsIJuwh5ONrmLYgSafz06T59WVc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RiaHoyT1bOO4eDbEJwSmZxhlVlH/Q9XrhCS1R3LZitSO1roMFHNNsrSUmmyXIs5si
 mst7ZKRw9TbIdERakMAJEUE1Peemsz5RJfrruG9pBwtEDQiAoy1qrF9MIwUIdizIKN
 3bdXmfqHi0FEdEmQ6XLHljKyVzUifByzAHuLYUxg=
Date: Tue, 4 Jun 2019 17:31:20 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH] clk: sunxi-ng: sun50i-h6-r: Fix incorrect
 W1 clock gate register
Message-ID: <20190604153120.zcxfn4kh2qjfktgo@core.my.home>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20522585.shqbOC0eQD@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_083122_175617_6B88EDE6 
X-CRM114-Status: GOOD (  10.97  )
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

SGkgSmVybmVqLAoKT24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMDU6MDM6NTVQTSArMDIwMCwgSmVy
bmVqIMWga3JhYmVjIHdyb3RlOgo+IERuZSB0b3JlaywgMDQuIGp1bmlqIDIwMTkgb2IgMTc6MDA6
NTQgQ0VTVCBqZSBtZWdvdXMgdmlhIGxpbnV4LXN1bnhpIAo+IG5hcGlzYWwoYSk6Cj4gPiBGcm9t
OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+IAo+ID4gVGhlIGN1cnJlbnQg
Y29kZSBkZWZpbmVzIFcxIGNsb2NrIGdhdGUgdG8gYmUgYXQgMHgxY2MsIG92ZXJsYXlpbmcgaXQK
PiA+IHdpdGggdGhlIElSIGdhdGUuCj4gPiAKPiA+IENsb2NrIGdhdGUgZm9yIHItYXBiMS13MSBp
cyBhdCAweDFlYy4gVGhpcyBmaXhlcyBpc3N1ZXMgd2l0aCBJUiByZWNlaXZlcgo+ID4gY2F1c2lu
ZyBpbnRlcnJ1cHQgZmxvb2RzIG9uIEg2IChiZWNhdXNlIGludGVycnVwdCBmbGFncyBjYW4ndCBi
ZSBjbGVhcmVkLAo+ID4gZHVlIHRvIElSIG1vZHVsZSdzIGJ1cyBiZWluZyBkaXNhYmxlZCkuCj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+
IAo+IFlvdSBzaG91bGQgYWRkIEZpeGVzIHRhZyBhbmQgQ0Mgc3RhYmxlIHdpdGggdGhpcy4KCk5v
dCBuZWNlc3NhcnksIHNpbmNlIEg2IElSIGlzIG5vdCB5ZXQgc3VwcG9ydGVkIG9uIG1haW5saW5l
LgoKcmVnYXJkcywKCW8uCgo+IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKPiAKPiAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
