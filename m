Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9126633DE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 06:24:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GNeXoHxY7uWs+0Mg3y9dKU0QIbikdv95nzPUhVQlZHQ=; b=WJlZNJzmVUkqxh
	9UekNL/WF2HVVivoMr2NGba4L85spmNQHX3U6qmdCG5KdU0U5Hm4vm2MUcnuJbZ+O7d1jaLA8ydLh
	zm7pN01adRzlrWkrTp+h0BbKyoBwGUYR3PkHCnHJ3XFLAWHfG673G42TKHb4fZKJ5h97WrB+rThMp
	R2J8HXJV7aWUjXih5kWx157oTIWPszRjBTsMFtMkH0u6M23XNBUmjlau8KWSwPrvLB26Rh6YgI8YM
	2QOzb6dXYXEyyKUZleSrEyD6lb/2JaQyEB0iAmSltVYw/RkKmFfXudQEJ7kJrinU1CZew3cQNie27
	meeD67+3XJuhvFjWfCEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY0zT-0000nY-UN; Tue, 04 Jun 2019 04:24:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY0zD-0000g6-Ef
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 04:23:48 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C498D24CA4;
 Tue,  4 Jun 2019 04:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559622226;
 bh=gLtAailyS6IJm8z2V2PeInJ4Zh8RQw5AhexkL1edZlQ=;
 h=From:To:Cc:Subject:Date:From;
 b=Cam4pLTngHKbpei8gF74EopX7nX49t8VOukQeGIYWDwfJxCUpn/HHzpXC/6yv3Lbi
 mD9+WZgi6RoCqqxVoYLpJTJxAwCO6UQqV89tXiAwC6xD/1tDPHs0ghtyCHW8ha9Kzn
 ENTn73F6Rk+QP+lOB42/QBxsDkFAKrCPa5JpXW2A=
Received: by wens.tw (Postfix, from userid 1000)
 id 6A0A35FCDF; Tue,  4 Jun 2019 12:23:43 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 0/3] rtc: pcf8563: Fix unhandled interrupt storm
Date: Tue,  4 Jun 2019 12:23:34 +0800
Message-Id: <20190604042337.26129-1-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_212347_515318_C3713E43 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vincent Donnefort <vdonnefort@gmail.com>,
 Chen-Yu Tsai <wens@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Hi everyone,

While bringing up my Pine H64, I encountered an interrupt storm from the
pcf8563 RTC. The RTC chip's interrupt line is shared with the PMIC, and
was not properly added to the device tree. Also, the driver was using an
trigger method incompatible with the PMIC, preventing the interrupt line
from being shared. Last, the driver only clears and masks the alarm
interrupt, while leaving the timer interrupt untouched. This is a
problem if previous systems left the timer interrupt enabled, and there
was an interrupt pending.

This patch set fixes all three issues, one per patch.

Please have a look.

Chen-Yu Tsai (3):
  rtc: pcf8563: Fix interrupt trigger method
  rtc: pcf8563: Clear event flags and disable interrupts before
    requesting irq
  arm64: dts: allwinner: h6: Pine H64: Add interrupt line for RTC

 .../arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts |  2 ++
 drivers/rtc/rtc-pcf8563.c                           | 13 ++++++-------
 2 files changed, 8 insertions(+), 7 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
