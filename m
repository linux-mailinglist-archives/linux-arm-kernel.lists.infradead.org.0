Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC2311C446
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dS4Rl5N3onUJHcTU4ppMrVfdwLBca/LU19kFVvH5pBU=; b=eDNms0RWcoN+Hr
	/2uwRZVEg3m9FmUkVU1iLfWfHjb9XXwaX9fNQnEeQhqSYipgoR19sXxNznFe6Klk3ClfVztNX9jC+
	accxRCHAw+BJuWK7JxclTCsJRe4AysArH/+II654eug2W6WcrXYQ/wMjHWteV56vmfKmPxZoCH71r
	cGIEFCc4jD7sPS9E7aOaX2TFaetLV+WnhYmzxKoFR8TZBFAootvt5ioRWGxk3txd//ZN52x5m1BpT
	eTNDekMeQa1VaI+28lk8Np8aDfqTHPI/CUOQLfP4n8AntIuViqLHD6z1ddCDGoZdjr7+1vD6G3J57
	0TIkuXVwlsgoAdjmKo5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFO8-0004r1-Pg; Thu, 12 Dec 2019 03:43:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKe-0000Sy-Hh; Thu, 12 Dec 2019 03:40:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D71ADAF37;
 Thu, 12 Dec 2019 03:40:02 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 13/25] arm64: dts: realtek: rtd1295-xnano-x5: Add FD628 LED
 controller
Date: Thu, 12 Dec 2019 04:39:40 +0100
Message-Id: <20191212033952.5967-14-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_194004_782472_C8F27ED4 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgc3BpLWdwaW8gbm9kZSBhbmQgTEVEIGNvbnRyb2xsZXIgc2xhdmUgbm9kZS4KClNpZ25l
ZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS14bmFuby14NS5kdHMgfCAyMiArKysrKysrKysr
KysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXhuYW5vLXg1LmR0cyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXhuYW5vLXg1LmR0cwppbmRleCBkNzg3
OGZmOTQyZTYuLmVhOWU5YTk2ZjFkMyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
ZWFsdGVrL3J0ZDEyOTUteG5hbm8teDUuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxMjk1LXhuYW5vLXg1LmR0cwpAQCAtNSw2ICs1LDggQEAKIAogL2R0cy12MS87CiAK
KyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KKwogI2luY2x1ZGUgInJ0ZDEyOTUu
ZHRzaSIKIAogLyB7CkBAIC0yMyw2ICsyNSwyNiBAQAogCWNob3NlbiB7CiAJCXN0ZG91dC1wYXRo
ID0gInNlcmlhbDA6MTE1MjAwbjgiOwogCX07CisKKwlzcGkgeworCQljb21wYXRpYmxlID0gInNw
aS1ncGlvIjsKKwkJc2NrLWdwaW9zID0gPCZpc29fZ3BpbyA0IEdQSU9fQUNUSVZFX0hJR0g+Owor
CQltb3NpLWdwaW9zID0gPCZpc29fZ3BpbyAzIEdQSU9fQUNUSVZFX0hJR0g+OworCQljcy1ncGlv
cyA9IDwmaXNvX2dwaW8gMiBHUElPX0FDVElWRV9MT1c+OworCQludW0tY2hpcHNlbGVjdHMgPSA8
MT47CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkjc2l6ZS1jZWxscyA9IDwwPjsKKworCQlm
ZDYyODogbGVkLWNvbnRyb2xsZXJAMCB7CisJCQljb21wYXRpYmxlID0gImZkaGlzaSxmZDYyOCI7
CisJCQlyZWcgPSA8MD47CisJCQlzcGktM3dpcmU7CisJCQlzcGktbHNiLWZpcnN0OworCQkJc3Bp
LXJ4LWRlbGF5LXVzID0gPDE+OworCQkJc3BpLW1heC1mcmVxdWVuY3kgPSA8NTAwMDAwPjsKKwkJ
CSNncmlkcyA9IDw3PjsKKwkJfTsKKwl9OwogfTsKIAogJnVhcnQwIHsKLS0gCjIuMTYuNAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
