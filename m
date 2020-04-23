Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1501B5166
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 02:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoGntvwn06h5z4yMOJt9WMSY49lTWEbuB+KTFzucyuI=; b=ov9lVtXYzQAaNk
	Jm/nFG4h9ZcK1LCnBbylwQaSMa0u7HZguZHhvMvCt7cNYuvVfMpYytH1RKYeyzuW1o/n33dSl9yX/
	D2GW8RV4g8ejqV1PMfoTv0qilhkkEjNyW6rJ2OUPr4kgwO3eDtaeYP1QF7ztdv7bAZ4xlMq/hyyDz
	IfkMoCKmK2V3Ba1rWvvSWMd9Uv6Tus7qvXjBQ9QIROmyiNrMhpkT+7Z99y0HU8cAgZ0o9ux09DZph
	K/BQAADPrM/eIyBcZ7N/myKLAnA9ULONgfnLsZrv5Uo5HbJnReEqXlR9wcAgvBIjNiF1PXwkqc0HG
	znqS6JAWrbtDP7n5otMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRPt0-0008TX-Oy; Thu, 23 Apr 2020 00:38:38 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRPsa-0008Ji-Dz
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 00:38:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id d24so1632363pll.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 17:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=egVlnrSaeGzdaljO8+QAkFyvPEniAn+tBLdvo8OBR/w=;
 b=eCqCxZcuH1wR3wM+ON28Hd3lhNgytE3bh8oSzxVC5K2BFJGpjYBB1mpHrG5g5Zjf/s
 IiFDTHEoZVfMV57cWYGZUw5HF98Plrii6p6O2bUW9SNxQeBhCDhZ59eyDK9cHUhri9yu
 MiEBM9PLM3/vQymu4bxNMKT32NJu3Z4h+d/df9PJNQQpU7cH6pFFPVDEHhB6H76HcjKl
 /MQubUB1edgyQ5lPBYh2H+PSI+H4rF/JlSxaZosk9GS3qT5hKCayNE2vdzbclZEy3cGM
 deg71w0BKEjtmsOUDSOtHYGQAe/VNHhpYX+jqyGLQJOkJD/5/3gCl5Gtb/ojqeIjA+24
 oJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=egVlnrSaeGzdaljO8+QAkFyvPEniAn+tBLdvo8OBR/w=;
 b=fH5p9jJXNO0PrLhX7RmMLm+zNM7ohRlpdx3bXCbJ7WCHN9N9rhS8m787xsnUtVKOQe
 Hmf5lc8au0FyEkIeJtzQkqk3buP33mEQG/Tj4S4qq7zfKpkCKAf2ycYrt4UZlwUWa3EJ
 JtoG67lFRnsNcmu1YbtjKwt+BkBjTfuedgA63sBZI1fBIfBA9S7yxqEGixEaEdBpNSCj
 OMIfcB22Gi5RnR0Kznp3lAYBzG4a0nGu9c54oLgyLOpXzrAphwTBo1rQ5w9CVH1FpYBH
 jqHdCohAIxo6Z7mqgjLX+3u+1JXqVSqZWfzUKlraQgRM3Rv6nDCHRYn/EzR0UPWN++gb
 QNRQ==
X-Gm-Message-State: AGi0PuaE1IFSiQw1oIcrKOQ0MFsDEzv7PrFlKcjLaq8ywMSx50YBKI6D
 1Fk3j/+P4DQzhWTv1HN2lqFzew==
X-Google-Smtp-Source: APiQypKl5pJAjAOlJdgnCJv9cqj48tuVFgdA04bOanQpLuAbkxnIrtNOouv/tW38KKNBQfQRdeF3kg==
X-Received: by 2002:a17:90a:cc9:: with SMTP id 9mr1503391pjt.16.1587602288258; 
 Wed, 22 Apr 2020 17:38:08 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 6sm432225pgz.0.2020.04.22.17.38.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 17:38:07 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ohad Ben-Cohen <ohad@wizery.com>
Subject: [PATCH 1/4] remoteproc: qcom: Pass ssr_name to glink subdevice
Date: Wed, 22 Apr 2020 17:37:33 -0700
Message-Id: <20200423003736.2027371-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_173812_475751_8E82E3B9 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Lew <clew@codeaurora.org>,
 Sibi <sibis@codeaurora.org>, Siddharth Gupta <sidgup@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pass ssr_name to glink subdevice in preparation for tying glink_ssr to
the glink subdevice, rather than having its own "ssr subdevice".

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/remoteproc/qcom_common.c    | 9 ++++++++-
 drivers/remoteproc/qcom_common.h    | 5 ++++-
 drivers/remoteproc/qcom_q6v5_adsp.c | 2 +-
 drivers/remoteproc/qcom_q6v5_mss.c  | 2 +-
 drivers/remoteproc/qcom_q6v5_pas.c  | 2 +-
 5 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/remoteproc/qcom_common.c b/drivers/remoteproc/qcom_common.c
index 60650bcc8c67..ff26f2b68752 100644
--- a/drivers/remoteproc/qcom_common.c
+++ b/drivers/remoteproc/qcom_common.c
@@ -46,8 +46,10 @@ static void glink_subdev_stop(struct rproc_subdev *subdev, bool crashed)
  * qcom_add_glink_subdev() - try to add a GLINK subdevice to rproc
  * @rproc:	rproc handle to parent the subdevice
  * @glink:	reference to a GLINK subdev context
+ * @ssr_name:	identifier of the associated remoteproc for ssr notifications
  */
-void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink)
+void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink,
+			   const char *ssr_name)
 {
 	struct device *dev = &rproc->dev;
 
@@ -55,6 +57,10 @@ void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink)
 	if (!glink->node)
 		return;
 
+	glink->ssr_name = kstrdup_const(ssr_name, GFP_KERNEL);
+	if (!glink->ssr_name)
+		return;
+
 	glink->dev = dev;
 	glink->subdev.start = glink_subdev_start;
 	glink->subdev.stop = glink_subdev_stop;
@@ -74,6 +80,7 @@ void qcom_remove_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glin
 		return;
 
 	rproc_remove_subdev(rproc, &glink->subdev);
+	kfree_const(glink->ssr_name);
 	of_node_put(glink->node);
 }
 EXPORT_SYMBOL_GPL(qcom_remove_glink_subdev);
diff --git a/drivers/remoteproc/qcom_common.h b/drivers/remoteproc/qcom_common.h
index 58de71e4781c..34e5188187dc 100644
--- a/drivers/remoteproc/qcom_common.h
+++ b/drivers/remoteproc/qcom_common.h
@@ -11,6 +11,8 @@ struct qcom_sysmon;
 struct qcom_rproc_glink {
 	struct rproc_subdev subdev;
 
+	const char *ssr_name;
+
 	struct device *dev;
 	struct device_node *node;
 	struct qcom_glink *edge;
@@ -30,7 +32,8 @@ struct qcom_rproc_ssr {
 	const char *name;
 };
 
-void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink);
+void qcom_add_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink,
+			   const char *ssr_name);
 void qcom_remove_glink_subdev(struct rproc *rproc, struct qcom_rproc_glink *glink);
 
 int qcom_register_dump_segments(struct rproc *rproc, const struct firmware *fw);
diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c b/drivers/remoteproc/qcom_q6v5_adsp.c
index c60dabc6939e..d2a2574dcf35 100644
--- a/drivers/remoteproc/qcom_q6v5_adsp.c
+++ b/drivers/remoteproc/qcom_q6v5_adsp.c
@@ -461,7 +461,7 @@ static int adsp_probe(struct platform_device *pdev)
 	if (ret)
 		goto disable_pm;
 
-	qcom_add_glink_subdev(rproc, &adsp->glink_subdev);
+	qcom_add_glink_subdev(rproc, &adsp->glink_subdev, desc->ssr_name);
 	qcom_add_ssr_subdev(rproc, &adsp->ssr_subdev, desc->ssr_name);
 	adsp->sysmon = qcom_add_sysmon_subdev(rproc,
 					      desc->sysmon_name,
diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
index 7af1d0c987e0..b5dd36775b77 100644
--- a/drivers/remoteproc/qcom_q6v5_mss.c
+++ b/drivers/remoteproc/qcom_q6v5_mss.c
@@ -1762,7 +1762,7 @@ static int q6v5_probe(struct platform_device *pdev)
 
 	qproc->mpss_perm = BIT(QCOM_SCM_VMID_HLOS);
 	qproc->mba_perm = BIT(QCOM_SCM_VMID_HLOS);
-	qcom_add_glink_subdev(rproc, &qproc->glink_subdev);
+	qcom_add_glink_subdev(rproc, &qproc->glink_subdev, "mpss");
 	qcom_add_smd_subdev(rproc, &qproc->smd_subdev);
 	qcom_add_ssr_subdev(rproc, &qproc->ssr_subdev, "mpss");
 	qcom_add_ipa_notify_subdev(rproc, &qproc->ipa_notify_subdev);
diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 8ecc157f1ed1..fc6658b523b6 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -436,7 +436,7 @@ static int adsp_probe(struct platform_device *pdev)
 	if (ret)
 		goto detach_proxy_pds;
 
-	qcom_add_glink_subdev(rproc, &adsp->glink_subdev);
+	qcom_add_glink_subdev(rproc, &adsp->glink_subdev, desc->ssr_name);
 	qcom_add_smd_subdev(rproc, &adsp->smd_subdev);
 	qcom_add_ssr_subdev(rproc, &adsp->ssr_subdev, desc->ssr_name);
 	adsp->sysmon = qcom_add_sysmon_subdev(rproc,
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
