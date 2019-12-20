Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F421127E86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=da9ZXjEqceccA2KPxzl50VvHsn6vVMfyhbABM67YbwI=; b=KePET5o3Sd3KUz
	jNPBSZbtEexAQMUPEaiI2wCBKxhM9WXp8Dkb/o0S/dXlth8yizPrkc4oxJO5wQuWmd1Nv7XnQ9w5+
	Yk2+CGSwvqyOrfvKaFSdOFYN/BAv32ErFWx9OQ3sezYb0D+xteyqSOAz/0UNvHjeuDUJulGULnHVA
	lhD9f2mMNK9b3F8QGLIHYqSQLUXzBt3KaQwE2fkrio9HyXlkeFshOGJVMCUBwXoMvZpooI05aTj3c
	7JctTN5ERZV+UfYtAP+Gzt2eHEqMJ9aiIQLaYsuLQUN9U0XbVVYZ/Hx0mKt01HqzC22sCqev0+80n
	nOcaoI3NOWQYyB/DRYtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJZF-00046R-FF; Fri, 20 Dec 2019 14:47:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJYn-0003T8-8h
 for linux-arm-kernel@bombadil.infradead.org; Fri, 20 Dec 2019 14:47:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kgh0fpJN8zKbUfowIDGlZY6dkhtNrSfbImWSOLy+PYI=; b=rfGndGrcPQQvt4VfeOpNw6CRaG
 MIs2BgFJoPNBp/V2CoFo/OqMrOoJdLtoG3jm41qKcr/CodYkVuZD8Z2Dlk00q3pKVvMDl+oDoxpo6
 Szp0RIK0ywCE69+3wHfzEs6jIr+npxb+xBvd4aEfEfFcFWYJ8OlZOV00bA2pyhxljCmTVsv6XFA1L
 UH8F4meyKkCn+UV7s7WcLHpvivm9twZS18nYefkeKTeb7xmn417OCYt35xTLOSx7BwH9a2YG4epwK
 ex5p74W4MNtYzSlZ5TZaVfvGgItuva5s3+1CbCksi6hchHQ+WSxNFscwlnqP9DSUVDprcKBObb4CV
 yQQ8xn6w==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJJY-0002zw-N6
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:31:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5FC1811B3;
 Fri, 20 Dec 2019 06:31:07 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 87C853F86C;
 Fri, 20 Dec 2019 06:31:05 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 16/18] KVM: arm64: enable SPE support
Date: Fri, 20 Dec 2019 14:30:23 +0000
Message-Id: <20191220143025.33853-17-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191220143025.33853-1-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_143136_865672_F7475CA0 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

We have all the bits and pieces to enable SPE for guest in place, so
lets enable it.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 virt/kvm/arm/arm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index a66085c8e785..fb3ad0835255 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -611,6 +611,10 @@ static int kvm_vcpu_first_run_init(struct kvm_vcpu *vcpu)
 		return ret;
 
 	ret = kvm_arm_pmu_v3_enable(vcpu);
+	if (ret)
+		return ret;
+
+	ret = kvm_arm_spe_v1_enable(vcpu);
 
 	return ret;
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
