Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D961173C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXFmBMdNv5pz+p26CW7BzuNcZ3aD99LBBfTS20Zi16o=; b=QCcdgEOQ0voWA1
	vcCh9TYFJJkRkrfA1EeQdnaedD7VVl+KrKZouwJ60awjIiA3qKmr5mfbLwT4Vu1PXQ6JSpVwEGfbQ
	koe5OUwc9T13nocsVFRwM/XeRKIWzntuzfwyKPfNxfWyKzIaxchqb2F7Sbl3qZj8qrDLEXrfbOQLe
	WkvB8TS30MH6aDx8XBgi9rlLS5fGSr+h5FpwnIqtMl6BeQjAYPTNes0xLzMeV7Qrp5SXYsb7X0dTX
	6BgzlWJAA3+m0OPQ5DTeGoAZlfnCxsBt5I9l3eoLCGkJvtLhOmVdA9Ww+CGsBSWnPkW4bCN/IYrhG
	WAf2hvSxYSej39KyO7VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNWa-0005Ae-EK; Mon, 09 Dec 2019 18:12:48 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNVn-0004bQ-Qm
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so17286121wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KOPwmsVGim8uksddBYEL5Xr/XEk+fQ6sygiouqBeFpU=;
 b=Tts/uxwAulwDWx38JQ7vQN1vchjW9BMQPwqFcz5u8er0ybt0fOUvBHt+WEAB24gXyc
 BlO6xJwA59upCQs0IseN693yMmNMgDbbFgWrWiT8ZWofkwrA7Seq9O/D4Gx//cyDdaGE
 /guIbq5MoYH70/5n63vUCderClZlhJs3YBa2U9WpDRuoNG3S47hAE8+Ww4p9KU6i+ziJ
 sceo5n1ghS7WbisS3mMyOWUi5Kf2+viwAkPdhnJOYSbUXUfLBHgRWi46jnVUHnae9E52
 Wr8TWOQ6BMPwQ+bvP0D1ypo0U6Cun3Y1noijEKy7UPoDC+Idhr8iP2SN8THAoGBBnKww
 bVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KOPwmsVGim8uksddBYEL5Xr/XEk+fQ6sygiouqBeFpU=;
 b=nz4LuqyBvikRLhPpdbs5WdEWv6JhRFXKf7a0UfP0ZIKQxoxOz9LCYoNxebHNr6DOn3
 LDjQTJvhw5NcXwxd3nd/joKOtzBEYy5g3vqClSy7OSZM/+Q6+jPsYt53hS6+/F9niqlL
 sts26Nb8jT1+N+NsSrbosv5RTj6DkQOMKJkZJprVNP0evxuSrrhZ2IkRNYHd6Ti2OktQ
 EBUiD/n+MHMjU8obh/IIewBoOY5UcsjpPKWU1tfbKG9egdLC+DDQ4m1x/axM6s0D0wsZ
 kHnsVMFPFOf1ltEr3CFm+82eCyjey0Zc9wOd34hrWhD6UBvBZBTAQzToFdSHzQTa+JE/
 8Iog==
X-Gm-Message-State: APjAAAUkR5hYBVoaOUbbafL9rRZlQV8EnA69UmaMB9280nzQEW1DFZFj
 8/gr21VRrt2/NUgwO4zj7mbUQA==
X-Google-Smtp-Source: APXvYqwd75VErNxunler74D2aYIuUwxtIPPyshTDCbkZm56YpyIMcPHPAkjo50SdxP2In7GjOAaXhw==
X-Received: by 2002:adf:f581:: with SMTP id f1mr3704624wro.264.1575915118236; 
 Mon, 09 Dec 2019 10:11:58 -0800 (PST)
Received: from localhost.localdomain (adsl-62-167-101-88.adslplus.ch.
 [62.167.101.88])
 by smtp.gmail.com with ESMTPSA id h2sm309838wrv.66.2019.12.09.10.11.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:11:57 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v3 02/13] dt-bindings: document PASID property for IOMMU
 masters
Date: Mon,  9 Dec 2019 19:05:03 +0100
Message-Id: <20191209180514.272727-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209180514.272727-1-jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101159_864414_EABC5996 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
