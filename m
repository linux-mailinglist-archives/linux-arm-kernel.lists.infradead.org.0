Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8F3F19F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 09:47:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BmRUF6DftziP3w/tVKS7rx0A0iwRdVD6NbNTBT0FC3o=; b=GVWrSmWyM40DoE
	VYFTDVRsTR9VFqgKyZmujq/B7wrV1dIq8GNKLBMKQTtpXn4TUiUULUkytCgMJG0+3/WIqWwCHDW4n
	Yh0eOkVb3ykdjSPuRfG6tGBQse7rZGYDwatM/DafMZdmW9Fac55svvyfygeaWZ/Q+6r9Hu4C20pME
	zjCcnDhE4xqGr5HnF3YL0XSkEEWg7uUNX5yNuk2vfTLsA2fSgmG8shCWonSE9kL+6nuk3vHkuRbzP
	yNksxgr7DfyTErf7LurXdXMEhq1AK3WuIDa4+Drt73cYgdXJJVeTRVImTnfhtlKcnB3tp/RmaBOsR
	36fHrai5XymklUUWhzqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNUS-0004P8-Iv; Tue, 30 Apr 2019 07:47:48 +0000
Received: from 1.mo173.mail-out.ovh.net ([178.33.111.180])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNUL-0004Ob-QW
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 07:47:43 +0000
Received: from player799.ha.ovh.net (unknown [10.108.42.167])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 3A353FF935
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 09:47:35 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player799.ha.ovh.net (Postfix) with ESMTPSA id CCE9353F9AA5;
 Tue, 30 Apr 2019 07:47:22 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 1/2] ARM: dts: imx6ul: Add csi node
Date: Tue, 30 Apr 2019 09:47:30 +0200
Message-Id: <20190430074730.8236-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 18272792539178488855
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrieefgdduvdeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_004742_002583_F9C5EA42 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.111.180 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGNzaSBub2RlIGZvciBpLk1YNlVMIFNvQy4KClNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4g
U3p5bWFuc2tpIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KLS0tCiBhcmNoL2Fy
bS9ib290L2R0cy9pbXg2dWwuZHRzaSB8IDExICsrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5k
dHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLmR0c2kKaW5kZXggNjJlZDMwYzc4MWVkLi5h
ZjMyMmJjNTgzMzMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5kdHNpCisr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC5kdHNpCkBAIC05NTEsNiArOTUxLDE3IEBACiAJ
CQkJfTsKIAkJCX07CiAKKwkJCWNzaTogY3NpQDIxYzQwMDAgeworCQkJCWNvbXBhdGlibGUgPSAi
ZnNsLGlteDZ1bC1jc2kiLCAiZnNsLGlteDctY3NpIjsKKwkJCQlyZWcgPSA8MHgwMjFjNDAwMCAw
eDQwMDA+OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA3IElSUV9UWVBFX0xFVkVMX0hJR0g+
OworCQkJCWNsb2NrcyA9IDwmY2xrcyBJTVg2VUxfQ0xLX0RVTU1ZPiwKKwkJCQkJIDwmY2xrcyBJ
TVg2VUxfQ0xLX0NTST4sCisJCQkJCSA8JmNsa3MgSU1YNlVMX0NMS19EVU1NWT47CisJCQkJY2xv
Y2stbmFtZXMgPSAiYXhpIiwgIm1jbGsiLCAiZGNpYyI7CisJCQkJc3RhdHVzID0gImRpc2FibGVk
IjsKKwkJCX07CisKIAkJCWxjZGlmOiBsY2RpZkAyMWM4MDAwIHsKIAkJCQljb21wYXRpYmxlID0g
ImZzbCxpbXg2dWwtbGNkaWYiLCAiZnNsLGlteDI4LWxjZGlmIjsKIAkJCQlyZWcgPSA8MHgwMjFj
ODAwMCAweDQwMDA+OwotLSAKMi4xOS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
