Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B901F472C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 21:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQXkYWjjBtL5E2ekL/r/+l1yW/oeVli6bMAEg9iomxk=; b=JWUwQKxabfrNgB
	iWzuwa5tK4fL3nSUux7B4jMNj2PP+5bWE1sXWgU1MjBwbyro/6YLaTVwkYUkalv7gbTy+X4zvJ7Ia
	ZfyPyaZd8f+bitBRkII7SfHHxyEEcXxUFIR5i8nuSMJYcxhbOS98Bo+cjgcuS+4qk5D7yZC6AyZMy
	tdW1kN2qhWpiQ3OiosomixLAY6tkiie/OYsg8HJmpwaPkB6bHUYimHADWxHmOuYMiHmE7Usd5z+Fn
	ww9YktyPnYyKyPVDhyHT6elisqMNV+CCSj58an006/nnqJ1QuzRtNFdfHgOLaOqXnr4Ayyj9AtVjr
	E6vWS8/BpjCnWl5/Thqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jik72-0001fh-ND; Tue, 09 Jun 2020 19:40:44 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jik6u-0001em-73
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 19:40:37 +0000
Received: by mail-qk1-x743.google.com with SMTP id n11so22051556qkn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 12:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marek-ca.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sHWV6OU0cqgaqdPacomRMLT+w3Ah3p0WG4kNzV6/a0A=;
 b=R4aWwk4htZqHave/9h/EmzzlTvfpyow5xa1HrixdbeagLWiDVCahZX+fvgd72MMhKH
 mifgYvUj+jhWaMGg3Sy/QuCRU/M6RKcSTiv3XoeJ3SlLx/OpCDJihfdQDGtJHK6Ma2fv
 57K4OCfyNvmS7Mj4coeIZrZFaJpqmVEx2dQAQ48cfDir+BZHYiiGfFlO10AOnFVbaQ4l
 xacFlXm9XwJChbkrL3Ai0A69gf+8Aqb9dKIOsXRf2SdsS9hTKPcwi9G1oIrDRlCBi1AV
 k2QWPQR6Xa9viXBp+BOnMgIdZtNoxs4Gk5hOWjYWXe04l4pzi5HWgoRZ0X44+xTY6pZd
 w7ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sHWV6OU0cqgaqdPacomRMLT+w3Ah3p0WG4kNzV6/a0A=;
 b=bHwAaaR8JPWq6AV1dKYyT+GgbC9LGN36b6TY1TrO9pbtZtYnjBfLwThregsiclFezG
 iDrIM3C8jIBRQ/HtBG4CIZNGH7lqoAwHi0Gjvu5sdM2KZoVxuZyLEnjan7tfeqNt8Zea
 uurR3/4xfaVLlDWruH4HXQT0BAbGb2+xER64/IYYiTtE0eHWZYPryEwxa5gaKRZP695f
 hDxCi9rjUYIKnrhneiBmpmpmNOWUfUGh8ybg4z9RvGxH/3VjXfDzcpjLXVop5NI2IV1T
 8/lCuCZEmvPBnAxdp+fR6sOAM1yv/AglxcP9rrNa1l7VtIvYWK9NZcBNlZaGJ6r43nKE
 JL/w==
X-Gm-Message-State: AOAM532htSSDrjzzdjh39HQnObfOVHYWzycH9k3Y6nGCBDPTR+ghZxiD
 w/KmY2PFs69KtP7nUevUXUuKUA==
X-Google-Smtp-Source: ABdhPJylYwtTWOmAgXhVLnUMhpb1BZNqKTLwO9QHJOFRb6EbibLEywFO6AcZedPsGIptantkT+8xEA==
X-Received: by 2002:a05:620a:49c:: with SMTP id
 28mr30284895qkr.168.1591731634848; 
 Tue, 09 Jun 2020 12:40:34 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
 by smtp.gmail.com with ESMTPSA id v8sm10513181qto.21.2020.06.09.12.40.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 12:40:34 -0700 (PDT)
From: Jonathan Marek <jonathan@marek.ca>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 1/8] dt-bindings: arm-smmu: Add sm8150 and sm8250
 compatible strings
Date: Tue,  9 Jun 2020 15:40:19 -0400
Message-Id: <20200609194030.17756-2-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200609194030.17756-1-jonathan@marek.ca>
References: <20200609194030.17756-1-jonathan@marek.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_124036_250728_96267274 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible strings for sm8150 and sm8250 iommus to documentation.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index d7ceb4c34423..3ac741236c8b 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -37,6 +37,8 @@ properties:
           - enum:
               - qcom,sc7180-smmu-500
               - qcom,sdm845-smmu-500
+              - qcom,sm8150-smmu-500
+              - qcom,sm8250-smmu-500
           - const: arm,mmu-500
       - items:
           - const: arm,mmu-500
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
