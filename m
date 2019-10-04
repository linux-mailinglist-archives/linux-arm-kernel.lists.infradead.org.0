Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82502CB9FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJLJ/yOFydpXfH/bCQ4mdhjdR6xMQdpVuwR8jpOC70k=; b=TBf7jkpQQc15HV
	b1fQkp0aNwFxrugcn+Q07c70wZ+lUZyNkgNFMr86ltFlIIe/QHnq3Qi8qLJMQviQRnlOqmEw2bJBC
	7tIzAr43EeQtVcLloqnT/QCEymF6tZ/jPqdhm4BBtNJfw2ESNn5e5RYBOgAXoi82ti1XSpmKY3QnX
	WRbsSt+ahdK7LL938wCu7FOC8nu+bQ3o86cTjRFUU+SNhAAjCs++NEwaYrHgR8+wyKCjNTNYBIIw9
	qfRYxpZhbHPeKd47pIZnK39m2SKTnIEhDSqlgRURm2lj1VPANrokuAUahm3MzGby5ytwZpxU/mCQ7
	Nv240JwDBE29dTgiNU2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMPQ-0007fS-1M; Fri, 04 Oct 2019 12:10:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKE-0001pj-7D
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id v8so6894678wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tFoAdqBLSyk0vZf6DS/EoHCTPxZncgXa+o7HCkM11aA=;
 b=FuzKo3BpnIg/0swZYbfGIFA4PGyd2EHKLKAI8rLcm6NT6sa0/QWTzFQEtQJTEQoMn2
 1Z8P/BT2kJTpL25lfJAK7xlYakdueOiMheXxevmb8d4pK6JWH0g3osVsKxbU4WwPgWa9
 ukwzxksSebYMZ/uepoG7rgSc04lx17/7OiEU8rtoSbAokUhMVvYVFeUdb6jVhK6Y/SNv
 aChqcMrpCEadqBhzgEKck7nszBYjTx9hnT6A8Txc9++51TVY+co9ZM4tBwtkz0OVXCmG
 2/ZtaX2mXqixZb7EHLg26aBNqr3bL/cycBSaCavuhPvD2TVlSSDBD5rnBadQO55Z1vCw
 D44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tFoAdqBLSyk0vZf6DS/EoHCTPxZncgXa+o7HCkM11aA=;
 b=rmmDRY2JNQJoQUF7TzLGKaZwWn127iDWxgX3eVxHZ8nzWvhaSedId0OMIeoCXZqIgR
 N4qdcGcIbE7eI3UWQuL+EXWaz+8AtTcw56Nuxl4pwUZEVGPRgyHwXSPSVABT5eTzsOA3
 Jz/sLEuZBbjR9FzeTcbtvFK4uJ0x2LIliQ5qNwteQ67szhgZDNYkoNafBZiJRq9whyz2
 6NQHJwgJyLC4RJx1Idro463qjH4wYzhNhfvsQ1l+6otit7PJs6DYnSL7Q6EozgJVvNOX
 g2rPNbUqPAwXyS8s28yeoUadQ1E1+XVKRChzcYSuEIjPYVO96mhPsh82FbvqwTevaI0L
 +gYA==
X-Gm-Message-State: APjAAAXVv3zSWfv4IrxaCfls4OZ3ldC/tZ4ncoIZvwWNZ/Dk1aAXDt98
 IkXhurZ4ZMdxGTA03htohQyImjuq09m9eRxb
X-Google-Smtp-Source: APXvYqyWO4f+J8l9DLWRg98/8IopX9xSrB3tv+oCli1PaCRSBUAzuBYk0ryqZQPWW4C+tiCuZeNzSw==
X-Received: by 2002:adf:ec86:: with SMTP id z6mr178703wrn.231.1570190684222;
 Fri, 04 Oct 2019 05:04:44 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:43 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 06/16] arm64: Add sysfs vulnerability show for
 spectre-v1
Date: Fri,  4 Oct 2019 14:04:20 +0200
Message-Id: <20191004120430.11929-7-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050446_307054_840DD06F 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mian Yousaf Kaukab <ykaukab@suse.de>, Jeremy Linton <jeremy.linton@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will.deacon@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mian Yousaf Kaukab <ykaukab@suse.de>

spectre-v1 has been mitigated and the mitigation is always active.
Report this to userspace via sysfs

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
(cherry picked from commit 3891ebccace188af075ce143d8b072b65e90f695)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 7fe3a60d1086..3758ba538a43 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -729,3 +729,9 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 	{
 	}
 };
+
+ssize_t cpu_show_spectre_v1(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	return sprintf(buf, "Mitigation: __user pointer sanitization\n");
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
