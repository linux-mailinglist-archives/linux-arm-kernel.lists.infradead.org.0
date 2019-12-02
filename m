Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825FD10EF4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KFHkuyDGEzhl3pK5hayyq/JRaj1RijfYw54FZP5JY4=; b=qIpqV8sEvaXXAK
	t/S+6RNV2opgx+LP9Ctu7ZIkM7n2LM+xnGYmtavlP8Q3wD+b7qMRSVit/t8QpRONaFlVi/plRPlxL
	WC5EfMsPLZuSSZjfVx18sS/YlnTPI1rDRY3Em7awzlIwEQL7cOvB2oH3gVqgpPUeFuDoQ9wwbEQQq
	05OxFbQR3zYOViV9cTxTkPuNR8dP4t5XsmVla8t7e++UcMfclJS8r87i3kbHNB1r2WPz3302NYR01
	WBF6TgTF6hksskyeVd4t1M+ochaXtfUm765nd2ZSL3PGHLRWo/L6URILKQjp5n7U72047nCZFQed8
	7gUn7OouygspRkzQomsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqOT-0000WX-RI; Mon, 02 Dec 2019 18:25:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKy-0004Hr-RR; Mon, 02 Dec 2019 18:22:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F1065AF21;
 Mon,  2 Dec 2019 18:22:18 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 13/14] arm64: dts: realtek: rtd16xx: Add SB2 and SCPU Wrapper
 syscon nodes
Date: Mon,  2 Dec 2019 19:22:03 +0100
Message-Id: <20191202182205.14629-14-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102221_099834_8AAA38EC 
X-CRM114-Status: UNSURE (   8.13  )
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

QWRkIHN5c2NvbiBtZmQgbm9kZXMgZm9yIFNCMiBhbmQgU0NQVSBXcmFwcGVyIHRvIFJURDE2eHgg
RFQuCgpDYzogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRlay5jb20+ClNpZ25lZC1vZmYtYnk6
IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpIHwgMTggKysrKysrKysrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVhbHRlay9ydGQxNnh4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRk
MTZ4eC5kdHNpCmluZGV4IDc3NmVmYzEwYmFiMi4uYmM4OGNmNzQ5ZjMzIDEwMDY0NAotLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpCisrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kKQEAgLTEzNiw2ICsxMzYsMTUgQEAKIAkJCQly
YW5nZXMgPSA8MHgwIDB4NzAwMCAweDEwMDA+OwogCQkJfTsKIAorCQkJc2IyOiBzeXNjb25AMWEw
MDAgeworCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBsZS1tZmQiOworCQkJCXJlZyA9
IDwweDFhMDAwIDB4MTAwMD47CisJCQkJcmVnLWlvLXdpZHRoID0gPDQ+OworCQkJCSNhZGRyZXNz
LWNlbGxzID0gPDE+OworCQkJCSNzaXplLWNlbGxzID0gPDE+OworCQkJCXJhbmdlcyA9IDwweDAg
MHgxYTAwMCAweDEwMDA+OworCQkJfTsKKwogCQkJbWlzYzogc3lzY29uQDFiMDAwIHsKIAkJCQlj
b21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKIAkJCQlyZWcgPSA8MHgxYjAwMCAw
eDEwMDA+OwpAQCAtMTQ0LDYgKzE1MywxNSBAQAogCQkJCSNzaXplLWNlbGxzID0gPDE+OwogCQkJ
CXJhbmdlcyA9IDwweDAgMHgxYjAwMCAweDEwMDA+OwogCQkJfTsKKworCQkJc2NwdV93cmFwcGVy
OiBzeXNjb25AMWQwMDAgeworCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBsZS1tZmQi
OworCQkJCXJlZyA9IDwweDFkMDAwIDB4MTAwMD47CisJCQkJcmVnLWlvLXdpZHRoID0gPDQ+Owor
CQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJCSNzaXplLWNlbGxzID0gPDE+OworCQkJCXJh
bmdlcyA9IDwweDAgMHgxZDAwMCAweDEwMDA+OworCQkJfTsKIAkJfTsKIAogCQlnaWM6IGludGVy
cnVwdC1jb250cm9sbGVyQGZmMTAwMDAwIHsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
