Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41601FF862
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 08:22:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ot2VLdUIzBOitEup59m0mvbPN87efmvJswgZ7s6ZVsE=; b=nOWh3m6yljYfbV
	nGBD6JWZTDFAXmrRPg8yLYW7c1DS18zfYmXR2smtjgYlgc+yVzn0uJWUsQOjS1qdDB0c2Qo4Sn3HG
	qxh6o3wu+8741hVbEaN4rnN+TfKYslMKYAenb9t8kiqqwO5IhB6Lh2nWU0K58i1jpPqioNhsNsYne
	FIxSuANfwSnheKPPOaRGQWLbyZNQnlvtwIs8whlrEtgzHp5sQYAhZssid8zo99ulsxX1lktJypJmR
	rT6XBCkcWkx+u1GgidPT/2MMwKqTAnKyyTm+OlaiEqDGc8aYA1p31b3zp7ovUy5BKPzihFqH3V6fC
	Ur/sBGuSUoqMJMnCb6pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWEtC-0000OB-H8; Sun, 17 Nov 2019 07:22:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWEs7-00083W-6E; Sun, 17 Nov 2019 07:21:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 71337B23E;
 Sun, 17 Nov 2019 07:21:20 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 3/8] ARM: dts: Prepare Realtek RTD1195 and MeLE X1000
Date: Sun, 17 Nov 2019 08:21:04 +0100
Message-Id: <20191117072109.20402-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191117072109.20402-1-afaerber@suse.de>
References: <20191117072109.20402-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_232123_526686_D2BE5388 
X-CRM114-Status: GOOD (  12.04  )
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

QWRkIERldmljZSBUcmVlcyBmb3IgUmVhbHRlayBSVEQxMTk1IFNvQyBhbmQgTWVMRSBYMTAwMCBU
ViBib3guCgpSZXVzZSB0aGUgZXhpc3RpbmcgUlREMTI5NSB3YXRjaGRvZyBjb21wYXRpYmxlIGZv
ciBub3cuCgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KW0FGOiBG
aXhlZCByLWJ1cyBzaXplLCBmaXhlZCBHSUMgQ1BVIG1hc2ssIHVwZGF0ZWQgbWVtcmVzZXJ2ZV0K
U2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHYy
IC0+IHYzOgogKiBGaXhlZCByLWJ1cyBzaXplIGluIC9zb2MgcmFuZ2VzIGZyb20gMHgxMDAwMDAw
IHRvIDB4NzAwMDAgKEphbWVzKQogKiBBZGp1c3RlZCAvbWVtcmVzZXJ2ZS8gdG8gY2xvc2UgZ2Fw
IGZyb20gMHhhODAwIHRvIDB4YzAwMCBmb3IgZnVsbCAweDEwMDAwMAogKiBDaGFuZ2VkIGFyY2gg
dGltZXIgZnJvbSBHSUNfQ1BVX01BU0tfUkFXKDB4ZikgdG8gR0lDX0NQVV9NQVNLX1NJTVBMRSgy
KQogICBzcXVhc2hlZCBmcm9tIFJURDEzOTUgdjEgc2VyaWVzCiAKIHYxIC0+IHYyOgogKiBEcm9w
cGVkIC9tZW1yZXNlcnZlLyBhbmQgcmVzZXJ2ZWQtbWVtb3J5IG5vZGVzIGZvciBwZXJpcGhlcmFs
cyBhbmQgTk9SIChSb2IpCiAqIENhcnZlZCB0aGVtIG91dCBmcm9tIG1lbW9yeSByZWcgaW5zdGVh
ZCAoUm9iKQogKiBDb252ZXJ0ZWQgc29tZSAvbWVtcmVzZXJ2ZS9zIHRvIHJlc2VydmVkLW1lbW9y
eSBub2RlcwogCiBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAgICAgICAgICAgIHwgICAy
ICsKIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUtbWVsZS14MTAwMC5kdHMgfCAgMzEgKysrKysr
KysKIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSAgICAgICAgICAgfCAxMjcgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxNjAgaW5zZXJ0aW9u
cygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUtbWVsZS14
MTAwMC5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0
c2kKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSBiL2FyY2gvYXJtL2Jv
b3QvZHRzL01ha2VmaWxlCmluZGV4IDA4MDExZGM4YzdhNi4uNDg1M2ExM2M4Y2YyIDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZQorKysgYi9hcmNoL2FybS9ib290L2R0cy9N
YWtlZmlsZQpAQCAtODY1LDYgKzg2NSw4IEBAIGR0Yi0kKENPTkZJR19BUkNIX1FDT00pICs9IFwK
IGR0Yi0kKENPTkZJR19BUkNIX1JEQSkgKz0gXAogCXJkYTg4MTBwbC1vcmFuZ2VwaS0yZy1pb3Qu
ZHRiIFwKIAlyZGE4ODEwcGwtb3JhbmdlcGktaTk2LmR0YgorZHRiLSQoQ09ORklHX0FSQ0hfUkVB
TFRFSykgKz0gXAorCXJ0ZDExOTUtbWVsZS14MTAwMC5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JF
QUxWSUVXKSArPSBcCiAJYXJtLXJlYWx2aWV3LXBiMTE3Ni5kdGIgXAogCWFybS1yZWFsdmlldy1w
YjExbXAuZHRiIFwKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUtbWVsZS14
MTAwMC5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LW1lbGUteDEwMDAuZHRzCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uODM0YjQzMGU2MjUwCi0tLSAvZGV2
L251bGwKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS1tZWxlLXgxMDAwLmR0cwpAQCAt
MCwwICsxLDMxIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0
ZXIgT1IgQlNELTItQ2xhdXNlKQorLyoKKyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDE5IEFuZHJl
YXMgRsOkcmJlcgorICovCisKKy9kdHMtdjEvOworCisjaW5jbHVkZSAicnRkMTE5NS5kdHNpIgor
CisvIHsKKwljb21wYXRpYmxlID0gIm1lbGUseDEwMDAiLCAicmVhbHRlayxydGQxMTk1IjsKKwlt
b2RlbCA9ICJNZUxFIFgxMDAwIjsKKworCWFsaWFzZXMgeworCQlzZXJpYWwwID0gJnVhcnQwOwor
CX07CisKKwljaG9zZW4geworCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwwOjExNTIwMG44IjsKKwl9
OworCisJbWVtb3J5QDAgeworCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOworCQlyZWcgPSA8MHgw
IDB4MTgwMDAwMDA+LAorCQkgICAgICA8MHgxOTEwMDAwMCAweDI2ZjAwMDAwPjsKKwl9OworfTsK
KworJnVhcnQwIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
Ym9vdC9kdHMvcnRkMTE5NS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNGUzODY2ZmU4ZjZlCi0tLSAv
ZGV2L251bGwKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCkBAIC0wLDAgKzEs
MTI3IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1Ig
QlNELTItQ2xhdXNlKQorLyoKKyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDE5IEFuZHJlYXMgRsOk
cmJlcgorICovCisKKy9tZW1yZXNlcnZlLyAweDAwMDAwMDAwIDB4MDAwMGE4MDA7IC8qIGJvb3Qg
Y29kZSAqLworL21lbXJlc2VydmUvIDB4MDAwMGE4MDAgMHgwMDBmNTgwMDsKKy9tZW1yZXNlcnZl
LyAweDE3ZmZmMDAwIDB4MDAwMDEwMDA7CisKKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1
cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+CisKKy8geworCWNvbXBhdGlibGUgPSAicmVhbHRlayxy
dGQxMTk1IjsKKwlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+OworCSNhZGRyZXNzLWNlbGxzID0g
PDE+OworCSNzaXplLWNlbGxzID0gPDE+OworCisJY3B1cyB7CisJCSNhZGRyZXNzLWNlbGxzID0g
PDE+OworCQkjc2l6ZS1jZWxscyA9IDwwPjsKKworCQljcHUwOiBjcHVAMCB7CisJCQlkZXZpY2Vf
dHlwZSA9ICJjcHUiOworCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE3IjsKKwkJCXJlZyA9
IDwweDA+OworCQkJY2xvY2stZnJlcXVlbmN5ID0gPDEwMDAwMDAwMDA+OworCQl9OworCisJCWNw
dTE6IGNwdUAxIHsKKwkJCWRldmljZV90eXBlID0gImNwdSI7CisJCQljb21wYXRpYmxlID0gImFy
bSxjb3J0ZXgtYTciOworCQkJcmVnID0gPDB4MT47CisJCQljbG9jay1mcmVxdWVuY3kgPSA8MTAw
MDAwMDAwMD47CisJCX07CisJfTsKKworCXJlc2VydmVkLW1lbW9yeSB7CisJCSNhZGRyZXNzLWNl
bGxzID0gPDE+OworCQkjc2l6ZS1jZWxscyA9IDwxPjsKKwkJcmFuZ2VzOworCisJCXJwY19jb21t
OiBycGNAYjAwMCB7CisJCQlyZWcgPSA8MHgwMDAwYjAwMCAweDEwMDA+OworCQl9OworCisJCWF1
ZGlvQDFiMDAwMDAgeworCQkJcmVnID0gPDB4MDFiMDAwMDAgMHg0MDAwMDA+OworCQl9OworCisJ
CXJwY19yaW5nYnVmOiBycGNAMWZmZTAwMCB7CisJCQlyZWcgPSA8MHgwMWZmZTAwMCAweDQwMDA+
OworCQl9OworCisJCXNlY3VyZUAxMDAwMDAwMCB7CisJCQlyZWcgPSA8MHgxMDAwMDAwMCAweDEw
MDAwMD47CisJCQluby1tYXA7CisJCX07CisJfTsKKworCWFybS1wbXUgeworCQljb21wYXRpYmxl
ID0gImFybSxjb3J0ZXgtYTctcG11IjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQ4IElSUV9U
WVBFX0xFVkVMX0hJR0g+LAorCQkJICAgICA8R0lDX1NQSSA0OSBJUlFfVFlQRV9MRVZFTF9ISUdI
PjsKKwkJaW50ZXJydXB0LWFmZmluaXR5ID0gPCZjcHUwPiwgPCZjcHUxPjsKKwl9OworCisJdGlt
ZXIgeworCQljb21wYXRpYmxlID0gImFybSxhcm12Ny10aW1lciI7CisJCWludGVycnVwdHMgPSA8
R0lDX1BQSSAxMworCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoMikgfCBJUlFfVFlQRV9MRVZFTF9M
T1cpPiwKKwkJCSAgICAgPEdJQ19QUEkgMTQKKwkJCShHSUNfQ1BVX01BU0tfU0lNUExFKDIpIHwg
SVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkgICAgIDxHSUNfUFBJIDExCisJCQkoR0lDX0NQVV9N
QVNLX1NJTVBMRSgyKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJICAgICA8R0lDX1BQSSAx
MAorCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoMikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPjsKKwkJ
Y2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAwPjsKKwl9OworCisJb3NjMjdNOiBvc2MgeworCQlj
b21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKKwkJY2xvY2stZnJlcXVlbmN5ID0gPDI3MDAwMDAw
PjsKKwkJI2Nsb2NrLWNlbGxzID0gPDA+OworCQljbG9jay1vdXRwdXQtbmFtZXMgPSAib3NjMjdN
IjsKKwl9OworCisJc29jIHsKKwkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsKKwkJI2FkZHJl
c3MtY2VsbHMgPSA8MT47CisJCSNzaXplLWNlbGxzID0gPDE+OworCQlyYW5nZXMgPSA8MHgxODAw
MDAwMCAweDE4MDAwMDAwIDB4MDAwNzAwMDA+LAorCQkgICAgICAgICA8MHgxODEwMDAwMCAweDE4
MTAwMDAwIDB4MDEwMDAwMDA+LAorCQkgICAgICAgICA8MHg0MDAwMDAwMCAweDQwMDAwMDAwIDB4
YzAwMDAwMDA+OworCisJCXdkdDogd2F0Y2hkb2dAMTgwMDc2ODAgeworCQkJY29tcGF0aWJsZSA9
ICJyZWFsdGVrLHJ0ZDEyOTUtd2F0Y2hkb2ciOworCQkJcmVnID0gPDB4MTgwMDc2ODAgMHgxMDA+
OworCQkJY2xvY2tzID0gPCZvc2MyN00+OworCQl9OworCisJCXVhcnQwOiBzZXJpYWxAMTgwMDc4
MDAgeworCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKKwkJCXJlZyA9IDwweDE4
MDA3ODAwIDB4NDAwPjsKKwkJCXJlZy1zaGlmdCA9IDwyPjsKKwkJCXJlZy1pby13aWR0aCA9IDw0
PjsKKwkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47CisJCQlzdGF0dXMgPSAiZGlzYWJs
ZWQiOworCQl9OworCisJCXVhcnQxOiBzZXJpYWxAMTgwMWIyMDAgeworCQkJY29tcGF0aWJsZSA9
ICJzbnBzLGR3LWFwYi11YXJ0IjsKKwkJCXJlZyA9IDwweDE4MDFiMjAwIDB4MTAwPjsKKwkJCXJl
Zy1zaGlmdCA9IDwyPjsKKwkJCXJlZy1pby13aWR0aCA9IDw0PjsKKwkJCWNsb2NrLWZyZXF1ZW5j
eSA9IDwyNzAwMDAwMD47CisJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQl9OworCisJCWdpYzog
aW50ZXJydXB0LWNvbnRyb2xsZXJAZmYwMTEwMDAgeworCQkJY29tcGF0aWJsZSA9ICJhcm0sY29y
dGV4LWE3LWdpYyI7CisJCQlyZWcgPSA8MHhmZjAxMTAwMCAweDEwMDA+LAorCQkJICAgICAgPDB4
ZmYwMTIwMDAgMHgyMDAwPjsKKwkJCWludGVycnVwdC1jb250cm9sbGVyOworCQkJI2ludGVycnVw
dC1jZWxscyA9IDwzPjsKKwkJfTsKKwl9OworfTsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
