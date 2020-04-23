Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA881B5168
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 02:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igYv2df19ldvHYone7GD4OxjYJD1MPBV3T6DmG2jQHc=; b=OQX9LT77tZ54VK
	UOKua3oEM6IvwW7pl5jJO0yadCQCtTu/FPIDPOv5o+VEzWwLmnbVnBa7+xyacwyUHv8ro+/H3G0VY
	G1by2qsxVbIL96I3X8//+97Ex+k6CL47QRXV0RhqbkcXoDLsP2Rd98f2HgMpQF2gmGCzcGmjAz+VO
	QgbeXavCB3FjU78/eLhNE95FJ2mhwUwOimoIEYAj6u+ZGwo7sVoPxgBbn+szqfJhaqy/sAxngk/tq
	Lr0uAqNHT0JtZ1x7YW/YgghjaAyRs6C4r5kUVTz0rArQ87p4ssBHy948vYSlSmr6fZPEwIsZFbc+o
	/iHkZiwPrOKR0FLHjofQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRPtK-0000PL-6l; Thu, 23 Apr 2020 00:38:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRPsb-0008Ld-Ac
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 00:38:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id n24so1626217plp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 17:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mr8P1LPs1Vjaksgvzxuq3twAg9ab3cN0vSb3pRYBwK8=;
 b=cg/TNIrILEIS1kusnDCvuL2dKp0dhvJxkUjtKRVYGfAXnktmVuItclINzic5egdxPi
 qpUcOoItZ00rFBCxVvYNt6ZnlnDryY815JUeGVD+4fSvl2EBJF7E3eS7fa75yo2KGXJ+
 bXvsPF/gDxbCUI9T5Q0/tc4FgNBhbXV+4EeRG/RhHjN9jMWzuSeuQSGv6mw3mWBZHtKF
 ncqUpE+CoslVdFHP7cukhfZUS2RVbEjq8JpXzBFJI3mzQ8o4UX4OGLtTcO/WwIGnPqTV
 tYwnQt4gceY7rIAuvBaOPqis8kgKCIMASqew6c3oKsaCcLyQTFp+eVlxSSIRpmQwxmZS
 hPJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mr8P1LPs1Vjaksgvzxuq3twAg9ab3cN0vSb3pRYBwK8=;
 b=UmPppSnFSXMLPe9P/acnWbKOTa7PAdq0a6+kCUl/2S9FNya0X67G/TeK1QzsCMEhE1
 pj3HEX5GfDO9tRKaF7h8x8s3WVNZLCuLe1rhwLB+QmbeNmKqUDAZw/UWUj+CXi5oICcu
 bx3QaZlZlUfqrhgsha/xOvAJckEqnV0CY9sW5MemP3zMkhAxpq6bQ0X0Ye487oisrnGc
 N3z5DG7NnNAiaiD6DPGvCllIc/xwyy+MPRTqzsqjOnSmonBa8eRLnSar6iclfwsJOyZB
 2eNAYdA4nizlk/QNpT1/vkGiNDs5LrGFFFffcfd3YGTxYKbLWxRBraaytxHxtEQymAmh
 bEJA==
X-Gm-Message-State: AGi0PubrmpSNHBrbQYLLha/i7F/KBuWID4wXzbcFOLDzJ370uTsgCSu9
 GUfxOh7QqvfaFfMQ79s2VEINZA==
X-Google-Smtp-Source: APiQypJkHjUHw/lHehFz0pmGelhKZYWp3m+WQonWrCq6yl5HRJZCQmYMsvTVSLGsxacPZXkFvJGZDg==
X-Received: by 2002:a17:90a:17ed:: with SMTP id
 q100mr1524109pja.80.1587602292780; 
 Wed, 22 Apr 2020 17:38:12 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 6sm432225pgz.0.2020.04.22.17.38.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 17:38:12 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ohad Ben-Cohen <ohad@wizery.com>
Subject: [PATCH 4/4] arm64: defconfig: Remove QCOM_GLINK_SSR
Date: Wed, 22 Apr 2020 17:37:36 -0700
Message-Id: <20200423003736.2027371-5-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_173813_360073_191FD3D1 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Lew <clew@codeaurora.org>,
 Sibi <sibis@codeaurora.org>, Siddharth Gupta <sidgup@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the QCOM_GLINK_SSR option from the arm64 defconfig, as the module
is assimilated by QCOM_GLINK - which is selected by other means.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index f9eefb5940ca..f26a0b6ea0e8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -838,7 +838,6 @@ CONFIG_FSL_MC_DPIO=y
 CONFIG_IMX_SCU_SOC=y
 CONFIG_QCOM_AOSS_QMP=y
 CONFIG_QCOM_GENI_SE=y
-CONFIG_QCOM_GLINK_SSR=m
 CONFIG_QCOM_RMTFS_MEM=m
 CONFIG_QCOM_RPMH=y
 CONFIG_QCOM_RPMHPD=y
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
