Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CDE10EF3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:23:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68fap0XA2c+21liz0vYR6NGUnaUwxZfEAU5c/KBfBPU=; b=Qugm1JdVS2argY
	5oMkeqieAGYUXZ/8B5buLgdmbjnnLcPE2IF0igMPsR5HlztVKHvwKxDYS1m8s9+EuoPOE5JXGH6LN
	kaxtdX+C/E9OwN+88C68ZvewmtoFATFMDKd8wWY4MuvCurTv6l28rFejYvNKpa+kqqDnaquAtcSL6
	NICwxKIh+FpIgPPLTOT6rYXrA7kFQkWwZ6HUNmxGMa7tfdaTAndUKGCc6fHrkfWq95DMqlOhOx+oz
	IdEwHVcw5Dv9PfYtxD2mL7mvk8O3MDfhRFEG6XFt9dwPUpIoOYPlwRtv2v543Y+C+sQZakQD4xC+O
	I+bY+02Ol2jb71PAdFaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqMN-0005VS-Fk; Mon, 02 Dec 2019 18:23:47 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKw-0004GG-Vt; Mon, 02 Dec 2019 18:22:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D5A72AEE1;
 Mon,  2 Dec 2019 18:22:16 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 08/14] ARM: dts: rtd1195: Add UART resets
Date: Mon,  2 Dec 2019 19:21:58 +0100
Message-Id: <20191202182205.14629-9-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102219_194241_36665CB1 
X-CRM114-Status: UNSURE (   9.73  )
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

QXNzb2NpYXRlIHRoZSBVQVJUIG5vZGVzIHdpdGggdGhlIGNvcnJlc3BvbmRpbmcgcmVzZXQgY29u
dHJvbGxlciBiaXRzLgoKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBz
dXNlLmRlPgotLS0KIHYxOiBGcm9tIFJURDExOTUgdjQgc2VyaWVzCiAKIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3J0ZDExOTUuZHRzaSB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcnRkMTE5NS5kdHNpCmluZGV4IDg4Njg0NWU1MjIwNS4uMDlhY2I5OTA4M2MxIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcnRkMTE5NS5kdHNpCkBAIC04LDYgKzgsNyBAQAogL21lbXJlc2VydmUvIDB4MTdm
ZmYwMDAgMHgwMDAwMTAwMDsKIAogI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250
cm9sbGVyL2FybS1naWMuaD4KKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0
ZDExOTUuaD4KIAogLyB7CiAJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDExOTUiOwpAQCAtMTc5
LDYgKzE4MCw3IEBACiAJCXJlZyA9IDwweDgwMCAweDQwMD47CiAJCXJlZy1zaGlmdCA9IDwyPjsK
IAkJcmVnLWlvLXdpZHRoID0gPDQ+OworCQlyZXNldHMgPSA8Jmlzb19yZXNldCBSVEQxMTk1X0lT
T19SU1ROX1VSMD47CiAJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47CiAJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7CiAJfTsKQEAgLTE5MCw2ICsxOTIsNyBAQAogCQlyZWcgPSA8MHgyMDAgMHgx
MDA+OwogCQlyZWctc2hpZnQgPSA8Mj47CiAJCXJlZy1pby13aWR0aCA9IDw0PjsKKwkJcmVzZXRz
ID0gPCZyZXNldDIgUlREMTE5NV9SU1ROX1VSMT47CiAJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAw
MDAwMD47CiAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJfTsKLS0gCjIuMTYuNAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
