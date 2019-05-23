Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A576A2806F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S2RInK0LFiLkeOSgFrQvNf/94R+ht0twvxfUJGrBVk=; b=VRClUmcQK6QKXf
	nc41TU/LJUUe+El69wLzEfC3FGjMFnQ80mhsYJxuGm05DAVS4TWWq5sjuFHYF9wLhNcCu7DZblF6s
	+HOZsD7uQ9qC0LyRMPoYFXc5CnCYqJAbn0C+dAaIytyw3RXASG0p70+ki7A8qqmkL/X+3X1hM2aPB
	Jh8Dy2+PB/3yC/FjZ+zQpzxyN0aA4j9PpY/iS9gzza+w16baKixwimMfuEYGG4BD8UQKjqzv2kWYm
	pHEdSWhbiI5gfzwneF9QC8xdT8z/PgU6w7cMcHI1Nu9XQOfNuGSvyc9ZXY8LgrWP5VlRoxG4gKR5e
	vYXKlVjwzH3FiKPecT1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpEN-0001Qu-RS; Thu, 23 May 2019 15:02:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpEH-0001Q6-94
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:02:02 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hTpEA-0004Vh-Ob; Thu, 23 May 2019 17:01:54 +0200
Message-ID: <1558623713.2624.54.camel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mq-zii-ultra: Operate I2C at 100kHz
From: Lucas Stach <l.stach@pengutronix.de>
To: Angus Ainslie <angus@akkea.ca>
Date: Thu, 23 May 2019 17:01:53 +0200
In-Reply-To: <aea4106a575d0e623442c53cfd50917b@www.akkea.ca>
References: <20190513140259.17525-1-festevam@gmail.com>
 <1557756459.3997.4.camel@pengutronix.de>
 <aea4106a575d0e623442c53cfd50917b@www.akkea.ca>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_080201_472895_29828819 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>, cphealy@gmail.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gRG9ubmVyc3RhZywgZGVuIDIzLjA1LjIwMTksIDA2OjE5IC0wNzAwIHNjaHJpZWIgQW5ndXMg
QWluc2xpZToKPiBIaSBMdWNhcwo+IAo+IE9uIDIwMTktMDUtMTMgMDc6MDcsIEx1Y2FzIFN0YWNo
IHdyb3RlOgo+ID4gSGkgRmFiaW8sCj4gPiAKPiA+IEFtIE1vbnRhZywgZGVuIDEzLjA1LjIwMTks
IDExOjAyIC0wMzAwIHNjaHJpZWIgRmFiaW8gRXN0ZXZhbToKPiA+ID4gQWNjb3JkaW5nIHRvIHRo
ZSBpLk1YOE0gZXJyYXRhIGRvY3VtZW50IFsxXSwgdGhlcmUgaXMgYW4gSTJDIHNwZWMKPiA+ID4g
dmlvbGF0aW9uIHdoZW4gdGhlIEkyQyBjbG9jayBmcmVxdWVuY3kgaXMgNDAwIGtIejoKPiA+ID4g
Cj4gPiA+ICJlNzgwNTogSTJDOiBXaGVuIHRoZSBJMkMgY2xvY2sgc3BlZWQgaXMgY29uZmlndXJl
ZCBmb3IgNDAwIGtIeiwgdGhlCj4gPiA+IFNDTCBsb3cgcGVyaW9kIHZpb2xhdGVzIHRoZSBJMkMg
c3BlYyBvZiAxLjMgdVMgbWluIgo+ID4gPiBBdm9pZCB0aGlzIHByb2JsZW0gYnkgcnVubmluZyBJ
MkMgYXQgMTAwIGtIeiBpbnN0ZWFkLgo+ID4gCj4gPiBEb2VzIHRoaXMgZml4IGEgcmVhbCBidWc/
IFRoZSBzYW1lIGlzc3VlIGlzIHByZXNlbnQgd2l0aCB0aGUgaS5NWDYgSTJDCj4gPiBjb250cm9s
bGVycywgYnV0IHdlIGFyZSBzdGlsbCBydW5uaW5nIGEgbG90IG9mIGkyYyBidXNzZXMgb24gaS5N
WDYKPiA+IGJhc2VkIGJvYXJkcyBhdCA0MDBrSHosIHdpdGggbm8gaXNzdWVzIHdoYXRzb2V2ZXIu
Cj4gPiAKPiAKPiBXZSd2ZSBkZWZpbml0ZWx5IHNlZW4gaXNzdWVzIHJ1bm5pbmcgYXQgNDAwa0h6
IHdpdGggdGhlIGxpYnJlbTUgZGV2a2l0wqAKPiBhbmQgaXQncyB1c2luZyB0aGUgaS5NWDhNUS4K
CkknbSBub3QgY2xhaW1pbmcgdGhhdCB0aGUgZXJyYXR1bSB3aWxsIG5vdCBjYXVzZSBhbnkgaXNz
dWVzIG9uIGEgcmFuZG9tCnN5c3RlbSwgYXMgdGhhdCdzIG9idmlvdXNseSBkZXBlbmRlbnQgb24g
dGhlIGJvYXJkIGRlc2lnbiBhbmQgY29ubmVjdGVkCmkyYyBzbGF2ZXMuIEFsbCBJJ20gY2xhaW1p
bmcgaXMgdGhhdCB0aGUgaS5NWDYgaGFzIHRoZSBzYW1lIGVycmF0dW0gYW5kCiB3ZSBoYXZlIG5v
IGlzc3VlcyB3aXRoIHJ1bm5pbmcgdGhvc2UgYnVzc2VzIGF0IDQwMEtIeiBvbiB0aGUgUkRVMgpi
b2FyZCwgd2hpY2ggaXMgcHJldHR5IGNsb3NlIHRvIHRoZSBVbHRyYSBib2FyZCB0aGF0IGlzIGNo
YW5nZWQgYnkgdGhpcwpzcGVjaWZpYyBwYXRjaC4KCkJ1dCB0aGVuIElJUkMgeW91IGRvbid0IG5l
ZWQgdG8gcmVkdWNlIHRoZSBpMmMgc3BlZWQgYWxsIHRoZSB3YXkgdG8KMTAwS0h6IHRvIHdvcmsg
YXJvdW5kIHRoZSBsb3cgdGltZSB2aW9sYXRpb24uIFlvdSBvbmx5IG5lZWQgdG8gcmVkdWNlCml0
IHNsaWdodGx5IHRvIHRvIDM3NUtIeiB0byBnZXQgaW4gbGluZSB3aXRoIHRoZSBpMmMgc3BlYy4K
TW9zdCBvZiB0aGUgaTJjIGlzc3VlIEkndmUgc2VlbiBpbiB0aGUgd2lsZCBoYXZlIG5vdGhpbmcg
dG8gZG8gd2l0aCB0aGUKaG9zdCBjb250cm9sbGVyLCBidXQgYXJlIGNhdXNlZCBieSBpc3N1ZXMg
aW4gYm9hcmQgZGVzaWduLCBsaWtlIHdlYWsKcHVsbC11cHMgb3IgZ3JvdW5kIGJvdW5jZXMuCgpS
ZWdhcmRzLApMdWNhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
