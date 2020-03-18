Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 960F618A4B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaBh+5VZlKiQK/wYzMsSjrBv/oSjh3GqjU7e+wCl/oU=; b=nCr57Vsb3U8MBx
	YpK1seFkpQScauM5pt1Tnl5z+Zy4a2h4tCcLefeRMNO+kXp4zCxSe848E3edw1GxNM1DiwdJWqr7U
	0/eCOfsIQvGHYH8dO8AIkXwAqqf5dxMD35CO7XlPsOoXmJpd2wDfXdOjKDkMwLeJ4PZyX3EWjEdb2
	WhQKZMyzj2Le4ht0G8xmy3Zu7P/8CjgmwFqF0+X8mnYcMg5rR/CSXhC3d3/CIL6fi1GmeN8dapmMT
	pz8bY1b+/1d432ekgRoUq/su2eIqdpb3Tw/ffaBxY974gd0FWH+fnYvhZaBmQE44L0p+HRRPYB2QS
	7Gfk8aZU37AgcIR7U5Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEfkG-0000Ke-Fg; Wed, 18 Mar 2020 20:56:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEfjd-0008Ru-52
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:56:18 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16EBB208E4;
 Wed, 18 Mar 2020 20:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584564976;
 bh=xiR447SPRj5Q7cH3/CX6Z/TdZ+9rqAJAouR0yNNLHPo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rHCW1dCrnzA2CbimAqSy8bGBcvQMBbJrntyqiYppXiy7scYmJyDIaQClzNsMWZrL2
 NVanwMBEuj8WkALd6q+qMW6D59Zy+AMyBcs8W6nFQ27tfvfdIKFJsi3TT4oRV+TlO6
 YM3L73D2maUAi4kzoj62hC4Oktr+achiZqTVFmOY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 18/28] arm64: dts: ls1043a: FMan erratum A050385
Date: Wed, 18 Mar 2020 16:55:45 -0400
Message-Id: <20200318205555.17447-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318205555.17447-1-sashal@kernel.org>
References: <20200318205555.17447-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_135617_243253_EE761C2A 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Madalin Bucur <madalin.bucur@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Madalin Bucur <madalin.bucur@nxp.com>

[ Upstream commit b54d3900862374e1bb2846e6b39d79c896c0b200 ]

The LS1043A SoC is affected by the A050385 erratum stating that
FMAN DMA read or writes under heavy traffic load may cause FMAN
internal resource leak thus stopping further packet processing.

Signed-off-by: Madalin Bucur <madalin.bucur@nxp.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/freescale/fsl-ls1043-post.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1043-post.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1043-post.dtsi
index 169e171407a63..acd205ef329f7 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1043-post.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1043-post.dtsi
@@ -21,6 +21,8 @@
 };
 
 &fman0 {
+	fsl,erratum-a050385;
+
 	/* these aliases provide the FMan ports mapping */
 	enet0: ethernet@e0000 {
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
