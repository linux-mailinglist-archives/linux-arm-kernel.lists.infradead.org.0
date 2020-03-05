Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8845317AEB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 20:06:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9xyvPvf0g9QUR8f7BZE5X0JB6OQTK2aEP7EowthP/qo=; b=jJg0Uaxf2YYQOfi3jgf4VgNOLe
	Q8exRBA9H7on4Ly4+mlv3SDoRv1yq7Ykeh6zSkhXlrhKizq6RwL1+SIGMwTw0S0IYepyhjSvgu8p8
	RCWs1FoZ6OUW/YclDml9A/0Qx9r6c8urHi+4QZgVESKwzWPaJJ9JZCASOirW4G9KaDDiol8KIZYgk
	8Yc2VxsKnZ51xpg9y2SmjDLmAqv8Bo39ebbYnrj0ddg4fs76O+s3dDqBVeu64usJ+iEBD9VSl0Evo
	GC334kK/LqCPsJYQtZr9ax2V/DOxQY0Yc7S5+UW8vCJ/mE8BvDvijdyKV+g2zePRFpv1QNzZIpkuF
	+8ydWObA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9voj-0002No-1d; Thu, 05 Mar 2020 19:05:57 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9voZ-0002C3-0K
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 19:05:49 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583435144; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=9he5OM9ZQfvZ7qONjfRCprlmsDTELbV96jQflUusxsY=;
 b=Qnj3aqCrK8z2QF/kjtQ+dEENirDB6NJEFsGyUycGAgQKsn78RPuRjzP9XI/jGohG9uPttLf6
 1r/U8uJC3U+FDDEvzsEdQ4/fW69aUHY9xLkn2Wpb/2i8bR2mJtCB9Heat4ZDa9IcNtb02Tsn
 /E29HUIni3bsmVNzlYmWAsJDmpk=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e614d86.7fd0e531c8f0-smtp-out-n03;
 Thu, 05 Mar 2020 19:05:42 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 98581C447A0; Thu,  5 Mar 2020 19:05:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from eberman-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: eberman)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 90E56C447A2;
 Thu,  5 Mar 2020 19:05:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 90E56C447A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=eberman@codeaurora.org
From: Elliot Berman <eberman@codeaurora.org>
To: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v3 1/3] dt: psci: Add arm,
 psci-sys-reset2-vendor-param property
Date: Thu,  5 Mar 2020 11:05:27 -0800
Message-Id: <1583435129-31356-2-git-send-email-eberman@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583435129-31356-1-git-send-email-eberman@codeaurora.org>
References: <1583435129-31356-1-git-send-email-eberman@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_110547_118237_F63E049E 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Trilok Soni <tsoni@codeaurora.org>, David Collins <collinsd@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some implementors of PSCI may wish to use a different reset type than
SYSTEM_WARM_RESET. For instance, Qualcomm SoCs support an alternate
reset_type which may be used in more warm reboot scenarios than
SYSTEM_WARM_RESET permits (e.g. to reboot into recovery mode).

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Elliot Berman <eberman@codeaurora.org>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 8ef8542..1a9d2dd 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -102,6 +102,13 @@ properties:
       [1] Kernel documentation - ARM idle states bindings
         Documentation/devicetree/bindings/arm/idle-states.txt
 
+  arm,psci-sys-reset2-vendor-param:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+        Vendor-specific reset type parameter to use for SYSTEM_RESET2 during
+        a warm or soft reboot. If no value is provided, then architectural
+        reset type SYSTEM_WARM_RESET is used.
+
   "#power-domain-cells":
     description:
       The number of cells in a PM domain specifier as per binding in [3].
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
