Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F0B109066
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 15:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AONTjP7WhD/fVj8WMgoa56t/NLaxoqmBRmLz9N/4byU=; b=D5cYEH4vMPV3uM
	kqQ6wLLjsGGavVvRf/9pzsEDkz3cngnCGCslNgLw5lzcje5AmDUZyMpIcGVwfGQcJYQsEaEDCoxmm
	LNfwom9JZGn5NZZg3b16jkTK1psS8vFrdkQe4+ownTun8jXRSbcnR1lwZd89WqX3Nr8gHwDv+zFmG
	Gpa/DwCVHSHrt1uCU5LsnxLsuPp+5lNw24oerX0LWGkrdfTYYnklRmMdX0lXb7hhluBBiFp6V2SNS
	zf690tiAezx5RF8TsfPxSerGUEUwY+2hAikJajeNugzw9iOwqLNPG1s11E2hselO8LjkNJSCh131t
	72Ws8rUWKJTI1QKmSQow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFhf-0000Hy-Kw; Mon, 25 Nov 2019 14:51:03 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFhT-0000Gm-7G
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 14:50:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 0E0FEFB02;
 Mon, 25 Nov 2019 15:50:46 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jRIkPuWtdP79; Mon, 25 Nov 2019 15:50:43 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id CA0914928B; Mon, 25 Nov 2019 15:50:07 +0100 (CET)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Anson Huang <Anson.Huang@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Carlo Caione <ccaione@baylibre.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] arm64: dts: imx8mq: Add eLCDIF controller
Date: Mon, 25 Nov 2019 15:50:05 +0100
Message-Id: <cover.1574693313.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_065051_415800_4C2D4641 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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

V2l0aCBzb21lIG1pbmltYWwgc3VwcG9ydCBvbiBpbXg4bXEgd2UgbWlnaHQgYXMgd2VsbCBhZGQg
aXQgdG8gdGhlIERUCgpDaGFuZ2VzIGZyb20gdjE6Ci0gUGVyIHJldmlldyBjb21tZW50cyBieSBG
YWJpbyBFc3RldmFtCiAgLSBEb2N1bWVudCBjb21wYXRpYmxlCiAgLSB1c2UgbGNkLWNvbnRyb2xs
ZXIgaW5zdGVhZCBvZiBsY2RpZiBhcyBub2RlIG5hbWUKLSBBZGQgUmV2aWV3ZWQtYnk6IGZyb20g
RmFiaW8gRXN0ZXZhbSwgdGhhbmtzIQoKR3VpZG8gR8O8bnRoZXIgKDIpOgogIGR0LWJpbmRpbmdz
OiBteHNmYjogQWRkIGNvbXBhdGlibGUgZm9yIGlNWDhNUQogIGFybTY0OiBkdHM6IGlteDhtcTog
QWRkIGVMQ0RJRiBjb250cm9sbGVyCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9t
eHNmYi50eHQgICAgICAgfCAgMSArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXEuZHRzaSAgICAgICB8IDE3ICsrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKykKCi0tIAoyLjIzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
