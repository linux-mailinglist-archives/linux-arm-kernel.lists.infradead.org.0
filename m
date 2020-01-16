Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C586513EA1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kie8h3X8d+SaaDdrJGc5O5x4bmxVhNGP8cCVk3HwJM0=; b=QoUfLiX6LU8Cxj
	HKGYTOqTycRwQAQ5fb2mUfPyysYp2wchjSuhU/o4uONJUDTLf4NxPjMvQpkixz6oi9cuTUYHKgAB5
	XD/S0Y2UNNxZrxOzfTC5DaECIG+1PP6ksg1KO/XYRBbiXB85J2wq7fD/rSUA/rhkm02Z14V5hjFFJ
	Yef1S/H9zI1Ms75K6cFVcxXlPfdSXg/rzn4CH0dqpMBFr0vWPk1Z0aBNaxg8/F93Rpfmmzuzc3Exh
	7PREjNJsS9u9LSBdC0qdnWrWyA2W70zzgQQu3l10tbcoYZQfANJ9W4mdxEMoKgDK/mq39Bg6u0rFY
	6pNnICnXUllsKBLhjnYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is99w-0002U7-PE; Thu, 16 Jan 2020 17:42:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8hH-0006Bo-O0
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:12:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35A102469B;
 Thu, 16 Jan 2020 17:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194763;
 bh=+LjzRZhG/asUPV6mXmu3rlMw0EJxr7fb6ki0KxCziZQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=haCFxe/sDJyXUtzlFTQ3G1tZqAbmtIZ09mCv4K+MQorLEMCkj1o9I0avcbn1adcGl
 0dRFuZXF6S/txlcsn/YHSAVZE1cwj8nVJa/UE+wAbtX3nF3BUgDLt9Ghf8q1OF1LXI
 Ru+d9r8MFRsbZvHFbXr63Vfz88v7gWIHCz1new6M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 584/671] net: stmmac: fix disabling flexible PPS
 output
Date: Thu, 16 Jan 2020 12:03:42 -0500
Message-Id: <20200116170509.12787-321-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091243_826846_05D021AC 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Antonio Borneo <antonio.borneo@st.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Antonio Borneo <antonio.borneo@st.com>

[ Upstream commit 520cf6002147281d1e7b522bb338416b623dcb93 ]

Accordingly to Synopsys documentation [1] and [2], when bit PPSEN0
in register MAC_PPS_CONTROL is set it selects the functionality
command in the same register, otherwise selects the functionality
control.
Command functionality is required to either enable (command 0x2)
and disable (command 0x5) the flexible PPS output, but the bit
PPSEN0 is currently set only for enabling.

Set the bit PPSEN0 to properly disable flexible PPS output.

Tested on STM32MP15x, based on dwmac 4.10a.

[1] DWC Ethernet QoS Databook 4.10a October 2014
[2] DWC Ethernet QoS Databook 5.00a September 2017

Signed-off-by: Antonio Borneo <antonio.borneo@st.com>
Fixes: 9a8a02c9d46d ("net: stmmac: Add Flexible PPS support")
Signed-off-by: Jakub Kicinski <jakub.kicinski@netronome.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac5.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac5.c b/drivers/net/ethernet/stmicro/stmmac/dwmac5.c
index 3f4f3132e16b..e436fa160c7d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac5.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac5.c
@@ -515,6 +515,7 @@ int dwmac5_flex_pps_config(void __iomem *ioaddr, int index,
 
 	if (!enable) {
 		val |= PPSCMDx(index, 0x5);
+		val |= PPSEN0;
 		writel(val, ioaddr + MAC_PPS_CONTROL);
 		return 0;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
