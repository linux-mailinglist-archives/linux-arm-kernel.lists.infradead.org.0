Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7673A1A566D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84Ru28BOR95S+KVJdNoCwEgYP7nYi4vxtaYdiAxvCDE=; b=TpiipK1Dbe2Jah
	Rt6AOAlxvKR7PJ0Y4PM67w+7vQ+fM2sgMiQ5yNOiRf6dgMZ+pQGOMJ0r7jNZQbXF627jylu1wlu4w
	ofykGcqVeIyc/aA6A4QmIBuRmEkJ3BAutSlG4ozuEf8NN12ZseNoiTYvGevQLTOakWpawjl5HMWkk
	0YhUvsXP6gIK0oQ5S+DuZQTBrdKGdIV72bilrjNKVPm/eTrtvOMewYw1dqcZRLq0+g1AVEN9xGPg3
	iPcujUthB2RMKaI/IynmDDEf40zU5SoxwfwW5pgRVnrU0hJFRrqHWLBz+ekJ1tsaPncForIYnG5Oh
	0KOU5d2lG6nrbphk2GiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPM9-0005is-8S; Sat, 11 Apr 2020 23:16:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPFm-0003UO-2d
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:09:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFE8921D7B;
 Sat, 11 Apr 2020 23:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646573;
 bh=rjytP4Nsb3o8SYY72ku2H/NNEttzxHpHq53ChREMXFI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=y4rKrrTQAVsSK/7BPz3IjAb9nQJKfsXzFiu71Eh3rQlrmMeILU0FvlZ5TkRetf88M
 zQJALS9FHJcE6fgP6gyU8D4EaI1vyPCegLYC9yaZbT8ZmRTB/lBdD3Py9X1EwH+kvA
 ZQZbDZvAhbuCEkog9OW7Cftrr7it6HCRd/hDaC1w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 120/121] rtc: imx-sc: Align imx sc msg structs to 4
Date: Sat, 11 Apr 2020 19:07:05 -0400
Message-Id: <20200411230706.23855-120-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230706.23855-1-sashal@kernel.org>
References: <20200411230706.23855-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160934_167666_6BFF96FA 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, linux-rtc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonard Crestez <leonard.crestez@nxp.com>

[ Upstream commit a29de86521d8a80cb0b426638d4e38707cafa2e2 ]

The imx SC api strongly assumes that messages are composed out of
4-bytes words but some of our message structs have odd sizeofs.

This produces many oopses with CONFIG_KASAN=y.

Fix by marking with __aligned(4).

Fixes: a3094fc1a15e ("rtc: imx-sc: add rtc alarm support")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Link: https://lore.kernel.org/r/13404bac8360852d86c61fad5ae5f0c91ffc4cb6.1582216144.git.leonard.crestez@nxp.com
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/rtc/rtc-imx-sc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c
index cf2c12107f2b8..a5f59e6f862e0 100644
--- a/drivers/rtc/rtc-imx-sc.c
+++ b/drivers/rtc/rtc-imx-sc.c
@@ -37,7 +37,7 @@ struct imx_sc_msg_timer_rtc_set_alarm {
 	u8 hour;
 	u8 min;
 	u8 sec;
-} __packed;
+} __packed __aligned(4);
 
 static int imx_sc_rtc_read_time(struct device *dev, struct rtc_time *tm)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
