Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAB857FAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 11:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H3Dg8QPPXg8W9MEM/dGlmZxP+pErvzOM+sUQB9zedOI=; b=QF7PlUqe2GQCfU
	26zVdSu1aRYauLlNz6vLiQlXA8YYUzfpqiRubkuVJvdJgsiChYuB7R/P0K76BuoJTYHy3NaA9cBrx
	kaIAn7/JotVPdPRKrfibaM7B0s4EIMP0lqo2jxVQ5TasXUnaWTfQddP26BNC/mUnJldgLV1IQVJX9
	TFUCr0VLP11Hhc3bGVcvTIUNO9UMZb5VqwyrDDnox6KcIxZ7uFIWNryIWDweNtLHb4wR3z/qNGzp5
	5Gwi3rrVBAvEF9uxPg7Y8VcFyA5wxLo+Iw6GMRiOU2Pt/SYJVXg/mVoIvEZCAkR8jSzaOKzabt37L
	PFsRJqHcqnpY8REO6Phw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgR4W-0003Hr-7E; Thu, 27 Jun 2019 09:52:04 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgR3p-000330-TM
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 09:51:24 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 341AA240002;
 Thu, 27 Jun 2019 09:51:06 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2 00/19] Enhance CP110 COMPHY support
Date: Thu, 27 Jun 2019 11:50:45 +0200
Message-Id: <20190627095104.22529-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_025122_257133_DED9550E 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
IHYxOgotLS0tLS0tLS0tLS0tLS0tLQotIEFsbCBtb2RlcyByZXBvcnQgdGhlaXIgZXJyb3JzIHRv
IHRoZSB1c2VyLgotIElmIHRoZSBmaXJtd2FyZSBpcyB0b28gb2xkLCBhZHZpc2UgdGhlIHVzZXIg
dG8gdXBkYXRlIGl0LgotIENyZWRpdCBHcnplZ29yeiBmb3IgaGlzIHdvcmsuCi0gRml4IHdyb25n
IHNwZWVkIGluIEV0aGVybmV0IG1vZGVzLgotIEFkZCBDT01QSFkgbmVjZXNzYXJ5IGNsb2Nrcy4K
LSBVcGRhdGUgYmluZGluZ3MuCi0gVGhlIHNlY3VyaXR5IGZsYXcgcmVsYXRlZCB0byB0aGUgZmFj
dCB0aGF0IHdlIG11c3QgZ2l2ZSB0aGUgQ1AKICBhZGRyZXNzIHRvIHRoZSBmaXJtd2FyZSBoYXMg
YmVlbiBtaXRpZ2F0ZWQgYnkgdGhlIGFkZGl0aW9uIG9mIGV4dHJhCiAgY2hlY2tzIGluIEFURiBy
ZWNlbnRseS4KCkdyemVnb3J6IEphc3pjenlrICg1KToKICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBo
eTogQWRkIFNNQyBjYWxsIHN1cHBvcnQKICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTogQWRkIFJY
QVVJIHN1cHBvcnQKICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTogQWRkIFVTQjMgaG9zdC9kZXZp
Y2Ugc3VwcG9ydAogIHBoeTogbXZlYnUtY3AxMTAtY29tcGh5OiBBZGQgU0FUQSBzdXBwb3J0CiAg
cGh5OiBtdmVidS1jcDExMC1jb21waHk6IEFkZCBQQ0llIHN1cHBvcnQKCk1pcXVlbCBSYXluYWwg
KDE0KToKICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTogQWRkIGNsb2NrcyBzdXBwb3J0CiAgcGh5
OiBtdmVidS1jcDExMC1jb21waHk6IEV4cGxpY2l0bHkgaW5pdGlhbGl6ZSB0aGUgbGFuZSBzdWJt
b2RlCiAgcGh5OiBtdmVidS1jcDExMC1jb21waHk6IExpc3QgYWxyZWFkeSBzdXBwb3J0ZWQgRXRo
ZXJuZXQgbW9kZXMKICBwaHk6IG12ZWJ1LWNwMTEwLWNvbXBoeTogUmVuYW1lIHRoZSBtYWNybyBo
YW5kbGluZyBvbmx5IEV0aGVybmV0IG1vZGVzCiAgcGh5OiBtdmVidS1jcDExMC1jb21waHk6IEFs
bG93IG5vbi1FdGhlcm5ldCBtb2RlcyB0byBiZSBjb25maWd1cmVkCiAgcGh5OiBtdmVidS1jcDEx
MC1jb21waHk6IENvc21ldGljIGNoYW5nZSBpbiBhIGhlbHBlcgogIHBoeTogbXZlYnUtY3AxMTAt
Y29tcGh5OiBVcGRhdGUgY29tbWVudCBhYm91dCBwb3dlcmluZyBvZmYgYWxsIGxhbmVzCiAgICBh
dCBib290CiAgZHQtYmluZGluZ3M6IHBoeTogQWRkIE1hcnZlbGwgQ09NUEhZIGNsb2NrcwogIGR0
LWJpbmRpbmdzOiBwY2k6IGFkZCBQSFkgcHJvcGVydGllcyB0byBBcm1hZGEgN0svOEsgY29udHJv
bGxlcgogICAgYmluZGluZ3MKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgQ1AxMTAgQ09NUEhZ
IGNsb2NrcwogIGFybTY0OiBkdHM6IG1hcnZlbGw6IEFkZCA3ay84ayBwZXItcG9ydCBQSFlzIGlu
IFNBVEEgbm9kZXMKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgN2svOGsgUEhZcyBpbiBVU0Iz
IG5vZGVzCiAgYXJtNjQ6IGR0czogbWFydmVsbDogQWRkIDdrLzhrIFBIWXMgaW4gUENJZSBub2Rl
cwogIGFybTY0OiBkdHM6IG1hcnZlbGw6IENvbnZlcnQgN2svOGsgdXNiLXBoeSBwcm9wZXJ0aWVz
IHRvIHBoeS1zdXBwbHkKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcGNpLWFybWFkYThr
LnR4dCAgfCAgIDQgKwogLi4uL2JpbmRpbmdzL3BoeS9waHktbXZlYnUtY29tcGh5LnR4dCAgICAg
ICAgIHwgIDEwICsKIC4uLi9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS03MDQwLWRiLmR0
cyB8ICAzNyArLQogLi4uL21hcnZlbGwvYXJtYWRhLTgwNDAtY2xlYXJmb2ctZ3QtOGsuZHRzICAg
IHwgIDIyICstCiAuLi4vYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtODA0MC1kYi5kdHMg
fCAgNDMgKy0KIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS04MDQwLW1jYmluLmR0c2kgICB8
ICAzOCArLQogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExMC5kdHNpIHwg
IDEzICsKIGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWNwMTEwLWNvbXBoeS5jICB8IDQw
OSArKysrKysrKysrKysrKystLS0KIDggZmlsZXMgY2hhbmdlZCwgNDk0IGluc2VydGlvbnMoKyks
IDgyIGRlbGV0aW9ucygtKQoKLS0gCjIuMTkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
