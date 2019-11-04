Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD4EED71D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:42:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8t47cRDZHXM/9gYTy3ufCxESjfxnrky7OEyN70TI20=; b=EN9hJjRKua50y0
	Ze5O1EnwS7n9oFjtYxrv2QPXbaK+TIf8hL+WwMNWj0dGDWlY6ut9HUtlY5QuHU0ZAUHNyW5OVnbJW
	jzm4jdBfpYQws0Iq7rzgnolgy5DsDM9pHYx6syGGaMGD7olHneQsOJ5m/bhOmjEgF1v2BAS7l7NCL
	4PmLtGw2MLUA+T1fxeGadQyfRnx9m3nPfhPFH58ENegNdWTfEtUhQhNyJuVMfrDfACTveW8PTifJU
	4ldYuuW/UAKXUFCFW0gtLo9rhwPJFpKLX/bpiEgNTn1C6YkLhpgrUcLi7V/BVzDA50HEUjxFwnUcY
	1VlFiTtuyDfEMIjV+24Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRNt-00058Z-Us; Mon, 04 Nov 2019 01:42:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRM8-0003JI-87; Mon, 04 Nov 2019 01:40:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 56B4BB22E;
 Mon,  4 Nov 2019 01:40:27 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 5/7] ARM: dts: rtd1195: Add Mali node
Date: Mon,  4 Nov 2019 02:39:30 +0100
Message-Id: <20191104013932.22505-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191104013932.22505-1-afaerber@suse.de>
References: <20191104013932.22505-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_174032_493033_B52A4204 
X-CRM114-Status: GOOD (  10.77  )
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

QWRkIGEgRFQgbm9kZSBmb3IgdGhlIE1hbGkgR1BVLgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBG
w6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUu
ZHRzaSB8IDE5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIGIvYXJj
aC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCmluZGV4IDc3NGY5NWQ1NDRhMy4uYWU4ODQzNzgy
Y2ZhIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKKysrIGIvYXJj
aC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCkBAIC0yOTIsNiArMjkyLDI1IEBACiAJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCisJCS8qIFRPRE8gMHgxODAzMDAwMCAweDEwMDAwIG9y
IDB4MTgwMDMwMDAgMHgxMDAwPyAqLworCQltYWxpOiBncHVAMTgwMzAwMDAgeworCQkJY29tcGF0
aWJsZSA9ICJyZWFsdGVrLHJ0ZDExOTUtbWFsaSIsICJhcm0sbWFsaS00MDAiOworCQkJcmVnID0g
PDB4MTgwMzAwMDAgMHgxMDAwMD47CisJCQkvKiBUT0RPIHdoaWNoIGJ1cyBjbGsgdG8gcGFzcz8g
Ki8KKwkJCWNsb2NrcyA9IDwmY2xrYyBSVEQxMTk1X0NMS19FTl9HUFU+LCA8Jm9zYzI3TT47CisJ
CQljbG9jay1uYW1lcyA9ICJjb3JlIiwgImJ1cyI7CisJCQlyZXNldHMgPSA8JnJlc2V0MSBSVEQx
MTk1X1JTVE5fR1BVPjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyNCBJUlFfVFlQRV9MRVZF
TF9ISUdIPiwKKwkJCQkgICAgIDxHSUNfU1BJIDI1IElSUV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJ
CSAgICAgPEdJQ19TUEkgMjYgSVJRX1RZUEVfTEVWRUxfSElHSD4sCisJCQkJICAgICA8R0lDX1NQ
SSAyNyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKKwkJCQkgICAgIDxHSUNfU1BJIDI4IElSUV9UWVBF
X0xFVkVMX0hJR0g+LAorCQkJCSAgICAgPEdJQ19TUEkgMjkgSVJRX1RZUEVfTEVWRUxfSElHSD47
CisJCQlpbnRlcnJ1cHQtbmFtZXMgPSAiZ3AiLCAgImdwbW11IiwKKwkJCQkJICAicHAwIiwgInBw
bW11MCIsCisJCQkJCSAgInBwMSIsICJwcG1tdTEiOworCQl9OworCiAJCWdpYzogaW50ZXJydXB0
LWNvbnRyb2xsZXJAZmYwMTEwMDAgewogCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE3LWdp
YyI7CiAJCQlyZWcgPSA8MHhmZjAxMTAwMCAweDEwMDA+LAotLSAKMi4xNi40CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
