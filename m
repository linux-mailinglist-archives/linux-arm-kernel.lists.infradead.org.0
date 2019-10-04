Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CE0CBD39
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zoqNkWv60C8w4PZBDIe8F18UaTwdzzCCq4RNuYEIq0s=; b=KRyemKnj46O+N2
	3pWkuc1QCvekG8L8m/B88miS/niwpjjb0ZgWLNJdmZSEiCwqVb4sZVUvScew+Gvy8ZhiI79lWAgqQ
	JE/ga7A21/sku1XBQhiauiL6KvOcnwDpbuR/jR2TWX1Q4JJa/m6DLlaopZc+26NpoFWUNaaYWO63Q
	CashumzYMKXQyuaDV766SlzIUgFpU37Td+9gOiYd9lX5zLVxyBd/UT8GPYTgzJwThRU4HBUA1u6Ln
	o6yipfOYGuD7GS249/GdE40/sYLrYf9hfnrrZJ60Iz/eJJ8HeP0325/U2/Fqegbruux2jaeZfiOIR
	jUGs9dSeGcAwG6iX4cBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOax-0006hL-Lr; Fri, 04 Oct 2019 14:30:11 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYk-0004tW-6w
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:28:00 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 24DF1C001F;
 Fri,  4 Oct 2019 14:27:40 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 00/21] Add new Marvell CN9130 SoC support
Date: Fri,  4 Oct 2019 16:27:17 +0200
Message-Id: <20191004142738.7370-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072754_559994_ED2A884D 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIGlzIGEgcmVzcGluIG9mIHRoZSBsYXN0IHJlbWFpbmluZyBwYXRjaHNldCBu
ZWVkZWQgdG8gZnVsbHkgc3VwcG9ydApNYXJ2ZWxsIENOOTEzMCBTb0NzLiBUaGUgQ045MTMwIGlz
IG1hZGUgb2Ygb25lIEFQODA3IGFuZCBvbmUgaW50ZXJuYWwKQ1AxMTUuIFRoZXJlIGFyZSB0aHJl
ZSBkZXZlbG9wbWVudCBib2FyZHMgdGhhdCBhcmUgbWFkZSBvZiB0aGlzIFNvQzoKKiBDTjkxMzAt
REIKKiBDTjkxMzEtREIgKHdpdGggb25lIGFkZGl0aW9uYWwgbW9kdWxhciBDUDExNSBjb21wYXJl
ZCB0byBDTjkxMzAtREIpCiogQ045MTMyLURCICh3aXRoIHR3byBhZGRpdGlvbmFsIG1vZHVsYXIg
Q1AxMTUgY29tcGFyZWQgdG8gQ045MTMwLURCKQoKVGhpcyBzZXJpZXMgYXBwbGllcyBvbiB0b3Ag
b2YgdjUuNC1yYzEgYW5kIHdvcmtzIHRoYW5rcyB0byB0aGUKcHJldmlvdXNseSBtZXJnZWQgZm9s
bG93aW5nIHNlcmllczoKKiBDUDExMCBDT01QSFk6Cmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvY292ZXIvMTEwNjc2NDcvCiogQVA4MDYgQ1BVIGNsb2NrczoKaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9jb3Zlci8xMTAzODU3Ny8KKiBBUDgwNyBjbG9ja3M6Cmh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvY292ZXIvMTEwNzY0MzUvCiogQ1AxMTUgcGluY3RybDoKaHR0cDovL3Bh
dGNod29yay5vemxhYnMub3JnL2NvdmVyLzExNDIxMDcvCgpBcyBDUDExMCBhbmQgQ1AxMTUgKGFs
dGVybmF0aXZlbHksIEFQODA2IGFuZCBBUDgwNykgYXJlIHZlcnkgc2ltaWxhciwKd2UgZmlyc3Qg
cmVvcmdhbml6ZSBEVCBmaWxlcyB0byBjcmVhdGUgQ1AxMXggKGFuZCBBUDgweCkgZ2VuZXJpYwpm
aWxlcywgYmVmb3JlIGluY2x1ZGluZyB0aGVtIGZyb20gdGhlIG5ldyBzcGVjaWZpYyBDUDExMC9D
UDExNQooQVA4MDYvQVA4MDcpIG9uZXMuCgpBIGZldyBzbWFsbCBpbXByb3ZlbWVudHMvZml4ZXMg
aW4gdGhlc2UgZmlsZXMgYXJlIGFsc28gY2FycmllZC4KClRoYW5rcywKTWlxdcOobAoKQ2hhbmdl
cyBzaW5jZSB2MToKPT09PT09PT09PT09PT09PT0KKiBSZWJhc2VkIG9uIHRvcCBvZiB2NS40LXJj
MS4KKiBSb2IncyBSZXZpZXdlZC1ieSB0YWcgb24gdGhlIGZpcnN0IGJpbmRpbmdzIHBhdGNoICgw
MykuCiogVXNlZCB0aGUgQVBfTkFNRSBtYWNybyBpbnN0ZWFkIG9mIGhhcmRjb2RpbmcgYXA4MDYg
aW4gdGhlIERUIHdoaWNoCiAgdHVybnMgZ2VuZXJpYyAoc3BvdHRlZCBieSBHcmVnb3J5KS4KKiBD
b252ZXJ0ZWQgTWFydmVsbCBTb0MgY29tcGF0aWJsZSBiaW5kaW5ncyB0byB5YW1sIChwYXRjaCAx
NikgYXMKICByZXF1ZXN0ZWQgYnkgUm9iLiBBZGQgR3JlZ29yeSBhcyB0aGUgZmlsZSBtYWludGFp
bmVyLgoKCkJlbiBQZWxlZCAoMSk6CiAgZHQtYmluZGluZ3M6IGFwODB4OiByZXBsYWNlIEFQODA2
IHdpdGggQVA4MHgKCkdyemVnb3J6IEphc3pjenlrICg3KToKICBhcm02NDogZHRzOiBtYXJ2ZWxs
OiBBZGQgQVA4MDYtZHVhbCBjYWNoZSBkZXNjcmlwdGlvbgogIGFybTY0OiBkdHM6IG1hcnZlbGw6
IEFkZCBBUDgwNi1xdWFkIGNhY2hlIGRlc2NyaXB0aW9uCiAgYXJtNjQ6IGR0czogbWFydmVsbDog
QWRkIEFQODA3LXF1YWQgY2FjaGUgZGVzY3JpcHRpb24KICBkdC1iaW5kaW5nczogbWFydmVsbDog
RGVjbGFyZSB0aGUgQ045MTN4IFNvQyBjb21wYXRpYmxlcwogIGFybTY0OiBkdHM6IG1hcnZlbGw6
IEFkZCBzdXBwb3J0IGZvciBNYXJ2ZWxsIENOOTEzMC1EQgogIGFybTY0OiBkdHM6IG1hcnZlbGw6
IEFkZCBzdXBwb3J0IGZvciBNYXJ2ZWxsIENOOTEzMS1EQgogIGFybTY0OiBkdHM6IG1hcnZlbGw6
IEFkZCBzdXBwb3J0IGZvciBNYXJ2ZWxsIENOOTEzMi1EQgoKS29uc3RhbnRpbiBQb3JvdGNoa2lu
ICgxKToKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBQcmVwYXJlIHRoZSBpbnRyb2R1Y3Rpb24gb2Yg
QVA4MDcgYmFzZWQgU29DcwoKTWlxdWVsIFJheW5hbCAoMTIpOgogIGFybTY0OiBkdHM6IG1hcnZl
bGw6IEVudW1lcmF0ZSB0aGUgZmlyc3QgQVA4MDYgc3lzY29uCiAgYXJtNjQ6IGR0czogbWFydmVs
bDogQWRkIEFQODA2LWR1YWwgbWlzc2luZyBDUFUgY2xvY2tzCiAgTUFJTlRBSU5FUlM6IEFkZCBu
ZXcgTWFydmVsbCBDTjkxMzAtYmFzZWQgZmlsZXMgdG8gdHJhY2sKICBhcm02NDogZHRzOiBtYXJ2
ZWxsOiBNb3ZlIGNsb2NrcyB0byBBUDgwNiBzcGVjaWZpYyBmaWxlCiAgYXJtNjQ6IGR0czogbWFy
dmVsbDogQWRkIHN1cHBvcnQgZm9yIEFQODA3L0FQODA3LXF1YWQKICBhcm02NDogZHRzOiBtYXJ2
ZWxsOiBGaXggQ1AxMTAgTkFORCBjb250cm9sbGVyIG5vZGUgbXVsdGktbGluZSBjb21tZW50CiAg
ICBhbGlnbm1lbnQKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBQcmVwYXJlIHRoZSBpbnRyb2R1Y3Rp
b24gb2YgQ1AxMTUKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBEcm9wIFBDSWUgSS9PIHJhbmdlcyBm
cm9tIENQMTF4IGZpbGUKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBFeHRlcm5hbGl6ZSBQQ0llIG1h
Y3JvcyBmcm9tIENQMTF4IGZpbGUKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgc3VwcG9ydCBm
b3IgQ1AxMTUKICBkdC1iaW5kaW5nczogbWFydmVsbDogQ29udmVydCB0aGUgU29DIGNvbXBhdGli
bGVzIGRlc2NyaXB0aW9uIHRvIFlBTUwKICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBBZGQgc3VwcG9y
dCBmb3IgTWFydmVsbCBDTjkxMzAgU29DIHN1cHBvcnQKCiAuLi5yb2xsZXIudHh0ID0+IGFwODB4
LXN5c3RlbS1jb250cm9sbGVyLnR4dH0gfCAgMTQgKy0KIC4uLi9iaW5kaW5ncy9hcm0vbWFydmVs
bC9hcm1hZGEtN2stOGsudHh0ICAgICB8ICAyNCAtCiAuLi4vYmluZGluZ3MvYXJtL21hcnZlbGwv
YXJtYWRhLTdrLThrLnlhbWwgICAgfCAgNjEgKysKIE1BSU5UQUlORVJTICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgMyArLQogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxs
L01ha2VmaWxlICAgICAgICAgIHwgICAzICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9h
cm1hZGEtNzB4MC5kdHNpICB8ICAyOCArLQogLi4uL2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTgw
NDAtbWNiaW4uZHRzaSAgIHwgICAzICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJt
YWRhLTgweDAuZHRzaSAgfCAgNTYgKy0KIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgw
Ni1kdWFsLmR0c2kgICB8ICAyMyArCiAuLi4vYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtYXA4MDYt
cXVhZC5kdHNpICAgfCAgNDIgKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEt
YXA4MDYuZHRzaSB8IDQ1NiArLS0tLS0tLS0tLS0tLQogLi4uL2Jvb3QvZHRzL21hcnZlbGwvYXJt
YWRhLWFwODA3LXF1YWQuZHRzaSAgIHwgIDkzICsrKwogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS1hcDgwNy5kdHNpIHwgIDI5ICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVs
bC9hcm1hZGEtYXA4MHguZHRzaSB8IDQ0NCArKysrKysrKysrKysrKwogLi4uL2FybTY0L2Jvb3Qv
ZHRzL21hcnZlbGwvYXJtYWRhLWNvbW1vbi5kdHNpIHwgICA0ICstCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL21hcnZlbGwvYXJtYWRhLWNwMTEwLmR0c2kgfCA1NzUgKy0tLS0tLS0tLS0tLS0tLS0tCiBh
cmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWNwMTE1LmR0c2kgfCAgMTIgKwogYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1jcDExeC5kdHNpIHwgNTY4ICsrKysrKysr
KysrKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvY245MTMwLWRiLmR0cyAgICAg
fCA0MDMgKysrKysrKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvY245MTMwLmR0
c2kgICAgICAgfCAgMzcgKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9jbjkxMzEtZGIu
ZHRzICAgICB8IDIwMiArKysrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9jbjkxMzIt
ZGIuZHRzICAgICB8IDIyMSArKysrKysrCiAyMiBmaWxlcyBjaGFuZ2VkLCAyMjEwIGluc2VydGlv
bnMoKyksIDEwOTEgZGVsZXRpb25zKC0pCiByZW5hbWUgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9tYXJ2ZWxsL3thcDgwNi1zeXN0ZW0tY29udHJvbGxlci50eHQgPT4gYXA4
MHgtc3lzdGVtLWNvbnRyb2xsZXIudHh0fSAoOTElKQogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWFydmVsbC9hcm1hZGEtN2stOGsudHh0
CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9tYXJ2ZWxsL2FybWFkYS03ay04ay55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02
NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1hcDgwNy1xdWFkLmR0c2kKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWFwODA3LmR0c2kKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWFwODB4LmR0
c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRh
LWNwMTE1LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZl
bGwvYXJtYWRhLWNwMTF4LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL21hcnZlbGwvY245MTMwLWRiLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQv
Ym9vdC9kdHMvbWFydmVsbC9jbjkxMzAuZHRzaQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
NjQvYm9vdC9kdHMvbWFydmVsbC9jbjkxMzEtZGIuZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2NuOTEzMi1kYi5kdHMKCi0tIAoyLjIwLjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
