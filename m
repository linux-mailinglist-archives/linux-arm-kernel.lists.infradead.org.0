Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE08174278
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9slvK0mnB63/LYjfZ/xmAzsRi8cCSrvqQJ2+H/MYdSQ=; b=jnNzJV8lcGg2L6
	25uNZbPn3MNo4t+HF9re9r3UdxWRn+jQKiLWuwdFpxgCPsFe84Zo3V9TNnxTfQjS9v0ejl3QNOl9z
	jQgt4c7nU/YWkOLC0zATBf0zeO9zXDznyu95Q7mOVc1xg/vldfT6rmtXbjsyO5kw/Ljy0jnkrpIMm
	WrQ+LXTaLkGKf3W2q/MML7eBXrPVKpc6QVFLH2jmNuG0G9PeFzpsrQorjV/8hchxHNxN4GQiaGliv
	N9ZE7eQpcA1ws5c9CyG5XqDqCg1dKrxKP56v7Y5NBBz9qlxuu/8lzo3VVQ+pjSv+3BMYoJuS8yQHa
	ZPXiSU7KylYt/ZlPwtbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oPe-0000Ak-Ui; Fri, 28 Feb 2020 22:47:18 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oLC-0003zd-VG
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:55 +0000
Received: by mail-yw1-xc44.google.com with SMTP id n127so4916523ywd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Thwu63tEndZhNCjTPMjYo2cjrXtsXYX1t8bmnH4V9IE=;
 b=TaqKk6XgbAiRcZY7jrn0JCG57GeKqBtMP9E+5v1Q//GWXUlVc1tZtShKP134SDQBt+
 aiRaNTdwCj4sRLl9B7noAvTyTfHNHQoOZKThziYaJ9smwOY6WSBLBAZ7Ssv30r8DtDUg
 AnVEPqWTZL88gUZt7ktuf6yGGPs8Zo3KoJCxZRqaxfuceFHhIKbPxEJuWUlEDVPTzKWv
 gmHwHnayTZ04Ga0Hv5dVq+Ged408RGUzx0pqp/SyRXYGBwBIOKKHhxyc5guJntX8fcp+
 BHbwtp7MLFVyd8vJahE9siIXqP1cxNVvKUxWYVov7S8fIpl0I0OVY5E2Jfjrh4gwSFPr
 3XLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Thwu63tEndZhNCjTPMjYo2cjrXtsXYX1t8bmnH4V9IE=;
 b=rKoUha40hVNEAo3tUb4UiOLGvkUg7olrezgREqNJKjrc2W975wWFQ0BbyoE0FmFvZ7
 OwibqANj3VoL/hqh3dVXxOsryVSzwBx+KumKtL4UQpor7+gVlTg6jJkzeagKJdJyYRkF
 bIdr4aytQYLoZPCCRTtMX5RLq1ErTDq0VUsgIuHrA/aHxxAb70DwY024YHNr+vwIhUph
 K3GaMUK9gCvooy/D5/z2PJcGcnA44QgTh4XKj8cFVLZGxznjN2uIL9YljsWJMGkHIm9a
 xIeYg2AQoFkCN4JbYMWUsxTyNkpRHO+Pidr14iBsrXNeP3y6jc8k1Sqf3Ft6hEPvIC2z
 wgyw==
X-Gm-Message-State: APjAAAVg6Rj2ToKFiY+Sz7r+5X+il2oNnNUkp3utJw5RotMHU8VYcq4X
 gSTnTtNwdJfQnRy5PPbjRPvJXQ==
X-Google-Smtp-Source: APXvYqxQGwHuu0P48km/ZZi3ltrSEGLFPwNxngaAeUaU1f/9iK01pDAGis0Mrd4MrCrQiJ74V/yWlw==
X-Received: by 2002:a81:1bc6:: with SMTP id b189mr6405459ywb.275.1582929761563; 
 Fri, 28 Feb 2020 14:42:41 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:41 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	David Miller <davem@davemloft.net>
Subject: [PATCH 15/17] soc: qcom: ipa: support build of IPA code
Date: Fri, 28 Feb 2020 16:42:02 -0600
Message-Id: <20200228224204.17746-16-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144243_104501_2D4D2A59 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, devicetree@vger.kernel.org,
 Dan Williams <dcbw@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add build and Kconfig support for the Qualcomm IPA driver.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/Kconfig      |  2 ++
 drivers/net/Makefile     |  1 +
 drivers/net/ipa/Kconfig  | 19 +++++++++++++++++++
 drivers/net/ipa/Makefile | 12 ++++++++++++
 4 files changed, 34 insertions(+)
 create mode 100644 drivers/net/ipa/Kconfig
 create mode 100644 drivers/net/ipa/Makefile

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 25a8f9387d5a..cac1bad327e0 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -431,6 +431,8 @@ source "drivers/net/fddi/Kconfig"
 
 source "drivers/net/hippi/Kconfig"
 
+source "drivers/net/ipa/Kconfig"
+
 config NET_SB1000
 	tristate "General Instruments Surfboard 1000"
 	depends on PNP
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 71b88ffc5587..dfa562f909c8 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -46,6 +46,7 @@ obj-$(CONFIG_ETHERNET) += ethernet/
 obj-$(CONFIG_FDDI) += fddi/
 obj-$(CONFIG_HIPPI) += hippi/
 obj-$(CONFIG_HAMRADIO) += hamradio/
+obj-$(CONFIG_IPA) += ipa/
 obj-$(CONFIG_PLIP) += plip/
 obj-$(CONFIG_PPP) += ppp/
 obj-$(CONFIG_PPP_ASYNC) += ppp/
diff --git a/drivers/net/ipa/Kconfig b/drivers/net/ipa/Kconfig
new file mode 100644
index 000000000000..624f90f13816
--- /dev/null
+++ b/drivers/net/ipa/Kconfig
@@ -0,0 +1,19 @@
+config IPA
+	tristate "Qualcomm IPA support"
+	depends on NET
+	select QCOM_QMI_HELPERS
+	select QCOM_MDT_LOADER
+	default QCOM_Q6V5_COMMON
+	help
+	  Choose Y or M here to include support for the Qualcomm
+	  IP Accelerator (IPA), a hardware block present in some
+	  Qualcomm SoCs.  The IPA is a programmable protocol processor
+	  that is capable of generic hardware handling of IP packets,
+	  including routing, filtering, and NAT.  Currently the IPA
+	  driver supports only basic transport of network traffic
+	  between the AP and modem, on the Qualcomm SDM845 SoC.
+
+	  Note that if selected, the selection type must match that
+	  of QCOM_Q6V5_COMMON (Y or M).
+
+	  If unsure, say N.
diff --git a/drivers/net/ipa/Makefile b/drivers/net/ipa/Makefile
new file mode 100644
index 000000000000..a2221e91e6ee
--- /dev/null
+++ b/drivers/net/ipa/Makefile
@@ -0,0 +1,12 @@
+# Un-comment the next line if you want to validate configuration data
+#ccflags-y		+=	-DIPA_VALIDATE
+
+obj-$(CONFIG_IPA)	+=	ipa.o
+
+ipa-y			:=	ipa_main.o ipa_clock.o ipa_reg.o ipa_mem.o \
+				ipa_table.o ipa_interrupt.o gsi.o gsi_trans.o \
+				ipa_gsi.o ipa_smp2p.o ipa_uc.o \
+				ipa_endpoint.o ipa_cmd.o ipa_modem.o \
+				ipa_qmi.o ipa_qmi_msg.o
+
+ipa-y			+=	ipa_data-sdm845.o ipa_data-sc7180.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
