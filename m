Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0464166991
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:07:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osJU2JaMocx61pwTJqadW+MeDxpxczxYC0gxyyqTV2s=; b=nudcHHGDv0TLsl
	w5eA5D1sbQB/yalDffesKLNqsGLQKr6kc8rnFsg8fOD1+P08Kmuisd5+Y0FV1alH/t2NxJ+cQuwqm
	PlxibnwLJKnG6v7AMCQWMiKvr+j9sL5aYxqtO97k3alaVlfW6pNnplK0p3uO6SKqLwM/VCNgB8Tu4
	4utKghW5lKL9uBvMLpVfk3cEgBuySoyoCNyfOqo1ldYiu1QXmDAJ7uHPWpmeJHpaPH6GHobvbGCC9
	Kn8gssJJzj2l9YP38e3VQLSXo1f9LukzaeHqUIw7D6i5Fc8in2jS9PiLc6nObo1yoDsW/ze8+Feni
	N3FTcACprp+Jg8KoHGZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4t2o-0001Iz-I5; Thu, 20 Feb 2020 21:07:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4t2d-0001Hz-19
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 21:07:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j4t2W-000495-Ch; Thu, 20 Feb 2020 22:07:20 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j4t2V-0002Rs-0N; Thu, 20 Feb 2020 22:07:19 +0100
Date: Thu, 20 Feb 2020 22:07:18 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] pwm: bcm2835: Dynamically allocate base
Message-ID: <20200220210718.4vrn6u2c2remeuhm@pengutronix.de>
References: <20200203213536.32226-1-f.fainelli@gmail.com>
 <08e2b640f0a7713d905295fc4f75df49617be6c1.camel@suse.de>
 <3b22decc-9ebd-3522-4fd7-e5721c8b25b2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3b22decc-9ebd-3522-4fd7-e5721c8b25b2@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_130727_070077_D3AE3A6B 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Warren <swarren@wwwdotorg.org>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

W0Ryb3BwaW5nIEJhcnQgVGFuZ2hlIGZyb20gcmVjaXBlbnRzIGFzIHRoZSBhZGRyZXNzIGJvdW5j
ZXNdCgpIZWxsbyBUaGllcnJ5LAoKT24gVGh1LCBGZWIgMjAsIDIwMjAgYXQgMTE6MTQ6MDBBTSAt
MDgwMCwgRmxvcmlhbiBGYWluZWxsaSB3cm90ZToKPiBPbiAyLzQvMjAgMToxNyBBTSwgTmljb2xh
cyBTYWVueiBKdWxpZW5uZSB3cm90ZToKPiA+IE9uIE1vbiwgMjAyMC0wMi0wMyBhdCAxMzozNSAt
MDgwMCwgRmxvcmlhbiBGYWluZWxsaSB3cm90ZToKPiA+PiBUaGUgbmV3ZXIgMjcxMSBhbmQgNzIx
MSBjaGlwcyBoYXZlIHR3byBQV00gY29udHJvbGxlcnMgYW5kIGZhaWx1cmUgdG8KPiA+PiBkeW5h
bWljYWxseSBhbGxvY2F0ZSB0aGUgUFdNIGJhc2Ugd291bGQgcHJldmVudCB0aGUgc2Vjb25kIFBX
TQo+ID4+IGNvbnRyb2xsZXIgaW5zdGFuY2UgYmVpbmcgcHJvYmVkIGZvciBzdWNjZWVkaW5nIHdp
dGggYW4gLUVFWElTVCBlcnJvcgo+ID4+IGZyb20gYWxsb2NfcHdtcygpLgo+ID4+Cj4gPj4gRml4
ZXM6IGU1YTA2ZGM1YWMxZiAoInB3bTogQWRkIEJDTTI4MzUgUFdNIGRyaXZlciIpCj4gPj4gU2ln
bmVkLW9mZi1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Cj4gPj4g
LS0tCj4gPiAKPiA+IFJldmlld2VkLWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2Flbnpq
dWxpZW5uZUBzdXNlLmRlPgo+IAo+IFRoaWVycnksIGlzIHRoZXJlIGFueSBjaGFuY2Ugd2UgY2Fu
IGdldCB0aGlzIGFwcGxpZWQgZm9yIGFuIHVwY29taW5nCj4gNS42LXJjWD8gVGhhbmsgeW91IQoK
dG8gYXNzaXN0IHlvdSB3aXRoIHBhdGNoIHNvcnRpbmc6CgojIHJldmlzaW9ucyA8IHY2IG9mICJD
b252ZXJ0IHBlcmlvZCBhbmQgZHV0eSBjeWNsZSB0byB1NjQiCnB3Y2xpZW50IC1zIFN1cGVyc2Vk
ZWQgMTIzNzAyMCAxMjM3MDE5IDEyMjkwNDkgMTIyOTA1MCAxMjIyMzk2CgojIG1vc3Qgb2YgIkFk
ZCBzdXBwb3J0IGZvciBBem90ZXEgSVFTNjIwQS82MjEvNjIyLzYyNC82MjUiIHY1IGlzbid0IGZv
ciBwd20KcHdjbGllbnQgLXMgIk5vdCBBcHBsaWNhYmxlIiAxMjM4OTA4IDEyMzg5MDcgMTIzODkw
NiAxMjM4OTA0IDEyMzg5MDMgMTIzODkwMQoKIyBtb3N0IG9mICJBZGQgc3VwcG9ydCBmb3IgQXpv
dGVxIElRUzYyMEEvNjIxLzYyMi82MjQvNjI1IiB2NCBpc24ndCBmb3IgcHdtCnB3Y2xpZW50IC1z
ICJOb3QgQXBwbGljYWJsZSIgMTIyNDU5OCAxMjI0NTk3IDEyMjQ1OTYgMTIyNDU5NCAxMjI0NTkz
IDEyMjQ1OTIKcHdjbGllbnQgLXMgIlN1cGVyc2VlZGVkIiAxMjI0NTk1CgojICJiYWNrbGlnaHQ6
IHB3bV9ibDogVXNlIGdwaW9kX2dldF92YWx1ZV9jYW5zbGVlcCgpIHRvIGdldCBpbml0aWFsCiMg
c3RhdGUiIGFscmVhZHkgYXBwbGllZCBieSBMZWUgSm9uZXMKcHdjbGllbnQgLXMgIk5vdCBBcHBs
aWNhYmxlIiAxMDMxNTg2CgojIFByb2JsZW0gcmVzb2x2ZWQgYnkgTWljaGFsIFZva8OhxI0KcHdj
bGllbnQgLXMgIlJlamVjdGVkIiAgMTA1OTI2NwoKKE5vdCBzdXJlICJSZWplY3RlZCIgaXMgdGhl
IHJpZ2h0IHN0YXRlLikKCkJlc3QgcmVnYXJkcwpVd2UKCi0tIApQZW5ndXRyb25peCBlLksuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwK
SW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cHM6Ly93d3cu
cGVuZ3V0cm9uaXguZGUvIHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
