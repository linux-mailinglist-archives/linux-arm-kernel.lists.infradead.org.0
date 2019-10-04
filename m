Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDED8CB9D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8iQCQHMQn6NQDrV/AJZwDUTGU8jGvuNLx2Nvunx5Lc=; b=k5ri0cn7r1dy4x
	1zrY1Pl1WFd/OoDBGkjarqsTYgxeMyDbBHUKxWKixNTovd2HZCCXEZ9QTjWBEdQslR5qmcpQJanb/
	QAroV+qBPpBiszOmLBJ+ebYDjwA5NMjh4FNgHj8hX7Y/zFN6WcSldvO0zCo7JH4o3WlApB2VSosRV
	jGs/9pNNkpl20h1pnhtUbVDfKEZJRKuqNIEBDznRfS8GNSg4ceddfQtiMINELyVYQAAW84iY2ZJPT
	hDk3lbRLIkl1tzzYh9Umj6y62bjK0tKm0NRmxxRCTTvLe5hSSikqwJuDhq3g2FU0XC+ZY+EYOIPDv
	X8QJyaHOkSUvsJhDOFPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGML6-0003LK-Fu; Fri, 04 Oct 2019 12:05:40 +0000
Received: from 3.mo179.mail-out.ovh.net ([178.33.251.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMHq-00084G-Mg
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:02:21 +0000
Received: from player792.ha.ovh.net (unknown [10.108.57.43])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id DE72114460E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 14:02:15 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id 5F7C8AA66000;
 Fri,  4 Oct 2019 12:02:00 +0000 (UTC)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 09/16] mtd: spi-nor: aspeed: Introduce a field for the AHB
 physical address
Date: Fri,  4 Oct 2019 13:59:12 +0200
Message-Id: <20191004115919.20788-10-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004115919.20788-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3803008413523086259
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050218_912246_F6051A4C 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.251.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [178.33.251.175 listed in wl.mailspike.net]
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

T24gdGhlIEFTVDI2MDAsIHdlIHdpbGwgdXNlIHRoaXMgZmllbGQgdG8gY29tcHV0ZSB0aGUgYWRk
cmVzcyBvZiB0aGUKY2hpcCBBSEIgd2luZG93IGZyb20gdGhlIFNlZ21lbnQgUmVnaXN0ZXIgdmFs
dWUuIEl0IGFsc28gcmVtb3ZlcyB0aGUKbmVlZCBvZiBhc3BlZWRfc21jX2FoYl9iYXNlX3BoeSgp
IGhlbHBlci4KClNpZ25lZC1vZmYtYnk6IEPDqWRyaWMgTGUgR29hdGVyIDxjbGdAa2FvZC5vcmc+
ClJldmlld2VkLWJ5OiBBbmRyZXcgSmVmZmVyeSA8YW5kcmV3QGFqLmlkLmF1PgotLS0KIGRyaXZl
cnMvbXRkL3NwaS1ub3IvYXNwZWVkLXNtYy5jIHwgMTggKysrKysrLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL210ZC9zcGktbm9yL2FzcGVlZC1zbWMuYyBiL2RyaXZlcnMvbXRkL3NwaS1ub3Iv
YXNwZWVkLXNtYy5jCmluZGV4IGFkZDk1YTlhY2E3Ni4uYzVhMGM4ZDk0MzcxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL210ZC9zcGktbm9yL2FzcGVlZC1zbWMuYworKysgYi9kcml2ZXJzL210ZC9zcGkt
bm9yL2FzcGVlZC1zbWMuYwpAQCAtMTIxLDcgKzEyMSw4IEBAIHN0cnVjdCBhc3BlZWRfc21jX2Nv
bnRyb2xsZXIgewogCXN0cnVjdCBtdXRleCBtdXRleDsJCQkvKiBjb250cm9sbGVyIGFjY2VzcyBt
dXRleCAqLwogCWNvbnN0IHN0cnVjdCBhc3BlZWRfc21jX2luZm8gKmluZm87CS8qIHR5cGUgaW5m
byBvZiBjb250cm9sbGVyICovCiAJdm9pZCBfX2lvbWVtICpyZWdzOwkJCS8qIGNvbnRyb2xsZXIg
cmVnaXN0ZXJzICovCi0Jdm9pZCBfX2lvbWVtICphaGJfYmFzZTsJCQkvKiBwZXItY2hpcCB3aW5k
b3dzIHJlc291cmNlICovCisJdm9pZCBfX2lvbWVtICphaGJfYmFzZTsJCQkvKiBwZXItY2hpcCB3
aW5kb3cgcmVzb3VyY2UgKi8KKwl1MzIgYWhiX2Jhc2VfcGh5OwkJCS8qIHBoeXMgYWRkciBvZiBB
SEIgd2luZG93ICAqLwogCXUzMiBhaGJfd2luZG93X3NpemU7CQkJLyogZnVsbCBtYXBwaW5nIHdp
bmRvdyBzaXplICovCiAKIAl1bnNpZ25lZCBsb25nCWNsa19mcmVxdWVuY3k7CkBAIC01MzMsMjEg
KzUzNCwxMyBAQCBzdGF0aWMgdm9pZCBfX2lvbWVtICphc3BlZWRfc21jX2NoaXBfYmFzZShzdHJ1
Y3QgYXNwZWVkX3NtY19jaGlwICpjaGlwLAogCXJldHVybiBjb250cm9sbGVyLT5haGJfYmFzZSAr
IG9mZnNldDsKIH0KIAotc3RhdGljIHUzMiBhc3BlZWRfc21jX2FoYl9iYXNlX3BoeShzdHJ1Y3Qg
YXNwZWVkX3NtY19jb250cm9sbGVyICpjb250cm9sbGVyKQotewotCXUzMiBzZWcwX3ZhbCA9IHJl
YWRsKFNFR01FTlRfQUREUl9SRUcoY29udHJvbGxlciwgMCkpOwotCi0JcmV0dXJuIFNFR01FTlRf
QUREUl9TVEFSVChzZWcwX3ZhbCk7Ci19Ci0KIHN0YXRpYyB1MzIgY2hpcF9zZXRfc2VnbWVudChz
dHJ1Y3QgYXNwZWVkX3NtY19jaGlwICpjaGlwLCB1MzIgY3MsIHUzMiBzdGFydCwKIAkJCSAgICB1
MzIgc2l6ZSkKIHsKIAlzdHJ1Y3QgYXNwZWVkX3NtY19jb250cm9sbGVyICpjb250cm9sbGVyID0g
Y2hpcC0+Y29udHJvbGxlcjsKIAl2b2lkIF9faW9tZW0gKnNlZ19yZWc7Ci0JdTMyIHNlZ19vbGR2
YWwsIHNlZ19uZXd2YWwsIGFoYl9iYXNlX3BoeSwgZW5kOwotCi0JYWhiX2Jhc2VfcGh5ID0gYXNw
ZWVkX3NtY19haGJfYmFzZV9waHkoY29udHJvbGxlcik7CisJdTMyIHNlZ19vbGR2YWwsIHNlZ19u
ZXd2YWwsIGVuZDsKKwl1MzIgYWhiX2Jhc2VfcGh5ID0gY29udHJvbGxlci0+YWhiX2Jhc2VfcGh5
OwogCiAJc2VnX3JlZyA9IFNFR01FTlRfQUREUl9SRUcoY29udHJvbGxlciwgY3MpOwogCXNlZ19v
bGR2YWwgPSByZWFkbChzZWdfcmVnKTsKQEAgLTYzNiw3ICs2MjksNyBAQCBzdGF0aWMgdTMyIGFz
cGVlZF9zbWNfY2hpcF9zZXRfc2VnbWVudChzdHJ1Y3QgYXNwZWVkX3NtY19jaGlwICpjaGlwKQog
CQkJIGNoaXAtPmNzLCBzaXplID4+IDIwKTsKIAl9CiAKLQlhaGJfYmFzZV9waHkgPSBhc3BlZWRf
c21jX2FoYl9iYXNlX3BoeShjb250cm9sbGVyKTsKKwlhaGJfYmFzZV9waHkgPSBjb250cm9sbGVy
LT5haGJfYmFzZV9waHk7CiAKIAkvKgogCSAqIEFzIGEgc3RhcnQgYWRkcmVzcyBmb3IgdGhlIGN1
cnJlbnQgc2VnbWVudCwgdXNlIHRoZSBkZWZhdWx0CkBAIC0xMTU4LDYgKzExNTEsNyBAQCBzdGF0
aWMgaW50IGFzcGVlZF9zbWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJ
cmV0dXJuIFBUUl9FUlIoY29udHJvbGxlci0+cmVncyk7CiAKIAlyZXMgPSBwbGF0Zm9ybV9nZXRf
cmVzb3VyY2UocGRldiwgSU9SRVNPVVJDRV9NRU0sIDEpOworCWNvbnRyb2xsZXItPmFoYl9iYXNl
X3BoeSA9IHJlcy0+c3RhcnQ7CiAJY29udHJvbGxlci0+YWhiX2Jhc2UgPSBkZXZtX2lvcmVtYXBf
cmVzb3VyY2UoZGV2LCByZXMpOwogCWlmIChJU19FUlIoY29udHJvbGxlci0+YWhiX2Jhc2UpKQog
CQlyZXR1cm4gUFRSX0VSUihjb250cm9sbGVyLT5haGJfYmFzZSk7Ci0tIAoyLjIxLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
