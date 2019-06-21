Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965CE4E383
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xqqBqXjom9tz/SAz4nEPzYk3/WfTksxBNjMxjn/+WLk=; b=avP/OxsXFivJ3n+4qwiuJDz1Fr
	ggdTSqbOXWvqvPd9x+B2SvK2Mof8THzJozxmNrFXhLrxDZOKbzOyM5ueYOAd7InZaUZY3TI6RQybC
	5xPEZxudNxI5P5+9gHbDV/OfAycGoC9L3l9DMOC97Wb2GnlnIwNvnRnfbO9ORL++p1JyPdYNbBzQX
	TJ+4rWH508c/atC0uw8Xml5NfIUEGfjUuIFVHlCNAdYrwD7vMQk+to+LHWroRSXg+tko9aIpttRkX
	SeXtVUbC+lyJjviSbC94dGJpT+1LO4Qw/TE8usn0V0XOOMfH4Y0lz1kLkH32MZGcg//A0X5LDUXpf
	iUnk5E9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFpS-0004S4-53; Fri, 21 Jun 2019 09:27:30 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFdM-0008OY-0D
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:15:01 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 97DF625BE7B;
 Fri, 21 Jun 2019 19:14:05 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 9E543940954; Fri, 21 Jun 2019 11:14:03 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 1/1] ARM: shmobile: Remove GENERIC_PHY from shmobile_defconfig
Date: Fri, 21 Jun 2019 11:14:03 +0200
Message-Id: <b995421faef5b24ee8ec60d66b356b57ca0c8b77.1561101309.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561101309.git.horms+renesas@verge.net.au>
References: <cover.1561101309.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021500_240801_67D91FC1 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Biju Das <biju.das@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Biju Das <biju.das@bp.renesas.com>

Remove the GENERIC_PHY config option from shmobile_defconfig, as it is
selected by PHY_RCAR_GEN3_USB2.

PHY_RCAR_GEN3_USB2 is enabled by the commit 0cd4f4f10245d1d9616e00245
("ARM: shmobile: Enable PHY_RCAR_GEN3_USB2 in shmobile_defconfig").

Signed-off-by: Biju Das <biju.das@bp.renesas.com>
Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/configs/shmobile_defconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/configs/shmobile_defconfig b/arch/arm/configs/shmobile_defconfig
index eb02ba9ec6e6..c6c70355141c 100644
--- a/arch/arm/configs/shmobile_defconfig
+++ b/arch/arm/configs/shmobile_defconfig
@@ -197,7 +197,6 @@ CONFIG_PWM=y
 CONFIG_PWM_RCAR=y
 CONFIG_PWM_RENESAS_TPU=y
 CONFIG_RESET_CONTROLLER=y
-CONFIG_GENERIC_PHY=y
 CONFIG_PHY_RCAR_GEN2=y
 CONFIG_PHY_RCAR_GEN3_USB2=y
 # CONFIG_DNOTIFY is not set
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
