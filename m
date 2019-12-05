Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75881139CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:21:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewJFzC5nvAWXwbXA4K2QX2/lUrhJ3pPMhgc198hzN4w=; b=o4/N7SrHH9iu6u
	whUf7LN3bE8AT++9D+8J2gLR8kwQUIuLkZ/DWmVCgaW/LXoBxEnZRQbef8Xz/UVzCMGCXMaIaKWGN
	zgAX+yPTyze8sqAK0HEpGlGjA4rGjf3zZNqypJaD2HuLyAYPihiwR2ATsJ8lMWr1/fbr+UHDB3YAE
	9qD+y0VFlj79nvyAC67I6ITwi6KXA2/dOoGWFX3OlihdozrmIVDWuxiEwbZbzyoIfi/6REw6vTn4v
	Crax/8mZ+FL7183dVnXQC/swRsubX7//JQCuVJ7CqgouDoO1m0mAqKEcdanAG7oAnzn7hGhAiTG/s
	1uHb+z4JygCF3k8HoAAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icgla-0001pf-IO; Thu, 05 Dec 2019 02:21:18 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icgkA-00085p-NH
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:19:52 +0000
Received: by mail-yb1-xb41.google.com with SMTP id v2so882377ybo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 18:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oWN4pUn9h8kmkDUvNkkmAbykuZ7BWRxuHrNipagh7j4=;
 b=E7lbrt5LKKXPAltqBhYh1f/OR+N2z7JaAe5xBm+yMPOQ0AW79g2OoajbfGorwR8j+w
 4+culxp+iCxTHyaHTrl0mPe72262t9aHSUdmIWbVQAyflEicAHLSc/KnkJ1uuO27G5sY
 /doMboiyQ2kccwqntyH12UTgFARKPBfi2XPzQ1NuAsECaYij/cDgGwPdpSI3wCosoWJL
 vAmOCf60G4fkyjk/b2fzFKHjQ+qQoocKkP23sTLSrVh5nJ4aA/2/qZ8IpVt/pjke3F+5
 6djv+vG+ymwh+0g0cYBcriE9AK5gpdzNaBEZU6Tp2RUHumtuirmrG6xlMxEeQkVQtNxs
 NHhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oWN4pUn9h8kmkDUvNkkmAbykuZ7BWRxuHrNipagh7j4=;
 b=LAt7UOQblx38VXlUl3VfRNT/p+l48cDyzhLUfUE+9qALuP11QVHoLgQqMox7aKvF30
 1Ln2kc6KflyF4m4VVbRKClvdBhOVDNHAX0is0jeX+QOpdvcs4AfHRVUOxpX1veFn1gPm
 bF/Y3HAZeas0vzU6Gmoi22cmzGcCLHhHul6ldVzj6ASx3QllElBEz3nIc5DR1TZwl4BQ
 S7+tVT2LhyCpUtyfKEnR4HDhlfEC3DxGliluH307VgQPGNZvpoh4s0yMIczai49N3If3
 DLVUw1X/8nPvV2Im0LqM7BpBbAMeOOm+z/CYMGt0trLH+VS0SvA8iB+8nrEh8iLPBCqK
 JsHQ==
X-Gm-Message-State: APjAAAWjA4RlOtmrw97zC1F3fpk9gg0a2xzMiTZIrvW8S7s+WZdeW7fg
 BBOnY1kQPs1kd7aN+CTE3/6ru8F9
X-Google-Smtp-Source: APXvYqwa9Nm6yYJ/6HOp8YPmf+4cLZwckeWQu0Kb3li5ZZGizpS8hlXIBirWYlS4HI7DdEYEOXg4bw==
X-Received: by 2002:a25:4144:: with SMTP id o65mr4812334yba.11.1575512388942; 
 Wed, 04 Dec 2019 18:19:48 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id l6sm4188449ywa.39.2019.12.04.18.19.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:19:48 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/7] dt-bindings: imx-gpcv2: Update bindings to support i.MX8M
 Mini
Date: Wed,  4 Dec 2019 20:19:20 -0600
Message-Id: <20191205021924.25188-5-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205021924.25188-1-aford173@gmail.com>
References: <20191205021924.25188-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_181950_795169_04ABE4EA 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The with the recent additions to the driver, the GPCv2 driver can
support the i.MX8M Mini, but it needs updated 'compatible' entry
to use the proper table.

This patch adds the i.MX8MM to the compatible list of devices.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
index 7c7e972aaa42..576a79097a4c 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
@@ -9,6 +9,7 @@ Required properties:
 - compatible: Should be one of:
 	- "fsl,imx7d-gpc"
 	- "fsl,imx8mq-gpc"
+	- "fsl,imx8mm-gpc"
 
 - reg: should be register base and length as documented in the
   datasheet
@@ -24,8 +25,9 @@ which, in turn, is expected to contain the following:
 Required properties:
 
 - reg: Power domain index. Valid values are defined in
-  include/dt-bindings/power/imx7-power.h for fsl,imx7d-gpc and
-  include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc
+  include/dt-bindings/power/imx7-power.h for fsl,imx7d-gpc,
+  include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc, and
+  include/dt-bindings/power/imx8m-power.h for fsl,imx8mm-gpc
 
 - #power-domain-cells: Should be 0
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
