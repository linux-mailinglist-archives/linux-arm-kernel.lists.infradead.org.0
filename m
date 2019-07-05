Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA69B60722
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkriNKv8WTvL2i+6iKWtkvno+fwHvcJDLRORT3cnYNY=; b=rsD/WXOTPRadxL
	NkVdeHlg93OTw4YjD9l8aBZ9SQaTDBLUWzrirJdg2fS38M3CwJ7muHTogb9VyUj/jX+liDGPk8T3h
	Cvy6g9/SqaWkkd8DkNpArOIZIz1qR8A5Mke5UMARwJZEdzGACXPxSTaXMtwKgJrynYJXpZcYLAhZY
	gkXvBsV2DdD0lXSeqiiGk7fHNB2bS9uzxQVbY86+I6cmxSqO8mdZrZlNoLhk5tmRbc1Gq88UFti9E
	dJhGoAOyIr+mm/fTzkri+ixIho/IvvWFpeCYqj26el67lVTtuTKehnpBCtM4xb29mg8htFjxclA4l
	Bax9zx00uC/hQijuF85g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOod-0007if-Py; Fri, 05 Jul 2019 14:03:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOg4-0005GF-38
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 13:55:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1cPBfq2GzbVD8exE+fzniVCq/VcWabo7kryXBDUIbjU=; b=tn6UZuoSc6A+9+T8o/0MI/odl2
 yh/rX+5EamPOnzmjBKWZBecuOroGHwLmi7umK3K0m3jOtqXIpw+5YqOX+BQdF4VUszID+7UOFhsjj
 8byr1JeyXnkZ4vSPQnJ6bWeYeMplJAE654EtnEeUXvd4MfSxOl6rdB22Ih9al5snddGVOXtmeIGjr
 dcvxcdHzL5cF1mwwZTdXNTdBPxHzpSqm3hpKxQfNuXYtRUVgNSR6wvjPNI+CqsaYf0p9XeubZ/1qw
 /Tv50gz3fR7KxFvbzHoy9oLPFM9ZsHTr2z97ZLOeKZF3R6lgHBgiIOjcvGYwe1MEygmFY6QJ3sG47
 ijRULtVg==;
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjL1l-0001PY-RV
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 10:03:15 +0000
Received: by mail-lf1-x143.google.com with SMTP id b29so5980076lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 03:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1cPBfq2GzbVD8exE+fzniVCq/VcWabo7kryXBDUIbjU=;
 b=L0gk+ILoleJySpePiJIVgS/nH2x5/kSzqo/ptkeLXnPwSEn5R3XOqVGST4U2EUXzNO
 f5JEO1AdEmbDjoI59TtEMPHBGvqm1gFS/HpPpxRC/5WtzEKu8KhUI0lyIIieufesgEq5
 djLHMyqoyXZkXmj3sensXU6c52BvMzPHUEX0GNi6b4vtVyJIsknoYRXNzSi7arsIPqrE
 vAxYgdcDyVD7YoJA4MQoOdueaeKjQCwYmmnw7paMz6kzUmYAX3LH4gXXd53AzaSs+xzr
 MawTn7r+71wX1fGs7ZKgWbCFrhMiRRRWcIW/F6xLZRQOtaCI+iNQU+9IDQlIP0VQsvTg
 V9pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1cPBfq2GzbVD8exE+fzniVCq/VcWabo7kryXBDUIbjU=;
 b=Ey8GXV1Ov770oTPPYuUxOLreX9bQT7jQNDmiZmOHvvdYe8mWk4iiHvigorghkDBfAm
 GfV9JdtmIl6bQIRc7qVq5wRjvMNDf9yXTh1cNLvAUJlJtlZaKIGyqtHr4LFASMakR0yM
 /7z7tvzfyVnC3qRZV0AAJYciGRHF/bRn72fY36EYDnHq2PRY9112EzEJhXEOxgNTAob/
 TWF+J3Bc/AJguJr+jdm7D96jVR7qpYdZkuqNPTesktsSr65+rsml1JLNOn32NCRYEh8U
 6JLJttOPbPWX0esAajv8fM0TggBwuAW0J7iSnwoy0rYvvlpnfLfkLsNKc8f0w5uiVcJb
 KhWw==
X-Gm-Message-State: APjAAAWDxWzn+UfeACnDRGDLrQRjwR4vDV9JpuwXCT7Yg3lV0hZLup4c
 EMcOj3sbBHz445aFxFmabxBvyQ==
X-Google-Smtp-Source: APXvYqyb9EoNGR9FLxYunMnKJIZZmJEnuWiIilgIzZvMx4xJOe33N5O4vHWCRCtyVhTf7FKKrex+yQ==
X-Received: by 2002:a19:c503:: with SMTP id w3mr1377654lfe.139.1562320747177; 
 Fri, 05 Jul 2019 02:59:07 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-34-119.bbcust.telenor.se.
 [83.226.34.119])
 by smtp.gmail.com with ESMTPSA id 199sm1697601ljf.44.2019.07.05.02.59.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 02:59:06 -0700 (PDT)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 12/13] arm64: defconfig: enable CONFIG_QCOM_CPR
Date: Fri,  5 Jul 2019 11:57:23 +0200
Message-Id: <20190705095726.21433-13-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190705095726.21433-1-niklas.cassel@linaro.org>
References: <20190705095726.21433-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_110313_968553_E4222661 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 sboyd@kernel.org, linux-arm-msm@vger.kernel.org, bjorn.andersson@linaro.org,
 vireshk@kernel.org, Niklas Cassel <niklas.cassel@linaro.org>,
 jorge.ramirez-ortiz@linaro.org, Will Deacon <will@kernel.org>,
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
index bfadf18e71c2..d1e8ad5d3079 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -416,6 +416,7 @@ CONFIG_GPIO_PCA953X_IRQ=y
 CONFIG_GPIO_MAX77620=y
 CONFIG_POWER_AVS=y
 CONFIG_ROCKCHIP_IODOMAIN=y
+CONFIG_QCOM_CPR=y
 CONFIG_POWER_RESET_MSM=y
 CONFIG_POWER_RESET_XGENE=y
 CONFIG_POWER_RESET_SYSCON=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
