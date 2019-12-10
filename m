Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD9C11916F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2Ykco0LqP0unZAuVpMPubDYevVRZUN+ysKdmedNtF5Y=; b=BUj
	U/P/btbd6yQm38pDGo/2WBbYMgcaOwj+Gb/P/uioPowvKQwjyINwohcnAiNELE+sHb7RWnBnMQyEp
	gdwedHpMgRm1fH/UpTXxIA1Ic+oy9gKp78n9uYz7+6XPneU5jwtzl2va+sNFXQGxPGnm4a6wDnwFW
	dFbvJuj8QgO91Ki2oteViSH9Rrwlu1RXsA2GayTLmDcM420YUpnGwy7LH8tBQiuJEfRkI5kyJ8qH0
	GMlFzxja+mW7XU+SmU06tp76cnaoTM79l+lT2QC5MFyZMW8q4vmCr9uaMcfIesXIK2XsA5JPxRFxG
	X9uJmBVVmQGXqQo9qfrK2XgCKD+X+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieliL-0005CQ-Qt; Tue, 10 Dec 2019 20:02:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielhR-0004FS-VN
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:01:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so21553685wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 12:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Po2VpYcFa8arMmQElIzg8ts/l2BOi8KtBQ9ifjUcxhc=;
 b=GDFNbiRDmc/Dx0anO4WL3fjzLKs4732xpj4XHB1kaCfw7QsLKpI10VoQDGfsh8nYqQ
 wVjdpXxOYoAzgmBUZ7qUpXK9DgZUl3bLqEL+pAXpJGN7YT1im/AoyqxEtD3ZSVFVKVnK
 ilvtCk704/3OakKf0M6cB8BX/qe17kuJ4WrGZtOH2gZF3thtRkp9hj6r2Gx4VSGAOvB5
 mCy2ry3zZYZG4JyRoOawymXy1CHXIGnzK/DwTK2bFVZsjwFOIlLxJdUbfj4UbXvfan8k
 pRuWw0NpEcV/lbv2SAfQXORb2keGKJHFF/drxsM9kcquS5ZeV4kFhJ1FpMF+BlvD5pxK
 JDdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Po2VpYcFa8arMmQElIzg8ts/l2BOi8KtBQ9ifjUcxhc=;
 b=L9kpuh1apeo45CQRSxCdMiJPBI7LO1DLZdORGPjGcZglax0ZEKrJgc2FfeEfqJl2xI
 D6IySNEeSgfq78XLVevh6x5uvS1qEXDQ4MmJ5Fo/7pdtYEHvpKi6U4Fn38pfGPjfBBgV
 NRAUKDWtdf3+R5VBG0d8+Xwo/n3GL93PoEdfgNu/TLDnMGkQ2IqccpFszdbJ9/yfD82Z
 uycC4nBUMfc6f+VxsrEmOL3u4qmHLKM7DJgilJAQm9NkXxuVaaIOp8d7I+av2tugALC/
 vAef71Xyu4Xe9hVkT9m24LC1YTTWR1o1lSm4ClkDCvkkRiD1EwcmEmzZ2ybGnYcqdSxq
 6WCw==
X-Gm-Message-State: APjAAAVYinLB124YE9+C5psE4KWv9p3uCWehOYhWMNq/0+bxd2DSES47
 90rAeIiuU9V1ZG7C2e6+GkQfRIlx
X-Google-Smtp-Source: APXvYqzHTERxcshg/vkN601hSQ1Og9RLmRmiJZXYHOg0oIRC+4FLYahrnRQMGu9ST/L2H0XnpS9jwg==
X-Received: by 2002:adf:e812:: with SMTP id o18mr5050154wrm.127.1576008096684; 
 Tue, 10 Dec 2019 12:01:36 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z6sm4352255wmz.12.2019.12.10.12.01.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 12:01:35 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] reset: Add Broadcom STB RESCAL reset controller
Date: Tue, 10 Dec 2019 11:59:01 -0800
Message-Id: <20191210195903.24127-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_120138_019466_842A3B23 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Jim Quinlan (2):
  dt-bindings: reset: Document BCM7216 RESCAL reset controller
  reset: Add Broadcom STB RESCAL reset controller

 .../reset/brcm,bcm7216-pcie-sata-rescal.txt   |  26 ++++
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-brcmstb-rescal.c          | 124 ++++++++++++++++++
 4 files changed, 158 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.txt
 create mode 100644 drivers/reset/reset-brcmstb-rescal.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
