Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817EF1EDBEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 05:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ewQSDff46OfcXPk/eBHJqXpJF2BqY/YWRwPYt/KrRCQ=; b=Bn0
	Rq9J+05r2J2a+KWLtk3WOz+FcRvSLr4BB3r7tuzjzOAKVB9T5uatkJgFzNdi9EQ5Pn6fJWqPhAj23
	ZujBa/YKksAZGF2xao5sFHmOGZMtBuf/H3BrONT9SfX9cIUfnUCTCl12FHGJA0tjEekY32tOcZmzd
	QrP/5w62H7h090kD7aGsCUy/C5YJj01K/efZQQvz8r6r7AgXr0UtnRe2FP6ymRu8niQkJRwMvfQMT
	L/dl2xDvgj0+wDtyfELC/HPZVIrFEq9IDD6y9SdVYN0zupRXuEfbqbLnveXdjFCLRbZt7bFklpZwM
	MSId48cAVV8Y/cyMfFIpfYiY35xbFGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggqU-0005Zi-PC; Thu, 04 Jun 2020 03:47:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggqJ-0005Z1-Fu; Thu, 04 Jun 2020 03:47:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id w20so2923893pga.6;
 Wed, 03 Jun 2020 20:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vIelIHMHC9bmcO62i5sJQbllpydzbql+AW2fKGKLm8w=;
 b=pwMJgwX+JwNqqrwv3Yn6+talwqvr3l+j3eiRhOeemebCxVbfw3/Jh3bCdkVn3S9hdn
 1P6mxCJuELmrmk11evGM07gHh65TJ4x2tmyyl76BWNjex+NwhQZa46uuLmUve1zFK90C
 EIPkQ6it+24y7HsxiI1wqw4f0MZB2eiKu8OtIU842VX/WEddK15W73xUT6hbuKHLRNPe
 pY/QAehksOROpPCGnKfZbSGSCrWO00/A66SjOS9mxab8610GtpHm+36wAzhCWPb8d+EN
 QqHHQ32YTZJMpRczVy5FctkD4D8lrooQpnVrrv/+ZbeHV3dVyzlj7p0VI7TiF4mqUg5/
 ouZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vIelIHMHC9bmcO62i5sJQbllpydzbql+AW2fKGKLm8w=;
 b=YJNacwKjhwm9HJkI26nMY3AuGItW63CGthjMUkGwcTp12Vh6KQQD5r7oIRkGJ0U1Fc
 M3lM3QoFz+WPD7PWyTet+q2Ib/7CaFShI+x46nlWcoytaDbcptWsd8l0reP+nKuR4wXl
 2RZw8DT+tzMeGjmS3j68sQq5GVMVbuNI7UdjohkYtbNnS2jjDWLW8JUB4GFGRU2pTBYS
 Xi0ycQoR121JkR93YxkQ6wAGx+sE3CmkAthuy0r7PcGJzkIqrOzr4PSJYRhsVAH+xyyB
 AfX735QOqErt67oM45QCLfWw9bDYYjGfzKztn4O0QTWL56xEgcF1hMiEb3IekIVE8+D0
 jIDA==
X-Gm-Message-State: AOAM532TU9lzlJ/J4lgFZIdYL7PQTK2mf/GdRqOy2FKaKRFSgzicv2su
 KBr/zkzj0aKOsjO66AQuuXw=
X-Google-Smtp-Source: ABdhPJzAsFSdg/Xoho3piRcJExQi4MMZ1DyC2gHEk1MrkiQq2B109Fcf+SCBNd5L6CmKmGKTiwn5QQ==
X-Received: by 2002:a05:6a00:807:: with SMTP id
 m7mr2357570pfk.246.1591242418671; 
 Wed, 03 Jun 2020 20:46:58 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p19sm3083367pff.116.2020.06.03.20.46.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 20:46:57 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] spi: bcm2835: Enable shared interrupt support
Date: Wed,  3 Jun 2020 20:46:52 -0700
Message-Id: <20200604034655.15930-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_204659_550995_48EE2626 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, lukas@wunner.de,
 Ray Jui <rjui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark, Lukas,

This patch series is implementing the approach that was discussed in
response to this previous submission:

https://lore.kernel.org/linux-arm-kernel/20200528185805.28991-1-nsaenzjulienne@suse.de/

It aims to have dedicated interrupt handlers for 2835 versus 2711/7211
so as to minimize the overhead for 2835.

Florian Fainelli (3):
  dt-bindings: spi: Document bcm2711 and bcm7211 SPI compatible
  ARM: dts: bcm2711: Update SPI nodes compatible strings
  spi: bcm2835: Enable shared interrupt support

 .../bindings/spi/brcm,bcm2835-spi.txt         |  3 +-
 arch/arm/boot/dts/bcm2711.dtsi                |  8 ++--
 drivers/spi/spi-bcm2835.c                     | 48 +++++++++++++++----
 3 files changed, 44 insertions(+), 15 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
