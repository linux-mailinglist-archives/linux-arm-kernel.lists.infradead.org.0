Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CAE10DB3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 22:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgN4LEr5tadd22thd7RFVQVlBweRFYfOX73/lKSf3y4=; b=JUWtHvGILL0GXo
	AIieJFXbrbtU9u8TiHQsvPu7H1yi7y3g4jKkcmeipCwV2JuZWsgNCyKfmD/5Dol09Ak/Qq0kK84Ig
	nZcFfCVQKwG2Trw/Qv4Qnw07/zLbOQy/RuwCTLfUJ3zTQC9XsGwNe6CzhxX0u7grH5VtindX6Czlk
	q3kjuaYg2JTeSZrPRfznLD/t5l8nE41YelhLzUEo6f+B4nksmcCoeIo8Od/LxpoK85drjQ1OGI0dG
	Xc6gY8kYKL6UR0bq6gLWb5wFwr8ybVyxS8JvacN+WPXFRgK/6308KJPqTTXCemqHO0Y316ajCx8VH
	njrOqTgrxLB+S0AMUUEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ianzw-0000o6-Q4; Fri, 29 Nov 2019 21:40:20 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ianzO-0008Nd-Vl
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 21:39:48 +0000
Received: by mail-lf1-x142.google.com with SMTP id q6so542632lfb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 13:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P7+c1+/bAwglAnZeDLT/AzXmg5yCseUiMi1ICe2LvSE=;
 b=EzH2qPmCHNHcb1auzi3Ei2y+G1OXB1OrTfx+sjj78yReiH7lHbrViQH4E2FvJIsWG/
 AkF9Yr9H8uxC2pUaGuz+hZSVNTf677rUiBQqMVNOEjBSS3r+VeOHVRwZ0Js9oWG28AZ9
 5Sbfky7KacyC9lADKEw4iparWLA+2plZ6VxHZc5DBpMKM6X/RzV4QeY+KQnD8QMXTN1P
 4M+un0eT+YVHCI4MxEBnlMh5eKIgbAWVJbgJOaBDi0wpzMJFSPjx67ni3yuNyfzOmcij
 f+cjghCZ7sNG5oc5Z0rpOMOY72FiQdQbum3VyPETOhVS5E2ABk39JjogrTKqqKxziFrp
 7OZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P7+c1+/bAwglAnZeDLT/AzXmg5yCseUiMi1ICe2LvSE=;
 b=aJjkt1RPstI1QRKcrgE2XRMdns/Z3YDWu95gU8R/fR2PLNhwE87L1v1rVON4gPJTny
 FUhzdzkZItn9p0WU1Ev/ERw0jg6NOLhODUdsxXeFfc1LePy1xWPi6oDU3cUC4d7cS9WI
 hPXkXDSh4Ahi0/vP4rnQ6LvlRjwQyVm1FcYPZ59mlNq0ACXl7gLxD4z7VbDRlwfeUDYY
 vwPJ6N3kqGLUi0/0ihlcz+EfFMz5ET4K1GtbFCUN2MFU35ToaQ9/8l1LCb2X/MCfNhYV
 d/B4FI8tW9oaewiAoNJbehzoPTSz9aYYQcoq+t1/UdkG7N7nhvsQ4NtuUnv4/OdDtDB6
 5z3A==
X-Gm-Message-State: APjAAAVy25+ZED6Yi4EHwcxjIb8Q7aRG7CbQe2hmu48wkB/EqeY3BVcP
 hSI5QjeCEDsMrUUmWNAcPCXnJTQ0rAzveQ==
X-Google-Smtp-Source: APXvYqzmK1qfUWNO5+GqLc/J91X2071nazdIN1DT9krqNIkK4AEPNYvVcnX1v7Q8I1+d4adHRrcEnw==
X-Received: by 2002:ac2:53a8:: with SMTP id j8mr6064945lfh.163.1575063584334; 
 Fri, 29 Nov 2019 13:39:44 -0800 (PST)
Received: from centauri.lan (ua-84-217-220-205.bbcust.telenor.se.
 [84.217.220.205])
 by smtp.gmail.com with ESMTPSA id p4sm10817755lji.107.2019.11.29.13.39.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 13:39:43 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 5/5] arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM
Date: Fri, 29 Nov 2019 22:39:15 +0100
Message-Id: <20191129213917.1301110-6-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191129213917.1301110-1-niklas.cassel@linaro.org>
References: <20191129213917.1301110-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_133947_045275_2D49A843 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ulf.hansson@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 sboyd@kernel.org, linux-arm-msm@vger.kernel.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, vireshk@kernel.org,
 Niklas Cassel <niklas.cassel@linaro.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
---
Changes since v6:
-Picked up Bjorn's and Ulf's Reviewed-by.

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4385033c0a34..09aaffd473a0 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -88,6 +88,7 @@ CONFIG_ACPI_CPPC_CPUFREQ=m
 CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
 CONFIG_ARM_SCPI_CPUFREQ=y
 CONFIG_ARM_IMX_CPUFREQ_DT=m
+CONFIG_ARM_QCOM_CPUFREQ_NVMEM=y
 CONFIG_ARM_QCOM_CPUFREQ_HW=y
 CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
 CONFIG_ARM_TEGRA186_CPUFREQ=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
