Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30415D397E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFQznv3+CoMBje7es+gKAfAG9v1g3WGP+UvY4bQxDKA=; b=Gzburu2MnLF5Jk
	yfaTWzCD0OjfkG176qKxv7WWW/Yt7vgApCnrph9LzzpVpGdkzfRkrCdQA2HqTu6LLgTN8CxMpw6Hq
	wOC+aFmEDJfUS3Y6yiW2/2TcAQ3ApPlvQZKlNHKDIQltLIXcmU1Wj3/RtaMVrqszBoTEVLk3csUEO
	gi+7fm+/0o9s6xxTq3L7dmB4jHNX1/2DLwm/OHakdmcHPO7imystp/SaoWhuls/i5r3La8B5ob7FB
	YCYFl1x2jspzMYcoHEzcYPwXPj0o/vJIiPD4Vvh15fgUkCTaf1EyEVsG0VFZUdGTupL7qtTgpewN7
	IrEN2Ltomq+jPv+rVPiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIogE-0000q1-HQ; Fri, 11 Oct 2019 06:45:38 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIog6-0000pK-AR; Fri, 11 Oct 2019 06:45:31 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D1DE7289C93;
 Fri, 11 Oct 2019 07:45:26 +0100 (BST)
Date: Fri, 11 Oct 2019 08:45:22 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH 00/16] mtd: spi-nor: aspeed: AST2600 support and extensions
Message-ID: <20191011084503.5b7a7c2c@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <CACPK8Xe__AYvrh40vqjwoM=XKJfp5MeqrMARpFUDGWCyJK6jXQ@mail.gmail.com>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191009225555.67622339@dhcp-172-31-174-146.wireless.concordia.ca>
 <CACPK8Xe__AYvrh40vqjwoM=XKJfp5MeqrMARpFUDGWCyJK6jXQ@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_234530_494119_FD67D577 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?Q8OpZHJpYw==?= Le Goater <clg@kaod.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxMCBPY3QgMjAxOSAyMzo0Nzo0NSArMDAwMApKb2VsIFN0YW5sZXkgPGpvZWxAam1z
LmlkLmF1PiB3cm90ZToKCj4gT24gV2VkLCA5IE9jdCAyMDE5IGF0IDIwOjU2LCBCb3JpcyBCcmV6
aWxsb24KPiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4KPiA+IEhp
IENlZHJpYywKPiA+Cj4gPiBPbiBGcmksICA0IE9jdCAyMDE5IDEzOjU5OjAzICswMjAwCj4gPiBD
w6lkcmljIExlIEdvYXRlciA8Y2xnQGthb2Qub3JnPiB3cm90ZToKPiA+ICAKPiA+ID4gSGVsbG8s
Cj4gPiA+Cj4gPiA+IFRoaXMgc2VyaWVzIGZpcnN0IGV4dGVuZHMgdGhlIHN1cHBvcnQgZm9yIHRo
ZSBBc3BlZWQgQVNUMjUwMCBhbmQKPiA+ID4gQVNUMjQwMCBTTUMgZHJpdmVyLiBJdCBhZGRzIER1
YWwgRGF0YSBzdXBwb3J0IGFuZCByZWFkIHRyYWluaW5nIGdpdmluZwo+ID4gPiB0aGUgYmVzdCBy
ZWFkIHNldHRpbmdzIGZvciBhIGdpdmVuIGNoaXAuIFN1cHBvcnQgZm9yIHRoZSBuZXcgQVNUMjYw
MAo+ID4gPiBTb0MgaXMgYWRkZWQgYXQgdGhlIGVuZC4KPiA+ID4KPiA+ID4gSSB1bmRlcnN0YW5k
IHRoYXQgYSBuZXcgc3BpX21lbSBmcmFtZXdvcmsgZXhpc3RzIGFuZCBJIGRvIGhhdmUgYW4KPiA+
ID4gZXhwZXJpbWVudGFsIGRyaXZlciB1c2luZyBpdC4gQnV0IHVuZm9ydHVuYXRlbHksIGl0IGlz
IGRpZmZpY3VsdCB0bwo+ID4gPiBpbnRlZ3JhdGUgdGhlIHJlYWQgdHJhaW5pbmcuIFRoZSBBc3Bl
ZWQgY29uc3RyYWludHMgYXJlIG5vdCBjb21wYXRpYmxlCj4gPiA+IGFuZCBpIGhhdmVuJ3QgaGFk
IHRoZSB0aW1lIHRvIGV4dGVuZCB0aGUgY3VycmVudCBmcmFtZXdvcmsuICAKPiA+Cj4gPiBIbSwg
SSBkb24ndCB0aGluayB0aGF0J3MgYSBnb29kIHJlYXNvbiB0byBwdXNoIG5ldyBmZWF0dXJlcyB0
byB0aGUKPiA+IGV4aXN0aW5nIGRyaXZlciwgZXNwZWNpYWxseSBzaW5jZSBJIGFza2VkIG90aGVy
cyB0byBtaWdyYXRlIHRoZWlyCj4gPiBkcml2ZXJzIHRvIHNwaS1tZW0gaW4gdGhlIHBhc3QuIEkg
ZG8gdW5kZXJzdGFuZCB5b3VyIGNvbmNlcm5zLCBhbmQgSSdsbAo+ID4gbGV0IHRoZSBTUEkgTk9S
L01URCBtYWludGFpbmVycyBtYWtlIHRoZSBmaW5hbCBjYWxsLCBidXQgSSB0aGluayBpdCdkCj4g
PiBiZSBiZXR0ZXIgZm9yIHRoZSBTUEkgTUVNIGVjb3N5c3RlbSB0byB0aGluayBhYm91dCB0aGlz
IGxpbmstdHJhaW5pbmcKPiA+IEFQSSAoVmlnbmVzaCBuZWVkcyBpdCBmb3IgdGhlIENhZGVuY2Ug
ZHJpdmVyIElJUkMpIHJhdGhlciB0aGFuIHB1c2hpbmcKPiA+IHRoaXMga2luZCBvZiBmZWF0dXJl
IHRvIHNwaS1ub3IgY29udHJvbGxlciBkcml2ZXJzLiAgCj4gCj4gQXMgQ2VkcmljIG1lbnRpb25l
ZCwgdGhlIE9wZW5CTUMgcHJvamVjdCBoYXMgYmVlbiBzaGlwcGluZyB0aGUgcmVhZAo+IHRyYWlu
aW5nIGNvZGUgZm9yIHRoZSBhc3QyNDAwL2FzdDI0MDAgZm9yIHNldmVyYWwgeWVhcnMgbm93LiBJ
dCB3b3VsZAo+IGJlIGdyZWF0IHRvIHNlZSBpdCBpbiBtYWlubGluZS4KPiAKPiBJIHRoaW5rIGl0
J3MgcmVhc29uYWJsZSB0byBhc2sgZm9yIHRoZSBkcml2ZXIgdG8gYmUgbW92ZWQgdG8gdGhlCj4g
c3BpLW1lbSBzdWJzeXN0ZW0gb25jZSBpdCBoYXMgdGhlIHJlcXVpcmVkIEFQSXMuCgpFeGNlcHQg
aXQgd29uJ3QgaGF2ZSB0aGUgbmVjZXNzYXJ5IEFQSXMgdW5sZXNzIHNvbWVvbmUgd29ya3Mgb24g
aXQsIGFuZAphZGRpbmcgdGhpcyBmZWF0dXJlIHRvIGV4aXN0aW5nIHNwaS1ub3IgZHJpdmVycyB3
b24ndCBoZWxwIGFjaGlldmluZwp0aGlzIGdvYWwuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
