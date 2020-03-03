Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F44B177A02
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6szQyT9+GRA8eczTXtB8WfxoQjZUAe4oG6kCNmtXD4s=; b=aTlLharQcIVi1q
	O5CeV4lFZS430FjNkzPvS9p/JtV84e6Bsph0lCgfywFhHmuHBtW/WshibyDnyWjaXjO+MiQeGDTCv
	gYPIiQT3vWL7RJ/yOXOnw59Lr8ilsvqHEfFq4yOsQEqONS8zmZ5Sv2GPNpZdS9Qd4kvzZPUx5Da6e
	xB8JU9cl+OthdAndVn4FvY3CuxolbN807OIUk2B828YK8XCTg7pwqeqlWGT/4IKVn0bLW9vxGKyJL
	2ow0gp522fT9PbPaU8tbzdfRgFKaSG7FMMoXmBbj3pbIms9c8jY48mQAG1Smw7mno1PIem++ewz9c
	mI2SVXUy89kXJSJUxUvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j999f-0004ud-Dp; Tue, 03 Mar 2020 15:08:19 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j999L-0004kt-HU
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:08:00 +0000
Received: by mail-lf1-x141.google.com with SMTP id t21so1998893lfe.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 07:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f9Z9RNVVgVoDIqftNG2lvo/XggBGLbBYVP8IgzDMszc=;
 b=BSPGSq+HX2g9M4ZlxaDoemDr8Dz6O+eSQs7Uf1rceEG2bgyvCwbjnVMj4gIZxtkyf2
 Rj0QvE2AGrJz81Nd00mPtfww6yy1l3TXEHbUNwhc5Ui65lz1pGmM3BFAnb/DWXv3fZqD
 TMq0+rA0l/NXxviYxxVo8wGV585FrX0PQWFhAUh4W/kelp4v7YFvcElzWVGq/+rz7KQc
 nHN8hIg2v8t+gRBMErWzfsp9cCrKGtxGhpCeX0d1rYPFJ3H9mQbXdzpsdAWqNK2VDdex
 QPvjOXGLbxOEa0xITt05GwPXoWWMWkWoMQX4U/cQXOLb5t6z7+RIOJpA4o43MFsp9nm0
 OBeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f9Z9RNVVgVoDIqftNG2lvo/XggBGLbBYVP8IgzDMszc=;
 b=J/G8A1w/tMG+KZXlyyMU8AHUk5IDguXZteySraniiBptbK1ZYm8bZSkljbOc4/2Coi
 MASWrdZCr+8AZg40WPVFyehCYlB/C761woOgccboqnDITYxrd6D5pwcH70RpnCOH29AC
 P/dt/wr7CWb7mhiG75IbCeQvwed52yv0NukBMJGRv6XA7rxWzF2B8DsCQFV2Hf2w4O1U
 M4Kff7/K/9aEyZY8UmZ6o25xGlxlgjdxdB+JLj/Dr06rhIGCVj+UF3o84z0RWrwswrJN
 45t2OwHsarwi2QFfygGJyyoH0TadMZ7uPt3duyzz1tB36+U5xfFSXO4Z8JwuEC8+bhcV
 Abaw==
X-Gm-Message-State: ANhLgQ1ardhPSKATLnrlw+muTJEeepg2fHAj4+BosuqRaNtJ5Hbl6Xak
 WYowUJlpp3C8ucxiM2BODH1i7Q==
X-Google-Smtp-Source: ADFU+vuSEKODHBkzB2d1lf+KfhiTMnwxEHTiiFLZyi65LbNLma9/oxtjmtdonRIpOtHBUTQL8dBbEg==
X-Received: by 2002:ac2:5328:: with SMTP id f8mr3028680lfh.47.1583248077205;
 Tue, 03 Mar 2020 07:07:57 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id n189sm12143135lfa.14.2020.03.03.07.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 07:07:56 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: arm: Correct links to idle states definitions
Date: Tue,  3 Mar 2020 16:07:43 +0100
Message-Id: <20200303150749.30566-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303150749.30566-1-ulf.hansson@linaro.org>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070759_573787_3690A3AE 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

The arm,idle-state DT bindings recently got converted to the json-schema,
but some links are still pointing to the old, non-existing, txt file. Let's
update the links to fix this.

Fixes: baac82fe06db ("dt-bindings: arm: Convert arm,idle-state binding to DT schema")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 Documentation/devicetree/bindings/arm/cpus.yaml               | 2 +-
 Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt | 2 +-
 Documentation/devicetree/bindings/arm/psci.yaml               | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index f61a5a13fb42..31b391a24b70 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -226,7 +226,7 @@ properties:
     $ref: '/schemas/types.yaml#/definitions/phandle-array'
     description: |
       List of phandles to idle state nodes supported
-      by this cpu (see ./idle-states.txt).
+      by this cpu (see ./idle-states.yaml).
 
   capacity-dmips-mhz:
     $ref: '/schemas/types.yaml#/definitions/uint32'
diff --git a/Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt b/Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt
index 06df04cc827a..6ce0b212ec6d 100644
--- a/Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt
+++ b/Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt
@@ -81,4 +81,4 @@ Example:
 		};
 	};
 
-[1]. Documentation/devicetree/bindings/arm/idle-states.txt
+[1]. Documentation/devicetree/bindings/arm/idle-states.yaml
diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 8ef85420b2ab..f8218e60e3e2 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -100,7 +100,7 @@ properties:
       bindings in [1]) must specify this property.
 
       [1] Kernel documentation - ARM idle states bindings
-        Documentation/devicetree/bindings/arm/idle-states.txt
+        Documentation/devicetree/bindings/arm/idle-states.yaml
 
   "#power-domain-cells":
     description:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
