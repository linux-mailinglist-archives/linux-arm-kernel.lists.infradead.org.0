Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD2C239D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5yc7rdVuTTuV0fVLOLVZ+/cMS4+WyP6337AdT4e0ed4=; b=fuG0gdYgU+V4OjBg7EvIvSmIip
	sE68/IpGFrWKGWN8DCilSCMdFmw08hziPbM3/wFMEUofeymfJl+FM+vsiQlladxtt/QBYqy00W6tM
	W5YBdfzFnZ0wva3kJwXKTf6A6anSmbo4U4wWzkFAKlPl5DMGwSNaqprSZGcOzG44pBM0ZcXl462Fj
	GbDpGXAwOsfQStvaZE04jlFbWrGoOqu+XrSoW9esMK7C9aeqidOxIez/3TUy5oz3TMcItTfnxvJhZ
	TDfnQz8goaNAxmf8vX3qaPjEIwRWiaxhats5NwMkGdHLKqfSu1EsknUd+swelZ+AWwpnRuMsJ+JKF
	iNCB2NcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjCo-0003ip-7T; Mon, 20 May 2019 14:23:58 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjCV-0003ZY-FI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:23:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id B93AF4E2051;
 Mon, 20 May 2019 14:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558362217; bh=Ru5/wWVJ5n4Ox9lI7TeMXEImkM/yOICYH0UWN7Qj7CE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=uxTVy4kYJOzZkEzPz374r2smV5M0y26J54DkKtY8y5PaoDm43V1Gb7l4n6ug3m3B0
 i/ee/p+WwFTB29pEOif5L354FgTZim4BK7so1wR7f+XsBcBV4aDCMDfH3HeYm5Jh6t
 q3cdvVsoOwWgeMewWsmPCBoT4VN3fvfzSqtrZ/Xo=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2z0Wxzn4ig0; Mon, 20 May 2019 14:23:37 +0000 (UTC)
Received: from midas.localdomain (S0106788a2041785e.gv.shawcable.net
 [70.66.86.75])
 by node.akkea.ca (Postfix) with ESMTPSA id AB2FC4E204D;
 Mon, 20 May 2019 14:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558362217; bh=Ru5/wWVJ5n4Ox9lI7TeMXEImkM/yOICYH0UWN7Qj7CE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=uxTVy4kYJOzZkEzPz374r2smV5M0y26J54DkKtY8y5PaoDm43V1Gb7l4n6ug3m3B0
 i/ee/p+WwFTB29pEOif5L354FgTZim4BK7so1wR7f+XsBcBV4aDCMDfH3HeYm5Jh6t
 q3cdvVsoOwWgeMewWsmPCBoT4VN3fvfzSqtrZ/Xo=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v13 1/4] MAINTAINERS: add an entry for for arm64 imx
 devicetrees
Date: Mon, 20 May 2019 07:23:27 -0700
Message-Id: <20190520142330.3556-2-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190520142330.3556-1-angus@akkea.ca>
References: <20190520142330.3556-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_072339_509052_4CF6B905 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an explicit reference to imx* devicetrees

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a2cd3690b6b1..019c945d308d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1630,6 +1630,7 @@ R:	NXP Linux Team <linux-imx@nxp.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
+F:	arch/arm64/boot/dts/freescale/imx*
 N:	imx
 N:	mxs
 X:	drivers/media/i2c/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
