Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B104137494
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:17:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iXRYySE3kiKBW6ctCOVQlcfuqZYJHNAwm6H7TYJb32k=; b=idsAiOR7zg5ZyU
	BQVoTZhraRVwvf/mi3EdbBxUHJIPY8rW0zYVjTum/CsznULzOQD3aO/LUgCqT0jHi7DE8VPo8Gbwb
	2h3YE0iryblbRk21ZsWC4H5AOobwiOAtFv9/2IhRcrPdtNUcnnSc1X6lk3heZtqXahsDci9k2P9mz
	zXGcXCWafAz+tkX9Eh+6izU2x7llbr9zS3bmwPu3/f1SQSBKPWeiAqBHcD8lh+E3RA8P9rwzv4zkE
	1/EYtoHpw7cHCCMwZGzyZq6qFbZhHLH0SNA+EdxRMgaKM/VvYXHQbShrySFMMT8ZN8RQDoT3k+NLH
	dB0C1JIpdlCC6tZCNUdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxuj-0007Rb-04; Fri, 10 Jan 2020 17:17:37 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxuD-0007EO-2J
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:17:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so2828801wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 09:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ikg7/D3RIJnL4WW31mJDXYflyJd4Gt4lq8m0Udaafsk=;
 b=FtvT0qd7GMFZH4XVs6mjUKmTAu8KEsSy14OMsKrjBYPRnR1KyKHvOKT4rC2gdjxSzB
 1WqFP/dRmkXI3I3QSorfAY//jFnZS5GbuiO4k6JmGPIXW/tcFdGKR7AwE2JYCzFEL6fv
 Ewk9bwPnMjj4thU85YPw5QxFtacZmoe1nCff/fvLIm0VCfCGuha2rJWhn5mjoDg5OZ46
 HGKmr+MXfs/sFyaqhsXY13BRZtuGADBEMsDHp6GACykKSnCAdZBYiazK8yvPYIx73KRV
 GbwUpOsICU11mwFdl77RNBbjATp76jI/gFR9eEyitiseUYbqN3znVKpw9v9QQSsDo7JU
 aZ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ikg7/D3RIJnL4WW31mJDXYflyJd4Gt4lq8m0Udaafsk=;
 b=TURZUSgc14Jo6azuCbe38Z3r3MbiqjKso3C3JN2Zor/bhAANzvsGn77usVbWzNYxiR
 IjGzQWwPsmFCO+DC6FNd08MC6sGcA20T8wFZir1b3DYdJPVEyWQBNWKv346nKRrUhDKk
 g3xxwTYYmSmYQo7vRKppD4CPMeJqfo4XOz1Cy5Rkdnxy1iU+ECqVtBSssE1KTofoshhS
 Bv1nHp0vO7leW4i24LAgkHvA9x25hj4G1jyCGQjS62IQO9TRAIGS241XMZrMEmzPAMgk
 CnsSIuvElso+1RPfbYIz6R08VP78ikD33Eb/h6OXX28834knYpGAk/duKzVxL8JiMx4j
 yeuA==
X-Gm-Message-State: APjAAAUOE3LDb5ySnoViqPanXzrkfRffviKpHc63ju+tgVCH9ZZyUodm
 89kErJX2rA66XCUyXcq+cuocjA==
X-Google-Smtp-Source: APXvYqzQJsMgqTHq6X0mWLemADZwjQXVEd3suMxwkP0Wa9td3m4/HufEJ1evDQKl2F9VK7FYC4Aygg==
X-Received: by 2002:a1c:4884:: with SMTP id v126mr5123132wma.64.1578676622292; 
 Fri, 10 Jan 2020 09:17:02 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:b0ec:c83d:aa26:b93])
 by smtp.gmail.com with ESMTPSA id z123sm3072725wme.18.2020.01.10.09.16.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 09:17:01 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH v3 0/3] ARM: davinci: convert dm365 to using the new
 clocksource driver
Date: Fri, 10 Jan 2020 18:16:40 +0100
Message-Id: <20200110171643.18578-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_091705_133604_C5EAA5D7 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

v1 -> v2:
- simplify patch 1/3 by using a boolean flag instead of caching the
  value bits for TIM34

v2 -> v3:
- simplify patch 1/3 even more as advised by Daniel Lezcano: simply
  register clockevents only after tim34 is initialized

Bartosz Golaszewski (3):
  clocksource: davinci: only enable clockevents once tim34 is
    initialized
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
 8 files changed, 20 insertions(+), 483 deletions(-)
 delete mode 100644 arch/arm/mach-davinci/include/mach/time.h
 delete mode 100644 arch/arm/mach-davinci/time.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
