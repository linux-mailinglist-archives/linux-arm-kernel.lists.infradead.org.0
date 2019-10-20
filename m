Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E11DDF34
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 17:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnzW382xQdlcFH+OE5Qqsr68HkvLrfMr/ku+VJQTcr0=; b=o87/stTW4PDEBy
	SIIAp0tZlB/OanNl41ACQ8X4oDtCg86x/jOt1SCRpLk9Ozf0DVBSJ9xEkviGAkvSy9fgTi4hmgILF
	J6cI0fzhZNrTg55tx8F7u1oQqvMvgktJE548un6u9Ar6H7UkbjrIRD+O3P5UxhWg0dvvUv+tN1aXy
	zYYbSCLQ6CVtN+gsjbEuAbfAmjsLt1EBpyDyqdpb365fuRgYZi0KXgZAU16UcGCc7QJ2fcb+UwhfX
	rKm0hVXoYgSlVWTJu2jsRexBbbx6QV9CpKe0KX4GCyeaCjd/hzmiA8DCfoTuGrP50TMCd4gGP8ll4
	W6Tqa6WmwXQS4Mm92DIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMDGC-0003ie-EE; Sun, 20 Oct 2019 15:36:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMDFq-0003DD-5B; Sun, 20 Oct 2019 15:36:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 69453AE35;
 Sun, 20 Oct 2019 15:36:22 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 1/2] arm64: dts: realtek: Add oscillator for RTD129x
Date: Sun, 20 Oct 2019 17:36:11 +0200
Message-Id: <20191020153612.29889-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020153612.29889-1-afaerber@suse.de>
References: <20191020153612.29889-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_083626_355421_B2035633 
X-CRM114-Status: UNSURE (   8.33  )
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
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIDI3IE1IeiBvc2NpbGxhdG9yIGNsb2NrIG5vZGUuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFz
IEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjM6IE5ldyAoZnJvbSBwcmV2aW91c2x5
IGJsb2NraW5nIGNsayBwYXRjaCBzZXJpZXMpCiAKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRl
ay9ydGQxMjl4LmR0c2kgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQppbmRleCBhMjZjMzc1
ZWUxYmIuLjRmYjE2NjExMTU5YiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFs
dGVrL3J0ZDEyOXguZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5
eC5kdHNpCkBAIC0yMyw2ICsyMywxMyBAQAogCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDggSVJR
X1RZUEVfTEVWRUxfSElHSD47CiAJfTsKIAorCW9zYzI3TTogb3NjIHsKKwkJY29tcGF0aWJsZSA9
ICJmaXhlZC1jbG9jayI7CisJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47CisJCSNjbG9j
ay1jZWxscyA9IDwwPjsKKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gIm9zYzI3TSI7CisJfTsKKwog
CXNvYyB7CiAJCWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7CiAJCSNhZGRyZXNzLWNlbGxzID0g
PDE+OwotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
