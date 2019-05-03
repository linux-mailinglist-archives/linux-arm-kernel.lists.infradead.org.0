Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A730112F9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LZJogV6wMvIZUjH5I0jvW50yuqqYbaOPCut05ezV3dk=; b=G3GLNAyKoL4IZQ
	Cjmwov076H/BFScgXt548MTAln9vdqXaGISqMURQwvdIWjc57PsY0+1AArLkdSqJWorSZ5wZ+PQua
	5KAjwhuytgsvAf7HExjUa2escUtWnfVcimn5FlwUdJ5jHozJIXT9mnkpDh/JjaBqdb8T7EMfraGA6
	thY92CJ5CIKjvnYSgP9enzTrO0EEQ/tfgAkB5mU30h+9I7qfZ/68ZGKwvC3U13q3e6RIc/dLda/xF
	t8yD/hel13906p7vScOQMF4xbMP9xDmB6QbdlgcrAPDQeLQsWE2IAHOjVftJfhaTjj9ESO72QnSOR
	T5O8Sl6JFFEk47Mwv2WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYcx-0003e9-8C; Fri, 03 May 2019 13:53:27 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYcp-0003dE-3k
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 13:53:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 8FDABFB03;
 Fri,  3 May 2019 15:53:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ooGTtBqEb89p; Fri,  3 May 2019 15:53:13 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id A480547CED; Fri,  3 May 2019 15:53:12 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] soc: imx: Get iMX8MQ revision for B0 from ATF
Date: Fri,  3 May 2019 15:53:12 +0200
Message-Id: <d85c6cfe79f9fc1e7761c952e29dfb2f71cff2c1.1556891520.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_065319_318078_9E8F7947 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyBzaW1pbGFyIHRvIHdoYXQgdGhlIEJTUCBkb2VzIGFuZCBuZWVkZWQgdG8gZS5nLiBk
ZXRlcm1pbmUKbmVjZXNzYXJ5IHF1aXJrcyBmb3IgTUlQSSBEU0kuCgpTaWduZWQtb2ZmLWJ5OiBH
dWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgoKLS0tCkZyb20gdGhlIGxpc3QgZGlzY3Vz
c2lvbiBhbmQgY2hhbmdlbG9nIGl0J3Mgbm90IGNsZWFyIHRvIG1lIHdoeSBhCmRpZmZlcmVudCBt
ZXRob2Qgd2FzIGNob3NlbiBmb3IgdGhlIEIxIHNpbGljb24gc28gSSBsZWZ0IHRoYXQgaW4gcGxh
Y2UKYXMgaXMgYW5kIG9ubHkgdHJpZ2dlciBvbiB0aGUgQjAgc2lsaWNvbiBJIGhhdmUgaGVyZS4K
LS0tCiBkcml2ZXJzL3NvYy9pbXgvc29jLWlteDguYyB8IDQ5ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgMTIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvaW14L3NvYy1pbXg4LmMgYi9k
cml2ZXJzL3NvYy9pbXgvc29jLWlteDguYwppbmRleCBmYzY0MjlmOTE3MGEuLjM2M2FjZDExNTFl
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zb2MvaW14L3NvYy1pbXg4LmMKKysrIGIvZHJpdmVycy9z
b2MvaW14L3NvYy1pbXg4LmMKQEAgLTMsNiArMyw3IEBACiAgKiBDb3B5cmlnaHQgMjAxOSBOWFAu
CiAgKi8KIAorI2luY2x1ZGUgPGxpbnV4L2FybS1zbWNjYy5oPgogI2luY2x1ZGUgPGxpbnV4L2lu
aXQuaD4KICNpbmNsdWRlIDxsaW51eC9pby5oPgogI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJlc3Mu
aD4KQEAgLTExLDE2ICsxMiwzNyBAQAogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5o
PgogI2luY2x1ZGUgPGxpbnV4L29mLmg+CiAKKyNkZWZpbmUgUkVWX0IwCQkJCTB4MjAKICNkZWZp
bmUgUkVWX0IxCQkJCTB4MjEKIAorI2RlZmluZSBJTVg4TVFfQVRGX0dFVF9TT0NfSU5GTwkJMHhj
MjAwMDAwNgogI2RlZmluZSBJTVg4TVFfU1dfSU5GT19CMQkJMHg0MAogI2RlZmluZSBJTVg4TVFf
U1dfTUFHSUNfQjEJCTB4ZmYwMDU1YWEKIAorCiBzdHJ1Y3QgaW14OF9zb2NfZGF0YSB7CiAJY2hh
ciAqbmFtZTsKIAl1MzIgKCpzb2NfcmV2aXNpb24pKHZvaWQpOwogfTsKIAorCitzdGF0aWMgdTMy
IF9faW5pdCBpbXg4bXFfc29jX3JldmlzaW9uX2Zyb21fYXRmKHZvaWQpCit7CisJc3RydWN0IGFy
bV9zbWNjY19yZXMgcmVzOworCXUzMiBkaWdwcm9nOworCisJYXJtX3NtY2NjX3NtYyhJTVg4TVFf
QVRGX0dFVF9TT0NfSU5GTywgMCwgMCwgMCwgMCwgMCwgMCwgMCwgJnJlcyk7CisJZGlncHJvZyA9
IHJlcy5hMDsKKwkvKgorCSAqIEJpdCBbMjM6MTZdIGlzIHRoZSBzaWxpY29uIElECisJICogQml0
Wzc6NF0gaXMgdGhlIGJhc2UgbGF5ZXIgcmV2aXNpb24sCisJICogQml0WzM6MF0gaXMgdGhlIG1l
dGFsIGxheWVyIHJldmlzaW9uCisJICogZS5nLiAweDEwIHN0YW5kcyBmb3IgVGFwZW91dCAxLjAK
KwkgKi8KKwlyZXR1cm4gZGlncHJvZyAmIDB4ZmY7Cit9CisKKwogc3RhdGljIHUzMiBfX2luaXQg
aW14OG1xX3NvY19yZXZpc2lvbih2b2lkKQogewogCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnA7CkBA
IC0yOSwyMCArNTEsMjMgQEAgc3RhdGljIHUzMiBfX2luaXQgaW14OG1xX3NvY19yZXZpc2lvbih2
b2lkKQogCXUzMiByZXYgPSAwOwogCiAJbnAgPSBvZl9maW5kX2NvbXBhdGlibGVfbm9kZShOVUxM
LCBOVUxMLCAiZnNsLGlteDhtcS1vY290cCIpOwotCWlmICghbnApCi0JCWdvdG8gb3V0OwotCi0J
b2NvdHBfYmFzZSA9IG9mX2lvbWFwKG5wLCAwKTsKLQlXQVJOX09OKCFvY290cF9iYXNlKTsKLQot
CW1hZ2ljID0gcmVhZGxfcmVsYXhlZChvY290cF9iYXNlICsgSU1YOE1RX1NXX0lORk9fQjEpOwot
CWlmIChtYWdpYyA9PSBJTVg4TVFfU1dfTUFHSUNfQjEpCi0JCXJldiA9IFJFVl9CMTsKLQotCWlv
dW5tYXAob2NvdHBfYmFzZSk7CisJaWYgKG5wKSB7CisJCW9jb3RwX2Jhc2UgPSBvZl9pb21hcChu
cCwgMCk7CisJCVdBUk5fT04oIW9jb3RwX2Jhc2UpOworCisJCW1hZ2ljID0gcmVhZGxfcmVsYXhl
ZChvY290cF9iYXNlICsgSU1YOE1RX1NXX0lORk9fQjEpOworCQlpb3VubWFwKG9jb3RwX2Jhc2Up
OworCQlvZl9ub2RlX3B1dChucCk7CisJCWlmIChtYWdpYyA9PSBJTVg4TVFfU1dfTUFHSUNfQjEp
CisJCQlyZXYgPSBSRVZfQjE7CisJfQogCisJaWYgKCFyZXYpIHsKKwkJbWFnaWMgPSBpbXg4bXFf
c29jX3JldmlzaW9uX2Zyb21fYXRmKCk7CisJCWlmIChtYWdpYyA9PSBSRVZfQjApCisJCQlyZXYg
PSBSRVZfQjA7CisJfQogb3V0OgotCW9mX25vZGVfcHV0KG5wKTsKIAlyZXR1cm4gcmV2OwogfQog
Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
