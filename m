Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AE377166
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 20:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=94vtlXYlzJqhItg93wrIj2UZ/zV3L47fDTUT1LLURR0=; b=UzRXpUBSnDSq1o
	uHSte++pOLgjFj/6azRVcVypBF41EkrIR/8aXrlW9luGK08dNlothv1yafs/Rp1hk+OieEY0PeEvd
	nuZpZ3IEfcjpCirzSnIr1ZUIFe6JQS9End+CkgYEr4bnAL7kh6Pbdm7y8p2KQ8y8ufmdBj9M8lzrS
	AktFPgi8IiP9EiCbHWpJuxtx4rKF3EDk+vBgk6mPBWtumLshovF2Ne12BUcElynobun2SCOxSUn2g
	U/N2obftMdSLjbLUNGYb5pfy2QU09kl0BO5Ji/pke9Iqe0UDBz/mxK57nTRBhbAoGFZOKoByPol/a
	Me3bozBNIJhITPOy/jgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr59q-0003nM-KO; Fri, 26 Jul 2019 18:41:34 +0000
Received: from mailoutvs3.siol.net ([185.57.226.194] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr59K-0003VZ-Tp
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 18:41:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3F180522DEC;
 Fri, 26 Jul 2019 20:40:54 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id haV3ghgp1HtG; Fri, 26 Jul 2019 20:40:54 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E644D523034;
 Fri, 26 Jul 2019 20:40:53 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 313BA522DEC;
 Fri, 26 Jul 2019 20:40:52 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: thierry.reding@gmail.com,
	mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 0/6] pwm: sun4i: Add support for Allwinner H6
Date: Fri, 26 Jul 2019 20:40:39 +0200
Message-Id: <20190726184045.14669-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_114103_122556_03E3F380 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner H6 SoC has PWM core which is basically the same as that found
in A20, it's just depends on additional bus clock and reset line.

This series adds support for it and extends PWM driver functionality in
a way that it's now possible to bypass whole core and output PWM source
clock directly as a PWM signal. This functionality is needed by AC200
chip, which is bundled in same physical package as H6 SoC, to serve as a
clock source of 24 MHz. AC200 clock input pin is bonded internally to
the second PWM channel.

I would be grateful if anyone can test this patch series for any kind of
regression on other SoCs.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (6):
  dt-bindings: pwm: allwinner: Add H6 PWM description
  pwm: sun4i: Add a quirk for reset line
  pwm: sun4i: Add a quirk for bus clock
  pwm: sun4i: Add support for H6 PWM
  pwm: sun4i: Add support to output source clock directly
  arm64: dts: allwinner: h6: Add PWM node

 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 36 +++++++-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 10 +++
 drivers/pwm/pwm-sun4i.c                       | 83 ++++++++++++++++++-
 3 files changed, 125 insertions(+), 4 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
