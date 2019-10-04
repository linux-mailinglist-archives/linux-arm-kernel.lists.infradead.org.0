Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A194CB9B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hnmrdGv5IiNccv/uyuAYdFODUQ1kh3aipIgLuYpJtU=; b=VSRfBF0LD7Esry
	dJMqH+gCgHy6oVmZjCCIXzANL1f8ZnrWXa65uDVeuhcKs3MBXeIL9KVIyxbLXw42GHzhCdV3EWyMa
	XrBjfkhjEuz1SlseoV1FNYY68Ymxvyjp9nGZnJXbHid3U3hdd4J7sDhiDD2XHs9JF97lmd1W8A74H
	MxZ17laF0A3wOI07+BWfpXGfESDvSvmrz7aMEjhC+pkMG8Gyyu5F4/hGoRjXAmskvZ1AnwAB9VVks
	AHY7QkhRU8Ep7q96Bb3wv1S6+JVXRO4oZ26ybldYtp3qIdu+QUULG+7Ks7Mi1J6fveqjPDmDSyga2
	2gx/1bAgxoqxvyIEYscg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMHP-0007OF-Ma; Fri, 04 Oct 2019 12:01:51 +0000
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMGF-0006UF-0I
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:00:40 +0000
Received: from player792.ha.ovh.net (unknown [10.108.54.156])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id 6E2612519FF
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 14:00:36 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id DC61FAA65A3C;
 Fri,  4 Oct 2019 12:00:19 +0000 (UTC)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 03/16] mtd: spi-nor: aspeed: Link controller with the ahb clock
Date: Fri,  4 Oct 2019 13:59:06 +0200
Message-Id: <20191004115919.20788-4-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004115919.20788-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3775142389410204595
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050039_199717_06C9E1AA 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.32.96.204 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2Ugd2lsbCBuZWVkIHRoZSBBSEIgZnJlcXVlbmN5IHRvIHNldCB0aGUgSENMSyBzZXR0aW5ncyBp
biB0aGUgU01DCmNvbnRyb2xsZXIgdG8gcGVyZm9ybSB0aGUgcmVhZCB0cmFpbmluZy4KClNpZ25l
ZC1vZmYtYnk6IEPDqWRyaWMgTGUgR29hdGVyIDxjbGdAa2FvZC5vcmc+Ci0tLQogZHJpdmVycy9t
dGQvc3BpLW5vci9hc3BlZWQtc21jLmMgfCAxMCArKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3NwaS1ub3IvYXNwZWVk
LXNtYy5jIGIvZHJpdmVycy9tdGQvc3BpLW5vci9hc3BlZWQtc21jLmMKaW5kZXggYzc3NWUwNjEy
NjEzLi5mYWNkOGZjMTZjYTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL3NwaS1ub3IvYXNwZWVk
LXNtYy5jCisrKyBiL2RyaXZlcnMvbXRkL3NwaS1ub3IvYXNwZWVkLXNtYy5jCkBAIC02LDYgKzYs
NyBAQAogICovCiAKICNpbmNsdWRlIDxsaW51eC9idWcuaD4KKyNpbmNsdWRlIDxsaW51eC9jbGsu
aD4KICNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9pby5oPgogI2lu
Y2x1ZGUgPGxpbnV4L21vZHVsZS5oPgpAQCAtMTA5LDYgKzExMCw4IEBAIHN0cnVjdCBhc3BlZWRf
c21jX2NvbnRyb2xsZXIgewogCXZvaWQgX19pb21lbSAqYWhiX2Jhc2U7CQkJLyogcGVyLWNoaXAg
d2luZG93cyByZXNvdXJjZSAqLwogCXUzMiBhaGJfd2luZG93X3NpemU7CQkJLyogZnVsbCBtYXBw
aW5nIHdpbmRvdyBzaXplICovCiAKKwl1bnNpZ25lZCBsb25nCWNsa19mcmVxdWVuY3k7CisKIAlz
dHJ1Y3QgYXNwZWVkX3NtY19jaGlwICpjaGlwc1swXTsJLyogcG9pbnRlcnMgdG8gYXR0YWNoZWQg
Y2hpcHMgKi8KIH07CiAKQEAgLTkwOSw2ICs5MTIsNyBAQCBzdGF0aWMgaW50IGFzcGVlZF9zbWNf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlzdHJ1Y3QgYXNwZWVkX3NtY19j
b250cm9sbGVyICpjb250cm9sbGVyOwogCWNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgKm1hdGNo
OwogCWNvbnN0IHN0cnVjdCBhc3BlZWRfc21jX2luZm8gKmluZm87CisJc3RydWN0IGNsayAqY2xr
OwogCXN0cnVjdCByZXNvdXJjZSAqcmVzOwogCWludCByZXQ7CiAKQEAgLTk0MCw2ICs5NDQsMTIg
QEAgc3RhdGljIGludCBhc3BlZWRfc21jX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAKIAljb250cm9sbGVyLT5haGJfd2luZG93X3NpemUgPSByZXNvdXJjZV9zaXplKHJlcyk7
CiAKKwljbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgTlVMTCk7CisJaWYgKElTX0VSUihj
bGspKQorCQlyZXR1cm4gUFRSX0VSUihjbGspOworCWNvbnRyb2xsZXItPmNsa19mcmVxdWVuY3kg
PSBjbGtfZ2V0X3JhdGUoY2xrKTsKKwlkZXZtX2Nsa19wdXQoJnBkZXYtPmRldiwgY2xrKTsKKwog
CXJldCA9IGFzcGVlZF9zbWNfc2V0dXBfZmxhc2goY29udHJvbGxlciwgbnAsIHJlcyk7CiAJaWYg
KHJldCkKIAkJZGV2X2VycihkZXYsICJBc3BlZWQgU01DIHByb2JlIGZhaWxlZCAlZFxuIiwgcmV0
KTsKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
