Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA8714167
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 19:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJsz7nyKk38JRpjID8eJFDqR/n1YjyT8LNfzYtwFzg0=; b=r4j6r5717bhimY
	Ospbgi1vAJAWouqwG4nnbPMDFRG+ej7moZxVtJBW8/1A02Ue1o2Ivjfl988Rfkb5vXTcq9lpBUZe8
	tmtx6d7H/REtd53ltyp4298ADPn7UamJKyq0N6TPAE2jhjAcXGKFBi9cZ5MRWZg0ytURxLRUJKRL6
	nkR14l07s45+0iocBXxL56ai77ovO16Lw4K2IexK2/uMatOTHIrVT+Fk7GJDqsivgqRXlxtk4mTOM
	bwI7M3qmX4Scp0OUOurply6f7S0Us5S0fiVG+x+RhcEWM/O/GhtwjwZ4MoR+z+26zkKXBA+Y+fLcm
	XVK8xkXHsCzJ3RrAXnbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNKps-0004Qn-BZ; Sun, 05 May 2019 17:22:00 +0000
Received: from smtp105.ord1c.emailsrvr.com ([108.166.43.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNKpk-0004QK-Gf; Sun, 05 May 2019 17:21:53 +0000
Received: from smtp6.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp6.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id 6A359A0109;
 Sun,  5 May 2019 13:21:51 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
Received: from smtp6.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp6.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id 5F85BA01B2;
 Sun,  5 May 2019 13:21:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1557076911;
 bh=bGboeso/6pM/R+qsWKfFODRbluQRZ4gytzEB/GD3jxg=;
 h=Subject:From:Date:To:From;
 b=QKe/IRupEB6631vcy1NB2cTrQW/FZ0H7HR0o5X9L7Tw0CSt2Gb/s+Uy05fFHzeqcU
 wXl7nBKtqf83OBzPmMaHGNeZk5xallmBs5QvOXWpSSMpUvZxolSTOl83WZ4tCJqs7g
 zW4rtYZQpbjCKJ9j2p/s4mImGBNfpoLPNvFHPe4Y=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp6.relay.ord1c.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id 79C34A0109; 
 Sun,  5 May 2019 13:21:50 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from [10.0.3.33] (c-73-96-52-102.hsd1.or.comcast.net [73.96.52.102])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Sun, 05 May 2019 13:21:51 -0400
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] i2c: bcm2835: Model Divider in CCF
From: Annaliese McDermond <nh6z@nh6z.net>
In-Reply-To: <c43eb848-23cd-4b0c-638d-3bb0df58ed31@gmail.com>
Date: Sun, 5 May 2019 10:21:49 -0700
Message-Id: <362948E6-B012-4F3D-89B7-396141C7E596@nh6z.net>
References: <20190505034339.30778-1-nh6z@nh6z.net>
 <610c7594-85c9-72db-63a6-6e632e9586aa@i2se.com>
 <c43eb848-23cd-4b0c-638d-3bb0df58ed31@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_102152_613490_CDD2DC20 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [108.166.43.105 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, wsa@the-dreams.de,
 team@nwdigitalradio.com, eric@anholt.net, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSA1LCAyMDE5LCBhdCAxMDoxMyBBTSwgRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWlu
ZWxsaUBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IAo+IAo+IE9uIDUvNS8yMDE5IDM6MzYgQU0sIFN0
ZWZhbiBXYWhyZW4gd3JvdGU6Cj4+IEhpIEFubmFsaWVzZSwKPj4gCj4+IEFtIDA1LjA1LjE5IHVt
IDA1OjQzIHNjaHJpZWIgQW5uYWxpZXNlIE1jRGVybW9uZDoKPj4+IE1vZGVsIHRoZSBJMkMgYnVz
IGNsb2NrIGRpdmlkZXIgYXMgYSBwYXJ0IG9mIHRoZSBDb3JlIENsb2NrIEZyYW1ld29yay4KPj4+
IFByaW1hcmlseSB0aGlzIHJlbW92ZXMgdGhlIGNsa19nZXRfcmF0ZSgpIGNhbGwgZnJvbSBlYWNo
IHRyYW5zZmVyLgo+Pj4gVGhpcyBjYWxsIGNhdXNlcyBwcm9ibGVtcyBmb3Igc2xhdmUgZHJpdmVy
cyB0aGF0IHRoZW1zZWx2ZXMgaGF2ZQo+Pj4gaW50ZXJuYWwgY2xvY2sgY29tcG9uZW50cyB0aGF0
IGFyZSBjb250cm9sbGVkIGJ5IGFuIEkyQyBpbnRlcmZhY2UuCj4+PiBXaGVuIHRoZSBzbGF2ZSdz
IGludGVybmFsIGNsb2NrIGNvbXBvbmVudCBpcyBwcmVwYXJlZCwgdGhlIHByZXBhcmUKPj4+IGxv
Y2sgaXMgb2J0YWluZWQsIGFuZCBpdCBtYWtlcyBjYWxscyB0byB0aGUgSTJDIHN1YnN5c3RlbSB0
bwo+Pj4gY29tbWFuZCB0aGUgaGFyZHdhcmUgdG8gYWN0aXZhdGUgdGhlIGNsb2NrLiAgSW4gb3Jk
ZXIgdG8gcGVyZm9ybQo+Pj4gdGhlIEkyQyB0cmFuc2ZlciwgdGhpcyBkcml2ZXIgc2V0cyB0aGUg
ZGl2aWRlciwgd2hpY2ggcmVxdWlyZXMKPj4+IGl0IHRvIGdldCB0aGUgcGFyZW50IGNsb2NrIHJh
dGUsIHdoaWNoIGl0IGRvZXMgd2l0aCBjbGtfZ2V0X3JhdGUoKS4KPj4+IFVuZm9ydHVuYXRlbHks
IHRoaXMgZnVuY3Rpb24gd2lsbCB0cnkgdG8gdGFrZSB0aGUgY2xvY2sgcHJlcGFyZQo+Pj4gbG9j
aywgd2hpY2ggaXMgYWxyZWFkeSBoZWxkIGJ5IHRoZSBzbGF2ZSdzIGludGVybmFsIGNsb2NrIGNh
bGxzCj4+PiBjcmVhdGluZyBhIGRlYWRsb2NrLgo+PiAKPj4gaSB0aGluayBpIHVuZGVyc3RhbmQg
dGhlIHByb2JsZW0sIGJ1dCBjb3VsZCB5b3UgcGxlYXNlIGV4cGxhaW4gdGhlCj4+IHNwZWNpZmlj
IHVzZSBjYXNlIHdoZXJlIHRoaXMgaGFwcGVuZD8KPj4gCj4+IEkgc3VzcGVjdCBiY20yODM1IGlz
IG5vdCB0aGUgb25seSBwbGF0Zm9ybSB3aGljaCBpcyBhZmZlY3RlZCwgc28gaXQKPj4gd291bGQg
YmUgYmV0dGVyIHRvIGZpeCB0aGlzIGluIGdlbmVyYWwuCj4gCj4gQWdyZWVkLCBpZiB5b3UgY291
bGQgaWRlbnRpZnkgaTJjIGJ1cyBkcml2ZXJzIHRoYXQgc3VwcG9ydCBjaGFuZ2luZyB0aGUKPiBi
dXMgY2xvY2sgYW5kIG1vdmUgdGhlIHJlZ2lzdHJhdGlvbiBvZiB0aGUgYnVzICdzdHJ1Y3QgY2xr
JyBpbnRvIHRoZSBpMmMKPiBjb3JlIHRoYXQgd291bGQgc2NhbGUgYSBsb3QgYmV0dGVyLgoKVGhp
cyBpc27igJl0IG5lY2Vzc2FyaWx5IGJlY2F1c2Ugb2YgY2hhbmdpbmcgdGhlIGJ1cyBjbG9jay4g
IFRoaXMgaXMKYmVjYXVzZSBvbmUgb2YgdGhlIHBhcmVudHMgb2YgdGhlIGJ1cyBjbG9jayBjb3Vs
ZCBjaGFuZ2UuICBUaGlzIG5lY2Vzc2l0YXRlcwpyZXNldHRpbmcgdGhlIGRpdmlkZXIgZmVlZGlu
ZyB0aGUgYnVzIGNsb2NrIG9mIHRoZSBpMmMgZGV2aWNlIHNvIHRoYXQKaXQgc3RpbGwgcHJvZHVj
ZXMgdGhlIGRlc2lyZWQgZnJlcXVlbmN5LgoKSSB3b3VsZCBpbWFnaW5lIHRoYXQgbm90IGV2ZXJ5
IGRldmljZSBoYXMgYW4gaW50ZXJuYWwgZGl2aWRlciB0aGF0IGhlbHBzCmNyZWF0ZSB0aGUgYnVz
IGZyZXF1ZW5jeS4gIEkgY291bGQgdmVyeSB3ZWxsIGJlIHdyb25nLgoKPiAtLSAKPiBGbG9yaWFu
CgotLQpBbm5hbGllc2UgTWNEZXJtb25kCm5oNnpAbmg2ei5uZXQKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
