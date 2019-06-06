Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56D337841
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dDvmTGIQbDwizz24m5yD91wpeDN0UyEavIDZbjmYBac=; b=F6LTLJL3iDB4Kv
	e31cUU81kw56Lt05kEXIobRByvGF37882j9woF74CC1HR4OPEGHo8dRiGVubqYR3y+w3SA16Ltiqw
	fL5PgNygKCEIOEI0/C2uU9hZUTkYb3t622ESc9M9ueV7i4mtEUHpwgAcz2PuSTc8Ax4BUAUV99muX
	cV1zMRfonAqQtIfHKnscpa5uNOBh1d0LX6kU+QctvTgyo31INzm+LkPBWoltRN3EWz+tDazwEEU99
	geEu79E36HpDqNzUPkkqyqvXwi0Xe2VBkOyIS1eaHSfuHitjxq+pqF09T13IhdqPJztKeai4NkTeU
	jKHU6rko+a4W73W7CtfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuTt-00071N-Pl; Thu, 06 Jun 2019 15:39:09 +0000
Received: from 3.mo173.mail-out.ovh.net ([46.105.34.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuTn-00070U-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:39:05 +0000
Received: from player697.ha.ovh.net (unknown [10.108.35.210])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 0771B10CDA4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  6 Jun 2019 17:38:56 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id 0AFA9697A5DB;
 Thu,  6 Jun 2019 15:38:36 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v2 1/3] ARM: dts: imx6ul: Add csi node
Date: Thu,  6 Jun 2019 17:38:23 +0200
Message-Id: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3715188221214217412
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudeggedgledvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_083903_657839_1EC9F9F5 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.34.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rui Miguel Silva <rmfrfs@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGNzaSBub2RlIGZvciBpLk1YNlVMIFNvQy4KClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFt
IDxmZXN0ZXZhbUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tp
IDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCgpDaGFuZ2VzIGZvciB2MjoK
IC0gb25seSAibWNsayIgY2xvY2sgaXMgcmVxdWlyZWQgbm93LgoKIGFyY2gvYXJtL2Jvb3QvZHRz
L2lteDZ1bC5kdHNpIHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL2lteDZ1bC5kdHNpCmluZGV4IGJiZjAxMGM3MzMzNi4uZjEwMDEyZGU1ZWI2IDEw
MDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQorKysgYi9hcmNoL2FybS9i
b290L2R0cy9pbXg2dWwuZHRzaQpAQCAtOTUxLDYgKzk1MSwxNSBAQAogCQkJCX07CiAJCQl9Owog
CisJCQljc2k6IGNzaUAyMWM0MDAwIHsKKwkJCQljb21wYXRpYmxlID0gImZzbCxpbXg2dWwtY3Np
IiwgImZzbCxpbXg3LWNzaSI7CisJCQkJcmVnID0gPDB4MDIxYzQwMDAgMHg0MDAwPjsKKwkJCQlp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgNyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQljbG9ja3Mg
PSA8JmNsa3MgSU1YNlVMX0NMS19DU0k+OworCQkJCWNsb2NrLW5hbWVzID0gIm1jbGsiOworCQkJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCQl9OworCiAJCQlsY2RpZjogbGNkaWZAMjFjODAwMCB7
CiAJCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14NnVsLWxjZGlmIiwgImZzbCxpbXgyOC1sY2RpZiI7
CiAJCQkJcmVnID0gPDB4MDIxYzgwMDAgMHg0MDAwPjsKLS0gCjIuMTkuMgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
