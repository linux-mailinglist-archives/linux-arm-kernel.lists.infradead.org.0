Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A4A1583C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OqUK4tD7G3VqL+Hr1a1XyneTDNZCpPRm9C0yYZaDkJI=; b=BPVsxCxqaK2ZvhroSPcCm0BgRC
	wttsuAO/7R1iPWcDDx4ZXk5T5SqLN8NL/6t/l3xJ4UfOTspB8q06Crea1Y1y3UNJfxp0cK7ZcyS8t
	5lO5YbiF8y1fT7jvZGStP7fmig5kcRBpJImib8Gx998lIh3rpFF/kRh9rCCOWeLOEb052tLjpf8i1
	95ryb27MZn3JOYb0EcnQdGSTPIt/PZglvLv+Ol/cniCG+rU0waIM5nHOC88Ukjf+wyY6zVH73+DSY
	0/PIticidGn5LH+1MzR3nGzWXy02aQk28aGPUPgjUvVyLMPpC2n8/oIle0GHHnzvdmZjv4jh68i10
	qZ/n+b1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr7g-0000Xx-18; Tue, 07 May 2019 03:50:32 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr6J-0006Il-AG
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:27 +0000
Received: by mail-yw1-xc43.google.com with SMTP id j4so12110611ywk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CSMtcSo9JpVVzIDDFPOXPjn5XnO02+Fil6gq/u1wnjc=;
 b=W3F6b9BB5RRAmVEetPhGC9HPc/6poBIY48FYkatCJDFamAQz29NnZvusuOJ0UU2yed
 phl9MgUzCjTrMNAKzSvaawyIS9rMf64AlNxQn2xEIho2X2oOIr8hYfRIINGLwEm8JcRK
 eZiUXix7b654Jp8f5UgySTLEBIjImna9+R8GxlgQYrhzOtYJQXTD//a9u2whLUVRtrB0
 1EF6QA44sA3SHVW1oMO9fdyDzNYFWtwZzzpQMZYVSM4i/U3k1W4aor17aG3hSPpdWyFr
 WrdrFtfainnL1ZaDnWF0BRz15lCr9ULwmg/vZywtS6e6VSSj4a11xJ1Z/RAPCcepINjZ
 Zt6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CSMtcSo9JpVVzIDDFPOXPjn5XnO02+Fil6gq/u1wnjc=;
 b=VjNhwfIuk19XJs5jOBzu1PL/BG3P2487rwKC8Xn3+zsYy8HFRm/48hzqUo+U1xI4L0
 ngaN/Gi9frVTFnnBgW55hCwLZ2HzsKQL2y9PDh1WPaTfLgceTbYdItha2Vk0hsl4RIQm
 Nog9cgLM1JodWQGW3H8wU1JidePLxn0FBm6KHJ7Q0cx7E1z+tbyadtyf1TbhDvrR1tNT
 uk0FrIxqMRqmEXDShlStQj5tOCpWqUCIuaJ4TkA3vWiecl/AFHnM6y3RKW9458mtDnbT
 ZPX77NCg7jhcv7qKd55zztWsRlLRnEMXXkwqgwSXHe6NuGVyxxg9f8otjIjCfh9O2JMj
 jnnw==
X-Gm-Message-State: APjAAAW7Re3hdAxfBGonXF4iCqLh4MkKrMxl0Y3UR8GxUaGy+F+b/A6M
 s7V4cGK0smWHD57B8lRwwbK9+A==
X-Google-Smtp-Source: APXvYqzuP9JoLZkloqhgjHIM8RTIYQqRXADIPMlJquJMGs/QDCovqT3DrIFTNOqoWIaAVdgKa9srsA==
X-Received: by 2002:a25:a029:: with SMTP id x38mr13931380ybh.137.1557200946511; 
 Mon, 06 May 2019 20:49:06 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.49.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:49:05 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 15/17] arm64: dts: qcom-msm8916: Update coresight bindings
 for funnel
Date: Tue,  7 May 2019 11:47:32 +0800
Message-Id: <20190507034734.20622-16-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204907_438274_D2100213 
X-CRM114-Status: GOOD (  12.67  )
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
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 423dda996b5d..de49ec110fc2 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1172,7 +1172,7 @@
 		};
 
 		funnel@821000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x821000 0x1000>;
 
 			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
@@ -1285,7 +1285,7 @@
 		};
 
 		funnel@841000 {	/* APSS funnel only 4 inputs are used */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x841000 0x1000>;
 
 			clocks = <&rpmcc RPM_QDSS_CLK>, <&rpmcc RPM_QDSS_A_CLK>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
