Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D5C1644E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALo22LxXFLLU8B0MGShSKT2hxJEoezQ0bUwH16XexQY=; b=fjLrXbeHGH0zCT
	xst63/IAktJptet4RIpsOR4gXrfNWIf++BjUoTZ76P1tDtuhogX+xUhmA5C/7/GMe/D4r57c2Ry9Y
	/H/k3e3sUgZY6PmB51YYvYuFZk90jSpzoHXWOIpXV5E8x7hXDXSX2U3ebq/ANmcyjsyTEtBYDqOyQ
	Rd+ufJy0yHA/EKb3jpuYMSeQWkfGtNqwixvMb/TS9/0ZFetP8z/lGkbLmFgSNQvDNBHGVogySPwZ8
	ycz8hFdY+98HM1Pk4oQLjeaHK9IycwVcI0LgZcCnzSUQMIv/Ne7pKHCa5zZc4xUINcAKw8QEsk51V
	RBYJWCistM25FemxX28g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzsH-00032E-Bg; Tue, 07 May 2019 13:11:13 +0000
Received: from smtp113.ord1d.emailsrvr.com ([184.106.54.113])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzs5-0002vO-Ih; Tue, 07 May 2019 13:11:03 +0000
Received: from smtp7.relay.ord1d.emailsrvr.com (localhost [127.0.0.1])
 by smtp7.relay.ord1d.emailsrvr.com (SMTP Server) with ESMTP id A36C820188;
 Tue,  7 May 2019 09:10:58 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
Received: from smtp7.relay.ord1d.emailsrvr.com (localhost [127.0.0.1])
 by smtp7.relay.ord1d.emailsrvr.com (SMTP Server) with ESMTP id 94DA120189;
 Tue,  7 May 2019 09:10:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1557234658;
 bh=OOkoQgnHxu//5/xnAwqLV6gzZ7D2HJz3eqql9tebNv8=;
 h=Subject:From:Date:To:From;
 b=RCxY2p/RCqeYXbmgDxdIj575CapFfmLQYnS41gfCliQILm2RyJ5cnLle1dBN3oyH+
 +KrPxpeVk4MbflLy8jOMINGR8sCJgr9NQNK39yhjsvWzayD8rwMsBAtdEFeA3BFhc5
 LPwPRgJrfQRfjBPjIXmfnBN5SjTKKZkLvHoyb7d0=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp7.relay.ord1d.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id 9CC5D20188; 
 Tue,  7 May 2019 09:10:57 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from [10.0.3.33] (c-73-96-52-102.hsd1.or.comcast.net [73.96.52.102])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Tue, 07 May 2019 09:10:58 -0400
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] i2c: bcm2835: Model Divider in CCF
From: Annaliese McDermond <nh6z@nh6z.net>
In-Reply-To: <878svivq8y.fsf@anholt.net>
Date: Tue, 7 May 2019 06:10:56 -0700
Message-Id: <F9C09952-3F75-44E7-94A6-1055ADA5A0A8@nh6z.net>
References: <20190505034339.30778-1-nh6z@nh6z.net> <87o94fo3h0.fsf@anholt.net>
 <C611AB4D-7674-438D-BB95-9F83852043EA@nh6z.net>
 <878svivq8y.fsf@anholt.net>
To: Eric Anholt <eric@anholt.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_061102_081644_D234940D 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [184.106.54.113 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, swarren@wwwdotorg.org,
 wsa@the-dreams.de, NWDR Team <team@nwdigitalradio.com>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSA2LCAyMDE5LCBhdCA5OjMyIFBNLCBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQu
bmV0PiB3cm90ZToKPiAKPiBBbm5hbGllc2UgTWNEZXJtb25kIDxuaDZ6QG5oNnoubmV0PiB3cml0
ZXM6Cj4gCj4+PiBPbiBNYXkgNiwgMjAxOSwgYXQgMTE6MTQgQU0sIEVyaWMgQW5ob2x0IDxlcmlj
QGFuaG9sdC5uZXQ+IHdyb3RlOgo+Pj4gCj4+PiBBbnkgY2hhbmNlIHdlIGNvdWxkIHJldXNlIGNs
a19yZWdpc3Rlcl9kaXZpZGVyKCkgaW5zdGVhZCBvZiBoYXZpbmcgb3VyCj4+PiBvd24gc2V0L3Jv
dW5kL3JlY2FsYyByYXRlIGltcGxlbWVudGF0aW9ucz8KPj4gCj4+IEVyaWMgLS0KPj4gCj4+IEni
gJlkIGxvdmUgdG8sIGJ1dCB0aGUgc2V0X3JhdGUgaW1wbGVtZW50YXRpb24gaW5jbHVkZXMgc2V0
dGluZyB0aGUKPj4gQkNNMjgzNV9JMkNfRkVETF9TSElGVCBhbmQgQkNNMjgzNV9JMkNfUkVETF9T
SElGVCByZWdpc3RlcnMgZm9yIHRoZSAKPj4gcmlzaW5nIGFuZCBmYWxsaW5nIGVkZ2UgZGVsYXkg
b24gdGhlIEkyQyBidXMgYmFzZWQgb24gd2hhdCB0aGUgZGl2aWRlcgo+PiB2YWx1ZSBpcy4KPiAK
PiBIbW0uICBJIHJhbiBpbnRvIHRoYXQgaW4gY2xrLWJjbTI4MzUuYyBhcyB3ZWxsLCBhbmQgdGhl
IHNvbHV0aW9uIHdhcwo+IHRoYXQgYmNtMjgzNV9yZWdpc3Rlcl9wbGxfZGl2aWRlcigpIHNldHMg
dXAgdGhlIGRpdmlkZXIgc3RydWN0dXJlIGFuZAo+IHRoZW4gcmV1c2VzIGNsa19kaXZpZGVyX29w
cy5yb3VuZF9yYXRlKCkgYW5kIC5yZWNhbGNfcmF0ZSgpCgpJ4oCZbSBub3Qgc3VyZSB0aGlzIG1h
a2VzIGEgbG90IG9mIHNlbnNlIGluIHRoaXMgcGFydGljdWxhciBjYXNlLiAgSeKAmWQgc3RpbGwK
aGF2ZSB0byBrZWVwIHRoZSBiY20yODM1X2kyY19yZWdpc3Rlcl9kaXYoKSBmdW5jdGlvbiwgYW5k
IHJlYWxseSBJ4oCZZCBvbmx5CmJlIHNhdmluZyBoYXZpbmcgdG8gaW1wbGVtZW50IHJvdW5kX3Jh
dGUoKSBhbmQgcmVjYWxjX3JhdGUoKS4gIFRoZSB0cmFkZW9mZgppcyB0aGF0IHRoZSBjb21tb24g
cm91bmRfcmF0ZSBhbmQgcmVjYWxjIHJhdGUgYXJlIG11Y2ggbW9yZSBjb21wbGV4IGFuZApyZXF1
aXJlIGEgbW9yZSBjb21wbGV4IHByaXZhdGUgc3RydWN0dXJlIChjbGtfZGl2aWRlcikgd2hpY2gg
YWxzbyAKcHJlY2x1ZGVzIG15IHVzZSBvZiB0aGUgY29tbW9uIGJjbTI4MzVfaTJjX3dyaXRlbCgp
IHVzZWQgaW4gdGhlIHJlc3Qgb2YKdGhlIGRyaXZlciBiZWNhdXNlIEkgbm8gbG9uZ2VyIGhhdmUg
YSBwb2ludGVyIHRvIHRoZSBiY20yODM1X2kyY19kZXYKc3RydWN0dXJlIHRoYXQgSSBuZWVkIHRv
IGNhbGwgaXQgaW4gc2V0X3JhdGUoKS4KCkkgZ2V0IHRoZSBkZXNpcmUgdG8gcmV1c2UgY29kZSBh
bmQgdG8gdXNlIGNvbW1vbiBzdHJ1Y3R1cmVzIHdoZW5ldmVyCnBvc3NpYmxlLiAgSXQganVzdCBz
ZWVtcyB0byBtZSB0aGF0IGdvaW5nIGRvd24gdGhpcyBwYXRoIGxlYWRzIHRvIG1vcmUKb3ZlcmFs
bCBjb2RlIHRoYXTigJlzIGxlc3Mgc3RyYWlnaHQgZm9yd2FyZC4gICBNYXliZSBJ4oCZbSB3cm9u
Zy4KCi0tCkFubmFsaWVzZSBNY0Rlcm1vbmQKbmg2ekBuaDZ6Lm5ldApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
