Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CAFFDD44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:18:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HMHYx8EmMlg/FXi1kNo7uSouGnmVFQJGVMdpc+E3wfA=; b=ihvfpyYE77wqz7
	FLKY3scIGOt5qRADPv/Kt6NbC7Riu0wuWDcJH6hjhmy+7FLPg2xNiGytiWecY94bAPFGTwCu5OsKQ
	hRiTjCHHUKJsq0icBo4/pB45yGUCT5aPKUCLGZ7xXj7O1+c8KFfBgsi9spABk4wENfqM7n5X/wheO
	L86CsE0Nv9dYg86AK6n+8AA/hDJwl/jVK+43EKpFxfZacZbZk44UP8azfr9vSb/c6ve9WUHIv9dCF
	zat7/uJZqWzlF+Qd+uheP8GfIep+YbFyV2HZ8qEKwTuQk13eaIE/HNKxGq8ZYRlsA5S6UyvvjQyMn
	5/JcoD6aK3PmTu87SAxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVaYL-0007ND-Fe; Fri, 15 Nov 2019 12:18:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVaY8-0007M9-7z
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:18:05 +0000
Received: by mail-lj1-x244.google.com with SMTP id y23so10441599ljh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 04:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EKKyPkgTIrUgJLfJdMi3ez4CUNaFpld4hIHRZMCg8t8=;
 b=vy1vJB4N1Afx8NhpJeEBnSR0cw/HleAoP92rEem7iYYrvxLZnzNIXlWVL5HWZV2Unq
 VN0Oh0tPfXotXABobmT2vd2sB6RRYvHlGRi4PJBCLt8aEYiF644ZRUwGpdiRjN+bRx1R
 xXYvYVsusGIMVYU1E53jvUhQg8Ulsuuzle+kgSYZ2GGofnQZYE4tlVffFUrAhG+YslzW
 mt+IF3G8GGbVGJpJWrimUxPKQ9ZhqlwfJsaySAQSz9p45HEmf0Qi17HYAr18XZWDAIG/
 AD1iM7XZ4RGsomT8OKw3stAH7P71rqqufUvrkSjGzD4Z+TzolbGjwgmn0DB0iygicw6H
 G2hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EKKyPkgTIrUgJLfJdMi3ez4CUNaFpld4hIHRZMCg8t8=;
 b=Xu8yYhWOPoxl4R6Ljn9FlBJN6lvK55qrUfGhv/gePKXr7sO7jfJXIY7kqJp7E+fHwf
 PogoEryRqQCPNi8CeRDZXS2A2dTRqoMGFBFUmZxpanBFmu2EGYMyd/TlieeCkoQJhnMC
 YfYZehZB24HV97vQxFawtdOgI4UvMjfxeW0F7/Mcj0sfZ2sueuBy2Gls1kxNDuE9kwo4
 B2WdBivKB0eaO+RcqbNr9D6eTvBe1Ky5IRgdMLuWCGpzFosi5S7EH1ulkd7F1F0gt4//
 7rNhrKcUwg9aqxZ7/QcY3BFmYc4CuBYw+876iCy7g79DdVG5ozJFLsb9l1MIshmeW6yr
 zWXA==
X-Gm-Message-State: APjAAAUu/F0QWmtwxV7ng26QhUbj9NtkDAF0x0Vjs1fvCSbCaED97MGH
 6NjcwcyiWWC2FbHMLs64cu9jQw==
X-Google-Smtp-Source: APXvYqyc7/njB2TOHQ/xxoQ3GlfB7ZlZuoZFAdFYf7PUCmHsOp/ClIPMEE+HE5YoWIok2S22oIMusQ==
X-Received: by 2002:a05:651c:20f:: with SMTP id
 y15mr4870369ljn.31.1573820280621; 
 Fri, 15 Nov 2019 04:18:00 -0800 (PST)
Received: from centauri.lan (ua-84-217-220-205.bbcust.telenor.se.
 [84.217.220.205])
 by smtp.gmail.com with ESMTPSA id c16sm331070lfp.93.2019.11.15.04.17.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 04:17:59 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/5] arm64: defconfig: enable CONFIG_QCOM_CPR
Date: Fri, 15 Nov 2019 13:15:41 +0100
Message-Id: <20191115121544.2339036-5-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191115121544.2339036-1-niklas.cassel@linaro.org>
References: <20191115121544.2339036-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_041804_284917_664FFE3F 
X-CRM114-Status: UNSURE (   9.34  )
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
