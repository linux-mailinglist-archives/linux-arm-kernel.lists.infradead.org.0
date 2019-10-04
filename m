Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D2FCB9B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+4mrgCW9GUdj+W57ujTVGCgisHXT7a5QkzOoDPJ7yE=; b=mU+606GEgzDFem
	jQcsTpV/A0pHA8A3984VMItUyp8nbDYz0HvezX0WFxWuqAdMUAI2pZVPw2t9DvzFvJLsW8VLXMDLM
	9FKihYRhwQkDt7J6VP8MJWhTMqG4fDFL8zVYTzU3uvIUX/illau/vKpvvR3lNaDcXOABO7rpQ7Igd
	47BeDRMSIS343buVveGDdXwHE5v4AbjuyVmB4IyKC65uWXRgaQWVMpoaVkygPNNI9ypzb6n3+XkTB
	XSw2RmzH+iMf0/dGcXxOenZkDOx4sdDsb6OF1fXHjvo9IWke7omt5iKfwTnyikHIaPBCXUSqh3ajR
	8hQrPAfuP+TYvqRYvntg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMGS-0006cz-G9; Fri, 04 Oct 2019 12:00:52 +0000
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMFs-00057L-PQ
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:00:18 +0000
Received: from player792.ha.ovh.net (unknown [10.109.160.40])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id 7AEA820A231
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 14:00:04 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id 0561EAA656D0;
 Fri,  4 Oct 2019 11:59:46 +0000 (UTC)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 01/16] mtd: spi-nor: aspeed: Use command mode for reads
Date: Fri,  4 Oct 2019 13:59:04 +0200
Message-Id: <20191004115919.20788-2-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004115919.20788-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3766135191457794995
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050016_998460_9D1E7432 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.40.176 listed in list.dnswl.org]
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

V2hlbiByZWFkaW5nIGZsYXNoIGNvbnRlbnRzLCB0cnkgdG8gcmVhZCBmcm9tIHRoZSBBSEIgd2lu
ZG93CmNvbmZpZ3VyZWQgZm9yIHRoZSBmbGFzaCBtb2R1bGUuIFRoaXMgaXMgY2FsbGVkIHRoZSAi
Y29tbWFuZCBtb2RlIiBvbgpBc3BlZWQgU29DIFNNQyBjb250cm9sbGVycy4gSWYgdGhlIHdpbmRv
dyBpcyBub3QgYmlnIGVub3VnaCwgYmVjYXVzZQpvZiBIVyBpc3N1ZXMsIGZhbGwgYmFjayB0byB0
aGUgInVzZXIgbW9kZSIgdG8gcGVyZm9ybSB0aGUgcmVhZC4KClNpZ25lZC1vZmYtYnk6IEPDqWRy
aWMgTGUgR29hdGVyIDxjbGdAa2FvZC5vcmc+Ci0tLQogZHJpdmVycy9tdGQvc3BpLW5vci9hc3Bl
ZWQtc21jLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdl
ZCwgMjcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bXRkL3NwaS1ub3IvYXNwZWVkLXNtYy5jIGIvZHJpdmVycy9tdGQvc3BpLW5vci9hc3BlZWQtc21j
LmMKaW5kZXggMDA5YzFkYTg1NzRjLi4xNDhiYmM5MzRlZmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bXRkL3NwaS1ub3IvYXNwZWVkLXNtYy5jCisrKyBiL2RyaXZlcnMvbXRkL3NwaS1ub3IvYXNwZWVk
LXNtYy5jCkBAIC0zOTgsNiArMzk4LDMxIEBAIHN0YXRpYyBzc2l6ZV90IGFzcGVlZF9zbWNfd3Jp
dGVfdXNlcihzdHJ1Y3Qgc3BpX25vciAqbm9yLCBsb2ZmX3QgdG8sCiAJcmV0dXJuIGxlbjsKIH0K
IAorc3RhdGljIHNzaXplX3QgYXNwZWVkX3NtY19yZWFkKHN0cnVjdCBzcGlfbm9yICpub3IsIGxv
ZmZfdCBmcm9tLCBzaXplX3QgbGVuLAorCQkJICAgICAgIHVfY2hhciAqcmVhZF9idWYpCit7CisJ
c3RydWN0IGFzcGVlZF9zbWNfY2hpcCAqY2hpcCA9IG5vci0+cHJpdjsKKworCS8qCisJICogVGhl
IEFIQiB3aW5kb3cgY29uZmlndXJlZCBmb3IgdGhlIGNoaXAgaXMgdG9vIHNtYWxsIGZvciB0aGUK
KwkgKiByZWFkIG9mZnNldC4gVXNlIHRoZSAiVXNlciBtb2RlIiBvZiB0aGUgY29udHJvbGxlciB0
bworCSAqIHBlcmZvcm0gdGhlIHJlYWQuCisJICovCisJaWYgKGZyb20gPj0gY2hpcC0+YWhiX3dp
bmRvd19zaXplKSB7CisJCWFzcGVlZF9zbWNfcmVhZF91c2VyKG5vciwgZnJvbSwgbGVuLCByZWFk
X2J1Zik7CisJCWdvdG8gb3V0OworCX0KKworCS8qCisJICogVXNlIHRoZSAiQ29tbWFuZCBtb2Rl
IiB0byBkbyBhIGRpcmVjdCByZWFkIGZyb20gdGhlIEFIQgorCSAqIHdpbmRvdyBjb25maWd1cmVk
IGZvciB0aGUgY2hpcC4gVGhpcyBzaG91bGQgYmUgdGhlIGRlZmF1bHQuCisJICovCisJbWVtY3B5
X2Zyb21pbyhyZWFkX2J1ZiwgY2hpcC0+YWhiX2Jhc2UgKyBmcm9tLCBsZW4pOworCitvdXQ6CisJ
cmV0dXJuIGxlbjsKK30KKwogc3RhdGljIGludCBhc3BlZWRfc21jX3VucmVnaXN0ZXIoc3RydWN0
IGFzcGVlZF9zbWNfY29udHJvbGxlciAqY29udHJvbGxlcikKIHsKIAlzdHJ1Y3QgYXNwZWVkX3Nt
Y19jaGlwICpjaGlwOwpAQCAtNzM5LDYgKzc2NCw3IEBAIHN0YXRpYyBpbnQgYXNwZWVkX3NtY19j
aGlwX3NldHVwX2ZpbmlzaChzdHJ1Y3QgYXNwZWVkX3NtY19jaGlwICpjaGlwKQogCX0KIAogCWNo
aXAtPmN0bF92YWxbc21jX3JlYWRdIHw9IGNtZCB8CisJCWNoaXAtPm5vci5yZWFkX29wY29kZSA8
PCBDT05UUk9MX0NPTU1BTkRfU0hJRlQgfAogCQlDT05UUk9MX0lPX0RVTU1ZX1NFVChjaGlwLT5u
b3IucmVhZF9kdW1teSAvIDgpOwogCiAJZGV2X2RiZyhjb250cm9sbGVyLT5kZXYsICJiYXNlIGNv
bnRyb2wgcmVnaXN0ZXI6ICUwOHhcbiIsCkBAIC04MDUsNyArODMxLDcgQEAgc3RhdGljIGludCBh
c3BlZWRfc21jX3NldHVwX2ZsYXNoKHN0cnVjdCBhc3BlZWRfc21jX2NvbnRyb2xsZXIgKmNvbnRy
b2xsZXIsCiAJCW5vci0+ZGV2ID0gZGV2OwogCQlub3ItPnByaXYgPSBjaGlwOwogCQlzcGlfbm9y
X3NldF9mbGFzaF9ub2RlKG5vciwgY2hpbGQpOwotCQlub3ItPnJlYWQgPSBhc3BlZWRfc21jX3Jl
YWRfdXNlcjsKKwkJbm9yLT5yZWFkID0gYXNwZWVkX3NtY19yZWFkOwogCQlub3ItPndyaXRlID0g
YXNwZWVkX3NtY193cml0ZV91c2VyOwogCQlub3ItPnJlYWRfcmVnID0gYXNwZWVkX3NtY19yZWFk
X3JlZzsKIAkJbm9yLT53cml0ZV9yZWcgPSBhc3BlZWRfc21jX3dyaXRlX3JlZzsKLS0gCjIuMjEu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
