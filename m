Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D3A7D721
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbGw2Z0SAnNn5mN3/FzeLpCQGz32aKJ/L+1xY+rI7a4=; b=TB65AeZ3C8LNlG
	foVaS37w2NDT/B4+cgrOg3VXiadKXHZmHYoiY2sH0OJ38IwlZM4r3kAFy3nPOMrxXEOkk774ZUL7F
	hTk8nSQi9fcY1/9e3t0/2ms/r3ZHV4ZW+37V/JwbdlyTSOPbnsKfLVbWU1kCmgFXgj7jGuCSHeTlf
	UMU8HN8okXAieTlYUEX+YIXWX/ciGYYsfXwp4Wv38cYESQ6PIGxZB3BsU/U7yUHwezH/EhClZ9oSc
	GUHOQxM+jdk0QdoMDN8uK3Q47UmwgUcbu3TrrhyK7dEPnFGFJ/AdG4N08ZqIsR6e/3b7e9lGD6GBf
	sEdMMRbLTn4UYztQ+SzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6K4-00026H-Un; Thu, 01 Aug 2019 08:20:29 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6JM-0000Dg-M5
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:19:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id g2so33611356pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z7GSqiJ6aBNFVvBBcZiH2v3S1Pbs9vo106t8SFNGIe4=;
 b=cYaRmjxpRpihR3ST0Z43FI6gGebPhfoWhCbpU+IMiA14zAmRrIrwHkLNPGxQbO3dwQ
 GKIF1ls+9uq+hNUdROGeAa0AknTV9vYQ5TFKVHdwI/2EmvyukmhMRTDGiva55cX2FenL
 aGDOJ5qzMHxinEWIcGbZyYj1dw2pxHV/LjncanSzzQL3S6e2pW5AVum+1MNUj63YHMgI
 N3LCp/eNbnqtm6aGhrAr6JZ+sPtBGtd3EyRopNtHb2rYD6dzl/Nm03uWLQROVJdNpWp7
 tXl7No6eYiHWr+8KJFDPN8JbC84yPGs9/3Latvd+MfH6CI93+nX4fYz1N+Wls25RH5UP
 oHBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z7GSqiJ6aBNFVvBBcZiH2v3S1Pbs9vo106t8SFNGIe4=;
 b=ui6XKWEFUdYtmmYvaT14N4JTdsNRecXcYtRy45yPJjE3Wm8OZkfgxWa/KKjZ/Rci0B
 J99eK9WK2N/7mrbwZ5HUlOzjK9ZrK/tzUsDSYORiddf3KAM6vxfn33lGVPewhcsyTfVh
 mSc3hm689K8vOeX7cGN7BjN2C50z9lLt2ApzsokQXD3ocva2TKyQ+hucmCf8ZBBsXZVx
 AZ7eqtCt4TftMeITZIqav9Sl5IkgwWNieDo0F+Gpb0ogZfCjq1a+xrxyZUnJ2jNh8CJJ
 NgaON3W2ghDdD92GiKI2D2xUJeQZCpAF1+fkTE2tH5FrkPqKSv/mkFos72l5P3HR8GUy
 PxZQ==
X-Gm-Message-State: APjAAAXN3lGEiZ88ZuMfeWr+oSHuqFOod37FEcdm9gMEoNVDbyjRMYrQ
 2i/WszXsmDGt5c8FopH6wvxbtw==
X-Google-Smtp-Source: APXvYqy+r/ZBXTixIjv/M9S1DYk3sEBpMLeC+4UwOYm9t+/UkhM1ETIyQn3yLY+cECisdJqFRi6T/A==
X-Received: by 2002:a62:3c3:: with SMTP id 186mr51852915pfd.21.1564647583498; 
 Thu, 01 Aug 2019 01:19:43 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id l1sm91579706pfl.9.2019.08.01.01.19.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:19:43 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 03/47] arm64: KVM: Report
 SMCCC_ARCH_WORKAROUND_1 BP hardening support
Date: Thu,  1 Aug 2019 13:45:47 +0530
Message-Id: <62376918dc348842e21f6eb62235220f53d35cdb.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_011944_735279_9FF497D1 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

From: Marc Zyngier <marc.zyngier@arm.com>

commit 6167ec5c9145cdf493722dfd80a5d48bafc4a18a upstream.

A new feature of SMCCC 1.1 is that it offers firmware-based CPU
workarounds. In particular, SMCCC_ARCH_WORKAROUND_1 provides
BP hardening for CVE-2017-5715.

If the host has some mitigation for this issue, report that
we deal with it using SMCCC_ARCH_WORKAROUND_1, as we apply the
host workaround on every guest exit.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ Viresh: Picked on only arm-smccc.h changes ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/arm-smccc.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index da9f3916f9a9..1f02e4045a9e 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -73,6 +73,11 @@
 			   ARM_SMCCC_SMC_32,				\
 			   0, 1)
 
+#define ARM_SMCCC_ARCH_WORKAROUND_1					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 0x8000)
+
 #ifndef __ASSEMBLY__
 
 /**
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
