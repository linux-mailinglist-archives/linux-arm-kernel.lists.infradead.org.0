Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DCA5F9FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h5aaSigMp1gYdZnXWDM8GP1bIv3F9/BcKYeroL0wksA=; b=sWhn6bf7L/nLk6
	+lqhiAqGF7LVJemy+/Y0EcBm5C3lArc8Si40QSwj/hdLkXvvTlJmBbsTDM9Vo6cUu7URqywUe/qIi
	qxC0fCMnjpymHex9jm3cZ3uIGAbgaGKz5t+48A15dhIGV1JSge4aPT/LfaErugdlXFFQ8oagB9zNT
	70W/Y5dEW2i0jgSp1NHhpGg3ZB780XtYplFC+tL34Wwra6qkEGuwWF725ZAy1BwmbDu85GcWE2kcA
	0u3Rh5+Hch43lG8pbbY4JZgLVWzRaE3og1nEgmTJgvVxKsjJzuGaFXYT5omF/kmPAHEP+Ng20/I2y
	5gIe76DDjIwNf0SeJ2ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2eT-0003ig-Ba; Thu, 04 Jul 2019 14:23:57 +0000
Received: from 8.mo179.mail-out.ovh.net ([46.105.75.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2eH-0003i7-R9
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:23:47 +0000
Received: from player737.ha.ovh.net (unknown [10.108.35.122])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 6A90513907B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  4 Jul 2019 16:23:42 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player737.ha.ovh.net (Postfix) with ESMTPSA id 101FC7B05F52;
 Thu,  4 Jul 2019 14:23:30 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/2] ARM: dts: opos6uldev: use OF graph to describe the display
Date: Thu,  4 Jul 2019 16:23:23 +0200
Message-Id: <20190704142324.17675-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 859343105858950275
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrfedvgdejkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_072346_027583_5572ACB9 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.75.26 listed in list.dnswl.org]
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
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VG8gbWFrZSB1c2Ugb2YgdGhlIG5ldyBlTENESUYgRFJNIGRyaXZlciBPRiBncmFwaCBkZXNjcmlw
dGlvbiBpcwpyZXF1aXJlZC4gRGVzY3JpYmUgdGhlIGRpc3BsYXkgdXNpbmcgT0YgZ3JhcGggbm9k
ZXMuCgpSZXZpZXdlZC1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1h
ZGV1cy5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLW9wb3M2dWxkZXYuZHRzIHwg
MzcgKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlv
bnMoKyksIDIxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZ1bC1vcG9zNnVsZGV2LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC1vcG9zNnVsZGV2
LmR0cwppbmRleCAwZTU5ZWU1N2ZkNTUuLjhlY2RiOWFkMmIyZSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnVsLW9wb3M2dWxkZXYuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZ1bC1vcG9zNnVsZGV2LmR0cwpAQCAtNTYsNyArNTYsNyBAQAogCQlzdGRvdXQtcGF0aCA9
ICZ1YXJ0MTsKIAl9OwogCi0JYmFja2xpZ2h0IHsKKwliYWNrbGlnaHQ6IGJhY2tsaWdodCB7CiAJ
CWNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdodCI7CiAJCXB3bXMgPSA8JnB3bTMgMCAxOTEwMDA+
OwogCQlicmlnaHRuZXNzLWxldmVscyA9IDwwIDQgOCAxNiAzMiA2NCAxMjggMjU1PjsKQEAgLTk3
LDYgKzk3LDE4IEBACiAJCWdwaW9zID0gPCZncGlvNSAxIEdQSU9fQUNUSVZFX0hJR0g+OwogCX07
CiAKKwlwYW5lbDogcGFuZWwgeworCQljb21wYXRpYmxlID0gImFybWFkZXVzLHN0MDcwMC1hZGFw
dCI7CisJCXBvd2VyLXN1cHBseSA9IDwmcmVnXzN2Mz47CisJCWJhY2tsaWdodCA9IDwmYmFja2xp
Z2h0PjsKKworCQlwb3J0IHsKKwkJCXBhbmVsX2luOiBlbmRwb2ludCB7CisJCQkJcmVtb3RlLWVu
ZHBvaW50ID0gPCZsY2RpZl9vdXQ+OworCQkJfTsKKwkJfTsKKwl9OworCiAJcmVnXzV2OiByZWd1
bGF0b3ItNXYgewogCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAJCXJlZ3VsYXRv
ci1uYW1lID0gIjVWIjsKQEAgLTE4MiwyOCArMTk0LDExIEBACiAmbGNkaWYgewogCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7CiAJcGluY3RybC0wID0gPCZwaW5jdHJsX2xjZGlmPjsKLQlkaXNw
bGF5ID0gPCZkaXNwbGF5MD47Ci0JbGNkLXN1cHBseSA9IDwmcmVnXzN2Mz47CiAJc3RhdHVzID0g
Im9rYXkiOwogCi0JZGlzcGxheTA6IGRpc3BsYXkwIHsKLQkJYml0cy1wZXItcGl4ZWwgPSA8MzI+
OwotCQlidXMtd2lkdGggPSA8MTg+OwotCi0JCWRpc3BsYXktdGltaW5ncyB7Ci0JCQl0aW1pbmcw
OiB0aW1pbmcwIHsKLQkJCQljbG9jay1mcmVxdWVuY3kgPSA8MzMwMDAwMzM+OwotCQkJCWhhY3Rp
dmUgPSA8ODAwPjsKLQkJCQl2YWN0aXZlID0gPDQ4MD47Ci0JCQkJaGJhY2stcG9yY2ggPSA8OTY+
OwotCQkJCWhmcm9udC1wb3JjaCA9IDw5Nj47Ci0JCQkJdmJhY2stcG9yY2ggPSA8MjA+OwotCQkJ
CXZmcm9udC1wb3JjaCA9IDwyMT47Ci0JCQkJaHN5bmMtbGVuID0gPDY0PjsKLQkJCQl2c3luYy1s
ZW4gPSA8ND47Ci0JCQkJZGUtYWN0aXZlID0gPDE+OwotCQkJCXBpeGVsY2xrLWFjdGl2ZSA9IDww
PjsKLQkJCX07CisJcG9ydCB7CisJCWxjZGlmX291dDogZW5kcG9pbnQgeworCQkJcmVtb3RlLWVu
ZHBvaW50ID0gPCZwYW5lbF9pbj47CiAJCX07CiAJfTsKIH07Ci0tIAoyLjIxLjAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
