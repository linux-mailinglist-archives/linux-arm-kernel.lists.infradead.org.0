Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D193AA73A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 21:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Uoj5nVQO7kL0H/MSdUF6eH7oTgsc1EAgzdd25c/LYvg=; b=eSWlwmUHzpPFTdqjCAevFu6lGj
	dtWHLk627GolWRxcs7ozAZ/m9pkEePSZe7M/fsiLGdGQtj4+9Ktq1J98n5d+/xIcpjv/B+yBZzwC7
	kFKc5pOYM3y99IgklKuSeEAiq+RbNwESaCsZrw5AUxWbZv4vbje02J+7bRaighWmPOqle6KWOIAvP
	ojlc05HGL8/nmPNGtkrHIt5weymgu5It4VC9Eq+9qSUYm7awQTHIFwFljyRSXn+o38glL58v4guHK
	uLGL4juJObr1frxTEf3mOPTjF4j0O7wmLJIBMUxw78mnyf+tB9O4ysnSmUdQ3CQUKTzbgCq2RzqYf
	qoSqCxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ESS-0000yG-VY; Tue, 03 Sep 2019 19:27:17 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ERn-0000YC-LC
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 19:26:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id s18so18740268wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 12:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iu9mDdhXT5qnRAh0+sfN4E5G1hBz9p+AFjOzkuFdANU=;
 b=QDliV/tlu4dauS5+qtBz/dQPRgPdi/gMVcoNyyqV3Q4kzX7DRZVQDNiD9jVvIlnfMR
 /rk9ZexDZsw7sP3eXj2drFwQ6jvMnQQz1+j9b7qcvmVMnUVnmfAE6oZ9TSmiosD3q4b1
 EzrklQbsEyR4Ns4LE2onsV7tAgqhCa9c8al/mk+U8cUTdIzmYc+rnitTHP7FN9BvfvDf
 cuT2qQrx6VyUlpDaXmrIN1rwQIRwIQWCEl67rM6ltk2RTUYoD1TgEASrqRLgdpuSh1Z0
 4+h/xhMlrPM8g9T+QRiMksvIf0aGed8kjfQrz0C/YqGKJzGeIT8rFmz6Bm45kcpGBAZX
 WnuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iu9mDdhXT5qnRAh0+sfN4E5G1hBz9p+AFjOzkuFdANU=;
 b=tj60C1B4LP47s1HAeKHJW56LF1IFmFNiLyjV9EBEQ42dLPWcTwfY8mmGRJZuYl6fSY
 NLcvO9VR/myqlNHnX9nX8PxfyOKSjX5AmgUGpEa13yUrMSZFgf/sx14OLBmhozNbVgdf
 7Xn8OmCQcc1F8EhQ0j44loEHDRNDBaHfXSFtnnR9M1MLwD9dBuXF5L5H7MLxQiU2xclA
 AMlz0apDYeI4NNd4xgepMPGC46vE9R8ySyEuYY/Uk5rTx/03sHpuXKmW2bg5wTxRHEzN
 O/SG5uiKusazkhSVXzpWY9fOVYk9Vpat5WAfpjIEMXrb1d4BpBLIqkF+hHutTKU0OSEe
 KpYA==
X-Gm-Message-State: APjAAAUUn9aJE3Ft2Vee5qOnEpq0v5G+2Z4Qm9HjYUXD0mb/C1L1KRW7
 pPqRIbQTcMQ5bg1tVUtH7azI5Z/D7V/amg==
X-Google-Smtp-Source: APXvYqxgB+1waw5g1KRrYZlfGed4VEHLM5YikKdfvBylnWAfiHaWQTKKGR0A+NIve5O7A/znEXdUAg==
X-Received: by 2002:adf:ba0c:: with SMTP id o12mr27433308wrg.284.1567538794208; 
 Tue, 03 Sep 2019 12:26:34 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id b184sm473895wmg.47.2019.09.03.12.26.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 12:26:33 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: soc@kernel.org
Subject: [PATCH 3/3] arm64: defconfig: Enable Qualcomm QUSB2 PHY
Date: Tue,  3 Sep 2019 20:26:25 +0100
Message-Id: <20190903192625.14775-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190903192625.14775-1-lee.jones@linaro.org>
References: <20190903192625.14775-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_122635_690607_66679713 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested on the Lenovo Yoga C630 where this patch enables USB.
Without it USB devices are not enumerated.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index af7ca722b519..a94d002182ee 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -770,6 +770,7 @@ CONFIG_PHY_HISTB_COMBPHY=y
 CONFIG_PHY_HISI_INNO_USB2=y
 CONFIG_PHY_MVEBU_CP110_COMPHY=y
 CONFIG_PHY_QCOM_QMP=m
+CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_USB_HS=y
 CONFIG_PHY_RCAR_GEN3_PCIE=y
 CONFIG_PHY_RCAR_GEN3_USB2=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
