Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2742912EA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mu7IQCe8hnatbPJx+t2aIpPftBY2zOcyAkZ7Hd/axg0=; b=uBc2Op1Mb/WVex
	3HZnmXtBaEOt8+bCHH+51tq141YLrRoEqM2A7yCF0IGYGBZtMjiGuO3jp5U5pYBI3taS9zHhPZcYx
	gOj2Zit4qbQjBNUxMFvHRktQStEq59aPPubZPQpyiUdBilWdm6t/cxZAbp5UrD8cVX31XCy3bHkiy
	JiAGKW4pQX82ShuNHYV88AIC4rOOW/KM3WBy60EqQxNDyE4TVd5d+0+WQh3SJVFzM6kfXrXuzRBOB
	SwtNhNhIzzZhBEw5+9q5JxrVfSoXgv7bMrnHBZnBMJCmTj2y77tVyhpQFFixLu74F0jeWl+gADyft
	xuDf2jT4nQP7DmGpfsqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXoL-0000tZ-5M; Fri, 03 May 2019 13:01:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXny-0000Hk-Pq
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kznQkkO+hm4kcB5boNikyJolMBFl1xyXfZqv9L12z94=; b=R5mQ41sJT0fiup6RrFSnIKLyFp
 3jYi/HNlhdAUm1TkiUec0WOb8qlb4ySRr0tJQ53GmrgRTgocC2NaidCM0CJW/3O/D/D6Wkn4EvTaw
 2EPru/HjyppB/nMIWRrbke7+wmHXrk9OMLt9o/Y+wLLGphjYDrmkWCwSAgtaUN0pkt0xckJlLVsoZ
 YLRtWM/EQvdj+Q552JsXOQjbd1H5HFxnnOOtGniTUJGbuGECLA5M1iSszLKb8+u8PW3x3ivsvzHlb
 HNkAomjfbRHQZyfc1aRUKVXz+TXOwh1QlpaPBL11IFUSXfkJv0EYQ8aQ3vjIISRcfxu+uWvZYkneZ
 HfOn9kFQ==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXbU-0002Jf-VR
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:47:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B2781684;
 Fri,  3 May 2019 05:47:52 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03E6C3F220;
 Fri,  3 May 2019 05:47:48 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 54/56] arm64: docs: Document perf event attributes
Date: Fri,  3 May 2019 13:44:25 +0100
Message-Id: <20190503124427.190206-55-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134753_315048_B9E86C97 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

The interaction between the exclude_{host,guest} flags,
exclude_{user,kernel,hv} flags and presence of VHE can result in
different exception levels being filtered by the ARMv8 PMU. As this
can be confusing let's document how they work on arm64.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 Documentation/arm64/perf.txt | 85 ++++++++++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)
 create mode 100644 Documentation/arm64/perf.txt

diff --git a/Documentation/arm64/perf.txt b/Documentation/arm64/perf.txt
new file mode 100644
index 000000000000..0d6a7d87d49e
--- /dev/null
+++ b/Documentation/arm64/perf.txt
@@ -0,0 +1,85 @@
+Perf Event Attributes
+=====================
+
+Author: Andrew Murray <andrew.murray@arm.com>
+Date: 2019-03-06
+
+exclude_user
+------------
+
+This attribute excludes userspace.
+
+Userspace always runs at EL0 and thus this attribute will exclude EL0.
+
+
+exclude_kernel
+--------------
+
+This attribute excludes the kernel.
+
+The kernel runs at EL2 with VHE and EL1 without. Guest kernels always run
+at EL1.
+
+For the host this attribute will exclude EL1 and additionally EL2 on a VHE
+system.
+
+For the guest this attribute will exclude EL1. Please note that EL2 is
+never counted within a guest.
+
+
+exclude_hv
+----------
+
+This attribute excludes the hypervisor.
+
+For a VHE host this attribute is ignored as we consider the host kernel to
+be the hypervisor.
+
+For a non-VHE host this attribute will exclude EL2 as we consider the
+hypervisor to be any code that runs at EL2 which is predominantly used for
+guest/host transitions.
+
+For the guest this attribute has no effect. Please note that EL2 is
+never counted within a guest.
+
+
+exclude_host / exclude_guest
+----------------------------
+
+These attributes exclude the KVM host and guest, respectively.
+
+The KVM host may run at EL0 (userspace), EL1 (non-VHE kernel) and EL2 (VHE
+kernel or non-VHE hypervisor).
+
+The KVM guest may run at EL0 (userspace) and EL1 (kernel).
+
+Due to the overlapping exception levels between host and guests we cannot
+exclusively rely on the PMU's hardware exception filtering - therefore we
+must enable/disable counting on the entry and exit to the guest. This is
+performed differently on VHE and non-VHE systems.
+
+For non-VHE systems we exclude EL2 for exclude_host - upon entering and
+exiting the guest we disable/enable the event as appropriate based on the
+exclude_host and exclude_guest attributes.
+
+For VHE systems we exclude EL1 for exclude_guest and exclude both EL0,EL2
+for exclude_host. Upon entering and exiting the guest we modify the event
+to include/exclude EL0 as appropriate based on the exclude_host and
+exclude_guest attributes.
+
+The statements above also apply when these attributes are used within a
+non-VHE guest however please note that EL2 is never counted within a guest.
+
+
+Accuracy
+--------
+
+On non-VHE hosts we enable/disable counters on the entry/exit of host/guest
+transition at EL2 - however there is a period of time between
+enabling/disabling the counters and entering/exiting the guest. We are
+able to eliminate counters counting host events on the boundaries of guest
+entry/exit when counting guest events by filtering out EL2 for
+exclude_host. However when using !exclude_hv there is a small blackout
+window at the guest entry/exit where host events are not captured.
+
+On VHE systems there are no blackout windows.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
