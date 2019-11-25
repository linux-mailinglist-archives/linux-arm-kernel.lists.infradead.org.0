Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30147108FE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 15:25:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6ixPmk4IGBofhzTQ3kEw9OPsCc8iOHP5FdfdJn65JQ=; b=UHUji7Yg2eGdAX
	D1KTjIYDjEtdRJ3SMirz8ILk34D4guSkbSTtA31SeGodEcdJ4pWNWP7UdV9Kd1qbvQPclf1JrGVOk
	QUatoJREyjsEO+A2jZjToPC0+JZDanFmJBbzsOal8vmS6hx9Zo6+S+1P2r9/tPq8XXbmH+c8HPPwq
	SfRYS2Aq1bwv0U2gkvY3iTaHyC9WTDT1KCW2ovYj87dyGMO+QjRuiv/Iov7673wioBBRpLAVSqFFI
	lHd6F04spS3yuGHQCSWxKwr+xw9MSPpgmpB6I+npOcISR+DOmsNPGDjY8WqFPG6Gyq6MKsSSPFUDW
	XVU64C2wIkXUPTVccXag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFJB-0007yK-S4; Mon, 25 Nov 2019 14:25:45 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFJ3-0007xO-2w
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 14:25:38 +0000
Received: by mail-lf1-x144.google.com with SMTP id q28so11179457lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 06:25:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lk8SRgnsKjAXBRx1hwjdc4Ni4aIadkTu9BDcS7y9BzI=;
 b=zchG2SUm1v9d74lK7/a2Ov/76astU1osx0T1E+xZK0+7tbypt2wEIrGbCIGTV3fYLl
 Qrr/vm3uT1sQaljCinz5Mgcpia9mxh+xjWu1/o1DaUbLJPz2lsjywcvEzeV9OOcHFFXw
 wwb43RuNNbilDJHZe1txdK+kp9I789BbjlWlIoc5O2kjNcXsCNmVIEjI2pTkl2Zgr16S
 9wFS6rTOIN4Gq8aNErHoCVr8SiXT5GzeZqhbdGAx4PJBZVRLKf4k0ueXsbhHHwtAvpJW
 iSEd9iur/qi7eAw07BQkKObFUYbW5j3hSr4gmF2pWAMnAGDNw/8lUlzSCrMNKGQUFBUX
 +teQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lk8SRgnsKjAXBRx1hwjdc4Ni4aIadkTu9BDcS7y9BzI=;
 b=Z+dj0W9CzMnimhzOouckzf/c8cMaXmDutERVplMD4fDkbTF+aGeZYRNOuM69+bHN4r
 P8/UbH01GDEmYS2I6Ja9MbcwauBxNRjedbDApTYIRBXRh3w9nC4SZhJLYZMfw1Dkv0BK
 roR2RPMllUZii5XOf/5Z1mn7ejcvWQSjkRI+QgvpJaVpllhMGfg1w+dvpJ5I3uSy2LFu
 PNowGTOqJcgLMQl5h6jP+gk5I7FyahyhAebrg7JNDPEAOfrL07mbCfuyz4B5BQJDzQDQ
 H0yUfSyyD1YImLkXZXXCqVkm9cRbCCU8WPyQ164wo7r8HQGgybNitvSh/45p6LPBEZbT
 E0FQ==
X-Gm-Message-State: APjAAAVOE6hUYJLykjHXqzVymytbgYuhcU24vxt18uAwqAWApjyJKC67
 RUzf4FAKW2ma3q/ies7zL4pHGA==
X-Google-Smtp-Source: APXvYqyE+jBtA6fW2pog7AMXr9bL2gLyOpR90A0sgyb4hzg762aBGAjB5B+6dLqfNRt+VohCnld2CQ==
X-Received: by 2002:a19:751a:: with SMTP id y26mr21685422lfe.78.1574691935705; 
 Mon, 25 Nov 2019 06:25:35 -0800 (PST)
Received: from centauri.lan (ua-84-217-220-205.bbcust.telenor.se.
 [84.217.220.205])
 by smtp.gmail.com with ESMTPSA id 15sm4016640ljq.62.2019.11.25.06.25.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 06:25:35 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/5] arm64: defconfig: Enable HFPLL
Date: Mon, 25 Nov 2019 15:25:10 +0100
Message-Id: <20191125142511.681149-6-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125142511.681149-1-niklas.cassel@linaro.org>
References: <20191125142511.681149-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_062537_125437_73FC1A76 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>

The high frequency pll is required on compatible Qualcomm SoCs to
support the CPU frequency scaling feature.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
Changes since v1:
-None

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7fa92defb964..e76b42b25dd6 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -727,6 +727,7 @@ CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
 CONFIG_SDM_GCC_845=y
 CONFIG_SM_GCC_8150=y
+CONFIG_QCOM_HFPLL=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_ARM_MHU=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
