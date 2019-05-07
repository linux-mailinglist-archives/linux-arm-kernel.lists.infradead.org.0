Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BFF1583D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O5vI+/JNsRaFmaluh0f0E81paDeBfHNGwaZVNTRw+l8=; b=njO1Sf2H3EH9tnadZlXr/wPog6
	XqV1UPFvRFW75pGj6PlyzFS/lFMnaswVTTl5WU/AyZYilFTRmvAEPETw/S6ta0kS7M6Ns4sj0yDV5
	h1Yo8eIGorPeC6WKAh9fly8pjjIH9nXEc02njbPZUhxtpOJ2Nfg3jEoOSuT3JRql7dNasj2VH6zlI
	RC4C6M5kEI0dgrWCaFWwGPXTuf5PDuoKMOykt/DQi12Bbeysx+TbfdAOoVfoGzzpWRthkohleegdX
	bCGpX83nIAKbp/jzy031cMCbexGtC1k+igYHGdeHA5QM+oOMcVEP7s53U7a7XoxB/0Yg8louE1OcJ
	DMFxKSIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr7q-0000n6-Qv; Tue, 07 May 2019 03:50:42 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr6N-0006N3-9F
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:39 +0000
Received: by mail-yw1-xc43.google.com with SMTP id j4so12110808ywk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vwMgvX0FwfCLm5htrrdapRBmNi7M0Zu2Nr3n1RL4TcY=;
 b=qsV/LfGyolJ+6TL9lbXabU3x6DmfTEo1sMtjsXFXqyz3t+8HlM5IbgZ4pIs1j6SDP6
 GksOXViQ0iUMhjqtj0y7+bEZZXycR9dqWap5aUGwKvJZvWdpMyqfXcvGRPgo0qfmrkEa
 2Ow5+HI20QwPfqStoGIA0HpK09AffKdqZ0LRjmNAQcAbf4GI5FnFYFJ8L2rXTKcohd/N
 WBlVHTTetSvneh+nZWE0PZaHHZj0EDzpGhAkqclzqzixAmTWfJnKGUR0RJb23YmmyhVY
 r1pMN/wRTCAl6TnIo7NA5+RR3DRjdrBY3YuWNVn2m1oGXYOJJDCFIlVTaCkRlnRdH8MK
 Ao6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vwMgvX0FwfCLm5htrrdapRBmNi7M0Zu2Nr3n1RL4TcY=;
 b=oxIOqycimsqDKSF0IJE2GXlKKw44+bFb3MF2Qcygr8ZNE4IoPDLhRO2kxlsvNUNiLH
 YhD0WhAe+sXyDP+XuJ3l7lpYpD2rz3YB3bnUMVTBMhCSQjb0dsTWeuUA++SS2z/SPIGs
 H5Fz/tD6Xe2SHC6BzupzQ/Ahei8Tzp1WwH3HHLY2lOk74pNOFTwSchMiRPzo/ojh5T8Y
 aWGPpRFXFWH2o0WuOSgdACSFIUJu+6n4ipmCzR5zF/8f4bIJ8Jyqg7v8V4Ip3SiByffk
 FgZeCZRL0RbF48dF9z8uSRSqGLl8qS8TrcXU7KuMiTgyjP/GJHkJz/SHinRFHC/R+bQE
 9vHg==
X-Gm-Message-State: APjAAAUJqzASCONWq0w6nb8ed1x4gNg4R8BWVZVRLrEWgpS/RZWwcZxU
 3Ili7Q+GWGE0Vo+rNgtALa75yQ==
X-Google-Smtp-Source: APXvYqwbtp3wW7SgC+L7ckBkjE6nmKELpvWfU2FadhJUOVNvfpsdCNcXnESgCdX5Z+OMGxZPHK4sEg==
X-Received: by 2002:a25:3b09:: with SMTP id i9mr19113873yba.340.1557200950521; 
 Mon, 06 May 2019 20:49:10 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.49.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:49:09 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 16/17] arm64: dts: sc9836: Update coresight bindings for
 funnel
Date: Tue,  7 May 2019 11:47:33 +0800
Message-Id: <20190507034734.20622-17-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204911_764797_148296A4 
X-CRM114-Status: GOOD (  12.88  )
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
Cc: Orson Zhai <orsonzhai@gmail.com>, Chunyan Zhang <zhang.chunyan@linaro.org>,
 Baolin Wang <baolin.wang@linaro.org>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight dynamic funnel bindings.

Cc: Chunyan Zhang <zhang.chunyan@linaro.org>
Cc: Orson Zhai <orsonzhai@gmail.com>
Cc: Baolin Wang <baolin.wang@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/boot/dts/sprd/sc9836.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/sprd/sc9836.dtsi b/arch/arm64/boot/dts/sprd/sc9836.dtsi
index 286d7173f94f..231436be0e3f 100644
--- a/arch/arm64/boot/dts/sprd/sc9836.dtsi
+++ b/arch/arm64/boot/dts/sprd/sc9836.dtsi
@@ -60,7 +60,7 @@
 	};
 
 	funnel@10001000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x10001000 0 0x1000>;
 		clocks = <&clk26mhz>;
 		clock-names = "apb_pclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
