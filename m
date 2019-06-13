Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2F543540
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tNQu3bmQvy585wlCc4gg8oZs22kObJx2D+FQRta8Dfc=; b=RAn/aLp+nWHYe6
	oClpT5cjt9BtbI3EbXjkr+4PRZV9ZLhnhnruGv0L5KDAU6ol+1buUiZr2UmDWt+XqWv/h4BWR5anf
	FaXDzE6sAOlmCosARm7prDog1AC9O58Ut+xD1uo+kACq6Uvcck4fpxFIqHj9JUBFbyW383ir41See
	LDc/FmE1ngG0Q6D4sehnUzRhmqVsglQKEQzWdtO5Y7Ia7IdAd1lHPjfFE5EQrtjijAe07IIlghNYl
	hqsXF62QMUd63qLFKwRN2tQdGcWecm3WwBhwpvjzoB7PM4Ms5ny6W0BNoFwW+6HpFAyv/xPt8s5gI
	HG1jiH/ZV0WRy4MUEmDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMu8-0005ib-Ga; Thu, 13 Jun 2019 10:24:24 +0000
Received: from 9.mo179.mail-out.ovh.net ([46.105.76.148])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMtw-0005hs-Vu
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:24:14 +0000
Received: from player779.ha.ovh.net (unknown [10.108.54.67])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 19524136325
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 12:24:07 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player779.ha.ovh.net (Postfix) with ESMTPSA id 219876B09E0C;
 Thu, 13 Jun 2019 10:23:56 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 1/1] ARM: dts: imx6ul: Add PXP node
Date: Thu, 13 Jun 2019 12:23:55 +0200
Message-Id: <20190613102355.20580-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 2613776635584075004
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudehledgvdeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_032413_164752_154CB209 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.76.148 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIFBYUCBub2RlIGZvciBpLk1YNlVML0wgU29DLgoKU2lnbmVkLW9mZi1ieTogU8OpYmFzdGll
biBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPgotLS0KCkNoYW5n
ZXMgZm9yIHYyOgogLSByZW1vdmUgc3RhdHVzIHByb3BlcnR5CiAKIGFyY2gvYXJtL2Jvb3QvZHRz
L2lteDZ1bC5kdHNpICB8IDggKysrKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwuZHRz
aSB8IDYgKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZ1bC5kdHNpCmluZGV4IGYxMDAxMmRlNWViNi4uNzUxY2FhY2E4NWM2IDEwMDY0NAotLS0gYS9h
cmNoL2FybS9ib290L2R0cy9pbXg2dWwuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2
dWwuZHRzaQpAQCAtOTcxLDYgKzk3MSwxNCBAQAogCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJ
CQl9OwogCisJCQlweHA6IHB4cEAyMWNjMDAwIHsKKwkJCQljb21wYXRpYmxlID0gImZzbCxpbXg2
dWwtcHhwIjsKKwkJCQlyZWcgPSA8MHgwMjFjYzAwMCAweDQwMDA+OworCQkJCWludGVycnVwdHMg
PSA8R0lDX1NQSSA4IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCWNsb2NrcyA9IDwmY2xrcyBJ
TVg2VUxfQ0xLX1BYUD47CisJCQkJY2xvY2stbmFtZXMgPSAiYXhpIjsKKwkJCX07CisKIAkJCXFz
cGk6IHNwaUAyMWUwMDAwIHsKIAkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJCQkjc2l6ZS1j
ZWxscyA9IDwwPjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwuZHRzaSBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwuZHRzaQppbmRleCAyMmU0YTMwN2ZhNTkuLmIwMTdl
OTI1YmQ4NyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsbC5kdHNpCisrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bGwuZHRzaQpAQCAtMzQsNiArMzQsMTIgQEAKIAljb21w
YXRpYmxlID0gImZzbCxpbXg2dWxsLW9jb3RwIiwgInN5c2NvbiI7CiB9OwogCismcHhwIHsKKwlj
b21wYXRpYmxlID0gImZzbCxpbXg2dWxsLXB4cCI7CisJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDgg
SVJRX1RZUEVfTEVWRUxfSElHSD4sCisJCSAgICAgPEdJQ19TUEkgMTggSVJRX1RZUEVfTEVWRUxf
SElHSD47Cit9OworCiAmdXNkaGMxIHsKIAljb21wYXRpYmxlID0gImZzbCxpbXg2dWxsLXVzZGhj
IiwgImZzbCxpbXg2c3gtdXNkaGMiOwogfTsKLS0gCjIuMTkuMgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
