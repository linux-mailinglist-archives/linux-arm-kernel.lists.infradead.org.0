Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C2210807D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 21:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynKqvrVQ5OIvOh056lcSZc6qIdm5RXgRGXa8DEpgoH4=; b=UfExgMKLbN4qr7
	LL3JnxUHLJXPgCckiSLZzJIwQmGN3Ps6fU8LCU74FJUutaFWqIxmRYj4yjvysJjXLz3OmKU5bljXW
	1Ccgdc0yiL6JNiuwTCUIlPwGiCZYCdlAftM3xUOtMdGpoIzxsGGJBNfi31LTSYanXJ01kGHo636Hl
	PA+wPoEacnd3jCp+y/2vXto9l77rU18bCjtxfbHIS1zuBd9P3qEf5KwGdBPv1IMZjzsDHTPmh9fjx
	CGxq0FkifphylJOBIt/f3aEHFvFgfDIHGQ76XuXFAmGtbpv21Sqt51/jgfw2kFqAI2icBKlDY9QuJ
	c+5raGQqTj6abzEDSXHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYcC9-0005pW-P2; Sat, 23 Nov 2019 20:39:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYcAY-0004YO-Rk; Sat, 23 Nov 2019 20:38:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2E5C9B135;
 Sat, 23 Nov 2019 20:38:11 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 5/8] ARM: dts: rtd1195: Introduce r-bus
Date: Sat, 23 Nov 2019 21:37:56 +0100
Message-Id: <20191123203759.20708-6-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191123203759.20708-1-afaerber@suse.de>
References: <20191123203759.20708-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_123815_052771_77DE2A27 
X-CRM114-Status: UNSURE (   8.47  )
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

TW9kZWwgUmVhbHRlaydzIHJlZ2lzdGVyIGJ1cyBpbiBEVC4KClNpZ25lZC1vZmYtYnk6IEFuZHJl
YXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiB2MyAtPiB2NDogVW5jaGFuZ2VkCiAK
IHYzOiBmcm9tIFJURDEzOTUgdjEKICogRml4ZWQgci1idXMgc2l6ZSBmcm9tIDB4MTAwMDAwIHRv
IDB4NzAwMDAgaW4gcmVnIGFuZCByYW5nZXMgKEphbWVzKQogKiBSZW5hbWVkIGJ1cyBub2RlIGZy
b20gci1idXMgdG8gYnVzIChSb2IpCiAKIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSB8
IDUyICsrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUu
ZHRzaQppbmRleCAwZDdjMmJlNzUwZjYuLmE4ZjdiOWNhYWNiYSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUu
ZHRzaQpAQCAtOTMsMjggKzkzLDM2IEBACiAJCQkgPDB4MTgxMDAwMDAgMHgxODEwMDAwMCAweDAx
MDAwMDAwPiwKIAkJCSA8MHg4MDAwMDAwMCAweDgwMDAwMDAwIDB4ODAwMDAwMDA+OwogCi0JCXdk
dDogd2F0Y2hkb2dAMTgwMDc2ODAgewotCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUt
d2F0Y2hkb2ciOwotCQkJcmVnID0gPDB4MTgwMDc2ODAgMHgxMDA+OwotCQkJY2xvY2tzID0gPCZv
c2MyN00+OwotCQl9OwotCi0JCXVhcnQwOiBzZXJpYWxAMTgwMDc4MDAgewotCQkJY29tcGF0aWJs
ZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKLQkJCXJlZyA9IDwweDE4MDA3ODAwIDB4NDAwPjsKLQkJ
CXJlZy1zaGlmdCA9IDwyPjsKLQkJCXJlZy1pby13aWR0aCA9IDw0PjsKLQkJCWNsb2NrLWZyZXF1
ZW5jeSA9IDwyNzAwMDAwMD47Ci0JCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwotCQl9OwotCi0JCXVh
cnQxOiBzZXJpYWxAMTgwMWIyMDAgewotCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0
IjsKLQkJCXJlZyA9IDwweDE4MDFiMjAwIDB4MTAwPjsKLQkJCXJlZy1zaGlmdCA9IDwyPjsKLQkJ
CXJlZy1pby13aWR0aCA9IDw0PjsKLQkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47Ci0J
CQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQlyYnVzOiBidXNAMTgwMDAwMDAgeworCQkJY29tcGF0
aWJsZSA9ICJzaW1wbGUtYnVzIjsKKwkJCXJlZyA9IDwweDE4MDAwMDAwIDB4NzAwMDA+OworCQkJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCQkjc2l6ZS1jZWxscyA9IDwxPjsKKwkJCXJhbmdlcyA9
IDwweDAgMHgxODAwMDAwMCAweDcwMDAwPjsKKworCQkJd2R0OiB3YXRjaGRvZ0A3NjgwIHsKKwkJ
CQljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyI7CisJCQkJcmVnID0gPDB4
NzY4MCAweDEwMD47CisJCQkJY2xvY2tzID0gPCZvc2MyN00+OworCQkJfTsKKworCQkJdWFydDA6
IHNlcmlhbEA3ODAwIHsKKwkJCQljb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQiOworCQkJ
CXJlZyA9IDwweDc4MDAgMHg0MDA+OworCQkJCXJlZy1zaGlmdCA9IDwyPjsKKwkJCQlyZWctaW8t
d2lkdGggPSA8ND47CisJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKKwkJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOworCQkJfTsKKworCQkJdWFydDE6IHNlcmlhbEAxYjIwMCB7CisJCQkJ
Y29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKKwkJCQlyZWcgPSA8MHgxYjIwMCAweDEw
MD47CisJCQkJcmVnLXNoaWZ0ID0gPDI+OworCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKKwkJCQlj
bG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+OworCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJ
CQl9OwogCQl9OwogCiAJCWdpYzogaW50ZXJydXB0LWNvbnRyb2xsZXJAZmYwMTEwMDAgewotLSAK
Mi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
