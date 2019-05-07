Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E58C15880
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 06:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dRTrxHlY+sVHsHidvexTs680r37viTE3IXoIZ4nTQaQ=; b=WJXpcRUFuKUOM0DvhpXXUWnmhX
	ev9fztBVSZnRW47LxDL7QnIJzSutYakGqsSITuxldNoNvmWzx7NSY9PCjrUdoCutHbdBaa1ESLoy4
	KStpYzB8pFoeiiAfDGEouHnBJtgDfx3LJc/Pb4Nf7tVLzE/z5mdu2GMVIOuAhCLbK3+2J47UnwIfT
	AVyRvwlVih7KeYe9FbggjBS68SuuQU211ds6WxiuqwOetl8VlNQYu4fIhAZSSmHlSjnJUxadSi8Xu
	opHHrOvLE2D2dNGq+XZs3rRsz5UvThSyZnCQCnAypdH4zGbSvwmsH3Hsy8/r0gQhq/WBag9aHCSi2
	ZI/78YJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNrku-0004Na-MA; Tue, 07 May 2019 04:31:04 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNrko-0004NK-4c
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 04:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lpanXr4eIFDyHMXPZcq7rZmwL7bj7MI7+fqe4iBXULE=; b=UTcJZrjb7Mg80X6JvZlw/v65F
 4aQCkof9IpBlxJgv9srJNw+9Qon9JTcD0ExCYrPj7r5ppAEJVjh0lb7KFAkxUTv3INuEUH1eFnSH2
 Y8IuY/HNyz0Nt2dVOL+t7vpO5yQAb8GGJcKSIh3joCvjFBah4MjqAVi47sNwIGPsQoL4O+jrkQH9X
 EJM2cxJ8LzAyce2aL3Bmc22Er1j7/3flXLGQ/YGfislE/JDjw335j1BkecItPKLT3yVquhDva2iJz
 fp/rN65ztUiDKmD+BOmGul1WMiKSlgwgl9a2TdrX7lNhr03ukbumOt+B4T1469WraewyxNeOPtn8G
 pCSGaBm3A==;
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr64-0002nL-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:48:54 +0000
Received: by mail-yw1-xc43.google.com with SMTP id a130so6520453ywe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lpanXr4eIFDyHMXPZcq7rZmwL7bj7MI7+fqe4iBXULE=;
 b=y6ELDbc/BxRHVEpjCn9TmG3YlVhnh3vzRx22ZlHN1mYg2W93DjTfYRIwcENaUZ0RW3
 UqwGHj+naKpWZbXpr6JO5ZGXh6l7gJ5dqKAUygSa/d/VJRuILv+0OhBoTzSelm9Mf3Wi
 Hj7uyluS8lKF191ljIs5CDBFSteOS551Z2N8f1nEoajx0vUkMA2dXe1HI/n9oN5Bajqy
 GMoUukPnye9eIGhmi3/tzaFAllID6z67Wm4Gn9IMncQkdwUdWSfk8a5GMtmAwEroD7Pw
 eKaVBJ9Hv7hFWIOLmMlshZzc72atAwhESDsnroaY1m+eGF3K1kFni4rFxwogRjZu6v9h
 /Nxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lpanXr4eIFDyHMXPZcq7rZmwL7bj7MI7+fqe4iBXULE=;
 b=T7Cxjy2nJhb70BkHl6h8BtcplZQjC3QHod4U5ivAKzLEFaMCmHcnNF2XWHkCrq/C6C
 GBqcCiZPymwYrUo1SKeql1YkTrw4msZW1TBVLeO1J/D0VzUWJtETuCWmBZtlqeapYa3M
 nmz7xBsvnpCVvdVSZdV2Fn/j2kMUyfMQ8Q/g7s1CGV2PFsklvkdAMHg8LlbyDrZMIPGM
 LrO26ZMPU6UIBUlPAiZC+s4lYeeDfXuk1c46fLmfai9SYi48TRUosvo/rGLzd9RAFgMu
 2xhpUiNzMboDJy6ZfGAjsnU1ioh81GKNxxJd1vhsgI+A63TrYHWAyfmUFlgFaEp1IFLQ
 fHhQ==
X-Gm-Message-State: APjAAAX4FlFfMTxlgncwJUs7tVi/6Ht/JQFfIsf4oA99BneCgtRZv6ZP
 ColaRYuaVHzhZrjITlUdq3YLKA==
X-Google-Smtp-Source: APXvYqx/2rCcPlRDTYn4j72vxHya5VMqL/cLAwo2Tgj8duwEmg5upOduiF7JJkk7XcKUCNUIBlu4xg==
X-Received: by 2002:a81:6cc6:: with SMTP id h189mr5033001ywc.320.1557200927859; 
 Mon, 06 May 2019 20:48:47 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:47 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 11/17] ARM: dts: qcom-msm8974: Update coresight bindings
 for funnel
Date: Tue,  7 May 2019 11:47:28 +0800
Message-Id: <20190507034734.20622-12-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_234853_577896_97836BC7 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight dynamic funnel bindings.

Cc: Andy Gross <agross@kernel.org>
Cc: David Brown <david.brown@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 45b5c8ef0374..272ebea20a5f 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -897,7 +897,7 @@
 		};
 
 		funnel@fc31b000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0xfc31b000 0x1000>;
 
 			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
@@ -931,7 +931,7 @@
 		};
 
 		funnel@fc31a000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0xfc31a000 0x1000>;
 
 			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
@@ -969,7 +969,7 @@
 		};
 
 		funnel@fc345000 { /* KPSS funnel only 4 inputs are used */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0xfc345000 0x1000>;
 
 			clocks = <&rpmcc RPM_SMD_QDSS_CLK>, <&rpmcc RPM_SMD_QDSS_A_CLK>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
