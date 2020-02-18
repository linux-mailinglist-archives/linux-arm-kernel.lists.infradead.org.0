Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AAE162629
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/yRTYZHOlurC5CxWx6Ui0D1rYq+w070TMoCgj5R1N/g=; b=V8NzrX8PA2ejad
	bGSPpsTbxeRdPHLkLZL3no0vrWJsxcQdWxP9H+ZjxSA944dXJ+fsI3da3FwXuHTZ0/9Fur0WDB5Ct
	afPwJdABSdkEB8WOJi4+mBcQvI63WClORRAt4Mr3opPHeehXkr2TYMNxpWgVqdTVokRmHECL24t37
	CBrKO+GXMLnFpH+eJP0P6oK+wryv/mnhIErTGi8sWk2BwGSEmC8YCD/qUu+OcJ4cMorwDsAxfVcZT
	NUH7Y58+lWzYIoF+KiFluNo98QnhBGKYJ8fxk66TLoP3Obf7uIYTtBrD41Wz1uF6UydfKR9CL6Om/
	oJGI5Mmmf3SPL6pd1Nvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4230-00043u-GG; Tue, 18 Feb 2020 12:32:18 +0000
Received: from 212.199.177.27.static.012.net.il ([212.199.177.27]
 helo=herzl.nuvoton.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j422o-00043K-Cp
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:32:08 +0000
Received: from taln60.nuvoton.co.il (ntil-fw [212.199.177.25])
 by herzl.nuvoton.co.il (8.13.8/8.13.8) with ESMTP id 01ICVcXO007989;
 Tue, 18 Feb 2020 14:31:39 +0200
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id C1E586032E; Tue, 18 Feb 2020 14:31:38 +0200 (IST)
From: Tomer Maimon <tmaimon77@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, joel@jms.id.au,
 avifishman70@gmail.com, tali.perry1@gmail.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/3] arm: dts: add and modify device node in NPCM7xx device
 tree
Date: Tue, 18 Feb 2020 14:31:25 +0200
Message-Id: <20200218123128.17990-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_043206_836377_1A92B976 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.9 (++++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>
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
        - NPCM Reset.
        - NPCM Peripheral SPI.
        - NPCM FIU SPI.
        - NPCM HWRNG.
        - NPCM I2C.
        - STMicro STMMAC.

The following device node modified:
        - NPCM7xx timer.
        - NPCM7xx clock constants parameters.

NPCM7xx device tree tested on NPCM750 evaluation board.

Changes since version 3:
 - Tested patches in Linux kernel 5.6.

Changes since version 2:
 - Remove unnecessary ouput-enable flags.

Changes since version 1:
 - Add NPCM reset device node.
 - Add reset parameters to NPCM driver device nodes.

Tomer Maimon (3):
  arm: dts: modify NPCM7xx device tree clock parameter to clock constant
  arm: dts: modify NPCM7xx device tree timer register size
  arm: dts: add new device nodes to NPCM750 device tree

 arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi | 958 +++++++++++++++++-
 arch/arm/boot/dts/nuvoton-npcm750-evb.dts     | 444 +++++++-
 .../boot/dts/nuvoton-npcm750-pincfg-evb.dtsi  | 157 +++
 arch/arm/boot/dts/nuvoton-npcm750.dtsi        |  24 +-
 4 files changed, 1549 insertions(+), 34 deletions(-)
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm750-pincfg-evb.dtsi

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
