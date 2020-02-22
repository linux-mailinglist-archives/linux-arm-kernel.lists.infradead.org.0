Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA81169239
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 00:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5qE00HDtqT35/m+lXkTHvavM9yBhJQwoAG/j2JzdGTM=; b=Lem7/pakiJLskb
	gjmP3aJ3y97r7yRurexwxFFdMQzi1psFRQUc6j3TdVM2xbuz0zVxz5c5mcSmq3qcRSYkj0Q/1Nh5p
	2xCAZ1lJrnipE+U/YYOXksvcEvx1uessjPIRy2f6vemlhZbVRxM5SLCLrcNR48plmJyPZgmqEid7o
	0EJmbWaomptAGFzHIWqiSlN3ZtATrMQ45156FFLFKTzC5qiOKavn20gZeun4lI6ldZQvxAZtDm/bo
	uKkRa+fCZv/hvIDzBw8BfIxKnJ+CpplfUUWfnQM+ojffCBhBZzyfrvEyldaKynrs3dC5aekjOuvrC
	1RsBF1J+7904bn8GJAbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5dzX-0007zp-EL; Sat, 22 Feb 2020 23:15:23 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5dyk-0007YS-MO
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 23:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582413271; bh=O+L3Dgir8ylc0hRKhh+YvNvVJjhY/rU659XZD2GVYnY=;
 h=From:To:Cc:Subject:Date:From;
 b=fCtF4hhmMcBT3t3pgLRjHBXlVS22ppcJg2B6akTO8amSo0XYfOoIBYZvmUnQ9kXk2
 Z13/B3H07CMJb+3mz8qmpzNj4dRSfc4AGdUmb3rTIfhf3MCpnlrLYtKYCrB7XdSC8j
 QfzFykHW+lf7whEzPV56NJ5N/20/re4ljiLnX5+U=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 0/4] Add support for vibrator motor for TBS A711 Tablet
Date: Sun, 23 Feb 2020 00:14:24 +0100
Message-Id: <20200222231428.233621-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_151435_070651_83CF04E9 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, Tomas Novotny <tomas@novotny.cz>,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The tablet has a vibrator. Expose it via input subsystem (EV_FF).

Please take a look.

thank you and regards,
  Ondrej Jirman

Ondrej Jirman (4):
  dt-bindings: input: gpio-vibrator: Don't require enable-gpios
  input: gpio-vibra: Allow to use vcc-supply alone to control the
    vibrator
  ARM: dts: sun8i-a83t-tbs-a711: Add support for the vibrator motor
  ARM: dts: sun8i-a83t-tbs-a711: Increase voltage on the vibrator

 .../devicetree/bindings/input/gpio-vibrator.yaml         | 1 -
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts                | 9 +++++++--
 drivers/input/misc/gpio-vibra.c                          | 3 ++-
 3 files changed, 9 insertions(+), 4 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
