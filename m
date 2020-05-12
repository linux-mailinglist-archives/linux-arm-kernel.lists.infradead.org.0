Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC9A1D01FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C1oLDitYSMBlUYTEaLoJWA47N4VF2kBqXo8JkTXH7KQ=; b=nTuyBhDWZ2nu6M
	rD61Ao+NmfyIjcxjskzb6iB/RqhVhQ57dN9003n9NtnFFg1aVOZu6GebP7hwkOkXoE9d/wVONUPiW
	dt7YgAtx3b8HZtYO/sbhnZS1JZbFbKJGgUZ/LC7ljdHCfl7UUz5EO1Rap0dkCR8/MTRunP5q6eceG
	1DuZYPnAnuMWBD9e8nifaeHnTXgRNDUZXMUJas4x7k6TEghNvsOmIJDREr4WpbBByrp5P2fu1anbc
	6J/pqM8SP82XHeBbwkVmM+JAFSixUNDhecRaG2YnS7KfeSq+uOhH2UNZ8H2enAQm7eX8tWQ5WCrBd
	jfN9QkmcbS5VrvfFp+2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdIg-0002ZL-B4; Tue, 12 May 2020 22:22:58 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdHz-0002A2-QV
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 22:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1589322129; bh=aksRVakqDSRMDiBOMsQEeb7cYe+KvVtawuT/m/LsMLw=;
 h=From:To:Cc:Subject:Date:From;
 b=a4sGfe8TiOA9m6P1f52uIRd1Qz/6l7BIRj5HysqqXJ/uUZ2TSZAJsfW1P+lycE2Ft
 oy+lRYEB1O8ngnLh69vYyEWq8VVZOwEbBQJzZZiu6YF8mE8gKUHUwAu0AgAGChf906
 fPkKqov5gQFGHhdeukkosiS5Z4GHnT6xrh4SxQBY=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 0/4] Add support for vibrator motor for TBS A711 Tablet
Date: Wed, 13 May 2020 00:22:01 +0200
Message-Id: <20200512222205.1456300-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_152216_031331_C7F91FD9 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 Tomas Novotny <tomas@novotny.cz>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The tablet has a vibrator motor. This patch series exposes it via
input subsystem (EV_FF).

I'd like to ask input maintainers to take the patches 1 and 2.
Patches 3 and 4 should go via the sunxi tree.

The change to the vibrator driver is meant to enable toggling the
vibrator motor just via a power supply itself. There's not additional
gpio driven switch on this tablet between the power supply for the
motor and the motor.

Please take a look.

Changes in v2:
- Added DT ack tag
- Add more information to the commit log (re use of LDO for the power)


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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
