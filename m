Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4A836229
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 19:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P44Xs4DDyuVCkKhG9CRmiQPo+HG49IhthaJ3/Ukd9IA=; b=V2rMM1py8doybj
	MCcsMKQBA535nbUIscI4GLqAA6hbIM58fZmI+UaKE9F3KFqbplUHmOilrVl7g+LIN3tCjDFmkdIyS
	G84gewwHNUAaM1/3B9tG0gjojx72Rwz25vWUwQU4nNB49Yk+d4BEiZnJc++D6kr9DdN7QseRwZZ+7
	9mfbNkxrKCDfapy/cBD4rXO6235pp/tOQkyMeEIpNuK6KXak3XADnNcIrJy0HM73TPhN5GDeWp2CG
	I4JCcKkU17oLKeTt3VMK1oJKipkFYkjsb2A5DjR45Yg+1efa/VsEuv4GuPZteBmMWCnPEwq/eVTdr
	EAwpXWqLi2s2vURGD6wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZWa-0000wV-IB; Wed, 05 Jun 2019 17:16:32 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZWM-0000pZ-U3
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 17:16:21 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9AF6960FEA; Wed,  5 Jun 2019 17:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559754978;
 bh=FvHcmA2NIER1dNGRjQuJMPcZ6XkO2S25CeFWppA7VEc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=SGcYOL5rt+yvqz1x08fMUk/HKBCCbZKH1/aknQ+wkesXClmEeEHhd5+Zq7B7N6+5Z
 pH+AwffS8xnAszLyV+nP/T+5PZNZ5KG/WL5RdPMzkZhoNLFeQXuftcx3dRf4UA8sBW
 BImZJBoMKW+X920PTg1J3pZDuj52Hi+AYZ58ZgyI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from srichara-linux.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: sricharan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0A32160CED;
 Wed,  5 Jun 2019 17:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559754978;
 bh=FvHcmA2NIER1dNGRjQuJMPcZ6XkO2S25CeFWppA7VEc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=SGcYOL5rt+yvqz1x08fMUk/HKBCCbZKH1/aknQ+wkesXClmEeEHhd5+Zq7B7N6+5Z
 pH+AwffS8xnAszLyV+nP/T+5PZNZ5KG/WL5RdPMzkZhoNLFeQXuftcx3dRf4UA8sBW
 BImZJBoMKW+X920PTg1J3pZDuj52Hi+AYZ58ZgyI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0A32160CED
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
From: Sricharan R <sricharan@codeaurora.org>
To: robh+dt@kernel.org, sboyd@codeaurora.org, linus.walleij@linaro.org,
 agross@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/6] dt-bindings: qcom: Add ipq6018 bindings
Date: Wed,  5 Jun 2019 22:45:57 +0530
Message-Id: <1559754961-26783-3-git-send-email-sricharan@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_101619_176578_E49BF47E 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Sricharan R <sricharan@codeaurora.org>
Signed-off-by: speriaka <speriaka@codeaurora.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index f6316ab..7b19028 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -36,6 +36,7 @@ description: |
   	mdm9615
   	ipq8074
   	sdm845
+	ipq6018
 
   The 'board' element must be one of the following strings:
 
@@ -45,6 +46,7 @@ description: |
   	mtp
   	sbc
   	hk01
+	cp01-c1
 
   The 'soc_version' and 'board_version' elements take the form of v<Major>.<Minor>
   where the minor number may be omitted when it's zero, i.e.  v1.0 is the same
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
