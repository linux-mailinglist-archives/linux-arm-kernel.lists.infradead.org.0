Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2057BFA1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 21:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTYKPwbPtuJu63b8Zx00bZXqUlVi99NF83k9Y2qa5dg=; b=FZvLbUyH5E1qWg
	+RM0Zy0iDeZcFL1pvxjQTwKkqrmpZKw0ms1tWBaiEUCz5GpnB5hpK0UTTNZ7aG0TZfiCmSO8JrJWm
	fJdsTw2h8cClb/XTIRjcbE21Lio4A6xCzHY/rlub2zi0OD70qcV1iJbAKHbEt+PXPA4FU+pwx5CQ/
	pYrkHJeNEt7pklAHXGqOfb5b6wlNl6rHRbehOvf0cM8D2a+Qtgh9LwGRZ6LRfqK9+UU6U+3UpkzKa
	YSdF5qdYh6uG+9zpdZT1MudV1c+K4O3nNV2895RaXTk1I2mcw46rjXjw8emvyeNe9/vQw9qExbyP6
	yet7R5aTpVCS+DUAfh9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZUD-00025p-Uq; Thu, 26 Sep 2019 19:31:34 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZTc-000247-CO
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 19:30:57 +0000
Received: by mail-lj1-x243.google.com with SMTP id q64so61260ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sRPre9NyfI29GwZlshBH9gC7wzK/z0KwBuEoRmdliGw=;
 b=ZmbyEtSbBWuMMpVwSZrHjYIdpkcnkwrF0qUUMy+MafE3PBuxLYpS5NxZCb/ts7t0m2
 URvbK3ghblOhCpJfGC2ls/2wVb3UrwxpCiNw1SDuYlzwu25KYpk8SBOaFXK/7HlFBuO/
 /4W3oShWHyJTVBG40zewUhr6Ps6wZBQvd0ndRPMXdoJwKC66qXN8qcxNBY6eENCOupCG
 jn49OXgfkpqEGPjZk1kpo8kmoRX9L/aeOKuygquMwxeXXHZD8gzlUvIQfZSWiwZDJP0l
 Fm6jKF66NsW27/LVLzMjWsXplegnahgkoBtnCXXimpiCmdrWdxuoidKJtbCJw2lT2iYp
 OgNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sRPre9NyfI29GwZlshBH9gC7wzK/z0KwBuEoRmdliGw=;
 b=RQXAjuEbfpbFv9skCwhZOZa06vCk+PNJtkQf8WJY/6t1Xk9qnI2NHazePratU+lLMs
 Eu76Hggapao8kioGZkRy2cTXEhjr0ETuQRHtTB+si6CO6RjrJXbFP/+XgxmvZDVGxoUl
 oVm6ADdBqtq/LvhIWPtDQjH41gU2YkfjZyMSGx73ceiwIrj96EBKTmB2KWNjxTWhSqcb
 /k6iw68Vgodh08c87wepqJC2nkRfcu6T2cBGzkR7rM3x0pJfwA46uo0zEbmsuKmp3tmQ
 cxpdlGwp5hHHwKSp9nhnlXd6NeTpz+yHJCmNQspzihySCtaFUfgOfgO7V8hIx9M2ztj/
 mZfA==
X-Gm-Message-State: APjAAAW/9lgbLySLk6iC0oI/wFo3fBzpUDP14vLh9JY+fwKMbgIr7g+u
 GsjtE+WDPJ2RLyHZ3XqzdKO47A==
X-Google-Smtp-Source: APXvYqxMxxn16V9qPfWdtkfkq1r7wYv/YWf0OUsdrDgk6aN00MwBwYaHHJAG9v1Vh1fj5ZR7oy+s5w==
X-Received: by 2002:a2e:91c7:: with SMTP id u7mr208631ljg.146.1569526254516;
 Thu, 26 Sep 2019 12:30:54 -0700 (PDT)
Received: from localhost (c-413e70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.62.65])
 by smtp.gmail.com with ESMTPSA id l16sm19009lja.34.2019.09.26.12.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 12:30:53 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH 1/3] arm64: configs: defconfig: enable DEBUG_PREEMPT and FTRACE
Date: Thu, 26 Sep 2019 21:30:27 +0200
Message-Id: <20190926193030.5843-2-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926193030.5843-1-anders.roxell@linaro.org>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_123056_602546_A5D8E63F 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building an allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
kernel, CONFIG_DEBUG_PREEMPT and CONFIG_FTRACE will be turn off.
There is no benefit in disabling these fragments. By enabling these
nothing will happen without interaction from the user to enable it from
the cmd or boot line.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/configs/defconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 56dc7488ff36..52a32b53b2ed 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -853,6 +853,4 @@ CONFIG_DEBUG_FS=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_KERNEL=y
 # CONFIG_SCHED_DEBUG is not set
-# CONFIG_DEBUG_PREEMPT is not set
-# CONFIG_FTRACE is not set
 CONFIG_MEMTEST=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
