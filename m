Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EDE7D73B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7e+eJi4s9KVLZ8DuWfzK4MJ1almm9M0BRCRnGc95xw=; b=lOhZ2uFI5Rr6xt
	DM6OsUdso3b1aUbE9K24r7KxF5KjzaHizz+s4n3g8Ywm23XoV2lJZz5H5RxyadxIKk0nq6Yendux6
	Xwr/aM308Nc+hr0qzByv8yOIB2t7RQsxkIEV4aSYB5uKgg1JInQ3f3NiJriJO+nO0cJinEFZK5iIS
	qHSLMBhWceZR1G1Ws1vEsomDONyV13CO0cHzqwGnrDda4/TVwajZvbKC4+ozucgJIQqk9Z/8WM4gc
	zOk/OaeMOBs639Vp1Ib4bP+HEucGmZpTdhwktfgtLaeb0M9WbkAl1qPTudwI9bxZAo7pvvcV0q+1f
	pcyUhMkEJp8fsp+dHbGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6KE-0002Lz-Hr; Thu, 01 Aug 2019 08:20:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6JO-0000HO-II
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:19:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so33734993pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tUK8ETga6k61l9Q+/z8rY6SIV6XG+DcjRuCd/1NWAIQ=;
 b=Y4Z6CBElGedbCLchp/1U5zm7RwIzsZW7sSPLelgGoB0UAR3fmAUIaWPRqbBzItY+SU
 dFonmxxfBMwagZLJREXeHezpHMh1Y3Qa90lYmEqpzmwy29/QR4lMPJUVtQqcTlzsoblx
 YvUQeTrTR+Rrgn6wBdIS/56xvJGBvX6qMt3nWeY6Yf+7kSNhghxr4XIm9GLXOVwOTBSx
 bMwSdkvjuTyiv2KCbxqdBmearRidRn1z3nSssV2qaK3kQU+stZQ6DIV2/gHkdIaGZ1iJ
 d0MueB6aYPyB3wiVuCenso27YAaY7cBchl80Fj6Qc729nXHTSmJRi2P+ieiXaWhAkbNl
 +6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tUK8ETga6k61l9Q+/z8rY6SIV6XG+DcjRuCd/1NWAIQ=;
 b=mJ7Sk1V1AkKOBl7idAOZdVTHX7Wn79LC9vj4hCAn1gc4SonHSSWXDSsv3E/lJfAjJX
 Z0Ju730gyDre0jM0X1N0CfDVSa8fA3YZAPblGOQz208nvjUnhRwOXzSx3va7iCVh+IBu
 uARCY/Cn6/TuUGIEsIDR9Qt8yLNGUk0C6i+1o4GNHqkwHHzDntoyy2HUI8BQIvvT1y5h
 YxpmoUuC8qUNr2UzicvOGoUSu9ojVZibPJuCedj4UTrQkyEpFIoI/JAkJ2B/z73/wgT3
 3U8NxKTiuBotsb4IfXPbEJ4l2wx7qAp1u/4AZoccOjT3WIuT8YNEBDE9Lfwcmpf7Q1ZC
 6aBA==
X-Gm-Message-State: APjAAAV9CEEd/NIa8NzMKM1IBUpxMoG128rAzCS2E8OubWxWd0h4F9J7
 y0RjDuLMQxfHV27ZuWLCrKSbgQ==
X-Google-Smtp-Source: APXvYqwBGdeJip4Cl0RM0Gp+T+ODw9bU7Zw9CWW60KiajPbXAE1SchPFqPiYgxpHdrwW0IJ2FkUxCQ==
X-Received: by 2002:a63:d34c:: with SMTP id
 u12mr103456545pgi.114.1564647585962; 
 Thu, 01 Aug 2019 01:19:45 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id y23sm72885680pfo.106.2019.08.01.01.19.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:19:45 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 04/47] drivers/firmware: Expose psci_get_version
 through psci_ops structure
Date: Thu,  1 Aug 2019 13:45:48 +0530
Message-Id: <64c1d3d45f10e811674aad1f583b346fcf3a8707.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_011946_620338_176B25D1 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit d68e3ba5303f7e1099f51fdcd155f5263da8569b upstream.

Entry into recent versions of ARM Trusted Firmware will invalidate the CPU
branch predictor state in order to protect against aliasing attacks.

This patch exposes the PSCI "VERSION" function via psci_ops, so that it
can be invoked outside of the PSCI driver where necessary.

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/firmware/psci.c | 2 ++
 include/linux/psci.h    | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/firmware/psci.c b/drivers/firmware/psci.c
index ae70d2485ca1..290f8982e7b3 100644
--- a/drivers/firmware/psci.c
+++ b/drivers/firmware/psci.c
@@ -305,6 +305,8 @@ static void __init psci_init_migrate(void)
 static void __init psci_0_2_set_functions(void)
 {
 	pr_info("Using standard PSCI v0.2 function IDs\n");
+	psci_ops.get_version = psci_get_version;
+
 	psci_function_id[PSCI_FN_CPU_SUSPEND] =
 					PSCI_FN_NATIVE(0_2, CPU_SUSPEND);
 	psci_ops.cpu_suspend = psci_cpu_suspend;
diff --git a/include/linux/psci.h b/include/linux/psci.h
index 12c4865457ad..04b4d92c7791 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -25,6 +25,7 @@ bool psci_power_state_loses_context(u32 state);
 bool psci_power_state_is_valid(u32 state);
 
 struct psci_operations {
+	u32 (*get_version)(void);
 	int (*cpu_suspend)(u32 state, unsigned long entry_point);
 	int (*cpu_off)(u32 state);
 	int (*cpu_on)(unsigned long cpuid, unsigned long entry_point);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
