Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8180A2D40E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 05:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZVLzLu/aiZSUOZ2enXK03dwoBfIGp1n4l5OEigCxeg=; b=W7p9LvTED+FFgr
	NR1H6QRbVFTQt4viOuRfbZDHzvbvEv5tWwLBiRLVXuU7raEWhXNncBNsLk92KoUX1+iMJytZI/jAf
	iYBRg8bW45+G4eC+u0LJQbeW/RWo+obD+Q4O9dqh6cSRMgblUG6mKtW5qqJCwbKgdW1vR+7irhQIP
	LpX8xuhd8Px9Ab4m89aqlx+5SqRVNAFwxhFszfnYHzRQOZBB80Lm2Gh+hmWsyzhlrS9G8wf+CeYBZ
	vlWOCgK6LaP/2/K5Wk1rcIztxu5cZ5LabxiWx0p/Bm1p8VO1v8yTyeu8Ns86OHhojfxObQUQRUJL/
	LmjUUJuZ0yhV/pfizCKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVoqv-0001cS-5M; Wed, 29 May 2019 03:02:09 +0000
Received: from smtp97.ord1d.emailsrvr.com ([184.106.54.97])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVoqm-0001c4-QT; Wed, 29 May 2019 03:02:02 +0000
Received: from smtp5.relay.ord1d.emailsrvr.com (localhost [127.0.0.1])
 by smtp5.relay.ord1d.emailsrvr.com (SMTP Server) with ESMTP id 13CC9A019D;
 Tue, 28 May 2019 23:01:58 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1559098918;
 bh=dxk1NY8pRsVPWLjcp9o/Cvrv9iSK3H0mNb52VECozys=;
 h=Subject:From:Date:To:From;
 b=HVOZ521Hl7QMWUqq7mUULr8MvIxEYZto7hio+0rsM/MyRNWrTfM2GvLl0Vryk41b7
 6gnJhRBPsnx9Wx1monqXJIgvFgNtVG1X4oGti3cC/xsNkPfRBXu3ruHG7cMWAQkxpO
 Z5WpSL8rO6/+GiDK5KJMtjY7WnRMjjGNkIoYNyEA=
X-Auth-ID: mcdermj@xenotropic.com
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp5.relay.ord1d.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id 2231CA00AB; 
 Tue, 28 May 2019 23:01:57 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from [10.0.3.33] (c-73-96-52-102.hsd1.or.comcast.net [73.96.52.102])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Tue, 28 May 2019 23:01:58 -0400
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v2] i2c: bcm2835: Model Divider in CCF
From: Annaliese McDermond <nh6z@nh6z.net>
In-Reply-To: <716a7b8a-c2f8-a3c4-0b3a-be3cb26a6c12@i2se.com>
Date: Tue, 28 May 2019 20:01:56 -0700
Message-Id: <ACF57AF2-51C9-4884-BC65-126221CDAB5B@nh6z.net>
References: <20190508071227.18609-1-nh6z@nh6z.net>
 <716a7b8a-c2f8-a3c4-0b3a-be3cb26a6c12@i2se.com>
To: Stefan Wahren <stefan.wahren@i2se.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_200200_914209_D019336D 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [184.106.54.97 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, swarren@wwwdotorg.org, wsa@the-dreams.de,
 team@nwdigitalradio.com, eric@anholt.net, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyOCwgMjAxOSwgYXQgMTI6NTIgQU0sIFN0ZWZhbiBXYWhyZW4gPHN0ZWZhbi53
YWhyZW5AaTJzZS5jb20+IHdyb3RlOgo+IAo+IEhpIEFubmFsaWVzZSwKPiAKPiB0aGFuayB5b3Ug
Zm9yIG1lbnRpb24gdGhhdCB3ZSBoYXZlIG11bHRpcGxlIEkyQyBpbnRlcmZhY2VzLgo+IAo+IE9u
IDA4LjA1LjE5IDA5OjEyLCBBbm5hbGllc2UgTWNEZXJtb25kIHdyb3RlOgo+PiArCj4+ICtzdGF0
aWMgc3RydWN0IGNsayAqYmNtMjgzNV9pMmNfcmVnaXN0ZXJfZGl2KHN0cnVjdCBkZXZpY2UgKmRl
diwKPj4gKwkJCQkJY29uc3QgY2hhciAqbWNsa19uYW1lLAo+PiArCQkJCQlzdHJ1Y3QgYmNtMjgz
NV9pMmNfZGV2ICppMmNfZGV2KQo+PiArewo+PiArCXN0cnVjdCBjbGtfaW5pdF9kYXRhIGluaXQ7
Cj4+ICsJc3RydWN0IGNsa19iY20yODM1X2kyYyAqcHJpdjsKPj4gKwljb25zdCBjaGFyICpkZXZu
YW1lID0gZGV2X25hbWUoZGV2KTsKPj4gKwo+PiArCWluaXQub3BzID0gJmNsa19iY20yODM1X2ky
Y19vcHM7Cj4+ICsJaW5pdC5uYW1lID0gImJjbTI4MzUtaTJjIjsKPiAKPiBEb2VzIHRoaXMgd29y
ayBpbnRlbnRpb25hbGx5IGluIGNhc2UgaTJjLTAgYW5kIGkyYy0xIGFyZSB1c2VkIGF0IHRoZQo+
IHNhbWUgdGltZT8KCkl0IHNob3VsZCB3b3JrIGZpbmUuICBUaGUgY2xvY2tzIGFyZSBhbGwgcmVn
aXN0ZXJlZCBzZXBhcmF0ZWx5IGFuZCBwYXNzZWQKdGhlIHBvaW50ZXIgdG8gdGhlIHN0cnVjdCBk
ZXZpY2UgZm9yIHRoZSBpbnRlcmZhY2UuICBUaGlzIGtlZXBzIGl0CmFjY2Vzc2luZyB0aGUgY29y
cmVjdCByZWdpc3RlcnMgYW5kIHN1Y2guCgo+IFBsZWFzZSBhbHNvIGNoZWNrIHRoZSBvdXRwdXQg
b2YgL3N5cy9rZXJuZWwvZGVidWcvY2xrL2Nsa19zdW1tYXJ5CgpUaGV54oCZbGwgY29tZSB1cCB3
aXRoIHRoZSBzYW1lIG5hbWUgaW4gdGhlIGN1cnJlbnQgY29kZSBpbiB0aGUgZGVidWcKb3V0cHV0
LiAgSSBhZ3JlZSB0aGlzIGlzIG1pbGRseSBjb25mdXNpbmcgYW5kIEnigJlsbCBzcGluIGFub3Ro
ZXIgdmVyc2lvbgpvZiB0aGUgcGF0Y2ggdG8gZ2l2ZSB0aGVtIHVuaXF1ZSBjbG9jayBuYW1lcyBp
biBjbGtfc3VtbWFyeS4KCj4gUmVnYXJkcwo+IFN0ZWZhbgo+IAoKLS0KQW5uYWxpZXNlIE1jRGVy
bW9ub2QKbmg2ekBuaDZ6Lm5ldApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
