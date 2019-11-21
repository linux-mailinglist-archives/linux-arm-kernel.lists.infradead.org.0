Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FF11049E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:04:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AxlqQQH+/Jzk1WgxhRzXPswBKaZP2JCjNqeCQFrKTg=; b=ApSjaHuqFhdJH/
	Z9QRqUNFmS5nHf6H6tw3ybgw8+jBTjkKkWcncccF5AFv0YhlZt2UrWsUIM/dY8aSF//vWBQMVM6lw
	43QEe6xLJnJ1yU69G62SJcHxa5terkuSD4491NhiGKjjJA+9P24fA42MW3sO6o7I1EfNwTM6NUoye
	Xp1jkSyn5ocTzBF4cKXYJqF9sgaLEo76Wb+oafCbhmWbTHhtiH8jzO+PxQn9Pglc51/cFVi0Ut91o
	kb6dJqoGQzRmu0JIOS+aKFhZfEbJwntKqcUQFNDRVGZFWHGOUuKNrdNKZ4HMUddZzNBvNWaOvi8GG
	puDRCb9Kwm6OACxtUW4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXedu-00060r-1z; Thu, 21 Nov 2019 05:04:34 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXebp-00046S-3J; Thu, 21 Nov 2019 05:02:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7B1F3B052;
 Thu, 21 Nov 2019 05:02:20 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v5 6/9] ARM: dts: rtd1195: Add irq muxes and UART interrupts
Date: Thu, 21 Nov 2019 06:02:05 +0100
Message-Id: <20191121050208.11324-7-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191121050208.11324-1-afaerber@suse.de>
References: <20191121050208.11324-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_210225_314323_2AE6E0B1 
X-CRM114-Status: UNSURE (   9.74  )
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

QWRkIGlzbyBhbmQgbWlzYyBJUlEgbXV4IERUIG5vZGVzIGZvciB0aGUgUmVhbHRlayBSVEQxMTk1
IFNvQy4KClVwZGF0ZSB0aGUgVUFSVCBEVCBub2RlcyB3aXRoIGludGVycnVwdHMgZnJvbSB0aG9z
ZSBtdXhlcywKc28gdGhhdCBVQVJUMCBjYW4gYmUgdXNlZCB3aXRob3V0IGVhcmx5Y29uLgoKU2ln
bmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHY0IC0+
IHY1OiBVbmNoYW5nZWQKIAogdjQ6IE5ldwogCiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0
c2kgfCAyMCArKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgYi9hcmNo
L2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKaW5kZXggZGIxMTcxYzVhZGZhLi5lZTc3NjFhZTRl
ZTAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaQorKysgYi9hcmNo
L2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKQEAgLTExOCw2ICsxMTgsMTQgQEAKIAkJCQkjcmVz
ZXQtY2VsbHMgPSA8MT47CiAJCQl9OwogCisJCQlpc29faXJxX211eDogaW50ZXJydXB0LWNvbnRy
b2xsZXJANzAwMCB7CisJCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDExOTUtaXNvLWlycS1t
dXgiOworCQkJCXJlZyA9IDwweDcwMDAgMHgxMDA+OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NQ
SSA0MSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQlpbnRlcnJ1cHQtY29udHJvbGxlcjsKKwkJ
CQkjaW50ZXJydXB0LWNlbGxzID0gPDE+OworCQkJfTsKKwogCQkJaXNvX3Jlc2V0OiByZXNldC1j
b250cm9sbGVyQDcwODggewogCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOwog
CQkJCXJlZyA9IDwweDcwODggMHg0PjsKQEAgLTEzNyw2ICsxNDUsOCBAQAogCQkJCXJlZy1pby13
aWR0aCA9IDw0PjsKIAkJCQlyZXNldHMgPSA8Jmlzb19yZXNldCBSVEQxMTk1X0lTT19SU1ROX1VS
MD47CiAJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKKwkJCQlpbnRlcnJ1cHQtcGFy
ZW50ID0gPCZpc29faXJxX211eD47CisJCQkJaW50ZXJydXB0cyA9IDwyPjsKIAkJCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOwogCQkJfTsKIApAQCAtMTQ1LDYgKzE1NSwxNCBAQAogCQkJCXJlZyA9IDww
eDFhMjAwIDB4OD47CiAJCQl9OwogCisJCQltaXNjX2lycV9tdXg6IGludGVycnVwdC1jb250cm9s
bGVyQDFiMDAwIHsKKwkJCQljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTE5NS1taXNjLWlycS1t
dXgiOworCQkJCXJlZyA9IDwweDFiMDAwIDB4MTAwPjsKKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgNDAgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQkJaW50ZXJydXB0LWNvbnRyb2xsZXI7CisJ
CQkJI2ludGVycnVwdC1jZWxscyA9IDwxPjsKKwkJCX07CisKIAkJCXVhcnQxOiBzZXJpYWxAMWIy
MDAgewogCQkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7CiAJCQkJcmVnID0gPDB4
MWIyMDAgMHgxMDA+OwpAQCAtMTUyLDYgKzE3MCw4IEBACiAJCQkJcmVnLWlvLXdpZHRoID0gPDQ+
OwogCQkJCXJlc2V0cyA9IDwmcmVzZXQyIFJURDExOTVfUlNUTl9VUjE+OwogCQkJCWNsb2NrLWZy
ZXF1ZW5jeSA9IDwyNzAwMDAwMD47CisJCQkJaW50ZXJydXB0LXBhcmVudCA9IDwmbWlzY19pcnFf
bXV4PjsKKwkJCQlpbnRlcnJ1cHRzID0gPDM+OwogCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJ
CQl9OwogCQl9OwotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
