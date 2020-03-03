Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 789BC177A13
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:09:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjaewmCCUGl4wJBXsqc1u4FLWJ86/i9GDXO+VvKmJBo=; b=dzXMdYBzAMmiRS
	UwAcADK15msVZ/6d/6z8Q+HjUYfG88H2lV2do+IGRNmb9NAz47RPSA+S0teE2se2YCRgD17kKebAO
	XhGYyCWGvVGyhSdnDgTaMMtdVB0kE2eld5PCuq+DYs+fO9YheSDLOQD99fjubmZHCbzBItYTtK0Lr
	PJD3cuNWpt8tp8ytCRonFAh/Zu64uwyITWlgdbe7sQ5m/op0kLzfwAxtiMiCiaCqt/2fvTfT/1FuX
	00LbtRoVFMWIEWV6AT0gyl+ZrTKNjZA+UL8GFWQ7V+DhBmdYZhAy7ynhVdShooVAXsKuSHD3PGWH4
	bx9cpDzxY1fvAPgjgWyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99Aw-0006AM-PR; Tue, 03 Mar 2020 15:09:38 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j999T-0004qu-13
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:08:08 +0000
Received: by mail-lf1-x142.google.com with SMTP id s23so3014984lfs.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 07:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qu4L8psLtSRHjye4pOVUdt2rrul0W+hLv//Rfvk00vc=;
 b=HEcMEkLePpCimF/wMPTy6RBLp8JWPVNYRK/KypW9Sck6/wveKYdTxCa+/MyCnUfXBW
 ah2N9pSfaLtd3Bw9+2lHnhxHfLARz7jZbSSTW7KSnO2utGxuxVn6402arMsh3xYDkoPD
 XM+K30b1kvZ2odWMm4C4iajwsfHp4mEoPRUIXxh/AGWPbbpdUA+2dZ+CzxloN2dpDqo7
 rzWp8CnMnXm1qSFt13BEPeVMl1UHOu/hbG8q5L+kPHYmtyWVdqhsxawWiYMdEOx6Dmh7
 xwnHceszl2o7zAgiyFTJsf3qjXL3qT66sJ+6oHrOYXGRq7SRzxa/I7tpR4knhVWXafv2
 O5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qu4L8psLtSRHjye4pOVUdt2rrul0W+hLv//Rfvk00vc=;
 b=BQ2P7DP7/PW4KfmPwVM6k+g69RdmTTdyj9p0NP0dN90bvMSbvbek7z8mmeW1BF/cw0
 mWIlI2YWmq5mVl9JuHug5RfbO+bZt4ZXMMT+hRaMr3TZ1A1sTBlkX0rJjt4Cs8i1M/52
 diqnI4KYbvkEIlLbmQqNpn8JTdqba4/n17hpMKZiJp2MX4r7TsFL/dLq1WLp7B7xmO98
 6ryZhlXmvh+nAmzsmfh/PAXfSuTirDTnOwUKPiwErd3ptOtux1VjfHz1VvqJJbH3ojPH
 g/cDFfEzgQLmF+H9jy+9y5jJ/yEoKa6BoganK69ARktkZU6r17edVHPzZr1lvcknitgB
 xgTA==
X-Gm-Message-State: ANhLgQ2uMI6oUeR4HsZSrxJ2dO+47YuKQlRQXKkt6S+QuMfgSKdJrs+G
 vjWfsEpCYNgAK0+gT649juq3OW+quow=
X-Google-Smtp-Source: ADFU+vuOY7tLHeptjMrYBw0cHHhnzrTWWdK/Vlk+y170lgD8Gex04FZPWMeMr83K9o8b8EHO3e5u1w==
X-Received: by 2002:a19:6144:: with SMTP id m4mr3018922lfk.192.1583248085004; 
 Tue, 03 Mar 2020 07:08:05 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id n189sm12143135lfa.14.2020.03.03.07.08.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 07:08:04 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH 6/7] arm64: dts: msm8916: Conform to the domain-idle-state DT
 binding
Date: Tue,  3 Mar 2020 16:07:48 +0100
Message-Id: <20200303150749.30566-7-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303150749.30566-1-ulf.hansson@linaro.org>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070807_074071_9059E130 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 9f31064f2374..8f3f19e66cd8 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -165,6 +165,9 @@
 				min-residency-us = <2000>;
 				local-timer-stop;
 			};
+		};
+
+		domain-idle-states {
 
 			CLUSTER_RET: cluster-retention {
 				compatible = "domain-idle-state";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
