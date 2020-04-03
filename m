Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343AF19E173
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 01:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0UeqDT7GyJejgeKXDGbWivxSa2okzku8EcnHHiLOyIs=; b=dtilIi9Pg2mVNR
	Xfg2m1Uf4YuKSMyyE2ml+J885ZOhjOGO4mf17ZtVH79Jum4eLzWKnEDBLb3OkA7iUbTrlukUBvJT6
	v7RXIKG4YhXUy3vHNJMs4/XgORIX3pjo/th2tAVirTwfblgflm2ErNgjYKcC19CHLC3jaXijiavMc
	6VKRs0b8wPB4s82I81+g9yob8aDV5lJZg1dPSiHGnzD+soH5ziKlZb70b22cLCTeO3s21Mn2FdCGk
	1szp2+23mUubSA2DU2kCc8CZLOja2035n79SQYjQ+eGcQ5xMgMG2SYAkNkVzchIs+2Zu+nA6QDBgF
	Hp5XBadd9KUGoytW9U5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKVjZ-000773-IX; Fri, 03 Apr 2020 23:28:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKVjT-00075w-V2
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 23:28:17 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87DCE206CC;
 Fri,  3 Apr 2020 23:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585956495;
 bh=F442DFU8p6Pf6GB6kEXwrW3G1Nw0P3yIwU4l0F0Jb/0=;
 h=From:To:Cc:Subject:Date:From;
 b=Dn+MHv+GpEckV/yuaPnlzOhA6XXtUej92g1Dvj8Ibug4W0mW27lUfnFSbjoY/8lNI
 hi13sQGM5WzVwqk52Z6Hp0PMZ1kZa9Zo3BrOHFdUWeEX1I9N04tMXM+rMJASVahcRK
 TwpChz+bcZQVBTNWFvJMVQKwWyTEZDzT1Q2Ssxi8=
From: Dinh Nguyen <dinguyen@kernel.org>
To: catalin.marinas@arm.com
Subject: [PATCH 1/2] arm64: defconfig: Add EEPROM_AT24
Date: Fri,  3 Apr 2020 18:27:59 -0500
Message-Id: <20200403232800.13103-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_162816_022145_10A5C5EE 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dinguyen@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for I2C EEPROMs.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4db223dbc549..1cf9f98ec1ad 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -220,6 +220,7 @@ CONFIG_BLK_DEV_NBD=m
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_NVME=m
 CONFIG_SRAM=y
+CONFIG_EEPROM_AT24=m
 CONFIG_EEPROM_AT25=m
 # CONFIG_SCSI_PROC_FS is not set
 CONFIG_BLK_DEV_SD=y
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
