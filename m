Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F2715834
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=INLQ0uE9k39ZVAyAvCkCPau4ulz0oH7uEcaSGhwJJLI=; b=IHsS0kxPGgkQxsdVYy/wJh8/2w
	r0zoW2fQIrOza3FxH2l1W7rOCywxaJfge/z3qaOAC4j6hMPGK7PiMyGffZRWzjmAAZJrIUJFIf1OW
	+jSRb5IkQfMc6wKC+NWIxdlNU+nDG1KBqk8uGbgJ9839aLzSk/puA+360JejNeCQoRALpH3w69Zc0
	wHKCAJC174X8QJijwWtxqz/PLMZR7vAOIRLpmlgD2BMG2L0cGhCvlVzQEOWeR5Jn/4ybz/B/i1mgc
	liUD6Unal/R3FFgX/w4ZgRMJWZ98XBy8TPrWCjRkHHvLW3dSYP/eM06qfdhc9wG4ItfOX2QrBQIU7
	EmjZWkwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr6S-0006KJ-JL; Tue, 07 May 2019 03:49:16 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5g-0005SC-4J
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:05 +0000
Received: by mail-yw1-xc43.google.com with SMTP id j4so12109755ywk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1apKvLh/MCtlGf9BbgbZYtMGyNwXm8M/4GKtsoxy7B4=;
 b=SiGFz3mdC9G4AqFUYtFoawi7vCnU6cpVENbRquLvG8zeGHKlUn7EERzjvFm0La+6SH
 Ik64V9pYNAQjyOeYVsJV0gT63l3WvohewuLZTIGgcXBOW6UJeT2w2bsSJUrv7G3CX24D
 anErBJq0s7Dz2wVp/a4sGdTmVt6FQJLsC2WO9WhMKfSl3Bt2RwiBqMgvySpJbtOt3Uxt
 dccwaTPeXxwrWuF3zQC3qIzIxF8Mwa2x8QwAJXKuOxEZOPdPk4Vv1cAV7DzyCYzQt+TM
 7Dx8y8NWtvPQ/ABeyi3I3VeaBHlQ69cxDmARKJIaq9GId2ZvFcmuTmAuFbWrCwQ7YZvq
 vjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1apKvLh/MCtlGf9BbgbZYtMGyNwXm8M/4GKtsoxy7B4=;
 b=ZNKKHdeUAWwVBscGkrbshXRbJV8WzeXEIs16whRFcL8WRJUqlQHujuoY+lflftaur2
 9UGxudNRi5Oj6UB+6hyUIBlgE0rSLqfvmTBmJo6ev/k8LCzGmzmcyS3TAvbAqBE2oBuH
 qmJUdPXnvvcBI1zwY/9grFglxa45r8HE/GvgreB62ENlSfVXFCD1M6x7KGd6TF6AwtLZ
 UOMs6q1tHz9fPqzfuSQPcxr8uaJnkmJ2puYDMM7xzvwHvcRDVg8ohxOsXMRdEjc9XKXV
 A0Kf1U4+kHztcWT4gjLGU8dB/e2UcdmVmP32T9VebKFaKFP/aw98pP3PBbJe7bodg5e9
 3/9w==
X-Gm-Message-State: APjAAAUPC3qAEDd0Bj0XN1QrDL7GS8i6L234qm5/LkSbM9rx6OMZPM2L
 WAmskb0/MnVtTOAKreJKh8wolg==
X-Google-Smtp-Source: APXvYqzcXPwDyxYIMw6ScsvMerLuoihLrGgTWQcyVer0yRkuOagvzuGFYock7o0zX5HZ9hNh9JEYyg==
X-Received: by 2002:a0d:d1c3:: with SMTP id t186mr13394571ywd.3.1557200906941; 
 Mon, 06 May 2019 20:48:26 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:26 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 06/17] ARM: dts: qcom-apq8064: Update coresight bindings
 for funnel
Date: Tue,  7 May 2019 11:47:23 +0800
Message-Id: <20190507034734.20622-7-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204828_611534_D72458C7 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index c17d5de877fd..8b79b4112ee1 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1636,7 +1636,7 @@
 		};
 
 		funnel@1a04000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x1a04000 0x1000>;
 
 			clocks = <&rpmcc RPM_QDSS_CLK>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
