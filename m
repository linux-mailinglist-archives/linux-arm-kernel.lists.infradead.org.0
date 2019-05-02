Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 359331209E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9NBqo8wwvpqoCqv6Q/CLrQ2e0Cf1YGIOZEZ5VmZ82Hw=; b=aJ8uEC0Nur99V75rS4tbSxN2Lg
	lTvgYULkdTg4hdyysevqTxaxcAchIO2gLmezgrb7ZGxfV3hcingo/hHa02uXfKASN8h9dnBxKikHc
	52HEMvJnMp4OSyIMkn9zh2Cp5/xl7ojccC+JRLLCVZq2614iN6O0rwM+F0H9RouccvzzLhqBBmzNV
	uUmbk1iobeq6Nq54XEWXUxb/v64nzGErRIJy6N9EKJTLHkgolX3RzfnvjOewtKQq2/nsDkZCkEGrQ
	aaJXAiV9B0UrH/EsqL72lULkCq19/07nNnYI8ROBwhg+KJtSB1oIXzek8ABvKA2NECjgy80YW7zzr
	nvniLXbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEyY-0003QX-Mn; Thu, 02 May 2019 16:54:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEyH-0003Hd-QZ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 16:54:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id e67so1408993pfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 09:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Akvar0z3H2C4Po+4q/PqqG5fzv7JGnOTC1Q3ZfsqLhU=;
 b=fC1fKb4UtdDJy+EmO1Gym1hhgWjGO3rGFwZni5C2m9o/yy56e4k/VuEbNtE5wdlYbT
 9t9fkXDGp9Hf38G7rtbxc7AZxJ82RLFxjeG3VNayNl/PJnrJVxHerN59gizF8GK2sBB/
 0Jd8Eabzc3vaCa6Y8CqD6KjcuEx3vyJzECm9Uz6d8p3fkVRdQTygykJKdyZa0BsE0jvc
 S0eGFoEFF1lyCtMPM4QsGU6xBZiCfFOM9q59zFqkZV63H7HLzt1WV+J11lgNzezF5ATf
 HGzR9JN/MAKLXOa1sSBWRrnpp5Pndhp1QULWXHvTn0ddGIXoHceAgemoViMFxkFetEEj
 CKjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Akvar0z3H2C4Po+4q/PqqG5fzv7JGnOTC1Q3ZfsqLhU=;
 b=E4LAgJBLGIRMjaaXZf1Q6gmlqRBMnGqoYHyhTP1nRhIEmtiQ8yYIpYZ1kEvlQ8uXMt
 iY4NIqaJANKisEHHajLCyPQucDlsU+GvZiVG6McuxWbIi6fvQA+ZaSqel8MaleiyeGeQ
 qhMkUc84QxFFFdFj/Psb+nn6c8nH2hQsdCLZhUfz1XFXZCwd5u/GQ1UW4ptj6gHMjNWU
 cX0t2dBanPnjmLMB7Y9PBX0hjz/Ba8fK+/W5q5M4S1cpbwAavlH3tO93+gd7JzsnhkB4
 gDwo6o9YnKSG8qizy3jnKLbhhzPYc/XB3ZSNw43c9SBN6zeXhVoT0k9E4x5EtVVaC5Qz
 wCeg==
X-Gm-Message-State: APjAAAW9NkntODN4NzQFocn5CezMeAcv9+GPQ7mVJ95CMr0KLddaocbL
 rUL3j63KRL6Y68UEaeJBX4hxZw==
X-Google-Smtp-Source: APXvYqyeyXwssHT1qjn2P4lp23bJGQNZPL+x2k1nwyT2Te9BxDQPkk63jNbgkCyEDO64qv5sdeRFrw==
X-Received: by 2002:a63:8b4b:: with SMTP id j72mr5048125pge.318.1556816048509; 
 Thu, 02 May 2019 09:54:08 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j2sm69949pff.77.2019.05.02.09.54.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 09:54:07 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/4] dt-bindings: arm: coresight: Add new compatible for
 static replicator
Date: Thu,  2 May 2019 10:54:02 -0600
Message-Id: <20190502165405.31573-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190502165405.31573-1-mathieu.poirier@linaro.org>
References: <20190502165405.31573-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_095409_856981_CA7CC9E9 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

CoreSight uses below bindings for replicator:

  Dynamic replicator, aka. configurable replicator:
    "arm,coresight-dynamic-replicator", "arm,primecell";

  Static replicator, aka. non-configurable replicator:
    "arm,coresight-replicator";

The compatible string "arm,coresight-replicator" is not an explicit
naming to express the replicator is 'static'.  To unify the naming
convention, this patch introduces a new compatible string
"arm,coresight-static-replicator" for the static replicator; the
compatible string "arm,coresight-replicator" is kept for backward
compatibility, but tag it as obsolete and suggest to use the new
compatible string.

As result CoreSight replicator have below bindings:

  Dynamic replicator:
    "arm,coresight-dynamic-replicator", "arm,primecell";

  Static replicator:
    "arm,coresight-static-replicator";
    "arm,coresight-replicator"; (obsolete)

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 Documentation/devicetree/bindings/arm/coresight.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index f8aff65ab921..d02d160fa8ac 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -69,7 +69,10 @@ its hardware characteristcs.
 
 	* compatible: Currently supported value is (note the absence of the
 	  AMBA markee):
-		- "arm,coresight-replicator"
+		- Coresight Non-configurable Replicator:
+			"arm,coresight-static-replicator";
+			"arm,coresight-replicator"; (OBSOLETE. For backward
+				compatibility and will be removed)
 
 	* port or ports: see "Graph bindings for Coresight" below.
 
@@ -169,7 +172,7 @@ Example:
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
