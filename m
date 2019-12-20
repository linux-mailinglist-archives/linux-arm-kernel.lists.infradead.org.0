Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E70F127F61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:33:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2ZE4YANmYIdBaVd9zjAYkUdspiD7Vh3oVfKx6T8MCY=; b=YMllPDobF1OPUI
	Ay5UVdFXtme357a2NJpFNPFOOLkq8sqvoBJ9antFzrUk7jkuSlKIeZ0Sealf6yL/e2Hr2G54C30U3
	jYEdHkVS8Dz1TpCyekXx6g5DUWMf6n2vfn0mJqkJJ9/VBikext+6PtfxtwVca1BRss4yXgJFIYEhy
	0yHZsa0QqFlOv2qa+i+WMlUMVqC3SAg26MeyfPPfdTI7a4aBN2P18MxO93HWg43CNREh6vKeLU28W
	f2pBXeYpyeo12Ox9VMs0+aPrmDDmDKetQPrzD9+vxs8Gr2b3KEJSAo9vDzX6uQuBl8eSxmqO5dPJJ
	z+UAveZRLmn7M4JCmRkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKHf-0006x2-KY; Fri, 20 Dec 2019 15:33:43 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKH8-0006hN-2c
 for linux-arm-kernel@bombadil.infradead.org; Fri, 20 Dec 2019 15:33:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fepfyvJU9ROW5T8CqI9V9m8TTjyplmXGCONscFCG+dc=; b=fmjucojpFShLa9+I1B/g+d0EYP
 CgmGFgjZdXOX1mTI3CIEsVCU3BsP1CKThmNxeHWHsAAN4Bc9XzAk++HZwKIk6btpQK6+nkb+bo/uh
 DBy4GpJt0HSEw7KPZCNZaHM4CnM0cNTvJHrEqBit9O2nKgD4EPEczPbd6gfWk+QCq0+7DMGV4wMAb
 7/Dr5emxpUmVtvZfGGNblQXs8LOgSfK1KCpqpy5zSMbRm6gNA0VG5/RX4PPBh6n+nFPO1abuzKEVK
 StQi8IfP1oL3j4fS5OPbGQ4FVy0wiO4ssKgIDbuvW35KnFY00765Te1zJn9FLsMgV1U3C5DZlyaZG
 hZvLAVNQ==;
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJJ3-000439-KY
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:31:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4079811D4;
 Fri, 20 Dec 2019 06:31:05 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FB2F3F718;
 Fri, 20 Dec 2019 06:31:03 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 15/18] perf: arm_spe: Handle guest/host exclusion flags
Date: Fri, 20 Dec 2019 14:30:22 +0000
Message-Id: <20191220143025.33853-16-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191220143025.33853-1-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
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

A side effect of supporting the SPE in guests is that we prevent the
host from collecting data whilst inside a guest thus creating a black-out
window. This occurs because instead of emulating the SPE, we share it
with our guests.

Let's accurately describe our capabilities by using the perf exclude
flags to prevent !exclude_guest and exclude_host flags from being used.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 drivers/perf/arm_spe_pmu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
index 2d24af4cfcab..3703dbf459de 100644
--- a/drivers/perf/arm_spe_pmu.c
+++ b/drivers/perf/arm_spe_pmu.c
@@ -679,6 +679,9 @@ static int arm_spe_pmu_event_init(struct perf_event *event)
 	if (attr->exclude_idle)
 		return -EOPNOTSUPP;
 
+	if (!attr->exclude_guest || attr->exclude_host)
+		return -EOPNOTSUPP;
+
 	/*
 	 * Feedback-directed frequency throttling doesn't work when we
 	 * have a buffer of samples. We'd need to manually count the
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
