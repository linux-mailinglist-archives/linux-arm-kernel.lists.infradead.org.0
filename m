Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD9714876B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:23:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1Ihbqj6jiLPG1usZLE4osISJvFw6OHQOPZvEG4EwaM=; b=Eo6MdbmIpbwX3p
	GoJGRw4BXXhE3JU+E1iMwyz7/wCWZ0nizcZGQldmc0Gi8zLo/n0Rril5v9D3h9KtkegTehIJodE0d
	ZqYAejoJY0bsLkQjf+7O8gTXdKNXhkYahjBoI4Q3ExvSuwnpkCXw6yyJvhSLuuOmx0hUJkhh3CVRc
	JRLW8DrNSw7iPuk8CRs+0f1rnoPRa/azwhJST0Caa/Yc3GLraebMVgT0c7l63lJV0hUHpR4ZxK+9Z
	VzTUIm/HpZ/3eAlgbbemSu8lD6z/5kJ8daORS2n8sYbg+kpueb8HCzydgG7hNlCe6OTO/vYw55W1X
	Yj1lrnmw9DkeIp32Pxig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzrY-0005VA-Qy; Fri, 24 Jan 2020 14:23:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzn8-0000ez-I9
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:18:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20BBB2077C;
 Fri, 24 Jan 2020 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875514;
 bh=rFxetqqAGgGIApkXEQ4TCZBigV4FicIGqLM3MuDnDD8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Cui+bZaybZZ/vVA6Zh+rG1xTrH4n5B2E819CVv3nhtga/WN7MeUzMMl76iXo7IHBX
 tmjDQDVuYH2xkb+bquIhD5x057OmsktmK9m3Ib8yuMavvjFYuQXSUwIBvjs0qyCNfd
 gCPYWAlZ/vyo0RKT6P2lip1/xS9inK+aDsecaung=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 014/107] arm64: dts: ls1028a: fix endian setting
 for dcfg
Date: Fri, 24 Jan 2020 09:16:44 -0500
Message-Id: <20200124141817.28793-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_061834_741387_F241E149 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Yangbo Lu <yangbo.lu@nxp.com>, Yinbo Zhu <yinbo.zhu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yinbo Zhu <yinbo.zhu@nxp.com>

[ Upstream commit 33eae7fb2e593fdbaac15d843e2558379c6d1149 ]

DCFG block uses little endian.  Fix it so that register access becomes
correct.

Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
Acked-by: Yangbo Lu <yangbo.lu@nxp.com>
Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index bb960fe2bb64c..9589b15693d6e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -158,7 +158,7 @@
 		dcfg: syscon@1e00000 {
 			compatible = "fsl,ls1028a-dcfg", "syscon";
 			reg = <0x0 0x1e00000 0x0 0x10000>;
-			big-endian;
+			little-endian;
 		};
 
 		rst: syscon@1e60000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
