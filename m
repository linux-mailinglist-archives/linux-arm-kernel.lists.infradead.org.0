Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5ACD3800
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 05:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=64+Q0E5pl2nwmBU4wL6I14qt9GCbk9lWw1w7CHMEi8c=; b=PYj0cP7OPUuZJZqID3t3Ovg9Xz
	3b6B61J0UOKw7ktynX0uqBF8JDJ5BpWTzPQMHPNgJxiNST8EOtZvML/RxJUJeZFWCc741HMTHXxHH
	UFbJ1+Et2jG4/RAqOjI3LpM7WI/wM6zbu8oYTRwNunUm2vTnYlfGH61xGBJkMVyxd6pDDkAvVIiLi
	dVECgGHlbPhqZ1mqfF6sSx+iYm2f/5zBQtXaHoIR4SkjMkB1eebSJ+PA/9G1D62xtWo2hMa7kU80p
	m+T+x3yfk/cV5ltN8v77i6qr9Ef8D6UeSAxQ7FJjCatFm2aF8tQyuMLQSCwXXuvz/1GmkRuHlYwk2
	DPQtcUeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIlu3-0005Tx-Vx; Fri, 11 Oct 2019 03:47:43 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIlte-0005J1-7K
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 03:47:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so5209241pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 20:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BFpgtLfpcuYnuHOZcClguxk/FizlRVOUrFmBGFft3Zc=;
 b=QLcqMomL195A0XFbz+6bmeHusd3RisVyozm1U6ZbnH9aFniTaqdqnyKC7dNvxtJX3x
 HK19zjIgzOfgQwXQDNp4IHbkwrsqsctxL6VgdOBZlTalLA2CQQ3Z2SNxkRz2MQRggiYJ
 NRZ1UL1syb8XfJPFupZoV2toUR6AkkJ8C0DBd/YD1fUE8Yxd6B5rImdVcmvNtywWA7W/
 IbkxT69IsFJZUiOq4I9WJnKe/WtK5ZYoSSxCWFOx97vfJkCjc4FBe0ln+hcfS9BVyEEp
 TuSgX62DRBym5hMIe0/UW0IU+w6vLpMK4gk2xFaDb5/UF3mI70O0MoAGDHqJwQd0oLO/
 W2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BFpgtLfpcuYnuHOZcClguxk/FizlRVOUrFmBGFft3Zc=;
 b=BBKubJWc1Et31qMIYtPRr3NRChDELlPOjaqdpF2arA9noPvyODz53lqEelP7Hpgk6f
 xs0BCXb27aiN1c3Wx1x5VjvFYb8Uv0SJToTTJryt4B33nB/IEhJFoRMEgk21Ssut07kt
 6VWk+/Vsx+pLx+ngWfINexvPISDqb398W96FeoZApioqXB5jnOh8zwT7zmO82Hpl2vQC
 7EgyDOv+8v6D90qldrrXl4x3X/8NwKSlx7c6yeE1KfmoTQq++CXZ5BpBc0YRuMGjWdBT
 QswecEAyaMGAjg5jvd60SCvXzdU8o+Bz6pjvBAHoanECQft/MhqSBJ48AZzbU2YOMuG0
 kjpw==
X-Gm-Message-State: APjAAAVipyUj3/U0SalKIw0/eroazcsCVX3TM9mHiziExxq8qNEnfJdZ
 zhB+qor82tWy8wmm+0XA1qMBpeYzMYk=
X-Google-Smtp-Source: APXvYqxmaqxpu7ohA7yHdWnf/4vQ5UFS1d9Fe43rR+v7KPX4qiC0Xq8qwegGxBu2z0qBDzrtwmo3WQ==
X-Received: by 2002:a65:53c4:: with SMTP id z4mr14216342pgr.155.1570765635475; 
 Thu, 10 Oct 2019 20:47:15 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id u3sm7493267pfn.134.2019.10.10.20.47.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 20:47:15 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: joro@8bytes.org, robh+dt@kernel.org, mark.rutland@arm.com, will@kernel.org,
 robin.murphy@arm.com
Subject: [PATCH 1/2] dt-bindings: arm-smmu: Add an optional
 "input-address-size" property
Date: Thu, 10 Oct 2019 20:46:08 -0700
Message-Id: <20191011034609.13319-2-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011034609.13319-1-nicoleotsuka@gmail.com>
References: <20191011034609.13319-1-nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_204718_258668_2F14BFE0 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some SMMU instances may not connect all input address lines physically
but drive some upper address bits to logical zero, depending on their
SoC designs. Some of them even connect only 39 bits that is not in the
list of IAS/OAS from SMMU internal IDR registers.

Since this can be an SoC design decision, this patch adds an optional
property to specify how many input bits being physically connected.

Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.txt b/Documentation/devicetree/bindings/iommu/arm,smmu.txt
index 3133f3ba7567..a9373a2964a3 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.txt
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.txt
@@ -97,6 +97,13 @@ conditions.
 - power-domains:  Specifiers for power domains required to be powered on for
                   the SMMU to operate, as per generic power domain bindings.
 
+- input-address-size: Number of address bits being physically connected to an
+                  SMMU instance, as the input virtual address width. SoC might
+                  tie some upper address bits to logical zero inside the SMMU
+                  wrapper, so SMMU would only support a virtual address input
+                  size, corresponding to physically connected bits, instead of
+                  the reading from register.
+
 ** Deprecated properties:
 
 - mmu-masters (deprecated in favour of the generic "iommus" binding) :
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
