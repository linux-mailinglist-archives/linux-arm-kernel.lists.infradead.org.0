Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167F613F49B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NZGr1QCg49BXjKDbacQ7nbug7RlUdltsSNLIBfHIDuA=; b=LIA
	OmllATH1IFg8S0nrEmq81pu7Fwsnae29IPp91A+LZdacOCbsMLtf5mkssQ7+oS2mfGHDzNiv2Ze+r
	Vu7qDVa1JO+jwd0wlV6p7cQqWI5fnv9BzboxZWvkXx0O7y73rF/o0T6EPyQ1IlK12ysOuv3ngQBqy
	jSctmizZortnnHJwlSKYV3sqGuW+DF5+i7QcioimDJGbCXNni7Q8pw045xrUcudSWMhL6QJHw9+qF
	HUSMi8nsH0lZVoWeBMzILNUNWJwsFQkkTQT323Znx/YA0nv606pLnN3T8SRXbKsMTKZjPzAWmaDuN
	/jbGkxqOxKjfct4LU8t3++aZjfphGiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAFt-0000fq-7I; Thu, 16 Jan 2020 18:52:33 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isA5g-0004kx-H8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:42:13 +0000
Received: from localhost.localdomain ([37.4.249.101]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mleo0-1jIw7L3qrK-00ioZF; Thu, 16 Jan 2020 19:41:50 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] dt-bindings: brcm,avs-ro-thermal: Fix binding check issues
Date: Thu, 16 Jan 2020 19:41:17 +0100
Message-Id: <1579200077-17496-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:+sPxTCFhphlG3yB/Vx1rT4zv4v7XQNBXEsZUG8nOQTMLN/8oNU1
 cIQrMr4QLHa06BxUeULkTm8FrfWFhdn3mPaqN4tH3TBTXUdVufXlCUcTyj/PHhw6sgBcMTA
 mZx6vCFItqhZnVkuio0WoafXGl9Rs68tikhSvXXdLUXjSDmuepTiEJYCEWJUZh7wwxSA0wr
 w0LTrbo+7cE9tmdYbr1wQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+jcCjposBx0=:yyC7jsIe/of8jUKuHeITgu
 aXK8OBpK/gxv+jhxC/xLDqrj+EQsV55PYLfzhgtNyOzU8bAqhW2KJj69StMrp/PPIExIcljYA
 /NKnN584ptFLAUPLEZIJhzRTWYKErS7Qyy11PUlxJlAGWN4d9xpyU78LaeZIkzENnShU5gFP2
 ABEV0+TqsHRWN9wRs4hW5b5Vr5JTsDMk59PpXMryJlxq1pAd+jXXbkAisQA0p692SObeeE2ZA
 JCgwNiSoVO65Embq7fzXx206TuS1T6Ni1qYLdcnz2t6d540k0EX4Uznciz+quVmEOFIwpEje4
 5HYf1zDbeXdiQD2lElEQx3kiPDJIv3zUpGbvlEhG1aTm5yGYU+/gq3VrmhWHBIqRWVyyU8lqE
 CKux+OgG9+C0CW/Ubh4Q6DJk0SDf+snQVYqBDj/i08YTK7XT9lB5YDbnLUF4+LMOF90pH2n4k
 5SJCuvNRluII63acZiMwR2R8JtD4MV1YcH+2saetnTwzVlOiwxrzjX8hF6fiOGJFS1Zq02HlD
 7AR7JfLd8mpG+8d/Fo+ysomcsyOekC72hYrcpXKCCEezDML1QXz+kyjpOUKBjtmbs7z/EEhZH
 s0cZo5ImMqzAznfg55k0Dr9DqsEq27GiVRU2n3mjX3n2Zcn+FZWW8vZCIfFs6zpQn6dIKv1vN
 dZbtEiCoNjvSG24HGs0lICT3VZrlSIkN073iDLF1p4ylHpgTeiX0fO+qo+9ccGUyW2sSa3PIV
 a15ftUAtAGstL4K/uJ9V4E2VyDuLC3ZGp+FvsQrocWUUkI+lzqnEPEiY0oHcsFfers/JbzOSm
 ygFJhwQotapC0SFx5vQjLaJboailcGKVIn9VXiHryFv8+GfLX4xyDm0LI+cjiAT7tiRmn8zFa
 +cHIfWHSP0PRHTBAuWw3BAY62wsz7dl4364I1V+cs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_104200_889909_5F1D6049 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the reg property since this only necessary for the parent and
add the missing thermal-sensor-cells property description.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Fixes: 3d4849897691 ("dt-bindings: Add Broadcom AVS RO thermal")
---
 .../devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml         | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
index 98e7b57..d9fdf48 100644
--- a/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
@@ -23,12 +23,15 @@ properties:
   compatible:
     const: brcm,bcm2711-thermal
 
-  reg:
-    maxItems: 1
+  # See ./thermal.txt for details
+  "#thermal-sensor-cells":
+    const: 0
 
 required:
   - compatible
-  - reg
+  - '#thermal-sensor-cells'
+
+additionalProperties: false
 
 examples:
   - |
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
