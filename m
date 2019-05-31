Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDAC30780
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIzdDJJ7yQ+7AHKZLSYsrbhHKWLEFlE0FPKwicUhL7Q=; b=uErG86wKT1pQNY
	leq+cyCAIlMDN1WuDrmm+1xOIdWBAuYL1wqEY4R9Ddtto4UshKN13Sjqgb19erwm7hDa8rcfE8zSA
	V2UzaYG3akl1ygbPs1ToBFqy8+MQbui+Xxb5+1P4rCSQqGgPRt91eMbrSZUZAVl6cotvDaYrSJLvt
	XmGY3UPX9H6h8wgI12cf7+ZJGZd3RPEQRskspLadhwCPRuMBeHZg+iBtX9zQNZKoi0zMhHfnh4ppd
	InWrckxxgzlqGuwWp4s3Lioo/X/EJmMJPWC6wubHfmpebT+/TaO4ROfYYvIJ/cuzrQOgtveeLyVY3
	PcvhHfai+wxNL6nAPjlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYhJ-0008SB-66; Fri, 31 May 2019 03:59:17 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYcU-0002u5-NH
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:54:38 +0000
Received: by mail-it1-x143.google.com with SMTP id m141so13576793ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0MRFaUSMAfw/XRQQZHzE3aa0KzqIA2a6f7/ADiTDy48=;
 b=uwklmqHcoHhu1WLCfPLSWItOjPdTvghEYLBU6xALfWtsnd113VuUy3W4OCt7Gf7QPo
 41T0Kb96J3ZSXspViH4KCr3Z1SxedNQJeBOUBfoI6mWPpGqYqYDdnTOvkIRtYFl7he/C
 tuHhPYcxS4Bk+X35n/t9s33SCJGdhQWJcvM0GMVAvgKp0JhTyaf6a7pcaeMTEIKcmgXZ
 3tE7+sKkPwBES53s3TxVG2diUKbi6dwVeJNQMPdqSZXPSI3AAgq14TRNOQlsumqidDGX
 FlY+vsFjKBKkr8fzT6M0XgLfkjQO6tSythQDO4ptBHatoj3PqdEFPTk4RzUy6/qfC7sW
 yRBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0MRFaUSMAfw/XRQQZHzE3aa0KzqIA2a6f7/ADiTDy48=;
 b=s3eKd5wx30/v2dwDleLac9pgd4rhyuQT7+XdH8letyvvaPJP6T2VDUqKZXYg8GuUFh
 fx7JTB6pNRWOTMk8rVUYnMK0YKhJGW4OoQHOGjV8a2GoLqFTmKViFEE8ugdJPHrKz01F
 7vIgxIsFSRQJzB/d/AbX4uU/CCRoydTFNGS3q4gRSDJneSPA75IB44nvXT2cT+xPkGKP
 Pkprx2vc8dFVStWiKUV9IjJ6VSkLkTi8dBaTSTr9B97L4ph9Y7RaDkGqJQ72oCINOMhH
 8nXwDev7LwHZeNiWSssRelBzCR4qbwChMiGlacPWXnyfVgAjwfmbhc2D1L5+JwLgYIgr
 2lfA==
X-Gm-Message-State: APjAAAWscnoDYFXiNf/cdjXvQ8sQwYjHwAC6oC/jhd5J963pGM/l+j/S
 8jvHNxAvHLa96Mtm5E2HxlHWSw==
X-Google-Smtp-Source: APXvYqzAp7WqDtF2svw6m32RESqRJSWfwXgOZsWCJl/PO7gAfHjI0bpJKwO94bXVpo532sRxJONkgg==
X-Received: by 2002:a24:6583:: with SMTP id u125mr5701155itb.168.1559274858043; 
 Thu, 30 May 2019 20:54:18 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.54.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:54:17 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
Subject: [PATCH v2 17/17] arm64: defconfig: enable build of IPA code
Date: Thu, 30 May 2019 22:53:48 -0500
Message-Id: <20190531035348.7194-18-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_205418_812964_81E01A6A 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add CONFIG_IPA to the 64-bit Arm defconfig.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d583514258c..6ed86cb6b597 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -261,6 +261,7 @@ CONFIG_SMSC911X=y
 CONFIG_SNI_AVE=y
 CONFIG_SNI_NETSEC=y
 CONFIG_STMMAC_ETH=m
+CONFIG_IPA=m
 CONFIG_MDIO_BUS_MUX_MMIOREG=y
 CONFIG_AT803X_PHY=m
 CONFIG_MARVELL_PHY=m
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
