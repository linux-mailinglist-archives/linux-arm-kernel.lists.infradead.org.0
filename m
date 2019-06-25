Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0FB52693
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXoqFChkXlPXrLnu3Ol2Ert1yZUyfKjDAvAE82Of0Js=; b=L3FMrhCgWAxk1W
	l58O8Nq8KfQym/riUqczaPKRyBCSEdFvC7B+rQCAH4uHGPGhxroZ/eWYSCdKu9iQrbzRBrVYfomeA
	l315sJYhsERclhraSkAoLh+w0q548pgurBYlkN5YnPQubgwajyQ7gOBHx/4japlCc1ZOGDqPVw5Lt
	9U5eSdyecizRVY1Xs+oQRRpImX7UViUV9dGqndIZsBZAx6sTAEJlD2BZvJht4vQZgaoMQDwWItT/I
	v9W8+4qYCZ9HIviH/GcS7aSn1750sq/dm6jbdbz6EfSEMivWY/gzCIkRbnuh6AroT8Du72QyWipfS
	ZFuYvHUn6IhIFuRyTHlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgnm-0003Gu-O2; Tue, 25 Jun 2019 08:27:42 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgnY-0003FH-AJ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:27:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 64EF2FB04;
 Tue, 25 Jun 2019 10:27:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vZ3hhI6je8_5; Tue, 25 Jun 2019 10:27:22 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 18B2148D55; Tue, 25 Jun 2019 10:27:22 +0200 (CEST)
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
Subject: [PATCH 1/2] arm64: dts: imx8mq: Add MIPI D-PHY
Date: Tue, 25 Jun 2019 10:27:20 +0200
Message-Id: <613eef8ee6fd427a2fb5eb91865e71f3ee6bded6.1561451144.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1561451144.git.agx@sigxcpu.org>
References: <cover.1561451144.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_012728_530479_9A3AD0B1 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgbm9kZSBmb3IgdGhlIE1peGVsIE1JUEkgRC1QSFksICJkaXNhYmxlZCIgYnkgZGVmYXVs
dC4KClNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQog
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgfCAxMyArKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKaW5kZXggZDA5YjgwOGVmZjg3Li44OTFlZTc1NzhjMmQg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCisr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCkBAIC03MjgsNiAr
NzI4LDE5IEBACiAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJCX07CiAKKwkJCWRwaHk6IGRw
aHlAMzBhMDAzMDAgeworCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhtcS1taXBpLWRwaHkiOwor
CQkJCXJlZyA9IDwweDMwYTAwMzAwIDB4MTAwPjsKKwkJCQljbG9ja3MgPSA8JmNsayBJTVg4TVFf
Q0xLX0RTSV9QSFlfUkVGPjsKKwkJCQljbG9jay1uYW1lcyA9ICJwaHlfcmVmIjsKKwkJCQlhc3Np
Z25lZC1jbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX0RTSV9QSFlfUkVGPjsKKwkJCQlhc3NpZ25l
ZC1jbG9jay1wYXJlbnRzID0gPCZjbGsgSU1YOE1RX1ZJREVPX1BMTDFfT1VUPjsKKwkJCQlhc3Np
Z25lZC1jbG9jay1yYXRlcyA9IDwyNDAwMDAwMD47CisJCQkJI3BoeS1jZWxscyA9IDwwPjsKKwkJ
CQlwb3dlci1kb21haW5zID0gPCZwZ2NfbWlwaT47CisJCQkJc3RhdHVzID0gImRpc2FibGVkIjsK
KwkJCX07CisKIAkJCWkyYzE6IGkyY0AzMGEyMDAwMCB7CiAJCQkJY29tcGF0aWJsZSA9ICJmc2ws
aW14OG1xLWkyYyIsICJmc2wsaW14MjEtaTJjIjsKIAkJCQlyZWcgPSA8MHgzMGEyMDAwMCAweDEw
MDAwPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
