Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E58C10E8D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:30:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHuNmjbNJ7bFKE9QhorS+gjCn9mFSycoAfJK/S9E81M=; b=DdKVk2e17CElNZ
	RQDVzlfLiNQ17+TDDRZKNRKwxN+jcFS/r7iCr/nAayu7AzpgkNe3evKvPNzQcpRenFt1yw8qAcLYm
	hXNCrDb+YD73PnSQdy4cLNBTjyYCiS1MsCLVxxpAAzZnM4UWGvT1scrRbomziJs637TqZL43WO0YR
	ouzn//eLf796kDA8lGwoo2qB2LMBXfixcO1jG9GFl2UZwIrl47uDeHGNhFaG1KjwOXDfNzvxLWWHw
	q05UXr/81eTNyKUdpQI2alefe9Y1AEGt3/xyFdzEnXX8JG/LTufoPW7DiHWjwvlyoyGeR1hSvy0KS
	oJhzy8Cdl1+KPEaZ4d/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiy6-0005gP-H6; Mon, 02 Dec 2019 10:30:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibixE-0005BC-SJ; Mon, 02 Dec 2019 10:29:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 925BEB297;
 Mon,  2 Dec 2019 10:29:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 2/9] arm64: dts: realtek: rtd129x: Use reserved-memory for
 RPC regions
Date: Mon,  2 Dec 2019 11:29:03 +0100
Message-Id: <20191202102910.26916-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202102910.26916-1-afaerber@suse.de>
References: <20191202102910.26916-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_022921_064337_55152A94 
X-CRM114-Status: UNSURE (   9.57  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TW92ZSAvcmVzZXJ2ZWQtbWVtb3J5IG5vZGUgZnJvbSBSVEQxMjk1IHRvIFJURDEyOXggRFQuCkNv
bnZlcnQgUlBDIC9tZW1yZXNlcnZlL3MgaW50byAvcmVzZXJ2ZWQtbWVtb3J5IG5vZGVzLgoKRml4
ZXM6IDcyYTc3ODZjMGEwZCAoIkFSTTY0OiBkdHM6IEFkZCBSZWFsdGVrIFJURDEyOTUgYW5kIFpp
ZG9vIFg5UyIpCkZpeGVzOiBmOGIzNDM2ZGFkNWMgKCJhcm02NDogZHRzOiByZWFsdGVrOiBGYWN0
b3Igb3V0IGNvbW1vbiBSVEQxMjl4IHBhcnRzIikKU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6Ry
YmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHYxIC0+IHYyOiBVbmNoYW5nZWQKICogQWRkZWQg
Rml4ZXMgaGVhZGVycwogCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNp
IHwgMTMgKy0tLS0tLS0tLS0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXgu
ZHRzaSB8IDIzICsrKysrKysrKysrKysrKysrKysrLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDIxIGlu
c2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsv
cnRkMTI5NS5kdHNpCmluZGV4IDM0ZjZjYzZmMTZmZS4uMTQwMmFiZTgwZWExIDEwMDY0NAotLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpCisrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kKQEAgLTIsNyArMiw3IEBACiAvKgogICog
UmVhbHRlayBSVEQxMjk1IFNvQwogICoKLSAqIENvcHlyaWdodCAoYykgMjAxNi0yMDE3IEFuZHJl
YXMgRsOkcmJlcgorICogQ29weXJpZ2h0IChjKSAyMDE2LTIwMTkgQW5kcmVhcyBGw6RyYmVyCiAg
Ki8KIAogI2luY2x1ZGUgInJ0ZDEyOXguZHRzaSIKQEAgLTQ3LDE3ICs0Nyw2IEBACiAJCX07CiAJ
fTsKIAotCXJlc2VydmVkLW1lbW9yeSB7Ci0JCSNhZGRyZXNzLWNlbGxzID0gPDE+OwotCQkjc2l6
ZS1jZWxscyA9IDwxPjsKLQkJcmFuZ2VzOwotCi0JCXRlZUAxMDEwMDAwMCB7Ci0JCQlyZWcgPSA8
MHgxMDEwMDAwMCAweGYwMDAwMD47Ci0JCQluby1tYXA7Ci0JCX07Ci0JfTsKLQogCXRpbWVyIHsK
IAkJY29tcGF0aWJsZSA9ICJhcm0sYXJtdjgtdGltZXIiOwogCQlpbnRlcnJ1cHRzID0gPEdJQ19Q
UEkgMTMKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpCmluZGV4IDQ0MzMx
MTQ0NzZmNS4uOGQ4MGNjYTk0NWJjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jl
YWx0ZWsvcnRkMTI5eC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
Mjl4LmR0c2kKQEAgLTIsMTQgKzIsMTIgQEAKIC8qCiAgKiBSZWFsdGVrIFJURDEyOTMvUlREMTI5
NS9SVEQxMjk2IFNvQwogICoKLSAqIENvcHlyaWdodCAoYykgMjAxNi0yMDE3IEFuZHJlYXMgRsOk
cmJlcgorICogQ29weXJpZ2h0IChjKSAyMDE2LTIwMTkgQW5kcmVhcyBGw6RyYmVyCiAgKi8KIAog
L21lbXJlc2VydmUvCTB4MDAwMDAwMDAwMDAwMDAwMCAweDAwMDAwMDAwMDAwMzAwMDA7Ci0vbWVt
cmVzZXJ2ZS8JMHgwMDAwMDAwMDAwMDFmMDAwIDB4MDAwMDAwMDAwMDAwMTAwMDsKIC9tZW1yZXNl
cnZlLwkweDAwMDAwMDAwMDAwMzAwMDAgMHgwMDAwMDAwMDAwMGQwMDAwOwogL21lbXJlc2VydmUv
CTB4MDAwMDAwMDAwMWIwMDAwMCAweDAwMDAwMDAwMDA0YmUwMDA7Ci0vbWVtcmVzZXJ2ZS8JMHgw
MDAwMDAwMDAxZmZlMDAwIDB4MDAwMDAwMDAwMDAwNDAwMDsKIAogI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9yZXNldC9yZWFsdGVrLHJ0ZDEyOTUuaD4KQEAgLTE5LDYgKzE3LDI1IEBACiAJI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47CiAJI3NpemUtY2VsbHMgPSA8MT47CiAKKwlyZXNlcnZlZC1tZW1vcnkgewor
CQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MT47CisJCXJhbmdlczsK
KworCQlycGNfY29tbTogcnBjQDFmMDAwIHsKKwkJCXJlZyA9IDwweDFmMDAwIDB4MTAwMD47CisJ
CX07CisKKwkJcnBjX3JpbmdidWY6IHJwY0AxZmZlMDAwIHsKKwkJCXJlZyA9IDwweDFmZmUwMDAg
MHg0MDAwPjsKKwkJfTsKKworCQl0ZWU6IHRlZUAxMDEwMDAwMCB7CisJCQlyZWcgPSA8MHgxMDEw
MDAwMCAweGYwMDAwMD47CisJCQluby1tYXA7CisJCX07CisJfTsKKwogCWFybV9wbXU6IGFybS1w
bXUgewogCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTUzLXBtdSI7CiAJCWludGVycnVwdHMg
PSA8R0lDX1NQSSA0OCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKLS0gCjIuMTYuNAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
