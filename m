Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B26613BB6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YER1DZduNXN3T354YaEhdQgyMKFjhZMEigpb7QcixwY=; b=TjPHoF3fuea0Pq
	Cmddbx6WduNLce+4U7ctFnoeJsjI3gDJHF23Skodmnhr1ud+zTbxXSAV9bRjjaArKQar43w4F22d5
	VWQ0aKac6Z2HnbQsjiM2sGJX2HuduS5x2mHaVZ5CCbW6zpQWcMsvA5xdu4H5Z/t4nlbYaBgu2yzoW
	PzatEGCAsokD3UTptoNd5vEZl+YC1AQ1VGlRQTm9UeZzzQgZa8sa39Fp3/Q02x3cAPgk4akw/xVay
	jD5wAtS/FWO6dBdyg6FdCG1tdEOSdh4geAz1f2rm+bTxSlJtEh3HVgUQCxb5mFhvODUJNCxEnEuFi
	RNZ5KVGniiTzcTYbwyoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ireHU-0003Nt-Pz; Wed, 15 Jan 2020 08:44:04 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ireGO-0002kW-B3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:43:03 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F21961A05A6;
 Wed, 15 Jan 2020 09:42:47 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E36091A0212;
 Wed, 15 Jan 2020 09:42:47 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0233920340;
 Wed, 15 Jan 2020 09:42:46 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/3] clk: imx8mn: add snvs clock
Date: Wed, 15 Jan 2020 10:42:22 +0200
Message-Id: <20200115084225.30464-1-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_004256_513515_B1ACF8A1 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBzZXQgYWRkcyB0aGUgY2xvY2sgZm9yIHNudnMgbW9kdWxlIG9uIGlteDhtbi4K
RFQgYmluZGluZ3MsIGNsayBkcml2ZXIgYXJlIHVwZGF0ZWQgYWNjb3JkaW5nbHkuCkRUIGZvciBp
bXg4bW4gKHNudnMtcnRjLWxwIG5vZGUpIGlzIGFsc28gdXBkYXRlZC4KCkhvcmlhIEdlYW50xIMg
KDMpOgogIGR0LWJpbmRpbmdzOiBjbG9jazogaW14OG1uOiBhZGQgU05WUyBjbG9jawogIGNsazog
aW14OG1uOiBhZGQgU05WUyBjbG9jayB0byBjbG9jayB0cmVlCiAgYXJtNjQ6IGR0czogaW14OG1u
OiBhZGQgY2xvY2sgZm9yIHNudnMgcnRjIG5vZGUKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bW4uZHRzaSB8IDEgKwogZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4bW4uYyAgICAg
ICAgICAgICAgfCAxICsKIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svaW14OG1uLWNsb2NrLmgg
IHwgNCArKystCiAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
