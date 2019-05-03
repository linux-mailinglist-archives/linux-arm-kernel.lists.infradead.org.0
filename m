Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B4212F40
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rETZfrD44jAXHpZ0Ke3oEIPvk+/F1NMvrRigrRL8AHM=; b=tlvJN1LMQ8kqc9
	d9OayNuqjYuAop93S2KU63mLgA1A+DpC0pROt9O2mYfGQERcK8JPL9cWjDmyyP8VFF4ZUuKimIQfw
	GWqI62ACFmAWfMy6lwCRYg8v6+FOFU45m+I12NHMc8gAXNsAfdN9waGkD/i4RBsrpGGCQvzMLWK9K
	BDWc4PsLVngiXvOv5KSYgv+XRC+qxirRDritqxrvmMJ+EQXiJl664NOo8MvvV1Koy8W7coAdtTDzE
	mLicVOQTA57WaJhERSW2NLYd2mRuMTL0jzHXZR5RQ6trGDIwkFXGZWIL6+gtfg7p0u6t+cfU1iyQM
	MiKNPG8EpG9x3Wr2bIQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYIp-0002o2-O9; Fri, 03 May 2019 13:32:39 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYHQ-0000pd-9C
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m/t9VwEh0IGMDE84xit+AR9hWQjFYDy0oSd/5o4LzYU=; b=rWtvRcSMXPsGlsZvAbZkKv5GrV
 m//79btE59HUzdhF17YIcYbc5poWpjJWQL2HHwelOTfhjMd8VJLP1B5Ccq0l8FMvMVvYGFAHhVfzB
 Pttu6yYhDqFrKBCbQ38JKMoFl1fCaubR1wWj5vz4mlNw9cZ+wiR49kAfB/uNnmJAdUHG5pK7eFdqa
 vKlq4JKzANSMLKaLraJHWSrOH8hnGyZ89x1EHTeR1CwijPkxEqBxOENRpHrK2tw68XL8A7uoRhYFT
 3F1otsPNo8zjnPLa5T3Q/kGDJaBQBlQEuoD287lktlX0whO/BkRhb89LqdpZ9B46ZntsQZP8zr8Ae
 lWhVPk8w==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXZH-0005fm-Sq
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:45:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 97DE580D;
 Fri,  3 May 2019 05:45:35 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6052B3F220;
 Fri,  3 May 2019 05:45:32 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 15/56] KVM: arm64: Add missing #include of <linux/string.h> in
 guest.c
Date: Fri,  3 May 2019 13:43:46 +0100
Message-Id: <20190503124427.190206-16-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_084536_053456_2314B4DB 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.0 points)
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

From: Dave Martin <Dave.Martin@arm.com>

arch/arm64/kvm/guest.c uses the string functions, but the
corresponding header is not included.

We seem to get away with this for now, but for completeness this
patch adds the #include, in preparation for adding yet more
memset() calls.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Tested-by: zhang.lei <zhang.lei@jp.fujitsu.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/guest.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 62514cba95ca..3e38eb28b03c 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -23,6 +23,7 @@
 #include <linux/err.h>
 #include <linux/kvm_host.h>
 #include <linux/module.h>
+#include <linux/string.h>
 #include <linux/vmalloc.h>
 #include <linux/fs.h>
 #include <kvm/arm_psci.h>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
