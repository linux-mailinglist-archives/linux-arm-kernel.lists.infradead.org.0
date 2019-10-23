Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC095E17A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjoSAFPmtOyqjjCEjxDa4+XapLALrCk/nTP1dblov8o=; b=o+nhaHfeiXLGgW
	/6wKpRTKtD93/1GyQEwO+wFPkzqTeBAoQUYtRMfYzMHJmo3G/qsjZZy8idu4cFobrIJD/vip8ZTj8
	A0OFaSoJfIRUgrJoojcKaCvB5Mzp1iBBonVMo/tlbGeHvuK6YGGLp1y6wX+x2SObH75QfgQ3VOvGj
	Qs2khr20aYf12cB9Pey9nYWouDTOCPBp0jnbR4tiUXCVITYWZDOPV7cH9oeaaHLFIVBkRGPU3zllH
	BZo/kSe70LOHfCTkUACOxQK3rz8YhezsobzqqylyniE9/rowdFv1G0ZdRqsjGLmaCbVV+nFECVOiX
	mw7uJ9YNW0y5ZH7otFKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDgP-0008SW-2Z; Wed, 23 Oct 2019 10:16:01 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDe1-0004kh-JW; Wed, 23 Oct 2019 10:13:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 69B9AB55C;
 Wed, 23 Oct 2019 10:13:30 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 07/11] arm64: dts: realtek: Add RTD129x UART resets
Date: Wed, 23 Oct 2019 12:13:13 +0200
Message-Id: <20191023101317.26656-8-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031333_802021_DD518FE1 
X-CRM114-Status: UNSURE (   9.98  )
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

QXNzb2NpYXRlIHRoZSBVQVJUIG5vZGVzIHdpdGggdGhlIGNvcnJlc3BvbmRpbmcgcmVzZXQgY29u
dHJvbGxlciBiaXRzLgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBz
dXNlLmRlPgotLS0KIHYxIC0+IHYyOgogKiBSZWJhc2VkLCBtb3ZlZCBmcm9tIHJ0ZDEyOTUuZHRz
aSB0byBydGQxMjl4LmR0c2kKIAogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXgu
ZHRzaSB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kKaW5kZXggMjgyYWI4YmZhYWQxLi4xNWQzMjFk
OTUxNWMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0
c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQpAQCAtNzks
NiArNzksNyBAQAogCQkJcmVnLXNoaWZ0ID0gPDI+OwogCQkJcmVnLWlvLXdpZHRoID0gPDQ+Owog
CQkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKKwkJCXJlc2V0cyA9IDwmaXNvX3Jlc2V0
IDg+OwogCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIApAQCAtODgsNiArODksNyBAQAog
CQkJcmVnLXNoaWZ0ID0gPDI+OwogCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwogCQkJY2xvY2stZnJl
cXVlbmN5ID0gPDQzMjAwMDAwMD47CisJCQlyZXNldHMgPSA8JnJlc2V0MiAyOD47CiAJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCkBAIC05Nyw2ICs5OSw3IEBACiAJCQlyZWctc2hpZnQg
PSA8Mj47CiAJCQlyZWctaW8td2lkdGggPSA8ND47CiAJCQljbG9jay1mcmVxdWVuY3kgPSA8NDMy
MDAwMDAwPjsKKwkJCXJlc2V0cyA9IDwmcmVzZXQyIDI3PjsKIAkJCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7CiAJCX07CiAKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
