Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE11617B5B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 05:35:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6fZoRpGeXUUuBoXEF29hRVoBc4kIgYmWcjwQ+l1RRU=; b=FEr5LvCeQ7XPid
	I7K3pfHwiHXgeEX9IPYRCruuyXaKVSPBo4yEU34fJfc1fdUScJLgGvEuUldYqTPNWOekJL3GLInSR
	LMrW8hHOZNSXynPC70gdXO9e5U0D0eAO5aguQQZ5ptBILrFU6sRPCa2lVdGbVS1GL8EemOVlXENb8
	VA7Y8GZUNQ4w0ieAhqMEbhZQaj1FUfOyHQfv7I19tRXaeZzkLdPcpJjO9xxwMwo9gn6qHPgxJmK0b
	bvi22iMFlWTbNTGL5KpfvKcRO1BgMzVgX4zM8GKvwSlBg++kIrNlnPFSU6gDIbNOtXgpyk//QEpeU
	3C52P0IZ7GtNRE/rOauQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA4hY-00081P-J4; Fri, 06 Mar 2020 04:35:08 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA4bj-0002wd-0u
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 04:29:20 +0000
Received: by mail-yw1-xc42.google.com with SMTP id d79so38594ywd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 20:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=miNN8i4IwcvOjiB/qs3BU+cs0LOJ0WZgNaPZTHxNf20=;
 b=eslwFNq4PwCC6+Z4KsPepXRVMSQtjU60CJu4GIG6B7Jnm4GZgJE8XkeUHt+m8sYvds
 Vb3v8FWdY/Hm7Tzv2QWOSvmxWCRZA1Q1yD2R6rTHqF0WUw8XWuYnojK+8Gzhbvnty8b1
 4FvH9hKarM9faVP8AInLEsBWcB7CTrpeDbz8B+hwcTyTXoHH1F9L2iAZtZOdn8xNMZcd
 U0qjD73Dgm3vDJkC8eBdPh7pIcbBn++HjfXSEfbn8Eu+1PLU70HJ3MKuMjeyjdKnjrrX
 WG6/hgDgSof0z3abT9dUiOIGO0mE3Pt9dt2vYe6ncLAoY1prfQBYsXM42eiTP9qihY8l
 C40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=miNN8i4IwcvOjiB/qs3BU+cs0LOJ0WZgNaPZTHxNf20=;
 b=Oh+wPmFfbaEVx8pZ1VvTjvcJuvIJdBxUYwOp7VwlWR8cwo0UjxCyFFp+rov0JBaoXd
 NGyQc8hF1eF4hYT26LdbNfMtzZfLzre0hUHwqQaRAEVOSGzhQyCFh5+cmY4dsE6SOABG
 TdQalm0JJYa+pTwA/67lhPY3VRyf/qjB/f1pj8UvDnwLI99JvI4hUlVNUyQ/zR+iVr78
 7EebuI9NEJ+9LTEP/ePQ3PiRL0dbhRD2X1JP21uNPyM8cUV4ltz0BzcmTPOUrRP0eGiS
 pHVKWQtiTk33gG+ThZ3g+SXyRWdFFUZ4Ni2L0cAZNAYSHwmXeRp7HbP4zgyNlU631y8w
 SbKQ==
X-Gm-Message-State: ANhLgQ2pAhsda9Fv1biteKlIB0gQplC3ANnZq5mB/XcvEQlv6xM1yvya
 Ezae7Ah/MMTuGOkd+CYRvQpiIA==
X-Google-Smtp-Source: ADFU+vvvxCEfuf1gOKNFIP8+FrNcl9hJa0D2HXoL/aVi6uaZ18AjxRORPUKqhxu509Q6FwPA0HW7Tg==
X-Received: by 2002:a81:49c5:: with SMTP id w188mr2205995ywa.186.1583468945849; 
 Thu, 05 Mar 2020 20:29:05 -0800 (PST)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id x2sm12581836ywa.32.2020.03.05.20.29.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 20:29:05 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: David Miller <davem@davemloft.net>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 15/17] soc: qcom: ipa: support build of IPA code
Date: Thu,  5 Mar 2020 22:28:29 -0600
Message-Id: <20200306042831.17827-16-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306042831.17827-1-elder@linaro.org>
References: <20200306042831.17827-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_202907_113595_396E621C 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 66e410e58c8e..02565bc2be8a 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -444,6 +444,8 @@ source "drivers/net/fddi/Kconfig"
 
 source "drivers/net/hippi/Kconfig"
 
+source "drivers/net/ipa/Kconfig"
+
 config NET_SB1000
 	tristate "General Instruments Surfboard 1000"
 	depends on PNP
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 65967246f240..94b60800887a 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -47,6 +47,7 @@ obj-$(CONFIG_ETHERNET) += ethernet/
 obj-$(CONFIG_FDDI) += fddi/
 obj-$(CONFIG_HIPPI) += hippi/
 obj-$(CONFIG_HAMRADIO) += hamradio/
+obj-$(CONFIG_QCOM_IPA) += ipa/
 obj-$(CONFIG_PLIP) += plip/
 obj-$(CONFIG_PPP) += ppp/
 obj-$(CONFIG_PPP_ASYNC) += ppp/
diff --git a/drivers/net/ipa/Kconfig b/drivers/net/ipa/Kconfig
new file mode 100644
index 000000000000..b8cb7cadbf75
--- /dev/null
+++ b/drivers/net/ipa/Kconfig
@@ -0,0 +1,19 @@
+config QCOM_IPA
+	tristate "Qualcomm IPA support"
+	depends on ARCH_QCOM && 64BIT && NET
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
index 000000000000..afe5df1e6eee
--- /dev/null
+++ b/drivers/net/ipa/Makefile
@@ -0,0 +1,12 @@
+# Un-comment the next line if you want to validate configuration data
+#ccflags-y		+=	-DIPA_VALIDATE
+
+obj-$(CONFIG_QCOM_IPA)	+=	ipa.o
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
