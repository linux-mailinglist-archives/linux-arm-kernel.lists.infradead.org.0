Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1F2CB9E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZ8CL8m5TqCbDvlARLJIaha9TTmmaFsaOTIumZYY0Ug=; b=MrOtPH7SSHx83g
	BsCFUGHisGbXrqFwi1IHp9mDidjgTiCpnFb46n8whxDkwQbywvVbCaqRm9CrrQQ+cvDyeE0StspJ7
	3UcH3LYzMQm8eO0WvIGKeoEgB2dfgwGd+3rlGWxdtOhJ0WYzlEPuAwsDoBMavOeWXtn15+aH2mkJD
	ZOWUMVEXE7dzhAkq2vPyrcP4+qakDcykkQM1Fw7wbVs01ix/+VtY2tOyJQulhwaafFe70gF8JAx2O
	ASE0LJ/ig7O9/X6zssFl0Yq8X7iPj/hY9UA9yaYa/9AW5Zoxcnp43EXNGVz7JhtaOr6Z/qHrUS8aY
	DUWXSpHtBgGDhrd55IGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMN5-0005Kd-UU; Fri, 04 Oct 2019 12:07:43 +0000
Received: from 4.mo177.mail-out.ovh.net ([46.105.37.72])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMIf-0000NT-OJ
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:03:12 +0000
Received: from player792.ha.ovh.net (unknown [10.108.54.74])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id EF3C310D10B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 14:03:06 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id 188B1AA663E2;
 Fri,  4 Oct 2019 12:02:50 +0000 (UTC)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 12/16] mtd: spi-nor: aspeed: Add initial support for the
 AST2600
Date: Fri,  4 Oct 2019 13:59:15 +0200
Message-Id: <20191004115919.20788-13-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004115919.20788-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3817363635969362867
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050309_986600_A1A2A701 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.37.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [46.105.37.72 listed in wl.mailspike.net]
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

VGhlIEhXIGludGVyZmFjZSBvZiBBU1QyNjAwIFNvQyBTTUMgY29udHJvbGxlcnMgaXMgdmVyeSBz
aW1pbGFyIHRvIHRoZQp0aGUgQVNUMjUwMC4gVGhlIEFTVDI2MDAgRmlybXdhcmUgTWVtb3J5IENv
bnRyb2xsZXIgaXMgbm93IFNQSSBvbmx5LgoKVGhlIFNlZ21lbnQgUmVnaXN0ZXJzIGFsc28gaGF2
ZSBhIGRpZmZlcmVudCBlbmNvZGluZy4gQSAxTUIgdW5pdCBpcwp1c2VkIGFuZCB0aGUgYWRkcmVz
cyByYW5nZSBvZiBhIGZsYXNoIFNQSSBkZXZpY2UgaXMgZW5jb2RlZCB3aXRoCm9mZnNldHMgaW4g
dGhlIG92ZXJhbGwgY29udHJvbGxlciB3aW5kb3cuIFRoZSBwcmV2aW91cyBTb0MgQVNUMjQwMCBh
bmQKQVNUMjUwMCB1c2VkIGFic29sdXRlIGFkZHJlc3Nlcy4gT25seSBiaXRzIFsyNzoyMF0gYXJl
IHJlbGV2YW50IGFuZAp0aGUgZW5kIGFkZHJlc3MgaXMgYW4gdXBwZXIgYm91bmQgbGltaXQuCgpS
ZWFkIHRyYWluaW5nIHlldCB0byBjb21lLgoKU2lnbmVkLW9mZi1ieTogQ8OpZHJpYyBMZSBHb2F0
ZXIgPGNsZ0BrYW9kLm9yZz4KUmV2aWV3ZWQtYnk6IEFuZHJldyBKZWZmZXJ5IDxhbmRyZXdAYWou
aWQuYXU+Ci0tLQogZHJpdmVycy9tdGQvc3BpLW5vci9hc3BlZWQtc21jLmMgfCA2OCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDY4IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9zcGktbm9yL2FzcGVlZC1zbWMuYyBiL2RyaXZl
cnMvbXRkL3NwaS1ub3IvYXNwZWVkLXNtYy5jCmluZGV4IDdjZGQ4NGEyY2E4Mi4uYzk3N2Y4ZjI4
YWVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9zcGktbm9yL2FzcGVlZC1zbWMuYworKysgYi9k
cml2ZXJzL210ZC9zcGktbm9yL2FzcGVlZC1zbWMuYwpAQCAtMTE2LDYgKzExNiwzOSBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGFzcGVlZF9zbWNfaW5mbyBzcGlfMjUwMF9pbmZvID0gewogCS5zZWdt
ZW50X3JlZyA9IGFzcGVlZF9zbWNfc2VnbWVudF9yZWcsCiB9OwogCitzdGF0aWMgdTMyIGFzcGVl
ZF9zbWNfc2VnbWVudF9zdGFydF9hc3QyNjAwKHN0cnVjdCBhc3BlZWRfc21jX2NvbnRyb2xsZXIg
KmN0cmwsCisJCQkJCSAgICB1MzIgcmVnKTsKK3N0YXRpYyB1MzIgYXNwZWVkX3NtY19zZWdtZW50
X2VuZF9hc3QyNjAwKHN0cnVjdCBhc3BlZWRfc21jX2NvbnRyb2xsZXIgKmN0cmwsCisJCQkJCSAg
dTMyIHJlZyk7CitzdGF0aWMgdTMyIGFzcGVlZF9zbWNfc2VnbWVudF9yZWdfYXN0MjYwMChzdHJ1
Y3QgYXNwZWVkX3NtY19jb250cm9sbGVyICpjdHJsLAorCQkJCQkgIHUzMiBzdGFydCwgdTMyIGVu
ZCk7CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYXNwZWVkX3NtY19pbmZvIGZtY18yNjAwX2luZm8g
PSB7CisJLm1heHNpemUgPSAyNTYgKiAxMDI0ICogMTAyNCwKKwkubmNlID0gMywKKwkuaGFzdHlw
ZSA9IGZhbHNlLCAvKiBTUEkgT25seSAqLworCS53ZTAgPSAxNiwKKwkuY3RsMCA9IDB4MTAsCisJ
LnRpbWluZyA9IDB4OTQsCisJLnNldF80YiA9IGFzcGVlZF9zbWNfY2hpcF9zZXRfNGIsCisJLnNl
Z21lbnRfc3RhcnQgPSBhc3BlZWRfc21jX3NlZ21lbnRfc3RhcnRfYXN0MjYwMCwKKwkuc2VnbWVu
dF9lbmQgPSBhc3BlZWRfc21jX3NlZ21lbnRfZW5kX2FzdDI2MDAsCisJLnNlZ21lbnRfcmVnID0g
YXNwZWVkX3NtY19zZWdtZW50X3JlZ19hc3QyNjAwLAorfTsKKworc3RhdGljIGNvbnN0IHN0cnVj
dCBhc3BlZWRfc21jX2luZm8gc3BpXzI2MDBfaW5mbyA9IHsKKwkubWF4c2l6ZSA9IDI1NiAqIDEw
MjQgKiAxMDI0LAorCS5uY2UgPSAyLAorCS5oYXN0eXBlID0gZmFsc2UsCisJLndlMCA9IDE2LAor
CS5jdGwwID0gMHgxMCwKKwkudGltaW5nID0gMHg5NCwKKwkuc2V0XzRiID0gYXNwZWVkX3NtY19j
aGlwX3NldF80YiwKKwkuc2VnbWVudF9zdGFydCA9IGFzcGVlZF9zbWNfc2VnbWVudF9zdGFydF9h
c3QyNjAwLAorCS5zZWdtZW50X2VuZCA9IGFzcGVlZF9zbWNfc2VnbWVudF9lbmRfYXN0MjYwMCwK
Kwkuc2VnbWVudF9yZWcgPSBhc3BlZWRfc21jX3NlZ21lbnRfcmVnX2FzdDI2MDAsCit9OworCiBl
bnVtIGFzcGVlZF9zbWNfY3RsX3JlZ192YWx1ZSB7CiAJc21jX2Jhc2UsCQkvKiBiYXNlIHZhbHVl
IHdpdGhvdXQgbW9kZSBmb3Igb3RoZXIgY29tbWFuZHMgKi8KIAlzbWNfcmVhZCwJCS8qIGNvbW1h
bmQgcmVnIGZvciAobWF5YmUgZmFzdCkgcmVhZHMgKi8KQEAgLTI1MSw2ICsyODQsMzkgQEAgc3Rh
dGljIHUzMiBhc3BlZWRfc21jX3NlZ21lbnRfcmVnKHN0cnVjdCBhc3BlZWRfc21jX2NvbnRyb2xs
ZXIgKmNvbnRyb2xsZXIsCiAJcmV0dXJuICgoKHN0YXJ0ID4+IDIzKSAmIDB4RkYpIDw8IDE2KSB8
ICgoKGVuZCA+PiAyMykgJiAweEZGKSA8PCAyNCk7CiB9CiAKKy8qCisgKiBUaGUgU2VnbWVudCBS
ZWdpc3RlcnMgb2YgdGhlIEFTVDI2MDAgaGF2ZSBhIDFNQiB1bml0LiBUaGUgYWRkcmVzcworICog
cmFuZ2Ugb2YgYSBmbGFzaCBTUEkgc2xhdmUgaXMgZW5jb2RlZCB3aXRoIG9mZnNldHMgaW4gdGhl
IG92ZXJhbGwKKyAqIGNvbnRyb2xsZXIgd2luZG93LiBUaGUgcHJldmlvdXMgU29DIEFTVDI0MDAg
YW5kIEFTVDI1MDAgdXNlZAorICogYWJzb2x1dGUgYWRkcmVzc2VzLiBPbmx5IGJpdHMgWzI3OjIw
XSBhcmUgcmVsZXZhbnQgYW5kIHRoZSBlbmQKKyAqIGFkZHJlc3MgaXMgYW4gdXBwZXIgYm91bmQg
bGltaXQuCisgKi8KKworI2RlZmluZSBBU1QyNjAwX1NFR19BRERSX01BU0sgMHgwZmYwMDAwMAor
CitzdGF0aWMgdTMyIGFzcGVlZF9zbWNfc2VnbWVudF9zdGFydF9hc3QyNjAwKHN0cnVjdCBhc3Bl
ZWRfc21jX2NvbnRyb2xsZXIgKmN0bHIsCisJCQkJCSAgICB1MzIgcmVnKQoreworCXUzMiBzdGFy
dF9vZmZzZXQgPSAocmVnIDw8IDE2KSAmIEFTVDI2MDBfU0VHX0FERFJfTUFTSzsKKworCXJldHVy
biBjdGxyLT5haGJfYmFzZV9waHkgKyBzdGFydF9vZmZzZXQ7Cit9CisKK3N0YXRpYyB1MzIgYXNw
ZWVkX3NtY19zZWdtZW50X2VuZF9hc3QyNjAwKHN0cnVjdCBhc3BlZWRfc21jX2NvbnRyb2xsZXIg
KmN0bHIsCisJCQkJCSAgdTMyIHJlZykKK3sKKwl1MzIgZW5kX29mZnNldCA9IHJlZyAmIEFTVDI2
MDBfU0VHX0FERFJfTUFTSzsKKworCXJldHVybiBjdGxyLT5haGJfYmFzZV9waHkgKyBlbmRfb2Zm
c2V0ICsgMHgxMDAwMDA7Cit9CisKK3N0YXRpYyB1MzIgYXNwZWVkX3NtY19zZWdtZW50X3JlZ19h
c3QyNjAwKHN0cnVjdCBhc3BlZWRfc21jX2NvbnRyb2xsZXIgKmN0bHIsCisJCQkJCSAgdTMyIHN0
YXJ0LCB1MzIgZW5kKQoreworCXJldHVybiAoKHN0YXJ0ICYgQVNUMjYwMF9TRUdfQUREUl9NQVNL
KSA+PiAxNikgfAorCQkoKGVuZCAtIDEpICYgQVNUMjYwMF9TRUdfQUREUl9NQVNLKTsKK30KKwog
LyoKICAqIFN3aXRjaCB0byB0dXJuIG9mZiByZWFkIG9wdGltaXNhdGlvbiBpZiBuZWVkZWQKICAq
LwpAQCAtNTM4LDYgKzYwNCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFz
cGVlZF9zbWNfbWF0Y2hlc1tdID0gewogCXsgLmNvbXBhdGlibGUgPSAiYXNwZWVkLGFzdDI0MDAt
c3BpIiwgLmRhdGEgPSAmc3BpXzI0MDBfaW5mbyB9LAogCXsgLmNvbXBhdGlibGUgPSAiYXNwZWVk
LGFzdDI1MDAtZm1jIiwgLmRhdGEgPSAmZm1jXzI1MDBfaW5mbyB9LAogCXsgLmNvbXBhdGlibGUg
PSAiYXNwZWVkLGFzdDI1MDAtc3BpIiwgLmRhdGEgPSAmc3BpXzI1MDBfaW5mbyB9LAorCXsgLmNv
bXBhdGlibGUgPSAiYXNwZWVkLGFzdDI2MDAtZm1jIiwgLmRhdGEgPSAmZm1jXzI2MDBfaW5mbyB9
LAorCXsgLmNvbXBhdGlibGUgPSAiYXNwZWVkLGFzdDI2MDAtc3BpIiwgLmRhdGEgPSAmc3BpXzI2
MDBfaW5mbyB9LAogCXsgfQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGFzcGVlZF9zbWNf
bWF0Y2hlcyk7Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
