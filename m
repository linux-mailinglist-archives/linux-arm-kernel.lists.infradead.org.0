Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212211818BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WD1niqb0lXdifNGaNu/UDGpB3sKTpCuMCYfStbNbSoo=; b=s3sdf09BalVovb
	9dx6knfOhT8lTf1I0mNr73bfKlx+pJosSrr3yPb+ejpMK7aL43s613SEWXHFpkvF9qTi5OyU6kacp
	wciCdiFaVnaXkyvB6rQZeVw6T/tTgMkSfKtKo0Nrh9KglFVTEdepATnj2YG67Z2hr7DCkfaHkZVmx
	LbvH0EmbwfyTFdV7Jtvi5xE5oK/dFOgOVV0s1VC3k9me+YiT5egCb7ruUzx1TqZxFCfaU+h/ODyMF
	8x+jpYcIm6+zRuya3VfpwOyTTnUZti2CbTWZ9ZrjahrfRwqvBsoThK9SWq9sYuTknypADOCT3KCXZ
	VL7PagxZAK3BQboixqzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0oG-0002UL-HV; Wed, 11 Mar 2020 12:50:04 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lR-0008Cq-J6
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:47:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id 25so1933043wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8zesK78yJZWicqhUwQPL3V6IqJnaQGS4nHnDD923Fhg=;
 b=qpU0Jj2JGN061vUq5cRmJ2MXokC1AW2fzaoV1IqvSV4EPD/dGYLmROiwAk6c96x6vW
 3c/QS7+d0Xs5Hg4r7OeK7NtbyPvNPP+RLWm3RAqJWlVgADXkRpSmM4wionq4sZjhwfZ6
 QnTdAlc42Rps5J6oHni3fFRJiGfPdNWPPBRs7orE3Sad+mMLGwaOhdJfGJcCqrGm0Pka
 snPcqW+J2mj9avU/qFATUqel4P0ix1B8p1qv6emtgkrGOO7Rgx7QYRY1KdpBr/OIuiDx
 vjQs8+BI98JR4mQqH2dqqlxDjanzHaFD/KL4Szy9PMzsMwMolUfmEEz9VwmReUMISzJz
 hL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8zesK78yJZWicqhUwQPL3V6IqJnaQGS4nHnDD923Fhg=;
 b=DFsoMiguk/Do2wJS+uEzxcqL8O2lM1CxOmH50s7h4GWO8tjeTRTTQCvM5CW6dtClmL
 z5yaJT6yyPjXqP6cQU0prD28ASm2TPVb+NQgvwdc1N5I31E675kEphs+scNb7XT7xQXc
 /Rfhmf06tRbgXzLKExb04F9AoWYp5d8udL3TkQnpvOAVa1+GSikkzJklolUf5ZudjWAA
 U49VbPAKP23YFrg6g97XNbBzBs5E7gCtOclASuEszBeVuCZ7yQ/OxGif4+vYblmjJSR9
 tc9GZfXj8rDAsJt+k2ERU7j4qoPJyGuNl9qnPnPJ1NdCe1gfN2Yeh8IAy1Dmo0q3bUAe
 Ap5Q==
X-Gm-Message-State: ANhLgQ36FbDAwtw6s2G2YhFW+VkD9GyrtRyGdZHMyJZa3jzxVwvLpV2A
 Df06f5O1qNCRZul7BtuEkxwd8A==
X-Google-Smtp-Source: ADFU+vvKRqzKojPsnzu47XlfEmFywvbZvI7bIuc0VHfmPVsSrBbWdmKhaDCO0TaazIr2/co3EoA9sw==
X-Received: by 2002:a1c:5fc5:: with SMTP id t188mr1007720wmb.110.1583930828211; 
 Wed, 11 Mar 2020 05:47:08 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.47.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:47:07 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 10/11] arm64: dts: fast models: Enable PCIe ATS for Base
 RevC FVP
Date: Wed, 11 Mar 2020 13:45:05 +0100
Message-Id: <20200311124506.208376-11-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054709_679882_2EAA7AC8 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 lorenzo.pieralisi@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, guohanjun@huawei.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Declare that the host controller supports ATS, so the OS can enable it
for ATS-capable PCIe endpoints.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 335fff762451..9171bf0254bf 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -170,6 +170,7 @@ pci: pci@40000000 {
 		iommu-map = <0x0 &smmu 0x0 0x10000>;
 
 		dma-coherent;
+		ats-supported;
 	};
 
 	smmu: smmu@2b400000 {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
