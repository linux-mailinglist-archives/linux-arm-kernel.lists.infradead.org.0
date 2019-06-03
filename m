Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0853321A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vz5YZ9Ql5w7mi9LaGmxUGHiiEo890o3vFSUIIgGB1oQ=; b=krfsfbpluwzYAX
	hDm3TFNTGA3sUVpuM0DNf6+QoGUJmzR0nSRRP3QSJVX4qJzjghYucU1LyizY0c5qMdDjqaZ+XLOth
	jdXsuKG/2iJf7jLEIPvag4ACJCYqOpxaEshhMZi+KN005d9C1EpUo8ym7eeVg6cFJPySoWc3BpVDc
	PktDaFIPJRIARPEQQMG29Ho3ygz6BEGanb4H/QMEN38kccxTc9MlkvDsHujY5iSL3QSoirEUrlpic
	4fF+ohvQ8JyxP3wbX2Jp8j9S5IxD2PdSPgLFwGjeu2IeI1P7yEsI1DgU5wDL2syPlFNi66ZCjNKzU
	l9PybtngFx9DnrGuE0jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnvT-0005XF-Nn; Mon, 03 Jun 2019 14:27:03 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnvM-0005W9-TS
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:26:58 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0D0B8E0008;
 Mon,  3 Jun 2019 14:26:50 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH resend 0/2] Marvell A7k/A8k thermal throttling
In-Reply-To: <20190521142504.31558-1-miquel.raynal@bootlin.com>
References: <20190521142504.31558-1-miquel.raynal@bootlin.com>
Date: Mon, 03 Jun 2019 16:26:50 +0200
Message-ID: <87sgsqkamt.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_072657_109617_03B19C6F 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3JpdGVzOgoKPiBIZWxs
bywKPgo+IFRoaXMgc2VyaWVzIHdvcmtzIG9uIHRvcCBvZiBHcmVnb3J5J3Mgc2VyaWVzIGFkZGlu
ZyBib3RoIENQVWZyZXEgKGFscmVhZHkKPiBtZXJnZWQpIGFuZCBhIHN1aXRhYmxlIEFQODA2IGNs
b2NrIGRyaXZlci4gVGhlc2UgdHdvIHBhdGNoZXMgY2FuIGZseQo+IGFzLWlzIGFuZCBkbyBub3Qg
ZGVwZW5kIG9uIEdyZWdvcnkncyB3b3JrIHRvIGFwcGx5IGFuZCBzaG91bGQgcHJvYmFibHkKPiBt
ZXJnZWQgaW5kZXBlbmRlbnRseS4KPgo+IFdpdGggaGlzIHBhdGNoZXMsIGFsbCB0aGUgcGllY2Vz
IHdoZXJlIGF2YWlsYWJsZSB0byBlbmFibGUgdGhlcm1hbAo+IHRocm90dGxpbmcgb24gdGhlIEFQ
ODA2IGVtYmVkZGVkIGluIE1hcnZlbGwgQXJtYWRhIDdrLzhrIFNvQ3MuIFRoaXMgaXMKPiBqdXN0
IHRoZSBnbHVlIHRvIG1ha2UgaXQgYWN0dWFsbHkgd29yay4KPgo+IFBhdGNoIDEgY2hhbmdlcyB0
aGUgY29yZSBudW1iZXJpbmcgaW4gdGhlIHRoZXJtYWwtem9uZSBub2RlIHRvIGJlIGluCj4gc3lu
YyB3aXRoIHRoZSBDUFUgbnVtYmVyaW5nIGluIHRoZSBEVCAoZnJvbSAwIHRvIDMgaW5zdGVhZCBv
ZiBmcm9tIDEKPiB0byA0KS4gUGF0Y2ggMiBhZGRzIHRyaXAgcG9pbnRzIGFuZCBjb29saW5nIG1h
cHMgdG8gYWN0dWFsbHkgZW5hYmxlCj4gdGhlIGZlYXR1cmUuCj4KPiBUZXN0ZWQgd2l0aCBhbiBB
cm1hZGEgN2sgREIuCj4KPiBUaGFua3MsCj4gTWlxdcOobAo+Cj4gTWlxdWVsIFJheW5hbCAoMik6
Cj4gICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBDaGFuZ2UgY29yZSBudW1iZXJpbmcgaW4gQVA4MDYg
dGhlcm1hbC1ub2RlCj4gICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBFbmFibGUgQVA4MDYgdGhlcm1h
bCB0aHJvdHRsaW5nIHdpdGggQ1BVZnJlcQoKQm90aCBwYWN0aGVzIGFwcGxpZWQgb24gbXZlYnUv
ZHQ2NAoKVGhhbmtzLAoKR3JlZ29yeQoKPgo+ICAuLi4vYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEt
YXA4MDYtZHVhbC5kdHNpICAgfCAgIDIgKwo+ICAuLi4vYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEt
YXA4MDYtcXVhZC5kdHNpICAgfCAgIDUgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
YXJtYWRhLWFwODA2LmR0c2kgfCAxMTAgKysrKysrKysrKysrKysrLS0tCj4gIDMgZmlsZXMgY2hh
bmdlZCwgMTAzIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+Cj4gLS0gCj4gMi4xOS4x
Cj4KCi0tIApHcmVnb3J5IENsZW1lbnQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5l
bCBlbmdpbmVlcmluZwpodHRwOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
