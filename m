Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2B119369
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 22:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=slx4vRgAV3fVdkrmFzd/jbXkAfymt7py1s4XQaydXXU=; b=nN0lDv/c3sfEWoW6TN/P2Zc9Ol
	LIpwgMYN4DT5JMTSytyy8vQ/hY7qhbbsJfD73NYytUqYJ+pV76wDiJGVfna/I5TVoYavv9SHJ1RYm
	7GgzJWdp195mPGPgtJM5xOmz4b/tbXMmo/yFo61G38sbsaHUdwUNeQC6sJtFKbJ1we4Saft2nzAYt
	9S2zGdVHdTV0cCb/0Aa9n7hp3FUbZ26Ss5XiQkHb26WMutb8hOIVO/CMW8CwUtouq24q3PyaoG/HB
	jQJdsdq8ELmw99aJpl+Gjm6i3qGWORS7boWgVMa3z88Oq+Mn+8GfFGIZOS7EuLtIlw0nMlcJ7vlsJ
	PV5Q5clw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOpgR-00007X-Tr; Thu, 09 May 2019 20:30:27 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOpgB-0008Pl-P8
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 20:30:13 +0000
Received: by mail-yw1-xc42.google.com with SMTP id e74so2903903ywe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 13:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=s82+opXHpmp64Nz4MPGFV0t/BAuzu71N7INCBgfaQTY=;
 b=K5bD6V37E1rdQ5p1wr2nXyvqaLA0XYp2KfF6z7BOX3FuTRXXoR6e8NuS/cQreCmBjl
 mvNn8xBdXpj8mnVaxAG+DjKzqSM3+CgFa3daukKCoxorjoHJAQ/n3lCm1sf8uAFxBjY/
 zsSnzn1stvCG6VL06lr9oqVCGlx4Bd8weSpaeA2Ot4KeXBKT3BsLlslMy40HopsWTQeF
 lRanxQVrzvQ1h9Lv3iRH53K89tDuLmMlzUvtIRIHcLl5tvgW2oQp4XB1Pj+YRhjYCv4G
 wNIrovNokoFmBaLAjrLjxWOYI+Oe0oU/zDMDyWckXjCj5NhX8GKIRCjoG/3oXFA2V2DU
 PKWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=s82+opXHpmp64Nz4MPGFV0t/BAuzu71N7INCBgfaQTY=;
 b=EtSHamxp3Rc5tTIFraXuODLh2WVto6eThhsC1mcvvn+EzXG/BaWHNJP0CLwfmcQ+pI
 0d2bV1HiDjx/LYjErioDg66hDuUwuAVksqZPsolgNmlHWNkEmrTMWDVH1g5XbCQr+kgl
 ytrRHUM6iJxEhT+LbvuorzdMdQUhnYuPPcS404/0pA47fwgttLrsm5FmUfvKKO471weQ
 rqoNzYSn2Y828hCYtpK5aeW1UqZxx/NYyQyy/ithgVL5zb1f+hOFjmyAcC0JZKTA421X
 RPwU6Seki4ZsNGR/DqpYqLOt9OwmFeA8JilswO5k4rbcFEVbc0kg4EZG4tV5aJL4UALH
 lUKA==
X-Gm-Message-State: APjAAAVstG5VgMVjebECpxAED9HxGYrly4SAv4EzkEZiB0u+abphCoCf
 cBZ7g0ScaeoyD4d64S/3PuxtxXr4
X-Google-Smtp-Source: APXvYqycsKBXgzsG4nnPFWn4Y3kSf1S0adpWyhRFkOVyDdZohaHIFPUuOT/xwTEGFXuWaKefbgo/NQ==
X-Received: by 2002:a81:9850:: with SMTP id p77mr3445959ywg.176.1557433809152; 
 Thu, 09 May 2019 13:30:09 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id u6sm896150ywl.71.2019.05.09.13.30.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 13:30:08 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] clk: bcm: Make BCM2835 clock drivers selectable
Date: Thu,  9 May 2019 13:29:55 -0700
Message-Id: <20190509202956.6320-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509202956.6320-1-f.fainelli@gmail.com>
References: <20190509202956.6320-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_133011_816718_8A3A8DD1 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the BCM2835 clock driver selectable by other
architectures/platforms. ARCH_BRCMSTB will be selecting that driver in
the next commit since new chips like 7211 use the same CPRMAN clock
controller that this driver supports.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/clk/bcm/Kconfig  | 9 +++++++++
 drivers/clk/bcm/Makefile | 4 ++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
index 4c4bd85f707c..0b873e23f128 100644
--- a/drivers/clk/bcm/Kconfig
+++ b/drivers/clk/bcm/Kconfig
@@ -1,3 +1,12 @@
+config CLK_BCM2835
+	bool "Broadcom BCM2835 clock support"
+	depends on ARCH_BCM2835 || COMPILE_TEST
+	depends on COMMON_CLK
+	default ARCH_BCM2835
+	help
+	  Enable common clock framework support for Broadcom BCM2835
+	  SoCs.
+
 config CLK_BCM_63XX
 	bool "Broadcom BCM63xx clock support"
 	depends on ARCH_BCM_63XX || COMPILE_TEST
diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
index 002661d39128..e924f25bc6c8 100644
--- a/drivers/clk/bcm/Makefile
+++ b/drivers/clk/bcm/Makefile
@@ -5,8 +5,8 @@ obj-$(CONFIG_CLK_BCM_KONA)	+= clk-kona-setup.o
 obj-$(CONFIG_CLK_BCM_KONA)	+= clk-bcm281xx.o
 obj-$(CONFIG_CLK_BCM_KONA)	+= clk-bcm21664.o
 obj-$(CONFIG_COMMON_CLK_IPROC)	+= clk-iproc-armpll.o clk-iproc-pll.o clk-iproc-asiu.o
-obj-$(CONFIG_ARCH_BCM2835)	+= clk-bcm2835.o
-obj-$(CONFIG_ARCH_BCM2835)	+= clk-bcm2835-aux.o
+obj-$(CONFIG_CLK_BCM2835)	+= clk-bcm2835.o
+obj-$(CONFIG_CLK_BCM2835)	+= clk-bcm2835-aux.o
 obj-$(CONFIG_ARCH_BCM_53573)	+= clk-bcm53573-ilp.o
 obj-$(CONFIG_CLK_BCM_CYGNUS)	+= clk-cygnus.o
 obj-$(CONFIG_CLK_BCM_HR2)	+= clk-hr2.o
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
