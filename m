Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D7272B15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 11:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E4o8WaqG3EQVBGIWnsNu1dSLhZbOTm5uktuiyVATHbA=; b=ZnKI2oP2t4qTCI
	b20R84qDGoz1GtS2Nge20SmKnIvIHvNf4SInKxVo+79yHzvo1igOUs1ECq4mWIbwly3KHIwTCjn6Y
	WVQNnrArzOjOoNePgUBwqzaiLv6SeQY3a++Lfvv+W82b6Xnq/pglTUptlBzHjxRn9TXVXwBJCzP4f
	p0jtHkgYzULCYBM5zTvBClgu9iAXPq2gpFkcZ2fTyYkXw/SfAfdkt7mT1EaUDqoIpjtw864YzEI6t
	OOEh4mo9YeEJxg88bphgb3Nd689daviU6Fv4cHRJBQPyllri7wygZ+lgr34a3wNNvxqw9HK+ANmfl
	EQplnxmj59BK6kSdEyOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDEF-0003kX-Mn; Wed, 24 Jul 2019 09:06:32 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqDCd-0003hh-MC
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 09:04:53 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 74AC1F6E4DA912F3682E;
 Wed, 24 Jul 2019 17:04:40 +0800 (CST)
Received: from localhost (10.177.19.122) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Wed, 24 Jul 2019
 17:04:38 +0800
From: Xiangyou Xie <xiexiangyou@huawei.com>
To: <marc.zyngier@arm.com>
Subject: [PATCH 0/3] KVM: arm/arm64: Optimize lpi translation cache performance
Date: Wed, 24 Jul 2019 17:04:34 +0800
Message-ID: <20190724090437.49952-1-xiexiangyou@huawei.com>
X-Mailer: git-send-email 2.10.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.19.122]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_020451_925801_FFCF01C9 
X-CRM114-Status: UNSURE (   5.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patches are based on Marc Zyngier's branch
https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=kvm-arm64/its-translation-cache

As follows:
(1) Introduce multiple LPI translation caches to reduce concurrency
(2) Removed the unnecessary vgic_its_invalidate_cache()
(3) Introduced vgic_cpu->pending and vgic_cpu->lowest, reducing
    vgic_cpu.ap_list_lock competition

Best Regards,

Xiangyou

Xiangyou Xie (3):
  KVM: arm/arm64: vgic-its: Introduce multiple LPI translation caches
  KVM: arm/arm64: vgic-its: Do not execute invalidate MSI-LPI
    translation cache on movi command
  KVM: arm/arm64: vgic: introduce vgic_cpu pending status and
    lowest_priority

 include/kvm/arm_vgic.h        |  18 +++-
 virt/kvm/arm/vgic/vgic-init.c |   6 +-
 virt/kvm/arm/vgic/vgic-its.c  | 201 ++++++++++++++++++++++++------------------
 virt/kvm/arm/vgic/vgic.c      |  40 +++++----
 4 files changed, 160 insertions(+), 105 deletions(-)

-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
