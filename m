Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EF01AFC77
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0I9nUPytrGMHu1zN/9LFUyg9QllO2c3WZOEcd5MSiA=; b=moIQT6I/+LaPTG
	kntPCXzTvlPQMbwnY35blgrxbnhD57XT2G+tPg96t3Ci3AAIBUa2njscNxdndHWM/jhYYehcN3JUG
	Kr+1Dva5B1ceM3meOOoM6CRm5S7LEU7tPGTAZnUgLXsyY06wWRnhrl5ZtyMRzBpgRZ/nz0PCmXomB
	KG/cryF5S93kKYtXFRMgSi5IAdTAjRxyAh2UvQlKQfuYhCP4ku5ZioQ5DjGl3LxtZlTVJys+FNXIp
	+dIk0BKj07Pd+Kv15RMTW/4cs4ntAV1g0QNQ66Z/4QRSYMi72CJAVE3XgOx2yEq/vT0wYolSq8Cmy
	QYShVW6yzUJb7PqlRDJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDRr-0002av-KW; Sun, 19 Apr 2020 17:09:39 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQY-0001hU-FY
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:19 +0000
Received: by mail-ot1-f66.google.com with SMTP id m18so5958194otq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J4W1MOddjCCw9dJQYLiEdJO8bx77R5HtOxEd/Z5DPRs=;
 b=TNhz2Qs91aTBfYyFwaprUapHoLV0+rQhqmiKKQXvetKn7As5+eCCcoFQHreRtZCsme
 ZVfwtLLhFjApVze8DLFO8sxpaOc+yFI1gvHheZioeFqYAk9jAOI/ZPkYE0FqzVFbuLWm
 xGiT58NF7PfibE/7QszWU/hIRx2PCiTT05169H4AIaMX9KxHBwp2Gz2IA3VXQcwqcg11
 Y9zTFDx34SkwMQgD9WUtxxM9HBfYb021HK284yzsjpGwl86zKnxW4mLYm0tkWCzGnD3h
 YIyYN+76q37M/vlUMPAZWraw+y1Z4P7B2pgENZjooVgUah6OFy0Y225V9sIW/kwf/IN0
 cQBA==
X-Gm-Message-State: AGi0Puar8IYpl4ZKcoFHRwlqWFXGVKhkDIKLC8/OyRRLZx4DR+JQ2MiM
 3rk6cTrRNW3V4oJE/KkuhSMGfGA=
X-Google-Smtp-Source: APiQypK0fJJhWegtefihZ3xqlHSSIU1Y4BN4GM5zgOcJ5aHxuge40tlIXHFeRHdB9gUqefM8BlqeQw==
X-Received: by 2002:a9d:423:: with SMTP id 32mr6922257otc.334.1587316097257;
 Sun, 19 Apr 2020 10:08:17 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:16 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 03/17] arm64: vexpress: Don't select CONFIG_VEXPRESS_CONFIG
Date: Sun, 19 Apr 2020 12:07:56 -0500
Message-Id: <20200419170810.5738-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100818_520034_D15D5323 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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

CONFIG_VEXPRESS_CONFIG has 'default y if ARCH_VEXPRESS', so selecting is
unnecessary. It also prevents setting CONFIG_VEXPRESS_CONFIG to a module.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm64/Kconfig.platforms | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 9c084f995e0f..5c38dc56b808 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -278,7 +278,6 @@ config ARCH_VEXPRESS
 	select GPIOLIB
 	select PM
 	select PM_GENERIC_DOMAINS
-	select VEXPRESS_CONFIG
 	help
 	  This enables support for the ARMv8 software model (Versatile
 	  Express).
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
