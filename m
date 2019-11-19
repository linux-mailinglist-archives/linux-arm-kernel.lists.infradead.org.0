Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBC210288E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 16:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QCzcsjtlGjf/QMrp2/ozRH0Ea3EG8H5JP+lUxThxBE=; b=T60RaTE4KdIuNu
	NFiH0wFV50LzsHeDP8g1FcDQz1DVPhPUbDLExad41AT3AnDaF0zo9NMg+9bGzW3f7tXAmQ5Sfv/Zh
	rAijzRamNYj9gBt3/wexIyex3j9v9UfyP+2oUCEd98fphYznW13KIoZJWJzZcArrj1i1iyRjKz8q8
	isfQlNU3MUCCCee/MUnmsPt/gODKKwlDcg9Z7kfIgHAkNvonEspmLntxRtGo4AnYtlbILy8h/Yn7w
	XnoBP0FqiiNIYvBoE6ml8XX8wtoe2WxuqMVINOi7Ew8vk4xsR5B/IHgKd8NEuhw+pOwWkohg+XLqf
	xrh3sq/bnZtC/gjkuK9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5ip-0007SD-0n; Tue, 19 Nov 2019 15:47:19 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5iK-0007Bo-Im
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 15:46:49 +0000
Received: by mail-lf1-x142.google.com with SMTP id 203so1564764lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 07:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mduOSCKauFb3j3r6hILUAiEYXazQDNKgF2SjQXFQbkI=;
 b=oScf9xUteMXLAaLWoQ9x7ikhUGemCzDuLtClzRtrvXBEdZGSuhXeNXEEdc7fM0cPZZ
 4EDzkAg1qWI22+1VoUASkJ+ROGdGPVCpN4BoYYRsCqJsN1Y9bXI2+dKM1O20J3P8j1Bq
 30GIhWMcWSrZST5tojyirpAFUaSdQuCX1JLuODW2s6UFkzU3yYaclLSC13nSNFVzOwLD
 DASJvz9uCmPLIbatmly0lQPMHleMB/YeB3OLoobHf5Frz4nc/w+vvmiydL6sp8bizT9U
 0YPAno8EssdUUfIu9+W0qmu4dwc73hHvxx5YX5H0SUH6Fj1ixhctz/jZeuDo3znjjnIl
 EG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mduOSCKauFb3j3r6hILUAiEYXazQDNKgF2SjQXFQbkI=;
 b=KKUzRVDPXExKnR/IP4rNig8OVwDJ1kDWZdiIqiVTVdcRryZnJdFXssSPCPh+zBtehP
 mI995JWlsNKyc2gLrWghzRGdISmuyTL0qvvvLCUUM49Gq7ea0OkP6BFqHmcuZqErlMw6
 5qynjCOlO87pT4NdfoTMGlSdmKHl8Ijp8d5OpfprY150l6TTd/R+5bNW7YpIdpTp9Qen
 wwL6zWnc5hUlI/TdtIxG4cR7Z7wxvEY/WhB5LF5qiG5OZpGalnakxRjXHQNwnhEIHVBs
 CCOt+yfd2S+lw6S1DHZG9gn8ipbBXgo4KE8zb5DqAnty+hnWN+bTY1WJR2u6p54SNyfY
 6rgg==
X-Gm-Message-State: APjAAAViiMD4duk+lTfDKi6CYcvueP8Lp88Vioy65LIk0xbcTfeshTTK
 DmDPOgTwlZYHrdW9pStHrMp0pg==
X-Google-Smtp-Source: APXvYqzaxxG5ZqNc8iYg/clzpbHW2UpP3WOKI6lRquEhvqf/7jQ8UnBV+TmnjBteY/kPGirgoc7JKg==
X-Received: by 2002:ac2:434f:: with SMTP id o15mr4442152lfl.190.1574178406942; 
 Tue, 19 Nov 2019 07:46:46 -0800 (PST)
Received: from centauri.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id e14sm10128803ljb.75.2019.11.19.07.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 07:46:46 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 5/5] arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM
Date: Tue, 19 Nov 2019 16:46:20 +0100
Message-Id: <20191119154621.55341-6-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191119154621.55341-1-niklas.cassel@linaro.org>
References: <20191119154621.55341-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_074648_623219_2512C68D 
X-CRM114-Status: UNSURE (   9.74  )
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

Enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
---
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
