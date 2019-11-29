Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEAD10DB3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 22:40:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15kDjsgYoeHVM9oH0/emo+Btk7sFO7cXGB65kDpQQxs=; b=Vo0tGvG0oLy7bI
	cXwh5WVxUSV34k7GPk4YYtF1n3INDglwzshgZ+nD0WlICNNCP6Yia04qWdNn2wokVQc8NbFWAexhd
	ek8j+3hrufPpBRe1RuTbSMUxYhvNg3RlSAJxzTJUXs8hHuyNOTDXAEeaM40tqt6wALVfmESSnL4ee
	nWYUSOhmR1j7K6fedjaq1WmwIgC2N4GUCJkufCTbj/vqXx/iTlrdQ+CilWVRA3wOEBqIk4CTFs/Y+
	eJD7GbkgWp3faW86xxqbpmtdgfqD9Lko2Rp1//uQLsUg8jkD0tb9ppiHCHP3VbUyFuei8FibQgZwb
	pwWDpN11p2lbz7eG20fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ianzh-0008Qg-Sp; Fri, 29 Nov 2019 21:40:06 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ianzN-0008Mp-4e
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 21:39:46 +0000
Received: by mail-lf1-x141.google.com with SMTP id l14so23543510lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 13:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0VIY072ZJlZj4z1mcJleK9agtZhmef7Eqj9dCGXoaPE=;
 b=kJAnMVeuP8snQfAobCu21qO8VB0dZHBZDPwF5pdzuZliCBWBT+7/r1Tw/t58TzPqwM
 1aa98YIogWyt2+iNcVZbXaWIIupi/Pmt+Xr0fC62sXUhkXmgmY+8c4ZreiPAW/TeXWoG
 8IzwcuIIpzDlF/3ad4TGLYYP9iY76EKv+fWvPb16UmLjI49qPVaj9BXZd+wPztIYrL90
 JYW25jtOhjy2gqXw15XYCrFv3FauXiP4hNh56HgVC7t6lAg5+2z+TNM9t9KETuSBITjy
 GHDWYit7hXxO/dGQLTO+bLl3M74QFXmppNBsE7bYL12YBUtwu7jiHCpAs3Yumc6G/IlA
 fXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0VIY072ZJlZj4z1mcJleK9agtZhmef7Eqj9dCGXoaPE=;
 b=nperfagVxRfLIkUrIooc4O/KrIBBLVO4d/SNwJxrY5LllZS51c6Q3dGbPzrYudEqzm
 GfDEm3i7IY/A8Pp2q1KAS2rAlFlZxwswGA+NRsBkX/g2+HbMI9mZJDJ3/gviOm2fvl1n
 yloFHJAmAZBc/t+8sOlrBtiSqnAbCRcuU9HAcYeVKYKlIIPZrLS4740Sa9oolh0iw6Zc
 PY1xSqoqhFsdEH4hXmBpPuHJf2YX2fTPrFXlEqgFGep7uelpEotMzzsG/bGkw5s55nEw
 2f/Ahy/aajv6aqh+wzz/+A/FLpK9V7qxXrah1MKzdXXtba67NFOJskakJZshtDogot6r
 EySw==
X-Gm-Message-State: APjAAAUnZUjZDos9jCSh/Dxap1O1OgRdSS7/mCZbBrckXW7w4tS8/GWX
 EbDbu1DuJTj9415qUVbK9Hplj9Az67Wszg==
X-Google-Smtp-Source: APXvYqyPFOJP3LbNcrnULpaVcK05GoYjbZkn25HyDBR+a/U/LXJclR53qLuaVJaE8rGEZpxPtw3NvQ==
X-Received: by 2002:a19:ed0f:: with SMTP id y15mr36683832lfy.3.1575063582905; 
 Fri, 29 Nov 2019 13:39:42 -0800 (PST)
Received: from centauri.lan (ua-84-217-220-205.bbcust.telenor.se.
 [84.217.220.205])
 by smtp.gmail.com with ESMTPSA id p4sm10817755lji.107.2019.11.29.13.39.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 13:39:42 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 4/5] arm64: defconfig: enable CONFIG_QCOM_CPR
Date: Fri, 29 Nov 2019 22:39:14 +0100
Message-Id: <20191129213917.1301110-5-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191129213917.1301110-1-niklas.cassel@linaro.org>
References: <20191129213917.1301110-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_133945_193617_E263EB3B 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

Enable CONFIG_QCOM_CPR.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
---
Changes since v6:
-Picked up Bjorn's and Ulf's Reviewed-by.

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
