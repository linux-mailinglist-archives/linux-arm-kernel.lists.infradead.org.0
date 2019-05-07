Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 625B815882
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 06:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OO//GVV+C6dx2X+q9qSRZEZ1LCwT4XrOEmo3z4qlFh8=; b=Lxz6qSBz+z4aoRho62PdMImzQl
	4M/11CdrkfMs1hDSw4cJZFGe3zq3noBf045kJnImJqYc3hLAFPLs9bnB8q7rOdLE5T7qVKvUN80ZS
	zxWSpxP+GnEmec7jGLqIOwGc3V//PBvar5OjvFq1KffkmH0SfhQgoYqsCPHgnH1HjH9GHr5nOZO0i
	cx1aAsr2a/8G8MthCxgXnU/8DP2dVq4s/n7FiU7biX+0kuQ85K6Rml64p9rJMetugN/bdHdSZneFA
	QERhjxQtI1DRLwY8S6AJM3fHUUDOCCRucxQ5zBj63kpU41VUhivGFjMChKoU4s48FQ2DqnP+YTieC
	Sh+CRBfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNrlG-0004m0-Vm; Tue, 07 May 2019 04:31:26 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNrkr-0004NK-8m
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 04:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xGUr7luV+lrdmZ+BkDaMpEg1m4A3Ozbk53lXlxlU/NQ=; b=nTqZl9dQ/qdAE544OxanR+xCN
 bSzC6XyEwyEy1FSPakTdwS2fMMK6ZKYnY5eE/NUdDLFZCyHIILwPan7i9BBSxmdtrVz747L68Kkz1
 NO/oapqgDik2oerEWqwUU6pNM9JZl+VJLFKGjMYvtofcHrGKQ4J2wijBZ0u8La5y2dC5WrscHT995
 HTX3l2O34ifbN0H+ip7dMeEcOy7F3kI/CuBDCy5hsSTqXpzXu6DJ2LF2S5cX5OBMVD9SFqDCo/7fa
 v6+JAP7jmAX5GlX2AY21RjQaqzYZAiY3ZoALK5NbArSJpYUzgfx0bug25a5yW6EuzY3eFcrcod/wc
 TuzTh1oYw==;
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr64-0002nK-AK
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:48:54 +0000
Received: by mail-yw1-xc41.google.com with SMTP id q11so12148881ywb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xGUr7luV+lrdmZ+BkDaMpEg1m4A3Ozbk53lXlxlU/NQ=;
 b=fkzHigEIDg212Yw49ec8gEXZ+5MTxkQbcwrKEcyP9KwKWri6HCDuSP+iN/VH/TGB2M
 cAgwVKUD4tzeNCDVhI415Nbmh0SfjRUXdVVpM66o4QpEJgYVA51hbkxyMhtJWbr8coli
 wzyGC7WY7NWPfpghnuF6CDrixLhtDh/aFU3mfT0zMkDujDYRU+CyqXCBPMJ5Np/Un9zL
 5ypB6R6ey5M4nJGdD9ttkhXGCqYA4KFho4KKq6jsSgw+AJzg9H1af5c6kUQFasuhib9B
 kIQ5mqtGrtR4C+2W7k4Stz6+rGdPxfeH3XpJ1Nug8xGQdPfBm3dixbw9tTWg49aCTwE4
 Oe1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xGUr7luV+lrdmZ+BkDaMpEg1m4A3Ozbk53lXlxlU/NQ=;
 b=Wr8ZxVkNkXQVMCB0gRK1P1HgDs/tf0hAj6FGhga8lumjsVRLJujIQKlYxCSgdCcY7a
 w0wWQC4z4uJ/S3L2FQzVHSpC/Ebdtxm0PncScD6Wboxu65B6qGzD6wKRcl+vCKZvBpO2
 5aLVIV1UD7BHIZ0QHti85AmTHBX1VARiuAGW4jNITV1X4nD6fPulwMsVLtVqORbKE6VT
 tWFnGf1y8ZJfMf4n8Tf8NgTmOjsXhTQz+70FJ/JcQs59zJuaN3NB3J5zi3lknJO67yZF
 PfpH7J65UraVDpKHH+k2Wy54DtLIsPEnVa6+p+WHturHiU8KaCtteWHuAuawpmE52xP/
 Trow==
X-Gm-Message-State: APjAAAX09njghNgYtWhLXmJTKBcKL33SuX7w35ey/S1gpnWsqYxpQyOD
 +RN2T2ufYrSciGDBjnAP7DtVlw==
X-Google-Smtp-Source: APXvYqztWu6NHfbsHaZHHiKD2VU2Eer+E5fSs5X+GeFYueF/1WH5pC2kT/f/FUMklXg+iUj4eafihQ==
X-Received: by 2002:a25:a287:: with SMTP id c7mr3902332ybi.274.1557200923759; 
 Mon, 06 May 2019 20:48:43 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:43 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 10/17] ARM: dts: vexpress-v2p-ca15_a7: Update coresight
 bindings for funnel
Date: Tue,  7 May 2019 11:47:27 +0800
Message-Id: <20190507034734.20622-11-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_234853_579721_73B64329 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight dynamic funnel bindings.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index ef76450fe98d..164c904c9992 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -471,7 +471,7 @@
 	};
 
 	funnel@20040000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20040000 0 0x1000>;
 
 		clocks = <&oscclk6a>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
