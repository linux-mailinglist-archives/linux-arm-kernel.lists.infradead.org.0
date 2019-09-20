Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A48B8C34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 10:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffZbo1FeazEuRfOk9dalWTQjw9NY5Ce5QysXpRDgv7Y=; b=E9taCP3ftlOCXX
	C76of6JlTHd23DWuND0S5MgssQOm6y5tCiR7DhP/I635h3GGan9emsuXM5cWX16S8qFlBFWOBZr+2
	1sluAcvM8gO5cexK9yyNPEvSxVXryhIuTg/SYFw9Fqis/LGEq5//FCCeDDF25Um6MIX3FiTSVOsnc
	kcHO56WyZlBDU1yQLJNzVeUMjQ8X3u8HkMb1WJMdcK72NtefSgvaPBbxazgKfsHngq5msPDrHVQ6H
	QgOrq7EJDjPysyWSczAafFPt8xfHgDANJcXl/MUTTiGYEC+UvTtsFu6D7bt03mxYSURDS2FJ2zWAT
	2sp7u81nrVJZwHzLleBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDqw-0003wH-1C; Fri, 20 Sep 2019 08:01:18 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDpu-0003A5-Tx
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 08:00:16 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8K802R5035673;
 Fri, 20 Sep 2019 03:00:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568966402;
 bh=hPVf1Poa33Pi1B+Nvl5mwDLiUwBQdGQUSOya3aDoUBw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=A+H7cEw/NCFrGPzd+iSisGTGUTC0Du6kPLR4a4dNGW4bJaqK42Iv2RIW3tBBJlKUw
 DUokoPkjMKKcqn6I3j5t4eXtc3l81zN0Hx1KVcMp+Yn/Z7C5reH/e+WefrriVVzIXj
 In6hctgr4LvyUe+nLudEMeRx7ImXUGwTQ1yWipwc=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8K802VM058080
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Sep 2019 03:00:02 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 20
 Sep 2019 02:59:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 20 Sep 2019 03:00:01 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8K7xeXW118255;
 Fri, 20 Sep 2019 02:59:57 -0500
From: Keerthy <j-keerthy@ti.com>
To: <arnd@arndb.de>, <nsekhar@ti.com>, <olof@lixom.net>, <t-kristo@ti.com>,
 <catalin.marinas@arm.com>, <will@kernel.org>, <tony@atomide.com>
Subject: [PATCH v2 linux-next 4/4] arm64: configs: defconfig: Change
 CONFIG_REMOTEPROC from m to y
Date: Fri, 20 Sep 2019 13:29:46 +0530
Message-ID: <20190920075946.13282-5-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920075946.13282-1-j-keerthy@ti.com>
References: <20190920075946.13282-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_010015_083234_F3D61E0C 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: j-keerthy@ti.com, linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 linux-omap@vger.kernel.org, hch@lst.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 6334150e9a36 ("remoteproc: don't allow modular build")
changes CONFIG_REMOTEPROC to a boolean from a tristate config
option which inhibits all defconfigs marking CONFIG_REMOTEPROC as
a module in compiling the remoteproc and dependent config options.

So fix the defconfig to have CONFIG_REMOTEPROC built in.

Fixes: 6334150e9a36 ("remoteproc: don't allow modular build")
Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8e05c39eab08..c9a867ac32d4 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -723,7 +723,7 @@ CONFIG_TEGRA_IOMMU_SMMU=y
 CONFIG_ARM_SMMU=y
 CONFIG_ARM_SMMU_V3=y
 CONFIG_QCOM_IOMMU=y
-CONFIG_REMOTEPROC=m
+CONFIG_REMOTEPROC=y
 CONFIG_QCOM_Q6V5_MSS=m
 CONFIG_QCOM_Q6V5_PAS=m
 CONFIG_QCOM_SYSMON=m
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
