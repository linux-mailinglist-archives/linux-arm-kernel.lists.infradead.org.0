Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD75A106BDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8YPCkKFfH705Q0kqaOO6nQFU/wCdtrglsM+REo6jZQ=; b=sUwM1hikYpQBnK
	uaUbisq0wNWtjXFl3HN125p5RkkCHdtdidNqwpQe5WoDJ5LfZHQPQBvDzVwJtOJTUrZkbFkYdCm37
	8R6+qRHJFKN27B7wVdxACeg6lexVfIVhG2/PjvA7FYuL591qejCSFlFLqOl2KdhY4O/CN+4kAz6Dw
	LRVee7eLJnTrbBKYjO1/BawH5YrbYJ7Mpu2qRoM9W+8Btp2EpcWykWEk6AOKjLV++KxLjXzBvLD1B
	SkBoHC0KgXmLnIS9XH4CSrBvQU43cEtMd08szipkryfpyJOmL2DHybCgZ3aN0qVDPhJ0AZlJtDSua
	8nZlnwTDs9yK1orEfOiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6Tf-00012j-HQ; Fri, 22 Nov 2019 10:47:51 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Rm-0007pX-MU
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:45:56 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dd7bc630001>; Fri, 22 Nov 2019 02:45:55 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 22 Nov 2019 02:45:52 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 22 Nov 2019 02:45:52 -0800
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 22 Nov
 2019 10:45:52 +0000
Received: from rnnvemgw01.nvidia.com (10.128.109.123) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Fri, 22 Nov 2019 10:45:52 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.48]) by
 rnnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5dd7bc5b0001>; Fri, 22 Nov 2019 02:45:51 -0800
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH 5/6] arm64: tegra: Enable GPIO controllers nodes for
 P2972-0000 platform
Date: Fri, 22 Nov 2019 16:15:04 +0530
Message-ID: <20191122104505.8986-6-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191122104505.8986-1-vidyas@nvidia.com>
References: <20191122104505.8986-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1574419555; bh=F6/Ov3FRHWjTCpHNYAElFVGDpjp7zAUe/K07HA+D/Lo=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=RRTdKrP/hxJqKkvG/cuJyacZRDOqI7uPuqzizjVNNiqEsoFMusGXZE5R1G2IgDAUq
 ClJG0K8nW6Rvwhqs88MB9UZxgH3qQz9p8urjvKNyQjEt9eZNVSUVaaG7cHXURgeJhZ
 NcYsG3lrMc6ukL3NJUYLXW2v8f1CxvT5jS64ny+0V5YFauKIN7hjMSdHhlj6Oso90B
 CDRQ+wYcU/PV4D+AdZDNPzpyxZObKoCzPeyY5j0YgjnZqK1A2N4HQ83UdZRIeEJYKC
 hKslp3sSJ3pO2NCbJP1KNZhR9YIuljsi0MPC9FqaQkNO4n1/FThVggly0V7K61ZObP
 SHajOjncPpD6A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024554_775093_214BF02F 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable GPIO controllers nodes for P2972-0000 platform which are required
by other controllers in the SoC for example when PCIe C5 controller
operates in endpoint mode.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
index 353a6a22196d..7eb64b816e08 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
@@ -37,6 +37,14 @@
 			status = "okay";
 		};
 
+		gpio@2200000 {
+			status = "okay";
+		};
+
+		gpio@c2f0000 {
+			status = "okay";
+		};
+
 		pwm@c340000 {
 			status = "okay";
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
