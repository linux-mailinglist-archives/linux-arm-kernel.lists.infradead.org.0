Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E0612F1BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 00:15:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5WYOjBz0fffpShg4F2IqDPN3lym8j4L69u+sUKYrFUU=; b=Au0
	OC7gszDaWL7jd6mN8CU1MqwKbtSSPnL00JVdcJO03i1NeeeRYZRRQEUAY85l8TzlLrAWGThxOTa3S
	lnkYH4VYAFH+TlH2XTnFx+wT9w+E9K8p/Haq+Cz2l4mjMW29xUhgwv7MWA/cENwgZZGl6LnuYiR2d
	gLmyQ6wZW/sZVU1FGh1ZPtkK5gKnwYGtnq64agGUcoVNn1Qc51JOoI/VIQusIPSTwNTZmLYNkc9YV
	mGP9rKUmi0lh2Ac0AvSVH1Ls1uZWtkZ916JRGo8Mt/vbaYlFI9t/5KZBRahxbZiO4TiMW1yidfJCE
	X5P31gM+Lc5pRHTh53GMxcYazv+IKRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in9g8-0007c0-98; Thu, 02 Jan 2020 23:14:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in9g0-0007bA-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 23:14:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id b19so6956068wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 15:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KIhQOqEe7EmmQGE/mkr/xtA4d+4/jOmGUgTZDhxFJXw=;
 b=Nxptlg01yX+CNwhEMLeFiWfYuPDjJhRqRaljQa0cqonHGZkufwmL/N5FBev4z6Pb28
 WjL145tIb1igsQzmsU7NYTZY/jtKeL4GOwIJ148ucviQyCsyGtk0N+7jeoHcelNCM6dC
 R3z65FdeskvymbGWrdQOnGdy9aUytSk6SmatHO9UdoNhBReKb8jJAQPsPFc2i2FI+mhg
 /1ojXlRAidKvWaOJRQ7orSZbDJYXyZZR77udPSv+Vm9f9FSOwMfVdF0yMbRrLUSwiRdv
 oA0kF4YYVUEuHMgiFxJaSiVKwY2UgKayu0ABg/A0/YXajWa04qqucIdg2ESO2ejx0gMk
 LITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KIhQOqEe7EmmQGE/mkr/xtA4d+4/jOmGUgTZDhxFJXw=;
 b=s7EF/3XUuy4y7Wxcono8tMeqFRxFDPwDx17TKVEo275p5oP4+WUMehI/s0+MHIDm+L
 1bMA7NCqeYTv4eokUWQGiiO74sPJH+9SooEPTwJ0ROmz2VRpESxGiV1wUSGGyZAH2cp9
 /egm4SOhhDpCR1Uzny2vsz1Oo5OEVC8mNs9exJwRgunhzdqGVf8+zpjjJIR5JwceJ5wu
 FAktorO6NxsIW7mIymSXpZXu7BIs6T1HgnURMRIeMLY5RCg2N+nGU84LX6VfvOs78kzB
 Bw+wZA+HFrRFKM8erjS5LJDwbYZ1kA3nwe1EMqto1jpgPc7rfxDngXSyxcMX1q+gPsj4
 pFbA==
X-Gm-Message-State: APjAAAUd+Wt8KbzVX0g6V+C0OfQqca1rgDrrtzS2plU3FL+sdW2EXdYp
 +ojCC8GoZjMebFOIV57Wvss=
X-Google-Smtp-Source: APXvYqy7lGzUcji2+wbHLwiEZiPkKTrJ9CoCPhvioi+YnSYV1R2H9gBNAJc92ACnCCfWLxPFR52/Bg==
X-Received: by 2002:a7b:c386:: with SMTP id s6mr15700620wmj.105.1578006885873; 
 Thu, 02 Jan 2020 15:14:45 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i10sm58214711wru.16.2020.01.02.15.14.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 15:14:45 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] reset: Add Broadcom STB RESCAL reset controller
Date: Thu,  2 Jan 2020 15:14:33 -0800
Message-Id: <20200102231435.21703-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_151448_719621_9F464F93 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

This patch series adds support for the BCM7216 RESCAL reset controller
which is necessary to initialize SATA and PCIe0/1 on that chip.

Please let us know if you have any comments. Thanks!

Changes in v2:

- binding document is in YAML format per Rob's suggestion
- indented bit definitions the same way for all definitions
- moved reset logic to the .reset() callback
- removed the XOR operation which is not necessary after clarifying with
  Jim that this was not necessary
- use readl_poll_timeout()

Jim Quinlan (2):
  dt-bindings: reset: Document BCM7216 RESCAL reset controller
  reset: Add Broadcom STB RESCAL reset controller

 .../reset/brcm,bcm7216-pcie-sata-rescal.yaml  |  37 ++++++
 drivers/reset/Kconfig                         |   7 ++
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-brcmstb-rescal.c          | 110 ++++++++++++++++++
 4 files changed, 155 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.yaml
 create mode 100644 drivers/reset/reset-brcmstb-rescal.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
