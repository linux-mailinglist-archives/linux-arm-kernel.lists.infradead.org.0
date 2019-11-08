Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2940DF4F8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHiOEsNc+1IHSsnz+c5678yX5HbeKE/k6Hz20RpeKQI=; b=InOWRzhrTKcemH
	gsENJlFJLxsvOP6O/19Fk4gVmo4UyDOgxSEFaovYMa8YVJQBEiuhoM5xmAOe2ssR7TJFK3QYsotNc
	QnfF4gEeewnOtfyGbzaW/KUr2UTDRD/dLM0LFtaXDykenap6ePtWDJmsMp7DzfHWXJ9sXme+bfr+B
	gGdXm9eTO8uympa3FNv5cYwBupJIYuE68BHERDDhwZ4OB8SDJtOgO5N/tuXV/WmfOMEtcqcgkBBxA
	E5n10mMGi0fVrTCp65Y1GQivOFqRKflbyhAZgP4cxzQjrEYxoQLf8VjlqDrmZ7MNqftxjyZ4W4Soy
	pQthhqVmbBrACrqOzlsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6AB-0004ym-UE; Fri, 08 Nov 2019 15:27:04 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT69y-0004xA-17
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:26:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id 8so6649716wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 07:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xkWcxJ6Iuy+TFzutOZwKsDdjGV2W0A5RS2sI5DD8vzM=;
 b=rr+E9RT1m3Uo7HDUww3oQBuqgMwd4smQJlm1F51cGsAn5yxcXpfWYxrw5HNGAbAN0T
 vCuV/pFnYtG6J/pA8tYatmkzzIt46o+Dibijb10+j8gXZtsXmaPI2hVExy0xaTPM1pUw
 jWyJ4iAp0CaA+2OriDDPyVEAYwIpVTS1sbFx5qbFpaZE0rXPjKfyiWXPnoRAZqG++wEI
 quuvaGA4UYD7FneNYZe2huxUVlofu3I9+CDwSJXYrb2yPBxitzAAjDVaYj/cfBnZTpZK
 Q/VnQBsoVhbXhLUrHkrWvVm1kgTuEYPkBFnVWoN8dc8lROj6lv/76Wr+Dt4SpoqAyU3N
 Cv2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xkWcxJ6Iuy+TFzutOZwKsDdjGV2W0A5RS2sI5DD8vzM=;
 b=tiddLaoGIXbTil5naF+2HS6dLXcGBhSn/oG6aUcYcEXNf/rWRFQh1CXrg6xjX4Vr1Z
 Eu9lgkxf+olspYixn6zB8G1b7FurgGAAGFXRG9kSudncr9iVMLcSPRFJlaHwESoYQvXn
 QWaVVOfeP4/r5Qc2UHn9vTKKDnwvb05690So3AVkwlWG8Hf5jK4tYhVqnZWGrPKyW05i
 BzWxcjUkfdLRrtsqNsmYLP9PtZ0Yi0krIZPuH4BFeFg9GKnB/htnHbt5lvJLdCjNKGbp
 hgXXjoq3N6H8c0EkEnoypP302EIx3+/i5BRzAlkx+5ytF5sMi8f+3LjId8s6Dihr9MCU
 zTuA==
X-Gm-Message-State: APjAAAVSwFGXXYgZnxtN1VaDNphVOLrW2sCEeeSocBeGbSZYEOoedyNE
 3g4YNFeyXBTfKJXXqZ5Bp5yIgw==
X-Google-Smtp-Source: APXvYqx/xuA1TPNnHqIK0UYk9J6qHcyjmZQq/kaCmKhNSU7fNuxym1Kdo6WOQxPLxhdoo0A3JfJ3WA==
X-Received: by 2002:a05:600c:210b:: with SMTP id
 u11mr9006014wml.170.1573226808499; 
 Fri, 08 Nov 2019 07:26:48 -0800 (PST)
Received: from localhost.localdomain ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id w18sm6579232wrp.31.2019.11.08.07.26.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 07:26:47 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/8] dt-bindings: document PASID property for IOMMU masters
Date: Fri,  8 Nov 2019 16:25:01 +0100
Message-Id: <20191108152508.4039168-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108152508.4039168-1-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_072650_070724_781F5717 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, zhangfei.gao@linaro.org, will@kernel.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Arm systems, some platform devices behind an SMMU may support the PASID
feature, which offers multiple address space. Let the firmware tell us
when a device supports PASID.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 Documentation/devicetree/bindings/iommu/iommu.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/iommu.txt b/Documentation/devicetree/bindings/iommu/iommu.txt
index 5a8b4624defc..3c36334e4f94 100644
--- a/Documentation/devicetree/bindings/iommu/iommu.txt
+++ b/Documentation/devicetree/bindings/iommu/iommu.txt
@@ -86,6 +86,12 @@ have a means to turn off translation. But it is invalid in such cases to
 disable the IOMMU's device tree node in the first place because it would
 prevent any driver from properly setting up the translations.
 
+Optional properties:
+--------------------
+- pasid-num-bits: Some masters support multiple address spaces for DMA, by
+  tagging DMA transactions with an address space identifier. By default,
+  this is 0, which means that the device only has one address space.
+
 
 Notes:
 ======
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
