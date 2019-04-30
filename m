Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9B1FACF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MQtELXiKKT8nyfNxpp7N8Krv4z6yJgjD21XNn1loDU=; b=qLWrs3rKmYva4w
	8BlgNpv2kiO/Y9vDToL9d9DiwfNrUaQUGnROnvaRpz5C53npGWw//lqwaMe5NC1mfpBowjP2SUsev
	8JSIzoJYzItK9wX6+emIa2t6vTlnWQsmgAd796BtaZwg3XaNW5bYVkarFkxsIRxxUqXiC19RtGPgD
	fwC9+RAI4KUX6zwF+DfMUMBQC0t4WDWoB+8ipFakP+zLPG3HylARRoHtY7xd1pkBK3TL8Bn0t4HuR
	asG01zeDHpfcg40uuuDM+cRdCWomwZSoRnKb567Zji11wM5ZK1qEIEYlaJLB/UteyZDIjWOpBOC4e
	ALxvDtY7MCg//VCDDHhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLT9O-0003Ap-BL; Tue, 30 Apr 2019 13:50:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLT9G-00039z-Hl
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:50:19 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hLT94-0001F1-TV; Tue, 30 Apr 2019 15:50:06 +0200
Message-ID: <1556632204.2560.20.camel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mq: Add a node for irqsteer
From: Lucas Stach <l.stach@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,  Abel Vesa <abel.vesa@nxp.com>, Carlo
 Caione <ccaione@baylibre.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Tue, 30 Apr 2019 15:50:04 +0200
In-Reply-To: <a08a0a2fdd2090f4f42fe50d8ed70ee08b2fbcaf.1556631673.git.agx@sigxcpu.org>
References: <a08a0a2fdd2090f4f42fe50d8ed70ee08b2fbcaf.1556631673.git.agx@sigxcpu.org>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_065018_747401_D8FC3DA6 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gRGllbnN0YWcsIGRlbiAzMC4wNC4yMDE5LCAxNTo0MSArMDIwMCBzY2hyaWViIEd1aWRvIEfD
vG50aGVyOgo+IEFkZCBhIG5vZGUgZm9yIHRoZSBpcnFzdGVlciBpbnRlcnJ1cHQgY29udHJvbGxl
ciBmb3VuZCBvbiB0aGUgaU1YOE1RCj4gU29DLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfD
vG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Cj4gLS0tCj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4bXEuZHRzaSB8IDIxICsrKysrKysrKysrKysrKysrKysrKwo+IMKgMSBmaWxl
IGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXEuZHRzaQo+IGluZGV4IDJjYzkzOWNmYmQ3NS4uY2UwZTEzN2VjOGVlIDEwMDY0
NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiBAQCAtNzk4LDYg
Kzc5OCwyNyBAQAo+IMKgCQkJfTsKPiDCoAkJfTsKPiDCoAo+ICsJCWJ1c0AzMmMwMDAwMCB7IC8q
IEFJUFM0ICovCj4gKwkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1haXBzLWJ1cyIsICJzaW1w
bGUtYnVzIjsKPiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJCSNzaXplLWNlbGxzID0g
PDE+Owo+ICsJCQlyYW5nZXMgPSA8MHgzMmMwMDAwMCAweDMyYzAwMDAwIDB4NDAwMDAwPjsKPiAr
Cj4gKwkJCWlycXN0ZWVyOiBpbnRlcnJ1cHQtY29udHJvbGxlckAzMmUyZDAwMCB7Cj4gKwkJCQlj
b21wYXRpYmxlID0gImZzbCxpbXg4bS1pcnFzdGVlciIsCj4gKwkJCQkJwqDCoMKgwqDCoCJmc2ws
aW14LWlycXN0ZWVyIjsKClRoaXMgZml0cyBvbiBhIHNpbmdsZSBsaW5lLCByaWdodD8KCj4gKwkJ
CQlyZWcgPSA8MHgzMmUyZDAwMCAweDEwMDA+Owo+ICsJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDE4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsJCQkJY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NM
S19ESVNQX0FQQl9ST09UPjsKPiArCQkJCWNsb2NrLW5hbWVzID0gImlwZyI7Cj4gKwkJCQlmc2ws
Y2hhbm5lbCA9IDwwPjsKPiArCQkJCWZzbCxudW0taXJxcyA9IDw2ND47Cj4gKwkJCQlpbnRlcnJ1
cHQtY29udHJvbGxlcjsKPiArCQkJCWludGVycnVwdC1wYXJlbnQgPSA8JmdpYz47CgpUaGlzIGlz
IHdyb25nLCB0aGUgaXJxc3RlZXIgdXBzdHJlYW0gSVJRIGlzIHJvdXRlZCB0aHJvdWdoIHRoZSBH
UEMgbGlrZQphbGwgdGhlIG90aGVyIHBlcmlwaGVyYWwgaW50ZXJydXB0cy4gWW91IGNhbiBqdXN0
IGRyb3AgdGhpcyBwcm9wZXJ0eS4KCldpdGggdGhpcyBmaXhlZDoKUmV2aWV3ZWQtYnk6IEx1Y2Fz
IFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgoKUmVnYXJkcywKTHVjYXMKCj4gKwkJCQkj
aW50ZXJydXB0LWNlbGxzID0gPDE+Owo+ICsJCQl9Owo+ICsJCX07Cj4gKwo+IMKgCQlncHU6IGdw
dUAzODAwMDAwMCB7Cj4gwqAJCQljb21wYXRpYmxlID0gInZpdmFudGUsZ2MiOwo+IMKgCQkJcmVn
ID0gPDB4MzgwMDAwMDAgMHg0MDAwMD47CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
