Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC50E13D51B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 08:37:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh3fhHdZKvoJRiIetPK+fhihVSAxKT2T9j34V1qIDxI=; b=AfhcNWTfr0GwKd
	x7EVTjMsJDduhnHNXaQgoIwaZ5Q6pEEcP06GMMEWwWqHl8Qs5XyvGlZp1WrhZuOqJYBWGS9z0ZD1s
	XoGWnZDHvqOFPH8pQ1Ko31QCUR8gbg59zFYSq3HWggebjHp/S5H6NflR3GhyllwTucO96rQn5cP0b
	F9l/vRq+b40dgXQcUOLuQzS1UA7CLD9QsPgfr3q5Pwq4BpZ38tm/GjhFJj2uJ7aB/dWR9D6l/Godb
	T2R06yeaBuiRkrh98w0Twpa1o4T7F5CiGOmMiCsJqF3AIq6Sql3qOFWziB1sC8cuuGW62BY5Touax
	dl6kvkfv/9RK04Asultg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irzio-0008BO-EI; Thu, 16 Jan 2020 07:37:42 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irzib-00089v-Dm
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 07:37:34 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3E167200682;
 Thu, 16 Jan 2020 08:37:28 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 307A7200659;
 Thu, 16 Jan 2020 08:37:28 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 826722047A;
 Thu, 16 Jan 2020 08:37:27 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH v2 1/3] dt-bindings: clock: imx8mn: add SNVS clock
Date: Thu, 16 Jan 2020 09:37:16 +0200
Message-Id: <20200116073718.4475-2-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116073718.4475-1-horia.geanta@nxp.com>
References: <20200116073718.4475-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_233729_603603_353B0E3D 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIG1hY3JvIGZvciB0aGUgU05WUyBjbG9jayBvZiB0aGUgaS5NWDhNTi4KClNpZ25lZC1vZmYt
Ynk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgotLS0KIGluY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svaW14OG1uLWNsb2NrLmggfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJp
bmRpbmdzL2Nsb2NrL2lteDhtbi1jbG9jay5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9p
bXg4bW4tY2xvY2suaAppbmRleCAwZjJiODQyM2NlMWQuLjQzODgzZmU2NWRiNSAxMDA2NDQKLS0t
IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9pbXg4bW4tY2xvY2suaAorKysgYi9pbmNsdWRl
L2R0LWJpbmRpbmdzL2Nsb2NrL2lteDhtbi1jbG9jay5oCkBAIC0yMjgsNiArMjI4LDggQEAKICNk
ZWZpbmUgSU1YOE1OX1NZU19QTEwyXzMzM01fQ0cJCQkyMDkKICNkZWZpbmUgSU1YOE1OX1NZU19Q
TEwyXzUwME1fQ0cJCQkyMTAKIAotI2RlZmluZSBJTVg4TU5fQ0xLX0VORAkJCQkyMTEKKyNkZWZp
bmUgSU1YOE1OX0NMS19TTlZTX1JPT1QJCQkyMTEKKworI2RlZmluZSBJTVg4TU5fQ0xLX0VORAkJ
CQkyMTIKIAogI2VuZGlmCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
