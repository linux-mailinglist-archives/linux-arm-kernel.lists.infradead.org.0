Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6032E50625
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2MU83rCntmNZZESyIEAnCtLdWgolS401ZJt9MJAEJfo=; b=QDsPsvvGSbsHJO
	5z+vM17zV7/QblXO7F+M8Itm2llvixHzXjOhmfsEH7UHZKayMGHDZ77jGdWQXwVjH1i9q3U5d5rLg
	EaQFeh2TUng8TlmVQdsOpD+N7hMjX7/lwAkMY8BcyIvZSX5OeFcPi+FX81zOtGJ24yfOlypA7tqOK
	Pxstf9u9SMRS3KrQ+UHgtBUiAhkRFqXT3YgOSwN6+e0ShZ+UIa9hJ0vqVU6uVCUcTBNmd2Kh7BuJ6
	mzS7G/ax87/qTxFOBNRStvIaER4vNVgX3tmMxk6PydvMDTv1EoX3meLw7lh+ss+bwCo68wRiJVuES
	u3Hsq96341fnqQehFXYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLd4-0002YN-5p; Mon, 24 Jun 2019 09:51:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLcr-0002X4-78
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:51:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id c2so13149668wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 02:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XVmGEJyQPDHoch+b6BWewi3xs9P5Dw405kJdnxVdR0M=;
 b=kr2YtGPzC3J6vReJFFvpNeYI8P2G7TzBXWRjt4IONsx8qu/O5IbzGWf4XfDBgQEdVB
 OwcMNpoUNmMJWeLUNXPP9RmyA8+ow5fiKS5O/1jIm0BZr6BbA0EvFB+4mT7v0ztYwMX/
 N1BYBfnqqNwFImvTUwOhPYiMutavibtxd1AUXNdcmN5cM50gQ0Jdo3v7ruGeYi0tKgee
 mil9VPdAstj2a8xGFV6b7ob4WfIOp47KtVIJd2xlUotkrVJgjVS/RGTD5yX7mAEh4/WY
 Zf6frsWL+i+43vZE9v7Rv2BgOQjZ5Cyxa7uHWUslfyYBpAfOOdsMnbOR4kXeM1vy27WW
 oUkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XVmGEJyQPDHoch+b6BWewi3xs9P5Dw405kJdnxVdR0M=;
 b=aUIPo1fF9YWSFv5o5LyxLi9NQe/lvfnUhKBejR6D/q79PBkNbkccrwICFHid5YIQ/B
 MsILkTnicWPgzScTbgDkI2KN6zbOTBhafgnFY2V/uS8X6owQL/yEIMjHfk6ueqjx1zQb
 MZ3Vx3FmDjltsqxKgF3vmDDAm1tlVaOejWzfACqmwMI3dKGDOTqgMLf/Ke+AJpo6MlYe
 kF9IYnxuKaJG+k+Tp7ioAKr0+v6Di4mAGrPKcVBzNCEYWa0dNn20JRxk/xnjhoAXaT7b
 VjT9QX+SrFDLoUVvOCL+w8VAjv6GJ1Tlye0ZWSx/W2lt43Rsv9yrb+MymvMdngZ1cCvm
 RRBg==
X-Gm-Message-State: APjAAAUiJgjst8LdQVaj9NDgujvyU93t+FWPg7V/kto5JBqZZ79ogNOg
 TpeD8MVvJXFSWSs3vIFL/hJJsA==
X-Google-Smtp-Source: APXvYqwOYNWFj4G2lFccqRsQzHMY3FxP9ZPFXZjzlJFp4+nV2YP4HV6nLizVMISKYY8c9e+bP8227A==
X-Received: by 2002:adf:df0b:: with SMTP id y11mr47776110wrl.176.1561369859479; 
 Mon, 24 Jun 2019 02:50:59 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y17sm17364483wrg.18.2019.06.24.02.50.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 02:50:58 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>
Subject: [PATCH v8 0/2] clocksource: davinci-timer: new driver
Date: Mon, 24 Jun 2019 11:50:54 +0200
Message-Id: <20190624095056.21296-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025101_273981_0FD75063 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Now that we have an agreement on the driver and only minor issues are left
to fix, I'm dropping the RFC tag and continuing the numbering from before
RFCs.

This is the davinci clocksource driver but it with a sparse warning fixed
and with a small tweak to kzalloc() call.

RFC history:

v1 -> v2:
- changed the format of the copyright notice
- removed all mentiones of the periodic timer setting
- added caching of the TCR register value so that its updating doesn't
  require a read
- split the timer configuration for clock events into the
  set_state_oneshot() and set_state_shutdown() callbacks

v2 -> v3:
- tim34, if used, should run in periodic mode for clocksource, now fixed
- dropped all the configuration variables from struct davinci_clockevent
  as clockevent always uses tim12
- dropped caching of the TCR register with the following reasoning: on
  systems using tim34 for clocksource, the TCR register is only touched
  by the clock driver and we know that we need to keep tim34 in periodic
  mode; on da830 the RTOS running on the DSP may modify the TCR register
  but we on the other hand never change its settings when only using tim12
- subsequently the whole routine for TCR updating was dropped
- dropped the shift variable from most places
- added separate routines for initializing clocksource for da830 and all
  other systems
- sprinkled a bunch of comments all over the driver to explain things
  that caused confusion before

Changes since last RFC:

- fixed the following sparse warning:

>> drivers/clocksource/timer-davinci.c:198:14: sparse: sparse: incorrect type in assignment (different address spaces) @@    expected void [noderef] <asn:2> *base @@    got oderef] <asn:2> *base @@
>> drivers/clocksource/timer-davinci.c:198:14: sparse:    expected void [noderef] <asn:2> *base
>> drivers/clocksource/timer-davinci.c:198:14: sparse:    got struct resource *

- added the __GFP_NOFAIL flag to kzalloc() call so that we don't get warnings
  about not freeing the memory later

Bartosz Golaszewski (2):
  clocksource: davinci-timer: add support for clockevents
  clocksource: timer-davinci: add support for clocksource

 drivers/clocksource/Kconfig         |   5 +
 drivers/clocksource/Makefile        |   1 +
 drivers/clocksource/timer-davinci.c | 369 ++++++++++++++++++++++++++++
 include/clocksource/timer-davinci.h |  44 ++++
 4 files changed, 419 insertions(+)
 create mode 100644 drivers/clocksource/timer-davinci.c
 create mode 100644 include/clocksource/timer-davinci.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
