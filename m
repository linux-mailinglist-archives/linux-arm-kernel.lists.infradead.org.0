Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62EF11C3EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Xxe3vMZ3vue9Ngka8TypYoUYHQvOctRb9HXELvizgg=; b=SickfIhQY23WxY
	+xPHwdvfyhAk6+G75m0C9tWOrWh/cFVHk5BRH1li8sPAjIrMCOJ8w9+000k8qxH5HUVHMS8x7QLBJ
	c0EwR+drMPiXeSCNf3hTegUnWKj+zE2M56TIkZeU1Kk3TbtGlK2QeQyOTKSWSFNz+ldQlaYabiVnO
	wcvmRwTvuLChsZBWpJ9jytIYG3qahHOA2L5nraHxROPCw6wdmyJVs9dVWyDX7OsXpgcLoejrrr4JQ
	k4yfS5GRpKQCg5oyM65VxkGG0KR3YQrJQTRWDr+e4Oy1YAgdNMijo+W8ldlSI/smpRS5uhwSKmoy0
	jVioU16gHKsS6sl5VN8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFLs-0002N3-Ek; Thu, 12 Dec 2019 03:41:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFKY-0000NV-LS; Thu, 12 Dec 2019 03:40:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 665FAAD7B;
 Thu, 12 Dec 2019 03:39:57 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org,
	linux-leds@vger.kernel.org
Subject: [RFC 03/25] arm64: dts: realtek: rtd1295: Add Xnano X5
Date: Thu, 12 Dec 2019 04:39:30 +0100
Message-Id: <20191212033952.5967-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191212033952.5967-1-afaerber@suse.de>
References: <20191212033952.5967-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_193958_850065_6C037173 
X-CRM114-Status: GOOD (  11.13  )
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
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIFhuYW5vIFg1IGlzIGFuIE9UVCBUViBCb3guCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbD
pHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L01ha2VmaWxlICAgICAgICAgICAgIHwgIDEgKwogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEyOTUteG5hbm8teDUuZHRzIHwgMzAgKysrKysrKysrKysrKysrKysrKysrKysrCiAyIGZp
bGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS14bmFuby14NS5kdHMKCmRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvTWFrZWZpbGUKaW5kZXggNTRiZDAyZDExYzAyLi5lZjhkOGZjYmFhMDUgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9NYWtlZmlsZQorKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUKQEAgLTQsNiArNCw3IEBAIGR0Yi0kKENPTkZJ
R19BUkNIX1JFQUxURUspICs9IHJ0ZDEyOTMtZHM0MThqLmR0YgogCiBkdGItJChDT05GSUdfQVJD
SF9SRUFMVEVLKSArPSBydGQxMjk1LW1lbGUtdjkuZHRiCiBkdGItJChDT05GSUdfQVJDSF9SRUFM
VEVLKSArPSBydGQxMjk1LXByb2JveDItYXZhLmR0YgorZHRiLSQoQ09ORklHX0FSQ0hfUkVBTFRF
SykgKz0gcnRkMTI5NS14bmFuby14NS5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JFQUxURUspICs9
IHJ0ZDEyOTUtemlkb28teDlzLmR0YgogCiBkdGItJChDT05GSUdfQVJDSF9SRUFMVEVLKSArPSBy
dGQxMjk2LWRzNDE4LmR0YgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEyOTUteG5hbm8teDUuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEy
OTUteG5hbm8teDUuZHRzCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4u
ZDc4NzhmZjk0MmU2Ci0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFs
dGVrL3J0ZDEyOTUteG5hbm8teDUuZHRzCkBAIC0wLDAgKzEsMzAgQEAKKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UpCisvKgorICog
Q29weXJpZ2h0IChjKSAyMDE3LTIwMTkgQW5kcmVhcyBGw6RyYmVyCisgKi8KKworL2R0cy12MS87
CisKKyNpbmNsdWRlICJydGQxMjk1LmR0c2kiCisKKy8geworCWNvbXBhdGlibGUgPSAieG5hbm8s
eDUiLCAicmVhbHRlayxydGQxMjk1IjsKKwltb2RlbCA9ICJYbmFubyBYNSI7CisKKwltZW1vcnlA
MWYwMDAgeworCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOworCQlyZWcgPSA8MHgxZjAwMCAweDNm
ZmUxMDAwPjsgLyogYm9vdCBST00gdG8gMSBHaUIgb3IgMiBHaUIgKi8KKwl9OworCisJYWxpYXNl
cyB7CisJCXNlcmlhbDAgPSAmdWFydDA7CisJfTsKKworCWNob3NlbiB7CisJCXN0ZG91dC1wYXRo
ID0gInNlcmlhbDA6MTE1MjAwbjgiOworCX07Cit9OworCismdWFydDAgeworCXN0YXR1cyA9ICJv
a2F5IjsKK307Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
