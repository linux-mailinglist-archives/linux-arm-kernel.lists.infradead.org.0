Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5605BFDBDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:00:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UWkoSqO823Z9GVY+JOtG+8/zbtMiZ8PNEUOy+6K20XI=; b=BaD0PEK4vqwPj1
	vQ7hwV1VnUK4PPmbn2VCego4UaAEa7be61epCwkX8L/FLiTH628qY27NuCFJttIWP2Ohy2Gx50QOz
	l7bX5aah2J4TbLEj2bH7u94DWcJmXxZaUoTrPdihwVlRH28gwqFyFkecT4W8WU+pjAHYlyijVFikR
	w1VyKgOwZz7Zd8W/MN0KzgOryDwB1QBJrp9pqxAZYYd1J2wNhTUT8j6MMM9apQFprOGLLrJyUMGHl
	OkUru6ABQXircMT+mptnn2loTXkwn3WubtCm0nC+Fvrlcmh06qEorSTzFTem0ZR9EkOx0VX8ki2CV
	fhgiDfhy2X9mYNiejPwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZKQ-0000qK-60; Fri, 15 Nov 2019 10:59:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZK8-0000pU-0F
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:59:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id ECF98602EF; Fri, 15 Nov 2019 10:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573815569;
 bh=0Nah58GSAL88/uY+EvDDspGeElq/PM1FdgvLNEhSmgM=;
 h=From:To:Cc:Subject:Date:From;
 b=EICh4fBD/b47qTIbJtdh6NYjYw8tR5Z47oZUBPlzmzHjRu9yA7bAICp62mGMKCViR
 b/3q4ZKiKPSWucVY2LpmrVpHA6TDNs0nEhbaOg0UNW6XWIPkzWVYy2NlEuAWzIPtFp
 radf5HVJ/eG9M7UyWa0D7Rxs+8H1A/EwTGsoq+Mc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 78443602EF;
 Fri, 15 Nov 2019 10:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573815569;
 bh=0Nah58GSAL88/uY+EvDDspGeElq/PM1FdgvLNEhSmgM=;
 h=From:To:Cc:Subject:Date:From;
 b=EICh4fBD/b47qTIbJtdh6NYjYw8tR5Z47oZUBPlzmzHjRu9yA7bAICp62mGMKCViR
 b/3q4ZKiKPSWucVY2LpmrVpHA6TDNs0nEhbaOg0UNW6XWIPkzWVYy2NlEuAWzIPtFp
 radf5HVJ/eG9M7UyWa0D7Rxs+8H1A/EwTGsoq+Mc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 78443602EF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Stephen Boyd <swboyd@chromium.org>, bjorn.andersson@linaro.org,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org
Subject: [PATCH 0/2] Rename LLCC cache-controller to system-cache-controller
Date: Fri, 15 Nov 2019 16:29:10 +0530
Message-Id: <cover.1573814758.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_025932_068159_BC3A77B5 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Rishabh Bhatnagar <rishabhb@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DT schema checks for the node name 'cache-controller' and enforces
that there has to be a cache-level associated with it. But LLCC is
a system cache and does not have a cache-level property and hence
the dt binding check fails. So let us rename the LLCC cache-controller
to system-cache-controller which is the proper description and also
makes the schema happy.

Sai Prakash Ranjan (2):
  dt-bindings: msm: Rename cache-controller to system-cache-controller
  arm64: dts: sdm845: Update the device tree node for LLCC

 Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml | 2 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi                     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
