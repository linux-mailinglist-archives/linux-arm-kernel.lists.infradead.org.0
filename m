Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3AE15E22E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhS/x/kI5dfEElPI4MrXmc71fCGfFc3g+aow8fuTFTI=; b=DTPvslypFm454G
	5r2ModqVrSIF9gK3V4TJyXBFeyVc1PAKHrA9NeWJIsG9qW80A/nen6guHk7l3KW0/tbdnIMwXxuRk
	7nVj5lxI4jeVMHD/cvj5tOkph0f8AmzuI4jYkNpC+tBOsOlplqBlyqAvhu9tQ08q4QqYPL77Tm+12
	S/g6EVtrdXTproUdPucVlvfGQFqnjer2tKAbf8K51gZ+BiR/+ScVAEc2vKJ6huTLt6Aahfb2jrxzp
	BeClS/Ru2MgOjfh3+Wz0ChEP6R/UoQXU2atQ1naTuvQgqw6KgOe1stFBtyAzbUTZBKJTBRiIu1LHY
	VrKxHI5XaJn/Jo63mQ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dja-0005xl-2K; Fri, 14 Feb 2020 16:22:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dRe-0002NO-B9
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:03:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 006A7222C2;
 Fri, 14 Feb 2020 16:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696238;
 bh=HnWhr6/KKXYznfesNXl5gOHM6wIdNTDv3KbNna8Ndxc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LcNEtOz9ZBb0EqlKjXMQy/d2ykxJDzEtTN8unPZ8bendSqzQ7y3e6cnVNgCRurDPV
 j6ip8FIUsp3vTUzlTAtTOHXg8wmIHSPa/+MgygF3N7+hcHoBZPvy+9QBWfe33ta32L
 D3WjHrsuZUezK01P1wGlvpNpteW+hm2Wt/oPtUbE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 097/459] drivers: watchdog: stm32_iwdg: set
 WDOG_HW_RUNNING at probe
Date: Fri, 14 Feb 2020 10:55:47 -0500
Message-Id: <20200214160149.11681-97-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_080358_421103_ADD251FE 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-watchdog@vger.kernel.org,
 Christophe Roullier <christophe.roullier@st.com>,
 linux-arm-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-stm32@st-md-mailman.stormreply.com, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christophe Roullier <christophe.roullier@st.com>

[ Upstream commit 85fdc63fe256b595f923a69848cd99972ff446d8 ]

If the watchdog hardware is already enabled during the boot process,
when the Linux watchdog driver loads, it should start/reset the watchdog
and tell the watchdog framework. As a result, ping can be generated from
the watchdog framework (if CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set),
until the userspace watchdog daemon takes over control

Fixes:4332d113c66a ("watchdog: Add STM32 IWDG driver")

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Link: https://lore.kernel.org/r/20191122132246.8473-1-christophe.roullier@st.com
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Wim Van Sebroeck <wim@linux-watchdog.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/watchdog/stm32_iwdg.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index a3a329011a06b..25188d6bbe152 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -262,6 +262,24 @@ static int stm32_iwdg_probe(struct platform_device *pdev)
 	watchdog_set_nowayout(wdd, WATCHDOG_NOWAYOUT);
 	watchdog_init_timeout(wdd, 0, dev);
 
+	/*
+	 * In case of CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED is set
+	 * (Means U-Boot/bootloaders leaves the watchdog running)
+	 * When we get here we should make a decision to prevent
+	 * any side effects before user space daemon will take care of it.
+	 * The best option, taking into consideration that there is no
+	 * way to read values back from hardware, is to enforce watchdog
+	 * being run with deterministic values.
+	 */
+	if (IS_ENABLED(CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED)) {
+		ret = stm32_iwdg_start(wdd);
+		if (ret)
+			return ret;
+
+		/* Make sure the watchdog is serviced */
+		set_bit(WDOG_HW_RUNNING, &wdd->status);
+	}
+
 	ret = devm_watchdog_register_device(dev, wdd);
 	if (ret)
 		return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
