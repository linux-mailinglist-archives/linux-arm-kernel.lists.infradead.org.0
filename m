Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ED9356B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OEEUZoGrogOF4PgWTJVPIwq6gMMQXxDNqLngakpNNt8=; b=e/Ptn7c3jDSi7M
	JzH4CZSyPkQUOj3g/nsnEKSvBaJgr383jVvjcWdZdJi4fCh5dQxYjP0SqBwMqU7BZfeqMq6r08SUJ
	ohhj3dDwOu8TzqFsRyJ7Jywrfajzg2jjmvZ3fShwU+snfgSjMRXvY6Oy3xaIZ5l7Zjo0khyX+rCY+
	tjfk/cXaEvY5VosT/AURyJwQB8DXDwGqLH0sFdJk2APwYSfGZe8Z1fTQ4tU0YCM+6hPpJmU1g7x9v
	Cukev6CT3zVFKyLxJys1PZtLPD3Csgxq9pN5jLBAwT/lQooSEOpyUMvI37tw/mC5uGcY2eBz5LShn
	l/6E0NAfk9y4Gz+V7EvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPBB-00051I-Uu; Wed, 05 Jun 2019 06:13:45 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPB5-000511-8o
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:13:40 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x556DZ2X069763;
 Wed, 5 Jun 2019 01:13:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559715215;
 bh=rdyTlwtVkqWcf1wxy9yGAqYRQwMjmBu/dJqDSVxUhhI=;
 h=From:To:CC:Subject:Date;
 b=iuR13AqWknkLIvC2v8Q5XKNC4T75v5Z0uMnPkg7p9vX5fp/tsPTUndp648Dx2PXYb
 oz6ut8bhp8O/7r6+vkyBZ4arRnC/T0AxoAbCiO/mDdLt7UYaVf56yXQgms8zQc8l5B
 O/6iIgYit/dG+KGFqkLXEGJGJ5hYc1N+DTVTUtwU=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x556DZ7G069839
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 01:13:35 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 01:13:35 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 01:13:35 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x556DWYt032504;
 Wed, 5 Jun 2019 01:13:32 -0500
From: Keerthy <j-keerthy@ti.com>
To: <will.deacon@arm.com>, <catalin.marinas@arm.com>, <shawnguo@kernel.org>
Subject: [PATCH] arm64: configs: Enable GPIO_DAVINCI
Date: Wed, 5 Jun 2019 11:44:01 +0530
Message-ID: <20190605061401.25806-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_231339_385297_F8FCA7D9 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable GPIO_DAVINCI and related configs for TI K3 AM6 platforms.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d1b72f99e2f4..57d7a4c207bd 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -385,6 +385,9 @@ CONFIG_PINCTRL_QCS404=y
 CONFIG_PINCTRL_QDF2XXX=y
 CONFIG_PINCTRL_QCOM_SPMI_PMIC=y
 CONFIG_PINCTRL_SDM845=y
+CONFIG_DEBUG_GPIO=y
+CONFIG_GPIO_SYSFS=y
+CONFIG_GPIO_DAVINCI=y
 CONFIG_GPIO_DWAPB=y
 CONFIG_GPIO_MB86S7X=y
 CONFIG_GPIO_PL061=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
