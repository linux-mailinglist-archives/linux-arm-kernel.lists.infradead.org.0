Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39343245BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4BFFak+Gs7pClx3G7VwaHgYhsARRr4hQh+z5/oV50A=; b=pxhWE08fhi+d/S
	Wz3JNXvYVQ4y98ugxGa9438LQ7RYhsIsEStrU/exAeW41G5KdUsi5VbCWwvpXztzPq65Wuro+mSMY
	hxF8dvvy++l912QcL3piy5rWMbdF8MtiHe1NTyjK6adtg5lKjWbYU7QBvexcOH/caPx2mqywWf2Hg
	YLiIai7K8+LuPtYiyDLpfUGFifgE6dqB5V4v1v7Z2Uob7ZUp3QQxQ1y6FMEV9fq23e/pJjNdgc6Vf
	jZOFJaocfLJbSI8pqA3hPoQOnPMR0P7z66ZIs9GuuyIQEasEyg94Ympa1MMfQd+AnsC7gNfmQ8AmG
	7iCA1ENNSm4KE0A5PBDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStqd-0002RQ-3I; Tue, 21 May 2019 01:45:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStpq-0000aR-MB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:45:08 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so14332725ljw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VX3ZJ4+LsHQk247sTXsicTDtr9mvWdG7A6UkuCw4jPw=;
 b=uscLW5X0zjMF567R9Z9XjkmSsRTEaJNNQeU1Ua2eLKV2NBMf4bTkvZEGOVIAAKNwOV
 DvA/Qf+e0Y6xS45rQcMU67Wuan0DmAfggwDDd+KQjnCqGx5hUFFMCx1qePGhPFhOJDVB
 Mo6xAji/8X49dY1b1oirD76btsWgM6zyv/3PqBCFuKEvEgTXEsJOEy5U+82/Xa2NRakP
 PX7yl627cPK4xe0c4JVg7SsEq8fQiu/260x73USf0FERmZMhLOlgbph3zyaErnWh8Ik/
 ZqTNl1F7NocGxuIyyAQ3mdRGqHdaCqRuUyu15poVxpt/VP5VDOh4MXg05M3m2xgZGqlb
 Y+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VX3ZJ4+LsHQk247sTXsicTDtr9mvWdG7A6UkuCw4jPw=;
 b=ibCLXXLdVSqQbXQux1Mfhk0WZP+T88sIwq7a3qWVsJrCc6l///BfzYJcyVBrov9f/i
 AU6RNaCGtqa1XsEd3zfqP2LQkF3yNmOFTPiKDXUf1fj4dQru6MCvIEchCkjv63cPR54K
 bMd3MM150YwS77KCLFSKBShydOhumCOy6Q1QmgkEO9unKBsrFeMxgOJdbi7Q6Pm+4r2y
 4vissZrMmRrU+sHNN7tKBEKRXzts/qla8lL8Og+tsjA7Jida/sRUo4OJZMBsQG387R8R
 cYYS4wkFUcUc/Zp2KPKw6UWUR7cj6qtDVqdbhOPEvw3XTU3jPyYz5lbWT2GsQQoPYCjs
 Ovrg==
X-Gm-Message-State: APjAAAXHC8B5fngdnpBmcL1BdSR/9waOoVZhfEHChWjBIomCQOet8hfm
 AE14z8ZBo9Hx6nxnua4Ym8AEygVmRmY=
X-Google-Smtp-Source: APXvYqwCcWx8eAzjMczA+atZCyrD29Hy/di6q3UMSOpZsmy/ZXo4QLz760QkM0nUZNFBfIekbSdaNg==
X-Received: by 2002:a2e:9b93:: with SMTP id z19mr9312223lji.96.1558403096613; 
 Mon, 20 May 2019 18:44:56 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id z11sm4232194ljb.68.2019.05.20.18.44.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:44:55 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/9 RESEND 2] mtd: partitions: Add AFS partitions DT bindings
Date: Tue, 21 May 2019 03:42:21 +0200
Message-Id: <20190521014230.18463-5-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521014230.18463-1-linus.walleij@linaro.org>
References: <20190521014230.18463-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_184459_116782_27A5F041 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds device tree bindings for ARM Firmware Suite
flash partitioning used in NOR flashes on ARM reference
designs.

Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../mtd/partitions/arm,arm-firmware-suite.txt   | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt

diff --git a/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt b/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt
new file mode 100644
index 000000000000..d5c5616f6db5
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt
@@ -0,0 +1,17 @@
+ARM AFS - ARM Firmware Suite Partitions
+=======================================
+
+The ARM Firmware Suite is a flash partitioning system found on the
+ARM reference designs: Integrator AP, Integrator CP, Versatile AB,
+Versatile PB, the RealView family, Versatile Express and Juno.
+
+Required properties:
+- compatible : (required) must be "arm,arm-firmware-suite"
+
+Example:
+
+flash@0 {
+	partitions {
+		compatible = "arm,arm-firmware-suite";
+	};
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
