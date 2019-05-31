Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271A130689
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 04:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHYHqd/AYV74osf883FfETNEeG9sZsBIn0GW/zJaYTw=; b=P1hHhE5j2lbDet
	7umFnUcKRgfsQYKzoxAsMQbpiSMfGq84KKIuWQGLNb3aVUxkB2iMLQQ8om+FKDZ+5NRU2m9eGjrpM
	kZpQX+MnlGfXrhLkG/gNWkPWG7kEx5BPM3YAglcJFdpA/Do8Fx+2t6ikhqaMgKjCR+h83gLlZd9cA
	i/sq+aCdyeYL6PlHRYumoDJadEl3SI7fkYp7G+3rJ674Cl/YUuYSV55k599bQHPpm2Wkh/JiSv4rK
	veUehLrg0eg5Sn6wfR2EU0CsN4+v3budRfEInwbITPG9/FueGbPF23I0rbQGecBd359IOeacYNs6E
	8IvIntZ3k77/h1PFC5ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWX3T-00053f-BP; Fri, 31 May 2019 02:14:03 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWX2t-0004Zh-N9
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 02:13:30 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4V2DOCH105395;
 Thu, 30 May 2019 21:13:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559268804;
 bh=hs354EoGbV73TbB075I8Lanu8CNWjwVr00edQ5IOMWo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=FkqaIt0OwYhrxKB0BgGMX+rrb/5/fpm9FgyaDJfGOD4hXPVJkSb2ydZYWRhfT57sy
 4lZGx+1Y+kVEfNECHzqr9rBVHG6uxLEQaJN7ujdmKJdMA7l3xgVRT9apwiznorEZbX
 1/C63RG29eiDFbpVypUsGYZ3Bh28CwvPoXD4CNjM=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4V2DOhR108705
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 May 2019 21:13:24 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 30
 May 2019 21:13:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 30 May 2019 21:13:24 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4V2DOPO027212;
 Thu, 30 May 2019 21:13:24 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x4V2DOm18136; 
 Thu, 30 May 2019 21:13:24 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 3/3] hwspinlock/omap: Add a trace during probe
Date: Thu, 30 May 2019 21:13:21 -0500
Message-ID: <20190531021321.14025-4-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190531021321.14025-1-s-anna@ti.com>
References: <20190531021321.14025-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_191327_806842_6812A195 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a debug level trace statement in the OMAP HwSpinlock driver
probe function to print the number of hwlocks on a successful
registration.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 drivers/hwspinlock/omap_hwspinlock.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/hwspinlock/omap_hwspinlock.c b/drivers/hwspinlock/omap_hwspinlock.c
index a4d7a7bc863a..14e1a532ebb5 100644
--- a/drivers/hwspinlock/omap_hwspinlock.c
+++ b/drivers/hwspinlock/omap_hwspinlock.c
@@ -140,6 +140,9 @@ static int omap_hwspinlock_probe(struct platform_device *pdev)
 	if (ret)
 		goto reg_fail;
 
+	dev_dbg(&pdev->dev, "Registered %d locks with HwSpinlock core\n",
+		num_locks);
+
 	return 0;
 
 reg_fail:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
