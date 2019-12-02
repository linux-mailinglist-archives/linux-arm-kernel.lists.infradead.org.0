Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15C310EF3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:23:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEoL4Nm25UiGQ1Gl9aTQTBZUaNuNkL5ldEMZ2vYk4OI=; b=fzZyIIu6roxqln
	fJsyi9oS7pMWNeixANne9xjfS7tYf3++A+WdaDnZQak+vmjDs2yeb4CWihThtB4JT6E/4fwpSkCdv
	4oPrlgpDvVY3p2Fz6a+C1PVBExVlWCs5qcRu5MaW5CS37XqopYA364ZP5vKQ2RYLpAGIq2x+67z7U
	1o9pLwjvzBsn/2ZTUCduKOuFfvifTyTlHxJvqGOaebaMuYIJyY0hwo6ShJvLILHjlPXS1dRQqFweC
	IA6huz3OwDLOetZGEnNt4y33eUfb8Tl0BFtWMaM7sr1wJzsr6n2y7cCt0dQY4rw297sB6Vy//4zH7
	rQY3SdTUWc78FrNqmGaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqM6-0005HR-SV; Mon, 02 Dec 2019 18:23:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKt-0004Eq-SI; Mon, 02 Dec 2019 18:22:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9CE78AE65;
 Mon,  2 Dec 2019 18:22:14 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 03/14] arm64: dts: realtek: rtd139x: Introduce CRT,
 iso and misc syscon
Date: Mon,  2 Dec 2019 19:21:53 +0100
Message-Id: <20191202182205.14629-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102216_215808_0A4AE394 
X-CRM114-Status: UNSURE (   9.29  )
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

R3JvdXAgdGhlIG5vbi1pc28gcmVzZXQgY29udHJvbGxlciBub2RlcyBpbnRvIGEgQ1JUIHN5c2Nv
biBtZmQgbm9kZS4KR3JvdXAgcmVzZXQgY29udHJvbGxlciwgd2F0Y2hkb2cgYW5kIFVBUlQwIGlu
dG8gYW4gSXNvbGF0aW9uIG1mZCBub2RlLgpHcm91cCBVQVJUMSBhbmQgVUFSVDIgaW50byBhIE1p
c2NlbGxhbmVvdXMgc3lzY29uIG1mZCBub2RlLgoKQ2M6IEphbWVzIFRhaSA8amFtZXMudGFpQHJl
YWx0ZWsuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2Uu
ZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOXguZHRzaSB8IDE0NyAr
KysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOTAgaW5zZXJ0
aW9ucygrKSwgNTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yZWFsdGVrL3J0ZDEzOXguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
Mzl4LmR0c2kKaW5kZXggYzExYTUwNWU0M2UyLi4zYTU3MWYzYjdlMzggMTAwNjQ0Ci0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzl4LmR0c2kKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEzOXguZHRzaQpAQCAtNjEsNzAgKzYxLDMxIEBACiAJCQkjc2l6
ZS1jZWxscyA9IDwxPjsKIAkJCXJhbmdlcyA9IDwweDAgMHg5ODAwMDAwMCAweDIwMDAwMD47CiAK
LQkJCXJlc2V0MTogcmVzZXQtY29udHJvbGxlckAwIHsKLQkJCQljb21wYXRpYmxlID0gInNucHMs
ZHctbG93LXJlc2V0IjsKLQkJCQlyZWcgPSA8MHgwIDB4ND47Ci0JCQkJI3Jlc2V0LWNlbGxzID0g
PDE+OwotCQkJfTsKLQotCQkJcmVzZXQyOiByZXNldC1jb250cm9sbGVyQDQgewotCQkJCWNvbXBh
dGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOwotCQkJCXJlZyA9IDwweDQgMHg0PjsKLQkJCQkj
cmVzZXQtY2VsbHMgPSA8MT47Ci0JCQl9OwotCi0JCQlyZXNldDM6IHJlc2V0LWNvbnRyb2xsZXJA
OCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7Ci0JCQkJcmVnID0gPDB4
OCAweDQ+OwotCQkJCSNyZXNldC1jZWxscyA9IDwxPjsKLQkJCX07Ci0KLQkJCXJlc2V0NDogcmVz
ZXQtY29udHJvbGxlckA1MCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7
Ci0JCQkJcmVnID0gPDB4NTAgMHg0PjsKLQkJCQkjcmVzZXQtY2VsbHMgPSA8MT47Ci0JCQl9Owot
Ci0JCQlpc29fcmVzZXQ6IHJlc2V0LWNvbnRyb2xsZXJANzA4OCB7Ci0JCQkJY29tcGF0aWJsZSA9
ICJzbnBzLGR3LWxvdy1yZXNldCI7Ci0JCQkJcmVnID0gPDB4NzA4OCAweDQ+OwotCQkJCSNyZXNl
dC1jZWxscyA9IDwxPjsKLQkJCX07Ci0KLQkJCXdkdDogd2F0Y2hkb2dANzY4MCB7Ci0JCQkJY29t
cGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtd2F0Y2hkb2ciOwotCQkJCXJlZyA9IDwweDc2ODAg
MHgxMDA+OwotCQkJCWNsb2NrcyA9IDwmb3NjMjdNPjsKLQkJCX07Ci0KLQkJCXVhcnQwOiBzZXJp
YWxANzgwMCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKLQkJCQlyZWcg
PSA8MHg3ODAwIDB4NDAwPjsKLQkJCQlyZWctc2hpZnQgPSA8Mj47CisJCQljcnQ6IHN5c2NvbkAw
IHsKKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKKwkJCQlyZWcgPSA8
MHgwIDB4MTAwMD47CiAJCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwotCQkJCWNsb2NrLWZyZXF1ZW5j
eSA9IDwyNzAwMDAwMD47Ci0JCQkJcmVzZXRzID0gPCZpc29fcmVzZXQgUlREMTI5NV9JU09fUlNU
Tl9VUjA+OwotCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCQkJI2FkZHJlc3MtY2VsbHMgPSA8
MT47CisJCQkJI3NpemUtY2VsbHMgPSA8MT47CisJCQkJcmFuZ2VzID0gPDB4MCAweDAgMHgxMDAw
PjsKIAkJCX07CiAKLQkJCXVhcnQxOiBzZXJpYWxAMWIyMDAgewotCQkJCWNvbXBhdGlibGUgPSAi
c25wcyxkdy1hcGItdWFydCI7Ci0JCQkJcmVnID0gPDB4MWIyMDAgMHgxMDA+OwotCQkJCXJlZy1z
aGlmdCA9IDwyPjsKKwkJCWlzbzogc3lzY29uQDcwMDAgeworCQkJCWNvbXBhdGlibGUgPSAic3lz
Y29uIiwgInNpbXBsZS1tZmQiOworCQkJCXJlZyA9IDwweDcwMDAgMHgxMDAwPjsKIAkJCQlyZWct
aW8td2lkdGggPSA8ND47Ci0JCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAwMD47Ci0JCQkJ
cmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMT47Ci0JCQkJc3RhdHVzID0gImRpc2Fi
bGVkIjsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwxPjsK
KwkJCQlyYW5nZXMgPSA8MHgwIDB4NzAwMCAweDEwMDA+OwogCQkJfTsKIAotCQkJdWFydDI6IHNl
cmlhbEAxYjQwMCB7Ci0JCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKLQkJCQly
ZWcgPSA8MHgxYjQwMCAweDEwMD47Ci0JCQkJcmVnLXNoaWZ0ID0gPDI+OworCQkJbWlzYzogc3lz
Y29uQDFiMDAwIHsKKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKKwkJ
CQlyZWcgPSA8MHgxYjAwMCAweDEwMDA+OwogCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKLQkJCQlj
bG9jay1mcmVxdWVuY3kgPSA8NDMyMDAwMDAwPjsKLQkJCQlyZXNldHMgPSA8JnJlc2V0MiBSVEQx
Mjk1X1JTVE5fVVIyPjsKLQkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQkJCSNhZGRyZXNzLWNl
bGxzID0gPDE+OworCQkJCSNzaXplLWNlbGxzID0gPDE+OworCQkJCXJhbmdlcyA9IDwweDAgMHgx
YjAwMCAweDEwMDA+OwogCQkJfTsKIAkJfTsKIApAQCAtMTQwLDMgKzEwMSw3NSBAQAogCQl9Owog
CX07CiB9OworCismY3J0IHsKKwlyZXNldDE6IHJlc2V0LWNvbnRyb2xsZXJAMCB7CisJCWNvbXBh
dGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOworCQlyZWcgPSA8MHgwIDB4ND47CisJCSNyZXNl
dC1jZWxscyA9IDwxPjsKKwl9OworCisJcmVzZXQyOiByZXNldC1jb250cm9sbGVyQDQgeworCQlj
b21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJcmVnID0gPDB4NCAweDQ+OworCQkj
cmVzZXQtY2VsbHMgPSA8MT47CisJfTsKKworCXJlc2V0MzogcmVzZXQtY29udHJvbGxlckA4IHsK
KwkJY29tcGF0aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7CisJCXJlZyA9IDwweDggMHg0PjsK
KwkJI3Jlc2V0LWNlbGxzID0gPDE+OworCX07CisKKwlyZXNldDQ6IHJlc2V0LWNvbnRyb2xsZXJA
NTAgeworCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJcmVnID0gPDB4NTAg
MHg0PjsKKwkJI3Jlc2V0LWNlbGxzID0gPDE+OworCX07Cit9OworCismaXNvIHsKKwlpc29fcmVz
ZXQ6IHJlc2V0LWNvbnRyb2xsZXJAODggeworCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJl
c2V0IjsKKwkJcmVnID0gPDB4ODggMHg0PjsKKwkJI3Jlc2V0LWNlbGxzID0gPDE+OworCX07CisK
Kwl3ZHQ6IHdhdGNoZG9nQDY4MCB7CisJCWNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1LXdh
dGNoZG9nIjsKKwkJcmVnID0gPDB4NjgwIDB4MTAwPjsKKwkJY2xvY2tzID0gPCZvc2MyN00+Owor
CX07CisKKwl1YXJ0MDogc2VyaWFsQDgwMCB7CisJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGIt
dWFydCI7CisJCXJlZyA9IDwweDgwMCAweDQwMD47CisJCXJlZy1zaGlmdCA9IDwyPjsKKwkJcmVn
LWlvLXdpZHRoID0gPDQ+OworCQljbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+OworCQlyZXNl
dHMgPSA8Jmlzb19yZXNldCBSVEQxMjk1X0lTT19SU1ROX1VSMD47CisJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7CisJfTsKK307CisKKyZtaXNjIHsKKwl1YXJ0MTogc2VyaWFsQDIwMCB7CisJCWNvbXBh
dGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7CisJCXJlZyA9IDwweDIwMCAweDEwMD47CisJCXJl
Zy1zaGlmdCA9IDwyPjsKKwkJcmVnLWlvLXdpZHRoID0gPDQ+OworCQljbG9jay1mcmVxdWVuY3kg
PSA8NDMyMDAwMDAwPjsKKwkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMT47CisJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJfTsKKworCXVhcnQyOiBzZXJpYWxANDAwIHsKKwkJY29t
cGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKKwkJcmVnID0gPDB4NDAwIDB4MTAwPjsKKwkJ
cmVnLXNoaWZ0ID0gPDI+OworCQlyZWctaW8td2lkdGggPSA8ND47CisJCWNsb2NrLWZyZXF1ZW5j
eSA9IDw0MzIwMDAwMDA+OworCQlyZXNldHMgPSA8JnJlc2V0MiBSVEQxMjk1X1JTVE5fVVIyPjsK
KwkJc3RhdHVzID0gImRpc2FibGVkIjsKKwl9OworfTsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
