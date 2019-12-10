Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C9F119296
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:59:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=i7ZcdpZ4Rn23DL7yy1B0mhQnj2EZmS3qVK6b5ZnWBGY=; b=AjV
	cqmY2w9NgYCVG+gB97VTaAHjmuEIWSKCBl5aKWnhZfkroCBbfhvQeM62uOqWcVAMVEFcyQxDBTw1t
	Z8cpddoMXZkkXAgyatRgGeEwz7soRRSFucRnpwoW1un3Ypk9/po2AiUekrN2sB+ZtafnAINMcoJ9x
	DJR+AZsy7cXCKsjy3bpVnwahklyO5DdKvKU/cID+IfNBZc6KJcn0kNLXhdJ1/1kPa1N1FxZQ0jrts
	uavalQWNMPL6Ispifu2JqtPXTqWS5KgLg9OqQiTsNB4TFd9+3LQJmw+aXKCK9Cw0A0jyZMdfT0jze
	iVYpcNpL3KwTi2BWtz0a8mW+j3wW54A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemb9-0004m7-07; Tue, 10 Dec 2019 20:59:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemaz-0004km-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:59:02 +0000
Received: by mail-wr1-x444.google.com with SMTP id j42so21636437wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 12:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=u2qzDiPHWdfX/k0IZ0fGZyZt3sVexS7IhZJYun060u8=;
 b=ArfQzQSTJTIfOk6ccwSYCqZFLDNRFZyWYJVktr8Ywe0znKqxDsYfeeilcZXOVUj4PP
 qdUENROrtqtv3EhJkPRXVdSpHxpwDLvSyOHnpTc/n8ofeelWmL5An+yLHTdGeETMon7I
 q+DF7tconJiP8qAuxiNob492Mg5n47k67zJJrFc+B/ETKCw6VVA/iyL7DaQzGUeGdU5S
 MKGNDeS66ISEqDWCCO2DlGi24Y8YpY6z1Uufk1jlzWK/ZQxmVqJmdVeMOGAIXxW0jE3s
 tc+RikqUJC5qdt5m9ArF3fiHaIUkVN3cg9wnXYT9xiz6CoxEPm5kTjxcgvX7BKI4t/pR
 K1hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=u2qzDiPHWdfX/k0IZ0fGZyZt3sVexS7IhZJYun060u8=;
 b=CGFPOa/Unua88urGS4xh82/1Za72CjcRM0r+N+6pD/91VZ7B1L+kFsTmbdJdEgYeCu
 2mkHAH+HiDL0oCsVlYmcH3ATIwzG/pQC1f57mQ0+XFBsptzxRJjGEiXMOb/vXpHqPSJS
 w29JsZ1J1uyCI7S8e3aonqfY9WHFBBiWHNEFBX9xHt0fX6pKoTSt0fqnJDasjLs4WKdo
 ESWS/Ok3ziPMWu7GuXJ7tDY7Qy1omru6tSOXbCTzoZhJt3ZlbmvafnG2RHyOvs3mNN5p
 rJDDGjGy5pTKj+MqK1lam7S4Y1nAcUOs32oM+jOvzKvG507nQIBRHCtDaQVlsYDOODyU
 7ZBA==
X-Gm-Message-State: APjAAAW6QeuxH4AXPj98jY+OwKns1ASQiUj949OyhrLnuAuIA7hvFpmB
 3HonsiS2RdLNb80yBpNKfd8=
X-Google-Smtp-Source: APXvYqzFbl3OtAZ2btS32ybVVVO4Y7grS2upIQXsOwffk4LCqe0ncFofsG9QtuxYafiLUNop08mcVg==
X-Received: by 2002:a5d:6ac2:: with SMTP id u2mr5585873wrw.233.1576011537479; 
 Tue, 10 Dec 2019 12:58:57 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u189sm4460607wmg.40.2019.12.10.12.58.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 12:58:56 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/1] Broadcom devicetree fixes for 5.5
Date: Tue, 10 Dec 2019 12:58:50 -0800
Message-Id: <20191210205850.12442-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_125901_302692_9048432F 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Simon Horman <simon.horman@netronome.com>, Phil Elwell <phil@raspberrypi.org>,
 Ray Jui <ray.jui@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 olof@lixom.net, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/devicetree-fixes

for you to fetch changes up to 30e647a764d446723a7e0fb08d209e0104f16173:

  ARM: dts: bcm283x: Fix critical trip point (2019-12-10 12:37:09 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
v5.5-rc1, please pull the following:

- Nicolas fixes the SoC's dma-range property to cover the full 1GB
  aperture

- Stefan fixes the critical temperature trip point to be set before the
  firmware performs thermal throttling

- Florian fixes the BCM5301X and Cygnus MDIO nodes to have corrected
  #address-cells and #size-cells properties

----------------------------------------------------------------
Florian Fainelli (2):
      ARM: dts: BCM5301X: Fix MDIO node address/size cells
      ARM: dts: Cygnus: Fix MDIO node address/size cells

Nicolas Saenz Julienne (1):
      ARM: dts: bcm2711: fix soc's node dma-ranges

Stefan Wahren (1):
      ARM: dts: bcm283x: Fix critical trip point

 arch/arm/boot/dts/bcm-cygnus.dtsi | 4 ++--
 arch/arm/boot/dts/bcm2711.dtsi    | 2 +-
 arch/arm/boot/dts/bcm283x.dtsi    | 2 +-
 arch/arm/boot/dts/bcm5301x.dtsi   | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
