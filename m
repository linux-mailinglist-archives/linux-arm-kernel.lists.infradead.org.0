Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC0310EF43
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:24:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/GZHmVfRAS1N/YFsG9Qh/pKJwdI7V8dc6Et2W4j9po=; b=iap0wNZ+pXqYeb
	36HmJ5HAHWvmhUBmvETBSrL2eRgL6GU14Qs1OlxeIb2AyZm2BdW7MNZ/9dx8nXRjdDuf/sUTjaY8b
	N+JwUXMZctwWvqcndgsz6YNX+RREL/aBtQrMKaJKMVaCMK+y7S/MeeWRgHvr4iLOfEkkuV2hsq4sF
	sG0rMK6UWkXeW/zd/BxgsyK4ILkGL126L0KbLnEhjCNcd+SnSaImAleojkbRRnrHC7t5CnXEqCdcE
	Xci52DDjnr1++4Z0w/q+V1RtNBWBchF94KHkBrp8QF5n3o5wzgprvLDL1NLSFOlo10J65Ozwj1fhO
	rc8T9+SMqJjGi/ndBy/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqN3-0006IG-6A; Mon, 02 Dec 2019 18:24:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKy-0004HU-H1; Mon, 02 Dec 2019 18:22:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5163FAEF3;
 Mon,  2 Dec 2019 18:22:17 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 09/14] arm64: dts: realtek: rtd16xx: Add CRT syscon node
Date: Mon,  2 Dec 2019 19:21:59 +0100
Message-Id: <20191202182205.14629-10-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102220_723236_1D0B91E7 
X-CRM114-Status: UNSURE (   8.32  )
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
 James Tai <james.tai@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UHJlcGFyZSBhIENSVCBzeXNjb24gbWZkIG5vZGUuCgpDYzogSmFtZXMgVGFpIDxqYW1lcy50YWlA
cmVhbHRlay5jb20+ClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3Vz
ZS5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpIHwgOSAr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaQppbmRleCA4ZjhmMmIzMjhjZDEuLjc3NmVmYzEwYmFi
MiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDE2eHguZHRzaQor
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpCkBAIC0xMTgsNiAr
MTE4LDE1IEBACiAJCQkjc2l6ZS1jZWxscyA9IDwxPjsKIAkJCXJhbmdlcyA9IDwweDAgMHg5ODAw
MDAwMCAweDIwMDAwMD47CiAKKwkJCWNydDogc3lzY29uQDAgeworCQkJCWNvbXBhdGlibGUgPSAi
c3lzY29uIiwgInNpbXBsZS1tZmQiOworCQkJCXJlZyA9IDwweDAgMHgxMDAwPjsKKwkJCQlyZWct
aW8td2lkdGggPSA8ND47CisJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkJI3NpemUtY2Vs
bHMgPSA8MT47CisJCQkJcmFuZ2VzID0gPDB4MCAweDAgMHgxMDAwPjsKKwkJCX07CisKIAkJCWlz
bzogc3lzY29uQDcwMDAgewogCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBsZS1tZmQi
OwogCQkJCXJlZyA9IDwweDcwMDAgMHgxMDAwPjsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
