Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522942E696
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 22:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/ujnL//4XHTRrxqh5a96Wh3KoUB78cyIomC4pX5rNDU=; b=SwfzWozeXfzPnuMnug7aaSMlg2
	/2TxhS5zl5U1ggEqcB1fshs+V4rgOK3bJfIv50iWgFkMyf1jJQCbZfG7/FQ+QzikCcEWRNvwcfwZ1
	5WjpBI2CqZasWrm1w9V2qu2eXCg6cnvAynLO9Prct3inpXlzd99NRChhiPar1gGoCiYuWj6PWulDz
	QfYdRnQGsJ8YGQTce6iMxX/hXQv8gctCv6iz2QSfSKwghknDgAfKwBbCf6q6/EkJ1b7a5ZwnunyRW
	Qdgd2GqVuygYnQXxlHT9HkBHDN32Dljbz6RrFGy0U5BrZ8vhi0euIu59wGRem+v8AAAxplQRnoKO1
	TZXInF8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5bP-0007Ej-SC; Wed, 29 May 2019 20:55:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5bI-0007Dg-Ph
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 20:55:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 22FD860F38; Wed, 29 May 2019 20:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559163308;
 bh=H1gJftayyhVU3QVkkOlFv2DhgJ/CrcDyVexTTU22x4A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hjeu2/0kZjbvkGO3/IeVxpM6/31rp2Yl5IvXnFmO2WArVbb7SgyOJS1zFhZJPp3Nf
 sUQJ2t0R8YeoaOj9wn5hFW8ycg/DumW9EhvVQTqQvWhHWqQYh0fxgO5PgVdtKz9wu6
 bSxX6ibA4dVyGQmLG0RKvFNfs7CmfzxfCOPmhVVg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F21AB606DB;
 Wed, 29 May 2019 20:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559163307;
 bh=H1gJftayyhVU3QVkkOlFv2DhgJ/CrcDyVexTTU22x4A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lBBCCLNWLtMP6MTlifW0/hhWULMbqAHn8agLMArTbyVmXfLZY0mTYUbtDvXrhGJRB
 +rMjk9pU/Y5kmWw2na3O35JtABPJw1UFGa73g5+eW6WGZz0ZGgzD6SIKgOIL0poPBS
 VGANA337XjlLLCTgDmOZQgtPBQchIWcqJZaSBX0U=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F21AB606DB
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v3 01/16] iommu/arm-smmu: Allow client devices to select
 direct mapping
Date: Wed, 29 May 2019 14:54:37 -0600
Message-Id: <1559163292-4792-2-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559163292-4792-1-git-send-email-jcrouse@codeaurora.org>
References: <1559163292-4792-1-git-send-email-jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_135509_025445_27615C70 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jean-philippe.brucker@arm.com, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 dianders@chromium.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, hoegsberg@google.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some client devices want to directly map the IOMMU themselves instead
of using the DMA domain. Allow those devices to opt in to direct
mapping by way of a list of compatible strings.

v3: use iommu_request_dm_for_dev() to set up a default identity domain
for a group, per Robin

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/arm-smmu.c | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 5e54cc0..7537639 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1235,6 +1235,35 @@ static int arm_smmu_domain_add_master(struct arm_smmu_domain *smmu_domain,
 	return 0;
 }
 
+struct arm_smmu_client_match_data {
+	bool direct_mapping;
+};
+
+static const struct arm_smmu_client_match_data qcom_adreno = {
+	.direct_mapping = true,
+};
+
+static const struct arm_smmu_client_match_data qcom_mdss = {
+	.direct_mapping = true,
+};
+
+static const struct of_device_id arm_smmu_client_of_match[] = {
+	{ .compatible = "qcom,adreno", .data = &qcom_adreno },
+	{ .compatible = "qcom,mdp4", .data = &qcom_mdss },
+	{ .compatible = "qcom,mdss", .data = &qcom_mdss },
+	{ .compatible = "qcom,sdm845-mdss", .data = &qcom_mdss },
+	{},
+};
+
+static const struct arm_smmu_client_match_data *
+arm_smmu_client_data(struct device *dev)
+{
+	const struct of_device_id *match =
+		of_match_device(arm_smmu_client_of_match, dev);
+
+	return match ? match->data : NULL;
+}
+
 static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 {
 	int ret;
@@ -1450,6 +1479,7 @@ static int arm_smmu_add_device(struct device *dev)
 	struct arm_smmu_device *smmu;
 	struct arm_smmu_master_cfg *cfg;
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+	const struct arm_smmu_client_match_data *client;
 	int i, ret;
 
 	if (using_legacy_binding) {
@@ -1512,6 +1542,11 @@ static int arm_smmu_add_device(struct device *dev)
 	device_link_add(dev, smmu->dev,
 			DL_FLAG_PM_RUNTIME | DL_FLAG_AUTOREMOVE_SUPPLIER);
 
+	client = arm_smmu_client_data(dev);
+
+	if (client && client->direct_mapping)
+		iommu_request_dm_for_dev(dev);
+
 	return 0;
 
 out_cfg_free:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
