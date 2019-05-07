Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A4415F8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5p5NmFgMIyRuIEx8Rq4eGUiD1CK7pujTmKWljKCaaUk=; b=bhrO1tiLaiWluW
	aW8RPS65A6VgWbmFqJGZLxdNx2ItAg2kHUd5z+fCis2mDXtUqp1WzlBBltmWYk2SE3h+xxdGJebGc
	+qFjrW8V0kIp4TxK/EFmN+bYoXiTZcOeMmLlEHGYVXEzpLepprkMDnkAXQrpWg73QJ4n3pdoL9uMa
	P/JIx4/mPbu2QYMIlcjOEH4nvuGQPVIOWSHz/TymBKvT7OsnzOS488n/unlW5AXNt/5nTdgUklirq
	K5ysKasUcyvIokyHesIk7FDwmL9R19IxzL/kKHk+YGkLduWmyJdWcMX4y/pCM0/IR0k7kd+ElL2R+
	EfPqtrOUZTaqVsLF28cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvdP-0006Ew-Mp; Tue, 07 May 2019 08:39:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvdF-0006Dj-Mv; Tue, 07 May 2019 08:39:28 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C739A5D6B;
 Tue,  7 May 2019 10:39:20 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 878559c4;
 Tue, 7 May 2019 10:39:19 +0200 (CEST)
Date: Tue, 7 May 2019 10:39:18 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Message-ID: <20190507083918.GI81826@meh.true.cz>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
 <20190507071914.GJ2269@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507071914.GJ2269@kadam>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_013926_051464_8B0A2CC3 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPiBbMjAxOS0wNS0wNyAxMDox
OToxNF06CgpIaSwKCj4gT24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMTE6MjQ6NDNQTSArMDIwMCwg
UGV0ciDFoHRldGlhciB3cm90ZToKPiA+IAo+ID4gdGhpcyBwYXRjaCBzZXJpZXMgaXMgYW4gYXR0
ZW1wdCB0byBmaXggdGhlIG1lc3MsIEkndmUgc29tZWhvdyBtYW5hZ2VkIHRvCj4gPiBpbnRyb2R1
Y2UuCj4gPiAKPiA+IEZpcnN0IHBhdGNoIGluIHRoaXMgc2VyaWVzIGlzIGRlZmFjdG8gdjUgb2Yg
dGhlIHByZXZpb3VzIDA1LzEwIHBhdGNoIGluIHRoZQo+ID4gc2VyaWVzLCBidXQgc2luY2UgdGhl
IHY0IG9mIHRoaXMgMDUvMTAgcGF0Y2ggd2Fzbid0IHBpY2tlZCB1cCBieSB0aGUKPiA+IHBhdGNo
d29yayBmb3Igc29tZSB1bmtub3duIHJlYXNvbiwgdGhpcyBwYXRjaCB3YXNuJ3QgYXBwbGllZCB3
aXRoIHRoZSBvdGhlcgo+ID4gOSBwYXRjaGVzIGluIHRoZSBzZXJpZXMsIHNvIEknbSByZXNlbmRp
bmcgaXQgYXMgYSBzZXBhcmF0ZSBwYXRjaCBvZiB0aGlzCj4gPiBmaXh1cCBzZXJpZXMgYWdhaW4u
Cj4gCj4gSSBmZWVsIHNvcnQgb2YgcmlkaWN1bG91cyBhc2tpbmcgdGhpcyBvdmVyIGFuZCBvdmVy
Li4uICBNYXliZSB5b3VyIHNwYW0KPiBmaWx0ZXIgaXMgZWF0aW5nIG15IGVtYWlscz8KCm5vcGUs
IEkndmUgcmVhZCB5b3VyIGVtYWlsLCB0aGF0J3MgdGhlIG9ubHkgcmVhc29uIEkndmUgc2VudCBv
dXQgdGhpcyB2MiB3aGljaAphZGRlZCBGaXhlczogdGFnIHlvdSd2ZSBzdWdnZXN0ZWQgaW4geW91
ciBlbWFpbC4KCj4gVGhpcyBidWcgd2FzIGludHJvZHVjZWQgaW4gaHR0cHM6Ly9wYXRjaHdvcmsu
b3psYWJzLm9yZy9wYXRjaC8xMDk0OTE2Lwo+ICJbdjQsMDEvMTBdIG9mX25ldDogYWRkIE5WTUVN
IHN1cHBvcnQgdG8gb2ZfZ2V0X21hY19hZGRyZXNzIiBidXQgaXQKPiBsb29rcyBsaWtlIG5vIG9u
ZSBhcHBsaWVkIGl0LgoKdGhpcyBwYXRjaCBzZXJpZXMgaXMgYWdhaW5zdCBuZXQtbmV4dCwgYW5k
IEkndmUgYWRkZWQgRml4ZXM6IHRhZyBhcyB5b3UndmUKcmVxdWVzdGVkIGluIHRoaXMgdjIgc2Vy
aWVzWzFdICh3aGljaCBleHBhbmRzIHRvIGNvbW1pdFsyXSBpbiBuZXQtbmV4dCk6CgogRml4ZXM6
IGQwMWY0NDljMDA4YSAoIm9mX25ldDogYWRkIE5WTUVNIHN1cHBvcnQgdG8gb2ZfZ2V0X21hY19h
ZGRyZXNzIikKCj4gWW91J3JlIGFjdGluZyBhcyBpZiBpdCAqd2FzKiBhcHBsaWVkIGJ1dCB5b3Ug
cmVmdXNlIHRvIGFuc3dlciBteQo+IHF1ZXN0aW9uIHdobyBhcHBsaWVkIGl0IGFuZCB3aGljaCB0
byB3aGljaCB0cmVlIHNvIEkgY2FuIGZpZ3VyZSBvdXQgd2hhdAo+IHdlbnQgd3JvbmcuCgppdCB3
YXMgYXBwbGllZFsyXSB0byBEYXZpZCdzIG5ldC1uZXh0IHRyZWUsIGJ1dCB1bmZvcnR1bmF0ZWx5
IHBhcnRpYWx5LCBqdXN0IDkKcGF0Y2hlcyBvdXQgb2YgMTAsIGFzIHRoZSBwYXRjaCAwNS8xMCBp
biB0aGF0IHNlcmllcyAod2hpY2ggaXMgcGF0Y2ggMS80IGluCnRoaXMgc2VyaWVzKSBuZXZlciBy
ZWFjaGVkIG5ldGRldiBtYWlsaW5nIGxpc3QgYW5kIHBhdGNod29yaywgcHJvYmFibHkgYmVjYXVz
ZQpvZiBzb21lIG5ldGRldiBtYWlsaW5nIGxpc3Qgc29mdHdhcmUgYW5kL29yIHBhdGNod29yayBo
aWNjdXAsIHZlcnkgbGlrZWx5IGR1ZQp0byB0aGUgbG9uZyBsaXN0IG9mIHJlY2lwaWVudHMgaW4g
dGhhdCBwYXRjaCBhbmQgYXMgSSdtIG5vdCBzdWJzY3JpYmVkIHRvIHRoZQpuZXRkZXYgKGR1ZSB0
byB0aGUgaGlnaCB0cmFmZmljKSBJJ20gcHJvYmFibHkgdHJlYXRlbiBzb21laG93IGRpZmZlcmVu
dGx5LgoKU28gdG8gc3VtIGl0IHVwLCBJJ3ZlIHNpbXBseSB0aG91Z2h0LCB0aGF0IGl0IHdhcyBl
bm91Z2ggdG8gc2VuZCBvdXQgdjIgd2l0aAp0aGF0IEZpeGVzOiB0YWcgYW5kIGNvbnNpZGVyZWQg
aXQgZG9uZS4KCj4gSSBvbmx5IHNlZSBjb21tZW50cyBmcm9tIGxhc3QgRnJpZGF5IHRoYXQgaXQg
c2hvdWxkbid0IGJlIGFwcGxpZWQuLi4KCkknbSBzb3JyeSwgYnV0IHdoaWNoIGNvbW1lbnRzIGRv
IHlvdSBtZWFuIGV4YWN0bHk/IFRob3NlIGFib3V0IHRoZQpgbnZtZW0tbWFjLWFkZHJlc3NgIERU
IChzeXNmcykgZW50cnk/IElmIHRoYXQgaXMgdGhlIGNhc2UsIGZyb20gbXkgcG9pbnQgb2YKdmll
dywgSSd2ZSBwcm92aWRlZCByZWFzb25hYmxlIGFyZ3VtZW50cyBhbmQgbm9ib2R5IHRvbGQgbWUs
IHRoYXQgSSdtIHdyb25nCndpdGggbXkgcmVhc29uaW5nIG9yIE5BQ0tlZCB0aGlzIGV4cGxpY2l0
bHksIHNvIERhdmlkIHByb2JhYmx5IGNvbnNpZGVyZWQgbXkKYXJndW1lbnRzIGdvb2QgZW5vdWdo
IGFuZCBtZXJnZWQgaXQgYXMgaXQgaXM/IEkgZG9uJ3QgaGF2ZSBhbnkgb3RoZXIKZXhwbGFuYXRp
b24uCgo+IEkgYWxzbyB0b2xkIHlvdSBvbiBGcmlkYXkgaW4gYSBkaWZmZXJlbnQgdGhyZWFkIHRo
YXQgdGhhdCBwYXRjaCBzaG91bGRuJ3QgYmUKPiBhcHBsaWVkLiAgQnJlYWtpbmcgZ2l0IGJpc2Vj
dCBpcyBhIGJ1ZywgYW5kIHdlIG5ldmVyIGRvIHRoYXQuIAoKWWVzLCBhbmQgSSBhZ3JlZSB3aXRo
IHlvdSwgYnV0IEkndmUgc2ltcGx5IHRob3VnaHQsIHRoYXQgaWYgYW55IG9mIHRoZQptYWludGFp
bmVycyB3aG8gcHJldmlvdXNseSByZXZpZXdlZCB0aGUgc2VyaWVzIGRpZG4ndCBvYmplY3RlZCBh
Ym91dCB0aGlzLAp0aGF0IHRoZXkncmUgcG9zc2libHkgZ29pbmcgdG8gc3F1YXNoIHRob3NlIHBh
dGNoZXMgYnkgdGhlbXNlbHZlcyBkdXJpbmcgdGhlCm1lcmdpbmcgcHJvY2VzcyBvciB0aGF0IHRo
ZXkncmUgZ29pbmcgdG8gdGVsbCBtZSB0byBkbyBzbyBhbmQgSSB3b3VsZCBhZGRyZXNzCnRoaXMg
aW4gdGhlIGxhdGVzdCBpbnRlcmF0aW9uIG9mIHRoZSBwYXRjaHNldCBiZWZvcmUgbWVyZ2UuCgpB
bnl3YXksIGlzIHRoZXJlIGFueSBwb3NzaWJpbGl0eSBob3cgdG8gZml4IHRoYXQgbm93PwoKPiBJ
J20ganVzdCB2ZXJ5IGNvbmZ1c2VkIHJpZ2h0IG5vdy4gIFdoYXQgSSdtIHRyeWluZyB0byBkbyBp
cyBmaWd1cmUgb3V0IGluCj4gbXkgaGVhZCBob3cgdGhpcyBwcm9jZXNzIGZhaWxlZCBzbyB3ZSBj
YW4gZG8gYmV0dGVyIG5leHQgdGltZS4KCkknbSBqdXN0IG9jY2FzaW9uYWwgY29udHJpYnV0b3Is
IHNvIEknbSBzb3JyeSwgYnV0IEkgY2FuIGhhcmRseSBwcm92aWRlIGFueQppbnB1dC4KCjEuIGh0
dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTA5NjA1NC8KMi4gaHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZGF2ZW0vbmV0LW5leHQuZ2l0L2Nv
bW1pdC8/aWQ9ZDAxZjQ0OWMwMDhhM2Y0MWZhNDRjNjAzZTI4YTc0NTJhYjhmOGU2OAoKQ2hlZXJz
LAoKUGV0cgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
