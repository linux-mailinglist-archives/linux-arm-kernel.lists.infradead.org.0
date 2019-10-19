Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4E7DD7B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 11:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgMmZCLdBOP4KDQq6W/8WqQOs5HtS+x4FIUHeGQ86Bk=; b=cfVLNLZajBl/dY
	ZHg4duDyAY7BknxVBH1auY6+E//XsWIBv02+bhh0qOoJlBGUcI4OparivDtBugBhVxsGzVzM/R/us
	2FMHZUilpHBTFAogyWJ9CLQYujxCsKijpmMZKOMk8nQV8t46XPjxrzbRKADfK0m6l8dakBGTwM63y
	tYXN1rDqt8eQpm26jkHZk6/zPugNI6Jt/Jj/R4yvAXlPkJ1WWR/3uJo9eBp0e9H7EIDuz+vOBoG6y
	r1T59yliZz+yP2j53FRsj+vzIZudRytxwHw9ZSmIsh/8Sb824EZG//9v0eEEPTItHCpOxTE3Eb23x
	OLnveXrk1kAeAhTbDOlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLlCp-0002w4-Tu; Sat, 19 Oct 2019 09:39:27 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLlCe-0002v6-QN; Sat, 19 Oct 2019 09:39:18 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 43C3A20002;
 Sat, 19 Oct 2019 09:39:01 +0000 (UTC)
Date: Sat, 19 Oct 2019 11:39:00 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] mtd: rawnand: brcmnand: Fix sparse warning in
 has_flash_dma()
Message-ID: <20191019113824.15fa4f52@xps13>
In-Reply-To: <20191018233844.23838-1-f.fainelli@gmail.com>
References: <20191018233844.23838-1-f.fainelli@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_023916_992260_42A91E2A 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "open list:BROADCOM STB NAND FLASH DRIVER" <linux-mtd@lists.infradead.org>,
 "open list:BROADCOM STB NAND FLASH
 DRIVER" <bcm-kernel-feedback-list@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmxvcmlhbiwKCkZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPiB3cm90
ZSBvbiBGcmksIDE4IE9jdCAyMDE5CjE2OjM4OjQ0IC0wNzAwOgoKPiBTcGFyc2UgcmlnaHRmdWxs
eSBjb21wbGFpbmVkIGFib3V0IGhhc19mbGFzaF9kbWEoKToKPiArZHJpdmVycy9tdGQvbmFuZC9i
cmNtbmFuZC9icmNtbmFuZC5jOjk1MTo0MDogd2FybmluZzogVXNpbmcgcGxhaW4gaW50ZWdlciBh
cyBOVUxMIHBvaW50ZXIgW3NwYXJzZV0KCkkgZG9uJ3QgZ2V0IHdoeSB3b3VsZCBzcGFyc2UgY29t
cGxhaW4gYWJvdXQgdGhpcy4uLiBBbnl3YXkgSSBwcmVmZXIKdGhlICEhKDxwb2ludGVyPikgYWx0
ZXJuYXRpdmUgaWYgeW91IGRvbid0IG1pbmQuIE90aGVyd2lzZSB0aGUgIiE9Ck5VTEwiIGNvbXBh
cmlzb24gZmVlbHMgd3JvbmcuCgo+IAo+IEZpeGVzOiAyN2M1YjE3Y2QxYjEgKCJtdGQ6IG5hbmQ6
IGFkZCBOQU5EIGRyaXZlciAibGlicmFyeSIgZm9yIEJyb2FkY29tIFNUQiBOQU5EIGNvbnRyb2xs
ZXIiKQo+IFNpZ25lZC1vZmYtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jIHwg
MiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyBi
L2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMKPiBpbmRleCAxNWVmMzBi
MzY4YTUuLjczZjdhMDk0NTM5OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9i
cmNtbmFuZC9icmNtbmFuZC5jCj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQv
YnJjbW5hbmQuYwo+IEBAIC05MDksNyArOTA5LDcgQEAgc3RhdGljIGlubGluZSB2b2lkIGJyY21u
YW5kX3NldF93cChzdHJ1Y3QgYnJjbW5hbmRfY29udHJvbGxlciAqY3RybCwgYm9vbCBlbikKPiAg
Cj4gIHN0YXRpYyBpbmxpbmUgYm9vbCBoYXNfZmxhc2hfZG1hKHN0cnVjdCBicmNtbmFuZF9jb250
cm9sbGVyICpjdHJsKQo+ICB7Cj4gLQlyZXR1cm4gY3RybC0+Zmxhc2hfZG1hX2Jhc2U7Cj4gKwly
ZXR1cm4gY3RybC0+Zmxhc2hfZG1hX2Jhc2UgIT0gTlVMTDsKPiAgfQo+ICAKPiAgc3RhdGljIGlu
bGluZSB2b2lkIGRpc2FibGVfY3RybF9pcnFzKHN0cnVjdCBicmNtbmFuZF9jb250cm9sbGVyICpj
dHJsKQoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
