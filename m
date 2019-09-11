Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F33AF450
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 04:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gOd72qmF9rnNyokY04VdL/osmj+XlaNUU6tMzbLTN10=; b=K8Pc9fBi+5zH8s
	SoEnk+pedpoDwqk20QA23IuFnhZgxQIK3mU+j67Nk0z2iqoYKaxY/y3ga8CAnyGrf6impVHIzT7zk
	Yp+pwTOQ3ORt2rLgxYhFsHtlopPHZT9/+ZIBhljxH1G78QYO8Qj8axoUMMq7XtZaBphWAYmTs6W7S
	l4KFYhj6mJcaGCd03yEFtgIM4bj5lhzZ5+nJ5obhVrmvw2GIutLjVGp2quPab7nWiO2xIF613eBBO
	HRQEKl4dUg73BZC3nLTikP34qcbQdrNEB961tafyHokSiXQmWVxYwe8zT84gzBqDTbqQa9AbXzSeT
	gpvjn4/pBe6gv6Z201rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7sTi-0001sE-FB; Wed, 11 Sep 2019 02:35:30 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7sTV-0001pz-9R
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 02:35:18 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D703B4870870CF8B1570;
 Wed, 11 Sep 2019 10:35:06 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Wed, 11 Sep 2019 10:34:57 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>, <james.morse@arm.com>, <julien.thierry.kdev@gmail.com>, 
 <suzuki.poulose@arm.com>
Subject: [PATCH 0/2] KVM: arm/arm64: Two minor tracing changes
Date: Wed, 11 Sep 2019 02:33:34 +0000
Message-ID: <1568169216-12632-1-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_193517_508063_5A41269C 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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

This series includes two very minor tracing changes in KVM arm/arm64.
See patches for details.  Thanks!

Zenghui Yu (2):
  KVM: arm/arm64: vgic: Use the appropriate TRACE_INCLUDE_PATH
  KVM: arm/arm64: Print the EC hex value with its exact width

 virt/kvm/arm/trace.h      | 2 +-
 virt/kvm/arm/vgic/trace.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
