Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F812E8210
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:21:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ebMRrDWk37laTC1DqeEW6T6FdsK+EwIgK0y7glhPLRc=; b=FawcGrAQAWAv6L
	2bpLDezTSrrFiwpmCR+7Q0CbAQ/akjmka/9S/s/GUvAeMMr+vokts/yPh5lDB1h/nTHKYZhGJr00x
	TTUtAlqnsRCTB7tqtTMXeXVh+mRaSEdJ7dNhmxwT99nzHwqkGqJicNPZpR44PcWMZZLOztmvcPCJC
	rSVxd/MUolHKOpBgNvpG69AOmtIs5icW25UbaIwd83MdVGgC8Yk8Hxpbd/qoaw/ExBxpVsIDLI4TP
	Iop5QpN0VY1cdO3XmNx9Dc4k8CojZWQVua1VJMuB22nM1+4M439OD6NReEYDt5Kc7mZ1Mbgm0jw6z
	82IDTzk/j2LHIzb0nZSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLoY-00036r-B8; Tue, 29 Oct 2019 07:21:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLnr-0002bI-9w
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:20:33 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 369BCB063877C594D3FB;
 Tue, 29 Oct 2019 15:20:22 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Tue, 29 Oct 2019 15:20:15 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>, <eric.auger@redhat.com>, <james.morse@arm.com>,
 <julien.thierry.kdev@gmail.com>, <suzuki.poulose@arm.com>
Subject: [PATCH 0/3] KVM: arm/arm64: vgic: Some cleanups and fixes
Date: Tue, 29 Oct 2019 15:19:16 +0800
Message-ID: <20191029071919.177-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_002031_525918_AEE8A2EC 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi KVM/ARM maintainers,

This series contains three cleanups (fixes) I've collected when looking
through the vgic code. Please consider taking them if you're happy with
them.

Thanks!

Zenghui Yu (3):
  KVM: arm/arm64: vgic: Remove the declaration of
    kvm_send_userspace_msi()
  KVM: arm/arm64: vgic: Fix some comments typo
  KVM: arm/arm64: vgic: Don't rely on the wrong pending table

 include/kvm/arm_vgic.h      | 4 +---
 virt/kvm/arm/vgic/vgic-v3.c | 8 ++++----
 virt/kvm/arm/vgic/vgic-v4.c | 2 +-
 3 files changed, 6 insertions(+), 8 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
