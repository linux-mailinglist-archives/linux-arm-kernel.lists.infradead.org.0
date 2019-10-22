Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 518B9E04CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0FWjxyJ7toZVP2E40YmRJqQd8Rr6lBy0u2NdK0rd0g=; b=VtEfHtsjau0494
	H9l9O1f8C2bQC8emQ8oqWAMYhU0PS47QZB6pyGL3yOQunpMA1rjNqAwFDnhqmgXVRLAvBLl/O4dJE
	jEEsDMTA35da8JPHcTQPuoB/jGk3Fw1/QanT70Xsi3gtn+lTpcclE0s0aTE12xzcmtz0je7ga28YM
	gxkldCY1evFi7mZeeXQ9RjTrRk3/le3xPz2EE2C1qZNHVm78GVqzMWpmi3pStZqRT655XKi8tRV4i
	nnTkncGCJcwjH4TGG8+xnSernxPZm/JF9GDS0xLDoYPPQE2FkKem4p51Nj15mYttSaVh133dKUY0K
	CdI0+yiT2o+UW1IQOI6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu5i-0002mk-F1; Tue, 22 Oct 2019 13:20:50 +0000
Received: from 7.mo69.mail-out.ovh.net ([46.105.50.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu4Y-0000Zb-D7
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:19:40 +0000
Received: from player793.ha.ovh.net (unknown [10.109.143.189])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id 9F7676B2E0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 15:19:35 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player793.ha.ovh.net (Postfix) with ESMTPSA id 1FB76B3E44A4;
 Tue, 22 Oct 2019 13:19:22 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 8/9] ARM: dts: imx6qdl-apf6dev: add backlight support
Date: Tue, 22 Oct 2019 15:16:54 +0200
Message-Id: <20191022131655.25737-9-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 137078316207461445
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrkeejgdeivdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_061938_625589_0BAFD4BA 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.50.32 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Julien Boibessot <julien.boibessot@armadeus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIFBXTSBiYWNrbGlnaHQgc3VwcG9ydC4KClNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5
bWFuc2tpIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCiBhcmNoL2FybS9i
b290L2R0cy9pbXg2cWRsLWFwZjZkZXYuZHRzaSB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRs
LWFwZjZkZXYuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtYXBmNmRldi5kdHNpCmlu
ZGV4IDkwNjczNTVkODU0MS4uZjYxNzA4OWJlOWNjIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290
L2R0cy9pbXg2cWRsLWFwZjZkZXYuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRs
LWFwZjZkZXYuZHRzaQpAQCAtMTEsNiArMTEsMTQgQEAKIAkJc3Rkb3V0LXBhdGggPSAmdWFydDQ7
CiAJfTsKIAorCWJhY2tsaWdodDogYmFja2xpZ2h0IHsKKwkJY29tcGF0aWJsZSA9ICJwd20tYmFj
a2xpZ2h0IjsKKwkJcHdtcyA9IDwmcHdtMyAwIDE5MTAwMD47CisJCWJyaWdodG5lc3MtbGV2ZWxz
ID0gPDAgNCA4IDE2IDMyIDY0IDEyOCAyNTU+OworCQlkZWZhdWx0LWJyaWdodG5lc3MtbGV2ZWwg
PSA8MD47CisJCXBvd2VyLXN1cHBseSA9IDwmcmVnXzV2PjsKKwl9OworCiAJZGlzcDAgewogCQlj
b21wYXRpYmxlID0gImZzbCxpbXgtcGFyYWxsZWwtZGlzcGxheSI7CiAJCWludGVyZmFjZS1waXgt
Zm10ID0gImJncjY2NiI7Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
