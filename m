Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA159D633
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:03:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+mjrZDLU9f7UepaoyMRK7rLCutv1GnicoWudzzxNCI=; b=JIHZqTyjfdi3aD
	KzQ8o2M4bxl561PY0UTFPcWvMoXJK2MyCmHFCQPBn9UzsDOqJzm3Na0V7a5/yMVStejrwepelpTcO
	BjIj9B7iQ0k9Z+TXVd0lTIXXUwD4HLzg3rKqUrvirYDBFuuomgDc5JMEJUF0L4gP90u4FxDvJHA/p
	sZz3o+oc+e+QwHcik2CtelbxoYbDtnEFSKf7LG0Z8Wu8ixStTheNgx6q+rRUwyOiocFcZajV9sO1K
	60vdb3auHW3ZzhO1oZZDl28W6dYXsSTfI24rIj7dEcMzdXub6FERoWCkh6Z2DvKcLLDcqOSJEhwmS
	sL60cepGDFG23zC7PRyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KGX-0000aZ-6y; Mon, 26 Aug 2019 19:02:57 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KEk-0007HA-UM
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 19:01:08 +0000
Received: by mail-qk1-x744.google.com with SMTP id m2so14931611qki.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 12:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=akAei/7tOU3d191zec9Xi+sZBY39XbiNq2fhlUSUGK8=;
 b=aHKkuUpclP5IMt7wAHzBt9Sc8X4Or7WoFatBAPGA1CH1KYaZWAevUa/XBG1UeD+BiE
 CuxaGUZR5K1uB/VS2dvay75flTkQXz6bh07bAv/u9Qscje6ZQNLAY0a3RjWlN485tVZy
 b4bH4m2ELjpF70da/5WIqrJJVF/TA9aaj1ZKQWRXQs4RwJ3NvZlrgGPsgn1DVPqyNY1Y
 lP7gjWsw5oQgquGCVVGrZTq5l4DaQj8LiJW1jsUNPeMEV0Z4bp6/kkU6UoG9xFgEFmcT
 s5mW9o4SuGsusoVxrGMX6dZs89KvC4+2cyyABuNj6g/3YvkJyeufYRLhWz+86jrOXIyL
 7iLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=akAei/7tOU3d191zec9Xi+sZBY39XbiNq2fhlUSUGK8=;
 b=PtSLRlfUjXVMe1rXBcDplmXIgpkrsRznFMH1kWnKkr+KERYiyAx/5yEo/jtsWyaxVo
 EGVdb1wzU2T8fa0/ppJl+YgG/P2ZgI5CaIjdDLVBScdFweod2syBpMKdz1BfuebtqXO4
 R0DJD9UhBwYm6ADCjmqhA4/XJhs+46pGzYvDAW/aJem6+HAYcRBJBmX3bUrxcuZAiKdR
 wg3VDVHQTMwnEirRYsQZDk1Tn2WIdS3BEaIC8sb+EdYWAfuUI0xiBxQG9aiupZBGNHrG
 ursZ2VP8KFD6nqq6SZMxyn61mE0E0v76DC0i67N5hr4v0gEopyvkekDZ18wvv2N/FxNH
 nEkQ==
X-Gm-Message-State: APjAAAVZ/wi7yZzrRxnVC1KjNBIFCmRPbEiTf+Z5tVn3QuMxn6fGa9VO
 EgTTw+XdtRrWnJlSU6dVwsRylg==
X-Google-Smtp-Source: APXvYqzJXd38pO3iRXZK6ansWFKaAVK7wUwsU2qQ/q6b8pl+RREguA3Jc5PkLVuOG86V0Rto3oaz1Q==
X-Received: by 2002:a37:c206:: with SMTP id i6mr17410846qkm.384.1566846066175; 
 Mon, 26 Aug 2019 12:01:06 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o45sm8614377qta.65.2019.08.26.12.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:01:05 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com
Subject: [PATCH v1 6/6] dt-bindings: interrupt-controller: add optional
 memory-region
Date: Mon, 26 Aug 2019 15:00:56 -0400
Message-Id: <20190826190056.27854-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826190056.27854-1-pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_120107_073850_6AF8FE4B 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow pre-reserve memory in device tree that can be used in interrupt
controller tabes. This memory is required when kexec functionality is needed
with GICv3 controler and device trees.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 .../bindings/interrupt-controller/arm,gic-v3.yaml          | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
index c34df35a25fc..7640aaa97302 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
@@ -102,6 +102,13 @@ properties:
       - $ref: /schemas/types.yaml#/definitions/uint32
       - maximum: 4096   # Should be enough?
 
+  memory-region:
+    description:
+      Memory used to allocate property and pending tables.
+      Required if kexec functionality is needed.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint64
+
   msi-controller:
     description:
       Only present if the Message Based Interrupt functionnality is
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
