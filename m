Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B195A7CEA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXIvzZsnaR+IODpOQJL6humla6cbvToWfd6Jf9SqJzQ=; b=DM1ydFv1otNDoL
	q0OEhumDPs234M7Lk4cow5efg9dR6EWVDbPycMUkG9uUlx31sXoNBF2iWK1ZmQiEtsrptcbiahT92
	gth2Fjil36U+GYcM70ppf47DnoSMlYRDw4nJtlyGVkA+udwzkk69EoDc++oJygp1ameKqj0XvU4bO
	r0NtC4fX6hxnoNwTyMGl2EIQk4u9yscRM9eJZXpiVyCcaXlJO6rTOYGbPnzZyJtAYw+f6F6zHyeoN
	ReTjUgLj/wq0OzanVldKcqsu7ijpIIcgoUwjlxhm2jSHOh3W5D7OiFw4qiQnWKQjVx2X19+0PI0Fe
	3mPcswduxvzKtT7Rf+uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvGj-0007A5-AC; Wed, 31 Jul 2019 20:32:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEV-0003Eg-NR
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:30:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id f17so60979979wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yjwyF8h24+6MkrK2XCkddWq6ewDMefY3p/JkUhfcGxo=;
 b=qzcz7Cl6t4xg8YUv9zpXFmqkJhMi78y34+n3ItM5RM3vnuvyjB8v36KL6skLRPl1ST
 s06JvtshN15JWJg4/St3iS9Z0/Rg0NPCEszd7U+ijuu30Hu/8+Z6yXLfLnhCIvqnF3Oi
 JSgta8K8mMlRlPHlkBqTlIccnqXCMp2penXjc+q2Nb2fHmNWPiTgTtkuozyLQEfIq6Oa
 FOdJcwQzal3USJs9/3CYN6CHs3JYnb2TvvjR6iII4E2HD5EXpwqMHBkcZAr9QVEj76fa
 YWJ9VY7e8YpVSpVpAejGPGkBtSCZ7ZQOGC+voq0I+kw+vMMTzPvd2JX2c1LumyOWOsGf
 T5HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yjwyF8h24+6MkrK2XCkddWq6ewDMefY3p/JkUhfcGxo=;
 b=cGJdZW2PTmcIgO3ayIIXs7bGglVCyOjLkVMmp98lIFVhbriiAawOA0yvnkX0jvJZ7e
 a5CyoTlrNR4IqkGTKLQP7vuHtMQjmMGsmf+oU2Rwkcgr+L9y9QAkFXUxaEuK8s9tUsLP
 iiV+GY0Uz/BZCbhnOW2sf9hMF8+jMcfRRidRFZe/16ARQY8bgdKsM5OJFBYCXwInEMpP
 ZLizCA61hqfG5O+WzUoP1n0dQWBsHn9FI12sLP2aqzz/pZDhnv3Zdb4uGpix7GRjAi0C
 M8uevZVYetwkDCHpDDIek7mLD6KO+HI8guSq+nKmEwb4W641i+VkyYGywA+eHaYv5sIf
 cnWw==
X-Gm-Message-State: APjAAAX+ks/sJYbw6DWXx1EAAeksS8y0ekXMZFOG/+bEeqZ7jteTHYII
 3eCri5SCJhnmzb3LCsuc5dYo5A==
X-Google-Smtp-Source: APXvYqwTYu0Ia5Oacgfvy6EXO0KAmKGEQZx1LX6+bJ4LHOQNL65LwwWoyMz5BQ/0ICXimEC4Sbzm9A==
X-Received: by 2002:a05:600c:da:: with SMTP id
 u26mr108777580wmm.108.1564604998460; 
 Wed, 31 Jul 2019 13:29:58 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:58 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 13/13] arm64: defconfig: Enable HFPLL
Date: Wed, 31 Jul 2019 22:29:29 +0200
Message-Id: <20190731202929.16443-14-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132959_947756_BE91211C 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The high frequency pll is required on compatible Qualcomm SoCs to
support the CPU frequency scaling feature.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 34c3ac4e4b79..04b7fb26a942 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -698,6 +698,7 @@ CONFIG_MSM_MMCC_8996=y
 CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
 CONFIG_SDM_GCC_845=y
+CONFIG_QCOM_HFPLL=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_ARM_MHU=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
