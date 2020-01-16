Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D774D13D51E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 08:38:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BauWjWoijLoAJ1VWiNjFDLfqxBcgB+2J5Q85PQMNp9o=; b=e+O9/hQFC6WdjU
	enBhsvzgJMf2sIXSKXP03CtlObXXo3VOdAyj3BvQIj5GlDBgIOEPGgGHNdUTxmya2uCS/M/NQiCaj
	0qjqxRZsDnh7sZFQZ+ANF0feNiHPgZE8JTzgA9SBh3A8l8ncs0o7dtMjVMKZk0D+SZ+vw982mHLAt
	uyVuVsiHatgw9jJn3FzLqF9pMtRt32Ucb5Y8wk2jMu826U9SOGgxdkwXTmx5Jjeod9Nv7DOEYdfE4
	/JtO0sNUj79exqAom2rukVBHkti57BgEgilpaVwrLpwBy9L4JzL9QL3vILOqP85r3rbJdWZdefcqj
	uS6xJNd8TBcZaNfAgRWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irzj7-0008LR-HN; Thu, 16 Jan 2020 07:38:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irzib-00089t-7g
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 07:37:35 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 84649200668;
 Thu, 16 Jan 2020 08:37:27 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 73C4B200659;
 Thu, 16 Jan 2020 08:37:27 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C4D792047A;
 Thu, 16 Jan 2020 08:37:26 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH v2 0/3] clk: imx8mn: add snvs clock
Date: Thu, 16 Jan 2020 09:37:15 +0200
Message-Id: <20200116073718.4475-1-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_233729_425465_1C68AFE8 
X-CRM114-Status: UNSURE (   8.93  )
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

djI6IGFkZCBjb21tbWl0IG1lc3NhZ2UgZm9yIHRyaXZpYWwgcGF0Y2ggMS8zCgpUaGlzIHBhdGNo
IHNldCBhZGRzIHRoZSBjbG9jayBmb3Igc252cyBtb2R1bGUgb24gaW14OG1uLgpEVCBiaW5kaW5n
cywgY2xrIGRyaXZlciBhcmUgdXBkYXRlZCBhY2NvcmRpbmdseS4KRFQgZm9yIGlteDhtbiAoc252
cy1ydGMtbHAgbm9kZSkgaXMgYWxzbyB1cGRhdGVkLgoKSG9yaWEgR2VhbnTEgyAoMyk6CiAgZHQt
YmluZGluZ3M6IGNsb2NrOiBpbXg4bW46IGFkZCBTTlZTIGNsb2NrCiAgY2xrOiBpbXg4bW46IGFk
ZCBTTlZTIGNsb2NrIHRvIGNsb2NrIHRyZWUKICBhcm02NDogZHRzOiBpbXg4bW46IGFkZCBjbG9j
ayBmb3Igc252cyBydGMgbm9kZQoKIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDht
bi5kdHNpIHwgMSArCiBkcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtbi5jICAgICAgICAgICAgICB8
IDEgKwogaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9pbXg4bW4tY2xvY2suaCAgfCA0ICsrKy0K
IDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgotLSAKMi4x
Ny4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
