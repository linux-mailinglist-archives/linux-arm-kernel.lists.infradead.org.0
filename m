Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEDC1BC15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ldpB9E68+LNiP5AktocoCiaTMaP8VgHrHOYjZXXSfks=; b=TF3Qvo/hjpp30VjhvYPyhzUvDe
	90o8mZ0ldqic1l5fBacmBL3tZt+VwS3OlxMrd2PRFzzFxoHlDEsEzDbGmO5mtdv16ZP2hr+Q8kvDj
	la1L5Crg44ev7jjmedZND1jQG8e47A87mJFsvJucjUjsRdvbeB39sLkL2HwHe3kqjd5Nzm72/P1FR
	ZN1rgvfxvFS0Fz/UBvEjExrlTRUMGXwH8wG5PIYdWcK3Gf6pcLqPY1pdzNOyMRcQsiBRpkqfqzucQ
	gzgdyiIoCrtuMkR/t/GRTifxtyO8hCQQekC/LJDr+/0SZgJ4btTOGiqV6mIuCloOOhTKbqDm2L3YI
	fQc9wthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEws-0002sb-G4; Mon, 13 May 2019 17:41:14 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEwj-0002qH-9t
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:41:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id ECAAE4E2051;
 Mon, 13 May 2019 17:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557769264; bh=5WGZvgnOgbtI9aZLQxQtQRD9C4sXKS1AVhuBgV7LlJQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IukaJtGQq4ORbIubREdBi87lC0hoYGJMMfsyXVz7U6f8ErteTShZ5qPmI3itBli6T
 W60sUbIBoAKfUGwodIhAFlKzfFxD4cSO0SgB8qHwt9eF+PSmOXtRkhEVzNjGDUfu+I
 0nPueV6KpFei3X4sLI+4zTi+nQ/WmQ2W6yjnBL4I=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgDf5xvIsCj0; Mon, 13 May 2019 17:41:04 +0000 (UTC)
Received: from midas.localdomain (S0106788a2041785e.gv.shawcable.net
 [70.66.86.75])
 by node.akkea.ca (Postfix) with ESMTPSA id 1CC9D4E204D;
 Mon, 13 May 2019 17:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557769264; bh=5WGZvgnOgbtI9aZLQxQtQRD9C4sXKS1AVhuBgV7LlJQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IukaJtGQq4ORbIubREdBi87lC0hoYGJMMfsyXVz7U6f8ErteTShZ5qPmI3itBli6T
 W60sUbIBoAKfUGwodIhAFlKzfFxD4cSO0SgB8qHwt9eF+PSmOXtRkhEVzNjGDUfu+I
 0nPueV6KpFei3X4sLI+4zTi+nQ/WmQ2W6yjnBL4I=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v10 1/4] MAINTAINERS: add an entry for for arm64 imx
 devicetrees
Date: Mon, 13 May 2019 10:40:54 -0700
Message-Id: <20190513174057.4410-2-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513174057.4410-1-angus@akkea.ca>
References: <20190513174057.4410-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_104105_383706_6D868F56 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an explicit reference to imx* devicetrees

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7707c28628b9..0871a21a5bbb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1648,6 +1648,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
 F:	arch/arm/boot/dts/ls1021a*
 F:	arch/arm64/boot/dts/freescale/fsl-*
 F:	arch/arm64/boot/dts/freescale/qoriq-*
+F:	arch/arm64/boot/dts/freescale/imx*
 
 ARM/GLOMATION GESBC9312SX MACHINE SUPPORT
 M:	Lennert Buytenhek <kernel@wantstofly.org>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
