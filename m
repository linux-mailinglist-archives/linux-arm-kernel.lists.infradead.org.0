Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C41F7C8C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mZG2YvmcSGesmdrKum+H3vArlM2yXqXOYpazlXQGdUo=; b=dHAPxAnQD/D4z7
	P29SiyOLQzww9m30J2TINcfj2snLtA0W96jUXdLC0g5mzYWPa6xpSBOwZKJ8xxiWDTpLi3Z1ihum5
	CPCB88KTD85hgaD05YL3n2P/ZEMtBgpgbG4wyc9g3c1jTL+kwPwnpTnDVfRisgoMk8/m46fupgIQl
	lC+7gnh2KFWFqrhDpIbEzghKlNY+HW4Yg8zPOZi+8f3Xf58Bej/KTe6zTkL+1XQGN04O/tvH9pQzI
	oPYoGmZ86W2VqzHj4nns7kgEpiNv/yXc6YJ4zpWJFVamb2lyaIVetkfTThHPZ3METwrsmp4As1Mqt
	8ohzUMWGGYulTSKBstew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrXn-0001GF-T9; Wed, 31 Jul 2019 16:33:39 +0000
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrXZ-00019n-GI
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:33:27 +0000
Received: from player756.ha.ovh.net (unknown [10.109.159.248])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id 55E191FFF49
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 18:33:19 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player756.ha.ovh.net (Postfix) with ESMTPSA id B74A77ADA712;
 Wed, 31 Jul 2019 16:32:56 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 1/3] ARM: dts: imx6ul: Add csi node
Date: Wed, 31 Jul 2019 18:32:57 +0200
Message-Id: <20190731163257.32448-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14036875616662541351
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrleehgddutdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_093325_692008_63177AA4 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.34.195 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGNzaSBub2RlIGZvciBpLk1YNlVMIFNvQy4KClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFt
IDxmZXN0ZXZhbUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tp
IDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCgpDaGFuZ2VzIGZvciB2MzoK
IC0gbm9uZQoKQ2hhbmdlcyBmb3IgdjI6CiAtIG9ubHkgIm1jbGsiIGNsb2NrIGlzIHJlcXVpcmVk
IG5vdy4KCiBhcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSB8IDkgKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnVsLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQppbmRleCA4MWQ0
YjQ5MjUxMjcuLjU2Y2ZjZjBlNTA4NCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnVsLmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kKQEAgLTk1Nyw2ICs5
NTcsMTUgQEAKIAkJCQl9OwogCQkJfTsKIAorCQkJY3NpOiBjc2lAMjFjNDAwMCB7CisJCQkJY29t
cGF0aWJsZSA9ICJmc2wsaW14NnVsLWNzaSIsICJmc2wsaW14Ny1jc2kiOworCQkJCXJlZyA9IDww
eDAyMWM0MDAwIDB4NDAwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVf
TEVWRUxfSElHSD47CisJCQkJY2xvY2tzID0gPCZjbGtzIElNWDZVTF9DTEtfQ1NJPjsKKwkJCQlj
bG9jay1uYW1lcyA9ICJtY2xrIjsKKwkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQkJfTsKKwog
CQkJbGNkaWY6IGxjZGlmQDIxYzgwMDAgewogCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDZ1bC1s
Y2RpZiIsICJmc2wsaW14MjgtbGNkaWYiOwogCQkJCXJlZyA9IDwweDAyMWM4MDAwIDB4NDAwMD47
Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
