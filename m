Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AEADDC55
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 06:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Me362pQLn++TGvh7uS3NCQ9qYzfHBsq34fDS35ODlKg=; b=Vzna8OB4n6v/jp
	VdfdSqJ+X4FXrXmeBBXKiAWvln2kCVNgKDcINBGp+r3+/j/QT/iD0goHIy/VT3Bfn3cZvxlUyYwdi
	VQi/trQZ9bokE/xHYJ5pKX/D+1EAV8kLyO3/904mqEglQ8tKkJWXDX40jOJwJYbNoyljNeJzo0rJW
	9idgLKWTZ1VEb8kULLaJyNILbi5Cj9LDpIj5UuQ+nKxOw4uFqLo+/itrnso8Qo6zYmJ/OGti1DenC
	Y2AG+lycHFh7CPW7ASHqee83ZlH/ltFt6SoMIRsJfWEzuMNccgMG5Lr7PSkUjlqZ1LnogEykb15nc
	4vVyxspVC/8rE2rUz8XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM2Y9-0005Sg-EN; Sun, 20 Oct 2019 04:10:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM2W7-0002Vd-Tj; Sun, 20 Oct 2019 04:08:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6B383B012;
 Sun, 20 Oct 2019 04:08:28 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 6/8] arm64: dts: realtek: Add RTD1293 and Synology DS418j
Date: Sun, 20 Oct 2019 06:08:15 +0200
Message-Id: <20191020040817.16882-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020040817.16882-1-afaerber@suse.de>
References: <20191020040817.16882-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_210832_272322_5BE16900 
X-CRM114-Status: GOOD (  12.14  )
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
 linux-kernel@vger.kernel.org, info@synology.com,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERldmljZSBUcmVlcyBmb3IgUlREMTI5MyBTb0MgYW5kIFN5bm9sb2d5IERpc2tTdGF0aW9u
IERTNDE4aiBOQVMuCgpDYzogaW5mb0BzeW5vbG9neS5jb20KU2lnbmVkLW9mZi1ieTogQW5kcmVh
cyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHYxIC0+IHYyOgogKiBNb3ZlZCBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllciB0byB0b3AKICogRHJvcHBlZCAiYXJtLGFybXY4IiAoUm9iKQog
KiBDaGFuZ2VkIGZyb20gTUlUIHRvIEJTRC0yLUNsYXVzZSAoUm9iKQogKiBEcm9wcGVkIGFjY2lk
ZW50YWwgZW5hYmxlLW1ldGhvZCBhbmQgY3B1LXJlbGVhc2UtYWRkcgogCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUgICAgICAgICAgIHwgIDMgKysKIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcmVhbHRlay9ydGQxMjkzLWRzNDE4ai5kdHMgfCAzMCArKysrKysrKysrKysrKysKIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLmR0c2kgICAgICAgfCA1MSArKysrKysr
KysrKysrKysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCA4NCBpbnNlcnRpb25zKCspCiBj
cmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMtZHM0
MThqLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMjkzLmR0c2kKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFr
ZWZpbGUgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUKaW5kZXggOTBjODk3
YWMzZjdhLi5lN2ZmNDA0NjFkZGMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9NYWtlZmlsZQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUK
QEAgLTEsNCArMSw3IEBACiAjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkK
KworZHRiLSQoQ09ORklHX0FSQ0hfUkVBTFRFSykgKz0gcnRkMTI5My1kczQxOGouZHRiCisKIGR0
Yi0kKENPTkZJR19BUkNIX1JFQUxURUspICs9IHJ0ZDEyOTUtbWVsZS12OS5kdGIKIGR0Yi0kKENP
TkZJR19BUkNIX1JFQUxURUspICs9IHJ0ZDEyOTUtcHJvYm94Mi1hdmEuZHRiCiBkdGItJChDT05G
SUdfQVJDSF9SRUFMVEVLKSArPSBydGQxMjk1LXppZG9vLXg5cy5kdGIKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLWRzNDE4ai5kdHMgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5My1kczQxOGouZHRzCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uYjJkZDU4MzE0NmI0Ci0tLSAvZGV2L251bGwKKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMtZHM0MThqLmR0cwpAQCAtMCwwICsxLDMw
IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNE
LTItQ2xhdXNlKQorLyoKKyAqIENvcHlyaWdodCAoYykgMjAxNyBBbmRyZWFzIEbDpHJiZXIKKyAq
LworCisvZHRzLXYxLzsKKworI2luY2x1ZGUgInJ0ZDEyOTMuZHRzaSIKKworLyB7CisJY29tcGF0
aWJsZSA9ICJzeW5vbG9neSxkczQxOGoiLCAicmVhbHRlayxydGQxMjkzIjsKKwltb2RlbCA9ICJT
eW5vbG9neSBEaXNrU3RhdGlvbiBEUzQxOGoiOworCisJbWVtb3J5QDAgeworCQlkZXZpY2VfdHlw
ZSA9ICJtZW1vcnkiOworCQlyZWcgPSA8MHgwIDB4NDAwMDAwMDA+OworCX07CisKKwlhbGlhc2Vz
IHsKKwkJc2VyaWFsMCA9ICZ1YXJ0MDsKKwl9OworCisJY2hvc2VuIHsKKwkJc3Rkb3V0LXBhdGgg
PSAic2VyaWFsMDoxMTUyMDBuOCI7CisJfTsKK307CisKKyZ1YXJ0MCB7CisJc3RhdHVzID0gIm9r
YXkiOworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkz
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5My5kdHNpCm5ldyBmaWxl
IG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYmQ0ZTIyNzIzZjdiCi0tLSAvZGV2L251
bGwKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMuZHRzaQpAQCAtMCww
ICsxLDUxIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIg
T1IgQlNELTItQ2xhdXNlKQorLyoKKyAqIFJlYWx0ZWsgUlREMTI5MyBTb0MKKyAqCisgKiBDb3B5
cmlnaHQgKGMpIDIwMTctMjAxOSBBbmRyZWFzIEbDpHJiZXIKKyAqLworCisjaW5jbHVkZSAicnRk
MTI5eC5kdHNpIgorCisvIHsKKwljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5MyI7CisKKwlj
cHVzIHsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8Mj47CisJCSNzaXplLWNlbGxzID0gPDA+OworCisJ
CWNwdTA6IGNwdUAwIHsKKwkJCWRldmljZV90eXBlID0gImNwdSI7CisJCQljb21wYXRpYmxlID0g
ImFybSxjb3J0ZXgtYTUzIjsKKwkJCXJlZyA9IDwweDAgMHgwPjsKKwkJCW5leHQtbGV2ZWwtY2Fj
aGUgPSA8JmwyPjsKKwkJfTsKKworCQljcHUxOiBjcHVAMSB7CisJCQlkZXZpY2VfdHlwZSA9ICJj
cHUiOworCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE1MyI7CisJCQlyZWcgPSA8MHgwIDB4
MT47CisJCQluZXh0LWxldmVsLWNhY2hlID0gPCZsMj47CisJCX07CisKKwkJbDI6IGwyLWNhY2hl
IHsKKwkJCWNvbXBhdGlibGUgPSAiY2FjaGUiOworCQl9OworCX07CisKKwl0aW1lciB7CisJCWNv
bXBhdGlibGUgPSAiYXJtLGFybXY4LXRpbWVyIjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDEz
CisJCQkoR0lDX0NQVV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkg
ICAgIDxHSUNfUFBJIDE0CisJCQkoR0lDX0NQVV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVW
RUxfTE9XKT4sCisJCQkgICAgIDxHSUNfUFBJIDExCisJCQkoR0lDX0NQVV9NQVNLX1JBVygweGYp
IHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkgICAgIDxHSUNfUFBJIDEwCisJCQkoR0lDX0NQ
VV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT47CisJfTsKK307CisKKyZhcm1f
cG11IHsKKwlpbnRlcnJ1cHQtYWZmaW5pdHkgPSA8JmNwdTA+LCA8JmNwdTE+OworfTsKLS0gCjIu
MTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
