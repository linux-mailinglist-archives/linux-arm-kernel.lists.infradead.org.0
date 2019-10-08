Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2E8CFF5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yH/bsX/M3x0LcsKzGK2mpeadTYetkdzZWywKfldZvE=; b=EjjFpm6XuhdJaA
	k3eqohV7/1JCnlJqyqT0cnvXUWx5STq70LVR0zTR4HNYUvI/2++ohx14OS+VGEI8iEwJw9E10JWF6
	WfZZ/A4RZ5uxFuClyvcXt4T26qFAqvwKQC1YO9HU8xkCf96xNbG6x1H0uGwHOmqCYLgBj+6je9i8r
	7tpcR4Z0z20Ims3yjCKYcGrtpYY8a7HB86TV4t1u0mgyMkDxjvDRsfacCViMMmS5AG6w+HCEnaiq4
	4AfaieDwDiEPELJxN6YPrqncmj5PR5/O65C4C6PXB3upVNk6tOshCX0tQvxWwjP8bS9KREgimzy8/
	yS7rTWWGWi/Df3GLK2ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHsld-00018T-Te; Tue, 08 Oct 2019 16:55:21 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHslB-0008BX-Vt
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:54:55 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 3A4B2FF805;
 Tue,  8 Oct 2019 16:54:45 +0000 (UTC)
Date: Tue, 8 Oct 2019 18:54:44 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marek =?UTF-8?B?QmVow7pu?= <marek.behun@nic.cz>
Subject: Re: [PATCH mvebu-dt64 1/1] arm64: dts: armada-3720-turris-mox:
 convert usb-phy to phy-supply
Message-ID: <20191008185444.557c4365@xps13>
In-Reply-To: <20191008184921.60e526bc@dellmb>
References: <20191008145944.21659-1-marek.behun@nic.cz>
 <871rvntcr4.fsf@FE-laptop> <20191008184921.60e526bc@dellmb>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_095454_159928_E8BDC882 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3JlZ29yeSwKCk1hcmVrIEJlaMO6biA8bWFyZWsuYmVodW5AbmljLmN6PiB3cm90ZSBvbiBU
dWUsIDggT2N0IDIwMTkgMTg6NDk6MjEKKzAyMDA6Cgo+IEdyZWdvcnksCj4gCj4gSSBjb21tdW5p
Y2F0ZWQgd2l0aCBNaXF1ZWwgd2hlbiBJIGZpcnN0IGRpc2NvdmVyZWQgdGhpcyByZWdyZXNzaW9u
LCBzZWUKPiBodHRwczovL21hcmMuaW5mby8/bD1saW51eC11c2ImbT0xNTY5NjYzMjgzMTA0NzIm
dz0yCj4gCj4gSW4gdGhpcyBtYWlsIE1pcXVlbCBpcyBtZW50aW9uaW5nIGEgcGF0Y2gKPiAoaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTA2NzY4Ny8pIHdoaWNoIGRvZXMgdGhl
IHNhbWUgZm9yCj4gQXJtYWRhIDdrLzhrLiBIZSBzYXlzIGhpcyBwYXRjaCBzaG91bGQgZW50ZXIg
bmV4dCByZWxlYXNlLCBidXQgc2luY2Ugb24KPiBNb3ggdGhpcyBjYXVzZWQgYSByZWdyZXNzaW9u
LCBJIHdvdWxkIGxpa2UgaXQgdG8gYmUgbWVyZ2VkIG5vdy4KPiAKPiBBbnl3YXkgaWYgeW91IHdh
bnQgdG8gc3RpbGwgd2FpdCBmb3IgTWlxdWVscyByZXZpZXcgdG8gYmUgc3VyZSwgSSBhbSBvawo+
IHdpdGggdGhhdC4KClJldmlld2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJv
b3RsaW4uY29tPgoKSSB0aGluayBpdCBpcyBhIGdvb2QgY2FuZGlkYXRlIGZvciBhIGZpeGVzIFBS
LgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
