Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28D3FDD48
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:18:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QCzcsjtlGjf/QMrp2/ozRH0Ea3EG8H5JP+lUxThxBE=; b=PKt6iFXJo0yFcv
	YizO07w32dGNhlaEXUX2Y84qlXpbeiIucxiGoMw1Awzt/lompHFt5sYml0FHGCiq2UHE8AGwUml1h
	Cod54jVRBmlc2V14ijYEvKDfWoIGXMW/zwyIuGh5GLvhQ68cWyWl2Tt3g2ZRn2irWz3SwuLVPLs5H
	tqtRgc81cxojDxZEV3pvjq8OasaezMXjuTT24amQofBRHajEJsBZf6LQuPINGOX+/2zvxmHjcHGIM
	0ZrlWWXW+1y7g09Hh0erbGevsXRMyJ/HSmGc3ULwZzWnE1hkrz2WEBEzaXJ4dQO/h8JTm5PL5OdJP
	SBB6DygtpNU0zKc7Wv7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVaYZ-0007Yz-0c; Fri, 15 Nov 2019 12:18:31 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVaY8-0007MA-C4
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:18:05 +0000
Received: by mail-lj1-x242.google.com with SMTP id n21so10431151ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 04:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mduOSCKauFb3j3r6hILUAiEYXazQDNKgF2SjQXFQbkI=;
 b=vbiYZOTeqUAVzVDgDlbIZVeaduxvSlDcxM60I4FonIbaAMu8P1XdQ24NQzaBi3asR3
 u3A1xmlhOe/B0S+IlzLwr52sd0EYyMHb2AVYfpo31GnafFeOuR7uad/sLjQJFNhKhtbv
 Yy99j1Uq+jKfq8n509b9D0vOWHyKRHOvqOcC568u+z9SZXIF7s3RgGR8b4H6qljKQeJt
 nDeAamnSSRzVVc9l4sWNHvo7p1A/PNrNMqrYN6AgbAxqAPjKLOa4yhqY0z0bkgFjzz9S
 +NFd54bGysbeoI0hAaRlIwDD02f6Ll6SpMD4PBWcl7TqXUID02nqZ/yOTkVLBsfDbE9A
 UZhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mduOSCKauFb3j3r6hILUAiEYXazQDNKgF2SjQXFQbkI=;
 b=oPztuqD4d1T3mJcurZ1q/lAEiQWlrU5FhhPEHJQV9M+HiI3c2tsoqDxvDKu9VgF85z
 0oWuSaQZoat5BrCrQ8S2BavOLE+L4OblJVIf5y+Jswi1dB0ihMThDgg3t8Kmg2mctuHV
 UlwqBTobTBzCLVbVOVFKmPmkpjvKfaLGcT9ewCSYXjDZ+Xa/zwofGy5malTy6Vh9Pdcx
 ACJUKtSiHhG5X/nHeX8rMbaRrDkyRGbMglv4vDoAdqX04zY52FGOt7syibbR31LW8uNu
 qfqO7K8mN1dsBSsu7gbiWabVyMgOUMbTSZO4Szivz9FsIn+ZCXBOLWRMdjYksbRPQtii
 33SA==
X-Gm-Message-State: APjAAAUPVyI9iDuw+O2boLdyZvpprboePsCzBJMWlXYHT/ovUP9+RyQx
 d9U+BarddjPrkGQU08vLU67KaA==
X-Google-Smtp-Source: APXvYqxbUCkeTtglgl2HCSMgv4Zcw5rQ0kPuIS3uqC18GHonYnsqTN47gEHHRwZaQT7gbr1LIyHSPw==
X-Received: by 2002:a2e:97d3:: with SMTP id m19mr8405280ljj.56.1573820282063; 
 Fri, 15 Nov 2019 04:18:02 -0800 (PST)
Received: from centauri.lan (ua-84-217-220-205.bbcust.telenor.se.
 [84.217.220.205])
 by smtp.gmail.com with ESMTPSA id c16sm331070lfp.93.2019.11.15.04.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 04:18:01 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 5/5] arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM
Date: Fri, 15 Nov 2019 13:15:42 +0100
Message-Id: <20191115121544.2339036-6-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191115121544.2339036-1-niklas.cassel@linaro.org>
References: <20191115121544.2339036-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_041804_453483_335B4FAD 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
