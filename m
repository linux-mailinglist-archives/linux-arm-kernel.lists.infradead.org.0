Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D9C12C248
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 12:17:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fl1bIUTpjz+i7romqIe9Nw6c+Ke3FMReK951bamTy0M=; b=cdvugVzZFQ8zKFrm20e8lc0aaO
	frw2Hk3OK9txgi/yUfdfH8Gbu8n6c7mrYodxH+017oazr2FLXSK3MI582xge+l+7CmNk2ObrHQHFZ
	lKkEOv7ZG7oPCLXcdi3ENQ0J4FXWC2FrwQhLOrIAIBI8mXi96S69a+xflgY175zF7wc6gWWVlHzEJ
	fAH4aSNbncAnE7WH0P7pC3KyMF1m0v2johVfMRsNTx2DKfrmpDpAMv3T7TJtB5+muWAA8MKpbvS7s
	9mXXgp/kbTBw560pqlOYUXHmrZgiH7yzTKz+eDl0dVKql+3ZFnfLQJ++6+YY6A0PqmCMIZUx36ku0
	+/02sUew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilWZZ-0003j7-RO; Sun, 29 Dec 2019 11:17:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilWZP-0003hn-Mf
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 11:17:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id i23so11579059pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 03:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CWcFnXWGF5wNXnWL6+mku0hEs4gyByTrr98UCBl3J8k=;
 b=s6B6hYhmAqvRF/SCprnVyHpS6bysZxdnjpdCh+f14JrSZESME8pGx9OuMy4vz4uJJv
 wV8sGUlYu13+vM6rSlG5+B1f4PAXf1+L+fJsXv/pRbNqV2uxaYa+8PKZlGl9SAgiD0rt
 vfdttf4ORy+nrDCZxC6NA/wHrfEcArU9TL9hw4lyEmjPjV7Rui3akpKWED3KVNvXrIX/
 ioIc6CNj3YL8L/Q2QxFOIL379LRRDWJ4zxZf123HlK9GPTEa1CKdAC8VXmrZJdWNwHDM
 b9MJNvUvS+WUtm7lHALJa/9K9WFYv5RfX9uNFElGGWzRq0iAYokddATijdmAc0DmPl9S
 zCkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CWcFnXWGF5wNXnWL6+mku0hEs4gyByTrr98UCBl3J8k=;
 b=T4CkHl+xwcrWLL/rSzx976Rvwvx60MW+zPwNg7N1+GU7mPUwslK8q9Ubfz/5rsZrEB
 adF+9tGAPnZY2chn7FIWmoSphpkqOu57OI0/XJ7xkdX3I/x43q2C9IxUKyRWhrfQPdxX
 6cHKn/QYrbqGT+kypffaOUrBMdhbtwlTWrqmKyWCuCTW+JEZN0kUO5iHdPSzgD2ZpLqb
 bQctw0a8bwT+MT4qQ9LiHYk0VNDgWvJ6m75L3lgN8fsiLiPm9rf1MyXDvQc/+Qqw8UMp
 bUvesrqw7xoO1Kong6qAEQpDCapWHctpTaCOOxVrFS/rwR+35w7E+Awd18rKZfRhWw55
 rlQA==
X-Gm-Message-State: APjAAAXg7wmPjVas5WLB42QWNBzLA1L8/+GOEpDokLnjHBEhnmLNVdKf
 iGpetD7r0YOl+enrV+/ctdY=
X-Google-Smtp-Source: APXvYqwT9xK+ZGyFuhdZ2wLiXj9H1+mGiq49z7Hp29rcIkeDYbasZfv4ZBZcp7vOfBHA3DIC/zyigA==
X-Received: by 2002:a62:cece:: with SMTP id y197mr67311817pfg.9.1577618234053; 
 Sun, 29 Dec 2019 03:17:14 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id q7sm20794572pjd.3.2019.12.29.03.17.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 03:17:13 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: linux@armlinux.org.uk, mripard@kernel.org, wens@csie.org,
 catalin.marinas@arm.com, will@kernel.org, clabbe.montjoie@gmail.com,
 tiny.windzz@gmail.com, plaes@plaes.org, shawnguo@kernel.org,
 olof@lixom.net, Anson.Huang@nxp.com, dinguyen@kernel.org,
 leonard.crestez@nxp.com, marcin.juszkiewicz@linaro.org,
 aisheng.dong@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, anarsoul@gmail.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 p.zabel@pengutronix.de
Subject: [PATCH 2/2] ARM: sunxi: Enable CONFIG_SUN8I_THERMAL
Date: Sun, 29 Dec 2019 11:17:07 +0000
Message-Id: <20191229111707.16574-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229111707.16574-1-tiny.windzz@gmail.com>
References: <20191229111707.16574-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_031715_737588_35591499 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Many sunxi based board needs CONFIG_SUN8I_THERMAL for thermal support.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 arch/arm/configs/sunxi_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/sunxi_defconfig b/arch/arm/configs/sunxi_defconfig
index 3f5d727efc41..e9fb57374b9f 100644
--- a/arch/arm/configs/sunxi_defconfig
+++ b/arch/arm/configs/sunxi_defconfig
@@ -85,6 +85,7 @@ CONFIG_BATTERY_AXP20X=y
 CONFIG_AXP20X_POWER=y
 CONFIG_THERMAL=y
 CONFIG_CPU_THERMAL=y
+CONFIG_SUN8I_THERMAL=y
 CONFIG_WATCHDOG=y
 CONFIG_SUNXI_WATCHDOG=y
 CONFIG_MFD_AC100=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
