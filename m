Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEE2D7D93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QjzXtlN7n17wBx8DP+mdCP5MajU2a2C+KDMHTM8d2uw=; b=CNN
	WR7P5Z3DTbBw6HiWv49DTLiVBj7Iv171Bb6FSmIZlM+pXXWCfpH1hLspfPCD05KEQBEUmUhsetEv2
	7HRcrUvEaQHDC8VwI+hXQHvIDFGVqH/+zV+TSwb9MKpxy2+Lzm+2pqiRpSKMKzhvSBQjxYGSViT2Z
	dpNsttS98x4QCWAKnRqAozHzVWvIp1MEmCTcoL8mV8E/1zVMkiY1jo5JVByPjra5UnJdspA/jsXPR
	JUCCzHK9E+R8GK+tLYKD8xVRNu/XkGCltYb7g/o0AuSXXxeC6mAB8ZNRnAk0wtYlMYOjVn5n2SxMS
	2eSD9Ny8BDkbuQnZY9V3JxSn5KNOcqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQYg-0001IF-Fz; Tue, 15 Oct 2019 17:24:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQYQ-0001Ev-Cu
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:24:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id h195so12909145pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MrooWvCUFJHOcg3CV6UXpYt6OmfqqGervX4LtiE0zYo=;
 b=A1qqlkaK1GBrByHIzXEm/JgHaoSVPBiz3x2y00NR35RxwrPhjC4AKqLtzT3nxQ6YUF
 ahPThqD0SDXopFyE7ii1zIutDTGAxrIUTF0WmO0uhWn9CenhWfV18hZ11CyOpBnn/GNX
 HVG+jD5HVsurEQWvomBhlLL3bRB57DOugmOaue0n4ogFXgwBjF1kxNMPDdfoY1kejiiq
 IaTkyQC93c8JgbtKqXg4X8NklgyAQjMkOSt+D8uRjb4r3YvZqlPYNS6jY3drm4JcpCI4
 YkGdA8OBgC5Gbi5om+yWXPvuQVaTEQIpNERzsmRndOFLFnvfteNDBifm2LSx52Mu+2//
 LoXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MrooWvCUFJHOcg3CV6UXpYt6OmfqqGervX4LtiE0zYo=;
 b=MSfk/Lw+XEQHlIzDUxtIY/3hovP5uLb0SBw5GT2Zte35Ae/kmG72TgqIi4tFnzorbv
 DHN2LfF0SjDZmoCw6jMYyf+6ge2BRcCGoSvxjzSMjurfrUg9pGEQHbGOd4FBEuQ8ChiI
 YGIZnppz24kmb8QAbV+JK7evdUmKETAdlKHdbZcMRfFF6YGkJ7D07SuqZU4/Ein8y6Op
 hfWPxcrC3NvFKKPh7feEWzskt/5rTwpjTpR4D3lV725rxC5WRdSnx+ITYNQ+PPb4A12/
 2iH03s0yfeQtArYWv9FCzvyU1M+JZHatWfvmvxBcF8m0ldIdp3CoTrULLuGKyHLwv9J7
 oDWA==
X-Gm-Message-State: APjAAAWjj3VPXTMHLSEaSornOSFwX1QLcUFNMt7te+aGnisDuwo2lVxQ
 ksl8PVFOn72cExvfqUI6+js=
X-Google-Smtp-Source: APXvYqyH6m8BDhbLUIagngVGP3LKbqH7lhK9xlO9pTXJe8ChtjtVZxevr6YRmisKMXxLuAGGP9Siww==
X-Received: by 2002:a63:4f1d:: with SMTP id d29mr14217596pgb.115.1571160253699; 
 Tue, 15 Oct 2019 10:24:13 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a11sm19497621pfo.165.2019.10.15.10.24.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:24:12 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/2] Broadcom devicetree fixes for 5.4
Date: Tue, 15 Oct 2019 10:23:55 -0700
Message-Id: <20191015172356.9650-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_102414_451442_C963629E 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Phil Elwell <phil@raspberrypi.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/devicetree-fixes

for you to fetch changes up to 9786340acaa33b3722925125e2df358d14b8ee12:

  ARM: dts: bcm2835-rpi-zero-w: Fix bus-width of sdhci (2019-10-15 10:18:32 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
5.4, please pull the following:

- Stefan fixes the MMC controller bus-width property for the Raspberry Pi
  Zero Wireless which was incorrect after a prior refactoring

----------------------------------------------------------------
Stefan Wahren (1):
      ARM: dts: bcm2835-rpi-zero-w: Fix bus-width of sdhci

 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
