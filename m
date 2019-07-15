Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084D46873B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 12:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckzIDjn9XpD3zudtx3+PRWoj2qOzVXj/8kuTpIa4aVs=; b=nGPbsRfPCjzUgI
	kfQdRd2tlbLEj/E1ThZ8w0ahF86IdqfP1/MAvix7RD6xTPV3RwAHq5FY71VsGTexB1gdyrMxHK4za
	zVau03gmxtB8hnGCeEazNvLwkuqLy4vQ/PKMJ/RU+B3jxOln5+3fIAXXsrBWRQ4Ee5PyCI/nu7PGa
	IxWW/nno7rBoywZx25m4fsjqIMjjvAFawY6N3naFqhc/1e7gAknlrlbDSA9YFVyVAc6Y+WvSLeF6d
	53XVgdajIICjWMY1zZRPmkVZsWgUq4PAyAbHPFjFbBuZIuZN+SW1wUwR/sbHBQ8P94vTZ3wUViSgB
	9mtMG8vJSU7Dwp1DaptQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmyT0-0007f2-C0; Mon, 15 Jul 2019 10:44:22 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmyRu-000769-1P
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 10:43:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 776DBFB04;
 Mon, 15 Jul 2019 12:43:09 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mfQiNqbJ9g80; Mon, 15 Jul 2019 12:43:07 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 74E8D40178; Mon, 15 Jul 2019 12:43:06 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: imx8mq: Add MIPI D-PHY
Date: Mon, 15 Jul 2019 12:43:05 +0200
Message-Id: <30c7622bf590670190b93c9b5b6dd1e8f809bbb2.1563187253.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1563187253.git.agx@sigxcpu.org>
References: <cover.1563187253.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_034314_244222_4A3050D2 
X-CRM114-Status: GOOD (  10.05  )
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

QWRkIGEgbm9kZSBmb3IgdGhlIE1peGVsIE1JUEkgRC1QSFksICJkaXNhYmxlZCIgYnkgZGVmYXVs
dC4KClNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+CkFja2Vk
LWJ5OiBBbmd1cyBBaW5zbGllIChQdXJpc20pIDxhbmd1c0Bha2tlYS5jYT4KLS0tCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSB8IDEzICsrKysrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXEuZHRzaQppbmRleCBkMDliODA4ZWZmODcuLjg5MWVlNzU3OGMyZCAxMDA2NDQK
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKQEAgLTcyOCw2ICs3MjgsMTkg
QEAKIAkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQkJfTsKIAorCQkJZHBoeTogZHBoeUAzMGEw
MDMwMCB7CisJCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLW1pcGktZHBoeSI7CisJCQkJcmVn
ID0gPDB4MzBhMDAzMDAgMHgxMDA+OworCQkJCWNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfRFNJ
X1BIWV9SRUY+OworCQkJCWNsb2NrLW5hbWVzID0gInBoeV9yZWYiOworCQkJCWFzc2lnbmVkLWNs
b2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfRFNJX1BIWV9SRUY+OworCQkJCWFzc2lnbmVkLWNsb2Nr
LXBhcmVudHMgPSA8JmNsayBJTVg4TVFfVklERU9fUExMMV9PVVQ+OworCQkJCWFzc2lnbmVkLWNs
b2NrLXJhdGVzID0gPDI0MDAwMDAwPjsKKwkJCQkjcGh5LWNlbGxzID0gPDA+OworCQkJCXBvd2Vy
LWRvbWFpbnMgPSA8JnBnY19taXBpPjsKKwkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQkJfTsK
KwogCQkJaTJjMTogaTJjQDMwYTIwMDAwIHsKIAkJCQljb21wYXRpYmxlID0gImZzbCxpbXg4bXEt
aTJjIiwgImZzbCxpbXgyMS1pMmMiOwogCQkJCXJlZyA9IDwweDMwYTIwMDAwIDB4MTAwMDA+Owot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
