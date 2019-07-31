Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9FA7C122
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AfAVZ1j3f0KMv7at19/n36+jAgoaXSqL5zn3IygEui0=; b=cjIPcQWrnWOcNg
	NH8xCXGZy8eAWTc8uLAftW9UahCvRvVCn2Z+RL5c1z7KmTjBhk9xO8ETVdCvrvV/a0d7uP6UCnNEW
	eNOGWVBALOZCcxbGDmZbXIvaGkuNyM07O0Y9tzvtK9I8kiMrEq5Xl9OAW9tv5X8+fN+R3qi0BYEbb
	/ugQDOeRclMum1ps1QLaYC/9CsphhsYUH25YJOIbb5u1VIfWLltUELMjlo0I1YfykvIlpkD8HSzry
	SGqW3mIe0DiFYj1do9cYQculIpjUwBK6GBFPvH4F0Iq7AJNjrDUmXGu/bGkzTPSPq36zkb2cRygkr
	ZGF1hJyoh3gFDB0vbfBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsncu-0003O9-An; Wed, 31 Jul 2019 12:22:40 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnc2-0002aH-3T
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:21:50 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 01901FF807;
 Wed, 31 Jul 2019 12:21:28 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v3 00/19] Enhance CP110 COMPHY support
Date: Wed, 31 Jul 2019 14:21:07 +0200
Message-Id: <20190731122126.3049-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052146_865674_003BA7BC 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>, Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXJtYWRhIENQMTEwIGhhdmUgYSBDT01QSFkgSVAgd2hpY2ggc3VwcG9ydHMgY29uZmlndXJpbmcg
U0VSREVTIGxhbmVzCmluIG9uZSBtb2RlLCBlaXRoZXI6Ci0gU0FUQQotIFVTQjMgaG9zdAotIFBD
SWUgKHNldmVyYWwgd2lkdGgpCi0gRXRoZXJuZXQgKHNldmVyYWwgbW9kZXMpCgpBcyBvZiB0b2Rh
eSwgb25seSBhIGZldyBFdGhlcm5ldCBtb2RlcyBhcmUgc3VwcG9ydGVkIGFuZCB0aGUgY29kZSBp
cwplbWJlZGRlZCBpbiB0aGUgTGludXggZHJpdmVyLiBBIG1vcmUgY29tcGxldGUgQ09NUEhZIGRy
aXZlciB0aGF0IGNhbgpiZSB1c2VkIGJ5IGJvdGggTGludXggYW5kIFUtQm9vdCBpcyBlbWJlZGRl
ZCBpbiB0aGUgZmlybXdhcmUgYW5kIGNhbgpiZSBydW4gdGhyb3VnaCBTTUMgY2FsbHMuCgpGaXJz
dCB0aGUgY3VycmVudCBDT01QSFkgZHJpdmVyIGlzIHVwZGF0ZWQgdG8gdXNlIFNNQyBjYWxscyBi
dXQKZmFsbGJhY2tzIHRvIHRoZSBhbHJlYWR5IGV4aXN0aW5nIGZ1bmN0aW9ucyBpZiB0aGUgZmly
bXdhcmUgaXMgbm90CnVwLXRvLWRhdGUuIFRoZW4sIG1vcmUgRXRoZXJuZXQgbW9kZXMgYXJlIGFk
ZGVkICh0aHJvdWdoIFNNQyBjYWxscwpvbmx5KS4gU0FUQSwgVVNCM0ggYW5kIFBDSWUgbW9kZXMg
YXJlIGFsc28gc3VwcG9ydGVkIG9uZSBieSBvbmUuCgpUaGVyZSBpcyBvbmUgc3VidGxlIGRpZmZl
cmVuY2Ugd2l0aCB0aGUgUENJZSBmdW5jdGlvbnM6IHdlIG11c3QgdGVsbAp0aGUgZmlybXdhcmUg
dGhlIG51bWJlciBvZiBsYW5lcyB0byBjb25maWd1cmUgKHgxLCB4MiBvciB4NCkuIFRoaXMKcGFy
YW1ldGVyIGRlcGVuZHMgb24gdGhlIG51bWJlciBvZiBlbnRyaWVzIGluIHRoZSAncGh5cycgcHJv
cGVydHkKZGVzY3JpYmluZyB0aGUgUENJZSBQSFkuIFdlIHVzZSB0aGUgInN1Ym1vZGUiIHBhcmFt
ZXRlciBvZiB0aGUgZ2VuZXJpYwpQSFkgQVBJIHRvIGNhcnJ5IHRoaXMgdmFsdWUuIFRoZSBBcm1h
ZGEtOGsgUENJZSBkcml2ZXIgaGFzIGJlZW4KdXBkYXRlZCB0byBmb2xsb3cgdGhpcyBpZGVhIGFu
ZCB0aGlzIGNoYW5nZSBoYXMgYmVlbiBtZXJnZWQgYWxyZWFkeToKaHR0cDovL3BhdGNod29yay5v
emxhYnMub3JnL3BhdGNoLzEwNzI3NjMvCgpUaGFua3MsCk1pcXXDqGwKCgpDaGFuZ2VzIHNpbmNl
IHYyOgotLS0tLS0tLS0tLS0tLS0tLQoqIEludmVydGVkIHR3byBhcmd1bWVudHMgaW4gYSB0cmFj
ZS4KKiBBdm9pZCB3YXJuaW5nIHRoZSB1c2VyIHdoZW4gRVBST0JFX0RFRkVSIGlzIHJldHVybmVk
IChjbG9ja3MgY2FzZSkuCiogQWRkZWQgTWF4aW1lIEMuIGFuZCBHcnplZ29yeiBKLiAncyBUZXN0
ZWQtYnkgdGFncyAob25seSBvbiB0aGUKICAiaW50cm9kdWNpbmcgU01DIGNhbGxzIiBwYXRjaCwg
YnV0IHRoZXkgdGVzdGVkIHRoZSB3aG9sZSBzZXJpZXMpLgoqIEFkZGVkIFJvYidzIFJldmlld2Vk
LWJ5IG9uIHRoZSBiaW5kaW5ncy4KKiBBbHNvIHVwZGF0ZWQgdGhlIGJpbmRpbmdzIGFzIHN1Z2dl
c3RlZCBieSBSb2IgdG8gcmVmbGVjdCB0aGF0IHRoZXJlCiAgY2FuIGJlIGZyb20gb25lIHRvIGZv
dXIgUEhZcyBpbiB0aGUgUENJZSBub2RlcyAoaGVuY2UsIHRoZSBuZWVkIGZvcgogIHRoZSBwaHkt
bmFtZXMgcHJvcGVydHkpLgoKQ2hhbmdlcyBzaW5jZSB2MToKLS0tLS0tLS0tLS0tLS0tLS0KKiBB
bGwgbW9kZXMgcmVwb3J0IHRoZWlyIGVycm9ycyB0byB0aGUgdXNlci4KKiBJZiB0aGUgZmlybXdh
cmUgaXMgdG9vIG9sZCwgYWR2aXNlIHRoZSB1c2VyIHRvIHVwZGF0ZSBpdC4KKiBDcmVkaXQgR3J6
ZWdvcnogZm9yIGhpcyB3b3JrLgoqIEZpeCB3cm9uZyBzcGVlZCBpbiBFdGhlcm5ldCBtb2Rlcy4K
KiBBZGQgQ09NUEhZIG5lY2Vzc2FyeSBjbG9ja3MuCiogVXBkYXRlIGJpbmRpbmdzLgoqIFRoZSBz
ZWN1cml0eSBmbGF3IHJlbGF0ZWQgdG8gdGhlIGZhY3QgdGhhdCB3ZSBtdXN0IGdpdmUgdGhlIENQ
CiAgYWRkcmVzcyB0byB0aGUgZmlybXdhcmUgaGFzIGJlZW4gbWl0aWdhdGVkIGJ5IHRoZSBhZGRp
dGlvbiBvZiBleHRyYQogIGNoZWNrcyBpbiBBVEYgcmVjZW50bHkuCgoKR3J6ZWdvcnogSmFzemN6
eWsgKDUpOgogIHBoeTogbXZlYnUtY3AxMTAtY29tcGh5OiBBZGQgU01DIGNhbGwgc3VwcG9ydAog
IHBoeTogbXZlYnUtY3AxMTAtY29tcGh5OiBBZGQgUlhBVUkgc3VwcG9ydAogIHBoeTogbXZlYnUt
Y3AxMTAtY29tcGh5OiBBZGQgVVNCMyBob3N0L2RldmljZSBzdXBwb3J0CiAgcGh5OiBtdmVidS1j
cDExMC1jb21waHk6IEFkZCBTQVRBIHN1cHBvcnQKICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTog
QWRkIFBDSWUgc3VwcG9ydAoKTWlxdWVsIFJheW5hbCAoMTQpOgogIHBoeTogbXZlYnUtY3AxMTAt
Y29tcGh5OiBBZGQgY2xvY2tzIHN1cHBvcnQKICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTogRXhw
bGljaXRseSBpbml0aWFsaXplIHRoZSBsYW5lIHN1Ym1vZGUKICBwaHk6IG12ZWJ1LWNwMTEwLWNv
bXBoeTogTGlzdCBhbHJlYWR5IHN1cHBvcnRlZCBFdGhlcm5ldCBtb2RlcwogIHBoeTogbXZlYnUt
Y3AxMTAtY29tcGh5OiBSZW5hbWUgdGhlIG1hY3JvIGhhbmRsaW5nIG9ubHkgRXRoZXJuZXQgbW9k
ZXMKICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTogQWxsb3cgbm9uLUV0aGVybmV0IG1vZGVzIHRv
IGJlIGNvbmZpZ3VyZWQKICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTogQ29zbWV0aWMgY2hhbmdl
IGluIGEgaGVscGVyCiAgcGh5OiBtdmVidS1jcDExMC1jb21waHk6IFVwZGF0ZSBjb21tZW50IGFi
b3V0IHBvd2VyaW5nIG9mZiBhbGwgbGFuZXMKICAgIGF0IGJvb3QKICBkdC1iaW5kaW5nczogcGh5
OiBBZGQgTWFydmVsbCBDT01QSFkgY2xvY2tzCiAgZHQtYmluZGluZ3M6IHBjaTogYWRkIFBIWSBw
cm9wZXJ0aWVzIHRvIEFybWFkYSA3Sy84SyBjb250cm9sbGVyCiAgICBiaW5kaW5ncwogIGFybTY0
OiBkdHM6IG1hcnZlbGw6IEFkZCBDUDExMCBDT01QSFkgY2xvY2tzCiAgYXJtNjQ6IGR0czogbWFy
dmVsbDogQWRkIDdrLzhrIHBlci1wb3J0IFBIWXMgaW4gU0FUQSBub2RlcwogIGFybTY0OiBkdHM6
IG1hcnZlbGw6IEFkZCA3ay84ayBQSFlzIGluIFVTQjMgbm9kZXMKICBhcm02NDogZHRzOiBtYXJ2
ZWxsOiBBZGQgN2svOGsgUEhZcyBpbiBQQ0llIG5vZGVzCiAgYXJtNjQ6IGR0czogbWFydmVsbDog
Q29udmVydCA3ay84ayB1c2ItcGh5IHByb3BlcnRpZXMgdG8gcGh5LXN1cHBseQoKIC4uLi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BjaS9wY2ktYXJtYWRhOGsudHh0ICB8ICAgNiArCiAuLi4vYmluZGlu
Z3MvcGh5L3BoeS1tdmVidS1jb21waHkudHh0ICAgICAgICAgfCAgMTAgKwogLi4uL2FybTY0L2Jv
b3QvZHRzL21hcnZlbGwvYXJtYWRhLTcwNDAtZGIuZHRzIHwgIDM3ICstCiAuLi4vbWFydmVsbC9h
cm1hZGEtODA0MC1jbGVhcmZvZy1ndC04ay5kdHMgICAgfCAgMjIgKy0KIC4uLi9hcm02NC9ib290
L2R0cy9tYXJ2ZWxsL2FybWFkYS04MDQwLWRiLmR0cyB8ICA0MyArLQogLi4uL2Jvb3QvZHRzL21h
cnZlbGwvYXJtYWRhLTgwNDAtbWNiaW4uZHRzaSAgIHwgIDM4ICstCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL21hcnZlbGwvYXJtYWRhLWNwMTEwLmR0c2kgfCAgMTMgKwogZHJpdmVycy9waHkvbWFydmVs
bC9waHktbXZlYnUtY3AxMTAtY29tcGh5LmMgIHwgNDEyICsrKysrKysrKysrKysrKy0tLQogOCBm
aWxlcyBjaGFuZ2VkLCA0OTkgaW5zZXJ0aW9ucygrKSwgODIgZGVsZXRpb25zKC0pCgotLSAKMi4y
MC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
