Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3FA9B962
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJm7pExUuKT+d0QyY6BoCVF/v2MbckeGJVlJG620/P8=; b=dp0QASzT9KY4BA
	Fo+VhQKeLxhoeJPd4oHu5bbvwQjiMAlXPkrptxhkQbejVxtvN4CyKc5RpXPITBEesryM+DbOC8GUG
	Q4NPEkv5xn2GFNRGqLntcPsGe0YKgmqM6eEufnjAXJRxtGXG60Pv2k/vB2s8bNwO0iUNZ7lw3rgjc
	GxipO8OocNeLNNJCGmc5GXQRV6EwzaHRSzC+XHG4Uh+C75+QwTCJ2Ojv9G+bwqdNZUcJ9l3Nj4GPj
	7AddX1OHAZ9V30kramH3cKt0Eq/BTDmy5Hpw2H+VGUdK4EQexhWLYVemUueazJkch6vO+fjoRs1xG
	DiV9jp0YkB8UuVgmrIfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jf1-0002aI-Fr; Sat, 24 Aug 2019 00:12:03 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JeL-0001up-El
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:11:22 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id A63A677D4BC; Sat, 24 Aug 2019 02:11:01 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 5/6] pwm: atmel: use atmel_pwm_writel in
 atmel_pwm_ch_writel; ditto for readl
Date: Sat, 24 Aug 2019 02:10:40 +0200
Message-Id: <20190824001041.11007-6-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824001041.11007-1-uwe@kleine-koenig.org>
References: <20190824001041.11007-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171121_665414_AF7C2153 
X-CRM114-Status: GOOD (  10.91  )
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
Cc: linux-pwm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBtYWtlcyBpdCBhIGJpdCBlYXNpZXIgd2hlbiBpbnN0cnVtZW50aW5nIHJlZ2lzdGVyIGFj
Y2VzcyB0byBvbmx5IGhhdmUKdG8gYWRkIGNvZGUgaW4gb25lIHBsYWNlLgoKU2lnbmVkLW9mZi1i
eTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KLS0tCk5ldyBpbiB2
MgoKIGRyaXZlcnMvcHdtL3B3bS1hdG1lbC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3
bS1hdG1lbC5jIGIvZHJpdmVycy9wd20vcHdtLWF0bWVsLmMKaW5kZXggODlmM2E2MmY3NTQxLi4x
NTJjMmI3ZGQ2ZGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1hdG1lbC5jCisrKyBiL2Ry
aXZlcnMvcHdtL3B3bS1hdG1lbC5jCkBAIC0xMTEsNyArMTExLDcgQEAgc3RhdGljIGlubGluZSB1
MzIgYXRtZWxfcHdtX2NoX3JlYWRsKHN0cnVjdCBhdG1lbF9wd21fY2hpcCAqY2hpcCwKIHsKIAl1
bnNpZ25lZCBsb25nIGJhc2UgPSBQV01fQ0hfUkVHX09GRlNFVCArIGNoICogUFdNX0NIX1JFR19T
SVpFOwogCi0JcmV0dXJuIHJlYWRsX3JlbGF4ZWQoY2hpcC0+YmFzZSArIGJhc2UgKyBvZmZzZXQp
OworCXJldHVybiBhdG1lbF9wd21fcmVhZGwoY2hpcCwgYmFzZSArIG9mZnNldCk7CiB9CiAKIHN0
YXRpYyBpbmxpbmUgdm9pZCBhdG1lbF9wd21fY2hfd3JpdGVsKHN0cnVjdCBhdG1lbF9wd21fY2hp
cCAqY2hpcCwKQEAgLTEyMCw3ICsxMjAsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgYXRtZWxfcHdt
X2NoX3dyaXRlbChzdHJ1Y3QgYXRtZWxfcHdtX2NoaXAgKmNoaXAsCiB7CiAJdW5zaWduZWQgbG9u
ZyBiYXNlID0gUFdNX0NIX1JFR19PRkZTRVQgKyBjaCAqIFBXTV9DSF9SRUdfU0laRTsKIAotCXdy
aXRlbF9yZWxheGVkKHZhbCwgY2hpcC0+YmFzZSArIGJhc2UgKyBvZmZzZXQpOworCWF0bWVsX3B3
bV93cml0ZWwoY2hpcCwgYmFzZSArIG9mZnNldCwgdmFsKTsKIH0KIAogc3RhdGljIGludCBhdG1l
bF9wd21fY2FsY3VsYXRlX2NwcmRfYW5kX3ByZXMoc3RydWN0IHB3bV9jaGlwICpjaGlwLAotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
