Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E859A8621
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:47:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaRCZ5rjIq35O0Tn/Oy35dRtzAMbzebE1AaD/Z5lN6U=; b=FHq569HWoy6qDb
	GUoSpq+SZnPYhSml28G2M2g7LFMK4R7tQ++wjIswCE+DOCMWe/+BqAyHIaV82M2qyQFVUbScODkpD
	VZnEh8bQ1lzhcvIL/CmZxF5rXdeL50Yxmart1d7HiBIk5EaOczV+ROfCbtVvcxXDdOgi0rvXVkGkN
	1Xm6DEOiwDj/gnG8G04VCkYWG+gNhEkFNqr4DHQGWNzhsWkhKL8DYjNh4vZV/eCB8leOXKizhqXf8
	M90S9cpOlLi5wuQUyR2xSizxmbHdp97zQAZK9Dl3kW64a5gUHkekOGHvr4pJfsmZUfpdXXABym15R
	0u2hOgyxO3Y9kIimUaXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XVa-00068Y-ET; Wed, 04 Sep 2019 15:47:46 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XVO-000686-7K
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:47:36 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 6A46EFF803;
 Wed,  4 Sep 2019 15:47:19 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL] ARM: mvebu: dt64 for v5.4 (#2)
In-Reply-To: <CAK8P3a0igyBe-MQ9QcVMwCF4sx76MBVwtcsF=nFJf_sgYe2G2A@mail.gmail.com>
References: <87h85two0r.fsf@FE-laptop>
 <CAK8P3a0BqjtVoTrUedDGHBUv8gwL23XWqYM2831v7G+23i8++A@mail.gmail.com>
 <CAK8P3a0igyBe-MQ9QcVMwCF4sx76MBVwtcsF=nFJf_sgYe2G2A@mail.gmail.com>
Date: Wed, 04 Sep 2019 17:47:18 +0200
Message-ID: <87ef0wvzax.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_084734_419222_85AE70F7 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwKCj4gT24gVHVlLCBTZXAgMywgMjAxOSBhdCAxMTowNSBQTSBBcm5kIEJlcmdtYW5u
IDxhcm5kQGFybmRiLmRlPiB3cm90ZToKPj4KPj4gT24gVHVlLCBTZXAgMywgMjAxOSBhdCAyOjQx
IFBNIEdyZWdvcnkgQ0xFTUVOVAo+PiA8Z3JlZ29yeS5jbGVtZW50QGJvb3RsaW4uY29tPiB3cm90
ZToKPj4gPiBIZXJlIGlzIHRoZSBzZWNvbmQgcHVsbCByZXF1ZXN0IGZvciBkdDY0IGZvciBtdmVi
dSBmb3IgdjUuNC4KPj4gPgo+PiA+IEZvciB0aGUgVHVycmlzIE1veCBib2FyZCB0aGVyZSB3YXMg
ZGVwZW5kZW5jaWVzIHdpdGggbW94dGV0IGhlYWRlciB3aGljaAo+PiA+IHdhcyBhbHJlYWR5IG1l
cmdlZCBpbiB5b3VyIGFybS9kcml2ZXJzIGJyYW5jaC4gVGhhdCB0aGUgcmVhc29uIHdoeSBJCj4+
ID4gbWVyZ2VkIHRoaXMgYnJhbmNoIGluIG15IG12ZWJ1L2R0NjQgYnJhbmNoLgo+PiA+Cj4+ID4g
TGV0IG1lIGtub3cgaWYgaXQgaXMgYSBwcm9ibGVtIGFuZCBpZiB5b3Ugd2FudCB0aGF0IEkgZG8g
aXQgaW4gYQo+PiA+IGRpZmZlcmVudCB3YXkuCj4+Cj4+IEkgZG9uJ3QgcmVhbGx5IGxpa2UgdGhp
cywgYnV0IGl0J3MgdG9vIGxhdGUgdG8gZG8gaXQgcmlnaHQgbm93LiBUaGUgcHJvYmxlbSBpcwo+
PiB0aGF0IEkgc2hvdWxkIGhhdmUgbm90IHBpY2tlZCB1cCB0aGUgcGF0Y2hlcyBmcm9tIHRoZSBs
aXN0IGluIHRoZSBmaXJzdAo+PiBwbGFjZSBpZiB0aGVyZSBhcmUgdGhlc2UgZGVwZW5kZW5jaWVz
Lgo+Pgo+PiBUaGlzIGNvdWxkIGhhdmUgYmVlbiBjb21tdW5pY2F0ZWQgYmV0dGVyIGluIHRoZSBw
YXRjaCBzZXJpZXMsIGJ1dAo+PiBpdCByZWFsbHkgbXkgb3duIGZhdWx0Lgo+Pgo+PiA+IC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPj4gPiBtdmVidSBkdDY0IGZvciA1LjQgKHBhcnQgMikKPj4gPgo+PiA+IEFkZCBzdXBwb3J0
IGZvciBUdXJyaXMgTW94IGJvYXJkIChBcm1hZGEgMzcyMCBTb0MgYmFzZWQpCj4+ID4KPj4gPiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4+ID4gTWFyZWsgQmVow7puICgzKToKPj4gPiAgICAgICBhcm02NDogZHRzOiBtYXJ2
ZWxsOiBhcm1hZGEtMzd4eDogYWRkIFNQSSBDUzEgcGluY3RybAo+PiA+ICAgICAgIGR0LWJpbmRp
bmdzOiBtYXJ2ZWxsOiBkb2N1bWVudCBUdXJyaXMgTW94IGNvbXBhdGlibGUKPj4gPiAgICAgICBh
cm02NDogZHRzOiBtYXJ2ZWxsOiBhZGQgRFRTIGZvciBUdXJyaXMgTW94Cj4+Cj4+IEkgdGhpbmsg
dGhlIGJlc3Qgd2F5IGZvcndhcmQgd291bGQgYmUgZm9yIG1lIHRvIGFwcGx5IHRoZQo+PiByZW1h
aW5pbmcgcGF0Y2hlcyBvbiB0b3Agb2YgdGhlIGFybS9kcml2ZXJzIGJyYW5jaCwgdG8gYXZvaWQK
Pj4gYWxzbyBwdWxsaW5nIGluIHlvdXIgb3RoZXIgRFQgY2hhbmdlcyBpbnRvIGFybS9kcml2ZXJz
LCBvciBwdWxsaW5nCj4+IGluIGFsbCBvZiBhcm0vZHJpdmVycyBpbnRvIGFybS9kdC4KPj4KPj4g
V291bGQgdGhhdCB3b3JrIGZvciB5b3U/Cj4KPiBJIGVuZGVkIHVwIGNyZWF0aW5nIGFuIGFybS9s
YXRlIGJyYW5jaCBmb3Igb3RoZXIgcmVhc29ucywgcHV0Cj4gdGhpcyBicmFuY2ggaW4gdGhlcmUg
YXMgd2VsbC4KCk9LIHRoYW5rcyEKCkdyZWdvcnkKCj4KPiAgICAgICBBcm5kCgotLSAKR3JlZ29y
eSBDbGVtZW50LCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcK
aHR0cDovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
