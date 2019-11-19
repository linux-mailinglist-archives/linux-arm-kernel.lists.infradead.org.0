Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15AB102881
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 16:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HMHYx8EmMlg/FXi1kNo7uSouGnmVFQJGVMdpc+E3wfA=; b=C9qwQomWcGe4d5
	2RmsLN7tlc1hkJEeeqw3iv2KClAiMhTMiLFVLnVXSRNx0UIOHsddqBUOMh+1LNQwf7dVikZAU8PNp
	mQ61LwdzFeRzXg3X9IdZZ41hnz1wCK2I0beHYK0hbR1SI9VBdMd//fskQu6lhVY+IboPoqAG6uf8C
	cr1Smd1znDNNZQtBoppbR9lxF4mdj9QTQMvcluVTEdbQyHSX/UmD1nup0MrrzQqOJEtjjlKJqK3hS
	EFhb5F0dpmQDxVPBGHVeh7XahoHex9N9kkBEaOfSNplgJrK6spy4lA373JvuFQB106qfacoJg+jng
	T+qK+QwAWzme5Yy/yIOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5iX-0007CG-6W; Tue, 19 Nov 2019 15:47:01 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5iJ-0007B5-3O
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 15:46:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id t5so23911698ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 07:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EKKyPkgTIrUgJLfJdMi3ez4CUNaFpld4hIHRZMCg8t8=;
 b=ftUzIhsgD2KsI+Xzqgh9UNmduNgupRakB+aHfdmjkBk3PNzBCQTJgEuedpdzkJdBzc
 gWv8w4cSzN/HJgXo3UJm3CnBhX9EK6DKqftCJ/MGeJBWR+fy/+T10n7Q9S6BAzA1NL+s
 poasY+D/n4q2kqmwKeNoDnm4IY/Rpjr+iwTYxSi2TjMPfQ+0Cb3WqZQw0LEtByhNG3kG
 u4s8aDh1rQEyYLHAWFQY21DsnpHKJwfXXCYt+7Qfr3fMu8sQttCuz1lS5od1dfeBjiKT
 9uYu6/o6Z5lGCoUhkzEfXZJ6AUaaLbjTS4bR2ks4qbV4d2EQpS5OzqcfDahcllBwpfBz
 KcZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EKKyPkgTIrUgJLfJdMi3ez4CUNaFpld4hIHRZMCg8t8=;
 b=AJfR1YDZCcvTJMSCLlFarl8YGg1hsm3jsMewVEaZowspDWmh32Rn66ReXgPwxH+RLj
 NXtVxQHlo6WJ003By9lo7XM+kph0BGTaXysRvTgTVeZeyNPtnT8LWxMHZjs5RyMaJmEl
 y2ae3RQ+mek5pP7ZAwRbaEI+q3h92X5bne49WJ1Z9SDJIJsbjv9pjAOJ2F82eDvi9ZnF
 YJHWuOjcseBLQ7s0hC+vCokslb3/yZddlUVENpdLRBg/fGoSnudcsQA/2nKHve33l7QB
 Bu04lNUaTviWtEvkp0I/rwIbAa4MrvTCAX5CrW7e1++OTMwuiaKclgd5l2UgMAabFBTW
 oSLA==
X-Gm-Message-State: APjAAAWH9byaZUO+4TU4/SZvsNmwJ7qdWvZY6KB6EZaARqwPGtHzbGWR
 6s9T42Pgtef3i9aJFpDFwYMIJw==
X-Google-Smtp-Source: APXvYqxlG+4qGNAX91shhoryUkY0lCP1hEIsDb7QpnfSi0qgJ/p5zP7rjKHMWeQBYegUbtHUwvI/gA==
X-Received: by 2002:a2e:b0d3:: with SMTP id g19mr4343582ljl.135.1574178405466; 
 Tue, 19 Nov 2019 07:46:45 -0800 (PST)
Received: from centauri.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id e14sm10128803ljb.75.2019.11.19.07.46.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 07:46:44 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 4/5] arm64: defconfig: enable CONFIG_QCOM_CPR
Date: Tue, 19 Nov 2019 16:46:19 +0100
Message-Id: <20191119154621.55341-5-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191119154621.55341-1-niklas.cassel@linaro.org>
References: <20191119154621.55341-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_074647_161486_362E4718 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ulf.hansson@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 sboyd@kernel.org, linux-arm-msm@vger.kernel.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, vireshk@kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable CONFIG_QCOM_CPR.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e76b42b25dd6..4385033c0a34 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -438,6 +438,7 @@ CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_PCA953X_IRQ=y
 CONFIG_GPIO_MAX77620=y
 CONFIG_POWER_AVS=y
+CONFIG_QCOM_CPR=y
 CONFIG_ROCKCHIP_IODOMAIN=y
 CONFIG_POWER_RESET_MSM=y
 CONFIG_POWER_RESET_XGENE=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
