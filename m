Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E76F9B95D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/3MnArtvh4or+6sCUkBh2UshLif9rwmW2GqebxsWs8=; b=RDY8FhPwDLo3Gh
	5xVYDnJBwmuglZMAEzqiC+MMVG6lCM0PG9ecndhDCxcEAu4byeY3xpuMrTmBXBd+przO3pLD95zIn
	u1rZAcbbkWAYlcxCh0TkRExcivHDjzJRoxJBcIpgKzG+Z56IdIg8HjFAZvsV+Xwbx14yGIPIB4XPQ
	imQnF76KcjvMPzgQXKptC52XPUwZBL/pvuE4Lj7bQUwfSvkQ+CMfXLx2SYaWllUKQlSnL7ukR+rKQ
	MNErcldQj2fDABAiXJaKNGmlomOdk3Om64Y4fIsdnqmgeG4QNNJTOcKieRI9hnpKUCtgMAF1NhtWo
	9v4OghfMUZ8B8vqiFHKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jen-0002JO-8L; Sat, 24 Aug 2019 00:11:49 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JeI-0001tD-Vg
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:11:20 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 9EAB077D4B6; Sat, 24 Aug 2019 02:10:52 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 2/6] pwm: atmel: use a constant for maximum prescale value
Date: Sat, 24 Aug 2019 02:10:37 +0200
Message-Id: <20190824001041.11007-3-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824001041.11007-1-uwe@kleine-koenig.org>
References: <20190824001041.11007-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171119_160136_660F031B 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
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

VGhlIG1heGltYWwgcHJlc2NhbGUgdmFsdWUgaXMgMTAgZm9yIGFsbCBzdXBwb3J0ZWQgdmFyaWFu
dHMuIFNvIGRyb3AgdGhlCm1lbWJlciBpbiB0aGUgdmFyaWFudCBkZXNjcmlwdGlvbiBhbmQgaW50
cm9kdWNlIGEgZ2xvYmFsIGNvbnN0YW50IGluc3RlYWQuCgpUaGlzIHJlZHVjZXMgdGhlIHNpemUg
b2YgdGhlIHZhcmlhbnQgZGVzY3JpcHRpb25zIGFuZCB0aGUgLmFwcGx5KCkgY2FsbGJhY2sKY2Fu
IGJlIGNvbXBpbGVkIGEgYml0IG1vcmUgZWZmZWN0aXZlbHkuCgpBY2tlZC1ieTogQ2xhdWRpdSBC
ZXpuZWEgPGNsYXVkaXUuYmV6bmVhQG1pY3JvY2hpcC5jb20+ClNpZ25lZC1vZmYtYnk6IFV3ZSBL
bGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Ci0tLQpDaGFuZ2VzIHNpbmNlIChp
bXBsaWNpdCkgdjEsIHNlbnQgd2l0aCBNZXNzYWdlLUlkOgoyMDE5MDgxNTIxNDEzMy4xMTEzNC0y
LXV3ZUBrbGVpbmUta29lbmlnLm9yZzoKCiAtIEFkZGVkIENsYXVkaXUncyBBY2sKCiBkcml2ZXJz
L3B3bS9wd20tYXRtZWwuYyB8IDggKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLWF0bWVs
LmMgYi9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYwppbmRleCBhNjFhMzBmYThiN2UuLmY0OTdmODQ3
NzFmMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLWF0bWVsLmMKKysrIGIvZHJpdmVycy9w
d20vcHdtLWF0bWVsLmMKQEAgLTUwLDYgKzUwLDggQEAKICNkZWZpbmUgUFdNVjJfQ1BSRAkJMHgw
QwogI2RlZmluZSBQV01WMl9DUFJEVVBECQkweDEwCiAKKyNkZWZpbmUgUFdNX01BWF9QUkVTCQkx
MAorCiBzdHJ1Y3QgYXRtZWxfcHdtX3JlZ2lzdGVycyB7CiAJdTggcGVyaW9kOwogCXU4IHBlcmlv
ZF91cGQ7CkBAIC01OSw3ICs2MSw2IEBAIHN0cnVjdCBhdG1lbF9wd21fcmVnaXN0ZXJzIHsKIAog
c3RydWN0IGF0bWVsX3B3bV9jb25maWcgewogCXUzMiBtYXhfcGVyaW9kOwotCXUzMiBtYXhfcHJl
czsKIH07CiAKIHN0cnVjdCBhdG1lbF9wd21fZGF0YSB7CkBAIC0xMjYsNyArMTI3LDcgQEAgc3Rh
dGljIGludCBhdG1lbF9wd21fY2FsY3VsYXRlX2NwcmRfYW5kX3ByZXMoc3RydWN0IHB3bV9jaGlw
ICpjaGlwLAogCWZvciAoKnByZXMgPSAwOyBjeWNsZXMgPiBhdG1lbF9wd20tPmRhdGEtPmNmZy5t
YXhfcGVyaW9kOyBjeWNsZXMgPj49IDEpCiAJCSgqcHJlcykrKzsKIAotCWlmICgqcHJlcyA+IGF0
bWVsX3B3bS0+ZGF0YS0+Y2ZnLm1heF9wcmVzKSB7CisJaWYgKCpwcmVzID4gUFdNX01BWF9QUkVT
KSB7CiAJCWRldl9lcnIoY2hpcC0+ZGV2LCAicHJlcyBleGNlZWRzIHRoZSBtYXhpbXVtIHZhbHVl
XG4iKTsKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQpAQCAtMjg5LDcgKzI5MCw2IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgYXRtZWxfcHdtX2RhdGEgYXRtZWxfc2FtOXJsX3B3bV9kYXRhID0gewogCS5j
ZmcgPSB7CiAJCS8qIDE2IGJpdHMgdG8ga2VlcCBwZXJpb2QgYW5kIGR1dHkuICovCiAJCS5tYXhf
cGVyaW9kCT0gMHhmZmZmLAotCQkubWF4X3ByZXMJPSAxMCwKIAl9LAogfTsKIApAQCAtMzAzLDcg
KzMwMyw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXRtZWxfcHdtX2RhdGEgYXRtZWxfc2FtYTVf
cHdtX2RhdGEgPSB7CiAJLmNmZyA9IHsKIAkJLyogMTYgYml0cyB0byBrZWVwIHBlcmlvZCBhbmQg
ZHV0eS4gKi8KIAkJLm1heF9wZXJpb2QJPSAweGZmZmYsCi0JCS5tYXhfcHJlcwk9IDEwLAogCX0s
CiB9OwogCkBAIC0zMTcsNyArMzE2LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdG1lbF9wd21f
ZGF0YSBtY2hwX3NhbTl4NjBfcHdtX2RhdGEgPSB7CiAJLmNmZyA9IHsKIAkJLyogMzIgYml0cyB0
byBrZWVwIHBlcmlvZCBhbmQgZHV0eS4gKi8KIAkJLm1heF9wZXJpb2QJPSAweGZmZmZmZmZmLAot
CQkubWF4X3ByZXMJPSAxMCwKIAl9LAogfTsKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
