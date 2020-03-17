Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79242188A6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:36:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QGAhAAFpcdbqL+P/rVwdGxCOzO3DLAvqcq9aS6pkXPA=; b=TtPP5foBWw0ZJidJeCow5zAJ8t
	d8FIHjXqgM5n50drv2vk/wVurY47l46rNjN9GxkhTTpKaUTL8RbVMDBWKwDwCcWQa4Bfe2bAqB4Kv
	lMeuoe6l9CKYXg2CYDkYAxWYuYBye7SMxXg0DW96qQGZBw43qmKNK7744MFvwUF5absKvrKdk76b+
	Vv+ay+/P3B+yPXlIKUD4NlxDYh5eC702gngbgobOuf/dCDGghVxSK/Rc/qglH3IZjynB/zqsY+JVR
	RHoALL5gZ+x4nvD1NSk6Tv7hCAfJLlwKBnl9N8FbQjA5yqVQgjTXxKFYcf7cIbWZoRfEyAVQAzbo3
	Wwk8OfiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFCd-0003Gl-HI; Tue, 17 Mar 2020 16:36:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFCG-00033I-Ka; Tue, 17 Mar 2020 16:36:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id z13so6134110wml.0;
 Tue, 17 Mar 2020 09:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pjMnwjFJerbx0N3L2Dqt4xop1wyGSpDLGCMz6+TnU/s=;
 b=ae4n6jEjH+OoCBS3DnCEY+jJdqGdHoFGgsv2iRa/Cup2ogFIxxfK4FqkXdeKrPHJjG
 Ik/j9T4EEt12OeXtkoJyGcezLGrulc504g7REHd58NzxHSwPYmSw9GQqbCUPGn/uQlnZ
 AiojD5bU/QJsdFQP2QlQcdP+GZTg4N3K2ZHkqL+sPY2H/IRoE5riBfgejccuahVRH71T
 HbrTTgF+1x8EqHv9pBZOoUpFTE17T2HiRjFN0UZKK5ASEK9nl2TOakhivBhivLlFRuqS
 Tmi4R0dsNh3/ScEt2CBSROrbPl03upAOGp4siQdjiOsNF30lNwxBxH/ZFzrRKyglU+zP
 hNAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pjMnwjFJerbx0N3L2Dqt4xop1wyGSpDLGCMz6+TnU/s=;
 b=XRhoAnQpjLgFwk9EKau6nci+DRRoDJvpoDiKyF54jGSPOsQBAVvB0/ed/oD/UNaVCD
 GC7YWs66HUpS4oYOx4Pfy1HOaioqt5MMPYtoMuYJ4UjRKgvnl90nxh4E77cQ9c3ks+gm
 APdHVUH6mSTCMjVWBa+IguhOCfaYLzTJrSHy51MPtcsW7pLvzJd5AlLEuhryBvuTPn7Z
 K7hBPnoiqnQPT0KZxolzljPngxK6TtNVSdO+jjH1K/TuvsQV9ONJmBIpm86AVRZjuxHK
 x34qpWCoM7LisOl5hG7bgBx4c3BKBXwCWw6K8pyZNQGWpNmAKpNHcPjvZWf9w8HWoC98
 3psg==
X-Gm-Message-State: ANhLgQ21hH8w+Njeij7MyZ14ld9BLzWeQn84kGgPyo/1VeUc3g2ejATP
 zuxEKH5hN0vo9NULgl9YHDq7ARNN
X-Google-Smtp-Source: ADFU+vvBNQ5z4r9YWuB8B/zFVlS25fu6bKiScd+gMjdgNptjWWj9nway+jpZRp+sZT2jBqbDdFBFng==
X-Received: by 2002:a7b:cb44:: with SMTP id v4mr138704wmj.29.1584462963204;
 Tue, 17 Mar 2020 09:36:03 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b10sm5389702wrm.30.2020.03.17.09.36.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Mar 2020 09:36:02 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH 2/2] dt-bindings: sram: fix yaml warnings for
 rk3288-pmu-sram compatible nodes
Date: Tue, 17 Mar 2020 17:35:55 +0100
Message-Id: <20200317163555.18107-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200317163555.18107-1-jbx6244@gmail.com>
References: <20200317163555.18107-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_093604_672099_4D5DAE37 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example these warnings:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#address-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#size-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'ranges' is a required property

Fix this error by making '#address-cells', '#size-cells' and
'ranges' required for all compatible strings except for
'rockchip,rk3288-pmu-sram'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/sram/sram.yaml | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 7b83cc6c9..f06d254ba 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -118,9 +118,18 @@ patternProperties:
 required:
   - compatible
   - reg
-  - "#address-cells"
-  - "#size-cells"
-  - ranges
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3288-pmu-sram
+
+else:
+  required:
+    - "#address-cells"
+    - "#size-cells"
+    - ranges
 
 additionalProperties: false
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
