Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FD035960
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NJwnqAwIWRClYKeh3QLPb4jTIMOm6L9R6ByH/u/61PU=; b=EhZAzKZRprMAjtFpnnHi4W2O6H
	vBWTO964zsI7ehcrpgxBONwO9j61aYiH0yDK4qQ3Twgjx/2UJqsrBAJ9fO4cF052RHvdvdqivrS+/
	DADI3GDB0nW7OuRRPLbbJvJKC0ulPfZ+BYaoIB3MtbrqQLXG/VgHykyTl4SAotnqyUM5kiyBzwzKY
	aNK7CpctaISFWVOzs2Wf8jBZ+l323j5FTiyJuNyUq29IyffNvfoxqnKCq77lOmQQEsjKiBuHR5K4T
	KGMnz+FTCZP5Of2ofVxPCvoLA4+ThKchlJjLp+qtzNBJr2QNTi1gQdscqpfFHQ0tBWiNs2+TAAaoJ
	D4saQeAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRyv-0002Dk-8R; Wed, 05 Jun 2019 09:13:17 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRym-0002BJ-DD
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:13:10 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190605091303euoutp0145a584a3f32847e720cdbcc6c82d737c~lQoTFhmdk2439724397euoutp01O
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  5 Jun 2019 09:13:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190605091303euoutp0145a584a3f32847e720cdbcc6c82d737c~lQoTFhmdk2439724397euoutp01O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559725984;
 bh=moPbzwJGZjDeUL78+WXBY6oRMANpdEliVHgKr7HSSV4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CIoEMMzrOAeio0YaOQ7LnP+8lyVRwtFsJN+xqK1Xtb+ofgpllCLJrX54M7EA9RsNy
 bzUGjy6Fjj7WrmQMkNiQK5aM7TLY98cK03JWyS8t+Wl+ZRl678z6jSglJfBkMvY1mu
 crjQU49W8Ps6n7+nQFgl+xIIzhxwy7dH2BsYHFEc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190605091303eucas1p2ae50eb4b0a6c63cd41c695257bae3a37~lQoSOyWuF2525525255eucas1p23;
 Wed,  5 Jun 2019 09:13:03 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 4D.64.04325.E9787FC5; Wed,  5
 Jun 2019 10:13:02 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190605091301eucas1p2f360a867c8df8ba542942d425289f355~lQoRQDULl3238632386eucas1p2e;
 Wed,  5 Jun 2019 09:13:01 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190605091301eusmtrp25c171d486c84fd7cef814a608c905e25~lQoRALSC_2473824738eusmtrp2Q;
 Wed,  5 Jun 2019 09:13:01 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-34-5cf7879e3d31
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 53.30.04146.D9787FC5; Wed,  5
 Jun 2019 10:13:01 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190605091300eusmtip1ab89943fe9c0f5b7a92ebfe38b58fa2e~lQoQTwNmE2955929559eusmtip1k;
 Wed,  5 Jun 2019 09:13:00 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/5] include: dt-bindings: add Performance Monitoring
 Unit for Exynos
Date: Wed,  5 Jun 2019 11:12:32 +0200
Message-Id: <20190605091236.24263-2-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605091236.24263-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djPc7rz2r/HGLx/pGexccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FFcNimpOZllqUX6dglcGVNvPmQvmC9Q8fntBvYGxtu8XYycHBICJhJ71j1n
 6mLk4hASWMEocaptIxuE84VRouHqaVYI5zOjxLxFO4AcDrCWs/1VEPHljBIbulezwnWsOzOX
 EaSITUBPYseqQpAVIgKLGSW+HY4CqWEWWMYksa/5ExNIjbBAlMTPS9EgNSwCqhKvpv1hAbF5
 BewlLm44wwZxnrzE6g0HmEHKOQUcJDbPsAcZIyFwil3iw/ppUDUuErtPXGSGsIUlXh3fwg5h
 y0j83zmfCcIulmjoXcgIYddIPO6fC1VjLXH4+EWwv5gFNCXW79KHCDtKzDm0COpdPokbbwVB
 wsxA5qRt05khwrwSHW1CENUaElt6LkAtEpNYvmYa1HAPiQPPZ0ODczKjxOz1E5gnMMrPQli2
 gJFxFaN4amlxbnpqsXFearlecWJucWleul5yfu4mRmBKOv3v+NcdjPv+JB1iFOBgVOLh/ZD4
 LUaINbGsuDL3EKMEB7OSCG/i7S8xQrwpiZVVqUX58UWlOanFhxilOViUxHmrGR5ECwmkJ5ak
 ZqemFqQWwWSZODilGhh3bZD3zGrtid13V3Bf+y3zisulL9789o9yOMHms0TAaE2n+CblT0u8
 dFwDAqJ/dfUdnMn3LeA9p/VW1UO7fd+cE/yR3JUZris46dnzS42P2P7vuJT2cger6u0wyZuL
 X8s5r8mOVPUX3nH4fHPba+4AD/67wR95f13ltXxuoSEetJzhl+rvcEYlluKMREMt5qLiRABL
 M8B8RQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xu7pz27/HGFyeqm2xccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZll
 qUX6dgl6GVNvPmQvmC9Q8fntBvYGxtu8XYwcHBICJhJn+6u6GLk4hASWMkrMvnSMtYuREygu
 JjFp33Z2CFtY4s+1LjaIok+MEl++trKCNLMJ6EnsWFUIEhcRWM4ocWzVW2YQh1lgG5PEniu7
 GUG6hQUiJPZfXQJmswioSrya9ocFxOYVsJe4uOEMG8QGeYnVGw4wgwzlFHCQ2DzDHiQsBFRy
 /OxW5gmMfAsYGVYxiqSWFuem5xYb6hUn5haX5qXrJefnbmIExsm2Yz8372C8tDH4EKMAB6MS
 D++M+G8xQqyJZcWVuYcYJTiYlUR4E29/iRHiTUmsrEotyo8vKs1JLT7EaAp000RmKdHkfGAM
 55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYJyVtfzKlvdRkg1i
 f5fMrUifmBv3ZNmlHXE/04x/XUhotDPlP+j1SetEWP06IyO35cGT/CQ0D37VqFu4OOxr1LsN
 Py3CU9N3tQhy1l/7fkr9lkaxwd1N7OXSlY8LZs6aXDtR/ezahM37RRhX+17k8xN6y3C04IJe
 VbVh5b2u4H5vM+NpudIdH5RYijMSDbWYi4oTAdoRibCpAgAA
X-CMS-MailID: 20190605091301eucas1p2f360a867c8df8ba542942d425289f355
X-Msg-Generator: CA
X-RootMTR: 20190605091301eucas1p2f360a867c8df8ba542942d425289f355
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091301eucas1p2f360a867c8df8ba542942d425289f355
References: <20190605091236.24263-1-l.luba@partner.samsung.com>
 <CGME20190605091301eucas1p2f360a867c8df8ba542942d425289f355@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_021308_587891_52F86622 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, l.luba@partner.samsung.com,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add support of a new feature which can be used in DT:
Performance Monitoring Unit with defined event data type.
In this patch the event data types are defined for Exynos PPMU.
The patch also updates the MAINTAINERS file accordingly and
adds the header file to devfreq event subsystem.

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 MAINTAINERS                           |  1 +
 include/dt-bindings/pmu/exynos_ppmu.h | 25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 include/dt-bindings/pmu/exynos_ppmu.h

diff --git a/MAINTAINERS b/MAINTAINERS
index a6954776a37e..4c1bab87ff4f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4653,6 +4653,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mzx/devfreq.git
 S:	Supported
 F:	drivers/devfreq/event/
 F:	drivers/devfreq/devfreq-event.c
+F:	include/dt-bindings/pmu/exynos_ppmu.h
 F:	include/linux/devfreq-event.h
 F:	Documentation/devicetree/bindings/devfreq/event/
 
diff --git a/include/dt-bindings/pmu/exynos_ppmu.h b/include/dt-bindings/pmu/exynos_ppmu.h
new file mode 100644
index 000000000000..8724abe130f3
--- /dev/null
+++ b/include/dt-bindings/pmu/exynos_ppmu.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Samsung Exynos PPMU event types for counting in regs
+ *
+ * Copyright (c) 2019, Samsung Electronics
+ * Author: Lukasz Luba <l.luba@partner.samsung.com>
+ */
+
+#ifndef __DT_BINDINGS_PMU_EXYNOS_PPMU_H
+#define __DT_BINDINGS_PMU_EXYNOS_PPMU_H
+
+#define PPMU_RO_BUSY_CYCLE_CNT		0x0
+#define PPMU_WO_BUSY_CYCLE_CNT		0x1
+#define PPMU_RW_BUSY_CYCLE_CNT		0x2
+#define PPMU_RO_REQUEST_CNT		0x3
+#define PPMU_WO_REQUEST_CNT		0x4
+#define PPMU_RO_DATA_CNT		0x5
+#define PPMU_WO_DATA_CNT		0x6
+#define PPMU_RO_LATENCY			0x12
+#define PPMU_WO_LATENCY			0x16
+#define PPMU_V2_RO_DATA_CNT		0x4
+#define PPMU_V2_WO_DATA_CNT		0x5
+#define PPMU_V2_EVT3_RW_DATA_CNT	0x22
+
+#endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
