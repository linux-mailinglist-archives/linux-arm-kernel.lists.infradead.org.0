Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804B81360E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 20:17:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjzajFYS0KTj4Oc+P01IwAdvnENIYRtu53808sZRidQ=; b=KoaRf5BfgHkPo2
	jNPBTwbDKPPcab5UbFU1GtuJNf6wQv+YAYVNkxeyWB/q4LXQQtn6Yw9kmQn+y+lUb/Bp9xn4cL0pT
	bvBm8NBg9Xd0/m23ILkzW26+QtUXZTSZTqCtohmvRL7XI7v2wajw+tY3C1DbtMPoRBPsfmR27lUOR
	FGgWmu3HuyWhtuM6Jrfw2fGRSus+ydpj1nmcOnGwfn+bUsYt2AI3fSzQam537i37iPfWkm+Ykj+P8
	HLTBiTOt0GF6TRwSAGYrr6lW85WYj5pFXkb/1sFz+iJ1cnAC4UcdmPF8tFZQIPwOz5ApHQFtjNOzC
	wDOycRAsT/n2furXRm2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdIq-0001ft-1t; Thu, 09 Jan 2020 19:17:08 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdIZ-0001cw-1R; Thu, 09 Jan 2020 19:16:52 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 6E53C240003;
 Thu,  9 Jan 2020 19:16:45 +0000 (UTC)
Date: Thu, 9 Jan 2020 20:16:44 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 07/16] dt-bindings: atmel-nand: add microchip,sam9x60-pmecc
Message-ID: <20200109201644.34c6b936@xps13>
In-Reply-To: <1578488123-26127-8-git-send-email-claudiu.beznea@microchip.com>
References: <1578488123-26127-1-git-send-email-claudiu.beznea@microchip.com>
 <1578488123-26127-8-git-send-email-claudiu.beznea@microchip.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_111651_223349_6AD1BDFD 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, vigneshr@ti.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, pmeerw@pmeerw.net, lee.jones@linaro.org,
 linux-rtc@vger.kernel.org, lars@metafoo.de, richard@nod.at,
 ludovic.desroches@microchip.com, wg@grandegger.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 tudor.ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, broonie@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, netdev@vger.kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, robh+dt@kernel.org, knaack.h@gmx.de,
 dmaengine@vger.kernel.org, eugen.hristev@microchip.com, jic23@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2xhdWRpdSwKCkNsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29t
PiB3cm90ZSBvbiBXZWQsIDggSmFuIDIwMjAKMTQ6NTU6MTQgKzAyMDA6Cgo+IEFkZCBtaWNyb2No
aXAsc2FtOXg2MC1wbWVjYyB0byBEVCBiaW5kaW5ncyBkb2N1bWVudGF0aW9uLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29tPgo+
IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVsLW5hbmQu
dHh0IHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVsLW5hbmQudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hdG1lbC1uYW5kLnR4dAo+
IGluZGV4IDY4YjUxZGM1ODgxNi4uM2FhMjk3Yzk3YWI2IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvYXRtZWwtbmFuZC50eHQKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVsLW5hbmQudHh0Cj4gQEAgLTU3
LDYgKzU3LDcgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKPiAgCSJhdG1lbCxhdDkxc2FtOWc0NS1w
bWVjYyIKPiAgCSJhdG1lbCxzYW1hNWQ0LXBtZWNjIgo+ICAJImF0bWVsLHNhbWE1ZDItcG1lY2Mi
Cj4gKwkibWljcm9jaGlwLHNhbTl4NjAtcG1lY2MiCj4gIC0gcmVnOiBzaG91bGQgY29udGFpbiAy
IHJlZ2lzdGVyIHJhbmdlcy4gVGhlIGZpcnN0IG9uZSBpcyBwb2ludGluZyB0byB0aGUgUE1FQ0MK
PiAgICAgICAgIGJsb2NrLCBhbmQgdGhlIHNlY29uZCBvbmUgdG8gdGhlIFBNRUNDX0VSUkxPQyBi
bG9jay4KPiAgCgpSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290
bGluLmNvbT4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
