Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5F8151777
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 10:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bx6XpVmOrd81nn67s46mZrjWEO9yJQ5rTOdu6LeFAh8=; b=GPwKakhaieORa5
	5K5bgU+ZUu/EtesyyXEgbhJ1HZ27bebYuZZIhHkwaA6vFjuqvQ9n1fCy9VNagXuH0lsNtEpIjSpAD
	InYb0lgpH33C1Qi1Ap5AruUXTot/ykDRsgQu7LN6UXFUFwwFiiIIt8ttopK+Gids1FeyqUjysg2UE
	w2Jk1+Kq4HkTKMOlvw2FdPyBcpISRqh9M0ihk1m7sZwa1/QeZbMUqHoLBHwUuiXueGQwsUOx0ldFy
	fafS3hUdTKmOgqURVk8mBbYgj2cG/D02yL+MdBIv0kP3ByNnHXQLbSiU97C7LyjiTzZjPrlunSMD6
	5QTheYx3wKA8ToJItpIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuFY-0002X5-G4; Tue, 04 Feb 2020 09:12:04 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuFN-0002Va-Kg
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 09:11:55 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DA2F72ABEF3214DF7FDC;
 Tue,  4 Feb 2020 17:11:43 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Tue, 4 Feb 2020 17:11:34 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-kernel@vger.kernel.org>, <maz@kernel.org>
Subject: [PATCH 0/5] irqchip/gic-v4.1: Cleanup and fixes for GICv4.1
Date: Tue, 4 Feb 2020 17:09:35 +0800
Message-ID: <20200204090940.1225-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_011153_842278_888AD665 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jason@lakedaemon.net, Zenghui Yu <yuzenghui@huawei.com>,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series contains some cleanups, VPROPBASER field programming fix
and level2 vPE table allocation enhancement, collected while looking
through the GICv4.1 driver one more time.

Hope they will help, thanks!

Zenghui Yu (5):
  irqchip/gic-v4.1: Fix programming of GICR_VPROPBASER_4_1_SIZE
  irqchip/gic-v4.1: Set vpe_l1_base for all redistributors
  irqchip/gic-v4.1: Ensure L2 vPE table is allocated at RD level
  irqchip/gic-v4.1: Drop 'tmp' in inherit_vpe_l1_table_from_rd()
  irqchip/gic-v3-its: Remove superfluous WARN_ON

 drivers/irqchip/irq-gic-v3-its.c   | 80 +++++++++++++++++++++++++++---
 include/linux/irqchip/arm-gic-v3.h |  2 +-
 2 files changed, 75 insertions(+), 7 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
