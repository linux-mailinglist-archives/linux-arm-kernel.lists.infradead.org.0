Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAB1169217
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 23:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DlgMnla5lOt1OQR3RwtE2bsUe63x5mlgm/hlHWidWko=; b=Bh9v3oXn9Mo3ut
	teUNZ3BOEzzpUpJezEvQNi7Hs/z+5wKcEo7EornXpptXYtJ2onlrNW2yYQPChKfCgl9RkBRSJVarw
	VqGn9HMQz2ccc6WvNjjEkOYGqCxMSpCt9zD9OYfb0VL4BskLvw9OVVDMDujQWcjsPI0dYoQ0C5STs
	dufCGq2aCn5XGA1BWSNBgjBREtyvco/gqld00iG+jnJcFatLX53GEnpb2MOue6sI7pcnN4llnmjDR
	LqySMfO657pk6LpNlDbWAs3zYHE78BppCDRyKtfQCC9O8b8racRjDYMAv8v/0Tti16k62+26rYjBa
	hXPhixIExlVo4dE2TklA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5dJk-0001sz-Br; Sat, 22 Feb 2020 22:32:12 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5dJW-0001rR-M1
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 22:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582410716; bh=Yq812b9dvmMvlOpVbFocve2A4ZWeDAWktAf3SUmQJNk=;
 h=From:To:Cc:Subject:Date:From;
 b=XBA6uXQZQgeroYn6XRO5ZIrFk/vJeE53pw5X6bXrBmcqJstTEYSSQH5wuyvsSaYhq
 g3FgW/dtXKoxLMjwIt8eh5WU82SsvmZWhBEE2NWx+D0w70GSvvINCjyR9GqtF+deiY
 bYLEHg/lQqUH1O3ANkmYMBe6kC+ffjMiJdy75GYM=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 0/4] Assortment of fixes for TBS A711 Tablet
Date: Sat, 22 Feb 2020 23:31:50 +0100
Message-Id: <20200222223154.221632-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_143159_052116_188AD909 
X-CRM114-Status: UNSURE (   6.17  )
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Tomas Novotny <tomas@novotny.cz>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series fixes some issues with camera overvolting, USB-OTG/charging,
and WiFi OOB interrupt being stuck.

Please take a look.

thank you and regards,
  Ondrej Jirman

Ondrej Jirman (4):
  ARM: dts: sun8i-a83t-tbs-a711: OOB WiFi interrupt doesn't work
  ARM: dts: sun8i-a83t-tbs-a711: HM5065 doesn't like such a high voltage
  ARM: dts: sun8i-a83t-tbs-a711: Fix USB OTG mode detection
  ARM: dts: sun8i-a83t-tbs-a711: Drop superfluous dr_mode

 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
