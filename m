Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9856BF6D1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wol+uq0L0qrIepHRYlzkSImY6JgB5memLleCdhrwTBo=; b=SVDnTdNFvO24Sn
	lgSIn5PjnOu13dKGYL9YYac+X7Op5c7rlPlu4C/ujl+8z0yHxnev25ve4V3s2r9qpSm47Yr0SNwEc
	+6jF7KTNixaAOpWVeyO5PSHoc32J8mqvAxgK28VbQw1ptJiiK5y905tRBMGc8nfOQU7+DQOpqHoHS
	tJGCV9H1EOCpotLSbzxzXyuwYGKZQukK5UbsPkagMz936eBGP2ED0WUtdazdH1JNEgH1r5pYy4K+s
	LXJBYaE/Wpz2Q6DoH/2YxvuGtVX1B9ITjOKNCHJRax15++MsN/rwBG9uOR8mOWFWjJ+QRTU7cXuQt
	zIaSDMH7+BQB0M/hMriw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU01a-0004dY-OY; Mon, 11 Nov 2019 03:05:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU00a-0002eW-Op; Mon, 11 Nov 2019 03:04:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 27499B169;
 Mon, 11 Nov 2019 03:04:50 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 4/7] ARM: dts: rtd1195: Fix GIC CPU mask
Date: Mon, 11 Nov 2019 04:04:31 +0100
Message-Id: <20191111030434.29977-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191111030434.29977-1-afaerber@suse.de>
References: <20191111030434.29977-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_190452_947062_E61B5A7A 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q29udmVydCBmcm9tIEdJQ19DUFVfTUFTS19SQVcoKSB0byBHSUNfQ1BVX01BU0tfU0lNUExFKCku
CgpGaXggdGhlIGFyY2ggdGltZXIgaW50ZXJydXB0cycgQ1BVIG1hc2tzLgoKU2lnbmVkLW9mZi1i
eTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIFRoaXMgY291bGQgYmUg
c3F1YXNoZWQgaW50byB0aGUgb3JpZ2luYWwgUlREMTE5NSBwYXRjaC4KIAogYXJjaC9hcm0vYm9v
dC9kdHMvcnRkMTE5NS5kdHNpIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9y
dGQxMTk1LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKaW5kZXggNTgyZjE2
OTY0NGI1Li5hOGNjMmQyM2U3ZWYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDEx
OTUuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKQEAgLTY3LDEzICs2
NywxMyBAQAogCXRpbWVyIHsKIAkJY29tcGF0aWJsZSA9ICJhcm0sYXJtdjctdGltZXIiOwogCQlp
bnRlcnJ1cHRzID0gPEdJQ19QUEkgMTMKLQkJCShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFf
VFlQRV9MRVZFTF9MT1cpPiwKKwkJCShHSUNfQ1BVX01BU0tfU0lNUExFKDIpIHwgSVJRX1RZUEVf
TEVWRUxfTE9XKT4sCiAJCQkgICAgIDxHSUNfUFBJIDE0Ci0JCQkoR0lDX0NQVV9NQVNLX1JBVygw
eGYpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkoR0lDX0NQVV9NQVNLX1NJTVBMRSgyKSB8
IElSUV9UWVBFX0xFVkVMX0xPVyk+LAogCQkJICAgICA8R0lDX1BQSSAxMQotCQkJKEdJQ19DUFVf
TUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJKEdJQ19DUFVfTUFTS19T
SU1QTEUoMikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKIAkJCSAgICAgPEdJQ19QUEkgMTAKLQkJ
CShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPjsKKwkJCShHSUNf
Q1BVX01BU0tfU0lNUExFKDIpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT47CiAJCWNsb2NrLWZyZXF1
ZW5jeSA9IDwyNzAwMDAwMD47CiAJfTsKIAotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
