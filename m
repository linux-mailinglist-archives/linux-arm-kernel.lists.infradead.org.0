Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C4712AF20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 23:18:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7Z04D2aWVI5lm9+pNcwe38kng/MzK4OqEn/aVoCLD4=; b=uQLSIFbB/mXCYM
	xyJnILXpcwVKax351bMAuLKV+8/WmUsQAubgOHYV034OXAWYd2n6o9W4TxbLgB/S1VX0pEmknDkY7
	2dPsjLYVdYl2c/gzJGgSm8SWtd8oalsSCvJblv55FiXRpbpdvKotrK/CPHH6qrc8QtA+3vK6JSrC4
	XiPA/yaVONLewYy+g7Dg7gPT88w+uL9vxvTPrINZpiyRGvXYuV5mmWIG99AapNQX+QeWI2tDIEZIo
	giCkBl0aizOOwjtjxh7jcNfYg5qVs6bl8GWe1+zDLUU5643E5HZorfdI98qClqy+CKBiBIqnYrWbT
	UjZyNsioGeUJPQZwy99w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikbSl-0003wH-3M; Thu, 26 Dec 2019 22:18:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikbRz-0003LA-Un
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 22:17:50 +0000
Received: by mail-pg1-x543.google.com with SMTP id b9so13477147pgk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 14:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=atr5dH9+58H0L1dBqDewFnWoCVnAfiU1TJyN0b3SOLw=;
 b=PovNYG/8yvcQkau2yxewsi61ZYVYH+xuJSm+1FfpbcX5Lrd0edTC29t1WUNmEMOldi
 qPeG9Jit/2cej0EQ3S5UwiPB/P81sRwx+kA8476XgyLM5vPpDYODNowEb4qZFqL370i1
 nXB/3af9sVFwcCfMTVDORSGSaNQlKr11e+WY4JkXYXKJP5VvY/aqksZoQw0qmCWg2S0s
 vqwUhMkHrVdcPw4NicoDOQLFcfvb9iF8bkTXnGXxMQHpPYnXN+5TlDya2LAmMPM+fAMa
 HvLK4DsOixPh0d9iJ2c1bstBsXyJ6sHGcqpJ+oJBaA1BiyxgKAFa91LP4IwOrSkettTv
 4fJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=atr5dH9+58H0L1dBqDewFnWoCVnAfiU1TJyN0b3SOLw=;
 b=XfN5TYhHJ3pN80bnKTmWzEKOrvHctiASmoW46LQLFCrsjeVCHsS3UqLa+KBKh/yyMf
 DFRdz/SVux2OxRZvf2kSBKaLt8pFKzU2f2udMvp28buRqHMJ+dFmFL+sB+9LkucjoRQa
 IBxXrd/9rbWffTA5bgrqjpJStMYPywPqW3GgsdwspMflNauNcVxiuuTUPbO2IaDs/ajF
 lrul38S7IoyhXOTcWW4YmNbeV8PNGUsoT5kAb/K47Wy+sT/9inLw7D238eWipCSj5UFz
 WXwMBRsgvZmfF5EHnq8ni6QgAO+KYt2FxLMNdgnMY15h6CTTfGFVipnqo2zShszO2sz9
 7vEg==
X-Gm-Message-State: APjAAAURj+SVU8o0sWKpJGtTWfgM5wYbedGu9we/nJKMNrs+Ff9YW5k9
 p3D4DQezbaEtIiBcBIetGkceMg==
X-Google-Smtp-Source: APXvYqxjkphDV74NYDySl7S4Q4EqHt9CrR3SMTKiWnb+uEpFNDfkgplzaC9LAXUDcXRpxSglzDL53A==
X-Received: by 2002:a62:3603:: with SMTP id d3mr49051073pfa.37.1577398667182; 
 Thu, 26 Dec 2019 14:17:47 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 2sm11779409pjh.19.2019.12.26.14.17.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 14:17:46 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 2/3] iommu/arm-smmu: Expose s2cr and smr structs to impl
Date: Thu, 26 Dec 2019 14:17:08 -0800
Message-Id: <20191226221709.3844244-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191226221709.3844244-1-bjorn.andersson@linaro.org>
References: <20191226221709.3844244-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_141747_988228_FCD3A244 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Clark <robdclark@gmail.com>, Patrick Daly <pdaly@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Pratik Patel <pratikp@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the arm_smmu_s2cr and arm_smmu_smr structs to the internal header
file, in order to expose them to the platform specific arm-smmu
implementations.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since RFC:
- New patch

 drivers/iommu/arm-smmu.c | 14 --------------
 drivers/iommu/arm-smmu.h | 14 ++++++++++++++
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 6ca6a4e072c8..9a9091b9dcc7 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -73,24 +73,10 @@ module_param(disable_bypass, bool, S_IRUGO);
 MODULE_PARM_DESC(disable_bypass,
 	"Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
 
-struct arm_smmu_s2cr {
-	struct iommu_group		*group;
-	int				count;
-	enum arm_smmu_s2cr_type		type;
-	enum arm_smmu_s2cr_privcfg	privcfg;
-	u8				cbndx;
-};
-
 #define s2cr_init_val (struct arm_smmu_s2cr){				\
 	.type = disable_bypass ? S2CR_TYPE_FAULT : S2CR_TYPE_BYPASS,	\
 }
 
-struct arm_smmu_smr {
-	u16				mask;
-	u16				id;
-	bool				valid;
-};
-
 struct arm_smmu_cb {
 	u64				ttbr[2];
 	u32				tcr[2];
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 62b9f0cec49b..73f94579b926 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -224,6 +224,20 @@ enum arm_smmu_implementation {
 	QCOM_SMMUV2,
 };
 
+struct arm_smmu_s2cr {
+	struct iommu_group		*group;
+	int				count;
+	enum arm_smmu_s2cr_type		type;
+	enum arm_smmu_s2cr_privcfg	privcfg;
+	u8				cbndx;
+};
+
+struct arm_smmu_smr {
+	u16				mask;
+	u16				id;
+	bool				valid;
+};
+
 struct arm_smmu_device {
 	struct device			*dev;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
