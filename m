Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4067913E192
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQOClWk7Id9gwZon165U7qglI+5AnPRUWTWlM1QgYtI=; b=fcNc07XOeI7xEa
	Fh12b9iHdAWlRo3EUBEgO11pQNrKHBav1vM3PfexRIrrEWBQ/cm8/08+et7GG4HENVtHnektqChSM
	ADuX87kTpIb7vyrZ7tz1nz2FlvwVG/dTNAxZRfx7pQWz19i/hr6xu+fcAG3L//GS1VPDpy27yonuD
	uv/dLF/x7NdMlOyuez33FIXqoarHZSNLs2pTYRva3Lt0lY5Yepz1ihveOBCvMiL7QJa4dIflX3Y8u
	wJqtqEqBOrNDataDTWxQ5T7UMn8d8mjirxI+uE3Y7gTnJ7CO9NLXa81uw1FUcq6MIj9Ocbsok2vd+
	xIXiXCtqvo6t7C+CmfIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8LZ-0004Wc-Us; Thu, 16 Jan 2020 16:50:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8JW-0002hH-3s
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:48:16 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 733DE214AF;
 Thu, 16 Jan 2020 16:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193289;
 bh=FkOQnxTg5SvzIvPHLCaOZs+capOhsPMcdpjfo5aP7cY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cUAgSRQorB6Xsv4mjZ/r1ipk/lsgZItU2FZQ2P2mEbBMgjxuS1uCiN/YEZQCns0OS
 84PkFzFPQHFSN1eQbfn4bKVFthm6F/1PCoUtxLb1duHxGgKUe8CWSWbZdnbCNdV8+7
 pE5hCmXbSBsWv78gKObTgGz/KhuLBMkxrVvPx8/g=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 067/205] clk: imx7ulp: Correct system clock source
 option #7
Date: Thu, 16 Jan 2020 11:40:42 -0500
Message-Id: <20200116164300.6705-67-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084810_209665_42F74977 
X-CRM114-Status: GOOD (  10.75  )
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
Cc: Sasha Levin <sashal@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

[ Upstream commit 96ac93a7c4bea4eb4186425795c00937d2dd6085 ]

In the latest reference manual Rev.0,06/2019, the SCS's option #7
is no longer from upll, it is reserved, update clock driver accordingly.

Fixes: b1260067ac3d ("clk: imx: add imx7ulp clk driver")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/imx/clk-imx7ulp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index a0f650150367..d2c49fbd0563 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -24,7 +24,7 @@ static const char * const spll_pfd_sels[]	= { "spll_pfd0", "spll_pfd1", "spll_pf
 static const char * const spll_sels[]		= { "spll", "spll_pfd_sel", };
 static const char * const apll_pfd_sels[]	= { "apll_pfd0", "apll_pfd1", "apll_pfd2", "apll_pfd3", };
 static const char * const apll_sels[]		= { "apll", "apll_pfd_sel", };
-static const char * const scs_sels[]		= { "dummy", "sosc", "sirc", "firc", "dummy", "apll_sel", "spll_sel", "upll", };
+static const char * const scs_sels[]		= { "dummy", "sosc", "sirc", "firc", "dummy", "apll_sel", "spll_sel", "dummy", };
 static const char * const ddr_sels[]		= { "apll_pfd_sel", "upll", };
 static const char * const nic_sels[]		= { "firc", "ddr_clk", };
 static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk", "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
