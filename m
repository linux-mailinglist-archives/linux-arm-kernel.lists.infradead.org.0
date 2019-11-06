Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C229F1AC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XSCDrDk7QwDjZs9OdXKAXjVKTXuPDAH96Qsrv+K8WYA=; b=ihqfLx5EfEbtDe
	vU3qZFYGdhPnifRC2VJqC5HNvid6/Gd+UcCXy8F8jZvPN/gQwpde4UtV5l1OmoEYfPpa014Q+H326
	+2g0DCsY26wMcHLJ9h8AQV1sScknQ06djlDFvkwp85f8ylkwxhdmCI5E4EYDGGMgkZ83tcp7EvV2m
	h+gptjYWEIFVu6b9QxCToteUc07dqeEK+GTM2daGlZrYmIt7IxNvrO5PjH7+cPU7lsHfTEaobzK3u
	b2WWkLUxg5qGGrmP1SEbzlAyAgzigjTjvi60zBSDWYZjFBgc2X7l4C1R9G4Om1MWh24QNNJZkKOAA
	e/DucJYlvk2g4gjzv+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNpu-00036v-Mw; Wed, 06 Nov 2019 16:07:10 +0000
Received: from 212.199.177.27.static.012.net.il ([212.199.177.27]
 helo=herzl.nuvoton.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNpU-0002la-LS
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:06:46 +0000
Received: from taln60.nuvoton.co.il (ntil-fw [212.199.177.25])
 by herzl.nuvoton.co.il (8.13.8/8.13.8) with ESMTP id xA6G6JSe028121;
 Wed, 6 Nov 2019 18:06:19 +0200
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id 45E5460275; Wed,  6 Nov 2019 18:06:19 +0200 (IST)
From: Tomer Maimon <tmaimon77@gmail.com>
To: linux-arm-kernel@lists.infradead.org, joel@jms.id.au, yuenn@google.com,
 venture@google.com, benjaminfair@google.com, avifishman70@gmail.com
Subject: [PATCH v1 0/3] arm: dts: add and modify device node in NPCM7xx device
 tree
Date: Wed,  6 Nov 2019 18:06:14 +0200
Message-Id: <20191106160617.51807-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_080645_117817_37846B36 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.9 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmaimon77[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 2.0 SPOOFED_FREEMAIL       No description available.
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
Cc: Tomer Maimon <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds and modify device tree nodes in the NPCM7xx 
Baseboard Management Controller (BMC) device tree.

The following device node add:
	- NPCM7xx Pin controller and GPIO
	- NPCM7xx PWM and FAN.
	- NPCM7xx EHCI USB.
	- NPCM7xx KCS.
	- NPCM Peripheral SPI.
	- NPCM FIU SPI.
	- NPCM HWRNG.
	- NPCM I2C.
	- STMicro STMMAC.
	
The following device node modified:
	- NPCM7xx timer.
	- NPCM7xx clock constants parameters.

NPCM7xx device tree tested on NPCM750 evaluation board.

Tomer Maimon (3):
  arm: dts: modify NPCM7xx device tree clock parameter to clock constant
  arm: dts: modify NPCM7xx device tree timer register size
  arm: dts: add new device nodes to NPCM750 device tree

 arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi | 948 +++++++++++++++++-
 arch/arm/boot/dts/nuvoton-npcm750-evb.dts     | 444 +++++++-
 .../boot/dts/nuvoton-npcm750-pincfg-evb.dtsi  | 157 +++
 arch/arm/boot/dts/nuvoton-npcm750.dtsi        |  24 +-
 4 files changed, 1539 insertions(+), 34 deletions(-)
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm750-pincfg-evb.dtsi

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
