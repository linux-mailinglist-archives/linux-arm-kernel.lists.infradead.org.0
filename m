Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEDDDA437
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 05:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Evhkpt2XM3mJX77AW+HQy6Ca8Wjhs74DRDQKHoCT33w=; b=pYHPnEhLAe3M6M
	D53nEIntaLjJdHiX01plfV/wRRO8+W6FcbULf96/Fzw0T13RjAO4Ar2/Srca/EVEytbdfbxOuoYSt
	R6v5JFXUC7myYFTgzZUzaATdwICec3Qnn9QsjjnB0s09JaW2JHHCTkIhM80KP4PuqCrWN2mTQQIyn
	InT4zSRJ3CkTzvazUcOSWmGGuwbRT5TPwAvtHUzgB8wmyHARRhALB4xoqmbGRDClGWXVTMWWTxoC8
	mSxpc+73rpb5X8tor0+hrnUZ8+uBldHQsvD+DKmKMufl19kJLLRPLXo3ppuQkypigW1e3jbEZ5M5h
	MnXaWmGlpwJakbK7aWXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKwC9-0007TH-94; Thu, 17 Oct 2019 03:11:21 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKwBy-0007QC-Td
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 03:11:13 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 204C0891AA;
 Thu, 17 Oct 2019 16:10:58 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571281858;
 bh=xrGrisgeEZb88kf6xkzyTFrAcQCeEBWEESK0FoOUtc0=;
 h=From:To:Cc:Subject:Date;
 b=nGz6gBJikh0TD1nGhHqEvLqBtod+Rtybh67nBDFjCW+RnMliQrAguKs8rqbfty/xh
 VgbdhQaPX6z4SnGwoPPhcNnbFE3u+HkyJGR+joemN6fUKkaI1wbes5ueOUOF6LVD89
 ctf+IEHEGbf5om0m3x/no1SM7eNo0ETZ5D/Gp69wViSLCcm+1+NqZwnokvs5VQCweX
 dOhgOAIggoESB8D61WFw+cZDiD1FHI2/VUXv3rLNU9e3u4x9zaw10Tivb5umTmzqi9
 LFxAiyR+gD19tPHfu4vdB2OQYYAM+dkBn1X329l1Kt6n0WczPlSkJBiBPxjOa4LAMe
 0aA+ra1qvzbfQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5da7dbc20000>; Thu, 17 Oct 2019 16:10:58 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id E94B713EEB6;
 Thu, 17 Oct 2019 16:11:01 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id D3787280059; Thu, 17 Oct 2019 16:10:57 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 0/2] gpio: brcm: XGS iProc GPIO driver
Date: Thu, 17 Oct 2019 16:10:49 +1300
Message-Id: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_201111_122560_01B2A424 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

This is ported this from Broadcom's XLDK (now heavily modified). There seem to
be 3 different IP blocks for 3 separate banks of GPIOs in the iProc chips.

I've dropped everything except support for the Chip Common A GPIO
controller because the other blocks actually seem to be supportable with
other drivers. The driver itself is halfway between pinctrl-nsp-gpio.c
and pinctrl-iproc-gpio.c.

Chris Packham (2):
  dt-bindings: gpio: brcm: Add bindings for xgs-iproc
  gpio: Add xgs-iproc driver

 .../bindings/gpio/brcm,xgs-iproc.yaml         |  83 +++++
 drivers/gpio/Kconfig                          |   9 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-xgs-iproc.c                 | 301 ++++++++++++++++++
 4 files changed, 394 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
 create mode 100644 drivers/gpio/gpio-xgs-iproc.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
