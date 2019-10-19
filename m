Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C0FDDAC7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 21:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EYqnlfKE9ZQw+gwFIxDKmrV68OhMdxcXZT5hoffO1Ic=; b=nnDf+yLsYfHjWX
	8k/BhNoX6hzsC3OwjsqRZAFiISYFzcoGZ7H6QWK0wggywaftxmCCwEUrO2kw9XAnouZsXFfE1CFlw
	3kH/PseBuHhkDNIJmS9eUkQKp1tPE0JHc2L2F7LYB7IQqSJeHqd49RDXn8qnxFu4HfUZvdiIxjQA/
	0ZkndMU//QEEPPn1eLZ548tRAq2IN23ipev1EGk7ghNNFQg1SaPjSQpgzr2o2v028Ps2B/+CR3pew
	mEWRxbhd2pISrUBDSRgKjxNbk9YwQ+cbTODVby79+jzpIJt5/dt7Fw9TP6DFQaelZAS0//wfYvsEq
	+jn2jCF3HE+xUe+d5y5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLurs-0002Pc-80; Sat, 19 Oct 2019 19:58:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLurj-0002Es-Lm
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 19:58:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id y22so5889455pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 12:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=266Y0hXS9BC8c58tj7q4sT9jtJ0HQTa0yWk7IcR2wTs=;
 b=uG/U93b2A8I0PII6bxFfdt6TH1kECEIuI+qHTm6K3KY0l7I1StEOvn+GUkCZFZGlKr
 R0K3mq75ExZFMrumknpnY8XIfzX8oBIdma6UHZyEJugAdc5XYAgbJ7WPC1spzgoS8emV
 G3iopRckBMDrp3PlUBrjv4fjm4ExFy/LGiWIS9ynO+IJ73IGDDfJppCnZLKCr7RE0qSI
 QV8Bzds8wI6i2DkYLb1iysEgMiSirDuwBooSKX1WvMkelE1av2pCwKMl4gowVrybBF7y
 6bYl0xgazXqgiJ3fMHyi+1BOvcAaJzrdmhccY3RSdG6uSN3+MeeqZLlcxiSX/movlg6k
 1s/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=266Y0hXS9BC8c58tj7q4sT9jtJ0HQTa0yWk7IcR2wTs=;
 b=mR6YqgngmE09sBgIIYIkxEguXbsk7gLXOX+ndXXKfPC2PI6odPIFOss+cvX2FL4qks
 kq05Yd/QH4nTIM9pCB1OrQ3Zk8iT7aS6ofRSSoxO13FPfax81mWc/l5vEPzv2T8Nm2p6
 5LZVlQRwX69nIGNlMp6Hq45zIPI6KBx9QN8N/mr3UEeA6hj5m4j5GXIzyYExvygCxBjb
 XTDKLmLRttYGJHdOCAaYNqwA13F6+JLLHxk1uNhSLkP1Mbrr6xy82K7FyPsjAT3Y7Dy6
 wvsb4nXUxgkWBoDn80Ufq2+sYpG3LdtclrGUcErYiiycx4VQtTrRcC+WUB8kOk/oDOsO
 ynwA==
X-Gm-Message-State: APjAAAUwZ5uCAj8Z22KMLYH1q+xfJKX305XKftAWWl+kFj1qZgnKRL47
 CwVM88p9darNG/rUwxYRoD+hrg==
X-Google-Smtp-Source: APXvYqxthdjowhAfa+DBog8jfZPwJlkwc/5bBE/nJLagsS8UKZv/Dc/OwAsuZFQAQGcWOh+laGTHFw==
X-Received: by 2002:a17:90a:bd0b:: with SMTP id
 y11mr19444285pjr.28.1571515097002; 
 Sat, 19 Oct 2019 12:58:17 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v1sm10183866pjd.22.2019.10.19.12.58.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 12:58:16 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Olof Johansson <olof@lixom.net>, Maxime Ripard <mripard@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Anson Huang <Anson.Huang@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH v2] arm64: defconfig: Enable Qualcomm pseudo rng
Date: Sat, 19 Oct 2019 12:58:12 -0700
Message-Id: <20191019195812.3834545-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_125819_745681_1ECAC0FE 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most Qualcomm platforms contain a pseudo random number generator
hardware block. Enable the driver for this block and also enable the
interface for exposing this to userspace.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6baf90875263..4591bf1303da 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -860,6 +860,8 @@ CONFIG_NLS_ISO8859_1=y
 CONFIG_SECURITY=y
 CONFIG_CRYPTO_ECHAINIV=y
 CONFIG_CRYPTO_ANSI_CPRNG=y
+CONFIG_CRYPTO_USER_API_RNG=m
+CONFIG_CRYPTO_DEV_QCOM_RNG=m
 CONFIG_DMA_CMA=y
 CONFIG_CMA_SIZE_MBYTES=32
 CONFIG_PRINTK_TIME=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
