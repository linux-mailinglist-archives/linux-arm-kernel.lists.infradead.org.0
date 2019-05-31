Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8667631403
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OM2z2zUh2R42mW+Qz/nN2DJrGPGNsmIPVijqgP7LiQM=; b=pWHGM0obQfEm/uPK3n7SPyO+QH
	yITUf2N147xZfoFsEq4nUFaQM1WtQTvnYvMvEoWoeS44/1W6WRDlW+MARc6IxUdkKQhc12krR9YMy
	lLQvSQIoaUPAl+M/9OWNclhMNBl+YI22Q5l9A2GE4/lK87+N+2of5nhJBHz6nfwfNjt/+WeW2yKTj
	+actL9Yd0BQbUG44dpEg4OVXrDv4BPMGiZagtp1L6NpGbY1Efef4YrYAKtQ8n+/dDzF/vquFYShI9
	Qh/HtXjM5i9JHGMXUImRZKtmCYUFAw+X6buMN3ys+Uj2VE77fmtnCsblOoEo6r4RZ3QbfOxthtkIu
	oc2pi9Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlXj-0007ux-Lu; Fri, 31 May 2019 17:42:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWlXG-0007YX-JN
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:41:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id h2so1185194pgg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 10:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IgrJ71MNBgTIUzIRKQesOjEqI6A/RrDDrwRnH+2AsMA=;
 b=DBUqb9Tk2v181KVHFYUeRdOkY+Qj4THTwifTVw1OqMdCUrUWZhxhHnV+hE7Skoqrav
 QDPkMMtEFWiFfcIjO0Gz/hRR5WPT7XQgH8TAefPhLFM/cXwTInCBtshH9NR8ds4RVuUc
 Mu3MrPXrYW4ks6d6fkvijHGY+7LehdRwRAp6oauEM/Rnd35BDVPNEye9dGsADTelxrFH
 topbi2+ATbFODFj1ITbh/qTFbNuOmk+zsQoYU3jRlyQbNUVlrQLQl1TFuimrdavlqgOx
 fzOgzgZthPvNKMlN1RL0L2pYkAQilNTk8ZAOrWb2YHtFoUPFMVIotlLv+zjDxj0FzsbY
 6PPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IgrJ71MNBgTIUzIRKQesOjEqI6A/RrDDrwRnH+2AsMA=;
 b=Pn5V6rZ1gRp1H7WztsCiB3z3zYbUCNpLd6tV4FB5qUA5TlDQLdoy9b5NnhK2iopWA7
 8shdKINSoKDJYiaNZyPAMe27IlrIm3UzGpMR5m/sav5Z6SfrH7gmtNMIN0DoNb9eGN26
 uV/v2YFLv+LqatMIZJSFVaxlUDVFNU0CANsVcfB6R6X4l1ssUx982vQiQmg3vD2bZwH1
 2C2hExDDEOyC4ZMmgPz8N9MKS10G6L1htLa+EDoexFGNAkuCfF3ORhkG0eYesNL7+9kv
 zQa1OS44Fdbik1AWVvApKdjf3Si0D3NMAUHVn9nYcC9uLskB3kbechKoav21UPSpH3qH
 Gahw==
X-Gm-Message-State: APjAAAWRHkhYLyACX4rRliYcKMEu7n5bK6bxlyN9omgVCrm9s8JFPLkO
 B4llZCeJVejjJ7OJ57MaKxUYiAbf
X-Google-Smtp-Source: APXvYqzjvDdyD9Lgvun83lGnMOcolbN9ksXJnvTK/jVnDIw1Lm0lVPLqyhJ1xgQ6+95c8er5zChF9A==
X-Received: by 2002:a63:8f09:: with SMTP id n9mr10550139pgd.249.1559324505626; 
 Fri, 31 May 2019 10:41:45 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m11sm5373031pjv.21.2019.05.31.10.41.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 10:41:44 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: bcm: Enable PINCTRL for ARCH_BRCMSTB
Date: Fri, 31 May 2019 10:41:29 -0700
Message-Id: <20190531174129.6974-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531174129.6974-1-f.fainelli@gmail.com>
References: <20190531174129.6974-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_104146_674161_D6FD82BD 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jim Quinlan <jim2101024@gmail.com>, opendmb@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, Florian Fainelli <f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Doug Berger <opendmb@gmail.com>

ARCH_BRCMSTB needs to use the BCM2835 pin controller for chips like
BCM7211 which adopted that pin controller for GPIO.

Signed-off-by: Doug Berger <opendmb@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/mach-bcm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index 9c51d9d0aa68..31065c9a6936 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -219,6 +219,7 @@ config ARCH_BRCMSTB
 	select ZONE_DMA if ARM_LPAE
 	select SOC_BRCMSTB
 	select SOC_BUS
+	select PINCTRL
 	help
 	  Say Y if you intend to run the kernel on a Broadcom ARM-based STB
 	  chipset.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
