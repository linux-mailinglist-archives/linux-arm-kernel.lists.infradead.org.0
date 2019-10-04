Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4EACB308
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 03:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XWLqgIjXEMlAxVwqGGG4ROrmSrncj24MuPck4rPut40=; b=h7aJr1ZMAaahrO
	+JMqfk1yFs0bBQPFiuZrhFjLxHvmIAFDUs8yH9KJOp25qo1LQKr/2ZuJVxp9VnaFG9gaft/HY+9Ma
	AwRrv/C3BeVQIvuR9vOIdlz5dElsgI4N7oqduYV7Cpe7oBCOnYbkVHbWUXXS6E9mG/0yqhON3xgVr
	H10zJzvoKdnODo+tKB31grgoV/Xvxgryr0R19ABK667COg5wVxEgfgw2ZyBcrRp8Px0QXZRBTeRcR
	Z8O3zDq/BBidlhPg/6ruamZ46yNpktTrQDysA1Gs44xjK2DOfCmK//fGOno7HWbMdeF1aXZPLPsCh
	Kp/HnSK1sKZ6QL3SvhUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGCLu-0003l4-UE; Fri, 04 Oct 2019 01:25:50 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGCLl-0003jW-V6
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 01:25:43 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 9B922806B7;
 Fri,  4 Oct 2019 14:25:35 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1570152335;
 bh=zCae1sRbj0T6w6Pf0TMZ7dOtwYoAvCI5r5bzgSVd7is=;
 h=From:To:Cc:Subject:Date;
 b=gE3CLqDQfQxwk3emWTRF6EnaYpDOPuk/7z4VpP+D4O3gA9TzX+NhT8WoSrXnswZrE
 khQ/rp0CWO5mvbc0ENMqwcqujeVsVW9l++0Q+q9V5h14uGGKl1vsTZY0PFzkMiFeJd
 R/KrqKmBvmEKLL/g2e4mIdGyu3F2WL+gVMUG92wCB9vjHlqTmi7tzcefZSGtzUQbHS
 OlM0VJWZyH880KdwwmJDhpesQrSS148TEH823+LLI4PkcvdCYmjyII0AZY9NKbwHcy
 dhrG5ZO4nktkNi4nGH1zIwHlFrXhvotcCbs949HIvxkzLuYFVWutHHybkzluGYHBBm
 FuGkbzPbzgQUA==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d969f8b0000>; Fri, 04 Oct 2019 14:25:36 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 3C7D413EC71;
 Fri,  4 Oct 2019 14:25:34 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 5A32B28003E; Fri,  4 Oct 2019 14:25:30 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com,
 richard.laing@alliedtelesis.co.nz
Subject: [PATCH 0/2] gpio: brcm: XGS iProc GPIO driver
Date: Fri,  4 Oct 2019 14:25:23 +1300
Message-Id: <20191004012525.26647-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_182542_168799_ECB21A0E 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is ported this from Broadcom's XLDK. There seem to be 3 different
IP blocks for 3 separate banks of GPIOs in the iProc chips.

I've dropped everything except support for the Chip Common A GPIO
controller because the other blocks actually seem to be supportable with
other drivers. The driver itself is halfway between pinctrl-nsp-gpio.c
and pinctrl-iproc-gpio.c.

Chris Packham (2):
  dt-bindings: gpio: brcm: Add bindings for xgs-iproc
  gpio: Add xgs-iproc driver

 .../bindings/gpio/brcm,xgs-iproc.txt          |  41 ++
 drivers/gpio/Kconfig                          |   9 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-xgs-iproc.c                 | 422 ++++++++++++++++++
 4 files changed, 473 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.txt
 create mode 100644 drivers/gpio/gpio-xgs-iproc.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
