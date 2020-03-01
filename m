Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98EC174B71
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 06:31:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4Zmze0UKvUZf27gamRlJ0WDUya/SDKf2O4HVY7VmEDo=; b=KMjoLUao32/q0oujIBHOMuaSdJ
	+TPYnnlk6zyTQvAdPQ9sPGk+pTmC/PVtXt65f7k/rq3tQtsjOMi3TjIGf6kKfGHZGZieH0frj5mmW
	I6HsH2NekFnW+PIZ+Utg6M1qdsI6j0/x7pBgHvRS5yPU6rSSZfqO3GSKscWGH1VSnl0zEEDD7EJfe
	d9BTA33Ur7umjBE9WQt8Cv+2B8BJ3X+CI+kphvfK/DwLL+gbPM/8AQ8IqI/1MjNovrWE8nz2z6bM5
	BFuV9HbsisXMlfgBKWzQ5hOHoujXgVHhE+drYDAhMAlHJCmwqYItF8bnnB9HIAoQjrbDthl65YhTf
	frpvxqxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8HBn-0008OW-Mz; Sun, 01 Mar 2020 05:30:55 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8HBa-0008Kk-68
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 05:30:43 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 88CEB200A32;
 Sun,  1 Mar 2020 06:30:36 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 44BF9200A2B;
 Sun,  1 Mar 2020 06:30:27 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 83DD3402A7;
 Sun,  1 Mar 2020 13:30:16 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: timur@kernel.org, nicoleotsuka@gmail.com, Xiubo.Lee@gmail.com,
 festevam@gmail.com, broonie@kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/8] ARM: dts: imx6qdl: Change asrc-width to asrc-format
Date: Sun,  1 Mar 2020 13:24:13 +0800
Message-Id: <5bb6329e32d7c12019daec403b8f01758df675da.1583039752.git.shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1583039752.git.shengjiu.wang@nxp.com>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
In-Reply-To: <cover.1583039752.git.shengjiu.wang@nxp.com>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_213042_369396_E245FF1C 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asrc_format is more inteligent, which is align with the alsa
definition snd_pcm_format_t, we don't need to convert it to
format in driver, and it can distinguish S24_LE & S24_3LE.
default value is SNDRV_PCM_FORMAT_S16_LE(2).

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index e6b4b8525f98..062d98ee513b 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -481,7 +481,7 @@
 					dma-names = "rxa", "rxb", "rxc",
 							"txa", "txb", "txc";
 					fsl,asrc-rate  = <48000>;
-					fsl,asrc-width = <16>;
+					fsl,asrc-format = <2>;
 					status = "okay";
 				};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
