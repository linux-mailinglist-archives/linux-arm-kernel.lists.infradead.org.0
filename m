Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85ECA55531
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRHonpErEgbyuXY7kxgWkD4YMCurANioL+N0hqWvE0M=; b=d0N/BnsXMfOu/Q
	6Q76evgWRGgbfyxBtt3DbY3+9/Epm4fyhD0q8S3IodymZHHC3Z/WrwkDohVWl6TwZMZekvT8qTMAG
	mHdPI/NUKbLiLN7sCE72ubaoxB3+FJC288K2qi10HKfyBkPT1w3fAs2nek1kTFmPMwBha93oD2JsP
	sel1IeCpLc+75/0xFB73KXdcYOxc01s5rY+gHfxUkmgDtsmcMtLQJVy3s36+KBI6gkbtrXZ7qXc8M
	taLwyZ+YAmVJBCdDMWkm/y2YLHcBe6bB2/Eynvl6mj3cO7dfZPFdTchlt6wqk2ZzUkfHHey3r2U/U
	pt1YVd/SPKhns9w9DbBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfohK-0007n4-LU; Tue, 25 Jun 2019 16:53:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoby-0002RZ-Sn
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:48:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id f9so18640132wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pcbl8ChfwpCVGld5/sK0LNsZGkcTLX971dUfy4ZOQ3A=;
 b=MhhfRXFC/O4fApCrRU+UEPBMIO4zXJaa+B3xH3DSICHRtsJb3L5oZfoEIPsOkVsPoB
 r5xeKRk3PBP/nAjnpFIKYZ4RpM11XPXdNXIf6XXaWscJ4rE9gEWZwUzYhsESRsplQNvL
 lzwoNk1MMiEJocRE9guRM0JPjihHU8FVkKvGrTH7aPQ0RxNJd3iDAa7DcUb1/WgZpmA1
 NYW5UijBJGQR5XznxvPx/5GS2BTRwQXUrGY/7FOkwIV31Ew1ryaufTkxuLQzrSo8ALB5
 QJFGVqkjBEP+DSe/fAD8rRt/+yqqqwZz/F8BJTTjor8sBtWRpfgtdvxeSSKuuuetzAqF
 55xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pcbl8ChfwpCVGld5/sK0LNsZGkcTLX971dUfy4ZOQ3A=;
 b=s+tlDXsbQsdpeRGcj2Yn/W2s/ldEU9sczdfEgxA2OuBw44UjmCS+AEbsVNMw59Udzm
 i61tAxrfysGQ0/8FZku04iWbhc0+AoVK9pfCLE1F74jd6Msi+w3y140GscKjj0ZSf4/B
 1d7LiYWvolpRV1om31R+lCVrp+cTezkSCO6XCwA//YqIu6KlwF72tsYqBooEu9PcQa3G
 DAdJPEP3C2NJ9/hHfrxAn5rDoQlUgUK8bPeR9wVpqqujcCim2CZzwyk5hb9GYV7niE3F
 I2g9u9SgjlcyjTpRwRen/Lf2LFaSYf8tYnI6+MdeR7QsPz0P2jLPsAVfsBTyZxU+yX9h
 C51w==
X-Gm-Message-State: APjAAAUuDEFFje32iQGnQV4mxnLIbJ1B947lmtFdqzfFL91lh68NuIOS
 EgXAl4i+PlaJCGJKYISCbz2fxw==
X-Google-Smtp-Source: APXvYqzk/SlZFnVg1i5AlDDcb2Y/Ye+X1ZjtLvnMkVoWgF38mO8kaeTHl7o94EwdajPxHKthmfprrg==
X-Received: by 2002:a5d:554b:: with SMTP id g11mr5872000wrw.10.1561481281384; 
 Tue, 25 Jun 2019 09:48:01 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:48:00 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 14/14] arm64: defconfig: Enable HFPLL
Date: Tue, 25 Jun 2019 18:47:33 +0200
Message-Id: <20190625164733.11091-15-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094803_221371_D07D1C3A 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index fbbc065415d4..7cc4ad24dfe5 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -671,6 +671,7 @@ CONFIG_MSM_MMCC_8996=y
 CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
 CONFIG_SDM_GCC_845=y
+CONFIG_QCOM_HFPLL=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_ARM_MHU=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
