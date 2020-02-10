Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBE61584AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:23:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cToIIDyPSUWqDuSFly+cIGAptm/B1PgPbvxZqc0Du8I=; b=uI53IwP5J1oL0p
	WTyt4nMsQPaZFv+mJdiTcfnCiF48F5O9gAvHeQuxtx9qHWL2Cvld6TzaQ5HVnd/GDT6vPKpIGoGE2
	Kb7i5/eOw77u6JnwMPdKamLHpebYm5ICLfKUM5Cnt8VOLU4hNd9gIPYcbZtXlVLg4P8di/paGXtob
	A3C8+dsx7xq6VTXsUnaa4q+OJlJDXFearFTSRAjf7kh30HbIRJPvH3GaBstp+1/Qp98t3eYNox3B8
	JC99Y15m3TcWdd4/Iu4SZ+NgMaCZFDgD/LYRXZkzg1cmNavcLty5JBBqX+jOsqvucbQq9VqbOkW+/
	5P/i5zAwWyMAerlRj9lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1GWS-0003d2-Gz; Mon, 10 Feb 2020 21:23:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1GWI-0003bd-9c
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:23:07 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j1GWC-0000yJ-HW; Mon, 10 Feb 2020 22:23:00 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j1GWA-00042p-PF; Mon, 10 Feb 2020 22:22:58 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 0/3] pwm: imx27: fix clk handling
Date: Mon, 10 Feb 2020 22:22:37 +0100
Message-Id: <20200210212240.25513-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200209213106.5067-1-u.kleine-koenig@pengutronix.de>
References: <20200209213106.5067-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_132306_342691_B5E95A47 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pwm@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgp3aGlsZSBsb29raW5nIHRocm91Z2ggdGhlIHB3bS1pbXgyNyBkcml2ZXIgSSBmb3Vu
ZCBzb21lIG1vcmUgYnJva2VuCmNsb2NrIGhhbmRsaW5nIGFkZGl0aW9uYWwgdG8geWVzdGVyZGF5
J3MgcGF0Y2ggKHB3bTogaW14Mjc6IGZpeCBjbGsKaGFuZGxpbmcgaW4gcHdtX2lteDI3X2FwcGx5
KCkpLiBUaGlzIHNlcmllcyBpcyB0byBiZSBhcHBsaWVkIG9uIHRvcCBvZgp0aGlzIHBhdGNoLgoK
VXdlIEtsZWluZS1Lw7ZuaWcgKDMpOgogIHB3bTogaW14Mjc6IFNpbXBsaWZ5IGhlbHBlciBmdW5j
dGlvbiB0byBlbmFibGUgYW5kIGRpc2FibGUgY2xvY2tzCiAgcHdtOiBpbXgyNzogRG9uJ3QgZGlz
YWJsZSBjbGtzIGF0IGRldmljZSByZW1vdmUgdGltZQogIHB3bTogaW14Mjc6IEVuc3VyZSBjbG9j
a3MgYmVpbmcgb24gaWZmIHRoZSBQV00gaXMgb24KCiBkcml2ZXJzL3B3bS9wd20taW14MjcuYyB8
IDI5ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5z
ZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgotLSAKMi4yNC4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
