Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7623910EF34
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SILI4WaFnfc5rE9XqOaq33bOzHfM2gbf+Vqi+b+y3v4=; b=mduT4sv1OmkBP+
	Sbfd//EpXgnR9teLzAe8XOkKtSHjyEx9jnkSr8/oXT2aSjWORxs4v9XMFlfuoIjYZvm447lOtAK4y
	e1nUzlJmt/3US7VIEdJMGO9Rom/ykfwvm83HXK2uLJwU+GQFNdiiLXhJzytB7S9yIWPRDZyB7IQOO
	SdM4p92F7QeIr824mKz9lQnm5aNMqHcnV4LC00ajvzYkYW1TdJfz9tAUGQjPKhq3KYVbpaVFxZn5y
	zElznxOjZVok7jb8IosqPjmrsiVBMj/T4Ed88Swi24nFCtpk0mC0efAAI0RBO+NwIiqVMbZ8pYSKC
	exKF5wrcdQvjfte7aBgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqLe-0004nb-JG; Mon, 02 Dec 2019 18:23:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKt-0004Ep-SH; Mon, 02 Dec 2019 18:22:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 31659AD75;
 Mon,  2 Dec 2019 18:22:14 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 02/14] arm64: dts: realtek: rtd129x: Introduce CRT,
 iso and misc syscon
Date: Mon,  2 Dec 2019 19:21:52 +0100
Message-Id: <20191202182205.14629-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102216_216221_BBED435B 
X-CRM114-Status: UNSURE (   9.38  )
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

R3JvdXAgdGhlIG5vbi1pc28gcmVzZXQgY29udHJvbGxlciBub2RlcyBpbiBhIENSVCBzeXNjb24g
bWZkIG5vZGUuCkdyb3VwIHJlc2V0IGNvbnRyb2xsZXIsIHdhdGNoZG9nIGFuZCBVQVJUMCBpbiBh
biBJc29sYXRpb24gc3lzY29uIG1mZCBub2RlLgpHcm91cCBVQVJUMSBhbmQgVUFSVDIgaW50byBh
IE1pc2NlbGxhbmVvdXMgc3lzY29uIG1mZCBub2RlLgoKQ2M6IEphbWVzIFRhaSA8amFtZXMudGFp
QHJlYWx0ZWsuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1
c2UuZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSB8IDE0
NyArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOTAgaW5z
ZXJ0aW9ucygrKSwgNTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMjl4LmR0c2kKaW5kZXggMGRlOWU2NzViZTE2Li4zNGRjMDk3OTBkMGIgMTAwNjQ0Ci0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQpAQCAtNjMsNzAgKzYzLDMxIEBACiAJCQkj
c2l6ZS1jZWxscyA9IDwxPjsKIAkJCXJhbmdlcyA9IDwweDAgMHg5ODAwMDAwMCAweDIwMDAwMD47
CiAKLQkJCXJlc2V0MTogcmVzZXQtY29udHJvbGxlckAwIHsKLQkJCQljb21wYXRpYmxlID0gInNu
cHMsZHctbG93LXJlc2V0IjsKLQkJCQlyZWcgPSA8MHgwIDB4ND47Ci0JCQkJI3Jlc2V0LWNlbGxz
ID0gPDE+OwotCQkJfTsKLQotCQkJcmVzZXQyOiByZXNldC1jb250cm9sbGVyQDQgewotCQkJCWNv
bXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOwotCQkJCXJlZyA9IDwweDQgMHg0PjsKLQkJ
CQkjcmVzZXQtY2VsbHMgPSA8MT47Ci0JCQl9OwotCi0JCQlyZXNldDM6IHJlc2V0LWNvbnRyb2xs
ZXJAOCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7Ci0JCQkJcmVnID0g
PDB4OCAweDQ+OwotCQkJCSNyZXNldC1jZWxscyA9IDwxPjsKLQkJCX07Ci0KLQkJCXJlc2V0NDog
cmVzZXQtY29udHJvbGxlckA1MCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNl
dCI7Ci0JCQkJcmVnID0gPDB4NTAgMHg0PjsKLQkJCQkjcmVzZXQtY2VsbHMgPSA8MT47Ci0JCQl9
OwotCi0JCQlpc29fcmVzZXQ6IHJlc2V0LWNvbnRyb2xsZXJANzA4OCB7Ci0JCQkJY29tcGF0aWJs
ZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7Ci0JCQkJcmVnID0gPDB4NzA4OCAweDQ+OwotCQkJCSNy
ZXNldC1jZWxscyA9IDwxPjsKLQkJCX07Ci0KLQkJCXdkdDogd2F0Y2hkb2dANzY4MCB7Ci0JCQkJ
Y29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtd2F0Y2hkb2ciOwotCQkJCXJlZyA9IDwweDc2
ODAgMHgxMDA+OwotCQkJCWNsb2NrcyA9IDwmb3NjMjdNPjsKLQkJCX07Ci0KLQkJCXVhcnQwOiBz
ZXJpYWxANzgwMCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKLQkJCQly
ZWcgPSA8MHg3ODAwIDB4NDAwPjsKLQkJCQlyZWctc2hpZnQgPSA8Mj47CisJCQljcnQ6IHN5c2Nv
bkAwIHsKKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKKwkJCQlyZWcg
PSA8MHgwIDB4MTgwMD47CiAJCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwotCQkJCWNsb2NrLWZyZXF1
ZW5jeSA9IDwyNzAwMDAwMD47Ci0JCQkJcmVzZXRzID0gPCZpc29fcmVzZXQgUlREMTI5NV9JU09f
UlNUTl9VUjA+OwotCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCQkJI2FkZHJlc3MtY2VsbHMg
PSA8MT47CisJCQkJI3NpemUtY2VsbHMgPSA8MT47CisJCQkJcmFuZ2VzID0gPDB4MCAweDAgMHgx
ODAwPjsKIAkJCX07CiAKLQkJCXVhcnQxOiBzZXJpYWxAMWIyMDAgewotCQkJCWNvbXBhdGlibGUg
PSAic25wcyxkdy1hcGItdWFydCI7Ci0JCQkJcmVnID0gPDB4MWIyMDAgMHgxMDA+OwotCQkJCXJl
Zy1zaGlmdCA9IDwyPjsKKwkJCWlzbzogc3lzY29uQDcwMDAgeworCQkJCWNvbXBhdGlibGUgPSAi
c3lzY29uIiwgInNpbXBsZS1tZmQiOworCQkJCXJlZyA9IDwweDcwMDAgMHgxMDAwPjsKIAkJCQly
ZWctaW8td2lkdGggPSA8ND47Ci0JCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47Ci0J
CQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMT47Ci0JCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwx
PjsKKwkJCQlyYW5nZXMgPSA8MHgwIDB4NzAwMCAweDEwMDA+OwogCQkJfTsKIAotCQkJdWFydDI6
IHNlcmlhbEAxYjQwMCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKLQkJ
CQlyZWcgPSA8MHgxYjQwMCAweDEwMD47Ci0JCQkJcmVnLXNoaWZ0ID0gPDI+OworCQkJbWlzYzog
c3lzY29uQDFiMDAwIHsKKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsK
KwkJCQlyZWcgPSA8MHgxYjAwMCAweDEwMDA+OwogCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKLQkJ
CQljbG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKLQkJCQlyZXNldHMgPSA8JnJlc2V0MiBS
VEQxMjk1X1JTVE5fVVIyPjsKLQkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQkJCSNhZGRyZXNz
LWNlbGxzID0gPDE+OworCQkJCSNzaXplLWNlbGxzID0gPDE+OworCQkJCXJhbmdlcyA9IDwweDAg
MHgxYjAwMCAweDEwMDA+OwogCQkJfTsKIAkJfTsKIApAQCAtMTQyLDMgKzEwMyw3NSBAQAogCQl9
OwogCX07CiB9OworCismY3J0IHsKKwlyZXNldDE6IHJlc2V0LWNvbnRyb2xsZXJAMCB7CisJCWNv
bXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOworCQlyZWcgPSA8MHgwIDB4ND47CisJCSNy
ZXNldC1jZWxscyA9IDwxPjsKKwl9OworCisJcmVzZXQyOiByZXNldC1jb250cm9sbGVyQDQgewor
CQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJcmVnID0gPDB4NCAweDQ+Owor
CQkjcmVzZXQtY2VsbHMgPSA8MT47CisJfTsKKworCXJlc2V0MzogcmVzZXQtY29udHJvbGxlckA4
IHsKKwkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7CisJCXJlZyA9IDwweDggMHg0
PjsKKwkJI3Jlc2V0LWNlbGxzID0gPDE+OworCX07CisKKwlyZXNldDQ6IHJlc2V0LWNvbnRyb2xs
ZXJANTAgeworCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJcmVnID0gPDB4
NTAgMHg0PjsKKwkJI3Jlc2V0LWNlbGxzID0gPDE+OworCX07Cit9OworCismaXNvIHsKKwlpc29f
cmVzZXQ6IHJlc2V0LWNvbnRyb2xsZXJAODggeworCQljb21wYXRpYmxlID0gInNucHMsZHctbG93
LXJlc2V0IjsKKwkJcmVnID0gPDB4ODggMHg0PjsKKwkJI3Jlc2V0LWNlbGxzID0gPDE+OworCX07
CisKKwl3ZHQ6IHdhdGNoZG9nQDY4MCB7CisJCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1
LXdhdGNoZG9nIjsKKwkJcmVnID0gPDB4NjgwIDB4MTAwPjsKKwkJY2xvY2tzID0gPCZvc2MyN00+
OworCX07CisKKwl1YXJ0MDogc2VyaWFsQDgwMCB7CisJCWNvbXBhdGlibGUgPSAic25wcyxkdy1h
cGItdWFydCI7CisJCXJlZyA9IDwweDgwMCAweDQwMD47CisJCXJlZy1zaGlmdCA9IDwyPjsKKwkJ
cmVnLWlvLXdpZHRoID0gPDQ+OworCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+OworCQly
ZXNldHMgPSA8Jmlzb19yZXNldCBSVEQxMjk1X0lTT19SU1ROX1VSMD47CisJCXN0YXR1cyA9ICJk
aXNhYmxlZCI7CisJfTsKK307CisKKyZtaXNjIHsKKwl1YXJ0MTogc2VyaWFsQDIwMCB7CisJCWNv
bXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7CisJCXJlZyA9IDwweDIwMCAweDEwMD47CisJ
CXJlZy1zaGlmdCA9IDwyPjsKKwkJcmVnLWlvLXdpZHRoID0gPDQ+OworCQljbG9jay1mcmVxdWVu
Y3kgPSA8NDMyMDAwMDAwPjsKKwkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMT47
CisJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJfTsKKworCXVhcnQyOiBzZXJpYWxANDAwIHsKKwkJ
Y29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKKwkJcmVnID0gPDB4NDAwIDB4MTAwPjsK
KwkJcmVnLXNoaWZ0ID0gPDI+OworCQlyZWctaW8td2lkdGggPSA8ND47CisJCWNsb2NrLWZyZXF1
ZW5jeSA9IDw0MzIwMDAwMDA+OworCQlyZXNldHMgPSA8JnJlc2V0MiBSVEQxMjk1X1JTVE5fVVIy
PjsKKwkJc3RhdHVzID0gImRpc2FibGVkIjsKKwl9OworfTsKLS0gCjIuMTYuNAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
