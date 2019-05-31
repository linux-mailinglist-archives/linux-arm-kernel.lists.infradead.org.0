Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503703077F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+JaLP6ZPxIHG/JKdmdbYww34Aa6cg+tXWFzZJamSAY=; b=YvRplBlkr8qQmv
	yxjvuJ18owH7sTYyrznfB2XMoxB0/xF+Eh2bsHOrxsE0f/xIInn342djNsqe4OZRIXrrINPITeBJZ
	0dkj7yY4Mu6LUJrcauFWwxDEE78a358adPsUNXa4u5RF3nI49wzDTy9+Oov33DJ04SncvM2nt6BXl
	HZchpVJaD44OpeNtZo12rD+jFU/9+AvWW20qzB9dAmXB8TNv5ziA/7FvpxP5UxxxCA27A2ezEFhmn
	w+OLbQmdNIeT+cytt8HI+HzT4Djk/mXT5Jv5snaGtJVqm7o3zoblztjDwVvunNARZShe2jW9cF14+
	cq3JvyeSlCCbrCqdS7SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYh8-0008Jc-3M; Fri, 31 May 2019 03:59:06 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYcR-0002rS-3u
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:54:24 +0000
Received: by mail-it1-x143.google.com with SMTP id j204so7724136ite.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hqFf2+cwBc4XPU/wNoeNiXzq2lmzHpPCTPDaeLdQu4s=;
 b=dwV6lcEWrxc5B6DJHcpq3zyz85EXyb7kFr66i80SndfVrNSU4O6J2BhCuq4xE9YuzG
 QJEmlxKobURV1wOZvw/c6rRePWj08be/9fs9y2H4V4dAqvoWGBzKvPWGy3M/GlkBE0dG
 fB0+1S4FXZaI2IcfQfZRZVtRvdl6d9HBSKFx7wjh0vvlKTQbnW0gnMSsdPc4JZbOEZxZ
 9+ldXNVSP69hgIFuV09GrO8sJw5L3I7P9UL2lk12RFXNAOLaRkF4zItXR5B1Uy4SSQ5S
 2lnj0k2mR9SfKdIkG9tTaENn3hV+GHxRfykjUcndTjGzcKr5Fj37FZl1j9/iwIRDGMNH
 /bvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hqFf2+cwBc4XPU/wNoeNiXzq2lmzHpPCTPDaeLdQu4s=;
 b=Zs+0/wWFm0YgArtsdlLACTpLCNxhmY7uSDeFQhsmRAAIOo7dTw5gu0RjPkMMOszqG7
 lu6gPTTitryC28+MsFZ88yvZEEwDAf/56tmDQ66U6DIFEIHWDZ3dokEnAn83bPYcm/X+
 2obIXEV+yzOL68awQXEZry62LNuohTpvJXMlae004d07LAFvE6WpIG14U2JHWiVd1HSK
 tEGdyCr62iw2uwZPTqTS7Dp8tMY/R82hrINRjfLjSm7tttnFn2E2+fpyzKy88LH32iAz
 T0Ez43dapPiNq/B9x8xxkR/MD3WbEUgO4x5EzfUTBq/xu4rQJfno3ORirqriNAMSiGss
 8aIg==
X-Gm-Message-State: APjAAAVsMqxEokupYbyX9Xcz1Jl0pQIbZ7bPC83WnXNyD88SoJT+M5R9
 sUZsOfVoJpnp13F/W6viAEf4nw==
X-Google-Smtp-Source: APXvYqwWD8aa4VUIefG8yGQZZRSCg34qIIIGxgQIp1ineTqYUGxgNceXvUOJ1ILtPXFr+A14j81EGw==
X-Received: by 2002:a24:a09:: with SMTP id 9mr5343497itw.146.1559274854371;
 Thu, 30 May 2019 20:54:14 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.54.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:54:13 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
Subject: [PATCH v2 14/17] soc: qcom: ipa: support build of IPA code
Date: Thu, 30 May 2019 22:53:45 -0500
Message-Id: <20190531035348.7194-15-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_205415_347372_4295333D 
X-CRM114-Status: GOOD (  13.98  )
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

Add build and Kconfig support for the Qualcomm IPA driver.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/Kconfig      |  2 ++
 drivers/net/Makefile     |  1 +
 drivers/net/ipa/Kconfig  | 16 ++++++++++++++++
 drivers/net/ipa/Makefile |  7 +++++++
 4 files changed, 26 insertions(+)
 create mode 100644 drivers/net/ipa/Kconfig
 create mode 100644 drivers/net/ipa/Makefile

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 48e209e55843..d87fe174eb9f 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -388,6 +388,8 @@ source "drivers/net/fddi/Kconfig"
 
 source "drivers/net/hippi/Kconfig"
 
+source "drivers/net/ipa/Kconfig"
+
 config NET_SB1000
 	tristate "General Instruments Surfboard 1000"
 	depends on PNP
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 0d3ba056cda3..ff8918fe09b0 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -45,6 +45,7 @@ obj-$(CONFIG_ETHERNET) += ethernet/
 obj-$(CONFIG_FDDI) += fddi/
 obj-$(CONFIG_HIPPI) += hippi/
 obj-$(CONFIG_HAMRADIO) += hamradio/
+obj-$(CONFIG_IPA) += ipa/
 obj-$(CONFIG_PLIP) += plip/
 obj-$(CONFIG_PPP) += ppp/
 obj-$(CONFIG_PPP_ASYNC) += ppp/
diff --git a/drivers/net/ipa/Kconfig b/drivers/net/ipa/Kconfig
new file mode 100644
index 000000000000..b1e3f7405992
--- /dev/null
+++ b/drivers/net/ipa/Kconfig
@@ -0,0 +1,16 @@
+config IPA
+	tristate "Qualcomm IPA support"
+	depends on NET
+	select QCOM_QMI_HELPERS
+	select QCOM_MDT_LOADER
+	default n
+	help
+	  Choose Y here to include support for the Qualcomm IP Accelerator
+	  (IPA), a hardware block present in some Qualcomm SoCs.  The IPA
+	  is a programmable protocol processor that is capable of generic
+	  hardware handling of IP packets, including routing, filtering,
+	  and NAT.  Currently the IPA driver supports only basic transport
+	  of network traffic between the AP and modem, on the Qualcomm
+	  SDM845 SoC.
+
+	  If unsure, say N.
diff --git a/drivers/net/ipa/Makefile b/drivers/net/ipa/Makefile
new file mode 100644
index 000000000000..a43039c09a25
--- /dev/null
+++ b/drivers/net/ipa/Makefile
@@ -0,0 +1,7 @@
+obj-$(CONFIG_IPA)	+=	ipa.o
+
+ipa-y			:=	ipa_main.o ipa_clock.o ipa_mem.o \
+				ipa_interrupt.o gsi.o gsi_trans.o \
+				ipa_gsi.o ipa_smp2p.o ipa_uc.o \
+				ipa_endpoint.o ipa_cmd.o ipa_netdev.o \
+				ipa_qmi.o ipa_qmi_msg.o ipa_data-sdm845.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
