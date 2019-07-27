Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5802277870
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 13:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fimQ8SUZ9CC8aZHHR9zERn4K0TUKZsJxFznbK1nmhwg=; b=tk9lH2HV+/2SBw
	RZ4SFKsgqoiqbGwWQ/NRTk15rNV0o7ILMCA8hbg/czxgpG3HUCtJWiODqqt/dr353IXeNd2dz0DKI
	ArbOktx4LroCaabpsI4LrqyT7gWR8sTOVYFeQ91xKsWUvj4GiuXKb7Ffq/90BO1HAxgbkqB9GyCF7
	2pRRlfHicIKQc9oRKa82mI50fFYWa96BW/OJ/j5BkmnaKViZlHPSpqUQpZbcDIE43F2qPbX7pPpeF
	8N4O8U6CFZOWQI8fLBde2sEvNNLEY9JchCaY9Fc4mKVdbE0MGH87mOW4Z1IkYeREU+ZS2ZuMvT98g
	fGnicdrPVKdG+YjE6Kpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrKtW-0001eV-0o; Sat, 27 Jul 2019 11:29:46 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrKtP-0001dq-NU
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 11:29:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 08761FB03;
 Sat, 27 Jul 2019 13:29:32 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Mjeha8KiY-P; Sat, 27 Jul 2019 13:29:31 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id D550146B09; Sat, 27 Jul 2019 13:29:30 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: imx: i.MX8MN: Use space instead of tab
Date: Sat, 27 Jul 2019 13:29:30 +0200
Message-Id: <35f999387bca037731dd963a5901909d6e6d0a17.1564226824.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_042939_932443_EB386BCC 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBmaXhlcyAnbWFrZSBkdF9iaW5kaW5nX2NoZWNrJwoKU2lnbmVkLW9mZi1ieTogR3VpZG8g
R8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KLS0tClNlZW4gb24gbmV4dC0yMDE5MDcyNgoKIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9pbXg4bW4tY2xvY2sueWFtbCB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9pbXg4bW4t
Y2xvY2sueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9pbXg4
bW4tY2xvY2sueWFtbAppbmRleCA0NTRjNWI0NGIyZWUuLjYyMmYzNjU4YmQ5ZiAxMDA2NDQKLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2lteDhtbi1jbG9jay55
YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9pbXg4bW4t
Y2xvY2sueWFtbApAQCAtNzEsNyArNzEsNyBAQCBleGFtcGxlczoKICAgICAgICAgY29tcGF0aWJs
ZSA9ICJmaXhlZC1jbG9jayI7CiAgICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsKICAgICAgICAg
Y2xvY2stZnJlcXVlbmN5ID0gPDMyNzY4PjsKLQljbG9jay1vdXRwdXQtbmFtZXMgPSAib3NjXzMy
ayI7CisgICAgICAgIGNsb2NrLW91dHB1dC1uYW1lcyA9ICJvc2NfMzJrIjsKICAgICB9OwogCiAg
ICAgb3NjXzI0bTogY2xvY2stb3NjLTI0bSB7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
