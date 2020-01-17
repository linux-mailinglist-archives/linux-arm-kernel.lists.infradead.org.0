Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FF3140CDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mzJgkbFfoFpI2sQnH20vVtHsuICXtOFwAmuIYxvRM+0=; b=XYVM48JiIUxDKvVe+mA3x3pSc4
	OJTCQOUIFnziiK/DdPkCqs4QxwsB/sUJQJrGizlLEndO1G2LsUiYlMFTbBFz+VhOd5yK3Sg2hhS9N
	y4EmB0AQsNtAbY5AHzTzdiOp7b1Tx8+/s7bcUi0zju2Q1cYplwcDHdpauQ5rUx/DxB2mwd4yRYHoK
	3W/9Ejcxu6TcDPbpkwXeaBL6ESmdg63MCgh6yO+HXbFUEqs4VkrAKR3DvNa0KzxhLA2OTOtkpgZwj
	LOxO/IPkSdrX8i8nkyhICe3LDU+VRemZYIYr5Ju0UL2/t2qbERemtmeWsJJmmjYAQhJT5dyvS5sQN
	ozIHWSbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSpj-0002V5-0O; Fri, 17 Jan 2020 14:42:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSmF-0006pc-57
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B7D35ACD6;
 Fri, 17 Jan 2020 14:39:09 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 15/15] arm: config: enable coresight in v5 and v7
 defconfigs
Date: Fri, 17 Jan 2020 15:40:10 +0100
Message-Id: <20200117144010.11149-16-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063911_371929_3B9B8A7A 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexander.shishkin@linux.intel.com, paul.gortmaker@windriver.com,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Coresight drivers can be built as modules now. Enable them in
multi_v5_defconfig and multi_v7_defconfig.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 arch/arm/configs/multi_v5_defconfig | 8 ++++++++
 arch/arm/configs/multi_v7_defconfig | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/configs/multi_v5_defconfig b/arch/arm/configs/multi_v5_defconfig
index 2724fb3155cd..2b58f41655b3 100644
--- a/arch/arm/configs/multi_v5_defconfig
+++ b/arch/arm/configs/multi_v5_defconfig
@@ -307,3 +307,11 @@ CONFIG_DEBUG_KERNEL=y
 # CONFIG_DEBUG_PREEMPT is not set
 # CONFIG_FTRACE is not set
 CONFIG_DEBUG_USER=y
+CONFIG_CORESIGHT=m
+CONFIG_CORESIGHT_LINK_AND_SINK_TMC=m
+CONFIG_CORESIGHT_CATU=m
+CONFIG_CORESIGHT_SINK_TPIU=m
+CONFIG_CORESIGHT_SINK_ETBV10=m
+CONFIG_CORESIGHT_SOURCE_ETM3X=m
+CONFIG_CORESIGHT_STM=m
+CONFIG_CORESIGHT_CPU_DEBUG=m
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 80373fe0280d..765857d9717a 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -1115,3 +1115,11 @@ CONFIG_CMA_SIZE_MBYTES=64
 CONFIG_PRINTK_TIME=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_FS=y
+CONFIG_CORESIGHT=m
+CONFIG_CORESIGHT_LINK_AND_SINK_TMC=m
+CONFIG_CORESIGHT_CATU=m
+CONFIG_CORESIGHT_SINK_TPIU=m
+CONFIG_CORESIGHT_SINK_ETBV10=m
+CONFIG_CORESIGHT_SOURCE_ETM3X=m
+CONFIG_CORESIGHT_STM=m
+CONFIG_CORESIGHT_CPU_DEBUG=m
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
