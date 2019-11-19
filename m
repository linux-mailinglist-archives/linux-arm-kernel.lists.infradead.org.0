Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30061101147
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 03:21:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A2dDn2JVVXWiwuHydDlXYvFBHyDB1aoRazM2Bvh4aY=; b=s835mzgwGKAsP9
	BJVJBowG+jIsz31HiuOkauaFklYvzkLS9GzHLxdQCDQlJmcyD0ZTsVhg/LS/EV0Cb91XuSnm3y8Sj
	rEfrT/X7YYuXa8BkNPwV4eejFRfC9RqFJvXR5oiUatEvWUltNIPaWHYRFm8QX2nnygtdUYvmYK/IW
	2bIsJc2A1Dab0RCd5sW7LKVZywi17Bsj7biUob+AtJP9Cv05a+vLP5jUkrAlBKZsMYYOeqJvJWcXI
	7xG6UguZN614J5yyV0IvuRj/4dcGOottTKId+FMuRd7/K5pFDlPuSF6Wco+u9R5R/QdgI4eG5HlB3
	q0Dx2U/FzueDGQKOzCyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWt8a-0000PF-Is; Tue, 19 Nov 2019 02:21:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWt76-0006UX-3o; Tue, 19 Nov 2019 02:19:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 359A4B330;
 Tue, 19 Nov 2019 02:19:24 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 5/8] ARM: dts: rtd1195: Add irq muxes and UART interrupts
Date: Tue, 19 Nov 2019 03:19:14 +0100
Message-Id: <20191119021917.15917-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191119021917.15917-1-afaerber@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_181932_314020_4E6979CC 
X-CRM114-Status: UNSURE (   9.37  )
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
bmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHY0OiBO
ZXcKIAogYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIHwgMjAgKysrKysrKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5k
dHNpCmluZGV4IGRiMTE3MWM1YWRmYS4uZWU3NzYxYWU0ZWUwIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9ib290L2R0cy9ydGQxMTk1LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5k
dHNpCkBAIC0xMTgsNiArMTE4LDE0IEBACiAJCQkJI3Jlc2V0LWNlbGxzID0gPDE+OwogCQkJfTsK
IAorCQkJaXNvX2lycV9tdXg6IGludGVycnVwdC1jb250cm9sbGVyQDcwMDAgeworCQkJCWNvbXBh
dGlibGUgPSAicmVhbHRlayxydGQxMTk1LWlzby1pcnEtbXV4IjsKKwkJCQlyZWcgPSA8MHg3MDAw
IDB4MTAwPjsKKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDEgSVJRX1RZUEVfTEVWRUxfSElH
SD47CisJCQkJaW50ZXJydXB0LWNvbnRyb2xsZXI7CisJCQkJI2ludGVycnVwdC1jZWxscyA9IDwx
PjsKKwkJCX07CisKIAkJCWlzb19yZXNldDogcmVzZXQtY29udHJvbGxlckA3MDg4IHsKIAkJCQlj
b21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKIAkJCQlyZWcgPSA8MHg3MDg4IDB4ND47
CkBAIC0xMzcsNiArMTQ1LDggQEAKIAkJCQlyZWctaW8td2lkdGggPSA8ND47CiAJCQkJcmVzZXRz
ID0gPCZpc29fcmVzZXQgUlREMTE5NV9JU09fUlNUTl9VUjA+OwogCQkJCWNsb2NrLWZyZXF1ZW5j
eSA9IDwyNzAwMDAwMD47CisJCQkJaW50ZXJydXB0LXBhcmVudCA9IDwmaXNvX2lycV9tdXg+Owor
CQkJCWludGVycnVwdHMgPSA8Mj47CiAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJCX07CiAK
QEAgLTE0NSw2ICsxNTUsMTQgQEAKIAkJCQlyZWcgPSA8MHgxYTIwMCAweDg+OwogCQkJfTsKIAor
CQkJbWlzY19pcnFfbXV4OiBpbnRlcnJ1cHQtY29udHJvbGxlckAxYjAwMCB7CisJCQkJY29tcGF0
aWJsZSA9ICJyZWFsdGVrLHJ0ZDExOTUtbWlzYy1pcnEtbXV4IjsKKwkJCQlyZWcgPSA8MHgxYjAw
MCAweDEwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQwIElSUV9UWVBFX0xFVkVMX0hJ
R0g+OworCQkJCWludGVycnVwdC1jb250cm9sbGVyOworCQkJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8
MT47CisJCQl9OworCiAJCQl1YXJ0MTogc2VyaWFsQDFiMjAwIHsKIAkJCQljb21wYXRpYmxlID0g
InNucHMsZHctYXBiLXVhcnQiOwogCQkJCXJlZyA9IDwweDFiMjAwIDB4MTAwPjsKQEAgLTE1Miw2
ICsxNzAsOCBAQAogCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKIAkJCQlyZXNldHMgPSA8JnJlc2V0
MiBSVEQxMTk1X1JTVE5fVVIxPjsKIAkJCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+Owor
CQkJCWludGVycnVwdC1wYXJlbnQgPSA8Jm1pc2NfaXJxX211eD47CisJCQkJaW50ZXJydXB0cyA9
IDwzPjsKIAkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQkJfTsKIAkJfTsKLS0gCjIuMTYuNAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
