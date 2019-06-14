Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2900452B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqQCVBK4XsUKPzPFHTcQNcV+ZJxLN+2v4NoSsBhKWfU=; b=EP4y1oUrDgIyF9
	whdO9EtDokfKJUjmc+5P92VYDzkbKzX9UW7cDmiuDdssNycgAvyqQNrRoa/HZBzoTxJwET/ClM9BZ
	bqvbXtwIm5aCf/Jxb8quzb4QUBU6rEjwzpfwp8Y4VsjzXzAt+R1LJCQUCfg3jXpKzP1tX+hJa/ZtS
	+VSjP1tejLb1iXk8uL/+lcDsgQ2bCylVx+WCIobJZgogh7ZTsuRj+H5b25SP5MHB7K+mlhjjzS3So
	bks/nGtuRq966B3TFWdbMUCn0GojCZjSJ9umSqdbIun7X+q5qya5yaz09nXZAjeeuhzVjSPeJJHls
	o/O19z9x395ojPB7Wlbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbclg-000115-7A; Fri, 14 Jun 2019 03:20:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbce8-0000ec-MW
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so662829pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D7dDso9mEizkFlSNIpcQXEVsYMAg+0dXCi9osCif4dQ=;
 b=fKikLlZuAQwMsJ7IxdZ8VaTDrZUxIEZ23eNY/ec3KB1TeAkqv+Dd8EAOX2jOAgTmRi
 32CQuw+4/4j3eOkxgcDh29AnCQVRSZrT4BaN6E3Q39lYAZVbENVcOm8XPzsqNDaiE48y
 yjndCGjmzUzdw5d/H8+50cc15w15uQ4VsI8t7/LuLjW0NAtRrsznKOzILwQEVq4JhUjr
 9aQ/PnnP76FkI5bomv330zrABfuEa9DAwt+1oMCGWmv6zTrjBN546hhVvZvAlUFSoBok
 bAHCvf9uNRrp3k106WZTFTQXDvkQwiI/2pA/ej7S7/AIrrelGoVgvs7PId7Mn6OcvKAI
 j6mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D7dDso9mEizkFlSNIpcQXEVsYMAg+0dXCi9osCif4dQ=;
 b=FxoVolaHVks/nDtXU5OmSLa8o7tZshM5DVnbPnapXi4xyoLwjsMiOZbOpNriXH4ROk
 qCdENjaRKreeJzs8b6JCvGQI6a68LJ+mqPclIVMtRq4AFZa6Sa0CeftgCecMJU2j++HC
 Dq4lAniDnJQj3QkowqeOXjlSPJrni/emAa9l8YbGTVIxtYZK5l1W25qPTYDbnj4CNVQS
 3nhDqZnFKo5IiB/o6zok3yCkYjIeud3+zb+W4MCJ8nzTxiQjBcYx5qhDAhuOeQNzD/ht
 +l+lf9hl3KxZDAVkQgNVW8QSi8UJnTiLViC3ea0/eTuW/Y01R22iC2rj37XZ5GXXIFiy
 wQaw==
X-Gm-Message-State: APjAAAXYZVc0OGlkrC/6Gbrtz8xa+DnJWQ5QxL3v+Q0o0PyfZGAQ5k0k
 iedV1x2vB0PWfztecIP3Fz4eh5Spf5c=
X-Google-Smtp-Source: APXvYqxW3zGVG0I9OzIQ9niSlNH61hh4YIpqfv75eHxvSTKVVpPie3Lls43Fy6uold1oh56+3H7abA==
X-Received: by 2002:a63:8249:: with SMTP id w70mr31527593pgd.33.1560481975265; 
 Thu, 13 Jun 2019 20:12:55 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id 11sm1046028pfo.19.2019.06.13.20.12.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:54 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 23/45] arm64: cputype: Add missing MIDR values for
 Cortex-A72 and Cortex-A75
Date: Fri, 14 Jun 2019 08:38:06 +0530
Message-Id: <664f5eab4d993d056ab82bcfaf7037d538ee6095.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201256_835341_DD5B2373 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit a65d219fe5dc7887fd5ca04c2ac3e9a34feb8dfc upstream.

Hook up MIDR values for the Cortex-A72 and Cortex-A75 CPUs, since they
will soon need MIDR matches for hardening the branch predictor.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Add A73 values as well ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cputype.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index f43e10cfeda2..2a1f44646048 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -77,14 +77,20 @@
 #define ARM_CPU_PART_AEM_V8		0xD0F
 #define ARM_CPU_PART_FOUNDATION		0xD00
 #define ARM_CPU_PART_CORTEX_A57		0xD07
+#define ARM_CPU_PART_CORTEX_A72		0xD08
 #define ARM_CPU_PART_CORTEX_A53		0xD03
 #define ARM_CPU_PART_CORTEX_A55		0xD05
+#define ARM_CPU_PART_CORTEX_A73		0xD09
+#define ARM_CPU_PART_CORTEX_A75		0xD0A
 
 #define APM_CPU_PART_POTENZA		0x000
 
 #define CAVIUM_CPU_PART_THUNDERX	0x0A1
 
 #define MIDR_CORTEX_A55 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A55)
+#define MIDR_CORTEX_A72 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A72)
+#define MIDR_CORTEX_A73 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A73)
+#define MIDR_CORTEX_A75 MIDR_CPU_PART(ARM_CPU_IMP_ARM, ARM_CPU_PART_CORTEX_A75)
 
 #ifndef __ASSEMBLY__
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
