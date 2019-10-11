Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7F6D42D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjSxWzV7WscOWE7dJs3XDjQ/yc92Ge6DZDZ7dNtAGP4=; b=tTy7tL3OR6SQzU
	OCpHlkRD4kLRU/h40W9cNa05cUYpMPEssDKBCL2y+nhyHJ6qoIYvAOxGxt0hFu2hIdGkT0I7RFidM
	UpfnQ/T7MPvwI5YZ0YkhhYqu5Q2CyF+h/wR0fbsYB3LgHqwFtZIZk/azceIub/nlXgwxiwIVRLwU+
	T/ZHpvX790PdCOdorA1XYbzHiWKPlRdnQvFbAVd+Lv8+lOoZoft2KYVXXezRD5zqHUtl/AX5tjGVy
	NOOQact3WZOoy20/z9+wBb6rUni0VeMVws2ZHJDBjnprPJi5D2v2I5YcmHI9HpR8Ov6hAtHO0lSGN
	WNgCNYkI2RZsPqI+r5Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvvB-0008Cl-Gy; Fri, 11 Oct 2019 14:29:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvv0-0008CJ-OQ; Fri, 11 Oct 2019 14:29:24 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 144832910C7;
 Fri, 11 Oct 2019 15:29:21 +0100 (BST)
Date: Fri, 11 Oct 2019 16:29:19 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: =?UTF-8?B?Q8OpZHJpYw==?= Le Goater <clg@kaod.org>
Subject: Re: [PATCH 04/16] mtd: spi-nor: aspeed: Add read training
Message-ID: <20191011162919.77b05cf8@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <3244b1ce-587c-6f12-cc9c-7eee0354e76b@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004115919.20788-5-clg@kaod.org>
 <20191011142805.6cc3905c@dhcp-172-31-174-146.wireless.concordia.ca>
 <3244b1ce-587c-6f12-cc9c-7eee0354e76b@kaod.org>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_072922_925282_44BFB019 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-aspeed@lists.ozlabs.org, Tudor Ambarus <tudor.ambarus@microchip.com>,
 Andrew Jeffery <andrew@aj.id.au>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxMSBPY3QgMjAxOSAxNTo1NToyNSArMDIwMApDw6lkcmljIExlIEdvYXRlciA8Y2xn
QGthb2Qub3JnPiB3cm90ZToKCiAKPiA+IChob3cgY2FuIHlvdSBkZXRlcm1pbmUgaWYgdGltaW5n
cyBhcmUgZ29vZCB3aGVuIElPIHBpbnMgYWx3YXlzCj4gPiBzdGF5IGhpZ2gpLiBEb24ndCB3ZSBo
YXZlIGEgY29tbWFuZCB0aGF0IHJldHVybiBub24tZmYvbm9uLTAgZGF0YSB3aGlsZQo+ID4gc3Rp
bGwgYmVpbmcgcHJlZGljdGFibGUgYW5kIGltbXV0YWJsZT8gICAKPiAKPiBOb3QgdGhhdCBJIGtu
b3cgb2Ygb24gdGhlc2UgY29udHJvbGxlcnMuCgpJdCdzIG5vdCByZWFsbHkgYSBjb250cm9sbGVy
IHRoaW5nLCBtb3JlIGEgY2hpcCB0aGluZy4gVGhlIGlkZWFsCnNvbHV0aW9uIHdvdWxkIGJlIHRv
IGhhdmUgYSBsb29wYmFjayBtb2RlIG9yIGFuIGludGVybmFsIFNSQU0geW91IGNhbgp3cml0ZSB0
aGVuIHJlYWQgYmFjaywgYnV0IEFGQUlDVCBpdCBkb2Vzbid0IGV4aXN0cy4gVGhlcmUncyB0aGUg
U0ZEUAp0YWJsZSBhcyBWaWduZXNoIG1lbnRpb25lZCwgYnV0IHdlIGhhdmUgdGhlIGZvbGxvd2lu
ZyBwcm9ibGVtczoKCjEvIGl0IG1pZ2h0IGJlIHRvbyBzbWFsbCAoZGVmaW5pdGVseSA8IDE2aykK
Mi8gc29tZSBOT1JzIGRvbid0IHN1cHBvcnQgU0ZEUCAobWF5YmUgbm90IHRoZSBvbmVzIHdlIGNh
cmUgYWJvdXQKICAgdGhvdWdoKQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
