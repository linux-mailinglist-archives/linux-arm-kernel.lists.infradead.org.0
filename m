Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CFD15BC7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:15:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3X3QduZJKm3Vayxd9Q6xDNmTMK6Fuy6R6vLSo2l97M=; b=Ol7RBpVod/1xDW
	vcCnEZksNeluU7UG3ueQZFh69NhPhbAYJEzwBCq8txmXmOLkXv6q1Iw6MaLBo5HOR6wOjTqMli5Rs
	csBgsh+SwG2wDtg9ysXfmpEATw2ggbQUsHizhinE2gnExiIQdbpVN8GEa4+RnYEOp4zjp0VKWburl
	raDXGMwk5s7P5MSHo9XyxjLt5ND1oGF4hfpRg0HFjkrKtxJfe14/0h3RYBPbOqn96zHBERA+W7uFA
	IBqVjEAMWcJ0eCzcaKBr42wMkCdDlezevfeEq7T2pvk6He7gEmN01ZRcLz1+20Q+aZBekHuXCtPEB
	aS0Uo3TRyEYAFAzvWm/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BWw-0003co-Ae; Thu, 13 Feb 2020 10:15:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BWF-0002zX-4l
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:14:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so5919847wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 02:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x5dk7qiKtWru6EN2nFzBqe4Wug6V5GV2jfq/LzU0wiw=;
 b=LxfZfpNC9g2Kao3Ca86IBRs1BVelmn8AvrmBdYYcvu/Ke2cjSOzIyL4tYo+CSK06ir
 w3b22BZqfdo7gA4OGIO7IPlmKXPutox8+BQRijvmJOLUFg76kRhQNt87DPJR4X9qAiMM
 +A7sCzIh/nwBLfWMREpCrSBlAqcRv1kBTi7+wkAkOLYjSyYzxvIfzyWCPOhfF2PIoZMr
 68xchnfm0tHysAcpb+CfWLgd+nrsjJ/carvqlZNvfgjhupYg/vPbGHa8oLMduRWowQxN
 SEyTmYq+kC8yFTfIDpTSzTGunUntmDOwNm/FB/pRONEy4RDWQgjDrBAGU67PZ2o+JbRW
 6vGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x5dk7qiKtWru6EN2nFzBqe4Wug6V5GV2jfq/LzU0wiw=;
 b=SnvTzxBW+uKk+LDxtebQrkrxYmtNLctK1u7ECBNZiaHdSMuvc/kOe2p+fAEdGgUHoe
 GGV8AiNLcHvJggdTtcI8AtHTH9FJDNznA2w2wtY1V4IiA+/HjYlZ6ly0eFT7mMJw68wt
 C957OqGUrgtY4MUiU7xc9YtuIWoFB/uLmUKW3zAlaMOEfZ6yURbAZyiiGY8uSfI/JsiF
 cJs/vN+hIt1plrpMjC6FQ2C+hG+Fvi2pdn9odaZh2Xd+35JGAnkEJ37FTyAOVsmW0Om5
 jhZKH3in4NC3BVJfEgQchnB+Wt2A1bWIhkOLRnk8acMoxX410lYqbHhOqudpI45McgKu
 7KQw==
X-Gm-Message-State: APjAAAWXkIWSEgnd600v8s5Ef9VmtoJHBgxK7IbjMTKCnlGFH3qJaELQ
 9b3nUVA17CJTtvBguJXQnT8/JxklcKw=
X-Google-Smtp-Source: APXvYqw6o99I0CZZyiTcqdl7ceH4XsBTkQw3w/87dL8LUwOg4DxhwdracytpcV7NsxduI66j7hSHCQ==
X-Received: by 2002:adf:f787:: with SMTP id q7mr20817905wrp.297.1581588887619; 
 Thu, 13 Feb 2020 02:14:47 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y131sm2428059wmc.13.2020.02.13.02.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 02:14:47 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH 4/4] iommu/arm-smmu-v3: Write level-1 descriptors atomically
Date: Thu, 13 Feb 2020 11:14:35 +0100
Message-Id: <20200213101435.229932-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213101435.229932-1-jean-philippe@linaro.org>
References: <20200213101435.229932-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_021451_196956_D1D98A32 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: zhangfei.gao@linaro.org, joro@8bytes.org, robin.murphy@arm.com,
 jonathan.cameron@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use WRITE_ONCE() to make sure that the SMMU doesn't read incomplete
stream table descriptors. Refer to the comment about 64-bit accesses,
and add the comment to the equivalent context descriptor code.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 11123fbf22a5..034ad9671b83 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1539,6 +1539,7 @@ static void arm_smmu_write_cd_l1_desc(__le64 *dst,
 	u64 val = (l1_desc->l2ptr_dma & CTXDESC_L1_DESC_L2PTR_MASK) |
 		  CTXDESC_L1_DESC_V;
 
+	/* See comment in arm_smmu_write_ctx_desc() */
 	WRITE_ONCE(*dst, cpu_to_le64(val));
 }
 
@@ -1734,7 +1735,8 @@ arm_smmu_write_strtab_l1_desc(__le64 *dst, struct arm_smmu_strtab_l1_desc *desc)
 	val |= FIELD_PREP(STRTAB_L1_DESC_SPAN, desc->span);
 	val |= desc->l2ptr_dma & STRTAB_L1_DESC_L2PTR_MASK;
 
-	*dst = cpu_to_le64(val);
+	/* See comment in arm_smmu_write_ctx_desc() */
+	WRITE_ONCE(*dst, cpu_to_le64(val));
 }
 
 static void arm_smmu_sync_ste_for_sid(struct arm_smmu_device *smmu, u32 sid)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
