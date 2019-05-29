Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74532D7C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZyuMxDGy32iMD+QiZu0Jx35fIFFyZuJ1OOkGWXuqTo=; b=PyV9lPYm2gvrN0
	x+o1BXiY/OqSDB0Sbl3KgEabV1IDKtHOf5wyLWrbxWnIpxOQVJpDOXUp/u1M9Mt31KxuRxgWCvLYd
	u0gzfS9GsPZQ5VT6KhuvxkaSyfAWLpIkCTrYLGyKtMXZ9Ynhi87PDIDZsweRyuKfwJjWGfJkFBK1l
	TLBVHNcZL8kawxtEUOzKn4h126WdfO7R71Q8haZ63TI9nqQkU5sfPSYfSTOVjIG92r2oUGJnAvz3E
	13qmszi3GI5lzJ6wvKxkvQdMFWD1+LKjx+QGBqTv50pUwIle2HRbdpSPXpTvCXt5sEf/ywRt0uHmj
	WtLMSz4XQfwGFT7ReDfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtw7-0003aT-DI; Wed, 29 May 2019 08:27:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtvn-0003N9-EA
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:27:35 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hVtvm-0006WQ-1o; Wed, 29 May 2019 10:27:30 +0200
Message-ID: <1559118449.4039.18.camel@pengutronix.de>
Subject: Re: [PATCH 2/3] ARM: dts: imx6: rdu2: Disable WP for USDHC2 and USDHC3
From: Lucas Stach <l.stach@pengutronix.de>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, 
 linux-arm-kernel@lists.infradead.org
Date: Wed, 29 May 2019 10:27:29 +0200
In-Reply-To: <20190529071843.24767-2-andrew.smirnov@gmail.com>
References: <20190529071843.24767-1-andrew.smirnov@gmail.com>
 <20190529071843.24767-2-andrew.smirnov@gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012731_896355_8B668B39 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbiAyOS4wNS4yMDE5LCAwMDoxOCAtMDcwMCBzY2hyaWViIEFuZHJleSBT
bWlybm92Ogo+IFJEVTIgcHJvZHVjdGlvbiB1bml0cyBjb21lIHdpdGggcmVzaXN0b3IgY29ubmVj
dGluZyBXUCBwaW4gdG8KPiBjb3JyZXBzb25kaW5nIEdQSU8gRE5QZWQgZm9yIGJvdGggU0QgY2Fy
ZCBzbG90cy4gRHJvcCBhbnkgV1AgcmVsYXRlZAo+IGNvbmZpZ3VyYXRpb24gYW5kIG1hcmsgYm90
aCBzbG90cyB3aXRoICJkaXNhYmxlLXdwIi4KPiAKPiA+IFJlcG9ydGVkLWJ5OiBDaHJpcyBIZWFs
eSA8Y3BoZWFseUBnbWFpbC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogQ2hyaXMgSGVhbHkgPGNwaGVh
bHlAZ21haWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogQW5kcmV5IFNtaXJub3YgPGFuZHJldy5z
bWlybm92QGdtYWlsLmNvbT4KPiA+IENjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+
Cj4gPiBDYzogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgo+ID4gQ2M6IEx1Y2Fz
IFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwoKUmV2
aWV3ZWQtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgoKPiAtLS0KPiDC
oGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtemlpLXJkdTIuZHRzaSB8IDYgKystLS0tCj4gwqAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXppaS1yZHUyLmR0c2kgYi9hcmNoL2Fy
bS9ib290L2R0cy9pbXg2cWRsLXppaS1yZHUyLmR0c2kKPiBpbmRleCAwN2UyMWQxZTViNGMuLjA0
ZDRkNGQ3ZTQzYyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXppaS1y
ZHUyLmR0c2kKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXppaS1yZHUyLmR0c2kK
PiBAQCAtNjU4LDcgKzY1OCw3IEBACj4gPiDCoAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfdXNkaGMy
PjsKPiA+IMKgCWJ1cy13aWR0aCA9IDw0PjsKPiA+IMKgCWNkLWdwaW9zID0gPCZncGlvMiAyIEdQ
SU9fQUNUSVZFX0xPVz47Cj4gPiAtCXdwLWdwaW9zID0gPCZncGlvMiAzIEdQSU9fQUNUSVZFX0hJ
R0g+Owo+ID4gKwlkaXNhYmxlLXdwOwo+ID4gwqAJdm1tYy1zdXBwbHkgPSA8JnJlZ18zcDN2X3Nk
PjsKPiA+IMKgCXZxbW1jLXN1cHBseSA9IDwmcmVnXzNwM3Y+Owo+ID4gwqAJbm8tMS04LXY7Cj4g
QEAgLTY3MSw3ICs2NzEsNyBAQAo+ID4gwqAJcGluY3RybC0wID0gPCZwaW5jdHJsX3VzZGhjMz47
Cj4gPiDCoAlidXMtd2lkdGggPSA8ND47Cj4gPiDCoAljZC1ncGlvcyA9IDwmZ3BpbzIgMCBHUElP
X0FDVElWRV9MT1c+Owo+ID4gLQl3cC1ncGlvcyA9IDwmZ3BpbzIgMSBHUElPX0FDVElWRV9ISUdI
PjsKPiA+ICsJZGlzYWJsZS13cDsKPiA+IMKgCXZtbWMtc3VwcGx5ID0gPCZyZWdfM3Azdl9zZD47
Cj4gPiDCoAl2cW1tYy1zdXBwbHkgPSA8JnJlZ18zcDN2PjsKPiA+IMKgCW5vLTEtOC12Owo+IEBA
IC0xMDk2LDcgKzEwOTYsNiBAQAo+ID4gPiDCoAkJCU1YNlFETF9QQURfU0QyX0RBVDFfX1NEMl9E
QVRBMQkJMHgxNzA1OQo+ID4gPiDCoAkJCU1YNlFETF9QQURfU0QyX0RBVDJfX1NEMl9EQVRBMgkJ
MHgxNzA1OQo+ID4gPiDCoAkJCU1YNlFETF9QQURfU0QyX0RBVDNfX1NEMl9EQVRBMwkJMHgxNzA1
OQo+ID4gPiAtCQkJTVg2UURMX1BBRF9OQU5ERl9EM19fR1BJTzJfSU8wMwkJMHg0MDAxMDA0MAo+
ID4gPiDCoAkJCU1YNlFETF9QQURfTkFOREZfRDJfX0dQSU8yX0lPMDIJCTB4NDAwMTAwNDAKPiA+
IMKgCQk+Owo+ID4gwqAJfTsKPiBAQCAtMTEwOSw3ICsxMTA4LDYgQEAKPiA+ID4gwqAJCQlNWDZR
RExfUEFEX1NEM19EQVQxX19TRDNfREFUQTEJCTB4MTcwNTkKPiA+ID4gwqAJCQlNWDZRRExfUEFE
X1NEM19EQVQyX19TRDNfREFUQTIJCTB4MTcwNTkKPiA+ID4gwqAJCQlNWDZRRExfUEFEX1NEM19E
QVQzX19TRDNfREFUQTMJCTB4MTcwNTkKPiA+ID4gLQkJCU1YNlFETF9QQURfTkFOREZfRDFfX0dQ
SU8yX0lPMDEJCTB4NDAwMTAwNDAKPiA+ID4gwqAJCQlNWDZRRExfUEFEX05BTkRGX0QwX19HUElP
Ml9JTzAwCQkweDQwMDEwMDQwCj4gwqAKPiA+IMKgCQk+OwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
