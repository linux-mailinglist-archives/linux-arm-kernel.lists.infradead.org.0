Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DE1F6D09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 04:05:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFDrnvwTrkUh1Z/JxhIQV8XwTrv7LTClSJNcfrQvvqk=; b=SljKft4c1QvUl4
	8YnUMs4+AFmxaFi+MuQT8smJAkbzNiwSrI0GgqgNkNzNhA6gC6upnZuKCCD3yNmuXSD28wZWl/BtI
	21mIBu8TU3VKN8rq0IoXbv9+H5mAaPOmbI/zmCsouSc4mnLu94nBPT61AWVdRFrRPZZNUcSWL4Kzs
	7Zwl+bQC73dsEQBYUJprLvtFBDRwXx7OP42Twep1N9TOTzca3uRlseegYbUUIBRcYFjoaSfWQp9TO
	+QLUgvgThOs0Ylw040aAVhEQGR1lRHGqKWeqGbu4riz8w2p//G43GUNFplK7HShwC4X5qfsQ0uvKe
	0XvLEo+fQpbLRYHsn0Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU00u-0002hC-56; Mon, 11 Nov 2019 03:05:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU00Z-0002eS-Rn; Mon, 11 Nov 2019 03:04:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3F824B13E;
 Mon, 11 Nov 2019 03:04:49 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 2/7] arm64: dts: realtek: rtd129x: Use reserved-memory for RPC
 regions
Date: Mon, 11 Nov 2019 04:04:29 +0100
Message-Id: <20191111030434.29977-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191111030434.29977-1-afaerber@suse.de>
References: <20191111030434.29977-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_190452_055287_5C722A60 
X-CRM114-Status: UNSURE (   9.22  )
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

TW92ZSAvcmVzZXJ2ZWQtbWVtb3J5IG5vZGUgZnJvbSBSVEQxMjk1IHRvIFJURDEyOXggRFQuCkNv
bnZlcnQgUlBDIC9tZW1yZXNlcnZlL3MgaW50byAvcmVzZXJ2ZWQtbWVtb3J5IG5vZGVzLgoKU2ln
bmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kgfCAxMyArLS0tLS0tLS0tLS0tCiBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIHwgMjMgKysrKysrKysrKysr
KysrKysrKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kKaW5kZXggMzRm
NmNjNmYxNmZlLi4xNDAyYWJlODBlYTEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cmVhbHRlay9ydGQxMjk1LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDEyOTUuZHRzaQpAQCAtMiw3ICsyLDcgQEAKIC8qCiAgKiBSZWFsdGVrIFJURDEyOTUgU29DCiAg
KgotICogQ29weXJpZ2h0IChjKSAyMDE2LTIwMTcgQW5kcmVhcyBGw6RyYmVyCisgKiBDb3B5cmln
aHQgKGMpIDIwMTYtMjAxOSBBbmRyZWFzIEbDpHJiZXIKICAqLwogCiAjaW5jbHVkZSAicnRkMTI5
eC5kdHNpIgpAQCAtNDcsMTcgKzQ3LDYgQEAKIAkJfTsKIAl9OwogCi0JcmVzZXJ2ZWQtbWVtb3J5
IHsKLQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Ci0JCSNzaXplLWNlbGxzID0gPDE+OwotCQlyYW5n
ZXM7Ci0KLQkJdGVlQDEwMTAwMDAwIHsKLQkJCXJlZyA9IDwweDEwMTAwMDAwIDB4ZjAwMDAwPjsK
LQkJCW5vLW1hcDsKLQkJfTsKLQl9OwotCiAJdGltZXIgewogCQljb21wYXRpYmxlID0gImFybSxh
cm12OC10aW1lciI7CiAJCWludGVycnVwdHMgPSA8R0lDX1BQSSAxMwpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVhbHRlay9ydGQxMjl4LmR0c2kKaW5kZXggNDQzMzExNDQ3NmY1Li44ZDgwY2NhOTQ1YmMg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kKKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQpAQCAtMiwxNCArMiwx
MiBAQAogLyoKICAqIFJlYWx0ZWsgUlREMTI5My9SVEQxMjk1L1JURDEyOTYgU29DCiAgKgotICog
Q29weXJpZ2h0IChjKSAyMDE2LTIwMTcgQW5kcmVhcyBGw6RyYmVyCisgKiBDb3B5cmlnaHQgKGMp
IDIwMTYtMjAxOSBBbmRyZWFzIEbDpHJiZXIKICAqLwogCiAvbWVtcmVzZXJ2ZS8JMHgwMDAwMDAw
MDAwMDAwMDAwIDB4MDAwMDAwMDAwMDAzMDAwMDsKLS9tZW1yZXNlcnZlLwkweDAwMDAwMDAwMDAw
MWYwMDAgMHgwMDAwMDAwMDAwMDAxMDAwOwogL21lbXJlc2VydmUvCTB4MDAwMDAwMDAwMDAzMDAw
MCAweDAwMDAwMDAwMDAwZDAwMDA7CiAvbWVtcmVzZXJ2ZS8JMHgwMDAwMDAwMDAxYjAwMDAwIDB4
MDAwMDAwMDAwMDRiZTAwMDsKLS9tZW1yZXNlcnZlLwkweDAwMDAwMDAwMDFmZmUwMDAgMHgwMDAw
MDAwMDAwMDA0MDAwOwogCiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xs
ZXIvYXJtLWdpYy5oPgogI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5
NS5oPgpAQCAtMTksNiArMTcsMjUgQEAKIAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkjc2l6ZS1j
ZWxscyA9IDwxPjsKIAorCXJlc2VydmVkLW1lbW9yeSB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+
OworCQkjc2l6ZS1jZWxscyA9IDwxPjsKKwkJcmFuZ2VzOworCisJCXJwY19jb21tOiBycGNAMWYw
MDAgeworCQkJcmVnID0gPDB4MWYwMDAgMHgxMDAwPjsKKwkJfTsKKworCQlycGNfcmluZ2J1Zjog
cnBjQDFmZmUwMDAgeworCQkJcmVnID0gPDB4MWZmZTAwMCAweDQwMDA+OworCQl9OworCisJCXRl
ZTogdGVlQDEwMTAwMDAwIHsKKwkJCXJlZyA9IDwweDEwMTAwMDAwIDB4ZjAwMDAwPjsKKwkJCW5v
LW1hcDsKKwkJfTsKKwl9OworCiAJYXJtX3BtdTogYXJtLXBtdSB7CiAJCWNvbXBhdGlibGUgPSAi
YXJtLGNvcnRleC1hNTMtcG11IjsKIAkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQ4IElSUV9UWVBF
X0xFVkVMX0hJR0g+OwotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
