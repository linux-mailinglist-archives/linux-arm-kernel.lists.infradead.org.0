Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1DC74FEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PdHDD/RWCbnu6jF74DedfuPFwRw/X8yEEXQwcFig7LI=; b=P4k
	1cxrNIjP+NksX3CoyY8prwJfDUYjxSLNkdfqrQ9dB5qeREw6NNUGNRK/Ml57emiU7/uJRBLp1oFq8
	WJCwScGng3Kfc5RLQ+F0/tWhaxd9w74aNQabzBudTsKx7RqcPbCvvI/2ZqPEHz1W96RTSlQIRonF9
	7g4fbulGqXxDz5hYUa3hvXFgJlRxo+blOp7vUbVYCIVXqzZ7Qq39oHpkmwyM2me3eWb72oy6ujl8R
	aLfmPTKNb8H/YKSVSUCqqQjf6G65X37S4JqKVjez8TJGX+mu3kYo5Du2Y75dOp/oAOmPpjvYpG+9J
	K0Qez6/UYhPCI/+GmhEdLPut5REDpcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqe2j-0001Kh-UF; Thu, 25 Jul 2019 13:44:26 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqe2V-0001KP-9F
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:44:12 +0000
Received: by mail-qk1-x741.google.com with SMTP id 201so36405934qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7vJnzpBpcvcrDJLz4SQKctAKT+udfaD/ozkDXC+TYT0=;
 b=pVA6ieYR/3S55b2aaehRc/vtm47RV0t8qZT+22Wf574Wt9bpXruLMX1dnHZj+bnpi/
 CZEDUXo/zLHPZ8C0NA+BdsoWPF8/NvTG30Cnf3DAtwNg6m+ZynlGymStvdlLl2Lw3g9P
 L27QEA1q9v/gQ36JSI3cDFcTlpgwzMXCJUoHnRk8/RUByrgnL9yJkEUnBQTuoUQw5EK8
 0kEgz43sgHzkjd+MneFSHSjD7M36goDXXiB13lvj7hKQDSPtIDh8fY7ANvJtQ5OhLySz
 wH0Ue/iSs9DjFbR1WAmxveEI4Fr183GDi5noZ/55tv7EIQNIV3BYBXfqFsViWQ4sC2ia
 fNRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7vJnzpBpcvcrDJLz4SQKctAKT+udfaD/ozkDXC+TYT0=;
 b=noYS7i+R7RyzujSpzSejq6zAzBreElozwn68UDDzK4OZRt6x3VdawVbtk7SnOIsYCU
 aMEmGzZVr4iSsuqazouM1vw9ya+KbR8+hQMI7EV4beoI60HX5LA30p4NW57SOFE7nCIz
 Gs2C8QC4Cg99v8dt/f0xFv7Q4oPZ4mVIuL1gpf4IGigc67tE00+WDMbN0HyGTe6nnxc+
 p4K7YIioFDPAlZ4GKzNV4lYR+3CAE0YKU71qij6e9s7LyjrgxoINNH8yG6aS8T3zn9y+
 Jrsms3myshWEJvzBT478iE/53LQU3GB1zWRCnbmrIR0ZNHtfNwet95Fp37C+rVxIFKpQ
 46QA==
X-Gm-Message-State: APjAAAVQe9E0yVe4LEk5jPSqIGL6D2TD41Lr3sGPPKvcyC7tm/1gso9k
 tiL6TUkLgoOxpsY2pyhkFl0=
X-Google-Smtp-Source: APXvYqwHXFMuUVxS8E9koreW+qeFX3vsdd+y4RFwzLHTFn7FaDrI6ek07z57rO6eM46EKFtht+kwxQ==
X-Received: by 2002:a37:a9d0:: with SMTP id s199mr59294636qke.32.1564062249711; 
 Thu, 25 Jul 2019 06:44:09 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id e18sm17527022qkm.49.2019.07.25.06.44.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 06:44:08 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx6qdl-nit6xlite: Remove invalid properties
Date: Thu, 25 Jul 2019 10:44:12 -0300
Message-Id: <20190725134412.7872-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_064411_321624_A845EF81 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gary.bisson@boundarydevices.com, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "vqmmc-1-8-v" and "ocr-limit" properties are not documented
anywhere, so just remove them.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi b/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi
index 7a85116ef1d2..2418cf8f2317 100644
--- a/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi
@@ -556,8 +556,6 @@
 	non-removable;
 	vmmc-supply = <&reg_3p3v>;
 	vqmmc-supply = <&reg_wlan_vmmc>;
-	vqmmc-1-8-v;
-	ocr-limit = <0x180>;     /* 1.65v - 2.1v */
 	cap-power-off-card;
 	keep-power-in-suspend;
 	status = "okay";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
