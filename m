Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E1019822
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 07:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NON2v7XtPjQf9tS2Y99kQcDFxkzME+48j8upeKkAC48=; b=QJPb2wS96EfDRwafwPTs+4FSDe
	9LdR8RiaH4Yett8AoucZ2QF4LSB7j2KmgMclTpGQcVottzlLnthTPLem/PO0pt+KMBXSkZrXxDBGp
	yda2PC51jEQLnVOq60AvYHHGnXCvrnnD8luwzR2CWCAR3tTkdcn84RJTIkEzV+xNeDHmKI24gVEbt
	+HsHwmFgQC3MTUlXlbBfn9oV3nsoykMGSzMLpV7BK6B3hkKmfRryS1LYRD4oDAzeXV5c8BAjhUeQc
	S1Gk1pum18PgzzkbuZ1gwqCZjAO5bGP/SZbvikbhys3UQEOA+0vRLEokJElbKbAv4caJ2YCfUgoZh
	T5FQkpcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOyG3-0002Rc-UL; Fri, 10 May 2019 05:39:47 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyFn-0002LN-C7
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 05:39:32 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BC22B200195;
 Fri, 10 May 2019 07:39:27 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AF31E2000D3;
 Fri, 10 May 2019 07:39:23 +0200 (CEST)
Received: from nxp.com (lsv03080.swis.in-blr01.nxp.com [92.120.146.77])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 85473402F8;
 Fri, 10 May 2019 13:39:17 +0800 (SGT)
From: Jagdish Gediya <jagdish.gediya@nxp.com>
To: linux-arm-kernel@lists.infradead.org, olof@lixom.net, arnd@arndb.de,
 shawnguo@kernel.org
Subject: [PATCH 3/3] arm64: defconfig: Enable CONFIG_MTD_PHYSMAP_OF
Date: Fri, 10 May 2019 11:09:11 +0530
Message-Id: <1557466751-30055-3-git-send-email-jagdish.gediya@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557466751-30055-1-git-send-email-jagdish.gediya@nxp.com>
References: <1557466751-30055-1-git-send-email-jagdish.gediya@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_223931_744720_C89421B0 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: leoyang.li@nxp.com, Jagdish Gediya <jagdish.gediya@nxp.com>,
 prabhakar.kushwaha@nxp.com, bbrezillon@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable CONFIG_MTD_PHYSMAP_OF to access NOR flashes mapped
physically into the CPU's memory e.g NOR flash connected over
Freescale IFC.

commit 642b1e8dbed7bb ("mtd: maps: Merge physmap_of.c into
physmap-core.c") don't allow to enable CONFIG_MTD_PHYSMAP_OF
alone so CONFIG_MTD_PHYSMAP is also enabled.

Signed-off-by: Jagdish Gediya <jagdish.gediya@nxp.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e7f49c..1b3f962 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -197,6 +197,8 @@ CONFIG_MTD_CFI=y
 CONFIG_MTD_CFI_INTELEXT=y
 CONFIG_MTD_CFI_AMDSTD=y
 CONFIG_MTD_CFI_STAA=y
+CONFIG_MTD_PHYSMAP=y
+CONFIG_MTD_PHYSMAP_OF=y
 CONFIG_MTD_M25P80=y
 CONFIG_MTD_NAND=y
 CONFIG_MTD_NAND_DENALI_DT=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
