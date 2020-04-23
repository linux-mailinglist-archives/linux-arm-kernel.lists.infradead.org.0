Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8301B54F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 08:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k5G2bBiOFQ94Q25qQqBK/eLChg55YdJI124ELx6saxc=; b=HRr+RS5Bqq59xi5CVzrBzbdo/C
	bv/4GO5wtQFJkv8gkJyOtiobLUR3x6sCA3bjSK+eXutcTiqOQZkerDOkaUiXe5aV2zBOMpYmQ+wA1
	HvZfb7cHNrTo71QVwINTO67tkPHOzWlZ9BRjmUtuBMTVB+/98hegIRgJD/WckLkRBtpLYZJlMbmmh
	GT2A2YP9pC79vKGOgSpnf7pVMHXXsRElSecJi2qCfY/lKZSCkgwA41WVoDHVRVRjVu43kd6cJ6jtg
	mjEQyOwyiZ1guY9inI1JQHoC3uZ2+X/QZv6MqjMCY0+oqK+7bgX+PIofCLNk8LQc29qDZ+Ucwh2w5
	f41j9mxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVgH-0004vJ-3s; Thu, 23 Apr 2020 06:49:53 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVfW-0004Oe-0l
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 06:49:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id j2so5433674wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 23:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kJtJQoG/JQbSqOU2YZRjYN1eoWDg7VtiOaXr4Sl/Q8U=;
 b=lpbw26kluPvvo4DG9FZ3dRRkOUcmUUdlire26yEgBfUb9aVOlpafUTIZ26UFwS32TV
 thVlGVhSFsf3w7GQGb7IUjZPkRltAFRy3DiYbZd9gXLuw6L3iQHIrmxw8R6/IbJp1i6T
 sWWEWgjwyZFvfmJ57jEPMwZoFAmOrV0JghVs7y8w/h/N9vuGeIE4q0vF9vLjXEok+EpQ
 JmG8qCeSopx+O/1RqjN8SLw4WdFbqE3TjGa0yEowO45taB8F8LZMen3G5uwis1pz1bD1
 Ta0jub11B1dukk8bDF/xb4a+9QiM4Di74g/0TNWkCtTgRZKivHp3X7sGOPUn/XREZRPj
 kMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kJtJQoG/JQbSqOU2YZRjYN1eoWDg7VtiOaXr4Sl/Q8U=;
 b=ljtBNnZK8JTFqupthQ7FI7x7q9RV6vvB0+A7ITXVleCAeV1AUlUK+w+ovtmBgg3A9U
 HDf88yUBGOKdnR/8n8VWlr0b4C6yAmFHIW4xE4TZl2/r9/Ft7Sn8Emuj1NHuVkZYSnCN
 ScUzFvrUacuSqp6Zt5SNuzVZDL81cwe+0w+6RS8emkewtExxwWpZP9fsW1Nf0NzTWPZB
 dTVb3on9IkBW8DH16MmOzSWgr8htyhofvdy7eW2e/YcB4JM1poQ4cSrzaTSccD3Z15Yq
 e/L1jKlNISOQBu7o2iQgCcRm3Azw0vIh3jQi+ZQ9g7ynES6w0w46RrDEeMHDblgFggTV
 kKLQ==
X-Gm-Message-State: AGi0PuYF22VsZb8AJxq0NdZqJOF65Pt3Vf1Hsvl+/P1B3H576XnR6o74
 iWexZd67noFroC39Lwin/i+aBg==
X-Google-Smtp-Source: APiQypKJk3u22FDAIfAI+TSNr/cAaZn0Vz/zOVsKE6fuiFyHnLMfMQpncVfaMlMhqPktzmkP3N3Wxw==
X-Received: by 2002:adf:f444:: with SMTP id f4mr2986877wrp.376.1587624543700; 
 Wed, 22 Apr 2020 23:49:03 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff004d8cf526990082b9.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:4d8c:f526:9900:82b9])
 by smtp.gmail.com with ESMTPSA id k17sm2254910wmi.10.2020.04.22.23.49.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 23:49:03 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/2] dt-bindings: arm: Add secure-resets binding
 description
Date: Thu, 23 Apr 2020 08:48:08 +0200
Message-Id: <20200423064808.10468-3-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200423064808.10468-1-etienne.carriere@linaro.org>
References: <20200423064808.10468-1-etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_234906_055151_6C972E86 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 Etienne Carriere <etienne.carriere@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Describe how resets property can leverage secure- property prefix
for reset controller assigned to secure or non-secure world.

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 .../devicetree/bindings/arm/secure.txt         | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/secure.txt b/Documentation/devicetree/bindings/arm/secure.txt
index 9bc94921f2a6..f0aa6a5fb436 100644
--- a/Documentation/devicetree/bindings/arm/secure.txt
+++ b/Documentation/devicetree/bindings/arm/secure.txt
@@ -72,6 +72,24 @@ Valid Secure world properties
   clocks = <&scmi_clk 2>;	/* NS relies on SCMI resources */
   secure-clocks= <&clk 5>;	/* S accesses the SoC reset interfaces */
 
+- secure-resets : specifies the Phandle list secure world shall use
+  for the related reset controller(s) whereas property "resets" specifies
+  the reset controller Phandle list non-secure shall use. This
+  configuration can apply for example when a hardware reset controller can
+  only be accessed by secure world and this one opens a software service,
+  as a SCMI reset domain, for non-secure world to access the resource when
+  platform assigns the reset control to non-secure world, i.e.:
+
+  resets = <&scmi_rst 0>, <&scmi_rst 1>;
+  secure-resets = <&rst 5>, <&rst 7>;
+  reset-names = "int", "ext";
+
+  Such device description relaxes constraints on device tree modifications
+  when one, a user or a bootloader, needs to assign a resource to secure
+  or non-secure worlds. Indeed, this allows only "status" and "secure-status"
+  to be set while the rest of the device description in the node remains
+  unchanged.
+
 The secure-chosen node
 ----------------------
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
