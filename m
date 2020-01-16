Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6642813F235
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:33:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8caiH4RXI3Wz6f8K9FXDpgBtwZr+UQ+E8SxbTrRrqiQ=; b=fm4bmvJ9LQke5w
	tdhe0IZwQutsui6RMix8dLEZ8qxx0UIEKpWt+Ef+rs2bOs8id4Kf0/JSgpt67fmatf9jY++cXgw9Q
	mCLoNfn7xr2zj588tJTIvMqDnl0iTuYMlUH+E597Fk907/aL2B1/fz/+PhZVfNkdO4hRVMWmrX4Dr
	IgZKIFKZ3SFrxqAxhMbPdaT1XLAUCx9Vv/S4Hw4ICZZvrfNjRZT8AGz710AJ/mReSujl5p9yCq3W9
	g7+JcnxpC1oMsmRLvVx21LY5dUXLQYXNlVQQ+tm0k7JtyCNDVnor8T/tzkaBW8HuquorGvktYCC6x
	ULPG8+vpEsh7/eZWeeXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9xi-0002Z8-8Q; Thu, 16 Jan 2020 18:33:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9Do-0006oE-NY
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:46:24 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3FA0246DC;
 Thu, 16 Jan 2020 17:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196780;
 bh=9XW7SWDu+KCgjzAcqzRMIf/9Nyn+7Kj2PwLiQnolGfk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BqGuEcquX55csfJUhWvX+VGFyC4xki3d1ib6qDMey/UvwKKHDK3PL2TahcNxEc3D1
 JkW55f8T99O1q6m6miXp5rP1KwNnHNt85WMfwlvzyVuvYC3m3qa47WXW9jBnZRt+Dz
 tXfg6QvSUKjIowSXAbZRQGxntRp0+kIy3kpqhuSE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 146/174] net: stmmac: fix length of PTP clock's
 name string
Date: Thu, 16 Jan 2020 12:42:23 -0500
Message-Id: <20200116174251.24326-146-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116174251.24326-1-sashal@kernel.org>
References: <20200116174251.24326-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_094620_885524_13D47850 
X-CRM114-Status: GOOD (  12.99  )
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

[ Upstream commit 5da202c88f8c355ad79bc2e8eb582e6d433060e7 ]

The field "name" in struct ptp_clock_info has a fixed size of 16
chars and is used as zero terminated string by clock_name_show()
in drivers/ptp/ptp_sysfs.c
The current initialization value requires 17 chars to fit also the
null termination, and this causes overflow to the next bytes in
the struct when the string is read as null terminated:
	hexdump -C /sys/class/ptp/ptp0/clock_name
	00000000  73 74 6d 6d 61 63 5f 70  74 70 5f 63 6c 6f 63 6b  |stmmac_ptp_clock|
	00000010  a0 ac b9 03 0a                                    |.....|
where the extra 4 bytes (excluding the newline) after the string
represent the integer 0x03b9aca0 = 62500000 assigned to the field
"max_adj" that follows "name" in the same struct.

There is no strict requirement for the "name" content and in the
comment in ptp_clock_kernel.h it's reported it should just be 'A
short "friendly name" to identify the clock'.
Replace it with "stmmac ptp".

Signed-off-by: Antonio Borneo <antonio.borneo@st.com>
Fixes: 92ba6888510c ("stmmac: add the support for PTP hw clock driver")
Signed-off-by: Jakub Kicinski <jakub.kicinski@netronome.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c
index 170a18b61281..147c9f8cee7f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c
@@ -157,7 +157,7 @@ static int stmmac_enable(struct ptp_clock_info *ptp,
 /* structure describing a PTP hardware clock */
 static struct ptp_clock_info stmmac_ptp_clock_ops = {
 	.owner = THIS_MODULE,
-	.name = "stmmac_ptp_clock",
+	.name = "stmmac ptp",
 	.max_adj = 62500000,
 	.n_alarm = 0,
 	.n_ext_ts = 0,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
