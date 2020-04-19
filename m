Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A13E1AFC7B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrRmdQHv4COpNjzIbk++aEEsiALdN5AjNQ625HHIeKU=; b=flNmX6BrCaroi7
	TX3IIXU917WPHtvD8oZZ55CwArajKlvsgVBkk+i8DsSzlsO8aXUjYOJaMivDq1wDE5Ylz32hsqJOB
	sESu6kmIgTf5IuE1OmxK7EfwFk5aTCLgwmd9chcPzYZS9sldQe9JdIrC85ONAiwJ6GxviLmsefBM1
	lvigpB842OVcV8MyMqoVY4PGJHj2RSwQOFcjWPN4CGOM36qDl3cZ2S38aYyvZlFesVaAsxGTpyrfi
	bcddyLMQaXImW6Oe9HmjCApd+9CWCpYZ4pMLC5jAAaIFoaBe0NtihfYG1gla1jDxdds9LwpFcv7eJ
	MUQ6pKvaXm2K/5/Ltf+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDSW-00030p-KJ; Sun, 19 Apr 2020 17:10:20 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQc-0001l2-2C
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:23 +0000
Received: by mail-ot1-f66.google.com with SMTP id e20so5987278otl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qrg4Kn0uV5CkM2HSImaTMyKeQJqbbeo+iRjf1bdrad0=;
 b=T+PCGcnCa6BBqtEfOOad4oxTCiECksKCeyni7W9329NJ6MX2j1CxFluVCSlx8xP2Yd
 xTA1hYnfgl6EFF6DTxNY1TBfIJto2pKengwdIIW+VjeEGnX7QU9U1M9UzCHRUSE8iVrr
 N6ukV4e4zyNX9NO0QUcqy27XcmdPRNAdoq9B2erKHawmqMAqh4C2FiPp9V/cx3Xu6g3Z
 9EZ+kLmuCBRsXG6N5Winiy+2VtSzZqJ3K+m+6tV/MBejoB5tpfjIIulkpVSVV/LFCUxg
 VjCB0MAMsLuD5ujyxY4GeiQyZdEG1pfWdozNRpnSmBViIWB66IOV6vN6ckTGiDBlunxi
 3Miw==
X-Gm-Message-State: AGi0PubMqgyL4PzMpoSxRXFXEW3rkRU1mnHdb8m4OzljGZ7O/NLK6gnO
 b/cQUWeNzF9d68n/2EdfbA==
X-Google-Smtp-Source: APiQypLaYTQQiTq4lbmbzauI24B6HAlyxCl7rv3Xs7I3W7EGTvoW/11+mJIDtPy2Q91CLPeIch7vLA==
X-Received: by 2002:a9d:6303:: with SMTP id q3mr6861606otk.296.1587316101203; 
 Sun, 19 Apr 2020 10:08:21 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:20 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 06/17] clk: versatile: Only enable SP810 on 32-bit by default
Date: Sun, 19 Apr 2020 12:07:59 -0500
Message-Id: <20200419170810.5738-7-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100822_116090_2E975C7B 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While 64-bit Arm reference platforms have SP810 for clocks for SP804
timers, they are not needed since the arch timers are used instead.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/clk/versatile/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
index 3465fb291998..5bdd5c98990b 100644
--- a/drivers/clk/versatile/Kconfig
+++ b/drivers/clk/versatile/Kconfig
@@ -9,7 +9,7 @@ config ICST
 
 config CLK_SP810
 	bool "Clock driver for ARM SP810 System Controller"
-	default y if ARCH_VEXPRESS
+	default y if (ARCH_VEXPRESS && ARM)
 	---help---
 	  Supports clock muxing (REFCLK/TIMCLK to TIMERCLKEN0-3) capabilities
 	  of the ARM SP810 System Controller cell.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
