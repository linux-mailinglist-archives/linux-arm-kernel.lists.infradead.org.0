Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB2B4A603
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y+fNIrNnnhndq6rb7jXO6bAQRI4wnI7f8+OsCC2a9ZE=; b=c/ZiZ0st7d4Ngt
	W3YVCK6n6yYx+vrNqFxNZBfHJBgcgpydH/HTTrTpfO1u5balGatdKRv04q9swrA3YKlzaUIndkHX3
	LvAelKlYi/jdr6SVI7xuAOrrl5qNELTpORRyIqU5j6KmfhagL4wyo/6OUUHy3mRfp7rm4TIaurzvU
	kfdWFB/Ox4UAsMGmGtEWGRY+uoxMulfNQwfCCoOIMOlQw/lKrUnyF2NiqkjDq0Hq3eTaerDAcHf42
	5R101XM8Hawb9th9ktWZoU5xzF6mUlIeimBU2ZyHzE5wiGP/+SNCR7TZyYzQHx4OgRYtzuo85T4mP
	AeqKl1ZFz4NSvwC3I8wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGVl-0005Ja-V5; Tue, 18 Jun 2019 15:59:05 +0000
Received: from 3.mo178.mail-out.ovh.net ([46.105.44.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGVb-0005Iz-J4
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:58:58 +0000
Received: from player776.ha.ovh.net (unknown [10.108.35.27])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 07FD16C9F8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 17:58:47 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player776.ha.ovh.net (Postfix) with ESMTPSA id A37AB6F58780;
 Tue, 18 Jun 2019 15:58:34 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
Date: Tue, 18 Jun 2019 17:58:34 +0200
Message-Id: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 735494114359399676
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrtddtgdeiiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_085855_767819_A699D76E 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.44.197 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWNjb3JkaW5nIHRvIHRoZSBpLk1YNlVML0wgUk0sIHRhYmxlIDMuMSAiQVJNIENvcnRleCBBNyBk
b21haW4gaW50ZXJydXB0CnN1bW1hcnkiLCB0aGUgaW50ZXJydXB0cyBmb3IgdGhlIFBXTVsxLTRd
IGdvIGZyb20gODMgdG8gODYuCgpGaXhlczogYjk5MDFmZTg0ZjAyICgiQVJNOiBkdHM6IGlteDZ1
bDogYWRkIHB3bVsxLTRdIG5vZGVzIikKU2lnbmVkLW9mZi1ieTogU8OpYmFzdGllbiBTenltYW5z
a2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZ1bC5kdHNpIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2
dWwuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5kdHNpCmluZGV4IGJiZjAxMGM3MzMz
Ni4uYTdmNmQxZDU4ZTIwIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRz
aQorKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQpAQCAtMzU4LDcgKzM1OCw3IEBA
CiAJCQlwd20xOiBwd21AMjA4MDAwMCB7CiAJCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14NnVsLXB3
bSIsICJmc2wsaW14MjctcHdtIjsKIAkJCQlyZWcgPSA8MHgwMjA4MDAwMCAweDQwMDA+OwotCQkJ
CWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTUgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQkJaW50
ZXJydXB0cyA9IDxHSUNfU1BJIDgzIElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQkJCWNsb2NrcyA9
IDwmY2xrcyBJTVg2VUxfQ0xLX1BXTTE+LAogCQkJCQkgPCZjbGtzIElNWDZVTF9DTEtfUFdNMT47
CiAJCQkJY2xvY2stbmFtZXMgPSAiaXBnIiwgInBlciI7CkBAIC0zNjksNyArMzY5LDcgQEAKIAkJ
CXB3bTI6IHB3bUAyMDg0MDAwIHsKIAkJCQljb21wYXRpYmxlID0gImZzbCxpbXg2dWwtcHdtIiwg
ImZzbCxpbXgyNy1wd20iOwogCQkJCXJlZyA9IDwweDAyMDg0MDAwIDB4NDAwMD47Ci0JCQkJaW50
ZXJydXB0cyA9IDxHSUNfU1BJIDExNiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQlpbnRlcnJ1
cHRzID0gPEdJQ19TUEkgODQgSVJRX1RZUEVfTEVWRUxfSElHSD47CiAJCQkJY2xvY2tzID0gPCZj
bGtzIElNWDZVTF9DTEtfUFdNMj4sCiAJCQkJCSA8JmNsa3MgSU1YNlVMX0NMS19QV00yPjsKIAkJ
CQljbG9jay1uYW1lcyA9ICJpcGciLCAicGVyIjsKQEAgLTM4MCw3ICszODAsNyBAQAogCQkJcHdt
MzogcHdtQDIwODgwMDAgewogCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDZ1bC1wd20iLCAiZnNs
LGlteDI3LXB3bSI7CiAJCQkJcmVnID0gPDB4MDIwODgwMDAgMHg0MDAwPjsKLQkJCQlpbnRlcnJ1
cHRzID0gPEdJQ19TUEkgMTE3IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCWludGVycnVwdHMg
PSA8R0lDX1NQSSA4NSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKIAkJCQljbG9ja3MgPSA8JmNsa3Mg
SU1YNlVMX0NMS19QV00zPiwKIAkJCQkJIDwmY2xrcyBJTVg2VUxfQ0xLX1BXTTM+OwogCQkJCWNs
b2NrLW5hbWVzID0gImlwZyIsICJwZXIiOwpAQCAtMzkxLDcgKzM5MSw3IEBACiAJCQlwd200OiBw
d21AMjA4YzAwMCB7CiAJCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14NnVsLXB3bSIsICJmc2wsaW14
MjctcHdtIjsKIAkJCQlyZWcgPSA8MHgwMjA4YzAwMCAweDQwMDA+OwotCQkJCWludGVycnVwdHMg
PSA8R0lDX1NQSSAxMTggSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQkJaW50ZXJydXB0cyA9IDxH
SUNfU1BJIDg2IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQkJCWNsb2NrcyA9IDwmY2xrcyBJTVg2
VUxfQ0xLX1BXTTQ+LAogCQkJCQkgPCZjbGtzIElNWDZVTF9DTEtfUFdNND47CiAJCQkJY2xvY2st
bmFtZXMgPSAiaXBnIiwgInBlciI7Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
