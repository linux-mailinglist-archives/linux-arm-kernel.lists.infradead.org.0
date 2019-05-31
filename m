Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D05313F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cu+mGtrhaajsLRwcDWVvo0ZsOgN398U5cP7ONAqkimk=; b=Nh7R3wJ6E/jkNZ2Znpcs7vdrGE
	Fl+ZHny0BL17mXRVYHIHpBhbzln9YnOtHLQ2Otafnsh6RvkPueicrh4DNQzTq8z67T4HHWuIYvAXb
	wa70vdb3COaUf2wB8JUIkgb8A/AlJWNGFsquovrssXu7R5ozY4sg9KzXZVdTN/nHNGH/Q2coTVXXG
	YKtwaWVMJ+gxwbNWCXyAczOcr041umEqVM2+0ExuHDoqP4+pF6y+rQ8s7fBnF6qj3GZCbzWWZvXdu
	yNLNyGMQ4lwphX96VX7eUUmvt1BtgdN+NwfGBiXD91QqukVq0rYOjjvQvVaF3jB9eGrvP0Yf9V/vb
	mqTbkCZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlUY-0005cZ-HZ; Fri, 31 May 2019 17:38:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWlUF-0005Ox-Sj
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:38:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id n2so4408124pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 10:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2xel43xGFPsdpjNgXH57hGUT8nITJMGWrawGJ8l12P4=;
 b=Tc4/awbpJKz9o9GS9uYFOuQmlzkb+X4tt+5cIge0DnYW2Nx5XPYbrkTVkFPg78qTxe
 JVaCbXj11/6/g93rStGhzePdUm4HmuKmNu0BHzaJRL4Je2dUKx/jiogJvOw/B5Xi7ARd
 38xMwCFQycNdcHh92fc1fo6p6UIFmSp6YRDhHDDfcd56V6UE9dV38yhdIobBBOxDQ8ap
 lJ6VBRHNIUiqnRUe1LFJwktGUj3VVt75qHatmzNJmPPPmVYW3M1twTfccWfb8aae71Lt
 fHRRVH4jcA4SbMr9AKLBtfuxa3CWIECEoylRuouZ3wNk7Uyws+6CJXB5zEL+dXnbxFgX
 SnPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2xel43xGFPsdpjNgXH57hGUT8nITJMGWrawGJ8l12P4=;
 b=Yj7wZYkHnGUd1MC92FAeZk1SUp96qZY53NtxMzHZm118tXq0EKmog5DCG/Rh7DviAc
 Kj2OhCplENMogvHfaK3+Rtg9NCqc0iM+952ejDuE/t0OD6ZKjo8Rc6j9Q0X5Qzy/JGtb
 FOkW0ceQypQLBmXz0EskG/UQZoGDLJz6u6UTNDdRSC2fIkjubuU155BlF6sr21cm1hnk
 U+/sSY84bpdgrOLJ1EVwcON31biEhh5sFMiFCOo4zdYnSYO+uRUIJm1rPfkaWXo2RNyl
 BtI9mAu9l4nO/3uLLTX+KZ3UPugOwjEtcXtGmLVwZJm9/iH4IrSuk8okWxnngPn0/CmJ
 y0bA==
X-Gm-Message-State: APjAAAV74Ps+N4LD6nfzVo7SlSPNK25+fT7skZEXfiHIubanOJ1anMUT
 5GtcaH3483yCSBxc6fIuZd8U06DS
X-Google-Smtp-Source: APXvYqw0ssR2Q2X7zQnu/7AtF7gwwJbT04BkG+x8oOLsf2AyTFNuPK6wvavSwBCpRtaH8tARKh/LQg==
X-Received: by 2002:a63:e953:: with SMTP id q19mr10732341pgj.313.1559324318724; 
 Fri, 31 May 2019 10:38:38 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p16sm14974419pfq.153.2019.05.31.10.38.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 10:38:37 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: Enable ARCH_HAS_RESET_CONTROLLER for ARCH_BRCMSTB
Date: Fri, 31 May 2019 10:38:25 -0700
Message-Id: <20190531173826.6729-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531173826.6729-1-f.fainelli@gmail.com>
References: <20190531173826.6729-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_103839_923184_4599A8C8 
X-CRM114-Status: GOOD (  11.27  )
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

From: Jim Quinlan <jim2101024@gmail.com>

Allow the use of reset controllers on ARCH_BRCMSTB such as the recently
introduced RESET_BRCMSTB driver.

Signed-off-by: Jim Quinlan <jim2101024@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index d0aca109bdf6..2d8b1afa3799 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -65,6 +65,7 @@ config ARCH_BITMAIN
 
 config ARCH_BRCMSTB
 	bool "Broadcom Set-Top-Box SoCs"
+	select ARCH_HAS_RESET_CONTROLLER
 	select BCM7038_L1_IRQ
 	select BRCMSTB_L2_IRQ
 	select GENERIC_IRQ_CHIP
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
