Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B743479022
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dv3pB5oNDEZXMck6zfr4r+vL2xRfReWEfQMx5Wvrqjo=; b=QctG/tvc5aOzu1
	4CX1fKETpBf+MVqKym2V9qW6IP/G/mfDs7id4cuCEJ5RQ/oRuTzYH7UDJXt4+kPuPGz23X7CAB5Ui
	8mk4MPIMegXJG+LrsvAPMZbcXtu0sjgJenIwKC1L6O8bN4QEmXqON99Ac5j9xlIlBi9GWKkFs5WJw
	DHy5gRF1WxL/E+1R7Xr2W60Fd4kvdwFuyZwuVqdUTGN8/60FycrAzDCrhWwFUd9Sn9EtKoot104PI
	GUIPdUYBI3xvg5lAKbYhH23J52LjBHiJ49hsn6yYahrF5wk/gv5WgQuogSMCpXQVX6FuVXFa/VorJ
	G8PcWm5D/sKvF28ml+kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs84q-0003Bg-7e; Mon, 29 Jul 2019 16:00:44 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs84c-000310-Se
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:00:32 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id BED88743106; Mon, 29 Jul 2019 18:00:28 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH] ARM: at91sam9x5/dt: enable internal pull-up for i2c-gpio lines
Date: Mon, 29 Jul 2019 18:00:22 +0200
Message-Id: <20190729160022.22781-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_090031_085004_1BB3A1E9 
X-CRM114-Status: UNSURE (   9.44  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyB3aGF0IEkgbmVlZCBvbiBteSBBcmlldHRhIEcyNSB0byBiZSBhYmxlIHRvIGp1c3Qg
Y29ubmVjdCBhbiBpMmMKZGV2aWNlIHRvIHRoZSBwaW4gaGVhZGVycy4KQWxzbyByZW1vdmUgdGhl
IGNvbW1lbnQgdGhhdCBkb2Vzbid0IHRlbGwgbW9yZSB0aGFuIHRoZSBwaW4gZGVjbGFyYXRpb24u
CgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3Jn
PgotLS0KSGVsbG8sCgpub3Qgc3VyZSB0aGlzIGlzIGNoYW5nZSBzdWl0YWJsZSBmb3IgdGhlIFNv
QyBkdHNpLiBJJ2xsIGxlYXZlIGl0IHRvIHRoZQphdDkxIG1haW50YWluZXJzIHRvIGRlY2lkZS4K
CkJlc3QgcmVnYXJkcwpVd2UKCiBhcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOXg1LmR0c2kgIHwg
MTIgKysrKysrLS0tLS0tCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwvYXQ5MS5oIHwgIDIg
KysKIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05eDUuZHRzaSBiL2FyY2gvYXJtL2Jv
b3QvZHRzL2F0OTFzYW05eDUuZHRzaQppbmRleCBlZjQ3YzAwNWVmMDMuLjVmYzM4NjI2Nzk1ZSAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTl4NS5kdHNpCisrKyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL2F0OTFzYW05eDUuZHRzaQpAQCAtNDM3LDI0ICs0MzcsMjQgQEAKIAkJCQlp
MmNfZ3BpbzAgewogCQkJCQlwaW5jdHJsX2kyY19ncGlvMDogaTJjX2dwaW8wLTAgewogCQkJCQkJ
YXRtZWwscGlucyA9Ci0JCQkJCQkJPEFUOTFfUElPQSAzMCBBVDkxX1BFUklQSF9HUElPIEFUOTFf
UElOQ1RSTF9NVUxUSV9EUklWRQkvKiBQQTMwIGdwaW8gbXVsdGlkcml2ZSBJMkMwIGRhdGEgKi8K
LQkJCQkJCQkgQVQ5MV9QSU9BIDMxIEFUOTFfUEVSSVBIX0dQSU8gQVQ5MV9QSU5DVFJMX01VTFRJ
X0RSSVZFPjsJLyogUEEzMSBncGlvIG11bHRpZHJpdmUgSTJDMCBjbG9jayAqLworCQkJCQkJCTxB
VDkxX1BJT0EgMzAgQVQ5MV9QRVJJUEhfR1BJTyBBVDkxX1BJTkNUUkxfTVVMVElfRFJJVkVfUFUK
KwkJCQkJCQkgQVQ5MV9QSU9BIDMxIEFUOTFfUEVSSVBIX0dQSU8gQVQ5MV9QSU5DVFJMX01VTFRJ
X0RSSVZFX1BVPjsKIAkJCQkJfTsKIAkJCQl9OwogCiAJCQkJaTJjX2dwaW8xIHsKIAkJCQkJcGlu
Y3RybF9pMmNfZ3BpbzE6IGkyY19ncGlvMS0wIHsKIAkJCQkJCWF0bWVsLHBpbnMgPQotCQkJCQkJ
CTxBVDkxX1BJT0MgMCBBVDkxX1BFUklQSF9HUElPIEFUOTFfUElOQ1RSTF9NVUxUSV9EUklWRQkv
KiBQQzAgZ3BpbyBtdWx0aWRyaXZlIEkyQzEgZGF0YSAqLwotCQkJCQkJCSBBVDkxX1BJT0MgMSBB
VDkxX1BFUklQSF9HUElPIEFUOTFfUElOQ1RSTF9NVUxUSV9EUklWRT47CS8qIFBDMSBncGlvIG11
bHRpZHJpdmUgSTJDMSBjbG9jayAqLworCQkJCQkJCTxBVDkxX1BJT0MgMCBBVDkxX1BFUklQSF9H
UElPIEFUOTFfUElOQ1RSTF9NVUxUSV9EUklWRV9QVQorCQkJCQkJCSBBVDkxX1BJT0MgMSBBVDkx
X1BFUklQSF9HUElPIEFUOTFfUElOQ1RSTF9NVUxUSV9EUklWRV9QVT47CiAJCQkJCX07CiAJCQkJ
fTsKIAogCQkJCWkyY19ncGlvMiB7CiAJCQkJCXBpbmN0cmxfaTJjX2dwaW8yOiBpMmNfZ3BpbzIt
MCB7CiAJCQkJCQlhdG1lbCxwaW5zID0KLQkJCQkJCQk8QVQ5MV9QSU9CIDQgQVQ5MV9QRVJJUEhf
R1BJTyBBVDkxX1BJTkNUUkxfTVVMVElfRFJJVkUJLyogUEI0IGdwaW8gbXVsdGlkcml2ZSBJMkMy
IGRhdGEgKi8KLQkJCQkJCQkgQVQ5MV9QSU9CIDUgQVQ5MV9QRVJJUEhfR1BJTyBBVDkxX1BJTkNU
UkxfTVVMVElfRFJJVkU+OwkvKiBQQjUgZ3BpbyBtdWx0aWRyaXZlIEkyQzIgY2xvY2sgKi8KKwkJ
CQkJCQk8QVQ5MV9QSU9CIDQgQVQ5MV9QRVJJUEhfR1BJTyBBVDkxX1BJTkNUUkxfTVVMVElfRFJJ
VkVfUFUKKwkJCQkJCQkgQVQ5MV9QSU9CIDUgQVQ5MV9QRVJJUEhfR1BJTyBBVDkxX1BJTkNUUkxf
TVVMVElfRFJJVkVfUFU+OwogCQkJCQl9OwogCQkJCX07CiAKZGlmZiAtLWdpdCBhL2luY2x1ZGUv
ZHQtYmluZGluZ3MvcGluY3RybC9hdDkxLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwv
YXQ5MS5oCmluZGV4IDM4MzFmOTFmYjNiYS4uYzcyZDQwZjUwYWNkIDEwMDY0NAotLS0gYS9pbmNs
dWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwvYXQ5MS5oCisrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3Mv
cGluY3RybC9hdDkxLmgKQEAgLTIwLDYgKzIwLDggQEAKICNkZWZpbmUgQVQ5MV9QSU5DVFJMX0RF
Qk9VTkNFCQkoMSA8PCAxNikKICNkZWZpbmUgQVQ5MV9QSU5DVFJMX0RFQk9VTkNFX1ZBTCh4KQko
eCA8PCAxNykKIAorI2RlZmluZSBBVDkxX1BJTkNUUkxfTVVMVElfRFJJVkVfUFUJKEFUOTFfUElO
Q1RSTF9NVUxUSV9EUklWRSB8IEFUOTFfUElOQ1RSTF9QVUxMX1VQKQorCiAjZGVmaW5lIEFUOTFf
UElOQ1RSTF9QVUxMX1VQX0RFR0xJVENICShBVDkxX1BJTkNUUkxfUFVMTF9VUCB8IEFUOTFfUElO
Q1RSTF9ERUdMSVRDSCkKIAogI2RlZmluZSBBVDkxX1BJTkNUUkxfRFJJVkVfU1RSRU5HVEhfREVG
QVVMVAkJKDB4MCA8PCA1KQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
