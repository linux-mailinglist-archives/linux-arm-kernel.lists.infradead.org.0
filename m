Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ECD13C201
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJtq41487Zpx/4Qm81afoa+2OTa9OqbW6d86IANaVNQ=; b=uUDuZ0P/1x7Aj6
	CFRJvmO/C3EmhTM534IKI5O9jMlJwQq+GinG6Rnw7+SAcIEx9zPoBeIs/akbdlA1PUYRHLhu6IP30
	uPwUA9ybwm5U8GQklzS4VTl3R6BSVoyi/T4JOvJ86KI8JmaAx2hd6oyeIqhfzgB2Wy50n8BOhja+h
	KuGbRFFgabbZzoU/FnJ62YuGwg7dYZnw2O+dZpKosyUd1VgmnVkvmgbGvBNESZGHfITK6G9cUPT43
	ktNWyN2MmqbH3Ssiwdp24exw+LGJPFul5KSlRZNwlGP1aAjeftedykDfYZqKG+Jq4WXlaEiUhm9ab
	adlsY/f1kQfY1txcuglw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriCB-0006Sb-8p; Wed, 15 Jan 2020 12:54:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriAu-0005Zx-D5
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:53:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id z7so15577022wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+Rlh4fuYqJBRp2jOU8B0MlV1M4d0Kd3bn04JlNplJUI=;
 b=RQa6zVa9SRTjAkDpWaeNQ+TzHNaqSmjwUNjLiSStgQQFU8m1OhdHW06usASKfswEOm
 ekBnCK32y0eGel6xTuDdUakkQQN3qPA3G8RZ2bB2/vEsRD4EoWf2rDFY7CHKqlFY4vh0
 QQFCA9QYc73ULV1UlWEobvL9/no+9Vz/XZYY2Tj674ONdjmt9oZZufAB1mBcKnbhBt2q
 4ZyVannnpIUGVhmPOs8HxT18d9vQXPh7dxHC9oOgWg1bO+r8Uh6hZp5mpAIPltKup6q6
 726G40en2MsW4RUUOKkrDY94g3Urf6AAlYT9SgfBjoDblDCkp9GNBhcmObIfka7aytXi
 sROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+Rlh4fuYqJBRp2jOU8B0MlV1M4d0Kd3bn04JlNplJUI=;
 b=hkozC8RHMXZZHvpbiy1RSBs/y7/yL0G3IgS4gJOf5CAcjcQrZmHGb/Qg38BCJXuHmN
 xK6OQg4YLh9eFXDGbMiBMuUvpf1qW///L4jGJ2/ELiutONU5yRKJZ3VirhcVfT4hOYVH
 8k60d47YPIokm+Wd2EVWqeDwGE6JHonVKH5xLMJI4nZBurCo/Oz86AV04y1uRVh7WTkd
 ps61ut1APXPcG+bxqQ36tQWKMDJVOkwbV2UbX/B610BOYw3Mt3CGrXmQBSOnQzgT6Ied
 rlJUgaefm6UX/NbSnuJuCwdzur2Kn6qV5ADSdU2WT59y1fv7H4UrMzBGXhMUrueo5a5K
 pfNA==
X-Gm-Message-State: APjAAAVa6r+PYc6zZSeaFgqJ5YEaBVVqdwo3P57UxefS6zEXXKTkvrYg
 /Aa/3hXGjDu2zFH0IO8P1t6bFA==
X-Google-Smtp-Source: APXvYqzMgS/+4YiEL+CRzGGcAhTGiJstPbrqmMFBjWd9wKtGLhNavA3EcOaksZRO/N8Ru4NFTMuSgQ==
X-Received: by 2002:a05:6000:118d:: with SMTP id
 g13mr32846130wrx.141.1579092809778; 
 Wed, 15 Jan 2020 04:53:29 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 04:53:29 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, will@kernel.org
Subject: [PATCH v5 02/13] dt-bindings: document PASID property for IOMMU
 masters
Date: Wed, 15 Jan 2020 13:52:28 +0100
Message-Id: <20200115125239.136759-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045332_440839_359C9505 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, joro@8bytes.org,
 guohanjun@huawei.com, rjw@rjwysocki.net, eric.auger@redhat.com,
 robh+dt@kernel.org, jonathan.cameron@huawei.com, sudeep.holla@arm.com,
 bhelgaas@google.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Arm systems, some platform devices behind an SMMU may support the PASID
feature, which offers multiple address space. Let the firmware tell us
when a device supports PASID.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
