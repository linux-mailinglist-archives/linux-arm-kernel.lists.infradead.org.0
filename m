Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DBD1FE078
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74+zw9bfM1oCCK2J5J3mOqRsoqR68DufLiDgy2+KBQk=; b=FDV5jPKRxlsPk2
	mPJVzYC4RfypcsaXBNGeGqPhVuwTVoKHpxU+NfL4lFZ+CGNh3V2TvgAjBJMZBvhnylwtqgpljOGNU
	rBNEGK6vrRe318xss/VgXL0/2FG+p85Hy/34mcVOCWB9ybuGhVMmrEwTptght2CmsPKwW4C54Z/kc
	8NsN/+HyZjWdCtReD9SLIuoXg4cqr/trD2Dk33NbAhe+INQdf7dYB0vxdItAj8Ey2IDN3pOzydYA3
	Y96gN1Uky0bKqDiDIlI0VDMmgIA0Tcy59M5ciHrniK4wTPK4H1eFFUujVv7WmjtywNZ7luf6AI9sE
	bUN2OIiokOdIpNvV2cLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljfT-00071q-0a; Thu, 18 Jun 2020 01:48:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljEK-0004Sb-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:20:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CF3A20776;
 Thu, 18 Jun 2020 01:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443236;
 bh=Jiv2L8x1UrhUVZJ3+GJukZ7OLVFFYw+CmLuVM0LVPtU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YgBPV2dP1cCZ23w9s9eJ4Ktj9iXi7h1MnRLVjQtV+qpwp2sDs/svrsufYygLa5mId
 hkx8ZPk/Y2ZJKWOlEfKZvUQkx4zlOpqr25CeB/+mcaZpoEofA2jFqpUMFGS6H7wkub
 GQOde/a+68vUh4/lyONrPMr81Tv2kGvEx0+6wsyY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 188/266] mfd: stmfx: Disable IRQ in suspend to
 avoid spurious interrupt
Date: Wed, 17 Jun 2020 21:15:13 -0400
Message-Id: <20200618011631.604574-188-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_182036_957554_EAE8958B 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Amelie Delaunay <amelie.delaunay@st.com>,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Amelie Delaunay <amelie.delaunay@st.com>

[ Upstream commit 97eda5dcc2cde5dcc778bef7a9344db3b6bf8ef5 ]

When STMFX supply is stopped, spurious interrupt can occur. To avoid that,
disable the interrupt in suspend before disabling the regulator and
re-enable it at the end of resume.

Fixes: 06252ade9156 ("mfd: Add ST Multi-Function eXpander (STMFX) core driver")
Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mfd/stmfx.c       | 6 ++++++
 include/linux/mfd/stmfx.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/mfd/stmfx.c b/drivers/mfd/stmfx.c
index 1977fe95f876..711979afd90a 100644
--- a/drivers/mfd/stmfx.c
+++ b/drivers/mfd/stmfx.c
@@ -296,6 +296,8 @@ static int stmfx_irq_init(struct i2c_client *client)
 	if (ret)
 		goto irq_exit;
 
+	stmfx->irq = client->irq;
+
 	return 0;
 
 irq_exit:
@@ -486,6 +488,8 @@ static int stmfx_suspend(struct device *dev)
 	if (ret)
 		return ret;
 
+	disable_irq(stmfx->irq);
+
 	if (stmfx->vdd)
 		return regulator_disable(stmfx->vdd);
 
@@ -529,6 +533,8 @@ static int stmfx_resume(struct device *dev)
 	if (ret)
 		return ret;
 
+	enable_irq(stmfx->irq);
+
 	return 0;
 }
 #endif
diff --git a/include/linux/mfd/stmfx.h b/include/linux/mfd/stmfx.h
index 3c67983678ec..744dce63946e 100644
--- a/include/linux/mfd/stmfx.h
+++ b/include/linux/mfd/stmfx.h
@@ -109,6 +109,7 @@ struct stmfx {
 	struct device *dev;
 	struct regmap *map;
 	struct regulator *vdd;
+	int irq;
 	struct irq_domain *irq_domain;
 	struct mutex lock; /* IRQ bus lock */
 	u8 irq_src;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
