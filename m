Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09EB11E829
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+OZbQN8H8ho9hA6M4koPncTPZ2cuohbaDMBFV34Bif0=; b=j+MyJtzf3YqIkz
	mQi3JJaUPqvmonqViWK7ImXx9T7//etE9k6xXyf6emR3DEeifrqNcVZQA42O+lp0xUuOpXK265se6
	PUhnowyp/WBVfxIKbQ0M4UEYJAW1gnEgkYwcIyTAf/r6gihN4slxekuBqwfrdVYaGa+16DR3Rm62r
	mZ/yXyTnlF2rW0pBULpgjeV9lxl6EXJH5MF3P2TwC8tWTP10KTnfDMj6JOjQGiKVikbuWlBN8KliU
	+D/UMiKI/laPvREOqwcCbCCh3d4ePdLL9iY+EB40gLjakGf4wVsJ1B7XINTwPVclHUAN760jsJa5c
	SK2jN2NSSy5vCkW1zieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnkq-0006kS-Ew; Fri, 13 Dec 2019 16:25:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnka-0006Bg-FV
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:25:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id c14so40277wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DNUp596ZddGOax8pFd4t+4vyG8zhBsCGAZAw/KReX/E=;
 b=Adt3PMoX5OBm6bSlz3GKd8g56Kg52X+ybqY1NTzIR6q1djD8cneBfVfzHtdsoHmiMl
 EufFsQNT9xwDoLiyVXejbC+yTJzKqdFvKuVVa8GNB1NggGBssYR5ME0t2ImkiPtJC/bH
 eIh9drLKzfFLPaIg367l6RZrPyxkzsovHQnyWAqzCz8yw0RwTgLAiB/Qw0bsd1b2PdQQ
 BlP9GAZK2579VIQN2ofENJkpxwnYW7NnJ05lgZGushSPTsLOI3NIREkpkfcYVDmSQvY/
 iG/Xije3sH3GawzNT8m5UCL/YR1aRogLCzAsoZdiO1cZQQ+lc1b6I0aJwWIsi2BO2ZD8
 ispg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DNUp596ZddGOax8pFd4t+4vyG8zhBsCGAZAw/KReX/E=;
 b=cls4I8whB8tIb4iuFG1r4YMO6Fw/F7rWVNEkx0GPf3OAFeNS64a1ewDKagoMGa+nJK
 OHwDMEV/Bfm4zctYSJNcIZM+YK1SU5deQBrEO/rQTUyFDyIK9lxOmXCpgPTAyCOBaMti
 M5XJo8GVQhuFjPxRgZpZ6CE5dGFcKF68+9IimBF6K4kH5PnXP8deS/58c5hN8wYpkWwe
 XwLg5idkOcdt1Cf+8n2wAgYQKg4ci9r68lsDo8uCwAqim/30VOE4BznMcTC1x515c1qX
 ygjF3fdLZMVnpDH/pmZZ5aO0Hij4R9UiSpUr2qBJCMdEsX7QxNFcObfU+q50d43c0JLT
 lSlg==
X-Gm-Message-State: APjAAAVpokjihryj8h8cy/0aBTGWozrC+3FdNWq+KLRh+ODmdLatTMGh
 5JqXJGJiPFXuroDdUMfefXy8Rw==
X-Google-Smtp-Source: APXvYqyU6Z/dNDOhwWaYR15YpjIssxVYX/MERaSiGB29YqksLf4lDQ/uUhAvSDCJO7fTsU1N6F3JdA==
X-Received: by 2002:adf:fe0e:: with SMTP id n14mr13658527wrr.116.1576254306335; 
 Fri, 13 Dec 2019 08:25:06 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:3d17:b245:8f4:3043])
 by smtp.gmail.com with ESMTPSA id h8sm11139330wrx.63.2019.12.13.08.25.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:25:05 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 0/3] ARM: davinci: convert dm365 to using the new clocksource
 driver
Date: Fri, 13 Dec 2019 17:24:50 +0100
Message-Id: <20191213162453.15691-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_082508_558521_1747BFA9 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This is a follow-up to the big series converting DaVinci to using
a proper clocksource driver. Last time we couldn't merge the entire
series because of a bug that only appears on dm365 Soc when using
ancient u-boot.

This series contains a workaround for this problem, a patch finally
converting the platform as well as a removal of all obsolete code.

Bartosz Golaszewski (3):
  clocksource: davinci: work around a clocksource problem on dm365 SoC
  ARM: davinci: dm365: switch to using the clocksource driver
  ARM: davinci: remove legacy timer support

 arch/arm/mach-davinci/Makefile              |   3 +-
 arch/arm/mach-davinci/devices-da8xx.c       |   1 -
 arch/arm/mach-davinci/devices.c             |  19 -
 arch/arm/mach-davinci/dm365.c               |  22 +-
 arch/arm/mach-davinci/include/mach/common.h |  17 -
 arch/arm/mach-davinci/include/mach/time.h   |  33 --
 arch/arm/mach-davinci/time.c                | 400 --------------------
 drivers/clocksource/timer-davinci.c         |   8 +-
 8 files changed, 22 insertions(+), 481 deletions(-)
 delete mode 100644 arch/arm/mach-davinci/include/mach/time.h
 delete mode 100644 arch/arm/mach-davinci/time.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
