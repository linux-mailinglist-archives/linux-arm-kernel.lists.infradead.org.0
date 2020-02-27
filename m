Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCA3171744
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSTg9OThzCJErZkEMXAUiJCPNAyg7jnUN2hfnhbgrXw=; b=eFAGlJJzLUGWgC
	PgZV2IeVWoymjFjog+oJOD2TFjvJyktdT9PywrRJUlLxRMo5O/nVY4ZH/RzPLw3X0eGDnRrICLou9
	++kWU79V8XT2n7pEQV5GWBcnoz1BZ9VjpRfXhzUrJoFUN/COy49tWxeFBg8XpmL1v6NFRADIdHOyp
	naTRCTuaIxa4XpjQdehTn9UT9W0ykqyOtJmilDB040sNjnxCSCiYTMgzWmImi3caSTUu9A2VB8ZTU
	VZn6sqr7rpGBeU1f6gXH4kgMpPkp/ybHVAxYxcpdMGzwrQjWZZmMF+uU+2c6bN8gCu1tmrJLCTPkR
	m6UMz+YN25hfAuugGO+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IMA-0006qh-3m; Thu, 27 Feb 2020 12:33:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ILy-0006pJ-5L
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:33:23 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j7ILr-00083D-5Z; Thu, 27 Feb 2020 13:33:15 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j7ILq-0005l7-Ir; Thu, 27 Feb 2020 13:33:14 +0100
Date: Thu, 27 Feb 2020 13:33:14 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH 1/1] pwm: mediatek: add longer period support
Message-ID: <20200227123314.mkg6jqai64b3paxw@pengutronix.de>
References: <1582789610-23133-1-git-send-email-sam.shih@mediatek.com>
 <1582789610-23133-2-git-send-email-sam.shih@mediatek.com>
 <20200227080450.rkvwfjx6vikn5ls3@pengutronix.de>
 <1582797590.25607.10.camel@mtksdccf07>
 <20200227105244.orwitjst3wzoqcsq@pengutronix.de>
 <1582806427.27775.1.camel@mtksdccf07>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582806427.27775.1.camel@mtksdccf07>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043322_198533_C6DEBA83 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gU2FtLAoKT24gVGh1LCBGZWIgMjcsIDIwMjAgYXQgMDg6Mjc6MDdQTSArMDgwMCwgU2Ft
IFNoaWggd3JvdGU6Cj4gPiA+IAo+ID4gPiArIC8qIFRoZSBwd20gc291cmNlIGNsb2NrIGNhbiBi
ZSBkaXZpZGVkIGJ5IDJeY2xrZGl2LiBXaGVuIHRoZSBjbGtzZWwgICsKPiA+ID4gKiBiaXQgaXMg
c2V0IHRvIDEsIFRoZSBmaW5hbCBjbG9jayBvdXRwdXQgbmVlZHMgdG8gYmUgZGl2aWRlZCBieSBh
biArICAqCj4gPiA+IGV4dHJhIDE2MjUuCj4gPiA+ICsgICovCj4gPiAKPiA+IEknZCB3cml0ZToK
PiA+IAo+ID4gVGhlIHNvdXJjZSBjbG9jayBpcyBkaXZpZGVkIGJ5IDJeY2xrZGl2IG9yIGlmZiB0
aGUgY2xrc2VsIGJpdCBpcyBzZXQgYnkKPiA+IDJeY2xrZGl2ICsgMTYyNS4KPiA+IAo+IAo+IEdy
ZWF0LCB0aGUgY29tbWVudCBpcyBzaG9ydCBhbmQgY2xlYXIuIAo+IEJ1dCBtYXliZSBjaGFuZ2Ug
4oCcMl5jbGtkaXYgKyAxNjI14oCdIHRvIOKAnHRoZSBwcm9kdWN0IG9mIDJeY2xrZGl2IGFuZCAx
NjI14oCdCj4gaXMgY2xlYXJlciA/CgpXcml0aW5nIGEgZm9ybXVsYSBpbiB3b3JkcyBpc24ndCBo
ZWxwZnVsLiBJZiBteSBmb3JtdWxhIHdhcyB3cm9uZyB1c2UKdGhlIHJpZ2h0IG9uZS4gSSB3cm90
ZQoKCTJeY2xrZGl2ICsgMTYyNQoKKHdoaWNoIGltcGxpY2l0bHkgbWVhbnMgKDJeY2xrZGl2KSAr
IDE2MjUpLCBpZiB0aGlzIGlzIHdyb25nIHdyaXRlCgoJMl5jbGtkaXYgKiAxNjI1CgpvciB3aGF0
ZXZlciBpcyB0aGUgcmlnaHQgb25lIHRoZW4uIEFuZCB1c2UgcGFyZW50aGVzaXMgaWYgeW91IGRv
dWJ0CmNsZWFybmVzcy4KCkJlc3QgcmVnYXJkcwpVd2UKCi0tIApQZW5ndXRyb25peCBlLksuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwK
SW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cHM6Ly93d3cu
cGVuZ3V0cm9uaXguZGUvIHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
