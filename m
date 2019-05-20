Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA0223C47
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LogtyM/M7b8fb0FHPJ4WVB16xyPisdIA5D+PiZginyQ=; b=fW1cq0NX6i9XVz
	cot+FsoNrz6Vx/sgqqwzTPtBVWiVkJ0rg5r3Ob0psizJLATx6jedvb/oGc7so5ihbDffeUPFoUVLa
	5fksFDfIGdmXVULuhrujk6hBe9UcMgRjaJ6ZIFNqz1r/wXbOoB/zI3f0d4JCqsqVrbaxdmSOh1hjO
	1yfmMEojJAzCwxB83y2QeTBtIq+23IYfMv2UX6rL6YCkSfF6N8x/uQJRan4nh6BRYA5bEIZ2iBtuU
	wLzMxEKZZS3yaDbpjGEONHPTe31Cth2/x2fI5Baml6eyJSY4Husxv7C85MHLIW/i+NcNar/JZvkpD
	Yf+I80ycjvQj8z7K52Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkM6-0004DA-2O; Mon, 20 May 2019 15:37:38 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkLx-0004Bc-Qx; Mon, 20 May 2019 15:37:31 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 569C11C000B;
 Mon, 20 May 2019 15:37:12 +0000 (UTC)
Date: Mon, 20 May 2019 17:37:04 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH 09/10] dt: fix broken references to nand.txt
Message-ID: <20190520173704.202cd65d@xps13>
In-Reply-To: <ce7602ba4d42e094a8b7fcf1dc2a01d25192a602.1558362030.git.mchehab+samsung@kernel.org>
References: <cover.1558362030.git.mchehab+samsung@kernel.org>
 <ce7602ba4d42e094a8b7fcf1dc2a01d25192a602.1558362030.git.mchehab+samsung@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_083730_023765_41614070 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mans Rullgard <mans@mansr.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jonathan Corbet <corbet@lwn.net>, Richard Weinberger <richard@nod.at>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Marek Vasut <marek.vasut@gmail.com>, Liang Yang <liang.yang@amlogic.com>,
 linux-mtd@lists.infradead.org, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF1cm8sCgpNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIrc2Ftc3VuZ0BrZXJuZWwu
b3JnPiB3cm90ZSBvbiBNb24sIDIwIE1heQoyMDE5IDExOjQ3OjM4IC0wMzAwOgoKPiBUaGUgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9uYW5kLnR4dCB3ZXJlIGJvdGggcmVu
YW1lZAo+IGFuZCBjb252ZXJ0ZWQgdG8gWUFNTCBvbiBhIHNpbmdsZSBwYXRjaCwgd2l0aG91dCB1
cGRhdGluZyByZWZlcmVuY2VzCj4gdG8gaXQuIFRoYXQgY2F1c2VkIHNldmVyYWwgY3Jvc3MtcmVm
ZXJlbmNlcyB0byBicmVhay4KPiAKPiBGaXhlczogMjEyZTQ5NjkzNTkyICgiZHQtYmluZGluZ3M6
IG10ZDogQWRkIFlBTUwgc2NoZW1hcyBmb3IgdGhlIGdlbmVyaWMgTkFORCBvcHRpb25zIikKPiAK
PiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIrc2Ftc3VuZ0Br
ZXJuZWwub3JnPgoKQWNrZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxp
bi5jb20+CgpUaGFua3MgZm9yIGZpeGluZyBpdCwKTWlxdcOobAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
