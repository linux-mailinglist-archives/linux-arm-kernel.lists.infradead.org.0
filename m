Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE8A432B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 07:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkwLRfxbJ07v5m8hKWSOZ8gnZxq6aNTmIEkd8MQA3D8=; b=nDu6kMGLhrC2K4
	BppojzwNONgXGC9RncpAuFViEZcUNCMkcVYNO40FW5lORC41xCHwIBN4NUE+w8lZhoBsjXjXlKOEN
	t4fh7I6acZCGlcR1AK3kyktObcZVnn9Ma6fR9jBJuPq6SOiH+I7zkdbIXmd3P/GQXUXSMWWZzIS/m
	w23ac+pzhwJJgPiODrmSfpiPA13GRAVounXMD9KOPXfBYPstGOZb966MDwEJM7lu2JTi5qOohTW8c
	Gd+mx0PlFgXjHFHxQrS3B7/y5xAu0hgmX+IoUlxI0U3jJlYDCKpnzo/uv2F6REWuZKz7usK6l/3By
	SV08Yq8AGE/o1FqKTBHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbHzj-0005HY-Dy; Thu, 13 Jun 2019 05:09:51 +0000
Received: from smtp107.iad3a.emailsrvr.com ([173.203.187.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbHzP-0005Gw-OA; Thu, 13 Jun 2019 05:09:33 +0000
Received: from smtp38.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp38.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 302C31855;
 Thu, 13 Jun 2019 01:09:24 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1560402564;
 bh=YphfuBxons+OWOZNJBAlemTbwJdLog12Pz9975FV9lE=;
 h=Subject:From:Date:To:From;
 b=TcnXbiR3mVBC7+Vi+KfgW8p+wSwKO0l7u8OvL72AXx/4HHzTnVJo/6ptDUYm8BaqU
 CgGAn3DnI0OtguY6c3serWW4+cOuHk3BfAwYRVr1vJf9hCm0TCDmIagPrIxt12p5yN
 JYx3XPruhINe/T2oZ3rOyEOO8JiwMpMwgBd3fsO0=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp38.relay.iad3a.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id 0E2CD2CA6; 
 Thu, 13 Jun 2019 01:09:22 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from [10.0.3.33] (c-73-96-52-102.hsd1.or.comcast.net [73.96.52.102])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Thu, 13 Jun 2019 01:09:24 -0400
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v4] i2c: bcm2835: Model Divider in CCF
From: Annaliese McDermond <nh6z@nh6z.net>
In-Reply-To: <20190612104107.ndbo55ii2w3ahtzr@ninjato>
Date: Wed, 12 Jun 2019 22:09:21 -0700
Message-Id: <2E838B63-DD8D-40AC-AA31-7C0FEF8B4424@nh6z.net>
References: <20190529042912.12956-1-nh6z@nh6z.net>
 <20190608171443.14484-1-nh6z@nh6z.net>
 <20190612104107.ndbo55ii2w3ahtzr@ninjato>
To: Wolfram Sang <wsa@the-dreams.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_220931_916595_7B9B3719 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [173.203.187.107 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, swarren@wwwdotorg.org,
 NWDR Team <team@nwdigitalradio.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAxMiwgMjAxOSwgYXQgMzo0MSBBTSwgV29sZnJhbSBTYW5nIDx3c2FAdGhlLWRy
ZWFtcy5kZT4gd3JvdGU6Cj4gCj4gT24gU2F0LCBKdW4gMDgsIDIwMTkgYXQgMTA6MTQ6NDNBTSAt
MDcwMCwgQW5uYWxpZXNlIE1jRGVybW9uZCB3cm90ZToKPj4gTW9kZWwgdGhlIEkyQyBidXMgY2xv
Y2sgZGl2aWRlciBhcyBhIHBhcnQgb2YgdGhlIENvcmUgQ2xvY2sgRnJhbWV3b3JrLgo+PiBQcmlt
YXJpbHkgdGhpcyByZW1vdmVzIHRoZSBjbGtfZ2V0X3JhdGUoKSBjYWxsIGZyb20gZWFjaCB0cmFu
c2Zlci4KPj4gVGhpcyBjYWxsIGNhdXNlcyBwcm9ibGVtcyBmb3Igc2xhdmUgZHJpdmVycyB0aGF0
IHRoZW1zZWx2ZXMgaGF2ZQo+PiBpbnRlcm5hbCBjbG9jayBjb21wb25lbnRzIHRoYXQgYXJlIGNv
bnRyb2xsZWQgYnkgYW4gSTJDIGludGVyZmFjZS4KPj4gV2hlbiB0aGUgc2xhdmUncyBpbnRlcm5h
bCBjbG9jayBjb21wb25lbnQgaXMgcHJlcGFyZWQsIHRoZSBwcmVwYXJlCj4+IGxvY2sgaXMgb2J0
YWluZWQsIGFuZCBpdCBtYWtlcyBjYWxscyB0byB0aGUgSTJDIHN1YnN5c3RlbSB0bwo+PiBjb21t
YW5kIHRoZSBoYXJkd2FyZSB0byBhY3RpdmF0ZSB0aGUgY2xvY2suICBJbiBvcmRlciB0byBwZXJm
b3JtCj4+IHRoZSBJMkMgdHJhbnNmZXIsIHRoaXMgZHJpdmVyIHNldHMgdGhlIGRpdmlkZXIsIHdo
aWNoIHJlcXVpcmVzCj4+IGl0IHRvIGdldCB0aGUgcGFyZW50IGNsb2NrIHJhdGUsIHdoaWNoIGl0
IGRvZXMgd2l0aCBjbGtfZ2V0X3JhdGUoKS4KPj4gVW5mb3J0dW5hdGVseSwgdGhpcyBmdW5jdGlv
biB3aWxsIHRyeSB0byB0YWtlIHRoZSBjbG9jayBwcmVwYXJlCj4+IGxvY2ssIHdoaWNoIGlzIGFs
cmVhZHkgaGVsZCBieSB0aGUgc2xhdmUncyBpbnRlcm5hbCBjbG9jayBjYWxscwo+PiBjcmVhdGlu
ZyBhIGRlYWRsb2NrLgo+PiAKPj4gTW9kZWxpbmcgdGhlIGRpdmlkZXIgaW4gdGhlIENDRiBuYXRp
dmVseSByZW1vdmVzIHRoaXMgZGVwZW5kZW5jeQo+PiBhbmQgdGhlIGRpdmlkZXIgdmFsdWUgaXMg
b25seSBzZXQgdXBvbiBjaGFuZ2luZyB0aGUgYnVzIGNsb2NrCj4+IGZyZXF1ZW5jeSBvciBjaGFu
Z2VzIGluIHRoZSBwYXJlbnQgY2xvY2sgdGhhdCBjYXNjYWRlIGRvd24gdG8gdGhpcwo+PiBkaXZp
c29yLiAgVGhpcyBvYnZpYXRlcyB0aGUgbmVlZCB0byBzZXQgdGhlIGRpdmlkZXIgd2l0aCBldmVy
eQo+PiB0cmFuc2ZlciBhbmQgYXZvaWRzIHRoZSBkZWFkbG9jayBkZXNjcmliZWQgYWJvdmUuICBJ
dCBhbHNvIHNob3VsZAo+PiBwcm92aWRlIGJldHRlciBjbG9jayBkZWJ1Z2dpbmcgYW5kIHNhdmUg
YSBmZXcgY3ljbGVzIG9uIGVhY2gKPj4gdHJhbnNmZXIgZHVlIHRvIG5vdCBoYXZpbmcgdG8gcmVj
YWxjdWF0ZSB0aGUgZGl2aWRlciB2YWx1ZS4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEFubmFsaWVz
ZSBNY0Rlcm1vbmQgPG5oNnpAbmg2ei5uZXQ+Cj4+IEFja2VkLWJ5OiBTdGVmYW4gV2FocmVuIDxz
dGVmYW4ud2FocmVuQGkyc2UuY29tPgo+PiBSZXZpZXdlZC1ieTogRXJpYyBBbmhvbHQgPGVyaWNA
YW5ob2x0Lm5ldD4KPiAKPiBBcHBsaWVkIHRvIGZvci1uZXh0LCB0aGFua3MgZm9yIGtlZXBpbmcg
YXQgdGhpcyEKClRoYW5rcyBmb3IgeW91ciBwYXRpZW5jZSB3aXRoIHRoaXMuICBJIGtub3cgaXTi
gJlzIGhhcmQgdG8gZGVhbCB3aXRoCm5ld2VyIGZvbGtzIHNvbWV0aW1lcywgYnV0IEkgcmVhbGx5
IGFwcHJlY2lhdGUgeW91ciBmb3JiZWFyYW5jZS4KCj4gQW5kIHRoYW5rcyB0byBhbGwKPiByZXZp
ZXdlcnMsIHRvby4KClRoYW5rcyB0b28gdG8gRXJpYyBhbmQgU3RlZmFuLiAgSWYgeW914oCZcmUg
ZXZlciBpbiB0aGUgRXVnZW5lLCBPUiBhcmVhCmxvb2sgbWUgdXAgZm9yIGEgZnJlZSBiZXZlcmFn
ZSBvZiB5b3VyIGNob2ljZS4gOikKCj4gKE9uZSBtaW5vciB0aGluZzogbmV4dCB0aW1lLCBwbGVh
c2Ugc3RhcnQgYSBuZXcgdGhyZWFkIHdoZW4gc2VuZGluZyBhCj4gbmV3IHBhdGNoLiBUaGlzIG1h
a2VzIGFwcGx5aW5nIHBhdGNoZXMgZWFzaWVyLikKCknigJlsbCBkZWZpbml0ZWx5IGRvIHNvIG5l
eHQgdGltZS4gIFRoYW5rIHlvdS4KCi0tCkFubmFsaWVzZSBNY0Rlcm1vbmQKbmg2ekBuaDZ6Lm5l
dApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
